require 'spec_helper'

RSpec.describe TechnicsController do
  let(:technic) { technics(:one) }

  it "should get index" do
    get :index
    expect(response).to be_a_success
    expect(assigns(:technics)).not_to be_nil
  end

  it "should get new" do
    get :new
    expect(response).to be_a_success
  end

  it "should create technic" do
    expect do
      post :create, technic: { category_id: technic.category_id, fase_id: technic.fase_id, meaning: technic.meaning }
    end.to change { Technic.count }

    expect(response).to redirect_to(technic_path(assigns(:technic)))
  end

  it "should show technic" do
    get :show, id: technic
    expect(response).to be_a_success
  end

  it "should get edit" do
    get :edit, id: technic
    expect(response).to be_a_success
  end

  it "should update technic" do
    patch :update, id: technic, technic: { category_id: technic.category_id, fase_id: technic.fase_id, meaning: technic.meaning }
    expect(response).to redirect_to(technic_path(assigns(:technic)))
  end

  it "should destroy technic" do
    expect do
      delete :destroy, id: technic
    end.to change { Technic.count }.by(-1)

    expect(response).to redirect_to(technics_path)
  end
end
