Types::ScraperType = GraphQL::ObjectType.define do
  name 'Scraper'

  field :id, !types.ID
  field :title, !types.String
  field :desc, !types.String
  field :category, !types.String
  field :lat, !types.String
  field :lng, !types.String
  field :images, !types.String
end
