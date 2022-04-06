rm(list = ls())

options(survey.lonely.psu = "adjust")
options(OutDec=",")
options(scipen=999)

library(dplyr);library(PNADcIBGE);
library(survey);library(srvyr)
library(tidyr)

dados_pnadc <- read_pnadc ("PNADC_2019_visita1.txt", "input_PNADC_2019_visita1_20200826.txt")
dados_pnadc <- pnadc_labeller (dados_pnadc,
                               "dicionario_PNADC_microdados_2019_visita1_20200826.xls")
dados_pnadc$one <- 1

dados_pnadc$LerEscr <- ifelse(grepl("Sim", dados_pnadc$V3001), 1, 0)
dados_pnadc$LerEscr2 <- ifelse(grepl("Não", dados_pnadc$V3001), 1, 0)
dados_pnadc$V1A <- ifelse(grepl(0, dados_pnadc$LerEscr), 1, 0)
dados_pnadc$V1B <- ifelse(dados_pnadc$V2009>=9, ifelse(grepl(0, dados_pnadc$LerEscr), 1, 0), 0)
dados_pnadc$FreqEsc <- ifelse(grepl("Sim", dados_pnadc$V3002), 1, 0)
dados_pnadc$FreqEsc2 <- ifelse(grepl("Não", dados_pnadc$V3002), 1, 0)
dados_pnadc$V1G <- ifelse(grepl(0, dados_pnadc$FreqEsc), ifelse(dados_pnadc$V2009>=7, ifelse(dados_pnadc$V2009<=17, 1, 0), 0), 0)
dados_pnadc$V1H <- ifelse(grepl(1, dados_pnadc$V1B) | grepl(1, dados_pnadc$V1G), 1, 0) 
dados_pnadc$NvlInstr <- ifelse(grepl("Sem instrução e menos de 1 ano de estudo", dados_pnadc$VD3004), 1, 
                               ifelse(grepl("Fundamental incompleto ou equivalente", dados_pnadc$VD3004), 2, 
                                      ifelse(grepl("Fundamental completo ou equivalente", dados_pnadc$VD3004), 3, 
                                             ifelse(grepl("Médio incompleto ou equivalente", dados_pnadc$VD3004), 4, 
                                                    ifelse(grepl("Médio completo ou equivalente", dados_pnadc$VD3004), 5, 
                                                           ifelse(grepl("Superior incompleto ou equivalente", dados_pnadc$VD3004), 6, 
                                                                  ifelse(grepl("Superior completo", dados_pnadc$VD3004), 7, 0)))))))
dados_pnadc$V1C <- ifelse(dados_pnadc$V2009>=18, ifelse(dados_pnadc$NvlInstr<=2, 1, 0), 0)
dados_pnadc$Energ <- ifelse(grepl("Utiliza ao menos uma fonte de energia eletrica", dados_pnadc$S01014), 1, 0)
dados_pnadc$TelFx <- ifelse(grepl("Sim", dados_pnadc$S01022), 1, 0)
dados_pnadc$Gelad <- ifelse(grepl("Sim, de 1 porta|Sim, de 2 (ou mais) portas", dados_pnadc$S01023), 1, 0) 
dados_pnadc$TelCel <- ifelse(dados_pnadc$S01021>=1, ifelse(grepl(1, dados_pnadc$TelFx), 1, 0), 0)
dados_pnadc$TV <- ifelse(grepl("Sim, somente de tela fina (LED, LCD ou plasma)|Sim, somente de tubo|Sim, de tela fina e de tubo", dados_pnadc$S01025), 1, 0) 
dados_pnadc$Carro <- ifelse(grepl("Sim", dados_pnadc$S010311), 1, 0)
dados_pnadc$Cmpt <- ifelse(grepl("Sim", dados_pnadc$S01028), 1, 0)
dados_pnadc$MaqLav <- ifelse(grepl("Sim", dados_pnadc$S01024), 1, 0)
dados_pnadc$Bens <- ifelse(grepl(1, dados_pnadc$Gelad) | grepl(1, dados_pnadc$TelCel) | grepl(1, dados_pnadc$TV) | grepl(1, dados_pnadc$Carro) | grepl(1, dados_pnadc$Cmpt) | grepl(1, dados_pnadc$MaqLav), 1, 0)
dados_pnadc$Lixo1 <- ifelse(dados_pnadc$S01013=="Coletado diretamente por serviço de limpeza", 1,
                            ifelse(dados_pnadc$S01013=="Coletado em caçamba de serviço de limpeza", 2,
                                   ifelse(dados_pnadc$S01013=="Queimado (na propriedade)", 3,
                                          ifelse(dados_pnadc$S01013=="Enterrado (na propriedade)", 4,
                                                 ifelse(dados_pnadc$S01013=="Jogado em terreno baldio ou logradouro", 5,
                                                        ifelse(dados_pnadc$S01013=="Outro destino", 6, 0))))))
