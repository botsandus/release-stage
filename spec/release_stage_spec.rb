# frozen_string_literal: true

require "spec_helper"

RSpec.describe ReleaseStage do
  describe ".current" do
    context "when RELEASE_STAGE is set" do
      it "returns the correct stage" do
        allow(ENV).to receive(:fetch).with("RELEASE_STAGE", "development").and_return("staging")
        expect(described_class.current).to eq(ActiveSupport::StringInquirer.new("staging"))
      end

      it "raises an error for an invalid stage" do
        allow(ENV).to receive(:fetch).with("RELEASE_STAGE", "development").and_return("invalid")
        expect { described_class.current }.to raise_error("Invalid release stage invalid")
      end
    end

    context "when RELEASE_STAGE is not set" do
      it "defaults to development" do
        allow(ENV).to receive(:fetch).with("RELEASE_STAGE", "development").and_return("development")
        expect(described_class.current).to eq(ActiveSupport::StringInquirer.new("development"))
      end
    end
  end

  describe "delegated methods" do
    it "delegates development? method" do
      allow(described_class).to receive(:current).and_return(ActiveSupport::StringInquirer.new("development"))
      expect(described_class).to be_development
    end

    it "delegates review? method" do
      allow(described_class).to receive(:current).and_return(ActiveSupport::StringInquirer.new("review"))
      expect(described_class).to be_review
    end

    it "delegates staging? method" do
      allow(described_class).to receive(:current).and_return(ActiveSupport::StringInquirer.new("staging"))
      expect(described_class).to be_staging
    end

    it "delegates production? method" do
      allow(described_class).to receive(:current).and_return(ActiveSupport::StringInquirer.new("production"))
      expect(described_class).to be_production
    end
  end
end
