# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def devolve_el_chorizo(contact)
    [Contact.id.to_s, Contact.sign(contact)].join("-")
  end
end
