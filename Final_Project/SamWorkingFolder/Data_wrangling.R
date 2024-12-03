library(tidyverse)
library(lubridate)
library(here)
library(readr)

Elwa_sediment <- read.csv(file =
                        here('Final_Project/Data/Raw/Elwha_DailySedimentLoads_2011to2016.csv'),
                      stringsAsFactors = TRUE)
Elwa_sediment$Day <- as.Date(Elwa_sediment$Day, format = "%m/%d/%Y")


Elwa_stream <- read.csv(file =
                          here('Final_Project/Data/Raw/Elwha_Streamgage_2011to2016.csv'),
                        stringsAsFactors = TRUE) 
Elwa_stream$DateTime <- mdy_hm(Elwa_stream$DateTime)
Elwa_stream$Date <- as_date(Elwa_stream$DateTime)  # Extracting date
Elwa_stream$Time <- format(Elwa_stream$DateTime, "%H:%M")  # Extracting time

# Renaming Columns 
colnames(Elwa_sediment) <- c('Date', 'Discharge', 'Suspended_Sediment_Conc', 
                            'SSC_Upper_Bound', 'SSC_Lower_Bound', 
                            'Avg_fraction_fines', 'Suspended_sed_load_t',
                            'SS_load_fines_t', 'SS_load_sand_t', 'Remarks', 
                            'Gauged_Bedload_gt.2mm', 'Gauged_BL.2.16mm', 
                            'Gauged_BL_gt.16mm', 'Ungauged_BL', 
                            'Total_Sed_discharge', 'Release_Period', 
                            'Project_Year')
# Removing Upper/lower Bounds and Project year/ release period columns 
Elwa_sediment <- Elwa_sediment %>% select(Date:Total_Sed_discharge)
Elwa_sediment <- Elwa_sediment %>% select(Date:Suspended_Sediment_Conc, 
                                       Avg_fraction_fines:Total_Sed_discharge)
# Removing Remarks Column 
Elwa_sediment <- Elwa_sediment %>% select(Date:SS_load_sand_t, 
                                    Gauged_Bedload_gt.2mm:Total_Sed_discharge)
# Removing Gauged Bed Load columns because there were wayyy to many NAs... no data for the first 100 + rows 
Elwa_sediment <- Elwa_sediment %>% select(Date:SS_load_sand_t, 
                                          Ungauged_BL:Total_Sed_discharge)
write.csv(Elwa_sediment, here('Final_Project/Data/Processed/Elwa_Sediment_Wrangled.csv'), 
          row.names = FALSE) 

## Elwa_stream wrangling 
# Renaming Columns 
colnames(Elwa_stream) <- c('Delete', 'Stage_Height', 'Delete', 'Flag', 'Date',
                           'Time')
#Selecting Columns
Elwa_stream <- Elwa_stream %>% select(Stage_Height, Flag:Time)
# Reordering Columns 
Elwa_stream <- Elwa_stream %>% select('Date', 'Time', 'Stage_Height', 'Flag')

# Filtering out bad measurements, averaging stage height measurements by date 
Elwa_stream <- Elwa_stream %>% group_by(Date) %>% 
                filter(Flag == 'OK') %>% 
                summarise(Avg_Stage_Height = mean(Stage_Height))
# storing processed data set in Processed Folder 
write.csv(Elwa_stream, here('Final_Project/Data/Processed/Elwa_Stream_Wrangled.csv'), 
row.names = FALSE) 



