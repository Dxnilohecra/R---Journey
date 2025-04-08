

data = read.csv("C:/Users/danil/Curso de Ciencia de Dados/FormacaoCD/todos os arquivos/9.Prática em R/dados/Churn.csv", sep = ";", na.strings = "", stringsAsFactors = TRUE)
head(data)
summary(data)
View(data)

colnames(data) = c("ID", "Score", "Estado", "Genero", "Idade",
                   "Patrimonio", "Saldo", "Produtos", "TemCartCredito",
                   "Ativo", "Salario", "Saiu")

View(data)

counts = table(data$Estado)
barplot(counts, main= "Estado", xlab= "Estado")
value = table(data$Genero)
barplot(value, main= "Genero", xlab= "Genero")
hist(data$Score)
