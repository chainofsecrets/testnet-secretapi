=begin
#Testnet Secret API for Secret Network

#A REST interface for state queries, transaction generation and broadcasting.

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ProofPathKeyPath
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProofPathKeyPath' do
  before do
    # run before each test
    @instance = SwaggerClient::ProofPathKeyPath.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProofPathKeyPath' do
    it 'should create an instance of ProofPathKeyPath' do
      expect(@instance).to be_instance_of(SwaggerClient::ProofPathKeyPath)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enc"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
