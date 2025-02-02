

/*


Revenue Leakage Due to Cancellations:
	What is the total revenue lost due to cancellations, considering the 40% deduction rule?

*/

SELECT
    CAST(
        (((sum(revenue_generated) - sum(revenue_realized)) :: DECIMAl) / 1000000 ) AS DECIMAL(10,2)
    )AS revenue_lack_in_millions
FROM
    fact_bookings


/*

During cancellation we have $298.77M revenue lost.

[
  {
    "revenue_lack_in_millions": "298.77"
  }
]

*/