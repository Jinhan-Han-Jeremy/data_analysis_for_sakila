# data_analysis_for_sakila
# Descriptive analysis and prescriptive analysis
analysis_for_sakila_film_db

This analysis analyzed film data in mysql
This analysis visualized film data in python

## conda install -c anaconda mysql-connector-python
## pip install pymysql

# Exported df made by MYSQL connecting mysql server
# Python preprocessed df and visualized data

# Analysis of film data by categories - Finding films of high values by categories
Made sales of each categories are present in 'film' table
Visualized sales of each categories in piechart

Made the data frame for the average rental duration of films of each category  - Used tables(film JOIN film_category JOIN category)

Made the data frame for total rental sales of films in different categories  - Used tables(nicer_but_slower_film_list JOIN inventory JOIN rental)
Visualized total_rental_sales in bar chart

# Analysis of film data by ratings - Finding films of high values by ratings
Made the data frame for films of each rating are present  - Used table(film)
Visualized films of each rating in bar chart

# Analysis of actor data by count(film) - Finding actors of high values
Made the data frame for acted number of films of actors - Used table(film_actor JOIN actor)

Made data frame for actors have performed films of all 16 categories

# Analysis of rental sales in two stores - Finding a stroe have high monthly rental sales
Made data frame for the total rental sales per month by two stores  - Used table(payment)
Visualized total sales per the total rental month by two stores in line chart
Compared the total rental sales of two stores

Made data frame for the 5 'G' rated films that have lowest replacement cost and atmost 3 copies of itself in the inventory
 - Used table (film JOIN inventory )

# Analysis of replacement cost
Visualized replacement_cost of films in box plot
Visualized replacement cost of films of different ratings in box plot



