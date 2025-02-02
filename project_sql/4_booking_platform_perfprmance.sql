


/*

--Booking Platform Performance:
	Which booking platform has the highest booking conversion rate from booking to check-in?

*/




SELECT
    booking_platform,
    count(
    CASE
        WHEN booking_status IN ('Checked Out' , 'No Show') THEN booking_id
    END) AS successful_check_in,
    count(booking_id) AS total_bookings,
    round(((count(
    CASE
        WHEN booking_status IN ('Checked Out' , 'No Show') THEN booking_id
    END) :: DECIMAL) / (count(booking_id) :: DECIMAL)* 100),2)AS conversion_rate,
    round(((count(
    CASE
        WHEN booking_status IN ('Cancelled') THEN booking_id
    END) :: DECIMAL) / (count(booking_id) :: DECIMAL)* 100) ,2)AS cancelation_rate
FROM
    fact_bookings
GROUP BY booking_platform



/*


Conversion Rates:

    -- The conversion rate across platforms is consistently around 75% with a small variation between 75.01% and 75.70%.

    -- The platform with the highest conversion rate is logtrip at 75.70%, while direct online has the lowest conversion rate at 75.01%.


Cancellation Rates:

    -- Cancellation rates are similarly consistent, hovering around 24.5% to 25% across all platforms.

    -- Logtrip has the lowest cancellation rate at 24.30%, while others has the highest cancellation rate at 24.99%.

[
  {
    "booking_platform": "direct offline",
    "successful_check_in": "5101",
    "total_bookings": "6755",
    "conversion_rate": "75.51",
    "cancelation_rate": "24.49"
  },
  {
    "booking_platform": "direct online",
    "successful_check_in": "10035",
    "total_bookings": "13379",
    "conversion_rate": "75.01",
    "cancelation_rate": "24.99"
  },
  {
    "booking_platform": "journey",
    "successful_check_in": "6097",
    "total_bookings": "8106",
    "conversion_rate": "75.22",
    "cancelation_rate": "24.78"
  },
  {
    "booking_platform": "logtrip",
    "successful_check_in": "11170",
    "total_bookings": "14756",
    "conversion_rate": "75.70",
    "cancelation_rate": "24.30"
  },
  {
    "booking_platform": "makeyourtrip",
    "successful_check_in": "20176",
    "total_bookings": "26898",
    "conversion_rate": "75.01",
    "cancelation_rate": "24.99"
  },
  {
    "booking_platform": "others",
    "successful_check_in": "41368",
    "total_bookings": "55066",
    "conversion_rate": "75.12",
    "cancelation_rate": "24.88"
  },
  {
    "booking_platform": "tripster",
    "successful_check_in": "7223",
    "total_bookings": "9630",
    "conversion_rate": "75.01",
    "cancelation_rate": "24.99"
  }
]



*/

