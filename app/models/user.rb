class User < ApplicationRecord
  validates :name, presense: true
  # validation to make sure email contains @codeschoolofguam.com
  before_create :generate_random_username

  private

  def generate_random_username
    self.username = Faker::Internet.username
  end

  def fix_emails
    # add @codeschoolofguam.com if it's not there already
  end
end
