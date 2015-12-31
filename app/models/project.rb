class Project < ActiveRecord::Base
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
