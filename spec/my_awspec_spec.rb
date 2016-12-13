require 'spec_helper'

describe vpc('example VPC') do
   its(:cidr_block) { should eq '192.168.0.0/16' }
end
describe vpn_gateway('igw-07ee7e60') do
   it { should exist }
end
describe security_group('sg-24a64842') do 
   it { should exist }
end

