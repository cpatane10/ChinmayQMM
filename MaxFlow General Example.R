
library(igraph)

edgelist <- data.frame(
  from = c(1,1,2,2,3,5,6),
  to = c(2,6,5,3,4,4,5),
  capacity = c(6,5,4,2,3,8,7))


g <- graph_from_data_frame(as.data.frame(edgelist))

E(g)$capacity <- edgelist$capacity


plot(g, edge.label = E(g)$capacity)

max_flow(g, source=V(g)["1"], target=V(g)["4"])
