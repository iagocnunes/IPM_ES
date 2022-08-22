
<!-- Header -->
<p align="center">
<a href="https://cienciassociais.ufes.br/">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/marca_ufes.png" width="400" alt="Ciências Sociais - UFES">
</a>
</p>

# Pobreza Multidimensional no Brasil e Espírito Santo: uma ilustração metodológica em pesquisa por amostra domiciliar

Este projeto é oriundo do meu trabalho de conclusão de curso (Ciências Sociais - Bacharel) apresentado ao Departamento de Ciências Sociais da Universidade Federal do Espírito Santo, orientado pelo Professor Doutor Marcelo Fetz de Almeida.

O objetivo foi ilustrar algumas aplicações das metodologias de análise da pobreza, em uma abordagem multidimensional, e introduzir-se no âmago do debate conceitual dentro deste escopo. Com base na análise dos microdados da Pesquisa Nacional por Amostra de Domicílios Contínua de 2019, buscou-se contribuir para o desenvolvimento das pesquisas no campo, aplicando, para o Espírito Santo, um proposto Índice de Pobreza Multidimensional para o Brasil.

## Sobre pobreza

A pobreza, compreendida como a privação que os indivíduos experienciam em determinado momento, é um fenômeno multifacetado com determinações históricas, sociais, econômicas e políticas que se manifestam de formas objetivas e subjetivas. Por se tratar de um fenômeno não homogêneo, as formas de captá-lo e mensurá-lo, em todas suas determinações e dimensões, também varia. Sendo assim, os resultados dos estudos neste campo nem sempre convergem, dependendo da abordagem analítica, dos dados em análise e das métricas utilizadas.
Propõe-se aqui a aplicação do Índice de Pobreza Multidimensional (IPM) proposto para o Brasil e elaborado por Adriana Serra (2017), adaptando-o às variáveis disponíveis na Pesquisa Nacional por Amostra Domiciliar Contínua (PNADc), do Instituto Brasileiro de Geografia e Estatística (IBGE).

## Métricas de mensuração da pobreza

A mensuração da pobreza pela metodologia Alkire-Foster (ALKIRE, FOSTER, 2011a; ALKIRE et al., 2015) se realiza através da identificação dos em situação de pobreza na amostra e da agregação das informações em um índice.
Selecionou-se algumas métricas para o corpo analítico proposto, são elas:

* a quantidade de indivíduos privados em cada indicador que compõe as dimensões do IPM;
* a contribuição relativa desses indicadores na composição final do índice escalar;
* a incidência da pobreza na população (ou a proporção de observações em privação, em relação a população geral);
* a intensidade da pobreza vivenciada pelos identificados, pelas linhas de corte, como em privação (ou a média percentual de dimensões em que as pessoas pobres estão privadas);
* e, por fim, o IPM, onde valores próximos de 1 (um) significam uma maior incidência e intensidade da pobreza multidimensional.

## Tratamento de dados

O tratamento se dá através da transmutação das respostas declaradas em uma escala razão, onde zero e um são os valores balizadores, possibilitando a produção de uma escala de privação.
Ainda se agrega os indicadores de variáveis individuais em indicadores compostos (por exemplo, o indicador de coleta de lixo é composto por variáveis com ponderações diferentes de coleta lixo para o meio urbano e o meio rural), possibilitando a averiguação da incidência de pobreza agregada.

Com base no método AF, cria-se uma outra camada de variáveis, desta vez com pesos igualmente distribuídos entre as dimensões e os indicadores compostos. Soma-se, então, os indicadores finais ponderados pelos pesos, e cria-se duas variáveis de identificação dos em pobreza a partir de dois pontos de corte onde valores maiores que 0,50 e 0,33 são iguais a zero (pobres ou em privação), e valores menores são equalizados a um (não-pobres ou não-privados). Para o cálculo da contribuição de cada indicador para o IPM, realiza-se a censura dos não-pobres na base de dados substituindo os pesos por zero em cada indicador, e calcula-se novamente a incidência de pobreza de cada indicador com o peso para os identificados em situação de privação. Depois, divide-se cada valor da "censored head count" pela soma de todos. 

