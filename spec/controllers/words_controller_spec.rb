require 'spec_helper'

RSpec.describe WordsController do
  let(:word) { words(:one) }

  it "should get index" do
    get :index
    expect(response).to be_a_success
    expect(assigns(:words)).not_to be_nil
  end

  it "should get new" do
    get :new
    expect(response).to be_a_success
  end

  it "should create word" do
    expect do
      post :create, word: { translation: word.translation, word: word.word }
    end.to change { Word.count }

    expect(response).to redirect_to(word_path(assigns(:word)))
  end

  it "should show word" do
    get :show, id: word
    expect(response).to be_a_success
  end

  it "should get edit" do
    get :edit, id: word
    expect(response).to be_a_success
  end

  it "should update word" do
    patch :update, id: word, word: { translation: word.translation, word: word.word }
    expect(response).to redirect_to(word_path(assigns(:word)))
  end

  it "should destroy word" do
    expect do
      delete :destroy, id: word
    end.to change { Word.count }.by(-1)

    expect(response).to redirect_to(words_path)
  end
end
