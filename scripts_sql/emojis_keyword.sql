
-- Création de la table keywords si besoin
CREATE TABLE IF NOT EXISTS keywords (
    id SERIAL PRIMARY KEY,
    keyword TEXT NOT NULL,
    emoji TEXT NOT NULL
);

-- Insertion enrichie de mots-clés
INSERT INTO keywords (keyword, emoji) VALUES
('burger', '🍔'),
('boeuf', '🥩'),
('steak', '🥩'),
('poulet', '🍗'),
('poisson', '🐟'),
('saumon', '🐟'),
('thon', '🐟'),
('crevette', '🦐'),
('crabe', '🦀'),
('veau', '🐄'),
('agneau', '🐑'),
('canard', '🦆'),
('dinde', '🦃'),
('riz', '🍚'),
('couscous', '🍚'),
('pâtes', '🍝'),
('spaghetti', '🍝'),
('lasagne', '🍝'),
('pizza', '🍕'),
('légumes', '🥦'),
('brocoli', '🥦'),
('carotte', '🥕'),
('courgette', '🥒'),
('aubergine', '🍆'),
('épinard', '🥬'),
('salade', '🥗'),
('soupe', '🥣'),
('velouté', '🥣'),
('tarte', '🥧'),
('quiche', '🥧'),
('chocolat', '🍫'),
('gâteau', '🍰'),
('dessert', '🍰'),
('glace', '🍨'),
('pomme', '🍎'),
('banane', '🍌'),
('fraise', '🍓'),
('ananas', '🍍'),
('melon', '🍈'),
('raisin', '🍇'),
('fruit', '🍎'),
('pain', '🍞'),
('sandwich', '🥪'),
('tomate', '🍅'),
('oignon', '🧅'),
('champignon', '🍄'),
('haricot', '🫘'),
('lentille', '🫘'),
('pois chiche', '🧆'),
('curry', '🍛'),
('omelette', '🍳'),
('café', '☕'),
('thé', '🍵'),
('eau', '💧'),
('jus', '🧃'),
('fromage', '🧀');
-- Insertion enrichie de desserts dans keywords

