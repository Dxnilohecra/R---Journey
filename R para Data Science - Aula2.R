#Numeric - vetor
X = c(1, 2, 3, 4, 5, 6)
X
X[1]
X[1] = 12
X[1]

View(X)

class(X)

#Character - vetor
Y = c('a', 'b', 'c', 'd', 'e')
Y
Y[1]
Y[1] = 'b'
Y[1]

View(Y)

#Matriz
matriz = VADeaths
colnames(matriz)
rownames(matriz)

matriz[1,]
matriz[,1]
matriz[1:3,1:2]

class(matriz[1,1])

#DataFrame
longley
longley[,1:3]
longley$Unemployed
longley["Unemployed"]

longley
longley["1947",]

#list
ability.cov
#Acesso somente o elemento cov da lista
ability.cov$cov

class(ability.cov$cov)

#fatores
state.region
state.region[1]
#Para se acessar um 'elemento', pense como se voce estivesse escrevendo em ordem crescente
#numa folha de papel, e quando acaba o espaço da folha voce pula a linha
#observe que cada numeração tem uma diferença de 6, pois são 6 elementos por linha





