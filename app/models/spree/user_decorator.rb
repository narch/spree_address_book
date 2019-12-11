Spree.user_class.class_eval do
  has_many :addresses, -> { where(deleted_at: nil).order('priority desc, created_at asc') }, class_name: 'Spree::Address'
end
