import sqlalchemy
from sqlalchemy.ext.declarative import declarative_base, synonym_for
from sqlalchemy.ext.hybrid import hybrid_property
from sqlalchemy import Column, Integer, String
from sqlalchemy import Sequence
from sqlalchemy import ForeignKey,FLOAT
from sqlalchemy.orm import relationship,backref
from sqlalchemy.orm import sessionmaker
from sqlalchemy.sql import select

from selenium import webdriver
import selenium.webdriver
import urllib
import requests
import os
from teste_banco import Area,Idioma,Questao,Alternativa
import teste_banco
nomesImgsResp = []
contador_questoes = 1631
alternativas = []
inserir = []

listaSeletoreImgResp = []
listaLinksImgResp = []
letras = ["A","B","C","D","E"]

def downloader(url):
	path = os.getcwd()
	lib = os.path.basename(url)
	r = requests.get(url, allow_redirects=True)
	aux = r.headers['Content-Type']
	tipoImagem = aux[6:]
	open('imagens/imgQuestao{}'.format(str(numeroQuestao)) + '_ano{}'.format(str(ano)) + '.{}'.format(str(tipoImagem)), 'wb').write(r.content)
	return('imagens/imgQuestao{}'.format(str(numeroQuestao)) + '_ano{}'.format(str(ano)) + '.{}'.format(str(tipoImagem)))
	
def downloadImgResposta(url):
	path = os.getcwd()
	lib = os.path.basename(url)
	r = requests.get(url, allow_redirects=True)
	aux = r.headers['Content-Type']
	tipoImagem = aux[6:]
	open('imagens/imgRespostaQuestaoNum{}'.format(str(numeroQuestao)) + 'Letra{}'.format(letras[x]) + '_ano{}'.format(str(ano)) + '.{}'.format(str(tipoImagem)), 'wb').write(r.content)
	return('imagens/imgRespostaQuestaoNum{}'.format(str(numeroQuestao)) + 'Letra{}'.format(letras[x]) + '_ano{}'.format(str(ano)) + '.{}'.format(str(tipoImagem)))
#driver = selenium.webdriver.Chrome()
driver = webdriver.Firefox()

contador1 = 3
contador2 = 2
contador3 = 7
contador4 = 8
contador5 = 7
contador6 = 5

