require 'rails_helper'

RSpec.describe Meeting, :type => :model do
  context "validate meeting creation" do
    let(:meeting){ Meeting.new}
    it "should contain a name" do
      meeting.name = "valid meeting"
      meeting.date = Time.now
      expect(meeting.valid?).to be(true)
    end
    it "should contain a datetime" do
      meeting.date = Time.now
      meeting.name = "valid meeting"
      expect(meeting.valid?).to be(true)
    end

  end

  context "invalid meeting creation" do 
    let(:meeting){ Meeting.new}
    it "a blank name is invalid" do
      meeting.name = ""
      meeting.date = Time.now
      expect(meeting.valid?).to be(false) 
    end
    it "should contain  datetime" do
      meeting.date = ""
      meeting.name = "valid meeting"
      expect(meeting.valid?).to be(false)
    end
  end
end
