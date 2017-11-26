
library(visNetwork)


edges <- read_delim("~/Desktop/edges.csv", 
                         ";", escape_double = FALSE, locale = locale(encoding = "latin1"), 
                        trim_ws = TRUE)



nodes <- read_delim("~/Desktop/nodes.csv", 
                    ";", escape_double = FALSE, locale = locale(encoding = "latin1"), 
                    trim_ws = TRUE)




nodes$label <- paste(nodes$oeuvre,nodes$artiste,'►', sep = '\n')
edges$label <- edges$lien
# edges$length <- c(180,250,200,300,300,200,180,200,140,230)


# #####################
# 
# visNetwork(nodes, edges, 
#            height = "800px", width = "1200px",
#            main = 'Ballade Musicale dans les Trésors Sonores de la BnF')  %>%
#  visNodes(
#     shape = "circle",
#     color = list(background = "#50d0dc", 
#                  border = "black",
#                  highlight = "yellow"),
#     image = 'http://gallica.bnf.fr/ark:/12148/bpt6k88059859/f1.highres',
#     shadow = list(enabled = TRUE, size = 10)
#     
#   ) %>%
# 
# visOptions(collapse = TRUE) %>%
# visInteraction(navigationButtons = TRUE)

#####################

# WORKIN : 

visNetwork(nodes, edges, 
           height = "800px", width = "640px",
)  %>%
  visNodes(
    shape = "circle",
    color = list(background = "#50d0dc", 
                 border = "black",
                 highlight = "yellow"),
    shadow = list(enabled = TRUE, size = 10)
    
  ) %>%
  visEdges(shadow = TRUE,
           color = list(color = "black", highlight = "red")) %>%  
  visOptions(collapse = TRUE) %>%
  visInteraction(navigationButtons = TRUE) %>% 
  visHierarchicalLayout()
#####################



# 
# 
# visNetwork(nodes, edges, main = 'Ballade Musicale dans les Trésors Sonores de la BnF') %>%
#   
# visNodes(
#   shape = "circularImage",
#          image = 'http://gallica.bnf.fr/ark:/12148/bpt6k88059859/f1.highres',
#          shadow = list(enabled = TRUE, size = 10)
#          
#          )
