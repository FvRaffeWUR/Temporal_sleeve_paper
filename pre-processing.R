### This files pre-processes the data 
# define CURE environment
CURE <- Sys.getenv('CURE')

# define data location
data.loc <- paste0(CURE, 'Sleeve Kragge/Data/Overall/Sleeve analyses/')

# call required packages
packages <- c(
  'openxlsx',
  'data.table'
)

lapply(packages, library, character.only = TRUE)


# read in data
sleeve <- as.data.table(read.xlsx(paste0(data.loc, 'All_data_sleeves.xlsx')))
leachate <- as.data.table(read.xlsx(paste0(data.loc, 'All_data_sleeves.xlsx'), sheet = 'Leachate data'))
epc <- as.data.table(read.xlsx(paste0(data.loc, 'All_data_sleeves.xlsx'), sheet = 'EPC values'))


# Correct date format
sleeve[, date := as.Date(Date, origin = '1899-12-30')]
leachate[, date := as.Date(Date, origin = '1899-12-30')]

                        