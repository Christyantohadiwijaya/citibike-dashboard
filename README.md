# citibike-dashboard
Repository pembuatan dashboard menggunakan lookerstudio
![Dashboard_Rent_Citi_Bike_NYC](https://github.com/Christyantohadiwijaya/citibike-dashboard/blob/main/Dashboard_Rent_Citi_Bike_NYC.jpg)

query datamart sebagaimana terlampir pada file <b> query citibike.sql </b> 
```
SELECT *
FROM bigquery-public-data.new_york_citibike.citibike_trips
WHERE EXTRACT(year FROM starttime) = (SELECT DISTINCT EXTRACT(year FROM starttime)
                                      FROM bigquery-public-data.new_york_citibike.citibike_trips
                                      ORDER BY 1 DESC
                                      LIMIT 1)
  ```
