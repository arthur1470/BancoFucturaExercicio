-- ARTHUR MARQUES GOMES DA SILVA
-- TABELA ATENDIMENTO
-- ATIVIDADE 01
-- TURMA JAVA 2

CREATE TABLE TBL_ATENDIMENTO(
CD_ATENDIMENTO NUMBER(8,0),
NM_ATENDIMENTO VARCHAR(60),
DT_DATA_ATENDIMENTO DATE,
CD_PACIENTE NUMBER(8,0),
CD_MEDICO NUMBER(8,0),
CD_MEDICAMENTO NUMBER(8,0),
CONSTRAINT ATENDIMENTO_PK PRIMARY KEY (CD_ATENDIMENTO),
CONSTRAINT PACIENTE_ATENDIMENTO_FK FOREIGN KEY (CD_PACIENTE) REFERENCES TBL_PACIENTE(CD_PACIENTE),
CONSTRAINT MEDICO_ATENDIMENTO_FK FOREIGN KEY (CD_MEDICO) REFERENCES TBL_MEDICO(CD_MEDICO),
CONSTRAINT MEDICAMENTO_ATENDIMENTO_FK FOREIGN KEY (CD_MEDICAMENTO) REFERENCES TBL_MEDICAMENTO(CD_MEDICAMENTO)
);

CREATE SEQUENCE TBL_ATENDIMENTO_SEQ
  MINVALUE 1
  MAXVALUE 99999999999999999
  START WITH 1
  INCREMENT BY 1;