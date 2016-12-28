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


mae(gaia, cronos).
mae(gaia, reia).
mae(gaia, japeto).
mae(reia, hades).
mae(reia, hera).
mae(reia, poseidon).
mae(reia, demeter).
mae(reia, zeus).
mae(dione, afrodite).
mae(hera, hefesto).
mae(hera, ares).
mae(demeter, persefone).
mae(semele, dionisio).


pai(urano, cronos).
pai(urano, reia).
pai(urano, japeto).
pai(japeto, epimeteu).
pai(japeto, prometeu).
pai(japeto, atlas).
pai(epimeteu, dione).
pai(cronos, hades).
pai(cronos, hera).
pai(cronos, poseidon).
pai(cronos, demeter).
pai(cronos, zeus).
pai(zeus, afrodite).
pai(zeus, atena).
pai(zeus, hefesto).
pai(zeus, ares).
pai(zeus, heracles).
pai(zeus, dionisio).


filho(X, Y) :- pai(Y, X) ; mae(Y, X).

nome(X, Y) 				:- pessoa(X, Y, _, _, _, _).
idade(X, Y) 			:- pessoa(X, _, Y, _, _, _).
sexo(X, Y) 				:- pessoa(X, _, _, Y, _, _).
nacionalidade(X, Y) 	:- pessoa(X, _, _, _, Y, _).
raca(X, Y) 				:- pessoa(X, _, _, _, _, Y).











