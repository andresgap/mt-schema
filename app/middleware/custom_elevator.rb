class CustomElevator < Apartment::Elevators::Generic

  # @return {String} - The tenant to switch to
  def parse_tenant_name(request)
    # request is an instance of Rack::Request

    # example: look up some tenant from the db based on this request
    tenant_name = Tenant.first.name #SomeModel.from_request(request)

    return tenant_name
  end
end