for x in range(1630): 

	contador_questoes = contador_questoes + 1
	alternativas = []
	nomesImgsResp = []	

	if(contador1 == 9):
		contador2 = contador2 + 1
		contador1 = 0
		contador1 = -1

	if(contador2 > 9):
		contador3 = contador3 + 1
		contador2 = 0

	if(contador3 > 9):
		contador4 = contador4 + 1
		contador3 = 0

	if(contador4 > 9):
		contador5 = contador5 + 1
		contador4 = 0

	if(contador5 > 9):
		contador6 = contador6 + 1
		contador5 = 0

	contador1 = contador1 + 1

	num = (str(contador6) + str(contador5) + str(contador4) +str(contador3) + str(contador2) + str(contador1))
	link = 'https://questoes.olhonavaga.com.br/questoes?id={}'.format(str(num)) + '&tc=3'
	try:
		driver.get('https://questoes.olhonavaga.com.br/questoes?id={}'.format(str(num)) + '&tc=3') 
	except:
		driver.refresh()
	
	quant_img = driver.find_elements_by_tag_name("img")

	try:
		area = driver.find_element_by_css_selector("#form\:questionsLoopID\:0\:j_idt529\:0\:j_idt530").text
	except:
		area = driver.find_element_by_css_selector("#form\:questionsLoopID\:0\:j_idt482\:0\:j_idt483").text
	

	try:
		numeroQuestao = driver.find_elements_by_css_selector('.questionNormalBackground > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(3) > label:nth-child(1)')[0].text
	except:
		numeroQuestao = driver.find_elements_by_css_selector('#form\:questionsLoopID\:0\:j_idt561')[0].text

	try:
		ano = driver.find_element_by_xpath('//*[@id="form:questionsLoopID:0:j_idt545"]').text
	except:
		ano = driver.find_elements_by_css_selector('#form\:questionsLoopID\:0\:j_idt498')[0].text
	try:
		enunciado = driver.find_elements_by_css_selector(".questionNormalBackground > tbody:nth-child(1) > tr:nth-child(5) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > label:nth-child(1)")[0].text
	except:													
		driver.find_element_by_xpath('/html/body/div[3]/form[1]/table/tbody/tr/td[2]/table/tbody/tr[9]/td/table/tbody/tr/td/table/tbody/tr[5]/td/table/tbody/tr[1]/td/div/div[1]').click() 
		try:
			texto = driver.find_elements_by_tag_name("label")[44].text
			pergunta = driver.find_elements_by_css_selector(".questionNormalBackground > tbody:nth-child(1) > tr:nth-child(5) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(1) > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > label:nth-child(1)")[0].text
			enunciado = texto + pergunta
		except:
			print("problema")
			
	alternativas.append(driver.find_elements_by_css_selector("#form\:questionsLoopID\:0\:alternativesRadio > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > label:nth-child(2) > div:nth-child(1) > div:nth-child(2)")[0].text)

	if(len(alternativas[0]) != 0):

		alternativas.append(driver.find_elements_by_css_selector("#form\:questionsLoopID\:0\:alternativesRadio > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(1) > label:nth-child(2) > div:nth-child(1) > div:nth-child(2)")[0].text)

		alternativas.append(driver.find_elements_by_css_selector("#form\:questionsLoopID\:0\:alternativesRadio > tbody:nth-child(1) > tr:nth-child(3) > td:nth-child(1) > label:nth-child(2) > div:nth-child(1) > div:nth-child(2)")[0].text)

		alternativas.append(driver.find_elements_by_css_selector("#form\:questionsLoopID\:0\:alternativesRadio > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(1) > label:nth-child(2) > div:nth-child(1) > div:nth-child(2)")[0].text)

		alternativas.append(driver.find_elements_by_css_selector("#form\:questionsLoopID\:0\:alternativesRadio > tbody:nth-child(1) > tr:nth-child(5) > td:nth-child(1) > label:nth-child(2) > div:nth-child(1) > div:nth-child(2)")[0].text)
	
		
	if(len(quant_img)==39):
		link = quant_img[16].get_attribute("src")
		nomeImgEnunciado=downloader(link)


	if(len(quant_img)==44):
		link = quant_img[16].get_attribute("src")
		nomeImgEnunciado = downloader(link)
		for x in (range(5)):
			link = quant_img[16+x].get_attribute("src")
			nomesImgsResp.append(downloadImgResposta(link))
				

	if(len(quant_img)==43):
		link = quant_img[16].get_attribute("src")
		for x in (range(5)):
			link = quant_img[16+x].get_attribute("src")
			nomesImgsResp.append(downloadImgResposta(link))
					

	if(area == "MATEMÁTICA"):
		id = 1
	if((area == "QUÍMICA") | (area == "FÍSICA") | (area == "BIOLOGIA")):
		id = 2
	if((area == "CONHECIMENTOS GERAIS") | (area == "HISTÓRIA")):
		id = 3
	if((area =="PORTUGUÊS") | (area=="INGLÊS")):
		id = 4

	if(area == "INGLÊS"):
		id_idioma = 2
	else:
		id_idioma = 1
	s = teste_banco.session()
		

	if((len(quant_img) == 39) | (len(quant_img) == 44)):
		q1 = Questao(ano=ano.encode('latin-1', 'replace'), enunciado=enunciado.encode('latin-1', 'replace'),img_enunciado=nomeImgEnunciado.encode('latin-1', 'replace'),url=link.encode('latin-1', 'replace'),FKid_idioma=id_idioma,FKid_area=id)
	else:
		q1 = Questao(ano=ano.encode('latin-1', 'replace'), enunciado=enunciado.encode('latin-1', 'replace'),url=link.encode('latin-1', 'replace'),FKid_idioma=id_idioma,FKid_area=id)
	s.add(q1)
	s.commit()

	s = teste_banco.session()

	alternativa = ""
	if((len(quant_img) == 43) | (len(quant_img) == 44)):
		for x in range(5):
			alternativa = Alternativa(img_alternativa=nomesImgsResp[x].encode('latin-1', 'replace'),letra_alternativa=letras[x],FKid_questao=contador_questoes)
			s.add(alternativa)
			s.commit()
	else:
		for x in range(5):
			alternativa = Alternativa(texto_alternativa=alternativas[x].encode('latin-1', 'replace'),letra_alternativa=letras[x],FKid_questao=contador_questoes)
			s.add(alternativa)
			s.commit()

		

driver.close()