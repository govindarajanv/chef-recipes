#
# Cookbook Name:: kitchen_test
# Spec:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'kitchen_test::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
