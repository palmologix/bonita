# frozen_string_literal: true
module Bonita
  module Bpm
    class CaseMapping
      include Kartograph::DSL

      kartograph do
        mapping Case

        scoped :read do
          attribute :id
          attribute :start
          attribute :started_by
          attribute :end_date
          attribute :state
          attribute :activeFlowNodes
          attribute :failedFlowNodes
        end
      end
    end
  end
end
