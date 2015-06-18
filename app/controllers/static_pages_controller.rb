# StaticPagesController is a controller for all non REST Pages
class StaticPagesController < ApplicationController
  # Start/Root Page
  # nothing
  def home
  end

  # Static Help Page
  # nothing
  def help
  end

# Macro for defining ActiveModel::Name object on the attributes class
#
# This is essential for rails helpers to work properly when generating
# form input names etc.
#
# @example
#   class UserAttributes
#     include ROM::Model::Attributes
#
#     set_model_name 'User'
#   end
#
# @return [undefined]
#
# @api public
  def about
  end
end
