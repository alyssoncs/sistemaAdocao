% (Instancia, Nome, Idade, Sexo, Nacionalidade, Raça)

pessoa(caos, 		'Caos', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(gaia, 		'Gaia', 150, 'Feminino', 'Brasileiro', 'Pardo' ).
pessoa(urano, 		'Uranos', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(cronos, 		'Cronos', 120, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(reia, 		'Reia', 130, 'Feminino', 'Brasileiro', 'Pardo').
pessoa(japeto, 		'Japeto', 110, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(epimeteu, 	'Epimeteu', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(prometeu, 	'Prometeu', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(atlas, 		'Atlas', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(hades, 		'Hades', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(hera, 		'Hera', 150, 'Feminino', 'Brasileiro', 'Pardo').
pessoa(poseidon, 	'Poseidon', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(demeter, 	'Demeter', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(zeus, 		'Zeus', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(dione, 		'Dione', 150, 'Feminino', 'Brasileiro', 'Pardo').
pessoa(semele, 		'Semele', 150, 'Feminino', 'Brasileiro', 'Pardo').
pessoa(afrodite, 	'Afrodite', 150, 'Feminino', 'Brasileiro', 'Pardo').
pessoa(dionisio, 	'Dionisio', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(heracles, 	'Heracles', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(ares, 		'Ares', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(hefesto, 	'Hefesto', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(persefone, 	'Persefone', 150, 'Masculino', 'Brasileiro', 'Pardo').
pessoa(atena, 		'Atena', 150, 'Feminino', 'Brasileiro', 'Pardo').


conjuge(urano, gaia).
conjuge(cronos, reia).
conjuge(zeus, dione).


genitor(gaia, cronos).
genitor(gaia, reia).
genitor(gaia, japeto).
genitor(reia, hades).
genitor(reia, hera).
genitor(reia, poseidon).
genitor(reia, demeter).
genitor(reia, zeus).
genitor(dione, afrodite).
genitor(hera, hefesto).
genitor(hera, ares).
genitor(demeter, persefone).
genitor(semele, dionisio).
genitor(urano, cronos).
genitor(urano, reia).
genitor(urano, japeto).
genitor(japeto, epimeteu).
genitor(japeto, prometeu).
genitor(japeto, atlas).
genitor(epimeteu, dione).
genitor(cronos, hades).
genitor(cronos, hera).
genitor(cronos, poseidon).
genitor(cronos, demeter).
genitor(cronos, zeus).
genitor(zeus, afrodite).
genitor(zeus, atena).
genitor(zeus, hefesto).
genitor(zeus, ares).
genitor(zeus, heracles).
genitor(zeus, dionisio).


pai(X, Y) 		:- genitor(X, Y), sexo(X, 'Masculino').
mae(X, Y) 		:- genitor(X, Y), sexo(X, 'Feminino').
filho(X, Y) 		:- genitor(Y, X).

nome(X, Y) 		:- pessoa(X, Y, _, _, _, _).
idade(X, Y) 		:- pessoa(X, _, Y, _, _, _).
sexo(X, Y) 		:- pessoa(X, _, _, Y, _, _).
nacionalidade(X, Y) 	:- pessoa(X, _, _, _, Y, _).
raca(X, Y) 		:- pessoa(X, _, _, _, _, Y).


% 		---------- Cadastro ----------

/* 
*	Ordem dos atributos de cadastro:
*
*	Dados_do_pretendente{
* 		pessoa,
*		escolaridade,
*		profissao,
*		filhosBiologicos
*		filhosAdotivos,
*	}
*	Preferencia_do_pretendente{
* 		sexo,
*		raca,
*		irmaos
*	}
*	Dados_do_cadastro{
* 		status, 
*		dataEntrada,
*		dataValidade
*	}
*/

cadastro(japeto, 'Ensino medio completo', 'Agricultor', 1, 0, 'Sem preferencia', 
	'Sem preferencia', 'Aceita', 'Ativo', '28/12/2016', '28/12/2021').

cadastro(hades, 'Ensino medio incompleto', 'Deus do mundo inferior', 0, 0, 'Sem preferencia', 
	'Sem preferencia', 'Aceita', 'Ativo', '28/12/2016', '28/12/2021').
	
% 		------------------------------



% 		---------- Tipos de adoção ----------

% (tipo, nome, legalidade, descrição, direitos)
% não sei como representar os direitos

tipoAdocao(aberto, 'Aberto', 'Legal', 'O adotado tem direito de manter vinculo 
		com a familia biologica', 'Complete isso aqui').
		
tipoAdocao(fechado, 'Fechado', 'Legal', 'O adotado nao tem direito de manter 
		vinculo com a familia biologica', 'Complete isso aqui').
		
tipoAdocao(a_brasileira, 'A brasileira', 'Ilegal', 'O adotado é registrado 
		ilegalmente como filho biologico do adotante', 'Complete isso aqui').


%		-------------------------------------


%		---------- Adoção ----------

% (adotante, adotado, juiz, tipoAdocao, local, data, motivo) <- esta faltando as consequencias
% Como representar as consequencias materiais?

adocao(japeto, hera, sergio_moro, a_brasileira, 'Monte Olimpo', '01/01/2017', 'Auxiliar uma criança com dificuldades')

%		----------------------------
















