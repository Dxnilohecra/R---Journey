
data = read.csv("a", sep = ";", na.strings = "", stringsAsFactors = TRUE)
head(data)
summary(data)
View(data)

colnames(data) = c("ID", "Score", "Estado", "Genero", "Idade",
                   "Patrimonio", "Saldo", "Produtos", "TemCartCredito",
                   "Ativo", "Salario", "Saiu")

#colnames() renomeia as colunas de um dataframe

View(data)

counts = table(data$Estado)
barplot(counts, main= "Estado", xlab= "Estado")
value = table(data$Genero)
barplot(value, main= "Genero", xlab= "Genero")
hist(data$Score)

#função barplot() cria um grafico de barras e a função hist() cria um histograma

data[!complete.cases(data),]
#complete.cases() aplica N/a onde se possue dados incompletos

median(data$Saldo, na.rm = T)

#median() determina a mediana da coluna selecionada, e o atributo na.rm
#remove todos os valores N/A

data$Saldo[is.na(data$Saldo)] <- median(data$Saldo, na.rm = TRUE)

x = data[duplicated(data$ID),]
View(x)

#mostra que o registro 81 está duplicado

data = data[-c(82),]

#o atrtibuto -c ele remove um dado duplicado

x = data[duplicated(data$ID),]
View(x)

#Já é possivel ver que não existem mais linhas duplicadas

unique(data$Estado)

data[!data$Estado %in% c("RP", "SC", "PR"),]$Estado = "RS"
# Excluindo todas as linhas com "PR", "SC", "RS"
summary(data)

data$Estado = factor(data$Estado)

summary(data$Estado)

desv = sd(data$Salario, na.rm = TRUE)
desv

data[data$Salario >= 2 * desv, ]$Salario
