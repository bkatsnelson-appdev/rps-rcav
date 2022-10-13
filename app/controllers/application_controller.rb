class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def homepage
    self.render({ :template => "game_templates/rules.html.erb" })
  end

  def play_rock
    #write code
    self.render({ :template => "game_templates/user_rock.html.erb" })
    #self.render({ :html => "<h1>Hello, world!</h1>".html_safe })
    #self.redirect_to("https://www.wikipedia.org/")
    #self.render({ :plain => "Howdy, world!" })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end
    
    self.render({ :template => "game_templates/user_paper.html.erb" })
  end

  def play_scissors
    self.render({ :template => "game_templates/user_scissors.html.erb" })
  end
end
