### This files pre-processes the data 
# define CURE environment
CURE <- Sys.getenv('CURE')

# define data location
data.loc <- paste0(CURE, 'Sleeve Kragge/Data/Overall/Sleeve analyses/')

# read in data
SleeveData <- read.xlsx(paste0(data.loc, 'All_data_sleeves.xlsx'))
LeachateData <- read.xlsx(paste0(data.loc, 'all_data_sleeves.xlsx'), sheet = 'leachate data')
LeachateData <- read.xlsx(paste0(data.loc, 'all_data_sleeves.xlsx'), sheet = 'EPC values')
                        