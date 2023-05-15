
friend(ahmed, samy).
friend(ahmed, fouad).
friend(samy, abdullah).
friend(fouad, abdullah).
friend(samy, mohammed).
friend(samy, said).
friend(samy, omar).
friend(abdullah, khaled).
friend(abdullah, ibrahim).
friend(abdullah, omar).
friend(mostafa, marwan).
friend(marwan, hassan).
friend(hassan, ali).
friend(hend, aisha).
friend(hend, mariam).
friend(hend, khadija).
friend(huda, mariam).
friend(huda, aisha).
friend(huda, lamia).
friend(mariam, hagar).
friend(mariam, zainab).
friend(aisha, zainab).
friend(lamia, zainab).
friend(zainab, rokaya).
friend(zainab, eman).
friend(eman, laila).



suggestfriend(X, W) :-
    friend(X, Y),
    friend(Y, Z),
    friend(Z, W),
    W \= X,
    notdirectfriend(X, W).



notdirectfriend(X, W) :-
    friend(X, Y),
    friend(Y, W),
    !, fail.

    
notdirectfriend(_, _).





peopleYouMayKnow_indirect(X, W):-
    suggestfriend(X, W).


