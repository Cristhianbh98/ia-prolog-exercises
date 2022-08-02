/*Hechos*/
padre(paulino,jose).
padre(jose,cristhian).
padre(cristhian,alexander).
padre(alexander,julio).

/*Recursividad*/
antecesor(X,Y):-padre(X,Y).
antecesor(X,Y):-padre(X,Z),antecesor(Z,Y).
