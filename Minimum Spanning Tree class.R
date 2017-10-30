library(optrees)
nodes= 1:7
E = matrix( c(1,2,5,1,3,7,1,4,4,2,3,1,2,5,9,3,4,2,3,6,5,3,5,4,4,7,9,6,7,6,6,5,1),byrow= TRUE, ncol = 3)
getMinimumSpanningTree(nodes, E ,algorithm = 'Boruvka')
getMinimumSpanningTree(nodes, E ,start.node= 7, algorithm = 'Boruvka')
getMinimumSpanningTree(nodes, E ,algorithm = 'Kruskal')
getMinimumSpanningTree(nodes, E ,algorithm = 'Prim')