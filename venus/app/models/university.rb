# == Schema Information
#
# Table name: universities
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  token      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class University < ActiveRecord::Base
end
