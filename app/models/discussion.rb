class Discussion < ActiveRecord::Base
  serialize :speakers,Array

  def push(user)
    speakers << user.id
    save!
  end

  def pop(user)
    @user = User.find(speakers.shift)
    save!
  end

  def display_speakers
    speakers.map { |s| User.find(s) }
  end
end
