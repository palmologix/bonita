# frozen_string_literal: true
module Bonita
  module Bpm
    # API reference : http://documentation.bonitasoft.com/?page=bpm-api#toc27
    class TimerEventTriggerResource < ResourceKit::Resource
      include ErrorHandler

      resources do
        action :search do
          path 'bonita/API/bpm/timerEventTrigger'
          query_keys :caseId, :p, :c
          verb :get
          handler(200) { |response| TimerEventTriggerMapping.extract_collection(response.body, :read) }
        end

        action :update do
          path 'bonita/API/bpm/timerEventTrigger/:id'
          verb :put
          body { |object| Bonita::Utils::UpdateHandler.new(object, TimerEventTriggerMapping).call }
          handler(200) { |response| TimerEventTriggerMapping.extract_single(response.body, :read) }
        end
      end
    end
  end
end
