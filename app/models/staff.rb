class Staff < ActiveRecord::Base
	validates :password, zxcvbn: true
end
