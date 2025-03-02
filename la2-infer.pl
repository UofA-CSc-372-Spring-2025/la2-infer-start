/*
Solutions for LA2 Assignment, Type inference for SML

Name: 
Time spent on LA2: 

Collaborators and references:

*/

% --------------------------------------------------
% Entry point for type inference without needing to provide an environment
infer(Expr, Type) :- infer(Expr, Type, []).

% Used to supress a warning about infer/4 not being
% contiguous with the other infer/4 clauses.
:- discontiguous infer/3.
% --------------------------------------------------
% Basic types
infer(int(_), int, _).
infer(bool(_), bool, _).

% --------------------------------------------------
% Variable type lookup
infer(sml_var(X), Type, Env) :-
    lookup(X, Env, Type).


% --------------------------------------------------
% Generates a fresh Prolog variable for use as a type variable
fresh_type_var(_).

% --------------------------------------------------
% Lambda expression
% Type inference for lambda expressions
% (introducing a fresh environment scope)
infer(lambda(X, E), arrow(T1, T2), Env) :-
    fresh_type_var(T1),
    infer(E, T2, [(X, T1) | Env]).

