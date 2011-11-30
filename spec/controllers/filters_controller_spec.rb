require 'spec_helper'

describe FiltersController do

  def valid_attributes
    { name: "Processor" }
  end

  describe "GET index" do
    it "assigns all filters as @filters" do
      filter = Filter.create! valid_attributes
      get :index
      assigns(:filters).should eq([filter])
    end
  end

  describe "GET new" do
    it "assigns a new filter as @filter" do
      get :new
      assigns(:filter).should be_a_new(Filter)
    end
  end

  describe "GET edit" do
    it "assigns the requested filter as @filter" do
      filter = Filter.create! valid_attributes
      get :edit, :id => filter.id
      assigns(:filter).should eq(filter)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Filter" do
        expect {
          post :create, :filter => valid_attributes
        }.to change(Filter, :count).by(1)
      end

      it "assigns a newly created filter as @filter" do
        post :create, :filter => valid_attributes
        assigns(:filter).should be_a(Filter)
        assigns(:filter).should be_persisted
      end

      it "redirects to the created filter" do
        post :create, :filter => valid_attributes
        response.should redirect_to filters_url
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved filter as @filter" do
        Filter.any_instance.stub(:save).and_return(false)
        post :create, :filter => {}
        assigns(:filter).should be_a_new(Filter)
      end

      it "re-renders the 'new' template" do
        Filter.any_instance.stub(:save).and_return(false)
        post :create, :filter => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested filter" do
        filter = Filter.create! valid_attributes
        Filter.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => filter.id, :filter => {'these' => 'params'}
      end

      it "assigns the requested filter as @filter" do
        filter = Filter.create! valid_attributes
        put :update, :id => filter.id, :filter => valid_attributes
        assigns(:filter).should eq(filter)
      end

      it "redirects to the filter" do
        filter = Filter.create! valid_attributes
        put :update, :id => filter.id, :filter => valid_attributes
        response.should redirect_to filters_url
      end
    end

    describe "with invalid params" do
      it "assigns the filter as @filter" do
        filter = Filter.create! valid_attributes
        Filter.any_instance.stub(:save).and_return(false)
        put :update, :id => filter.id, :filter => {}
        assigns(:filter).should eq(filter)
      end

      it "re-renders the 'edit' template" do
        filter = Filter.create! valid_attributes
        Filter.any_instance.stub(:save).and_return(false)
        put :update, :id => filter.id, :filter => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested filter" do
      filter = Filter.create! valid_attributes
      expect {
        delete :destroy, :id => filter.id
      }.to change(Filter, :count).by(-1)
    end

    it "redirects to the filters list" do
      filter = Filter.create! valid_attributes
      delete :destroy, :id => filter.id
      response.should redirect_to(filters_url)
    end
  end

end
