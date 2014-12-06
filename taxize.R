library(taxize)


mynames <- c("Helianthus annuus", "Pinus contort", "Poa anua", "Abis magnifica",
    "Rosa california", "Festuca arundinace", "Sorbus occidentalos","Madia sateva")


tnrs(query = mynames, source = "iPlant_TNRS")[ , -c(5:7)]


comm2sci(c("American Crow", "Western Scrub-jay", "Yellow-billed Magpie"))
