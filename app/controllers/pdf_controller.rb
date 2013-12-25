class PdfController < ApplicationController
  include ApplicationHelper
	class FinancesReport < Prawn::Document
		def to_pdf(user)
			font_size 15
			text "#{user.first_name} #{user.last_name}'s Finances Report", :align => :center
			font_size 10
			text "Updated #{Date.today.strftime('%B %e, %Y')}", :align => :center
			move_down 15
			data = [["Date","Time","Event","Location","Grand Prix"]]
			all = []
			# Event.future_events.each do |event|
				# all << [event.date.strftime('%m/%d/%y'), event.time, event.title, event.location, ""]
			# end
			# all.each do |race|
				# data += [ [race[0], race[1], race[2], race[3], race[4] ]]
			# end
			font_size 10
			table(data, :header => true, :column_widths => [55, 55, 245, 120, 65], 
									:row_colors => ["E0E0E0", "FFFFFF"], 
									:cell_style => {:padding => [5, 5, 5, 5]}) do
				row(0).font_style = :bold
			end
			render
		end
	end

	def finances_report
		user = current_user
    output = FinancesReport.new.to_pdf(user)
    respond_to do |format|
      format.pdf { 
        send_data output, type: "application/pdf", disposition: "inline"
      }
    end
  end
end
