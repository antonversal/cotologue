# encoding: utf-8
class Product < ActiveRecord::Base
  # Includes

  # Before, after callbacks

  # Default scopes, default values (e.g. self.per_page =)

  # Associations: belongs_to > has_one > has_many > has_and_belongs_to_many
  belongs_to :section

  has_many :product_values
  has_many :values, through: :product_values

  # Delegates

  # Validations: presence > by type > validates
  validates_presence_of :name, :section
  # Other properties (e.g. accepts_nested_attributes_for)

  # Model dictionaries, state machine

  # Scopes
  class << self

  end

  # Other model methods

  def grouped_values
    self.values.includes(:filter).all.group_by(&:filter)
  end

  # Private methods (for example: custom validators)
end