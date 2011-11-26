require 'spec_helper'

describe Section do
  it { should have_db_column(:name).of_type(:string).with_options(:null => false) }
  it { should have_db_column(:description).of_type(:string) }

  it { should validate_presence_of(:name)}
end
