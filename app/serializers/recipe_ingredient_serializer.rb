class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :kind
end
