require "rails_helper"

RSpec.describe ModelType do
   it {should belong_to(:vehicle_make)}
end