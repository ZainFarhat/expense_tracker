class User < ApplicationRecord
    has_secure_password
    validates :FirstName, presence: true
    validates :LastName, presence: true
    validates :DateofBirth, presence: true, format: {with: /\A^(1[0-2]|0?[1-9])\/(3[01]|[12][0-9]|0?[1-9])\/(?:[0-9]{2})?[0-9]{2}$\z/, message: "Must be a valid Date"} 
    validates :SocialSecurityNumber, presence: true, format: {with: /\A^(?!(000|666|9))(\d{3}-?(?!(00))\d{2}-?(?!(0000))\d{4})$\z/, message: "Must be a valid Social Security Number"}
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"}
end
