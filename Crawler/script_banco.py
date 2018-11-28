from sqlalchemy import Column, DateTime, String, Integer, ForeignKey, func
from sqlalchemy.orm import relationship, backref
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import sqlalchemy
from sqlalchemy.sql import select
from sqlalchemy import ForeignKey,FLOAT
from sqlalchemy.ext.declarative import declarative_base, synonym_for
from sqlalchemy.ext.hybrid import hybrid_property

Base = declarative_base()
 
#Constrói as classes baseadas em suas estruturas no banco
Base = sqlalchemy.ext.declarative.declarative_base()

class Alternativa(Base):	
	__tablename__="tb_alternativa"
	id_alternativa = Column(Integer,primary_key=True,autoincrement=True)
	texto_alternativa = Column(String(1500))
	img_alternativa = Column(String(500))
	alternativa_correta = Column(Integer)
	letra_alternativa = Column(String(5))
	teste = relationship("Questao")
	FKid_questao = Column(Integer,ForeignKey("tb_questao.id_questao"))
	
class Area(Base):
	__tablename__="tb_area"
	id_area = Column(Integer,primary_key=True,autoincrement=True)
	descricao_area = Column(String(100))
	teste3 = relationship("Questao")	
	
class Idioma(Base):
	__tablename__="tb_idioma"
	id_idioma = Column(Integer,primary_key=True,autoincrement=True)
	descricao_idioma = Column(String(100))
	
class Questao(Base):
	__tablename__="tb_questao"
	id_questao = Column(Integer,primary_key=True,autoincrement=True) 
	ano = Column(String(50))
	enunciado = Column(String(3500))
	img_enunciado = Column(String(500))
	discriminacao = Column(FLOAT(15))
	url = Column(String(150))
	dificuldade = Column(Integer)
	acerto_casual = Column(FLOAT(15))
	media = Column(FLOAT(15))
	grupo = Column(String(50))
	teste2 = relationship("Idioma")
	FKid_idioma = Column(Integer,ForeignKey("tb_idioma.id_idioma"))
	teste4 = relationship("Area")
	FKid_area = Column(Integer,ForeignKey("tb_area.id_area"))
	
from sqlalchemy import create_engine
engine = sqlalchemy.create_engine("mysql://gustavo:gustavo@localhost/enem_pronto")
  
from sqlalchemy.orm import sessionmaker
session = sessionmaker()
session.configure(bind=engine)
Base.metadata.create_all(engine)






 








