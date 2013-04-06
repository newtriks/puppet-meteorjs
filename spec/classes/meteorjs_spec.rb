require "spec_helper"

describe "meteorjs" do
  let(:facts) { default_test_facts }	

  it do
    should include_class("boxen::config")
    should contain_exec("install meteorjs").with({
      :command => "su -c 'curl https://install.meteor.com | /bin/sh'",
      :creates => "/test/boxen/bin/meteorjs",
      :cwd     => "/test/boxen/bin"
    })
  end
end