dados_pnadc$Lixo2 <- ifelse(dados_pnadc$V1022=="Urbana", ifelse(dados_pnadc$Lixo1>=2, 1, 0), 0)
dados_pnadc$Lixo3 <- ifelse(dados_pnadc$Lixo1>=3, ifelse(grepl("Rural", dados_pnadc$V1022), 1, 0), 0)
dados_pnadc$V1D <- ifelse(grepl(1, dados_pnadc$Lixo2) | grepl(1, dados_pnadc$Lixo3), 1, 0)
dados_pnadc$V1E <- ifelse(grepl("Canalizada em pelo menos um cômodo|Canalizada só na propriedade ou terreno", dados_pnadc$S01010), 1, 0)
dados_pnadc$V1F <- ifelse(grepl(00, dados_pnadc$S01011A), 1, 0)

dados_pnadc %>%
  select(S01006, VD2003) %>%
  mutate(pess_comd = as.integer(VD2003) / as.integer(S01006)) -> pess_comd
dados_pnadc_a <- cbind(dados_pnadc, pess_comd)
rm (dados_pnadc, pess_comd)
dados_pnadc_a <- dados_pnadc_a[, !duplicated(colnames(dados_pnadc_a))]
dados_pnadc_a <- as_tibble(dados_pnadc_a)
dados_pnadc_a$pess_comd <- as.numeric(dados_pnadc_a$pess_comd)
dados_pnadc_a$V1I <- ifelse(dados_pnadc_a$pess_comd>=2.5, 1, 0)

pnadc_ipm = dados_pnadc_a %>%
  select(V1C, pess_comd, Energ, Bens, V1D, V1E, V1F, V1H) %>%
  mutate(V1H1 = round(1/4*V1H, 2),
         V1C1 = round(1/4*V1C, 2),
         pess_comd1 = round(1/12*(ifelse(pess_comd>=2.5, 1, 0)), 2),
         Energ1 = round(1/12*(ifelse(Energ==0, 1, 0)), 2),
         Bens1 = round(1/12*(ifelse(Bens==0, 1, 0)), 2),
         V1D1 = round(1/12*V1D, 2),
         V1E1 = round(1/12*(ifelse(V1E==0, 1, 0)), 2),
         V1F1 = round(1/12*V1F, 2))

dados_pnadc_ipm = pnadc_ipm %>%
  mutate(weighted.sum=rowSums(pnadc_ipm[,c("V1H1","V1C1","pess_comd1","Energ1","Bens1","V1D1","V1E1", "V1F1")]),
         multidimensionalpoor=factor(ifelse(weighted.sum>0.33,0,1)),
         multidimensionalpoor2=factor(ifelse(weighted.sum>0.50,0,1)))
dados_pnadc <- cbind(dados_pnadc_a, dados_pnadc_ipm)
rm (pnadc_ipm, dados_pnadc_a, dados_pnadc_ipm)
dados_pnadc <- dados_pnadc[, !duplicated(colnames(dados_pnadc))]
dados_pnadc <- as_tibble(dados_pnadc)

