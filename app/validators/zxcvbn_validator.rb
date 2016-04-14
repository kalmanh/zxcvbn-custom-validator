class ZxcvbnValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
  	result = Zxcvbn.test(value)
    unless result.score > 0
      record.errors[attribute] << (options[:message] || "not very secure...")
    end
  end

end