class User < ActiveRecord::Base
    has_secure_password
    validates :email, uniqueness: true, presence: true
end

# t.string "username"
# t.string "email"
# t.string "password_digest"
# t.boolean "activated"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false