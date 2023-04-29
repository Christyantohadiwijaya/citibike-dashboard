SELECT * FROM `bigquery-public-data.new_york_citibike.citibike_trips` 
where extract(year from starttime)= (select distinct extract(year from starttime) from `bigquery-public-data.new_york_citibike.citibike_trips` order by 1 desc limit 1)
