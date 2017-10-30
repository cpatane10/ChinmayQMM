library(optrees)
nodes= 1:4
nodes= 1:6
E = matrix( c(1,2,6,1,6,5,2,5,4,2,3,2,3,4,3,6,5,7,5,4,8),byrow= TRUE, ncol = 3)
getMinimumSpanningTree(nodes, E ,algorithm = 'Kruskal')

