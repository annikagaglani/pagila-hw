/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT c.name, count(f.film_id) AS sum
FROM category c
JOIN film_category USING (category_id)
JOIN film f USING (film_id)
JOIN language l  USING (language_id)
WHERE l.name = 'English'
GROUP BY c.name
ORDER BY c.name;
