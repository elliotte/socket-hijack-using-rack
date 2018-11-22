class PumaRackApp
  def call(env)
    ['200', {'Content-Type' => 'text/html'}, ['Nerd, World!']]
  end
end