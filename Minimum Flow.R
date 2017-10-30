library(igraph)
library(optrees)
nodes= 1:6
E = matrix( c(1,2,6,1,6,5,2,5,4,2,3,2,3,4,3,6,5,7,5,4,8),byrow= TRUE, ncol = 3)
colnames(E) <- c("from", "to", "capacity")
g1 <- graph_from_data_frame(as.data.frame(E))
plot(g1, edge.label = E(g)$capacity)

getMinimumSpanningTree()
getShortestPathTree(nodes,E,algorithm = 'Dijkstra',directed = TRUE)
maxFlowFordFulkerson(nodes,E, directed = TRUE,source.node = 1, sink.node = 5)

