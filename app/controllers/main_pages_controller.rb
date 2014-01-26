class MainPagesController < ApplicationController
    def home
    end
  
    def resume
        @resume = Resume.new
        @resume.name = "Greg Sandell"
        @resume.address.push("3632 S Prairie Avenue")
        @resume.address.push("Chicago IL 60653")
        @resume.address.push("773.548.5547")
        @resume.address.push("greg.sandell &lt;at&gt; gmail.com")
        @resume.address.push("More detail: http://www.gregsandell.com")
        @resume.imageJava = "greg-sandell-resume_files/image002.jpg"
        @resume.imageSCWCD = "greg-sandell-resume_files/image004.jpg"
        @resume.skillset = ["Work in a software delivery role to provide robust mobile web applications emphasizing development of SaaS web services and RIA interfaces. Seeking positions in downtown Chicago or nearby with minimal travel."]
        @resume.qual = ["I am a 14-year senior developer of web applications with particular depth in Mobile Web, Javascript, MVC Frameworks, jQuery, Ajax/JSON, web services, Unix, Agile and Open Source. I have worked for Reuters, Chicago Tribune, UBS, Amex, Lockheed-Martin in vertical markets including media, travel, finance, defense, healthcare, eCommerce and education.  I hold a PhD degree and am highly effective at communications, writing and presentations."]
        position = Position.new(
            "Sears Holding Corporation", 
            "Chicago, IL", "Nov 2013 - present",
			"Contract through Apex Systems", "Developer"
        )
        position.listTextArray.push("Member of Core Mobile team supporting sears.com on handheld devices")
        position.listTextArray.push("Javascript, AngularJS, Git, Grunt")
        position.listTextArray.push("Converted site to work when device has 'Private Browsing' enabled")
        @resume.positions.push(position)
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
    end
    class Position
        attr_accessor :company, :location, :dates, :basis, :title, :listTextArray
        def initialize(company, location, dates, basis, title)
            @company = company
            @location = location
            @dates = dates
            @basis = basis
            @title = title
            @listTextArray = []
        end
    end
    class Resume
        attr_accessor :positions, :skillset, :qual, :training, :education, :name, :address, :imageJava, :imageSCWCD
        def initialize
            @address = []
            @positions = []
            @training = []
            @education = []
        end
    end
    class Training
        attr_accessor :course, :dates
        def initialize(course, dates) 
            @course = course
            @dates = dates
        end
    end
        
              

