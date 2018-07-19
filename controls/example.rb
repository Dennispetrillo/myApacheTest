# encoding: utf-8
# copyright: 2017, The Authors

title 'myApache'

# you can also use plain tests
#describe file('/tmp') do
#  it { should be_directory }
#end

# you add controls here
#control 'tmp-1.0' do                        # A unique ID for this control
#  impact 0.7                                # The criticality, if this control fails.
#  title 'Create /tmp directory'             # A human-readable title
#  desc 'An optional description...'
#  describe file('/tmp') do                  # The actual test
#    it { should be_directory }
#  end
#end


control 'myApache-01' do
  impact 1.0
  title 'Apache should be running'
  desc 'Apache should be running.'
  describe service(apache.service) do
    it { should be_installed }
    it { should be_running }
  end
end
