library(optrees)
library(igraph)

nodes= 1:7
E = matrix( c(1,2,5,1,3,7,1,4,4,2,3,1,2,5,9,3,4,2,3,6,5,3,5,4,4,7,9,6,7,6,6,5,1),byrow= TRUE, ncol = 3)
g1 <- graph_from_data_frame(as.data.frame(E))
plot(g1, edge.label = E(g)$capacity)


getShortestPathTree(nodes,E,algorithm = 'Dijkstra',directed = TRUE)
