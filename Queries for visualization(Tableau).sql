/*

Queries used for Tableau Project

*/

-- Sum of all expenses done by category SWEDBANK -- Table1

	SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 1
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 2)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 3)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 4)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 5)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 6)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 7)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 8)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 9)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 10)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 11)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 12)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 13)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 14)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 15)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 16)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 17)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 18)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 19)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 20)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 21)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 22)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM swedbank
		 WHERE swedbank.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 23)
ORDER BY 1

-- Total income on Swedbank -- Table2

SELECT swedbank.category_id,category, SUM(amount)
FROM swedbank
JOIN category
ON swedbank.category_id = category.category_id
WHERE swedbank.category_id = 6
GROUP BY swedbank.category_id, category

-- Expenses done every month without income SWEDBANK -- table3

	SELECT SUM(amount), TO_CHAR(
	TO_DATE (9::text, 'MM'), 'Mon21'
	) AS "Date" 
	FROM swedbank
	WHERE category_id != 6 
	AND transaction_date BETWEEN '2021-09-01' AND '2021-09-30' 
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (10::text, 'MM'), 'Mon21'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2021-10-01' AND '2021-10-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (11::text, 'MM'), 'Mon21'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2021-11-01' AND '2021-11-30')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (12::text, 'MM'), 'Mon21'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2021-12-01' AND '2021-12-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (1::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-01-01' AND '2022-01-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (2::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-02-01' AND '2022-02-28')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (3::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-03-01' AND '2022-03-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (4::text, 'MM'), 'Mon22'
	) AS "Month Name"
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-04-01' AND '2022-04-30')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (5::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-05-01' AND '2022-05-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (6::text, 'MM'),'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-06-01' AND '2022-06-30')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (7::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-07-01' AND '2022-07-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (8::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-08-01' AND '2022-08-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (9::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-09-01' AND '2022-09-30')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (10::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-10-01' AND '2022-10-31')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (11::text, 'MM'), 'Mon22'
	)
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-11-01' AND '2022-11-30')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (12::text, 'MM'), 'Mon22'
	) 
	FROM swedbank
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-12-01' AND '2022-12-31')
ORDER BY 2 DESC

-- Sum of all expenses done by category BOFA -- table4

	SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 1
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 2)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 3)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 4)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 5)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 6)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 7)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 8)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 9)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 10)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 11)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 12)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 13)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 14)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 15)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 16)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 17)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 18)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 19)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 20)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 21)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 22)
UNION
	(SELECT *,
		(SELECT SUM(amount)
		 FROM bofa
		 WHERE bofa.category_id = category.category_id) AS expend
	FROM category
	GROUP BY category_id
	HAVING category_id = 23)
ORDER BY category_id

-- Total income on BOFA -- table5

SELECT SUM(amount), category_id
FROM bofa
WHERE category_id = 6
GROUP BY category_id

-- Expenses done every month without income -- table6

SELECT SUM(amount), TO_CHAR(
	TO_DATE (10::text, 'MM'), 'Mon22'
	) AS "Date"
	FROM bofa
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-10-01' AND '2022-10-31'
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (11::text, 'MM'), 'Mon22'
	) 
	FROM bofa
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-11-01' AND '2022-11-30')
UNION 
	(SELECT SUM(amount), TO_CHAR(
	TO_DATE (12::text, 'MM'), 'Mon22'
	)
	FROM bofa
	WHERE category_id !=6
	AND transaction_date BETWEEN '2022-12-01' AND '2022-11-30')
ORDER BY 2 DESC
