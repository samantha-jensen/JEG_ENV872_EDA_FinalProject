
<JEG_ENV872_EDA_FinalProject>
## Summary
<The purpose of this repository is to allow our group to analyze streamgage and sediment data for between 2011 and 2016 to observe impacts of dam removal in the Elwha river.>
## Investigators
<Kayla Emerson, Nicole Gutkowski, Samantha Jensen>
## Keywords
<Elwha River, Dam, Sediment>
## Database Information
<The datasets we are using are publicly available from the U.S. Geological Survey. They include daily sediment loads and streamgage measurements before, during, and after dam removal, from 2011 to 2016 from gaging stations on the Elwha River at the diversion near Port Angeles, WA (downstream of dams). The data was accessed on November 12, 2024.>
## Folder structure, file formats, and naming conventions
< README.md
  Final_Project/
  < Data/
    < Metadata/
      < Elwha_DailySedimentLoads_2011to2016.xml
      < Elwha_Streamgage_2011to2016.xml
    < Raw/
      <Elwha_DailySedimentLoads_2011to2016.csv
      <Elwha_Streamgage_2011to2016.csv
    < Processed/
      <Elwha_Sediment_Wrangled
      <Elwha_Stream_Wrangled
  < KaylaWorkingFolder/  
    <ExploringDataKME.rmd
  < SamWorkingFolder/
    <data_messaround.rmd
    <Data_wrangling.R
    <time_series.rmd
  < NicoleWorkingFolder/
    <NGfinalprojcopy.html
    <NGfinalprojcopy.pdf
    <NGfinalprojcopy.rmd
    <NicoleWorkingDoc.html
    <NicoleWorkingDoc.rmd
    
We each followed individual naming formats in our respective code folders, generally containing some form our our intitials.

The formats in this repository include .csv, .xml, .pdf, .rmd, .html, .R

## Metadata
Elwha Sediment Data:
Date - date of the daily values 
Daily Discharge - measured in cubic meters per second
Daily SSC - daily suspended-sediment concentration in milligrams per liter
Upper SSC Bound - upper uncertainty bound, one standard deviation, of SSC
Lower SSC Bound - lower uncertainty bound, one standard deviation, of SSC
Average Fraction fines - average fraction of fine-grained particles (silts and clays) is suspension based on the data of two turbidimeters 
Daily Suspended-Sediment Load - daily suspended-sediment load in tonnes
Daily SS Load of Fines - daily suspended-sediment load of fine-grained particles (silts and clays) in tonnes
Daily SS Load of Sand - daily suspended-sediment load of sand-sized particles (in tonnes)
Daily Total Gauged, less than 2-mm Bedload - daily total gauged bedload of particles larger than 2 mm (in tonnes)
Daily Gauged Bedload for 2-16mm Particles - daily total gauged bedload of particles larger than 2 mm and smaller than 16 mm (in tonnes)
Daily Gauged Bedload for Equal and Greater than 16mm Particles - daily total gauged bedload of particles larger than 16 mm (in tonnes)
Estimated Daily Ungauged Bedload - estimated ungauged portion of particles in bedload flux that are less than 2 mm (in tonnes)
Total Sediment Discharge - total daily sediment discharge. Included gauged suspended-sediment load, gauged bedload, and estimated bedload (in tonnes)

Elwha Streamgage Data:
Date and Time - the date and time of measurement, in mm/dd/yyyy hh:mm format
Stage Height - the stage height in meters relative to stream bed, in meters
NAVD88 Height - the stage height in meters relative to North American Vertical Datum of 1988

## Scripts and code
<list any software scripts/code contained in the repository and a description of
their purpose.>
