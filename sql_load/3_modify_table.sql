
-- Data load process..

-- Here's the following step to follow..

COPY dim_date
FROM 'F:\SQL_and_PowerBI_Hotel_Booking_Project\csv_file\dim_date.csv'
WITH (FORMAT csv , HEADER true , DELIMITER ',' , ENCODING 'UTF8');


COPY dim_hotels
FROM 'F:\SQL_and_PowerBI_Hotel_Booking_Project\csv_file\dim_hotels.csv'
WITH (FORMAT csv , HEADER true , DELIMITER ',' , ENCODING 'UTF8');


COPY dim_rooms
FROM 'F:\SQL_and_PowerBI_Hotel_Booking_Project\csv_file\dim_rooms.csv'
WITH (FORMAT csv , HEADER true , DELIMITER ',' , ENCODING 'UTF8');


COPY fact_aggregated_bookings
FROM 'F:\SQL_and_PowerBI_Hotel_Booking_Project\csv_file\fact_aggregated_bookings.csv'
WITH (FORMAT csv , HEADER true , DELIMITER ',' , ENCODING 'UTF8');


COPY fact_bookings
FROM 'F:\SQL_and_PowerBI_Hotel_Booking_Project\csv_file\fact_bookings.csv'
WITH (FORMAT csv , HEADER true , DELIMITER ',' , ENCODING 'UTF8');