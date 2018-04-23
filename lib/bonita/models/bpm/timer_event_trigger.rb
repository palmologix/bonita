# frozen_string_literal: true
module Bonita
  module Bpm
    class TimerEventTrigger < BaseModel
      attribute :id
      attribute :eventInstanceId
      attribute :executionDate
      attribute :eventInstanceName
    end
  end
end
