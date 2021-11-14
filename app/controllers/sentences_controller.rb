class SentencesController < ApplicationController

  def index
    set_language
    render json: @language
  end
  
  def show
    set_sentence
    # render json: @sentence
    
    response = {
      :lang => @sentence.lang.code,
      :text => @sentence.text,
      :votes => 0,
    }

    if params[:target] 
      response[:translations] = @sentence.translations(params[:target]).map { |t| t.id }
    end

    render json: response
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
    params.require(:sentence).require(:lang).permit(:text, :user_id, :translation, :target)
  end
end
