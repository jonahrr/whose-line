class SpeakersController < ApplicationController
  def new
    @speaker = Speaker.new
  end

  def create
    if @speaker.save
    end
  end
end
