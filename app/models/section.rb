class Section < ActiveRecord::Base

  attr_accessible :name, :description
  # Includes

  # Before, after callbacks

  # Default scopes, default values (e.g. self.per_page =)

  # Associations: belongs_to > has_one > has_many > has_and_belongs_to_many

  # Delegates

  # Validations: presence > by type > validates
  validates_presence_of :name
  # Other properties (e.g. accepts_nested_attributes_for)

  # Model dictionaries, state machine

  # Scopes
  class << self

  end

  # Other model methods

  # Private methods (for example: custom validators)
end
