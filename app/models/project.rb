class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks

  after_initialize :default_values

  def to_s
    self.description
  end

  private

  def default_values
    self.complete ||= false
  end
end
