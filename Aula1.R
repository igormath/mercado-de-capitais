# Carregando a biblioteca utilizada para manipular dados de ações do Yahoo Finance
library(quantmod)

# Função que carrega os dados de uma determinada ação (Petrobrás S.A. utilizada como exemplo)
getSymbols(c("PETR3.SA"), src = "yahoo", from = "2020-06-09")

head(PETR3.SA)
tail(PETR3.SA)

plot(PETR3.SA, col = "green", lwd = 5, main = "Petrobrás")

colnames(PETR3.SA)

# Plotando gráfico com os retornos diários da ação:
retorno <- na.omit(diff(log(PETR3.SA$PETR3.SA.Adjusted), lag = 1))
dim(retorno) # Quantidade de linhas (dimensão) do vetor.

plot(retorno, main = "Retorno da PETR3.SA")
mean(retorno) # Média do retorno, assim como calculado no Excel
sd(retorno) # Desvio padrão do retorno da ação
var(retorno) # Variância do retorno da ação