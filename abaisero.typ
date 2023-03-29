/* math */

#let naturalset = $bb(N)$
#let integerset = $bb(Z)$
#let realset = $bb(R)$
#let kstar = $\ ^*$
#let kplus = $\ ^+$

#let softmax = $op("softmax")$
#let softmin = $op("softmin")$
#let sign = $op("sign")$

/* linalg */

#let diag = $op("diag")$
#let rank = $op("rank")$
#let trace = $op("tr")$
#let colspace = $op("col")$
#let nullspace = $op("ker")$
#let spanspace = $op("span")$

#let tr = $\ ^top$
#let inv = $\ ^(-1)$
#let pinv = $\ ^+$
#let it = $\ ^(-top)$
#let pit = $\ ^(+top)$

/* optim */

#let argmax = $op("argmax")$
#let argmin = $op("argmin")$
#let opt = $\ ^*$

/* stats */

#let Cov = $bb(C)$
#let Ent = $bb(H)$
#let Exp = $bb(E)$
#let Ind = $bb(I)$
#let KL = $op("KL")$
#let DKL = $D_(KL)$
#let MI = $bb(I)$
#let Var = $bb(V)$

/* dists */

#let Categorical = $op("Categorical")$
#let Dirichlet = $op("Dirichlet")$
#let Normal = $op("Normal")$
#let Uniform = $op("Uniform")$

/* ml */

#let data = $cal(D)$
#let loss = $cal(L)$
#let nll = $op("nll")$
#let mse = $op("MSE")$

/* rl */

#let aset = $cal(A)$
#let bset = $cal(B)$
#let hset = $cal(H)$
#let oset = $cal(O)$
#let rset = $cal(R)$
#let sset = $cal(S)$

#let nohistory = $epsilon$

#let policy = $pi$

#let qpolicy = $Q^pi$
#let qmodel = $hat(Q)$

#let vpolicy = $V^pi$
#let vmodel = $hat(V)$

#let upolicy = $U^pi$
#let umodel = $hat(U)$

/* misc */

#let iter(i) = $\ ^((#i))$
#let to = $arrow.r$
#let mapsto = $arrow.r.bar$
#let implies = $arrow.r.double.long$
#let cond = symbol("|", ("double", "‖"))
