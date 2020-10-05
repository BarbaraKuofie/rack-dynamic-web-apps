class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World You Win You Lose"
    resp.finish
  end

  def greeting(env)
      return [ 200, {'Content-Type' => 'text/html'}, last_response ]
  
    def last_response
      (Time.now.to_i <= 12).zero? ?  ["Good Morning!"] : ["Good Afternoon!"]
    end
  end
end
