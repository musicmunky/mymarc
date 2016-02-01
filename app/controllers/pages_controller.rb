class PagesController < ApplicationController
	def index
		require 'rss'
		require 'open-uri'

		url = 'http://mtamarylandalerts.com/rss.aspx?ma'
		@FEED = {}
		@TTLS = []
		open(url) do |rss|
			feed = RSS::Parser.parse(rss)
			@TTLS.push(feed.channel.title)
			tnum = ""
			feed.items.each do |item|
				tnum = item.title[/.*MARC\s+(\d{3,}).*/, 1]
				ttme = item.pubDate - 4.hours
				@FEED[item.guid.content] = { "title" => item.title, "pubdate" => ttme.strftime("%A, %b %d, %Y, %I:%M %p"), "description" => item.description, "train_number" => tnum }
			end
		end
	end
end
