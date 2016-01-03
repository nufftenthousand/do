class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  acts_as_taggable_on :contexts

  after_initialize :default_values

  def self.active
    Task.where(complete: false)
  end

  def to_s
    display = self.description
=begin
    display = self.description
    if self.project.present?
      display = display + "\n\t^ Project: " + self.project.to_s
    end
    display
=end
  end

  private

  def default_values
    self.complete ||= false
    self.processed ||= false
  end

end
