class Post < ApplicationRecord
  belongs_to :user

  enum visibility: {
    public: 'public',
    private: 'private',
    friends_only: 'friends_only'
  }

  validates :visibility, inclusion: { in: visibilities.keys }
end
