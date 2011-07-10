require 'spec_helper'

describe Setting do
  subject { Factory :setting }
  it { should be_persisted }
end
