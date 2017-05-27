require 'spec_helper'

describe 'jenkins' do
  
  context 'with defaults for all parameters' do
    it { is_expected.to compile }
  end

end