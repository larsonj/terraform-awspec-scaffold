require 'spec_helper'

describe s3_bucket('blurrlurredimages.terraform.vpc.dev.state') {
   it { should exist }
   it { should have_versioning_enabled }
}

