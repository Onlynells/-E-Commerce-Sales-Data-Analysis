
SELECT *
FROM products;

-- Top 10 most reviewed products
SELECT product_name, rating_count
FROM products
ORDER BY rating_count DESC
LIMIT 10;

-- category with the highest average rating
SELECT category, AVG(rating) AS avg_rating
FROM products
GROUP BY category
ORDER BY avg_rating DESC
LIMIT 1;

-- Identify products with a discount greater than 50%. 
SELECT product_name, discount_percentage
FROM products
WHERE discount_percentage > 50
ORDER BY discount_percentage DESC;

-- List the top 5 best-selling categories (based on the number of reviews).
SELECT category, SUM(rating_count) AS total_reviews
FROM products
GROUP BY category
ORDER BY total_reviews DESC