palabras(estudia, e,s,t,u,d,i,a).
palabras(papas, p,a,p,a,s).
palabras(leer, l,e,e,r).
palabras(tomar, t,o,m,a,r).
palabras(adidas, a,d,i,d,a,s).

palabras(miel,m,i,e,l).
palabras(tinto,t,i,n,t,o).
palabras(adular, a,d,u,l,a,r).
palabras(atras,a,t,r,a,s).
palabras(estados,e,s,t,a,d,o,s).

crucigrama([V1,V2,H1,H2,H3]):-
  palabras(V1,A,_,B,_,D,_,_),
  palabras(V2,_,C,_,E,_),
  palabras(H1,_,_,A,_),
  palabras(H2,B,_,_,C,_),
  palabras(H3,_,D,_,_,E,_).
