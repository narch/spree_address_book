Spree.user_class.class_eval do
  has_many :addresses, -> { where(deleted_at: nil).order('priority desc, created_at asc') }, class_name: 'Spree::Address'

  def set_default_address(address_id)
    addresses.update_all(priority: 0)
    Spree::Address.find(address_id).update_attribute(:priority, 1)
  end
end
