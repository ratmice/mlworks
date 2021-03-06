(*
 * Copyright 2013 Ravenbrook Limited <http://www.ravenbrook.com/>.
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * $Log: basics1.l,v $
 * Revision 1.1  1998/08/06 10:36:10  jont
 * new unit
 * Lego test application
 *
 *
 *)
(* More Basics *)

(* These are probably redundant *)
[and_elim : {A,B,C:Prop}(A->B->C)->(and A B)->C];
[and3_elim : {A,B,C,D:Prop}(A->B->C->D)->(and3 A B C)->D];
[and1: {A,B|Prop}(and A B)->A];
[and2: {A,B|Prop}(and A B)->B];

(* Strict less than *)
Goal NN -> NN -> BB;
Refine Nrec[n:NN]NN->BB;
Refine Nrec[n:NN]BB;
Refine ff;
intros;Refine tt;
Intros n1 n_ih;
Refine Nrec [n:NN]BB;
Refine ff;
Intros;
Prf;
Refine n_ih x;
Save lt;
lt;

[gt [n,m:NN] = lt m n];
[ge [n,m:NN] = orr (neq n m) (gt n m)];
[le [n,m:NN] = orr (lt n m) (neq n m)];

(* some axioms *)

[lt_irreflexive : {n:NN}is_ff(lt n n)];
[lt_transitive : {l,n,m:NN}(is_tt (lt l n)) ->  (is_tt (lt n m)) -> (is_tt (lt l m))];
[lt_antisymmetric : {n,m:NN}(is_tt (lt n m)) -> (is_ff (lt m n))];
[lt_complete : {n,m:NN} or3 (is_tt (lt n m)) (is_tt (neq n m)) (is_tt (gt n m))];

Goal {A|Prop}{n,m:NN}{l,e,g:A}A;
intros;
Refine tt_or_ff (lt n m);
intros;Refine l;
intros;Refine tt_or_ff (neq n m);
intros;Refine e;
intros;Refine g;
Save trich;

[neq_ax:{n,m:NN}(is_tt (neq n m))->Q n m];

Goal {A|Prop}{n,m|NN}{l,e,g|A}
(is_tt (lt n m)) -> Q (trich n m l e g) l;
intros;
Expand trich;
Qrepl H;
Refine Q_refl;
Save lt_trich_ax;

Goal {A|Prop}{n,m|NN}{l,e,g|A}
(is_tt (neq n m)) -> Q (trich n m l e g) e;
intros;
Refine cut (neq_ax n m);
intros;
Claim is_ff (lt n m);
Expand trich;
Qrepl ?+1;
Qrepl H;
Refine Q_refl;
Qrepl H1 H;
Refine lt_irreflexive;
Save neq_trich_ax;

Goal {A|Prop}{n,m|NN}{l,e,g|A}
(is_tt (gt n m)) -> Q (trich n m l e g) g;
Expand gt;
intros;
Refine cut (lt_antisymmetric m n);intros;
Refine tt_or_ff (neq n m);intros;
Refine tt_not_ff;
Refine cut (neq_ax n m H2);intros;
Qrepl (Q_sym H);Qrepl H3;
Refine lt_irreflexive;intros;
Expand trich;
Qrepl (lt_antisymmetric m n H);
Qrepl H2;
Refine Q_refl;
Save gt_trich_ax;

[ge_thm:{n,m:NN}Q (ge n m) (nott(lt n m))];

[add_sbt_distrib:{n,m,p:NN}Q(sbt n m) (sbt (add n p) (add m p))];

[add_lt_distrib:{n,m,p:NN}Q (lt n m) (lt (add n p) (add m p))];

(* list properties *)

[map_length_thm : {A,B|TYPE}{f:A->B}{l:LL|A}Q (length l) (length (map f l))];
