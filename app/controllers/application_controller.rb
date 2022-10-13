class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def play_rock
    #write code
    self.render({ :template => "game_templates/user_rock.html.erb" })
    #self.render({ :html => "<h1>Hello, world!</h1>".html_safe })
    #self.redirect_to("https://www.wikipedia.org/")
    #self.render({ :plain => "Howdy, world!" })
  end
end
