require 'spec_helper'

RSpec.describe FasesController do
  let(:fase) { fases(:one) }

  it "should get index" do
    get :index
    expect(response).to be_a_success
    expect(assigns(:fases)).not_to be_nil
  end

  it "should get new" do
    get :new
    expect(response).to be_a_success
  end

  it "should create fase" do
    expect do
      post :create, fase: { name: fase.name }
    end.to change { Fase.count }

    expect(response).to redirect_to(fase_path(assigns(:fase)))
  end

  it "should show fase" do
    get :show, id: fase
    expect(response).to be_a_success
  end

  it "should get edit" do
    get :edit, id: fase
    expect(response).to be_a_success
  end

  it "should update fase" do
    patch :update, id: fase, fase: { name: fase.name }
    expect(response).to redirect_to(fase_path(assigns(:fase)))
  end

  it "should destroy fase" do
    expect do
      delete :destroy, id: fase
    end.to change { Fase.count }.by(-1)

    expect(response).to redirect_to(fases_path)
  end
end
