class ContextsController < ApplicationController
  before_filter :authorize

  # TODO disallow tagging without owner
  def index
    @contexts = current_user.owned_tags
  end
end
