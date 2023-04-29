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

Pada Lookerstudio terdapat penambahan 2 kolom sebagai berikut
| Nama Kolom |  Formula |
|------------|----------|
| Customer   |  CONTAINS_TEXT(usertype,"Customer")        |
| kat_usia | ,IF(usia<26,"17 - 25",IF(usia<36,"26 - 35",IF(usia<46,"36 - 45",IF(usia<56,"46 - 55",IF(usia<66,"56 - 65",IF(usia>65,"65+","null"))))))))|

Dashboard dapat diakses di link https://lookerstudio.google.com/reporting/22de3daf-4400-4b67-ab70-01a9c7bffbf6
