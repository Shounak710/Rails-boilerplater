# frozen_string_literal: true

class {module_name}::CreateCase
  def initialize(attributes)
    @form = ::{class_namespace}::{pascalcase_route_singular}Form.new(attributes)
  end

  def perform
    @form.save
    @form
  end
end