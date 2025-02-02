# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("D:/FCDados/[03] - Fatores, Estruturas de Controle e Funcoes/[03] - Projetos/")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
list.files()

# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
x1 <- c("as", "bs", "cs", "ds", "es")
x2 <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
x3 <- c(123,456,789,012,457)
x <- data.frame(x1, x2, x3)
x
sapply(x, class)

# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)
vec1
for (i in vec1){
  if (i > 10){
    print(sprintf("TEM o %d", i))
  }
}


# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2

for (i in lst2){
  print(i)
  }


# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
mat3 <- mat1 * mat2
mat3

# Multiplicação de matrizes
mat4 <- mat1 %*% mat2
mat4

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
vetor <- c(1, 2)
names(vetor) <- c("coluna A", "coluna B")
vetor

matriz <- matrix(c(1:4), nrow = 2, ncol = 2, byrow = T)
colnames(matriz) <- c("Coluna A", "Coluna B")
rownames(matriz) <- c("Linha 1", "Linha 2")
matriz

lista <- list("as","bs")
names(lista) <- c("coluna A", "coluna B")
lista

df <- data.frame(batata = c(5:7), arroz = c(8:10))
df
colnames(df)[which(names(df) == "batata")] <- c("toalha")
df

library("dplyr")
df <- df %>% rename(celular = toalha)
df

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2

mat2[sample(mat2,50)] <- NA
mat2


# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
?apply
somaLinhas <- apply(mat1, 1 , sum)
somaColunas <- apply(mat1, 2 , sum)
somaLinhas
somaColunas

# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a
?order
b <- a[order(a, decreasing = FALSE)]
b

# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
hj <- mat1 > 15
hj
cd <- mat1[mat1 > 15]
cd
