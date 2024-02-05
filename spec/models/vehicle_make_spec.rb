require "rails_helper"

RSpec.describe VehicleMake, type: :model do
   it {should have_many(:model_types)}
end