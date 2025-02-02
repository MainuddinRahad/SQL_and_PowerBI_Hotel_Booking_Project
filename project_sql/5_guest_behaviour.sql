

/*


-- Guest Behavior:
	Which room category  is the most preferred by guests in different hotel categories?


*/


SELECT
    dim_hotels.category AS hotel_category,
    dim_rooms.room_class AS room_category,
    count(booking_id) AS number_of_bookings
FROM
    fact_bookings
    LEFT JOIN dim_hotels
    ON fact_bookings.property_id = dim_hotels.property_id
    LEFT JOIN dim_rooms
    ON fact_bookings.room_id = dim_rooms.room_id
GROUP BY hotel_category , room_category
ORDER BY hotel_category ASC;

/*


1. Business Hotels:

-- The highest number of bookings is for Elite rooms (18,932).

-- The Standard room (14,480) is the second most booked, followed by Premium (10,527) and Presidential (6,991).


2. Luxury Hotels:

-- The highest number of bookings is for Elite rooms (30,573).
The Standard room (23,966) is also in high demand, followed by Premium (20,039) and Presidential (9,082).

Insight: 

Finally we can see that luxury hotels and Business hotels both , Elite and Standard rooms attract the most bookings.

Presidential rooms have the lowest demand in both hotel categories, likely due to high prices and limited affordability probably.


[
  {
    "hotel_category": "Business",
    "room_category": "Presidential",
    "number_of_bookings": "6991"
  },
  {
    "hotel_category": "Business",
    "room_category": "Premium",
    "number_of_bookings": "10527"
  },
  {
    "hotel_category": "Business",
    "room_category": "Standard",
    "number_of_bookings": "14480"
  },
  {
    "hotel_category": "Business",
    "room_category": "Elite",
    "number_of_bookings": "18932"
  },
  {
    "hotel_category": "Luxury",
    "room_category": "Standard",
    "number_of_bookings": "23966"
  },
  {
    "hotel_category": "Luxury",
    "room_category": "Presidential",
    "number_of_bookings": "9082"
  },
  {
    "hotel_category": "Luxury",
    "room_category": "Premium",
    "number_of_bookings": "20039"
  },
  {
    "hotel_category": "Luxury",
    "room_category": "Elite",
    "number_of_bookings": "30573"
  }
]

*/
