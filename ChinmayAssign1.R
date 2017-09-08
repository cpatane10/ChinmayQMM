library(lpSolveAPI)
z <- read.lp("file.lp")
z
solve(z)
get.objective(z)
get.variables(z)
get.constraints(z)
get.sensitivity.objex(z)
get.sensitivity.rhs(z)