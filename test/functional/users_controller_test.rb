#encoding: utf-8
require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "email can't be blank" do
    assert_no_difference('User.count') do
      post :create
    end

    assert_equal("Por favor, informe o seu endereço de e-mail", flash[:notice])
  end

  test "email can't be invalid" do
    assert_no_difference('User.count') do
      post :create, :user => { :email => "invalid e-mail" }
    end

    assert_equal("Por favor, informe um endereço de e-mail válido", flash[:notice])
  end

  test "email can't be duplicated" do
    assert_no_difference('User.count') do
      post :create, :user => { :email => "klark@kent.com" }
    end

    assert_equal("E-mail já cadastrado. Obrigado!", flash[:notice])
  end

  test "should create a new user" do
    assert_difference('User.count', +1) do
      post :create, :user => { :email => "peter@parker.com" }
    end

    assert_equal("E-mail cadastrado com sucesso!", flash[:notice])
  end
end