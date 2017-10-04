library(lpSolveAPI)
z <- read.lp("pk2.lp")
z
solve(z)
get.objective(z)
get.variables(z)
get.sensitivity.objex(z)
get.sensitivity.rhs(z)
