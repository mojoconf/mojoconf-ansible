require 'spec_helper'

## /etc/inspector directory content
describe file('/etc/inspeqtor') do
  it { should be_directory }
end

## service
describe service('inspeqtor') do
  it { should be_enabled   }
  it { should be_running   }
end

## /etc/inspector directory content
describe file('/etc/inspeqtor') do
  it { should be_directory }
end
describe file('/etc/inspeqtor/inspeqtor.conf') do
  it { should be_file }
  it { should be_mode 600 }
  #it { should contain "..." }
end
describe file('/etc/inspeqtor/host.inq') do
  it { should be_file }
  it { should be_mode 644 }
end

