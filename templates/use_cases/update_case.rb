# frozen_string_literal: true

class {module_name}::UpdateCase
  def initialize(attributes)
    @form = ::{namespace}::{pascalcase_route_singular}Form.new(attributes)
  end

  def perform
    @form.save
    @form
  end
end