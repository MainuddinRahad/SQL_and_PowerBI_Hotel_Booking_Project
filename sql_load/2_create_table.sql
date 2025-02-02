

-- Create dim_date table with primary key..

CREATE TABLE public.dim_date
(
    Date Date primary key,
    Month TEXT,
    Year INT,
    Weeknum INT,
    Day_type TEXT
);

-- Create dim_hotels table with primary key..

CREATE TABLE public.dim_hotels
(
    property_id INT primary key,
    property_name TEXT,
    category TEXT,
    city TEXT
);


-- Create dim_rooms table with primary key..

CREATE TABLE public.dim_rooms
(
   room_id TEXT primary key,
   room_class TEXT
);



-- Create fact_aggregated_bookings table with foreign key..

CREATE TABLE public.fact_aggregated_bookings
(
  property_id INT,
  check_in_date Date,
  room_id TEXT,
  successful_bookings FLOAT,
  capacity FLOAT,
  FOREIGN KEY(property_id) REFERENCES public.dim_hotels(property_id),
  FOREIGN KEY(room_id) REFERENCES public.dim_rooms(room_id)
);



-- Create fact_bookings table with foreign key..


CREATE TABLE public.fact_bookings
(

 booking_id TEXT primary key,
 property_id INT,
 booking_date Date,
 check_in_date Date,
 checkout_date Date,
 no_guests INT,
 room_id TEXT,
 booking_platform TEXT,
 ratings_given FLOAT,
 booking_status TEXT,
 revenue_generated INT,
 revenue_realized INT,
 FOREIGN KEY(property_id) REFERENCES public.dim_hotels(property_id),
 FOREIGN KEY(room_id) REFERENCES public.dim_rooms(room_id)
);









