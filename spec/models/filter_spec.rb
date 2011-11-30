require 'spec_helper'

describe Filter do
  it{ should have_db_column(:name).of_type(:string).with_options(null: false) }

  it{ should validate_presence_of(:name)}

  context "exists" do
    before(:each){ Factory(:filter) }

    it{ should validate_uniqueness_of(:name)}
  end
end
