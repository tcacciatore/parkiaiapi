class Dish:
    def __init__(self, id, name, score, fat_level, fiber_level, protein_level, sodium_level, preparation_method, dish_type, diet_type, created_at):
        self.id = id
        self.name = name
        self.score = score
        self.fat_level = fat_level
        self.fiber_level = fiber_level
        self.protein_level = protein_level
        self.sodium_level = sodium_level
        self.preparation_method = preparation_method
        self.dish_type = dish_type
        self.diet_type = diet_type
        self.created_at = created_at

    def to_dict(self):
        """
        Convertit l'objet Dish en dictionnaire.
        """
        return {
            "id": self.id,
            "name": self.name,
            "score": self.score,
            "fat_level": self.fat_level,
            "fiber_level": self.fiber_level,
            "protein_level": self.protein_level,
            "sodium_level": self.sodium_level,
            "preparation_method": self.preparation_method,
            "dish_type": self.dish_type,
            "diet_type": self.diet_type,
            "created_at": self.created_at
        }

    def __repr__(self):
        return f"<Dish {self.name} (id={self.id}, score={self.score})>"