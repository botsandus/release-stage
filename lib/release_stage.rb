# frozen_string_literal: true

require "active_support/core_ext/module/delegation"
require "active_support/string_inquirer"

class ReleaseStage
  VALID_RELEASE_STAGES = %w[development review staging production].freeze

  class << self
    def current
      stage = ENV.fetch("RELEASE_STAGE", "development")

      raise "Invalid release stage #{stage}" unless VALID_RELEASE_STAGES.include?(stage)

      ActiveSupport::StringInquirer.new(stage)
    end

    delegate :development?, :review?, :staging?, :production?, to: :current
  end
end
