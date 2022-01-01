class User < ApplicationRecord
    has_secure_password
    has_many :accounts, dependent: :destroy
    has_many :transactions, dependent: :destroy
    has_many :reports, dependent: :destroy
    validates :FirstName, presence: true
    validates :LastName, presence: true
    validates :DateofBirth, presence: true #, format: {with: /\A^1?\d{1}\/[123]?\d{1}\/\d{4}(\s[12]?\d:[0-5]\d(:[0-5]\d)?(\s[ap]m)?)?$\z/, message: "Must be a valid Date"} 
    validates :SocialSecurityNumber, presence: true, format: {with: /\A^(?!(000|666|9))(\d{3}-?(?!(00))\d{2}-?(?!(0000))\d{4})$\z/, message: "Must be a valid Social Security Number"}
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"}
    attribute :TotalIncome, :decimal, default: 0.00
    attribute :TotalExpenditure, :decimal, default: 0.00
end
