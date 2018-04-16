# frozen_string_literal: true
module Bonita
  module Bpm
    class Case < BaseModel
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