INSERT INTO keywords (keyword, emoji) VALUES ('tiramisu', '🍰☕️');
INSERT INTO keywords (keyword, emoji) VALUES ('mousse au chocolat', '🍫🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('éclair au chocolat', '🍫🍩');
INSERT INTO keywords (keyword, emoji) VALUES ('crêpe au chocolat', '🥞🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('crêpe au sucre', '🥞🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte aux pommes', '🥧🍎');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte au citron', '🥧🍋');
INSERT INTO keywords (keyword, emoji) VALUES ('fondant au chocolat', '🍫🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('glace vanille', '🍦');
INSERT INTO keywords (keyword, emoji) VALUES ('glace chocolat', '🍦🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('sorbet framboise', '🍧🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('sorbet citron', '🍧🍋');
INSERT INTO keywords (keyword, emoji) VALUES ('baba au rhum', '🍰🍹');
INSERT INTO keywords (keyword, emoji) VALUES ('pain perdu', '🍞🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('macaron', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('cheesecake', '🍰🧀');
INSERT INTO keywords (keyword, emoji) VALUES ('crème brûlée', '🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('gâteau au yaourt', '🍰🥛');
INSERT INTO keywords (keyword, emoji) VALUES ('gâteau aux carottes', '🥕🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('salade de fruits', '🍎🍓🍍');
INSERT INTO keywords (keyword, emoji) VALUES ('panna cotta', '🍮🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('mochi', '🍡');
INSERT INTO keywords (keyword, emoji) VALUES ('baklava', '🍯🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('kulfi', '🍦🥛');
INSERT INTO keywords (keyword, emoji) VALUES ('beignet', '🍩');
INSERT INTO keywords (keyword, emoji) VALUES ('flan', '🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('riz au lait', '🍚🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('gâteau basque', '🍰🍒');
INSERT INTO keywords (keyword, emoji) VALUES ('cannelé', '🍮🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte aux fraises', '🥧🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('gaufre', '🧇');
INSERT INTO keywords (keyword, emoji) VALUES ('brownie', '🍫🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('compote de pommes', '🍎🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('financier', '🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('clafoutis', '🍒🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('galette des rois', '👑🥧');
INSERT INTO keywords (keyword, emoji) VALUES ('mont blanc', '🍰🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('parfait glacé', '🍦🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('sundae', '🍨🍒');
INSERT INTO keywords (keyword, emoji) VALUES ('fraisier', '🍓🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('tartelette aux framboises', '🥧🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('mille-feuille', '🍰🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('nougat', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('charlotte aux fraises', '🍓🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('pudding', '🍮🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('pavlova', '🍓🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('cassata', '🍰🍒');
INSERT INTO keywords (keyword, emoji) VALUES ('pastel de nata', '🍮🥧');
INSERT INTO keywords (keyword, emoji) VALUES ('zeppole', '🍩🍒');
INSERT INTO keywords (keyword, emoji) VALUES ('omelette norvégienne', '🍦🔥');
INSERT INTO keywords (keyword, emoji) VALUES ('mangue sticky rice', '🥭🍚');
INSERT INTO keywords (keyword, emoji) VALUES ('coconut cake', '🥥🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('banana bread', '🍌🍞');
INSERT INTO keywords (keyword, emoji) VALUES ('jalebi', '🍬🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte tatin', '🥧🍎');
INSERT INTO keywords (keyword, emoji) VALUES ('biscuit sablé', '🍪');
INSERT INTO keywords (keyword, emoji) VALUES ('tartelette au citron', '🥧🍋');
INSERT INTO keywords (keyword, emoji) VALUES ('trifle', '🍰🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('yogourt glacé', '🍦🥛');
INSERT INTO keywords (keyword, emoji) VALUES ('profiterole', '🍩🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('zephyr', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('sweet bean paste bun', '🍡');
INSERT INTO keywords (keyword, emoji) VALUES ('matcha cake', '🍰🍵');
INSERT INTO keywords (keyword, emoji) VALUES ('dango', '🍡');
INSERT INTO keywords (keyword, emoji) VALUES ('malva pudding', '🍰🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('meringue', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('coconut ice cream', '🍦🥥');
INSERT INTO keywords (keyword, emoji) VALUES ('muffin aux myrtilles', '🫐🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('sorbet mangue', '🍧🥭');
INSERT INTO keywords (keyword, emoji) VALUES ('lemon bar', '🍋🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('semifreddo', '🍦🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('croissant au chocolat', '🥐🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('croissant', '🥐');
INSERT INTO keywords (keyword, emoji) VALUES ('gelato', '🍦');
INSERT INTO keywords (keyword, emoji) VALUES ('brigadeiro', '🍬🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('pastiera', '🍰🍊');
INSERT INTO keywords (keyword, emoji) VALUES ('scone', '🍞🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('sachertorte', '🍫🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('tulumba', '🍩🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('picarones', '🍩🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('churros', '🍩🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('torrone', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('suspiro de limeña', '🍮🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('tiramisu matcha', '🍰🍵');
INSERT INTO keywords (keyword, emoji) VALUES ('coconut bar', '🥥🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('fruit tart', '🥧🍇');
INSERT INTO keywords (keyword, emoji) VALUES ('toffee pudding', '🍮🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('pouding chômeur', '🍮🍯');
INSERT INTO keywords (keyword, emoji) VALUES ('eclair au café', '🍩☕️');
INSERT INTO keywords (keyword, emoji) VALUES ('flan pâtissier', '🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('moelleux au chocolat', '🍫🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('charlotte au chocolat', '🍫🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('parfait mangue', '🍦🥭');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte noix de pécan', '🥧🌰');


-- Variantes ultra enrichies emoji ↔ mots-clés

INSERT INTO keywords (keyword, emoji) VALUES ('pomme verte', '🍏');
INSERT INTO keywords (keyword, emoji) VALUES ('pomme', '🍎');
INSERT INTO keywords (keyword, emoji) VALUES ('pommes rouges', '🍎');
INSERT INTO keywords (keyword, emoji) VALUES ('pommes', '🍎');
INSERT INTO keywords (keyword, emoji) VALUES ('poire', '🍐');
INSERT INTO keywords (keyword, emoji) VALUES ('poires', '🍐');
INSERT INTO keywords (keyword, emoji) VALUES ('orange', '🍊');
INSERT INTO keywords (keyword, emoji) VALUES ('oranges', '🍊');
INSERT INTO keywords (keyword, emoji) VALUES ('citron', '🍋');
INSERT INTO keywords (keyword, emoji) VALUES ('citrons', '🍋');
INSERT INTO keywords (keyword, emoji) VALUES ('banane', '🍌');
INSERT INTO keywords (keyword, emoji) VALUES ('bananes', '🍌');
INSERT INTO keywords (keyword, emoji) VALUES ('pastèque', '🍉');
INSERT INTO keywords (keyword, emoji) VALUES ('pastèques', '🍉');
INSERT INTO keywords (keyword, emoji) VALUES ('raisin', '🍇');
INSERT INTO keywords (keyword, emoji) VALUES ('raisins', '🍇');
INSERT INTO keywords (keyword, emoji) VALUES ('fraise', '🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('fraises', '🍓');
INSERT INTO keywords (keyword, emoji) VALUES ('myrtille', '🫐');
INSERT INTO keywords (keyword, emoji) VALUES ('myrtilles', '🫐');
INSERT INTO keywords (keyword, emoji) VALUES ('kiwi', '🥝');
INSERT INTO keywords (keyword, emoji) VALUES ('kiwis', '🥝');
INSERT INTO keywords (keyword, emoji) VALUES ('ananas', '🍍');
INSERT INTO keywords (keyword, emoji) VALUES ('mangue', '🥭');
INSERT INTO keywords (keyword, emoji) VALUES ('mangues', '🥭');
INSERT INTO keywords (keyword, emoji) VALUES ('cerise', '🍒');
INSERT INTO keywords (keyword, emoji) VALUES ('cerises', '🍒');
INSERT INTO keywords (keyword, emoji) VALUES ('pêche', '🍑');
INSERT INTO keywords (keyword, emoji) VALUES ('pêches', '🍑');
INSERT INTO keywords (keyword, emoji) VALUES ('noix de coco', '🥥');
INSERT INTO keywords (keyword, emoji) VALUES ('coco', '🥥');
INSERT INTO keywords (keyword, emoji) VALUES ('brocoli', '🥦');
INSERT INTO keywords (keyword, emoji) VALUES ('épinard', '🥬');
INSERT INTO keywords (keyword, emoji) VALUES ('chou vert', '🥬');
INSERT INTO keywords (keyword, emoji) VALUES ('blette', '🥬');
INSERT INTO keywords (keyword, emoji) VALUES ('courgette', '🥒');
INSERT INTO keywords (keyword, emoji) VALUES ('cornichon', '🥒');
INSERT INTO keywords (keyword, emoji) VALUES ('maïs', '🌽');
INSERT INTO keywords (keyword, emoji) VALUES ('épi de maïs', '🌽');
INSERT INTO keywords (keyword, emoji) VALUES ('carotte', '🥕');
INSERT INTO keywords (keyword, emoji) VALUES ('carottes râpées', '🥕');
INSERT INTO keywords (keyword, emoji) VALUES ('ail', '🧄');
INSERT INTO keywords (keyword, emoji) VALUES ('oignon', '🧅');
INSERT INTO keywords (keyword, emoji) VALUES ('échalote', '🧅');
INSERT INTO keywords (keyword, emoji) VALUES ('aubergine', '🍆');
INSERT INTO keywords (keyword, emoji) VALUES ('tomate', '🍅');
INSERT INTO keywords (keyword, emoji) VALUES ('tomates cerises', '🍅');
INSERT INTO keywords (keyword, emoji) VALUES ('pomme de terre', '🥔');
INSERT INTO keywords (keyword, emoji) VALUES ('patate', '🥔');
INSERT INTO keywords (keyword, emoji) VALUES ('pommes de terre', '🥔');
INSERT INTO keywords (keyword, emoji) VALUES ('patate douce', '🍠');
INSERT INTO keywords (keyword, emoji) VALUES ('croissant', '🥐');
INSERT INTO keywords (keyword, emoji) VALUES ('bagel', '🥯');
INSERT INTO keywords (keyword, emoji) VALUES ('pain', '🍞');
INSERT INTO keywords (keyword, emoji) VALUES ('baguette', '🍞');
INSERT INTO keywords (keyword, emoji) VALUES ('pain complet', '🍞');
INSERT INTO keywords (keyword, emoji) VALUES ('pain blanc', '🥖');
INSERT INTO keywords (keyword, emoji) VALUES ('pain tradition', '🥖');
INSERT INTO keywords (keyword, emoji) VALUES ('bretzel', '🥨');
INSERT INTO keywords (keyword, emoji) VALUES ('fromage', '🧀');
INSERT INTO keywords (keyword, emoji) VALUES ('emmental', '🧀');
INSERT INTO keywords (keyword, emoji) VALUES ('gruyère', '🧀');
INSERT INTO keywords (keyword, emoji) VALUES ('comté', '🧀');
INSERT INTO keywords (keyword, emoji) VALUES ('chèvre', '🧀');
INSERT INTO keywords (keyword, emoji) VALUES ('œuf', '🥚');
INSERT INTO keywords (keyword, emoji) VALUES ('oeuf', '🥚');
INSERT INTO keywords (keyword, emoji) VALUES ('œufs', '🥚');
INSERT INTO keywords (keyword, emoji) VALUES ('oeufs', '🥚');
INSERT INTO keywords (keyword, emoji) VALUES ('omelette', '🍳');
INSERT INTO keywords (keyword, emoji) VALUES ('œufs au plat', '🍳');
INSERT INTO keywords (keyword, emoji) VALUES ('œufs brouillés', '🍳');
INSERT INTO keywords (keyword, emoji) VALUES ('bacon', '🥓');
INSERT INTO keywords (keyword, emoji) VALUES ('lard', '🥓');
INSERT INTO keywords (keyword, emoji) VALUES ('steak', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('boeuf', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('onglet', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('entrecôte', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('bavette', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('rumsteck', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('filet', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('côte de boeuf', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('tournedos', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('roast-beef', '🥩');
INSERT INTO keywords (keyword, emoji) VALUES ('poulet', '🍗');
INSERT INTO keywords (keyword, emoji) VALUES ('cuisses de poulet', '🍗');
INSERT INTO keywords (keyword, emoji) VALUES ('ailes de poulet', '🍗');
INSERT INTO keywords (keyword, emoji) VALUES ('blanc de poulet', '🍗');
INSERT INTO keywords (keyword, emoji) VALUES ('côtelette', '🍖');
INSERT INTO keywords (keyword, emoji) VALUES ('jarret', '🍖');
INSERT INTO keywords (keyword, emoji) VALUES ('travers', '🍖');
INSERT INTO keywords (keyword, emoji) VALUES ('osso buco', '🍖');
INSERT INTO keywords (keyword, emoji) VALUES ('hot dog', '🌭');
INSERT INTO keywords (keyword, emoji) VALUES ('burger', '🍔');
INSERT INTO keywords (keyword, emoji) VALUES ('hamburger', '🍔');
INSERT INTO keywords (keyword, emoji) VALUES ('cheeseburger', '🍔');
INSERT INTO keywords (keyword, emoji) VALUES ('frites', '🍟');
INSERT INTO keywords (keyword, emoji) VALUES ('pommes frites', '🍟');
INSERT INTO keywords (keyword, emoji) VALUES ('pizza', '🍕');
INSERT INTO keywords (keyword, emoji) VALUES ('margherita', '🍕');
INSERT INTO keywords (keyword, emoji) VALUES ('4 fromages', '🍕');
INSERT INTO keywords (keyword, emoji) VALUES ('reine', '🍕');
INSERT INTO keywords (keyword, emoji) VALUES ('sandwich', '🥪');
INSERT INTO keywords (keyword, emoji) VALUES ('club sandwich', '🥪');
INSERT INTO keywords (keyword, emoji) VALUES ('kebab', '🥙');
INSERT INTO keywords (keyword, emoji) VALUES ('pita', '🥙');
INSERT INTO keywords (keyword, emoji) VALUES ('falafel', '🧆');
INSERT INTO keywords (keyword, emoji) VALUES ('taco', '🌮');
INSERT INTO keywords (keyword, emoji) VALUES ('tacos', '🌮');
INSERT INTO keywords (keyword, emoji) VALUES ('burrito', '🌯');
INSERT INTO keywords (keyword, emoji) VALUES ('salade', '🥗');
INSERT INTO keywords (keyword, emoji) VALUES ('salade verte', '🥗');
INSERT INTO keywords (keyword, emoji) VALUES ('salade composée', '🥗');
INSERT INTO keywords (keyword, emoji) VALUES ('pâtes', '🍝');
INSERT INTO keywords (keyword, emoji) VALUES ('spaghetti', '🍝');
INSERT INTO keywords (keyword, emoji) VALUES ('tagliatelles', '🍝');
INSERT INTO keywords (keyword, emoji) VALUES ('penne', '🍝');
INSERT INTO keywords (keyword, emoji) VALUES ('lasagnes', '🍝');
INSERT INTO keywords (keyword, emoji) VALUES ('ramen', '🍜');
INSERT INTO keywords (keyword, emoji) VALUES ('nouilles japonaises', '🍜');
INSERT INTO keywords (keyword, emoji) VALUES ('potage', '🍲');
INSERT INTO keywords (keyword, emoji) VALUES ('ragoût', '🍲');
INSERT INTO keywords (keyword, emoji) VALUES ('curry', '🍛');
INSERT INTO keywords (keyword, emoji) VALUES ('curry de légumes', '🍛');
INSERT INTO keywords (keyword, emoji) VALUES ('sushi', '🍣');
INSERT INTO keywords (keyword, emoji) VALUES ('maki', '🍣');
INSERT INTO keywords (keyword, emoji) VALUES ('nigiri', '🍣');
INSERT INTO keywords (keyword, emoji) VALUES ('crevette', '🍤');
INSERT INTO keywords (keyword, emoji) VALUES ('crevettes', '🍤');
INSERT INTO keywords (keyword, emoji) VALUES ('onigiri', '🍙');
INSERT INTO keywords (keyword, emoji) VALUES ('riz', '🍚');
INSERT INTO keywords (keyword, emoji) VALUES ('riz basmati', '🍚');
INSERT INTO keywords (keyword, emoji) VALUES ('riz cantonais', '🍚');
INSERT INTO keywords (keyword, emoji) VALUES ('cracker', '🍘');
INSERT INTO keywords (keyword, emoji) VALUES ('biscuit de riz', '🍘');
INSERT INTO keywords (keyword, emoji) VALUES ('kamaboko', '🍥');
INSERT INTO keywords (keyword, emoji) VALUES ('gâteau lune', '🥮');
INSERT INTO keywords (keyword, emoji) VALUES ('brochette', '🍢');
INSERT INTO keywords (keyword, emoji) VALUES ('yakitori', '🍢');
INSERT INTO keywords (keyword, emoji) VALUES ('dango', '🍡');
INSERT INTO keywords (keyword, emoji) VALUES ('sorbet', '🍧');
INSERT INTO keywords (keyword, emoji) VALUES ('granité', '🍧');
INSERT INTO keywords (keyword, emoji) VALUES ('glace', '🍨');
INSERT INTO keywords (keyword, emoji) VALUES ('glace artisanale', '🍨');
INSERT INTO keywords (keyword, emoji) VALUES ('glace', '🍦');
INSERT INTO keywords (keyword, emoji) VALUES ('glace vanille', '🍦');
INSERT INTO keywords (keyword, emoji) VALUES ('cornet', '🍦');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte', '🥧');
INSERT INTO keywords (keyword, emoji) VALUES ('tartelette', '🥧');
INSERT INTO keywords (keyword, emoji) VALUES ('tarte aux fruits', '🥧');
INSERT INTO keywords (keyword, emoji) VALUES ('gâteau', '🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('fondant', '🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('moelleux', '🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('génoise', '🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('cheesecake', '🍰');
INSERT INTO keywords (keyword, emoji) VALUES ('gâteau anniversaire', '🎂');
INSERT INTO keywords (keyword, emoji) VALUES ('cupcake', '🧁');
INSERT INTO keywords (keyword, emoji) VALUES ('flan', '🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('crème caramel', '🍮');
INSERT INTO keywords (keyword, emoji) VALUES ('sucette', '🍭');
INSERT INTO keywords (keyword, emoji) VALUES ('bonbon', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('caramel', '🍬');
INSERT INTO keywords (keyword, emoji) VALUES ('chocolat', '🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('ganache', '🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('tablette de chocolat', '🍫');
INSERT INTO keywords (keyword, emoji) VALUES ('popcorn', '🍿');
INSERT INTO keywords (keyword, emoji) VALUES ('donut', '🍩');
INSERT INTO keywords (keyword, emoji) VALUES ('beignet', '🍩');
INSERT INTO keywords (keyword, emoji) VALUES ('cookie', '🍪');
INSERT INTO keywords (keyword, emoji) VALUES ('biscuit', '🍪');
INSERT INTO keywords (keyword, emoji) VALUES ('lait', '🥛');
INSERT INTO keywords (keyword, emoji) VALUES ('café', '☕');
INSERT INTO keywords (keyword, emoji) VALUES ('expresso', '☕');
INSERT INTO keywords (keyword, emoji) VALUES ('latte', '☕');
INSERT INTO keywords (keyword, emoji) VALUES ('thé', '🍵');
INSERT INTO keywords (keyword, emoji) VALUES ('matcha', '🍵');
INSERT INTO keywords (keyword, emoji) VALUES ('jus', '🧃');
INSERT INTO keywords (keyword, emoji) VALUES ('jus d’orange', '🧃');
INSERT INTO keywords (keyword, emoji) VALUES ('jus de pomme', '🧃');
INSERT INTO keywords (keyword, emoji) VALUES ('soda', '🥤');
INSERT INTO keywords (keyword, emoji) VALUES ('cola', '🥤');
INSERT INTO keywords (keyword, emoji) VALUES ('bubble tea', '🧋');
INSERT INTO keywords (keyword, emoji) VALUES ('saké', '🍶');
INSERT INTO keywords (keyword, emoji) VALUES ('bière', '🍺');
INSERT INTO keywords (keyword, emoji) VALUES ('bières', '🍻');
INSERT INTO keywords (keyword, emoji) VALUES ('vin', '🍷');
INSERT INTO keywords (keyword, emoji) VALUES ('champagne', '🥂');
INSERT INTO keywords (keyword, emoji) VALUES ('cocktail', '🍸');
INSERT INTO keywords (keyword, emoji) VALUES ('cocktail rhum', '🍹');
INSERT INTO keywords (keyword, emoji) VALUES ('bouteille champagne', '🍾');