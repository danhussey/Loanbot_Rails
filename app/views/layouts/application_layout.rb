# frozen_string_literal: true

class ApplicationLayout < ApplicationView
	include Phlex::Rails::Layout

	def view_template(&block)
		doctype

		html do
			head do
				title { "You're awesome" }
				meta name: "viewport", content: "width=device-width,initial-scale=1"
				csp_meta_tag
				csrf_meta_tags
				stylesheet_link_tag "application", data_turbo_track: "reload"
				javascript_importmap_tags
			end

			body do
				render Shared::Navbar.new
				div(class: "flex-1") do
					div(class: "border-b") do
					  div(class: "container px-4 flex-1 items-start md:grid md:grid-cols-[220px_minmax(0,1fr)] md:gap-6 lg:grid-cols-[240px_minmax(0,1fr)] lg:gap-10") do
						render Shared::Sidebar.new
						main(class: "relative py-6 lg:gap-10 lg:py-8 xl:grid xl:grid-cols-[1fr_300px]", &block)
					  end
					end
				  end
				main(&block)
			end
		end
	end
end