# contribuição de cada indicador
var=names(dados_pnadc) %in% c("weighted.sum")
dados_pnadc2=dados_pnadc[!var]
dados_pnadc3 = dados_pnadc2[ which(dados_pnadc2$UF=="Espírito Santo"), ]

for(i in seq_along(dados_pnadc)){
  if (dados_pnadc3$multidimensionalpoor[i]==1){
    dados_pnadc3$V1C1[i]=0
    dados_pnadc3$V1H1[i]=0
    dados_pnadc3$pess_comd1[i]=0
    dados_pnadc3$Energ1[i]=0
    dados_pnadc3$Bens1[i]=0
    dados_pnadc3$V1D1[i]=0
    dados_pnadc3$V1F1[i]=0
    dados_pnadc3$V1E1[i]=0
  }
}

V1C3=1/4*prop.table(table(dados_pnadc3$V1C1))[2]
V1H3=1/4*prop.table(table(dados_pnadc3$V1H1))[2]
V1I3=1/12*prop.table(table(dados_pnadc3$pess_comd1))[2]
Energ3=1/12*prop.table(table(dados_pnadc3$Energ1))[2]
Bens3=1/12*prop.table(table(dados_pnadc3$Bens1))[2]
V1D3=1/12*prop.table(table(dados_pnadc3$V1D1))[2]
V1F3=1/12*prop.table(table(dados_pnadc3$V1F1))[2]
V1E3=1/12*prop.table(table(dados_pnadc3$V1E1))[2]
data=c(V1C3,V1H3,V1I3,Energ3,Bens3,V1D3,V1F3,V1E3)
df=data.frame(indicator=c("V1C3","V1H3","V1I3","Energ3","Bens3","V1D3","V1F3","V1E3"),weight_hr=t(t(data)))
total=sum(df$weight_hr)
df=mutate(df,contribution=weight_hr/total)
data=select(df,indicator,contribution); data
rm(dados_pnadc2, dados_pnadc3, data, df, Bens3, Energ3, i, total, V1C3, V1D3, V1E3, V1F3, V1H3, V1I3, var)

pnadc_plano <- pnadc_design(dados_pnadc)
saveRDS(pnadc_plano,"pnadc_calib_2019")

svytotal(~ one, pnadc_calib)

# privação em cada indicador
svymean(~V1E==0, pnadc_calib)
svymean(~V1C==1, pnadc_calib)
svymean(~V1B==1, pnadc_calib)
svymean(~Energ==0, pnadc_calib)
svymean(~V1H==1, pnadc_calib)
svymean(~Bens==0, pnadc_calib)
svymean(~V1D==1, pnadc_calib)
svymean(~V1F==1, pnadc_calib)
svymean(~V1I==1, pnadc_calib)
svymean(~V1G==1, pnadc_calib)

ES <- subset(pnadc_calib, UF=="Espírito Santo")
svymean(~V1E==0, ES)
svymean(~V1C==1, ES)
svymean(~V1B==1, ES)
svymean(~Energ==0, ES)
svymean(~V1H==1, ES)
svymean(~Bens==0, ES)
svymean(~V1D==1, ES)
svymean(~V1F==1, ES)
svymean(~V1I==1, ES)
svymean(~V1G==1, ES)

# headcount e intensidade
svymean(~ V1C, pnadc_calib)
svymean(~multidimensionalpoor, pnadc_calib)
svymean(~multidimensionalpoor2, pnadc_calib)
pobres <- subset(pnadc_calib, multidimensionalpoor==0)
pobres2 <- subset(pnadc_calib, multidimensionalpoor2==0)
svymean(~weighted.sum, pobres)
svyby(~multidimensionalpoor, ~interaction(GrupOcup), pnadc_calib, svymean, na.rm=T )

svymean(~multidimensionalpoor, ES)
svymean(~multidimensionalpoor2, ES)
ESpobres <- subset(ES, multidimensionalpoor==0)
ESpobres2 <- subset(ES, multidimensionalpoor2==0)
svymean(~weighted.sum, ESpobres2)
svyby(~multidimensionalpoor, ~interaction(GrupOcup), ES, svymean, na.rm=T )
