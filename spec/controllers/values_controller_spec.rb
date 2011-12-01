require 'spec_helper'

describe ValuesController do

  let(:filter){ Factory(:filter) }

  def valid_attributes
    { name: "CPU", filter_id: filter.id }
  end

  describe "GET index" do
    it "assigns all values as @values" do
      value = Value.create! valid_attributes
      get :index, filter_id: filter.id
      assigns(:values).should eq([value])
    end
  end

  describe "GET new" do
    it "assigns a new value as @value" do
      get :new, filter_id: filter.id
      assigns(:value).should be_a_new(Value)
    end
  end

  describe "GET edit" do
    it "assigns the requested value as @value" do
      value = Value.create! valid_attributes
      get :edit, :id => value.id, filter_id: filter.id
      assigns(:value).should eq(value)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Value" do
        expect {
          post :create, :value => valid_attributes, filter_id: filter.id
        }.to change(Value, :count).by(1)
      end

      it "assigns a newly created value as @value" do
        post :create, :value => valid_attributes, filter_id: filter.id
        assigns(:value).should be_a(Value)
        assigns(:value).should be_persisted
      end

      it "redirects to the index" do
        post :create, :value => valid_attributes, filter_id: filter.id
        response.should redirect_to filter_values_url(filter)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved value as @value" do
        Value.any_instance.stub(:save).and_return(false)
        post :create, :value => {}, filter_id: filter.id
        assigns(:value).should be_a_new(Value)
      end

      it "re-renders the 'new' template" do
        Value.any_instance.stub(:save).and_return(false)
        post :create, :value => {}, filter_id: filter.id
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested value" do
        value = Value.create! valid_attributes
        Value.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => value.id, :value => {'these' => 'params'}, filter_id: filter.id
      end

      it "assigns the requested value as @value" do
        value = Value.create! valid_attributes
        put :update, :id => value.id, :value => valid_attributes, filter_id: filter.id
        assigns(:value).should eq(value)
      end

      it "redirects to the value" do
        value = Value.create! valid_attributes
        put :update, :id => value.id, :value => valid_attributes, filter_id: filter.id
        response.should redirect_to filter_values_url(filter)
      end
    end

    describe "with invalid params" do
      it "assigns the value as @value" do
        value = Value.create! valid_attributes
        Value.any_instance.stub(:save).and_return(false)
        put :update, :id => value.id, :value => {}, filter_id: filter.id
        assigns(:value).should eq(value)
      end

      it "re-renders the 'edit' template" do
        value = Value.create! valid_attributes
        Value.any_instance.stub(:save).and_return(false)
        put :update, :id => value.id, :value => {}, filter_id: filter.id
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested value" do
      value = Value.create! valid_attributes
      expect {
        delete :destroy, :id => value.id, filter_id: filter.id
      }.to change(Value, :count).by(-1)
    end

    it "redirects to the values list" do
      value = Value.create! valid_attributes
      delete :destroy, :id => value.id, filter_id: filter.id
      response.should redirect_to(filter_values_url(filter))
    end
  end

end
