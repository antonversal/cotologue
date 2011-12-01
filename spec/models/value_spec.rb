require 'spec_helper'

describe Value do
  it { should have_db_column(:name).of_type(:string).with_options(null: false) }

  it { should validate_presence_of(:name) }
end
