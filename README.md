## data_analysis_for_sakila
## Descriptive analysis and prescriptive analysis

analysis_for_sakila_film_db <br />
File : - sakila.db- <br />
Used tables : film, film_category, category, nicer_but_slower_film_list, inventory, rental, film_actor, actor, payment and inventory <br />

File : - sakila_analysis.sql-
This analysis analyzed data in mysql such as inner join, subqueries, date timeseries, condtion statements..
and so on

File : - sakila_data_analysis.ipynb-
This analysis preprocessed data in python
This analysis visualized film data in python

## conda install -c anaconda mysql-connector-python
## pip install pymysql

import numpy as np <br/>
import pandas as pd <br/>
import seaborn as sns <br/>
import sqlite3 <br/>
import matplotlib.pyplot as plt <br/>
import pymysql <br/>


### Exported df made by MYSQL connecting mysql server
### Python preprocessed df and visualized data
ALL WORKS and ANALYSIS ARE IN sakila_data_analysis.ipynb-


### Analysis of film data by categories - Finding films of high values by categories
Made sales of each categories are present in 'film' table
Visualized sales of each categories in piechart

Made the data frame for the average rental duration of films of each category  <br/>
Used tables(film JOIN film_category JOIN category)<br/>

Made the data frame for total rental sales of films in different categories  <br/>
Used tables(nicer_but_slower_film_list JOIN inventory JOIN rental)<br/>
Visualized total_rental_sales in bar chart<br/>

### Analysis of film data by ratings - Finding films of high values by ratings
Made the data frame for films of each rating are present  - Used table(film)<br/>
Visualized films of each rating in bar chart

### Analysis of actor data by count(film) - Finding actors of high values
Made the data frame for acted number of films of actors - Used table(film_actor JOIN actor)

Made data frame for actors have performed films of all 16 categories

### Analysis of rental sales in two stores - Finding a stroe have high monthly rental sales
Made data frame for the total rental sales per month by two stores  - Used table(payment)
Visualized total sales per the total rental month by two stores in line chart
Compared the total rental sales of two stores

Made data frame for the 5 'G' rated films that have lowest replacement cost and atmost 3 copies of itself in the inventory<br/>
Used table (film JOIN inventory )

### Analysis of replacement cost
Visualized replacement_cost of films in box plot
Visualized replacement cost of films of different ratings in box plot



