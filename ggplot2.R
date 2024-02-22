#Dicas de organização de Script------------------------------------------------
#soft warp
#Arco iris parenteses

##Instalando pacotes---------------------------------------------------------
install.packages("ggplot2")
library(ggplot2)

##Gráfico em esquema de camadas----------------------------------------------
#camada 1: Dados

data(iris)
print(iris)

library(ggplot2)
str(iris)

#Banco de dados(informações)-------------------------------------------------
str(iris)

# Renomeando a coluna "Sepal.Length" para "sepal.Length"
names(iris)[1] <- "sepal.Length"

##Nomes
names(iris)[1]
names(iris)

ggplot(iris,aes(x=Species))

ggplot(iris,aes,aes(x=Species, y=sepal.Length))

#Geoms------------------------------------------------------------------------
ggplot(iris, aes(x = Species, y = sepal.Length)) +
  geom_boxplot()

ggplot(iris, aes(x = sepal.Length)) + 
  geom_histogram()

ggplot(iris,aes(x=  ))
ggplot(iris,aes,aes(x=species, y=sepal.Length))
ggplot(iris,aes(x=Species, y=sepal.Length))

ggplot(iris,aes(x=Species, y=sepal.Length)) +
  geom_boxplot()

#Geometria de boxplot----------------------------------------------------
geom_boxplot()
?boxplot

#outliers(estatistico x biologico)-----------------------------------------
geom_boxplot(outlier.color="red")

##Linhas----------------------------------------------------
#Tempo
ggplot(iris, aes(x = Sepal.Width)) + 
  geom_histogram()

#Pontos----------------------------------------------------------------
#Categórico
ggplot(iris,aes(x=Species,y=sepal.Length)) 
+ geom_point()

#Variavel quantitativa
ggplot(iris,aes(x=Sepal.Width,y = sepal.Length)) +
  geom_point()

##Jitter----------------------------------------------------------------

ggplot(iris,aes(x=Species,y=sepal.Length)) + 
  geom_jitter()

#Configurando uma semente
set.seed(02)
ggplot(iris,aes(x=Species,y=sepal.Length)) + 
  geom_jitter()

#Largura do jitter
ggplot(iris,aes(x=Species,y=sepal.Length)) + 
  geom_jitter(position = position_jitter(0.75))

#Configurar largura e semente ao mesmo tempo
ggplot(iris,aes(x=Species,y=sepal.Length)) + 
  geom_jitter(position = position_jitter(width = 0.75, seed = 10))

#Opção fora do position_jitter
ggplot(iris,aes(x=Species,y= sepal.Length))+
  geom_jitter(width = 2)

##Violino --------------------------------------------------------------------
ggplot(iris,aes(x=Species,y=sepal.Length))+
  geom_violin()

##Barras-----------------------------------------------------------------------
ggplot(iris,aes(x=Species))+
  geom_bar()

#Largura
ggplot(iris,aes(x=Species))+
  geom_bar(width = 0.5)

#Limites do eixo y
ggplot(iris,aes(x=Species))+
  geom_bar(width = 0.5)+
  scale_y_continuous(limits = c(0,200))

#Eixo flutuante
ggplot(iris,aes(x=Species))+
  geom_bar(width = 0.5)+
  scale_y_continuous(expand = c(0,0),limits = c(0,55))

#Grafico de barras quando o y não é uma contagem

#Instalar o pacote
install.packages("dplyr")

#Carregando o pacote
library(dplyr)

#Operador PIPE: CTRL+SHIFT+M

iris_summary <- iris |> 
  group_by(Species) |> 
  summarise(
    media = mean(sepal.Length),
    mediana = median(sepal.Length),
    desvio_padrao = sd(sepal.Length)
  )
print(summarise)

bar<- iris |> 
  group_by(Species) |> 
  summarise(media=mean(sepal.Length))

#Grafico (stat=identity)
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point() +
  scale_y_continuous(expand = c(0, 0))

?geom_bar

library(ggplot2)

#Varias camadas------------------------------------------------------------
#A importancia da ordem das coisas
ggplot(iris,aes(x=species, y=Sepal.Lenght)) +
  
# Criando um gráfico com várias camadas
ggplot(iris, aes(x = Species, y = sepal.Length)) +
   
# Geometria para um gráfico de violino
  geom_violin() +
  
# Geometria para um gráfico de boxplot
  geom_boxplot(width = 0.2) +
  
# Geometria para adicionar pontos jittered
  geom_jitter()

#Personalização ------------------------------------------------------------

#Começando o gráfico do zero -------------------------------------------------

library(ggplot2)

ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point()

#Trocando os limites do eixo y

library(ggplot2)

ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  scale_y_continuous(limits = c(0, 0)) +
  scale_x_continuous(limits = c(0, 0))

#Aumentar os pontos
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point(size = 2) +  
  geom_point(size = 0.1)  

