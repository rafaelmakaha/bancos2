# Welison Lucas Almeida Regis, 17/0024121, 17/10/2019
## MODELO DE ENTIDADE E RELACIONAMENTO (ME-R)
### ENTIDADES

PROFESSOR (<u>matriculaFuncional</u>, nome, dtNascimento, sexo, {email})
CURSO (<u>idCurso</u>, nomeCurso, classificacao)
DISCIPLINA (<u>idDisciplina</u>, nome, sigla, qtCredito, periodo)

### RELACIONAMENTOS

PROFESSOR - leciona - DISCIPLINA
Um PROFESSOR leciona uma ou várias disciplinas, e uma DISICPLINA pode ser lecionada por um ou vários professores.
Cardinalidade: n:m.

DISCIPLINA - necessita - DISCIPLINA
Uma DISCIPLINA pode necessitar de nenhuma, uma ou mais disciplinas para ser cursada, e para cursar uma DISCIPLINA pode-se necessitar de nenhuma, uma ou muitas disciplinas.
Cardindalide: n:m.

PROFESSOR – formado – CURSO
Um professor pode ser formado em vários cursos e um curso pode ter formado vários professores.
Cardinalidade: n:m	

## ANÁLISE


ME-R:
	* Os atributos de PROFESSOR não são coerentes ao solicitado no projeto de banco de dados. Conforme enunciado, deve-se ter os atributos: nome, data de nascimento, sexo, idade e ao menos um email.
	* Os atributos de DISCIPLINA estão incompletos. Conforme contexto, deveria-se considerar nome completo, sigla, quantidade de créditos e período.
	* Relacionamentos incoerentes. Não se tem no MER a entidade ALUNO, porém, ela é utilizada futuramente. O projeto foca no cadastro de disciplinas, logo, não se deve ter o relacionamento "ALUNO matricula CURSO". Relacionamento "PROFESSOR orienta ALUNO" não é o foco do enunciado também, na verdade, deve-se expressar "PROFESSOR leciona DISICPLINA".
	* A critério de indicação de professor para dada disicplina, foi mantido o atributo curso a fim de melhor alocar professores por disciplina.
DE-R:
	* No modelo, os atributos estão com nome cortado e com fontes ruins de forma a prejudicar a interpretação do modelo.
	* Cardindalidade entre "PROFESSOR - orienta - DISCIPLINA" está incorreta, pois é n:m.
	* Não se representou o auto-relacionamento em DISCIPLINA.
DL:
	* Não se representou que o professor pode ter mais de um email, conforme deixa claro o enunciado.
	* Identificação dos atributos no modelo não é clara, pois cortou-se as descrições.
	* Falta de chave primária em "formado" não é coerente, pois geraria inconsistência, possibilitando colocar dados repetidos e desnecessarios.
	* Atributo cpf surgiu magicamente em "PROFESSOR".
