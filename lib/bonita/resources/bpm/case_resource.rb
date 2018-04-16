# frozen_string_literal: true
module Bonita
  module Bpm
    # API reference : http://documentation.bonitasoft.com/?page=bpm-api#toc27
    class CaseResource < ResourceKit::Resource
      include ErrorHandler

      resources do
        action :find do
          path 'bonita/API/bpm/case/:caseId'
          verb :get
          handler(200) { |response| CaseMapping.extract_single(response.body, :read) }
        end
      end
    end
  end
end
