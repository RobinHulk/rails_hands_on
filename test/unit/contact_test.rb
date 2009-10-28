require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

class ContactTest < ActiveSupport::TestCase
  describe "Contact" do

    it "should validates uniqueness of email" do
      @contact = Contact.make_unsaved
      @contact.email = nil
      @contact.should_not be_valid
    end
    it "should validates uniqueness of first name" do
      @contact = Contact.make_unsaved
      @contact.first_name = nil
      @contact.should_not be_valid
    end
    it "should validates uniqueness of last name" do
      @contact = Contact.make_unsaved
      @contact.last_name = nil
      @contact.should_not be_valid
    end
  end
end

