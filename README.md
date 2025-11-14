# Movies-and-TV-Shows-Analysis
This Power BI dashboard provides an in-depth analysis of Amazon Prime Video’s content library, covering ratings, genres, countries, movie/TV show split, and release trends from 1920 to 2021. It helps visualize platform growth and content distribution using interactive charts and KPIs.
# 📊 Amazon Prime Video – Power BI Dashboard

## 📁 Project Overview
This project analyzes Amazon Prime Video content using an interactive Power BI dashboard. 
It explores content distribution, ratings, genres, release trends, and geographic availability.

## 🎯 Objectives
- Understand Amazon Prime content library size and growth.
- Analyze movies vs. TV shows distribution.
- Identify rating and genre patterns.
- Explore global content presence.
- Visualize release trends from 1920 to 2021.

---

## 📂 Dataset Summary
The dataset contains:
- 9655 titles  
- 25 rating categories  
- 519 genres  
- 5771 directors  
- Release years between 1920 and 2021  

Columns include show_id, type, title, director, cast, country, date_added, release_year, rating, duration, listed_in, and description.

---

## ⭐ Key Performance Indicators (KPIs)
- **Total Titles:** 9655  
- **Total Ratings:** 25  
- **Total Genres:** 519  
- **Total Directors:** 5771  
- **Start Year:** 1920  
- **End Year:** 2021  
- **Movies:** ~82%  
- **TV Shows:** ~18%  

---

## ❓ Business Questions Answered
1. What is the total number of titles on Amazon Prime?
2. How many movies vs. TV shows exist?
3. Which ratings are most common?
4. What are the most popular genres?
5. How is content distributed across countries?
6. How has the content changed over time?
7. Who are the top directors?
8. What is the oldest and newest release year?
9. What percentage of the catalog belongs to movies or TV shows?
10. Which rating categories dominate specific genres?
---

## 🔢 DAX Measures Used

```DAX
Total Titles = COUNTROWS(amazon_prime_titles)

Total Ratings = DISTINCTCOUNT(amazon_prime_titles[rating])

Total Genres = DISTINCTCOUNT(amazon_prime_titles[listed_in])

Total Directors = DISTINCTCOUNT(amazon_prime_titles[director])

Start Year = MIN(amazon_prime_titles[release_year])

End Year = MAX(amazon_prime_titles[release_year])

Total Movies = CALCULATE(COUNTROWS(amazon_prime_titles), amazon_prime_titles[type] = "Movie")

Total TV Shows = CALCULATE(COUNTROWS(amazon_prime_titles), amazon_prime_titles[type] = "TV Show")

Movie % = DIVIDE([Total Movies], [Total Titles])

TV Show % = DIVIDE([Total TV Shows], [Total Titles])

' ' '
---

## 🖥 Dashboard Explanation
 - *1. KPI Cards*

Shows the total:

Titles

Ratings

Genres

Directors

First & last release year

These help understand dataset scale at a glance.

 - *2. Rating Distribution*

A horizontal bar chart showing how many titles fall into categories like:

R

PG

TV-MA

TV-14

etc.
This helps identify audience targeting.

 - *3. Genre Popularity*

Displays the top genres like:

Drama

Comedy

Kids

Documentary
Shows content strength areas.

 - *4. Total Shows by Country*

The map visual highlights:

United States

India

UK

Canada
as top contributors.

- *5. Movies vs TV Shows (Donut Chart)*

Shows clear % split:

~82% Movies

~18% TV Shows

 - *6. Release Trend Over Time*

Timeline visual showing steep growth after 2000, especially post-2010.

## 📌 Insights Summary (For GitHub)

Amazon Prime has 9655 titles, dominated heavily by Movies (82%).

The platform has 25 rating types, with TV-14 and TV-MA being the most common.

Drama, Comedy, and Action are top genres.

The US and India are the top content-producing countries.

Massive increase in content addition from 2000 to 2021.

Oldest title dates back to 1920, showing deep catalog history.

Over 5771 directors, highlighting large creative diversity.
