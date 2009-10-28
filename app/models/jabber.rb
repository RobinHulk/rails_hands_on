class Jabber < Address
  before_create :set_kind
  before_create :downcase_name

  def set_kind
    self.kind = ON_LINE
  end
 
  def downcase_name
    self.name=self.name.downcase
  end
end
