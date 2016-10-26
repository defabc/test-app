require 'rails_helper'

RSpec.describe Event, :type => :model do

  describe "#name" do
    it { should validate_presence_of(:name) }
    it { validate_length_of(:name) }
  end

  describe "#place" do
    it { should validate_presence_of(:place) }
    it { should validate_length_of(:place) }
  end

  describe "#content" do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content) }
  end

  describe "#start_time" do
    it { should validate_presence_of(:start_time) }
  end

  describe "#end_time" do
    it { should validate_presence_of(:end_time) }
  end

  # describe "#name" do
  #
  #   context "nilの時" do
  #     let(:event) { Event.new(name: nil) }
  #
  #     it "validでないこと" do
  #       event.valid?
  #       expect(event.errors[:name]).to be_present
  #     end
  #   end
  #
  #   context "空白の時" do
  #     let(:event) { Event.new(name: "") }
  #
  #     it "validであること" do
  #       event.valid?
  #       expect(event.errors[:name]).to be_present
  #     end
  #   end
  #
  #   context "正しい文字列の時" do
  #     let(:event) { Event.new(name: "正しい文字列ただしくん")}
  #
  #     it "validである" do
  #       event.valid?
  #       expect(event.errors[:name]).to be_blank
  #     end
  #   end
  #
  #   context "50文字の時" do
  #     let(:event) { Event.new(name: "あ" * 50 ) }
  #
  #     it "validである" do
  #       event.valid?
  #       expect(event.errors[:naem]).to be_blank
  #     end
  #   end
  #
  #   context "51文字の時" do
  #     let(:event) { Event.new(name: "い" * 51) }
  #
  #     it "invalidである" do
  #       event.valid?
  #       expect(event.errors[:name]).to be_present
  #     end
  #   end
  # end
end
