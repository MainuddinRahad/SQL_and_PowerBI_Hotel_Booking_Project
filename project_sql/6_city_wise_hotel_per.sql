

/*

-- City-Wise Hotel Performance:
   Which city has the highest revenue for hotels?


*/


SELECT
    dim_hotels.city AS city,
    dim_hotels.property_name AS hotel_name,
    CAST(
        ((sum(fact_bookings.revenue_realized) :: DECIMAL) / 1000000)
        AS DECIMAL(10,2)
     )AS revenue_in_millions
FROM
    fact_bookings
    LEFT JOIN dim_hotels
    ON fact_bookings.property_id = dim_hotels.property_id
GROUP BY city , hotel_name


/*

Here's the breakdown of my query analysis.

Bangalore:
-- 📈 Atliq Bay (₹82.44M) and Atliq City (₹81.88M) are the highest revenue-generating hotels.
-- Atliq Grands (₹54.49M) has the lowest revenue in Bangalore.

Delhi:
-- 💰 Atliq Palace (₹89.14M) leads in revenue, significantly ahead of others.
-- Atliq Grands (₹36.06M) earns the least in Delhi, showing lower demand.

Hyderabad:
-- 🔝 Atliq Bay (₹69.26M) generates the highest revenue.
-- Atliq Palace (₹44.84M) has the lowest revenue.

Mumbai:
-- 🚀 Atliq Exotica (₹212.44M) dominates with the highest revenue across all cities.
-- Atliq City (₹88.00M) and Atliq Palace (₹101.51M) also perform well.

[
  {
    "city": "Bangalore",
    "hotel_name": "Atliq Bay",
    "revenue_in_millions": "82.44"
  },
  {
    "city": "Bangalore",
    "hotel_name": "Atliq Blu",
    "revenue_in_millions": "72.96"
  },
  {
    "city": "Bangalore",
    "hotel_name": "Atliq City",
    "revenue_in_millions": "81.88"
  },
  {
    "city": "Bangalore",
    "hotel_name": "Atliq Exotica",
    "revenue_in_millions": "60.02"
  },
  {
    "city": "Bangalore",
    "hotel_name": "Atliq Grands",
    "revenue_in_millions": "54.49"
  },
  {
    "city": "Bangalore",
    "hotel_name": "Atliq Palace",
    "revenue_in_millions": "68.60"
  },
  {
    "city": "Delhi",
    "hotel_name": "Atliq Bay",
    "revenue_in_millions": "56.44"
  },
  {
    "city": "Delhi",
    "hotel_name": "Atliq Blu",
    "revenue_in_millions": "57.93"
  },
  {
    "city": "Delhi",
    "hotel_name": "Atliq City",
    "revenue_in_millions": "54.93"
  },
  {
    "city": "Delhi",
    "hotel_name": "Atliq Grands",
    "revenue_in_millions": "36.06"
  },
  {
    "city": "Delhi",
    "hotel_name": "Atliq Palace",
    "revenue_in_millions": "89.14"
  },
  {
    "city": "Hyderabad",
    "hotel_name": "Atliq Bay",
    "revenue_in_millions": "69.26"
  },
  {
    "city": "Hyderabad",
    "hotel_name": "Atliq Blu",
    "revenue_in_millions": "56.04"
  },
  {
    "city": "Hyderabad",
    "hotel_name": "Atliq City",
    "revenue_in_millions": "61.01"
  },
  {
    "city": "Hyderabad",
    "hotel_name": "Atliq Exotica",
    "revenue_in_millions": "47.84"
  },
  {
    "city": "Hyderabad",
    "hotel_name": "Atliq Grands",
    "revenue_in_millions": "46.25"
  },
  {
    "city": "Hyderabad",
    "hotel_name": "Atliq Palace",
    "revenue_in_millions": "44.84"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq Bay",
    "revenue_in_millions": "51.91"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq Blu",
    "revenue_in_millions": "73.92"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq City",
    "revenue_in_millions": "88.00"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq Exotica",
    "revenue_in_millions": "212.44"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq Grands",
    "revenue_in_millions": "74.73"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq Palace",
    "revenue_in_millions": "101.51"
  },
  {
    "city": "Mumbai",
    "hotel_name": "Atliq Seasons",
    "revenue_in_millions": "66.13"
  }
]


*/

