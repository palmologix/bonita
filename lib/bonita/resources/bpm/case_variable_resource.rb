# frozen_string_literal: true
module Bonita
  module Bpm
    # API reference : http://documentation.bonitasoft.com/?page=bpm-api#toc27
    class CaseVariableResource < ResourceKit::Resource
      include ErrorHandler

      resources do
        action :find do
          path 'bonita/API/bpm/caseVariable/:caseId/:variableName'
          verb :get
          handler(200) { |response| CaseVariableMapping.extract_single(response.body, :read) }
        end

        action :update do
          path 'bonita/API/bpm/caseVariable/:caseId/:variableName'
          verb :put
          body { |object| Bonita::Utils::UpdateHandler.new(object, CaseVariableMapping).call }
          handler(200) { |response| CaseVariableMapping.extract_single(response.body, :read) }
        end
      end
    end
  end
end
