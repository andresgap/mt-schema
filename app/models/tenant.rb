class Tenant < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  after_create do |tenant|
    Apartment::Tenant.create(tenant.name)
  end

  after_destroy do |tenant|
    Apartment::Tenant.drop(tenant.name)
  end
end
