class OrgPerson < ActiveRecord::Base
  ROLES = %w[admin exhibit_organizer participant banned]
  
  def roles=(roles)
    self.org_role = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end
  
  def roles
    ROLES.reject do |r|
      ((org_role.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end
  
  def is?(role)
    roles.include?(role.to_s)
  end

end
