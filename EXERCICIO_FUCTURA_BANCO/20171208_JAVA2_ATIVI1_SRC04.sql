-- ARTHUR MARQUES GOMES DA SILVA
-- TABELA MEDICO
-- ATIVIDADE 01
-- TURMA JAVA 2

CREATE TABLE TBL_MEDICO(
CD_MEDICO NUMBER(8,0),
CD_ESPECIALIDADE NUMBER(8,0),
NM_MEDICO VARCHAR2(60),
CD_ENDERECO NUMBER(8,0),
CONSTRAINT MEDICO_PK PRIMARY KEY (CD_MEDICO),
CONSTRAINT ESPECIALIDADE_FK FOREIGN KEY (CD_ESPECIALIDADE) REFERENCES TBL_ESPECIALIDADE(CD_ESPECIALIDADE),
CONSTRAINT ENDERECO_MEDICO_FK FOREIGN KEY (CD_ENDERECO) REFERENCES TBL_ENDERECO(CD_ENDERECO)
);

CREATE SEQUENCE TBL_MEDICO_SEQ
  MINVALUE 1
  MAXVALUE 9999999999999999999
  START WITH 1
  INCREMENT BY 1;