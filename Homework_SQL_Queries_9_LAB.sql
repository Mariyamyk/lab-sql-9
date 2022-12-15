# Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE rentals_may LIKE rental;

#Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may SELECT * FROM rental where month(rental.return_date)=5;

#Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE rentals_june LIKE rental;

#Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO rentals_june SELECT * FROM rental WHERE month(rental.return_date)=6;

#Check the number of rentals for each customer for May.
SELECT count(rental_id) AS rent_may
FROM rentals_may;

#Check the number of rentals for each customer for June.
SELECT count(rental_id) AS rent_june
FROM rentals_june;
