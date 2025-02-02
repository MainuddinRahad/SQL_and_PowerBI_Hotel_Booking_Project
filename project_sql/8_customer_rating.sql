

/*

-- Customer Ratings Analysis:
	Which factors impact customer ratings, and how do ratings vary across hotels and cities?

*/


SELECT
    city,
    CAST((sum(revenue_realized):: DECIMAL / 1000000) AS DECIMAL(10,2)) AS total_revenue_in_millions,
    CAST(avg(ratings_given) AS DECIMAl(10,2)) AS average_rating
FROM
    fact_bookings
    LEFT JOIN dim_hotels
    ON fact_bookings.property_id = dim_hotels.property_id
GROUP BY city ;

/*


Insights from the Chart: "Impact of Revenue on Customer Ratings Across Hotels & Cities"

Mumbai Generates the Highest Revenue:

    -- The purple bubble (Mumbai) is positioned at the highest revenue level (~$668.64M), indicating that Mumbai hotels generate the most revenue despite an average customer rating of around 3.65.

    -- This suggests that revenue does not necessarily correlate with the highest ratings.


Bangalore has Strong Revenue but Lower Ratings:

    -- The blue bubble (Bangalore) has the second-highest revenue ($420.40M) but the lowest customer rating (3.41).

    -- This indicates a potential issue with customer satisfaction despite strong revenue generation.


Delhi Achieves the Highest Customer Rating:

    -- The blue bubble (Delhi) is positioned at the highest rating (3.78) while having a moderate revenue ($294.50M).

    -- This suggests that customers in Delhi are more satisfied with hotel services, even if revenue isn’t the highest.
    

Hyderabad Balances Revenue and Ratings:

    -- The orange bubble (Hyderabad) has moderate revenue ($325.23M) and a decent rating (3.66).

    -- This suggests a balance between revenue generation and customer satisfaction, possibly indicating efficient service management.

*/


    