source("C:\\Users\\pietr\\OneDrive - City St George's, University of London\\Desktop\\formula.main.R")
port <- get_portfolio(c("PBW", "XOP", "SIE.DE", "FSLR", "ENI.MI", "ENS", "SHEL.L", "SRG.MI", "ULBI", "TTE", "AMRC", "NEE"),
start_date = "2019-01-01", clean_names = T)

is.na(port) %>% apply(2, sum)


quickplot(port)
port <- na.approx(port)
apply(port,2, ROC, type = "cont") %>% cor(use = "complete.obs") %>% ggcorrplot(lab = T)
