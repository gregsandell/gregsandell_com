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
#
#       PATHFINDER SOFTWARE
#
        position = Position.new(
            "Pathfinder Software", "Chicago, IL", "Aug 2012 - Aug 2013",
					"Direct Hire", "Sr. Software Developer"
        )
        position.listTextArray.push("30-person consultancy specializing in mobie medical solutions");
        position.listTextArray.push("Integrate jQuery apps with numerous plugins incuding jsViews, headJs, panzoom, fullproof, wysiwyg, moment, showbizPro, bootstrap, colorbox, cookie, easing, dynatree and transit");
        position.listTextArray.push("Use cloud-based storage providers Parse and Apigee");
        position.listTextArray.push("Practice Agile principles including scrum, 1-week iterations, Continuous Integration, using Confluence &amp; Pivotal Tracker Git, Github, Jasmine, and Karma");
        position.listTextArray.push("Write SPA (Single Page Web Applications) using RESTFUL web services plus Ajax and AngularJS");
        position.listTextArray.push("Delivered a high quality UI for MetroPulse Chicago for exploring a large repository of Chicago civic data; demo video at http://www.youtube.com/watch?v=FfeH4n7k5pA");
        position.listTextArray.push("Wrote hybrid iOS/web appstore application for the Amer. Assn. for Critical Care Nurses using jQuery Mobile, JSON, AngularJS, Trigger.io, and TestFlight");
        @resume.positions.push(position)
#
#       TRUVEN
#
        position = Position.new(
            "Truven Health Analytics", "Chicago, IL", "Apr 2010 - Aug 2012",
					"Converted to FT/Perm after contract", "Sr. Software Developer"
        )
        position.listTextArray.push("Formerly Thomson-Reuters Healthcare.  Sold in June 2012 for $1.25 bil.");
        position.listTextArray.push("Create rich, intuitive, high-touch Ajax user interfaces and reusable widgets for CareDiscovery, a  Business Intelligence tool for the Healthcare Industry.");
        position.listTextArray.push("Create servlet- and portal-based enterprise web applications for IBM Websphere Portal 5, Tomcat 6 & Glassfish in mixed JEE 6 and J2EE 1.4 environment.");
        position.listTextArray.push("Practice Agile principles including scrum, 3-week iterations, TDD, Continuous Integration");
        position.listTextArray.push("Develop SaaS components in Java and Ajax communicating over a JSON-based service bus");
        position.listTextArray.push("Write User Interfaces and Ajax in Javascript & jQuery, promoting reusable patterns, functional programming, and closures");
        position.listTextArray.push("Develop jQuery plugins for reusable UI widgets");
        position.listTextArray.push("Integrate Cognos reports into application using Cognos Javascript API and iFrames");
        position.listTextArray.push("Author PL/SQL queries in Toad that work against a 4 TB Oracle OLAP (Data Warehouse) database, for deployment in Web Services");
        position.listTextArray.push("Collaborate with the ETL/ Informatica team to determine the necessary data models and UI designs to support Cognos reports.");
        position.listTextArray.push("Develop Maven plugins and perl scripts to streamline build process");
        position.listTextArray.push("Work within HIPAA regulations to secure applications and databases using RSA,  TAM, and Oracle Proxy Authentication.");
        position.listTextArray.push("Break down business requirements into tightly defined software module specifications/estimates &amp; document them on Wiki.");
        position.listTextArray.push("Write functional prototypes of web interfaces using JSON to simulate Server layer");
        position.listTextArray.push("Develop portal applications for IBM Websphere Portal Server and deploy with WPS Admin");
        position.listTextArray.push("Helped transition team from waterfall to agile approach by introducing Maven2, Artifactory Repository Server, Hudson Continuous Integration, Mercurial source control and TDD practices.");
        position.listTextArray.push("Other technologies not mentioned above: Eclipse, CVS, Rally, JSP, JSTL, Ant, Firebug, Spring MVC/IOC/JDBC, GWT, Struts 1.2, Tiles");
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

        @blogs = [
            Blog.new("Solving Character Set Problems", 
                "http://gregsandell.blogspot.com/2009/01/solving-character-set-problems-ascii.html",
                 "2009.05.15"),
            Blog.new("Hacking a Linksys NSLU2",
                "http://gregsandell.blogspot.com/2008/12/hacking-linksys-nslu2.html",
                 "2009.03.27"),
            Blog.new("Maven 2 Tutorial",
                "http://gregsandell.blogspot.com/2007/07/maven2-introduction-part-1-coordinate.html", "2007.07.13"),
		    Blog.new("S-Corps for Software Contracters", 
				"http://gregsandell.blogspot.com/2006/10/s-corps-for-software-contracters.html",
			    "2006.10.22")
        ]
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
        @blogs = []
    end
end
class Training
    attr_accessor :course, :dates
    def initialize(course, dates) 
        @course = course
        @dates = dates
    end
end

class Blog
    attr_accessor :text, :url, :date
    def initialize(text, url, date)
        @text = text
        @url = url
        @date = date
    end
end
        
              

