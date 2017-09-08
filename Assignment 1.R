library(lpSolveAPI)
# Assignment 1 Problem: Number of products in Each plant:L,M,S
lprec <- make.lp(0, 9)?
#Defaults to Minimize objective function
set.objfn(lprec, c(-385,-385,-385,-330,-330,-330,-275,-275,-275))
add.constraint(lprec, c(1,1,1,0,0,0,0,0,0), "<=", 900)
add.constraint(lprec, c(0,0,0,1,1,1,0,0,0), "<=", 1200)
add.constraint(lprec, c(0,0,0,0,0,0,1,1,1), "<=", 750)
add.constraint(lprec, c(20,0,0,15,0,0,12,0,0), "<=", 13000)
add.constraint(lprec, c(0,20,0,0,15,0,0,12,0), "<=", 12000)
add.constraint(lprec, c(0,0,20,0,0,15,0,0,12), "<=", 5000)
add.constraint(lprec, c(1,0,0,1,0,0,1,0,0), "<=", 750)
add.constraint(lprec, c(0,1,0,0,1,0,0,1,0), "<=", 900)
add.constraint(lprec, c(0,0,1,0,0,1,0,0,1), "<=", 450)
RowNames <- c("Plant1", "Plant2", "Plant3") # "Plant4", "Plant5", "Plant6","Plant7","Plant8","Plant9")
ColNames <- c("Product1", "Product2" , "Product3","Product4","Product5","Product6","Product7","Product8","Product9")
dimnames(lprec) <- list(RowNames, ColNames)
lprec
solve(lprec)
get.objective(lprec) * -1
get.variables(lprec)
get.constraints(lprec)
get.sensitivity.objex(lprec)
get.sensitivity.rhs(lprec)