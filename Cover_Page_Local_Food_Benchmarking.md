# Data Science for the Public Good

The Data Science for the Public Good (DSPG) Young Scholars program is an immersive summer program that engages students from across Iowa to work together on projects that address local and state government challenges around critical social issues relevant in the world today. Learn more about the program [here](https://dspg.iastate.edu/).

<br>

# Wholesale Local Food Benchmarking
## **Background**
The Iowa State Farm Food and Enterprise Development (FEED) is frequently asked for benchmarks on pricing of products both in retail and wholesale spaces. This occurs both within feasibility studies for new farm and food businesses and market assessments, as well as appropriate price points for selling to schools and early care sites, hospitals, universities, and other institutions. There was a need for additional data and research on the potential sales point for these wholesale products when many of our specialty crop producers across the state are operating in direct-to-consumer retail spaces. While data is available from the AMS and USDA (including the Agricultural Census), there is limited aggregation of sales for these products at the local level.  

**The **goal of the project** was to develop a process that provides more localized and up to date information on regional food systems and prices around local products.**
For the _**Final Presentation**_ click [here](https://github.com/DSPG-2022/Local-Food-Benchmarking/tree/main/Presentation)


![image](https://user-images.githubusercontent.com/17107300/183308940-2c73dfdd-b30b-4eb5-bb66-81fc56a1b3b2.png)
                             

<br>

## **Objectives**

- Data Discovery: Investigate the possibility of scraping data and getting data from social media sites
- Use Google Trends to identify potential key products by terms being searched
- Narrowing down the exact products for analysis
- Compare values of collected data with USDA price data to determine if this helps in better decision making
- Identify potential aspects that could be automated for future data collection
- Investigate potential use of AI to identify impacts to local food markets. For example, weather impacts


<br>

## **Outcomes**
- Used Google Trends to select the top 5 commodities (Apple, Strawberries, Pears, Tomatoes, Green Peppers)
- Compared the difference between USDA Vs local/Grocery/Food hubs price data
- End-to-end data automation process created for data collection (web scraping scheduler)
- Forecasted the prices and the most important variables affecting the prices using weather and economic factors


<br>

## **Workflow**


<br>


### **1) Data Collection**  
<br>


- Web scraping from sites like Iowa Food Co-op/Walmart 
- Physically attended Farmer's Market to collect local food prices
- Called and Emailed local Iowa farmers and asked about their selling prices

<br>

![image](https://user-images.githubusercontent.com/17107300/183311876-4ef9f1cf-b774-4669-b012-f27cd42537a7.png)








<br>



<br> 


### **2) Data Exploration**  

<br>

- Google hits by search for products over years
<br>


![image](https://user-images.githubusercontent.com/17107300/183311562-af9ec7d3-4c5f-4abe-9bd3-0f0510facd61.png)






<br>

- Price change over years (example Apple)

![image](https://user-images.githubusercontent.com/17107300/183311741-2b8a973e-5a60-4596-8fa8-94bc40e40124.png)

 
 
 
 
 - Price difference of organic Vs non-organic prices


![image](https://user-images.githubusercontent.com/17107300/183311769-61260556-e1eb-4f06-97d7-b90923a31728.png)



<br>

 - Negative correlation between search trends and prices(Low Price when Google Searches are High)

![image](https://user-images.githubusercontent.com/17107300/183311796-5cfab5b9-7d5d-498b-aef4-d99c01835a2b.png)




<br>



<br>



### **3) Finalizing the Top Commodities/products for analysis**  


![image](https://user-images.githubusercontent.com/17107300/183311924-de954844-3e66-43be-b3ff-7d5bf7abc732.png)







<br>


### **4) Comparison: USDA Vs  local/Grocery/Food hubs price**  

- Divide the prices in 3 buckets
- Comare the USDA price with the prices from all the data sources like Walmart or Institution or Wheatsfield

![image](https://user-images.githubusercontent.com/17107300/183317152-30e1f64c-5e9a-4a01-9a16-6a66ad379f1d.png)

**Grower price** - price the grower (ex- farmer) receives 
              <br> **Wholesale price** - price received by the wholesaler if there is one between the grower and the retailer
              <br>
               **Retail price** - price received by the store or retail outlet
               <br>* Average price is based on sample data points
 
 <br>
 

 - Price trend over years for multiple data sources
<br>

![image](https://user-images.githubusercontent.com/17107300/183317507-1833cbbc-7144-4a5b-8f7e-4f258f02c853.png)

 <br>
 

 - Where is your money going when you pay $1 for apple? Is the cost really $1?

<br>

![image](https://user-images.githubusercontent.com/17107300/183317611-55c132c3-115d-4207-9247-6eb7501ad8a8.png)

<br>


### **5) Data Automation**  

- Scrape the product information using Python and Postman API for automation
- Script to schedule the web scraping process to run at a certain time per day/week (for more details steps please refer the presentation [here](https://github.com/DSPG-2022/Local-Food-Benchmarking/tree/main/Presentation))

<br>


### **6) AI: Predicting Average Price of a Commodity**  
- Regression and XGBoost models used for prediction
- Indicators used:<br>

      1. Historical USDA retail price data of apples and tomatoes in the Midwest region (USDA Market News)
      2. Historical precipitation and temperature data from ISU mesonet: https://mesonet.agron.iastate.edu/ 
      3. Drought data in Story County, Iowa (drought.gov)
      4. 10 Year US Interest Rate (USO_US_Equity)
      5. Gold Bullion historical price (GLD_US_equity)
      6. Crude oil futures (WTI)
      7. BCOM Index Bloomberg Commodity Index (BCOM_Index)
  
         

- Top features by the model
<br>

![image](https://user-images.githubusercontent.com/17107300/183318335-fa901c98-ad97-4955-aa63-f45e5fc3d1c4.png)








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