## Variáveis selecionadas

O primeiro passo da identificação consiste em definir quais dimensões são mais relevantes e quais devem ser as variáveis utilizadas para representar cada uma.
Neste estudo - levando em conta os dados utilizados na pesquisa de Serra (2017) e a disponibilidade de informações na PNADc -, selecionou-se as seguintes dimensões e variáveis:

<p align="left">
<a href="_blank">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro1.png" width="600" alt="Ciências Sociais - UFES">
</a>
</p>

## Proporção de pessoas que sofrem privação, segundo indicadores selecionados - 2019

O painel de indicadores, na dimensão do padrão de vida, aponta que, em 2019, 2,6% da população brasileira residia em domicílios sem água canalizada, ao passo que no Espírito Santo a proporção fora de 0,07%. Ao mesmo tempo, aproximadamente 2,6% dos brasileiros habitavam domicílios sem banheiro, taxa que alcança 0,2% dos capixabas. Esses indicadores representam condições precárias de higiene e saúde, além do esforço para coletar e transportar água para as residências.
Sendo assim, de acordo com a projeção populacional do IBGE, em 2019, mais de cinco milhões de brasileiros vivenciavam privação nesses componentes, ao passo que menos de 9 mil capixabas encontravam-se nessa situação, indicando uma universalização maior do bem-estar nestes indicadores na realidade capixaba.

<p align="left">
<a href="_blank">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro2.png" width="480" alt="Ciências Sociais - UFES">
</a>
</p>

O destino do lixo ainda se configura como uma grave querela brasileira, com aproximadamente 15% do país (mais de 31 milhões de pessoas) e 11% (mais de 400 mil pessoas) do Espírito Santo privados de coleta direta ou indireta do lixo. O déficit habitacional também se estrutura como um grave problema nacional, com mais de 18% da população brasileira (mais de 37 milhões de pessoas), e aproximadamente 15% da população capixaba (por volta de 600 mil pessoas), privada de condições adequadas de moradia. As privações em bens de consumo duráveis mantêm patamar similar nos dois níveis geográficos analisados, com cerca de 3,5% do Brasil (7.332.376 pessoas) e 3,7% do Espírito Santo (148.552 pessoas) privados desses bens.
O destaque positivo da dimensão do padrão de vida, para os dois níveis geográficos, fica no acesso à energia elétrica, com cerca de 0,2% da população brasileira e 0,02% da população capixaba privadas nesse componente, sinalizando o sucesso das políticas públicas de universalização do acesso à energia.

A frequência escolar da população entre 7 e 17 anos, é o único indicador que caminha para a universalização, nesta dimensão, com cerca de 0,6% (aproximadamente um milhão e duzentas mil pessoas) da população brasileira e 0,65% (26 mil pessoas) da população capixaba vivenciando privação nesse componente. 
Na análise de um indicador elementar, como o da alfabetização, constata-se níveis muito elevados, e persistentes, de analfabetismo no país, com 5,5% das pessoas com 9 anos ou mais (11.522.305 pessoas), no Brasil, e 4,8%, da mesma faixa etária (192.716 pessoas), do Espírito Santo, privados, em 2019, de saber ler ou escrever. A falta de prioridade, intencional ou não, que a dimensão educacional teve e tem na política brasileira também se traduz nos elevados níveis de privação vivenciados pela população maior de 18 anos, quando analisado o nível de instrução desse grupo etário: entrando na segunda década do século XXI, cerca de 26% da população brasileira (mais de 54 milhões de pessoas) e mais de 27% da capixaba (mais de um milhão de indivíduos) possuíam nenhuma instrução ou não completara o ensino fundamental.

## Medidas de pobreza multidimensional, por método de cálculo - 2019

Depois da análise do painel de indicadores, aplica-se o método de agregação e cálculo de Alkire-Foster (AF) aos dados para a comparação dos resultados obtidos nas métricas selecionadas.

