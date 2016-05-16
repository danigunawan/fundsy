namespace :send_summaries do

  desc "sending daily summary of pledges on campaigns"
  #adding environment means that we have Rails loaded
  task :send_all => :environment do
    Campaign.all.each do |campaign|
      SendCampaignSummaryJob.perform_later(campaign)
    end
  end
end
