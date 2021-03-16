# Lego: Project Overview<br>
- Created SQL database from csv files
- Performed exploratory data analysis

---

## Code and Resources Used<br>
**pyton Version:** 3.7  
**Packages:** ipython-sql, sqlalchemy  
**SQL server:** PostgreSQL, pgAdmin  
**Data Set:** https://www.kaggle.com/rtatman/lego-database

---

## Building Database<br>
Built data base in pgAdmin using csv data 
   <pre><code>CREATE TABLE colors(
    id int NOT NULL PRIMARY KEY,
    name varchar(50),
    rbg varchar(10),
    is_trans varchar(1)
    );</code></pre>
    
---
    
## EDA<br>
- Imported to relevant libraries into Jupyter Notebook
- Ran exploratory queries on data

---

## Analysis<br>
This data set is great for querying, and has some interesting potential for possible machine learning capabilities. 
However on its own, it does provide some interesting insights on Lego and its progression. As the years have gone by, there 
has been a consistent increase in the complexity of the sets and pieces releases. Both in the amount of pieces themselves, and the range of 
colors. This database can also show off some of the rarer and intricate pieces, such as the powered pieces for specific sets.  

One can also see the variety of different colors used in the different themes that sets belong to. With the Basic Set theme having the largest
variety of colors to fit the with other sets. Then we have the Fairy-Tale theme second in the number of colors used letting us know that
this is a very colorful theme.  

Finally we can see a large boom in the number of sets being released in the late 80's as popularity and interest rise and new sets 
and parts are released to meet demand. Culminating with 2014 having the largest amount of sets being release at a staggering 713 sets released that year.
