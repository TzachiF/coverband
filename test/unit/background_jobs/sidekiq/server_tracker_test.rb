require File.expand_path('../../../test_helper', File.dirname(__FILE__))
require 'coverband/background_jobs/sidekiq/server_tracker'

class ServerTrackerTest < Test::Unit::TestCase

  test "call method invokes sample method" do
    coverband = Coverband::Base.instance.reset_instance
    coverband.expects(:sample).once

    tracker = Coverband::BackgroundJobs::Sidekiq::ServerTracker.new
    tracker.call nil,nil,nil
  end
end