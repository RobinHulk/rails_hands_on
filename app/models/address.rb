class Address < ActiveRecord::Base
  include StiExtensions
  AVAILABLE_TYPES=[['Twitter','Twitter'],['Gtalk','Gtalk'],['Jabber','Jabber']]
  belongs_to :contact
  validates_presence_of :name

  named_scope :twitter, :conditions => {:type => 'Twitter'}
end
