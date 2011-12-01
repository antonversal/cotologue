require 'spec_helper'

describe ProductValues do
  it { should have_db_column(:product_id).of_type(:integer).with_options(null: false)}
  it { should have_db_column(:value_id).of_type(:integer).with_options(null: false)}

  it { should have_db_index(:product_id) }
  it { should have_db_index(:value_id) }
  it { should have_db_index([:product_id, :value_id]) }
end
