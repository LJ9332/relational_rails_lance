require "rails_helper"

RSpec.describe ModelType do
   describe 'relationships' do
      it {should belong_to(:vehicle_make)}
   end
end