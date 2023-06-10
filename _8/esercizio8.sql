select * from ingredient;

# Constraint per il nome dell'ingrediente che deve essere unico e non un duplicato
alter table ingredient
add constraint unique(NAME);

# Constraint per il nome dell'ingrediente che non deve essere nullo
alter table ingredient
MODIFY NAME VARCHAR(255) not null;

# Constraint per l'ingrediente contenente lattosio che non dovrebbe essere nullo
alter table ingredient 
modify CONTAINS_LACTOSE BOOLEAN not null;

# Constraint per l'ingrediente vegetariano che non dovrebbe essere nullo
alter table ingredient
modify VEGETARIAN BOOLEAN not null;

# Constraint per l'ingrediente vegano che non dovrebbe essere nullo
alter table ingredient
modify VEGAN BOOLEAN not null;

# Constraint per l'ingrediente senza glutine che non dovrebbe essere nullo
alter table ingredient
modify GLUTEN_FREE BOOLEAN not null;