# Formato dos pontos
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point(shape = "diamond", size = 4)

##Shapes: Circle, square,diamond,triangle,bullet

# Shapes: 1 a 25
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point(shape = 2, size = 4)

#Point characters (tipos de pontos)
?pch

#Formato diferente por espécie da íris
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, shape = Species)) +
  geom_point(size = 4)

#Trocando o formato dos pontos manualmente
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, shape = Species)) +
  geom_point(size = 4) +
  scale_shape_manual(values = c(1, 2, 3))

#Trocando a cor dos pontos manualmente
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, shape = Species)) +
  geom_point(size = 4) +
  scale_color_manual(values = c("red", "purple", "green"))

#Espessura do contorno(stroke)
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, shape = Species)) +
  geom_point(size = 4, stroke = 2) +
  scale_shape_manual(values = c(1, 2, 3))

#Tamanho do ponto
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, shape = Species, size = Petal.Length, color = Species)) +
  geom_point()

#Título dos eixos-----------------------------------------------------------
#Labs
?iris
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  labs(x = "Largura da sépala (cm)", y = "Comprimento da sépala (cm)")
    
#Título do gráfico--------------------------------------------------------------
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  labs(x = "Largura da sépala (cm)", y = "Comprimento da sépala (cm)",
       title = "Espécies de Iris",
       subtitle = "Pacote de dados do Fisher",
       caption = "Fonte: Pacote datasets")

#Temas----------------------------------------------------------------------
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  labs(x = "Largura da sépala (cm)",
       y = "Comprimento da sépala (cm)") +  # Corrigido o fechamento das aspas
  theme_classic()

#Tema Test
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  labs(x = "Largura da sépala (cm)",
       y = "Comprimento da sépala (cm)") +
  theme_test()

#Tema Bw
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  labs(x = "Largura da sépala (cm)",
       y = "Comprimento da sépala (cm)") +
  theme_bw()

install.packages("ggthemes")
library(ggthemes)

      
#Packages----------------------------------------------------------------------
library(ggthemes)
library(hrbrthemes)
library(tvthemes)
library(ggthemr)
library(bbplot)



## Reta de regressao ---------------------------

# Usando o geom_smooth
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  geom_smooth(method = "lm")

?geom_smooth()

lm(Sepal.Length ~ Sepal.Width, data = iris)

# Color x fill no geom_smooth()
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point() +
  geom_smooth(method = "lm", color = "#6EC769E4", fill = "purple")


# Obs: se voce ja tiver o seu modelo estatistico, ao inves do geom_smooth, voce pode adicionar: geom_abline(intercept = intercepto, slope = inclinacao)
# Criando modelo de regressao


# Grafico




### Cor -------------------------

# Existem pacotes INCRIVEIS para mexer com cores!
# O que eu recomendo MUITO e o colourpicker, porque ele tem addins maravilhosos! O addin executa uma funcao de um pacote de um modo interativo... No caso do colourpicker existem dois addins: o plot colour helper e o colour picker. O primeiro abre uma aba no navegador e voc? pode ver um grafico generico e escolher as cores, ja o segundo abre uma janela no proprio RStudio e permite que voce escolha cores. Isso permite cores personalizadas.
install.packages("colourpicker")
colourpicker::plotHelper()

# CUIDADO COM A COOOOOOOOOOOOOOOOOOOOR
install.packages("colorBlindness")
library(colorBlindness)

p1 <- ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point()

cvdPlot(p1)


# Transparencia: alpha em geom_point
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic()


# Trocando a cor dos pontos
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length)) +
  geom_point(color = "red")

# Cores por especie
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic()


# Trocando as cores manualmente: podemos colocar o nome da cor ou o codigo hexadecimal
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic() +
  scale_color_manual(values = c("purple", "orange","#3333C4FE"))

# Pacotes com escalas de cores que podem ser muuuuito interessantes

## RColorBrewer: tem muuuuitas paletas interessantes, com cores que combinam!
library(RColorBrewer)

# Vendo as paletas desse pacote
display.brewer.all(colorblindFriendly = TRUE) 

# Usando a paleta PuRd
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic() +
  scale_color_brewer(palette = "PuRd")

## Como escolher a cor dentro da paleta
paleta <- brewer.pal(n = 9, name = "PuRd")[c(3,5,9)]
paleta


#Inserindo a paleta no grafico
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic() +
  scale_color_manual(values = paleta)

## ggsci: tem paletas de revistas, series e filmes famosos
install.packages("ggsci")
library(ggsci)

# Cores de Futurama
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic() +
  scale_color_futurama()

# Cores de Rick and Morty
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic() +
  scale_color_rickandmorty()

# Cores da Nature
ggplot(iris, aes(x = Sepal.Width, y = sepal.Length, color = Species)) +
  geom_point(alpha = 0.5, size = 4) +
  theme_classic() +
  scale_color_npg()















