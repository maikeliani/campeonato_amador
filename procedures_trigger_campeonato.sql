
use campeonato 



GO



--procedure calcula pontuacao pelo nome do time

create or alter  PROCEDURE proc_calcular_pontuacao
    @nomeTime varchar(20)
AS
BEGIN
    DECLARE @qtd_vitoria_mandante int  , @qtd_vitoria_visitante int, @qtd_empate int, @pontuacao_final int

    select @qtd_vitoria_mandante =  count (mandante)
    from jogo
    where qtd_gol_mandante > qtd_gol_visitante and mandante = @nomeTime
    select @qtd_vitoria_visitante =  count (visitante)
    from jogo
    where qtd_gol_mandante < qtd_gol_visitante and visitante = @nomeTime
    select @qtd_empate =  count (visitante)
    from jogo
    where qtd_gol_mandante = qtd_gol_visitante and (visitante = @nomeTime or mandante = @nomeTime)

    set @pontuacao_final = ( (@qtd_vitoria_mandante *3) + (@qtd_vitoria_visitante *5) + ( @qtd_empate *1) )
    PRINT('PONTUACAO FINAL: ')
    PRINT(@pontuacao_final)

END


GO


--TRIGGER QUE ATUALIZA PONTUAÇÃO CONFORME OS JOGOS SÃO INSERIDOS NA TABELA
create or alter trigger TGR_CALCULA_PONTUACAO on jogo FOR insert
AS
BEGIN

    DECLARE @qtd_gol_mandante int, @qtd_gol_visitante int , @mandante varchar(20), @visitante varchar(20), @pontuacao int

    select @qtd_gol_mandante = qtd_gol_mandante, @qtd_gol_visitante = qtd_gol_visitante,
        @mandante = mandante, @visitante = visitante
    from inserted

    set @pontuacao= case
                        when ( @qtd_gol_mandante > @qtd_gol_visitante) then 3
                        when ( @qtd_gol_mandante < @qtd_gol_visitante) then 5
                        when ( @qtd_gol_mandante = @qtd_gol_visitante) then 1
                    end

    if @pontuacao = 3 
                update [time] set pontuacao = (pontuacao + 3) where nome = @mandante
                else IF @pontuacao = 5
                update [time] set pontuacao = (pontuacao + 5) where nome = @visitante
                ELSE if(@pontuacao = 1)
                    BEGIN
        update [time] set pontuacao = (pontuacao + 1) where nome = @visitante
        update [time] set pontuacao = (pontuacao + 1) where nome = @mandante
    END
END



 GO


--------- ok------------
create or alter  PROCEDURE proc_calcular_pontuacao
    @nomeTime varchar(20)
AS
BEGIN
    DECLARE @qtd_vitoria_mandante int  , @qtd_vitoria_visitante int, @qtd_empate int, @pontuacao_final int

    select @qtd_vitoria_mandante =  count (mandante)
    from jogo
    where qtd_gol_mandante > qtd_gol_visitante and mandante = @nomeTime
    select @qtd_vitoria_visitante =  count (visitante)
    from jogo
    where qtd_gol_mandante < qtd_gol_visitante and visitante = @nomeTime
    select @qtd_empate =  count (visitante)
    from jogo
    where qtd_gol_mandante = qtd_gol_visitante and visitante = @nomeTime

    set @pontuacao_final = (@qtd_vitoria_mandante *3) + (@qtd_vitoria_visitante *5) + ( @qtd_empate *1)
    PRINT('PONTUACAO FINAL: ')
    PRINT(@pontuacao_final)

END



GO

--ok---

create or alter trigger TGR_CALCULA_GOL_PRO_CONTRA on jogo after INSERT
AS
BEGIN
    -- atualiza a pontuacao caso todos os valores sejam deletados
    if( (select count (mandante)
    from jogo) = 0)
    BEGIN
        update [time] set pontuacao = 0
        update[time] set gols_pro =0
        update [time] set gols_contra =0
    END

    DECLARE @qtd_gol_mandante int, @qtd_gol_visitante int , @mandante varchar(20), @visitante varchar(20), @pontuacao int

    select @qtd_gol_mandante = qtd_gol_mandante, @qtd_gol_visitante = qtd_gol_visitante,
        @mandante = mandante, @visitante = visitante
    from inserted

    --atualizando gols pro e gols contra do time mandante
    update [time] set gols_pro = (gols_pro + @qtd_gol_mandante) where nome = @mandante
    update [time] set gols_contra = (gols_contra + @qtd_gol_visitante) where nome = @mandante


    update [time] set gols_pro = (gols_pro + @qtd_gol_visitante) where nome = @visitante
    update [time] set gols_contra = (gols_contra + @qtd_gol_mandante) where nome = @visitante
END





GO




create or alter procedure proc_jogoComMaisGols
-- ver os triggers
AS
BEGIN
    select top(1)
        sum (qtd_gol_mandante + qtd_gol_visitante)as 'soma gol por partida', mandante, visitante, qtd_gol_mandante, qtd_gol_visitante
    from jogo
    group by jogo.id_partida, mandante, visitante,  qtd_gol_mandante, qtd_gol_visitante
    order by 'soma gol por partida' desc
END 
    

GO




CREATE OR ALTER PROCEDURE  proc_timeComMaisGols
AS
BEGIN
    select top(1)
        nome, gols_pro
    from [time]
    order by gols_pro desc
END

   
GO


create or alter procedure proc_timeQueSofreuMaisGols
AS
BEGIN
    select top(1)
        nome, gols_contra
    from [time]
    order by gols_contra desc

END

GO

create or alter procedure proc_calc_campeao
AS
BEGIN

    select TOP(1)
        pontuacao, nome
    FROM [time]
    order by pontuacao desc

END



GO

create or alter procedure proc_classificacaoFinal
AS
BEGIN
    select TOP(5)
        pontuacao, nome
    FROM [time]
    order by pontuacao desc
END


GO







