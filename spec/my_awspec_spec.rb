require 'spec_helper'

describe vpc('blurredimages') do
   it {should exist}
   it {should have_tag('Stack').value('Networking') }
   it {should have_tag('Environment').value('stage') }
   its(:cidr_block) { should eq '192.168.0.0/16' }
end

describe subnet('dmz-useast1-az1') do
   it { should exist }
   it { should have_tag('Environment').value('dev') }
end

describe security_group('sg-dmz-access') do 
   it { should exist }
   it { should have_tag('env').value('stage') 
   its(:outbound) { should be_opened }}
end

