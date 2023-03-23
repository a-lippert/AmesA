#create new df with means by ID, Ps, Di, Hi, Dc, Hc, Ds, HS, j, AA, MA, ST, PT, ET, MT, ASF, AmesAs, AmesAp, AmesAt; for loop, by rows, put means/calcs in new df, then save as csv


library(dplyr)

summ<-DATASET %>%
  dplyr::group_by(Genus,Species,Number) %>%
  dplyr::mutate(LT_m = mean(LT1,LT2,LT3,na.rm = T),
                LT_sd = sd(c(LT1,LT2,LT3),na.rm = T),
                ET_m = mean(ET1,ET2,ET3,na.rm = T),
                ET_sd = sd(c(ET1,ET2,ET3),na.rm = T),
                MT_m=mean(MT1,MT2,MT3,na.rm = T),
                MT_sd=sd(c(MT1,MT2,MT3),na.rm=T),
                SA_m=mean(c(SA1,SA2,SA3),na.rm = T),
                SA_sd=sd(c(SA1,SA2,SA3),na.rm = T),
                IAS_m=mean(c(IAS1,IAS2,IAS3),na.rm = T),
                ST_m=mean(c(ST1,ST2,ST3),na.rm=T),
                ST_sd=sd(c(ST1,ST2,ST3),na.rm=T),
                PT_m=mean(c(PT1,PT2,PT3),na.rm=T),
                PT_sd=sd(c(PT1,PT2,PT3),na.rm=T),
                SP_m=mean(c(SP1,SP2,SP3),na.rm=T),
                SP_sd=sd(c(SP1,SP2,SP3),na.rm=T),
                PA_m=mean(c(PA1,PA2,PA3),na.rm=T),
                PA_sd=sd(c(PA1,PA2,PA3),na.rm=T),
                IAP_m=mean(c(IAP1,IAP2,IAP3),na.rm=T),
                IAP_sd=sd(c(IAP1,IAP2,IAP3),na.rm=T),
                DI_m=mean(c(DI1,DI2,DI3),na.rm=T),
                DI_sd=sd(c(DI1,DI2,DI3),na.rm=T),
                HI_m=mean(c(HI1,HI2,HI3),na.rm=T),
                HI_sd=sd(c(HI1,HI2,HI3),na.rm=T),) %>%
  ungroup() %>%
  select(-c(LT1:HI3))