<p align="left">
<a href="_blank">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro3.png" width="480" alt="Ciências Sociais - UFES">
</a>
</p>

A incidência de pobreza, identificada pelo modelo, resultou em 7,4% (15.502.738 pessoas) da população brasileira e 5,6% (224.835 pessoas) da população capixaba multidimensionalmente pobre em 2019, quando considerada a linha de corte do IPM Global (OPHI, 2020) de 33%, mantendo o patamar de um digito nos dois níveis geográficos analisados. Já pela linha de privações em 50% dos componentes, a incidência da pobreza multidimensional cai para 2,75% da população brasileira (5.761.152 pessoas) e 1,6% da capixaba (64.238 pessoas), uma subestimação que indica o corte em 33% como o mais adequado para a análise da incidência. 
Uma análise da distribuição das pessoas em todas as linhas de corte, cimenta uma escolha mais segura de uma linha particular para o Brasil e o Espírito Santo, com a menor subestimação possível.

<p align="left">
<a href="_blank">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro4.png" width="480" alt="Ciências Sociais - UFES">
</a>
</p>

A média do grau de intensidade da pobreza multidimensional vivenciada por aqueles privados em 33% dos componentes atinge patamares semelhantes nos dois estratos geográficos, ficando em 53% no Brasil e 51% no Espírito Santo. Pelo prisma do corte em 50% de privações, a intensidade da pobreza se agrava, atingindo 62% no Brasil e 57% no Espírito Santo, demonstrando que a análise de intensidade se beneficia de recortes específicos para, por exemplo, averiguar a intensidade da pobreza entre os mais pobres dos identificados como em privações.

<p align="left">
<a href="_blank">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro5.png" width="480" alt="Ciências Sociais - UFES">
</a>
</p>

Por fim, combinando a incidência (H) e a intensidade (A), o índice de pobreza multidimensional (M0 = H × A) mostra que, na linha de corte de pobreza em 33% dos componentes, a pobreza multidimensional atinge 3,9% da população brasileira (mais de 8 milhões de pessoas) e 2,84% da capixaba (mais de 100 mil pessoas), ao passo em que a linha de 50% subestima a inferência para uma pontuação de 0,01715505 no IPM Brasil (mais de 3 milhões de pessoas) e 0,009247565 no IPM Espírito Santo (mais de 36 mil pessoas).

## Contribuição relativa dos indicadores - 2019

<p align="left">
<a href="_blank">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro6.png" width="480" alt="Ciências Sociais - UFES">
</a>
</p>

Em relação à contribuição relativa de cada indicador para o índice, as tabelas mostram pouca variação entre os pontos de corte focados neste estudo, tanto para o Brasil quanto para o Espírito Santo. Na comparação entre os níveis geográficos, há uma preponderância maior das privações no nível de instrução entre os componentes do IPM capixaba (63% do índice) em relação ao IPM Brasil (52%), e uma diferença de 4 pontos percentuais entre a participação do destino do lixo no índice brasileiro e capixaba.

## Considerações finais

O enfrentamento da pobreza exige uma ampliação do espectro analítico para que se compreenda todas suas facetas, possibilitando que, para além do aumento da renda, o enfrentamento se desdobre em implementação de políticas públicas voltadas para o saneamento, a educação, acesso à informação, meio ambiente, habitação, e demais dimensões deste fenômeno multifacetado.

Bibliografia citada aqui:
- ALKIRE, S. et al. Multidimensional poverty measurement and analysis. Oxford: Oxford University Press, 2015.
- ALKIRE, S.; FOSTER, J. Counting and multidimensional poverty measurement. Journal of Public Economics, v. 95, p. 476-487, 2011.
- OXFORD POVERTY AND HUMAN DEVELOPMENT INITIATIVE (OPHI). 2020 Global Multidimensional Poverty Index - Brazil PNAD 2015 [STATA do-file]. University of Oxford: 2020.
- SERRA, A. S. Pobreza multidimensional no Brasil rural e urbano. 2017. Tese (Doutorado em Desenvolvimento Econômico) - Universidade Estadual de Campinas.

