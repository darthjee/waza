require 'spec_helper'

RSpec.describe CategoriesController do
  let(:category) { categories(:one) }

  it "should get index" do
    get :index
    expect(response).to be_a_success
    expect(assigns(:categories)).not_to be_nil
  end

  it "should get new" do
    get :new
    expect(response).to be_a_success
  end

  it "should create category" do
    expect do
      post :create, category: { name: category.name, meaning: category.meaning }
    end.to change { Category.count }

    expect(response).to redirect_to(category_path(assigns(:category)))
  end

  it "should show category" do
    get :show, id: category
    expect(response).to be_a_success
  end

  it "should get edit" do
    get :edit, id: category
    expect(response).to be_a_success
  end

  it "should update category" do
    patch :update, id: category, category: { name: category.name, meaning: category.meaning }
    expect(response).to redirect_to(category_path(assigns(:category)))
  end

  it "should destroy category" do
    expect do
      delete :destroy, id: category
    end.to change { Category.count }.by(-1)

    expect(response).to redirect_to(categories_path)
  end
end
