# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @courses = Course.all.limit(3)
    @latest_courses = @courses.order(created_at: :desc)
  end
end
