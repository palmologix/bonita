# frozen_string_literal: true
module Bonita
  module Bpm
    class TimerEventTriggerMapping
      include Kartograph::DSL

      kartograph do
        mapping TimerEventTrigger

        scoped :read do
          property :id
          property :eventInstanceId
          property :executionDate
          property :eventInstanceName
        end
      end
    end
  end
end
