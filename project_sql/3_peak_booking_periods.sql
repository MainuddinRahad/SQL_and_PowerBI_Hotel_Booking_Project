

/*

-- Peak Booking Periods:

-- Which week and day type (weekday vs. weekend) see the highest number of bookings?

*/


SELECT
    dim_date.weeknum AS week_num,
    dim_date.day_type AS day_type,
    count(booking_id) AS number_of_bookings
FROM
    fact_bookings
    LEFT JOIN dim_date
    ON fact_bookings.check_in_date = dim_date.date
GROUP BY week_num , day_type
ORDER BY week_num ASC



/*


-- Weekdays consistently have higher bookings than weekends across all weeks.

-- The highest number of weekday bookings: Week 29 (7,616 bookings).

-- The lowest number of weekday bookings (excluding incomplete data in week 32): Week 30 (6,197 bookings).

-- The highest number of weekend bookings: Week 24 (3,433 bookings).

-- The lowest number of weekend bookings: Week 30 (2,823 bookings).


Final Answer:

✅ Week with Highest Bookings: Week 24 (11,041 bookings)
✅ Week with Lowest Bookings: Week 31 (9,021 bookings)


[
  {
    "week_num": 19,
    "day_type": "Weekday",
    "number_of_bookings": "7577"
  },
  {
    "week_num": 19,
    "day_type": "Weekend",
    "number_of_bookings": "3388"
  },
  {
    "week_num": 20,
    "day_type": "Weekday",
    "number_of_bookings": "7585"
  },
  {
    "week_num": 20,
    "day_type": "Weekend",
    "number_of_bookings": "3373"
  },
  {
    "week_num": 21,
    "day_type": "Weekday",
    "number_of_bookings": "6243"
  },
  {
    "week_num": 21,
    "day_type": "Weekend",
    "number_of_bookings": "2799"
  },
  {
    "week_num": 22,
    "day_type": "Weekday",
    "number_of_bookings": "7537"
  },
  {
    "week_num": 22,
    "day_type": "Weekend",
    "number_of_bookings": "3397"
  },
  {
    "week_num": 23,
    "day_type": "Weekday",
    "number_of_bookings": "6285"
  },
  {
    "week_num": 23,
    "day_type": "Weekend",
    "number_of_bookings": "2804"
  },
  {
    "week_num": 24,
    "day_type": "Weekday",
    "number_of_bookings": "7608"
  },
  {
    "week_num": 24,
    "day_type": "Weekend",
    "number_of_bookings": "3433"
  },
  {
    "week_num": 25,
    "day_type": "Weekday",
    "number_of_bookings": "7542"
  },
  {
    "week_num": 25,
    "day_type": "Weekend",
    "number_of_bookings": "3401"
  },
  {
    "week_num": 26,
    "day_type": "Weekday",
    "number_of_bookings": "6219"
  },
  {
    "week_num": 26,
    "day_type": "Weekend",
    "number_of_bookings": "2798"
  },
  {
    "week_num": 27,
    "day_type": "Weekday",
    "number_of_bookings": "7576"
  },
  {
    "week_num": 27,
    "day_type": "Weekend",
    "number_of_bookings": "3386"
  },
  {
    "week_num": 28,
    "day_type": "Weekday",
    "number_of_bookings": "7556"
  },
  {
    "week_num": 28,
    "day_type": "Weekend",
    "number_of_bookings": "3373"
  },
  {
    "week_num": 29,
    "day_type": "Weekday",
    "number_of_bookings": "7616"
  },
  {
    "week_num": 29,
    "day_type": "Weekend",
    "number_of_bookings": "3402"
  },
  {
    "week_num": 30,
    "day_type": "Weekday",
    "number_of_bookings": "6197"
  },
  {
    "week_num": 30,
    "day_type": "Weekend",
    "number_of_bookings": "2823"
  },
  {
    "week_num": 31,
    "day_type": "Weekday",
    "number_of_bookings": "6224"
  },
  {
    "week_num": 31,
    "day_type": "Weekend",
    "number_of_bookings": "2797"
  },
  {
    "week_num": 32,
    "day_type": "Weekday",
    "number_of_bookings": "1651"
  }
]

*/


