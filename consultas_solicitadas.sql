use campeonato



    -- QUAL É O JOGO QUE TEVE MAIS GOLS
exec.proc_jogoComMaisGols   


 --TIME QUE FEZ MAIS GOLS 
exec.proc_timeComMaisGols


--  TIME QUE TOMOU MENOS GOLS
exec.proc_timeQueSofreuMaisGols



 -- COMO FICARIA OS 5 PRIMEIROS TIMES DO CAMPEONATO
 EXEC.proc_classificacaoFinal




 -- PROCEDURE QUE CALCULA PONTUAÇÃO DO TIME PELO NOME DO TIME INFORMADO
exec.proc_calcular_pontuacao @nomeTime = 'Corinthians'
 
 -- PROCEDURE INFORMA CAMPEAO
exec.proc_calc_campeao


