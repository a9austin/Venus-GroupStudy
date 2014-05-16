# == Schema Information
#
# Table name: study_sessions
#
#  id            :integer          not null, primary key
#  label         :string(255)
#  location      :string(255)
#  subject_id    :integer
#  university_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class StudySession < ActiveRecord::Base
  has_one :subject, dependent: :destroy
end
