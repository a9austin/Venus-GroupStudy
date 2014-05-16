# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  token      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Subject < ActiveRecord::Base
  belongs_to :study_session
end
