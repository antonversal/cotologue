require 'spec_helper'

describe Value do
  it { should have_db_column(:name).of_type(:string).with_options(null: false) }
  it { should have_db_column(:filter_id).of_type(:integer).with_options(null: false) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:filter) }

  it { should have_many(:product_values) }
  it { should have_many(:products) }


end
