# StaticPagesController is a controller for all non REST Pages
# 
# This is essential for presenting "Semistatic"-Pages like About or Home
class StaticPagesController < ApplicationController

  # Functions for the Controller of the "Static"-Pages
  #
  # You can define here functions and also Variable (see Example) you can
  # access really easy on the view, so you do not have to hack in the html.
  #
  # @example
  #   def example
  #     @some_tag = "some_value"
  #   end
  #     
  # @return [undefined]
  # @api public
  def home
  end

  # Static Help Page
  # @return [undefined]
  # @api public
  def help
  end

  # Start/Root Page
  # @return [undefined]
  # @api public
  def about
  end
end
