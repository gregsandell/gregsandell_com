class MainPagesController < ApplicationController
    def home
    end
  
    def resume
    end
  
    def code
    end
  
    def talks
    end
  
    def blog
    end
  
    def contact
    end
  
    before_filter :set_globals
    def set_globals
        @foo = 'bar'
        @links = {
            resume: Link.new("Resume", "/resume"),
            sharc: Link.new("SHARC Timbre Project", "http://www.timbre.ws/sharc/", true),
            blog: Link.new("Elevator Music (blog)", "http://gregsandell.blogspot.com", true),
            publications: Link.new("Publications", "http://www.gregsandell.com/pagePublications.php"),
            mswordResume: Link.new("MS Word Format", "/greg-sandell-resume.doc", true),
            pdfFormat: Link.new("PDF Format", "/greg-sandell-resume.pdf", true),
            linkedIn: Link.new("Linked In Profile", "https://www.linkedin.com/e/fpf/3094039/fprf/", true)
        }
    end
  
  end
      class Link
          attr_accessor :text, :url, :remote
          def initialize(text, url, remote=false) 
              @text = text;
              @url = url;
              @remote = remote
          end
          def make_link
  		    link_to @text, @url
          end
      end
