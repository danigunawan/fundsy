class SendCampaignSummaryJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts ">>>>>>>>>>>> SENDING CAMP SUMMARY for #{campaign_title}"
    campaign = arhs[0]
    # begin
    #   # attempts to send summary
    # rescue
    #   # let admin know to fix bug
    # ensure
    #   # schedule the next one regardless
    # end
    # SendCampaignSummaryJob.set(wait_until: Time.now + 1.hour).perform_later(campaign)
  end
end
