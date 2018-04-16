# frozen_string_literal: true
module Bonita
  module Bpm
    class CaseVariable < BaseModel
      attribute :description
      attribute :name
      attribute :value
      attribute :case_id
      attribute :type
    end
  end
end
