require "report_builder"
require "date"

 Before do
     @FilmResponse_Page = FilmResponsePage.new
     @Apiuri_page = Apiuri.new
     @PlanetsResponse_Page = PlanetsResponsePage.new
#     @movie_page = MoviePage.new
#     @sidebar = SideBarView.new
    
 end


 d = DateTime.now
 @current_date = d.to_s.tr(":", "-")

# at_exit do
#     ReportBuilder.configure do |config|
#         config.input_path = "log/report.html"
#         config.report_path = "log/" + @current_date
#         config.report_types = [:html]
#         config.report_title = "WebServiceAPI - Results"
#         config.additional_info = {"API" => "Films", "Data de execução" => @current_date}
#         config.color = "indigo"
#     end
#     ReportBuilder.build_report
# end