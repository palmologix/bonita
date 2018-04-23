# frozen_string_literal: true
module Bonita
  module Bpm
    class CaseMapping
      include Kartograph::DSL

      kartograph do
        mapping Case

        scoped :read do
          property :id
          property :start
          property :started_by
          property :end_date
          property :state
          property :activeFlowNodes
          property :failedFlowNodes
        end
      end
    end
  end
end
