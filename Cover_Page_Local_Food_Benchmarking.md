# Data Science for the Public Good

The Data Science for the Public Good (DSPG) Young Scholars program is an immersive summer program that engages students from across Iowa to work together on projects that address local and state government challenges around critical social issues relevant in the world today. Learn more about the program [here](https://dspg.iastate.edu/).

<br>

## Wholesale Local Food Benchmarking
### **Background**
The Iowa State Farm Food and Enterprise Development (FEED) is frequently asked for benchmarks on pricing of products both in retail and wholesale spaces. This occurs both within feasibility studies for new farm and food businesses and market assessments, as well as appropriate price points for selling to schools and early care sites, hospitals, universities, and other institutions. There was a need for additional data and research on the potential sales point for these wholesale products when many of our specialty crop producers across the state are operating in direct-to-consumer retail spaces. While data is available from the AMS and USDA (including the Agricultural Census), there is limited aggregation of sales for these products at the local level.  

**The **goal of the project** was to develop a process that provides more localized and up to date information on regional food systems and prices around local products.**
For the _**Final Presentation**_ click [here](https://github.com/DSPG-2022/Local-Food-Benchmarking/tree/main/Presentation)


![image](https://user-images.githubusercontent.com/17107300/183308940-2c73dfdd-b30b-4eb5-bb66-81fc56a1b3b2.png)
                             

<br>

### **Objectives**

- Data Discovery: Investigate the possibility of scraping data and getting data from social media sites
- Use Google Trends to identify potential key products by terms being searched
- Narrowing down the exact products for analysis
- Compare values of collected data with USDA price data to determine if this helps in better decision making
- Identify potential aspects that could be automated for future data collection
- Investigate potential use of AI to identify impacts to local food markets. For example, weather impacts


<br>

### **Outcomes**
- Used Google Trends to select the top 5 commodities (Apple, Strawberries, Pears, Tomatoes, Green Peppers)
- Compared the difference between USDA Vs local/Grocery/Food hubs price data
- End-to-end data automation process created for data collection (web scraping scheduler)
- Forecasted the prices and the most important variables affecting the prices using weather and economic factors



## **Workflow**


<br>


**1. Data Collection**  
<br>


- Web scraping from sites like Iowa Food Co-op/Walmart 
- Physically attended Farmer's Market to collect local food prices
- Called and Emailed local Iowa farmers and asked about their selling prices





![image](https://user-images.githubusercontent.com/17107300/183310552-d6177dc2-5e24-4bef-8dac-5ec7cb29b0f2.png)




<br>





**2. Data Exploration**  

<br>

- **Google hits by search for products over years**

 ![image](https://user-images.githubusercontent.com/17107300/183310820-7c88ccf8-3903-427d-bce3-caac3f459912.png)
![image](https://user-images.githubusercontent.com/17107300/183310841-53625903-299f-43db-a8f1-f457a1ae6460.png)

- **Price change over years (example Apple)**


 ![image](https://user-images.githubusercontent.com/17107300/183310882-5a2be2ed-81ba-41ac-bf24-6747282a44e6.png)
 
 - **Price difference of organic Vs non-organic prices**


![image](https://user-images.githubusercontent.com/17107300/183310904-9fd712a7-ef5e-4cd7-9625-6337e275ceb3.png)


 - **Negative correlation between search trends and prices**

![image](https://user-images.githubusercontent.com/17107300/183311102-3f9f2785-308a-4b57-ac1c-8771b0f1cae2.png)


<br>






**Education**

- % of Kindergarten Students Proficient by Kindergarten Literacy Assessment
- Educational Attainment of Mothers
- _Quality Early Learning Environments, QRS Rating, # of Programs in a Quality Initiative_
- _Availability of Childcare, Cost, # of Childcare Providers, # of Childcare Spaces_

**Employment and Income**

- % of Children Under Age 6 Living in Poverty
- % of Children Under Age 6 with All Parents in the Workforce
- _Unemployment Rate_

**Services**
- % of Accredited Family Support Programs in the State
- _Quality Early Learning Environments, QRS Rating, # of Programs in a Quality Initiative_
- _Availability of Childcare, Cost, # of Childcare Providers, # of Childcare Spaces_
- Childcare Spots Lost Due to COVID-19
- Availability of Doctors (pediatricians in particular) Who Accept Medicaid
- Availability of Dentists Who Accept Medicaid

<br>

### **Data**
The indicators were computed using public data-sets obtained from different sources/agencies. Number of available years and granularity of the data varied across sources. Data sources for few indicators were not identified, therefore the project team could not compute the corresponding indicators. Detailed information about sources used can be found [here](https://iastate.app.box.com/file/844461079162?s=wsb68re1hs0qgnfba6r5lupx59hdvwip).

|  No. | Indicator      | Source   | Year* |
| -    | -------------- | -------- | :--: |
|  1   |  Low birth weight |  Iowa Department of Public Health | 2015-2019 |
|  2   |  Percent of immunized children |  Iowa Department of Public Health  | 2020 |
|  3   |  K assessment data |  FastBridge | 2020-2021 |
|  4   |  % of students entering K with no obvious dental problems |  Iowa Department of Public Health | 2016-2019 |
|  5   |  Educational attainment of mothers |  ACS | 2010-2019 |
|  6   |  Serious crime/100,000 population |  Uniform Crime Report | 2019 |
|  7   |  Juvenile arrests/100,000 population |  Iowa Division of Criminal and Juvenile Justice Planning | 2015-2018 |
|  8   |  Unemployment rate |  Iowa Workforce Development  | 2001-2021 |
|  9   |  % of children under age 6 living in poverty (recommended to break down by education, race, marital status, and employment)  |  ACS | 2009-2019 and 2013-2019 |
|  10  |  % of children under age 6 with all parents in the workforce |   ACS | 2009-2019 |
|  11  |  Incidence of child abuse/1,000 children |   Iowa Department of Human Services | 2004-2020 |
|  13  |  Domestic violence rate |    |  |
|  14  |  Teen births |   Iowa Department of Public Health  | 2000-2019 |
|  15  |  % of accredited family support programs in the state |   Iowa Department of Human Services | 2020 |
|  16  |  Quality early learning environments, QRS rating, # of programs in a quality initiative |   Iowa Department of Human Services | 2020 |
|  17  |  Availability of child care, cost, # of childcare providers, # of childcare spaces |   Iowa Department of Human Services | 2020 |
|  18  |  Possibly specifically the number of slots lost during COVID-19? |   Iowa Department of Human Services |  |
|  19  |  Availability of pediatrics who accept medicaid by county |   Iowa Department of Human Services | Data updates daily |
|  20  |  Availability of dentists who accept medicaid by county |   Iowa Department of Human Services | Data updates daily |
|  22  |  Homelessness |   Institute for Community Alliances | 2019-2021 |

\* _Number of available years does not always correspond to the number of data-years obtained by the project team._

<br>

### **Code**
Both data scraping and dashboard development was implemented in R. Corresponding code is available on:

- [GitHub Repository](https://github.com/DSPG2021/i2d2) (limited access, owned by Adisak Sukul)
- [Iowa IDS CyBox](https://iastate.app.box.com/folder/152647528114) under `Iowa IDS` > `Projects` > `2021 Dashboard` > `Code` > `DSPG_2021` (private)

The final version of the dashboard was deployed on shinyapps.io by [Giorgi Chighladze](https://github.com/giorgichi) at [https://i2d2.shinyapps.io/DSPG_2021_Dashboard/](https://i2d2.shinyapps.io/DSPG_2021_Dashboard/).

<br>

### **Other Documents**
The I2D2 Dashboard project team made three presentation during the project period which could be found along with the recording of the presentations on [Iowa IDS CyBox](https://iastate.app.box.com/folder/145226631787) under `Iowa IDS` > `Projects` > `2021 Dashboard` > `DSPG 2021 work` > `DSPG 2021 Presentations` (private).


<br>

### **Team**
The I2D2 Dashboard project team  brought together backgrounds in Computer Science, Systems Engineering, Economics, and Statistics, with interests in applications of technical skills to achieve meaningful impacts for decision making processes related to policy problems in local communities.

- **Todd Abraham** - Team Leader, Iowa State University, Psychology, Statistics
- **Tiancheng Zhou** - Graduate fellow, Iowa State University Computer Science
- **Avery Schoen** - Intern ‘24, University of Chicago, Statistics
- **Dylan Mack** - Intern ‘24, Washington University, Systems Engineering
- **Sonyta Ung** - Intern ‘22, Iowa State University, Computer Science

<br>
