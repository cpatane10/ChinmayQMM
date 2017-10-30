
library(igraph)


edgelist <- data.frame(
  from = c(1,1,1,2,2,3,3,3,4,6,6),
  to = c(2,3,4,3,5,4,6,5,7,7,5),
  capacity = c(5,7,4,1,9,2,5,4,9,6,1))
  

g <- graph_from_data_frame(as.data.frame(edgelist))

E(g)$capacity <- edgelist$capacity


plot(g, edge.label = E(g)$capacity)

max_flow(g, source=V(g)["1"], target=V(g)["5"])

