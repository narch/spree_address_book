Spree.user_class.class_eval do
  has_many :addresses, -> { where(deleted_at: nil).order('created_at') }, class_name: 'Spree::Address'
end
