require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/shared/quo'
require 'bigdecimal'

describe "BigDecimal#/" do
  it_behaves_like(:bigdecimal_quo, :/)
end
