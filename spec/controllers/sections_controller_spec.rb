require 'spec_helper'

describe SectionsController do

  def valid_attributes
    { name: "Computers" }
  end

  describe "GET index" do
    it "assigns all sections as @sections" do
      section = Section.create! valid_attributes
      get :index
      assigns(:sections).should eq([section])
    end
  end

  describe "GET new" do
    it "assigns a new section as @section" do
      get :new
      assigns(:section).should be_a_new(Section)
    end
  end

  describe "GET edit" do
    it "assigns the requested section as @section" do
      section = Section.create! valid_attributes
      get :edit, :id => section.id
      assigns(:section).should eq(section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Section" do
        expect {
          post :create, :section => valid_attributes
        }.to change(Section, :count).by(1)
      end

      it "assigns a newly created section as @section" do
        post :create, :section => valid_attributes
        assigns(:section).should be_a(Section)
        assigns(:section).should be_persisted
      end

      it "redirects to the created section" do
        post :create, :section => valid_attributes
        response.should redirect_to sections_url
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved section as @section" do
        # Trigger the behavior that occurs when invalid params are submitted
        Section.any_instance.stub(:save).and_return(false)
        post :create, :section => {}
        assigns(:section).should be_a_new(Section)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Section.any_instance.stub(:save).and_return(false)
        post :create, :section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested section" do
        section = Section.create! valid_attributes
        Section.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => section.id, :section => {'these' => 'params'}
      end

      it "assigns the requested section as @section" do
        section = Section.create! valid_attributes
        put :update, :id => section.id, :section => valid_attributes
        assigns(:section).should eq(section)
      end

      it "redirects to the section" do
        section = Section.create! valid_attributes
        put :update, :id => section.id, :section => valid_attributes
        response.should redirect_to sections_url
      end
    end

    describe "with invalid params" do
      it "assigns the section as @section" do
        section = Section.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Section.any_instance.stub(:save).and_return(false)
        put :update, :id => section.id, :section => {}
        assigns(:section).should eq(section)
      end

      it "re-renders the 'edit' template" do
        section = Section.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Section.any_instance.stub(:save).and_return(false)
        put :update, :id => section.id, :section => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested section" do
      section = Section.create! valid_attributes
      expect {
        delete :destroy, :id => section.id
      }.to change(Section, :count).by(-1)
    end

    it "redirects to the sections list" do
      section = Section.create! valid_attributes
      delete :destroy, :id => section.id
      response.should redirect_to(sections_url)
    end
  end

end
