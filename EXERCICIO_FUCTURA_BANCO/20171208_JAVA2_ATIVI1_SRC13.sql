-- ARTHUR MARQUES GOMES DA SILVA
-- ALGUMAS QUERYS DE BUSCA
-- ATIVIDADE 01
-- TURMA JAVA 2

SELECT P.NM_PACIENTE,
  E.NM_RUA
FROM TBL_PACIENTE P 
JOIN TBL_ENDERECO E ON P.CD_ENDERECO = E.CD_ENDERECO;

SELECT M.NM_MEDICO,
  E.NM_ESPECIALIDADE
FROM TBL_ESPECIALIDADE E
JOIN TBL_MEDICO M ON M.CD_ESPECIALIDADE = E.CD_ESPECIALIDADE;

SELECT M.NM_MEDICO, P.NM_PACIENTE,
  A.NM_ATENDIMENTO, 
  A.DT_DATA_ATENDIMENTO,
  TBL_MEDICAMENTO.NM_MEDICAMENTO, 
  TBL_MEDICAMENTO.NM_DOSAGEM
FROM TBL_ATENDIMENTO A
JOIN TBL_MEDICO M ON A.CD_MEDICO = M.CD_MEDICO
JOIN TBL_PACIENTE P ON A.CD_PACIENTE = P.CD_PACIENTE
JOIN TBL_MEDICAMENTO ON A.CD_MEDICAMENTO = TBL_MEDICAMENTO.CD_MEDICAMENTO;

SELECT M.NM_MEDICO, P.NM_PACIENTE,
  A.NM_ATENDIMENTO, 
  A.DT_DATA_ATENDIMENTO,
  TBL_MEDICAMENTO.NM_MEDICAMENTO, 
  TBL_MEDICAMENTO.NM_DOSAGEM
FROM TBL_ATENDIMENTO A
JOIN TBL_MEDICO M ON A.CD_MEDICO = M.CD_MEDICO
JOIN TBL_PACIENTE P ON A.CD_PACIENTE = P.CD_PACIENTE
JOIN TBL_MEDICAMENTO ON A.CD_MEDICAMENTO = TBL_MEDICAMENTO.CD_MEDICAMENTO
WHERE A.DT_DATA_ATENDIMENTO > '01/12/17';

SELECT M.NM_MEDICO, P.NM_PACIENTE,
  A.NM_ATENDIMENTO, 
  A.DT_DATA_ATENDIMENTO,
  TBL_MEDICAMENTO.NM_MEDICAMENTO, 
  TBL_MEDICAMENTO.NM_DOSAGEM
FROM TBL_ATENDIMENTO A
JOIN TBL_MEDICO M ON A.CD_MEDICO = M.CD_MEDICO
JOIN TBL_PACIENTE P ON A.CD_PACIENTE = P.CD_PACIENTE
JOIN TBL_MEDICAMENTO ON A.CD_MEDICAMENTO = TBL_MEDICAMENTO.CD_MEDICAMENTO
WHERE A.DT_DATA_ATENDIMENTO < '01/12/17';

SELECT M.NM_MEDICO, P.NM_PACIENTE,
  A.NM_ATENDIMENTO, 
  A.DT_DATA_ATENDIMENTO,
  TBL_MEDICAMENTO.NM_MEDICAMENTO, 
  TBL_MEDICAMENTO.NM_DOSAGEM
FROM TBL_ATENDIMENTO A
JOIN TBL_MEDICO M ON A.CD_MEDICO = M.CD_MEDICO
JOIN TBL_PACIENTE P ON A.CD_PACIENTE = P.CD_PACIENTE
JOIN TBL_MEDICAMENTO ON A.CD_MEDICAMENTO = TBL_MEDICAMENTO.CD_MEDICAMENTO
WHERE A.DT_DATA_ATENDIMENTO = '02/12/17';