
/*

-- Revenue Analysis:

    Which hotel category (Luxury or Business) generates the highest revenue per successful booking.

*/

SELECT
    dim_hotels.category AS hotel_category,
    Round(
        (
            (sum(fact_bookings.revenue_realized) :: Decimal)/1000000
        )
        ,2) AS revenue_in_millions
FROM
    fact_bookings
    LEFT JOIN dim_hotels
    ON fact_bookings.property_id = dim_hotels.property_id
GROUP BY hotel_category;


/*

Revenue Distribution:
    -- Luxury Hotels: Generated $1,052.75 million in revenue.
    -- Business Hotels: Generated $656.02 million in revenue.


-- Luxury hotels contribute approximately 61.6% of total revenue, while business hotels account for 38.4%.

[
  {
    "hotel_category": "Luxury",
    "revenue_in_millions": "1052.75"
  },
  {
    "hotel_category": "Business",
    "revenue_in_millions": "656.02"
  }
]

*/
