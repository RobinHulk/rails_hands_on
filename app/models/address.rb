class Address < ActiveRecord::Base
  include StiExtensions
  OFF_LINE="Off line"
  ON_LINE="On line"
  AVAILABLE_TYPES=[['Twitter','Twitter'],['Gtalk','Gtalk'],['Jabber','Jabber']]
  belongs_to :contact
  validates_presence_of :name
  named_scope :twitter, :conditions => {:type => 'Twitter'}
  #AVAILABLE_TYPES.each do |address_type|
  #  named_scope.address_type.last.underscore.to_sym
  #  :conditions => {:type => }
  #end
  named_scope :on_line, :conditions => {:kind => ON_LINE}
  named_scope :off_line, :conditions => {:kind => OFF_LINE}
end
