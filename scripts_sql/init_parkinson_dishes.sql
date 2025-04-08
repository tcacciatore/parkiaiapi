-- Create the "dishes" table
CREATE TABLE IF NOT EXISTS dishes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    score CHAR(1) CHECK (score IN ('A','B','C','D','E','F')),
    fiber TEXT,
    protein TEXT,
    fat TEXT,
    sodium TEXT,
    explanation TEXT,
    suggestion TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Insert sample Parkinson-friendly dish evaluations
INSERT INTO dishes (name, score, fiber, protein, fat, sodium, explanation, suggestion) VALUES
('Vegetable Soup', 'A', 'high', 'low', 'low', 'low',
 'Hydrating, rich in fiber, easy to swallow. Ideal for people with swallowing difficulties.',
 'Great for dinner. Add olive oil or quinoa for extra nutrients.'),

('Steak and Fries', 'D', 'low', 'high', 'high', 'medium',
 'High in animal protein (may interfere with L-Dopa) and fat. Low fiber, harder to digest.',
 'Replace fries with steamed vegetables. Opt for white meat or fish.'),

('Carrot Mash', 'B', 'medium', 'low', 'low', 'low',
 'Soft texture, easy to digest, and rich in beta-carotene.',
 'Add a drizzle of oil to improve vitamin absorption.'),

('Steamed Fish with Brown Rice', 'A', 'high', 'moderate', 'low', 'low',
 'Balanced meal, moderate protein, high fiber, easy to chew.',
 'Avoid salty sauces or creamy toppings.'),

('Raclette Cheese', 'E', 'low', 'high', 'high', 'high',
 'Very salty and fatty. Hard to digest and not compatible with certain medications.',
 'Limit to a small portion and serve with vegetables instead of cured meats.'),

('Banana-Oat Smoothie', 'A', 'high', 'low', 'low', 'low',
 'High in fiber, smooth, easy to consume. Helps with constipation.',
 'Don’t oversweeten. Add chia seeds for omega-3 boost.'),

('Four Cheese Pizza', 'E', 'low', 'high', 'high', 'high',
 'Very salty, fatty, low in fiber. Heavy for digestion.',
 'Limit to a small slice. Prefer a homemade vegetarian version.'),

('Veggie Omelet', 'B', 'medium', 'moderate', 'low', 'medium',
 'Good protein source. Veggies add vitamins and fiber.',
 'Don’t over-salt. Use minimal oil for cooking.'),

('Whole Wheat Pasta with Tomato Sauce', 'B', 'high', 'moderate', 'low', 'low',
 'High in fiber, good for digestion. Avoid heavy cream sauces.',
 'Add shredded vegetables or olive oil for extra nutrients.'),

('Plain Yogurt', 'C', 'low', 'moderate', 'low', 'low',
 'Good calcium source, easy to eat. Can interfere with some medications.',
 'Opt for plant-based yogurt if dairy interactions are an issue.');