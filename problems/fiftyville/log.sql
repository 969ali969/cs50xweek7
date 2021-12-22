-- Keep a log of any SQL queries you execute as you solve the mystery.


SELECT description FROM crime_scene_reports WHERE month = '7' AND day = '28';
--Theft of the CS50 duck took place at 10:15am at the Chamberlin Street courthouse.

SELECT * FROM courthouse_security_logs WHERE month = '7' AND day = '28' AND hour = '10' AND minute >= '15';
--id | year | month | day | hour | minute | activity | license_plate
--260 | 2020 | 7 | 28 | 10 | 16 | exit | 5P2BI95
--261 | 2020 | 7 | 28 | 10 | 18 | exit | 94KL13X
--262 | 2020 | 7 | 28 | 10 | 18 | exit | 6P58WS2
--263 | 2020 | 7 | 28 | 10 | 19 | exit | 4328GD8
--264 | 2020 | 7 | 28 | 10 | 20 | exit | G412CB7
--265 | 2020 | 7 | 28 | 10 | 21 | exit | L93JTIZ
--266 | 2020 | 7 | 28 | 10 | 23 | exit | 322W7JE
--267 | 2020 | 7 | 28 | 10 | 23 | exit | 0NTHK55
--268 | 2020 | 7 | 28 | 10 | 35 | exit | 1106N58

SELECT * FROM atm_transactions WHERE month = '7' AND day = '28' AND atm_location = 'Fifer Street';
--id | account_number | year | month | day | atm_location | transaction_type | amount
--246 | 28500762 | 2020 | 7 | 28 | Fifer Street | withdraw | 48
--264 | 28296815 | 2020 | 7 | 28 | Fifer Street | withdraw | 20
--266 | 76054385 | 2020 | 7 | 28 | Fifer Street | withdraw | 60
--267 | 49610011 | 2020 | 7 | 28 | Fifer Street | withdraw | 50
--269 | 16153065 | 2020 | 7 | 28 | Fifer Street | withdraw | 80
--288 | 25506511 | 2020 | 7 | 28 | Fifer Street | withdraw | 20
--313 | 81061156 | 2020 | 7 | 28 | Fifer Street | withdraw | 30
--336 | 26013199 | 2020 | 7 | 28 | Fifer Street | withdraw | 35

SELECT * FROM phone_calls WHERE month = '7' AND day = '28' AND duration <= '60';
--id | caller | receiver | year | month | day | duration
--221 | (130) 555-0289 | (996) 555-8899 | 2020 | 7 | 28 | 51
--224 | (499) 555-9472 | (892) 555-8872 | 2020 | 7 | 28 | 36
--233 | (367) 555-5533 | (375) 555-8161 | 2020 | 7 | 28 | 45
--234 | (609) 555-5876 | (389) 555-5198 | 2020 | 7 | 28 | 60
--251 | (499) 555-9472 | (717) 555-1342 | 2020 | 7 | 28 | 50
--254 | (286) 555-6063 | (676) 555-6554 | 2020 | 7 | 28 | 43
--255 | (770) 555-1861 | (725) 555-3243 | 2020 | 7 | 28 | 49
--261 | (031) 555-6622 | (910) 555-3251 | 2020 | 7 | 28 | 38
--279 | (826) 555-1652 | (066) 555-9701 | 2020 | 7 | 28 | 55
--281 | (338) 555-6650 | (704) 555-2131 | 2020 | 7 | 28 | 54

SELECT * FROM flights WHERE month = '7' AND day = '28' ORDER BY hour;
--id | origin_airport_id | destination_airport_id | year | month | day | hour | minute
--27 | 5 | 8 | 2020 | 7 | 28 | 8 | 35
--4 | 1 | 8 | 2020 | 7 | 28 | 9 | 28
--22 | 1 | 8 | 2020 | 7 | 28 | 12 | 51
--6 | 8 | 5 | 2020 | 7 | 28 | 13 | 49

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '28500762'=
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--467400 | Danielle | (389) 555-5198 | 8496433585 | 4328GD8 | 28500762 | 467400 | 2014

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '28296815';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--395717 | Bobby | (826) 555-1652 | 9878712108 | 30G67EN | 28296815 | 395717 | 2014

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '76054385';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--449774 | Madison | (286) 555-6063 | 1988161715 | 1106N58 | 76054385 | 449774 | 2015

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '49610011';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--686048 | Ernest | (367) 555-5533 | 5773159633 | 94KL13X | 49610011 | 686048 | 2010

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '16153065';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--458378 | Roy | (122) 555-4581 | 4408372428 | QX4YZN3 | 16153065 | 458378 | 2012

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '25506511';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--396669 | Elizabeth | (829) 555-5269 | 7049073643 | L93JTIZ | 25506511 | 396669 | 2014

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '81061156';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--438727 | Victoria | (338) 555-6650 | 9586786673 | 8X428L0 | 81061156 | 438727 | 2018

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '26013199';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--514354 | Russell | (770) 555-1861 | 3592750733 | 322W7JE | 26013199 | 514354 | 2012

SELECT passport_number FROM passengers
JOIN flights
ON passengers.flight_id = flights.id
WHERE hour = '8';
--passport_number
--4631067354
--9698118788
--9355133130
--1207566299
--6131360461
--4223654265
--7712200330
--7214083635
--1695452385
--5773159633 +++++++++++
--1540955065
--8294398571
--1988161715 +++++++++++
--9878712108 +++++++++++
--8496433585 +++++++++++
--6464352048
--1236213682
--4631067354
--2169423415
--8834222028

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '28500762'=
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--467400 | Danielle | (389) 555-5198 | 8496433585 | 4328GD8 | 28500762 | 467400 | 2014 ((((((CALL RECIVER))))))

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '28296815';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--395717 | Bobby | (826) 555-1652 | 9878712108 | 30G67EN | 28296815 | 395717 | 2014 ((((((NOT SURE HE WAS NOT IN courthouse))))))

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '76054385';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--449774 | Madison | (286) 555-6063 | 1988161715 | 1106N58 | 76054385 | 449774 | 2015

SELECT * FROM people JOIN bank_accounts ON people.id = bank_accounts.person_id WHERE account_number = '49610011';
--id | name | phone_number | passport_number | license_plate | account_number | person_id | creation_year
--686048 | Ernest | (367) 555-5533 | 5773159633 | 94KL13X | 49610011 | 686048 | 2010

SELECT city FROM airports WHERE id = (SELECT destination_airport_id FROM flights WHERE year = '2020' AND month = '7' AND day = '29' ORDER BY hour, minute LIMIT 1);
--city
--London (the city)

SELECT name FROM people
JOIN phone_calls
ON people.phone_number = phone_calls.receiver
WHERE day = '28' AND month = '7' AND duration <= 60 AND caller = (SELECT phone_number FROM people WHERE name = 'Ernest');
--name
--Berthold(Accomplice)

