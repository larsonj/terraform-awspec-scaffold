require 'spec_helper'

describe vpc('dockerSwarm') do
   it {should exist}
   it {should have_tag('Stack').value('Networking') }
   it {should have_tag('Environment').value('dev') }
end

describe subnet('dmz-useast1-az1') do
   it { should exist }
   it { should have_tag('Environment').value('dev') }
end

describe vpc('example VPC') do
   it { should exist }
   its(:cidr_block) { should eq '192.168.0.0/16' }
end
describe security_group('sg-24a64842') do 
   it { should exist }
end

