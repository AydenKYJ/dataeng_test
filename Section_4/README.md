
# Section 4 Readme
Step 1: Installed Tableau

Step 2: Created API request scrape for SG covid data stored in temp df

Step 3: Created new column for daily case numbers (df['Case] was total numbers cumalative over time)

Step 4: Transformed datetime column to be more granular and ready for dashboarding
  
    Datetime split to
    a. Date (Whole date vision dd/mm/yy)
    b. Day
    c. Month
    d. Year
    e. Quarterly (Charting purposes)
    f. Year/Month (Charting purposes)

Step 5: Removed all unnecessary columns (reduce clutter) and exported to csv

Step 6: Connected output csv with Tableau 

Step 7: Generated 4 charts for dashboarding by year/month

    a. Daily cases over time
    b. Moving Average over time
    c. Cumalative cases over time
    d. heatmap of daily cases over time
     

(Had had a bit of fun with this as I've always wanted to do this for covid's data since a year+ back)