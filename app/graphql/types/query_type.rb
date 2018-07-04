Types::QueryType = GraphQL::ObjectType.define do

  name 'Query'

  field :allSpots, !types[Types::ScraperType] do
    resolve -> (obj, args, ctx) { Scraper.all }
  end
end

