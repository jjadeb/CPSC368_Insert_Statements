# CPSC368 Assignment 5: Data Analysis
## DataDudes
### Jade Bouchard, Heidi Lantz, Neha Menon, & Lillian Milroy 

In this project, we investigate whether the countries that suffer the most from extreme 
weather events and air pollution are also the ones who emit the most greenhouse gasses. To conduct this analysis,
the climate risk index was used in addition to datasets providing air pollution and greenhouse gas emissions. Exploring
this relationship will allow a deeper understanding of countries which are most affected by climate change, with respect
to their global greenhouse gas emissions. This analysis can provide more insight into climate injustice and inequality, the
idea that climate change affects countries disproportionately to their historical and current GHG contributions.

## About

We conducted two regression analyses: 
1. the first examines the association between countries’ greenhouse gas emissions
   (independent variable) and their global climate risk indices (dependent variable).
3. the second checks the association between countries’ greenhouse gas emissions
   (dependent variable) and their air pollution (target/dependent variable).

The data used in our analysis was originally derived from the following sources:

#### [Global Climate Risk Index by Country](https://www.germanwatch.org/sites/default/files/20-2-01e%20Global%20Climate%20Risk%20Index%202020_14.pdf)

This dataset can be found on pages 37 to 43 of the linked pdf. It lists each country’s climate 
risk index and is published by a group called Germanwatch. The climate risk index “indicates 
a level of exposure and vulnerability to extreme events” (page 4). 

#### [Greenhouse Gas Emissions by Country](https://edgar.jrc.ec.europa.eu/report_2023#data_download)

Data is collected from the “EDGAR GHG emissions” file in the “Data Download” section of the 
linked website. This dataset contains total, per capita, and per sector greenhouse gas emissions 
for each country from 1970 to 2022. 

#### [Air Quality by Country](https://www.who.int/data/gho/data/themes/air-pollution/who-air-quality-database/2022)

This dataset is under the header “Excel Version - WHO Air Quality Database (Update 2022)” in the 
attached link. This dataset contains various air pollutant levels broken down by country and 
city/locality. For this analysis, air pollution will be estimated using concentrations of nitrogen dioxide. 

#### [Paris Agreement Data](https://treaties.un.org/pages/ViewDetails.aspx?src=TREATY&mtdsg_no=XXVII-7-d&chapter=27&clang=_en)

Data on which Countries are a part of the Paris Agreement and when they signed the agreement.

## Usage
Follow the instructions below to reproduce our analysis.

### Running the Code
In order for the analysis to run smoothly, the files should follow this structure:

```
project/          
├── fetched_data/                     
│   ├──  AIR_QUALITY_DATA.csv
│   ├──  CITY_DATA.csv
│   ├──  COUNTRY_DATA.csv
│   ├──  CRI.csv
|   ├──  PARIS_AGREEMENT_DATA.csv
│   └──  GHG_DATA.csv
├── fetching_data.ipynb
├── analyses/
|   ├──  AirPollutionAnalysis.ipynb
|   ├──  ClimateRiskIndicesAnalysis.ipynb
```

There are two analyses that are a part of this project. Running [ClimateRiskIndicesAnalysis.ipynb](analyses/ClimateRiskIndicesAnalysis.ipynb) will run the analysis that examines the association between countries’ greenhouse gas emissions and their global climate risk indices. Running [AirPollutionAnalysis.ipynb](analyses/AirPollutionAnalysis.ipynb) will run the analysis that examines the association between countries’ greenhouse gas emissions and their their air pollution levels.

Our analysis files have the following dependencies:
- `pandas`
- `scikit-learn`
- `statsmodels`
- `seaborn`
- `matplotlib`
- `altair`
- `oracledb`
- `jupyter`

### Accessing the Data Through Oracle
*The teaching team may choose to populate their own database with the SQL DDL file or they may 
choose to use the Oracle account of someone on the team. State which student’s account we can use.*

One way to access the data is to use Jade Bouchard and Neha Menon's oracle accounts to access the data as they have already run these files. To access the `Country`, `City`, and `Air_Quality_Measures` tables, you can use Jade Bouchard's account. To access the `Country`, `Greenhouse_Gasses`, `Paris_Agreement_Member`, and `Climate_Risk_Index`, you can use Neha Menon's account. Running the notebook [fetching_data.ipynb](fetching_data.ipynb) will access these accounts and put the resulting csv files in the [fetched_data](fetched_data) folder.

### Populating a Database Using the SQL DDL File

Another way the data can be accessed is by running the sql files [country_city_air-quality.sql](country_city_air-quality.sql) and [country_ghg_paris_cri.sql](country_ghg_paris_cri.sql) in an oracle session. These files will create the necessary tables and fill them with `INSERT VALUE` statements.
