# require 'puma'
# require 'rack'

# conn_storage = []
# conn_waiting_area = []

# app = lambda do |env|
#   response_headers = {}
#   response_headers['Transfer-Encoding'] = 'binary'
#   response_headers["Content-Type"] = "text/plain"
#   #hijack
#   response_headers["rack.hijack"] = lambda do |io|
#     conn_waiting_area << io
#   end
#   [200, response_headers, nil]
# end

# Thread.new do
#   loop do
#     sleep 3
#     start_time = Time.now
#     conn_storage.each do |c| 
#       begin
#         c << "BEEP\n"
#       rescue
#         puts "rescue"
#         conn_storage.delete(c)
#       end
#     end
#     end_time = Time.now
#     puts "Number of clients connected: #{conn_storage.length}"
#     puts "Time for entire write run: #{end_time - start_time}"
#   end
# end

# run app