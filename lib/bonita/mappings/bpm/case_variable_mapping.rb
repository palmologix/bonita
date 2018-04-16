# frozen_string_literal: true
module Bonita
  module Bpm
    class CaseVariableMapping
      include Kartograph::DSL

      kartograph do
        mapping CaseVariable

        scoped :read do
          property :description
          property :name
          property :value
          property :case_id
          property :type
        end
      end
    end
  end
end
