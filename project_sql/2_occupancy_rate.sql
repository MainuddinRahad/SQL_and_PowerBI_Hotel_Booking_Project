


/*

-- Occupancy Rate:

-- What is the average occupancy rate per hotel and room type over the last three months?

*/


SELECT
    dim_hotels.property_name AS hotel_name,
    dim_rooms.room_class AS room_type,
    CAST(
        ((sum(successful_bookings) / sum(capacity))*100) AS DECIMAL(10,0)
        ) AS occupancy_rate_percentage
FROM
    fact_aggregated_bookings
    LEFT JOIN dim_hotels
    ON fact_aggregated_bookings.property_id = dim_hotels.property_id
    LEFT JOIN dim_rooms
    ON fact_aggregated_bookings.room_id = dim_rooms.room_id
GROUP BY hotel_name , room_type
ORDER BY hotel_name ASC 
    


/*

-- Here's the breakdown of occupancy rate catagorized by Hotel and Room type.

-- Highest Occupancy Rate: Atliq Blu - Presidential Room (63%)

-- Lowest Occupancy Rate: Atliq Seasons - Presidential & Standard Rooms (44%)

--Most Consistent Performer: Atliq Blu - all room types have an occupancy rate of 62% or more.

--Lowest Performing Hotel: Atliq Seasons - all room types have an occupancy rate ≤ 45%.


🏨 Hotel-Wise Performance

    Top Performing Hotels:

        -- Atliq Blu leads with an average occupancy rate of ~62%, meaning it is in high demand.

        -- Atliq Bay, Atliq City, and Atliq Palace show consistent performance (~58-61%), suggesting stable demand.
    Lowest Performing Hotel:

        -- Atliq Seasons has the lowest occupancy rates (~44-45%).


🛏️ Room Type Performance

        -- Presidential Rooms have the highest occupancy across most hotels (61-63%).

        -- Standard & Premium Rooms have similar occupancy (57-60% on average) ➝ Indicates guests might be choosing comfort over budget options.

        -- Atliq Blu is the only hotel where all room types have nearly equal occupancy (~62%).