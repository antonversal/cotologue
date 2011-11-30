require 'spec_helper'

describe ProductsController do

  let(:section) { Section.create!({name: "Laptops", id:1}) }

  def valid_attributes
    { name: "Apple MacBook Pro", section_id: section.id }
  end

  describe "GET index" do
    it "assigns all products as @products" do
      product = Product.create! valid_attributes
      get :index, section_id: section.id
      assigns(:products).should eq([product])
    end
  end

  describe "GET show" do
    it "assigns the requested product as @product" do
      product = Product.create! valid_attributes
      get :show, id: product.id, section_id: section.id
      assigns(:product).should eq(product)
    end
  end

  describe "GET new" do
    it "assigns a new product as @product" do
      get :new, section_id: section.id
      assigns(:product).should be_a_new(Product)
    end
  end

  describe "GET edit" do
    it "assigns the requested product as @product" do
      product = Product.create! valid_attributes
      get :edit, id: product.id, section_id: section.id
      assigns(:product).should eq(product)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Product" do
        expect {
          post :create, product: valid_attributes, section_id: section.id
        }.to change(Product, :count).by(1)
      end

      it "assigns a newly created product as @product" do
        post :create, product: valid_attributes, section_id: section.id
        assigns(:product).should be_a(Product)
        assigns(:product).should be_persisted
      end

      it "redirects to the created product" do
        post :create, product: valid_attributes, section_id: section.id
        response.should redirect_to([section, Product.last])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved product as @product" do
        Product.any_instance.stub(:save).and_return(false)
        post :create, product: {}, section_id: section.id
        assigns(:product).should be_a_new(Product)
      end

      it "re-renders the 'new' template" do
        Product.any_instance.stub(:save).and_return(false)
        post :create, product: {}, section_id: section.id
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested product" do
        product = Product.create! valid_attributes
        Product.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, id: product.id, product: {'these' => 'params'}, section_id: section.id
      end

      it "assigns the requested product as @product" do
        product = Product.create! valid_attributes
        put :update, id: product.id, product: valid_attributes, section_id: section.id
        assigns(:product).should eq(product)
      end

      it "redirects to the product" do
        product = Product.create! valid_attributes
        put :update, id: product.id, product: valid_attributes, section_id: section.id
        response.should redirect_to([section, product])
      end
    end

    describe "with invalid params" do
      it "assigns the product as @product" do
        product = Product.create! valid_attributes
        Product.any_instance.stub(:save).and_return(false)
        put :update, id: product.id, product: {}, section_id: section.id
        assigns(:product).should eq(product)
      end

      it "re-renders the 'edit' template" do
        product = Product.create! valid_attributes
        Product.any_instance.stub(:save).and_return(false)
        put :update, id: product.id, product: {}, section_id: section.id
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested product" do
      product = Product.create! valid_attributes
      expect {
        delete :destroy, id: product.id, section_id: section.id
      }.to change(Product, :count).by(-1)
    end

    it "redirects to the products list" do
      product = Product.create! valid_attributes
      delete :destroy, id: product.id, section_id: section.id
      response.should redirect_to(section_products_url)
    end
  end

end
