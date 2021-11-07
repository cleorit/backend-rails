class SentencesController < ApplicationController

  before_action :set_language

  def index
    render json: @language
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sentence
    @sentence = Sentence.find(params[:id])
  end

  def set_language
    @language = Lang.find(params[:lang_id])
  end

    # Only allow a list of trusted parameters through.
  def sentence_params
    params.require(:sentence).require(:lang).permit(:text, :user_id, :translation)
  end
end
