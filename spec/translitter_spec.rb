# frozen_string_literal: true

RSpec.describe Translitter do
  it "has a version number" do
    expect(described_class::VERSION).not_to be_nil
  end

  it "transliterates using the default rules" do
    expect(described_class.new.transliterate('åaÞèŦ')).to eq('aaTheT')
  end

  it "does not transliterate using the default rules when the default rules are disabled and uses a replacement" do
    expect(described_class.new(default_rules: false).transliterate('åaÞèŦ')).to eq('?a???')
    expect(described_class.new(default_rules: false).transliterate('åaÞèŦ', replacement: 'x')).to eq('xaxxx')
  end

  it "transliterates using the custom rules and default rules" do
    translitter = described_class.new(custom_rules: { 'Ä' => 'Ae', 'ü' => 'ue' })

    expect(translitter.transliterate('åÄaÞèŦü')).to eq('aAeaTheTue')
  end
end
