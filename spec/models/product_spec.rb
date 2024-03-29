require 'spec_helper'

describe Product do
  it { should have_db_column(:name).of_type(:string).with_options(:null => false) }
  it { should have_db_column(:description).of_type(:text) }
  it { should have_db_column(:section_id).of_type(:integer).with_options(:null => false) }

  it { should have_db_index(:section_id) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:section) }

  it { should belong_to(:section) }

  it { should have_many(:product_values) }
  it { should have_many(:values) }

end
