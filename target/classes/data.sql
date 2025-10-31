INSERT INTO categories (NAME) VALUES ('In-House Production');
INSERT INTO categories (NAME) VALUES ('National');
INSERT INTO categories (NAME) VALUES ('Imported');
INSERT INTO categories (NAME) VALUES ('Premium');

INSERT INTO products (NAME, DESCRIPTION, PRICE, CATEGORY_ID, PROMOTION, NEW_PRODUCT)
VALUES ('Eco Vision Glasses', 'Sustainable in-house manufactured eyeglasses made from recycled materials.', 120.00, 1, true, false);

-- National
INSERT INTO products (NAME, DESCRIPTION, PRICE, CATEGORY_ID, PROMOTION, NEW_PRODUCT)
VALUES ('Classic Vision', 'Popular Brazilian-made frame with lightweight design and UV protection.', 90.00, 2, false, false);

-- Imported
INSERT INTO products (NAME, DESCRIPTION, PRICE, CATEGORY_ID, PROMOTION, NEW_PRODUCT)
VALUES ('RaySight Elite', 'Imported Italian acetate frame with polarized lenses.', 250.00, 3, true, false);

-- Premium
INSERT INTO products (NAME, DESCRIPTION, PRICE, CATEGORY_ID, PROMOTION, NEW_PRODUCT)
VALUES ('LuxOptic Signature', 'Premium titanium frame with anti-glare coating and adaptive lenses.', 420.00, 4, false, true);
