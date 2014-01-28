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

#
#    SEARS
#
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
            "Pathfinder Software", "Chicago, IL", "Aug '12 - Aug '13",
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
            "Truven Health Analytics", "Chicago, IL", "Apr '10 - Aug '12",
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
#
#       ICROSSING
#
        position = Position.new(
            "iCrossing", "Chicago, IL", "Oct 08 - Mar 2010",
					"W2/Direct Placement", "Sr. Software Engineer"
        )
        position.listTextArray.push("Developed proprietary online application 'Merchantize' used by iCrossing clients.  The application provides a unified interface for managing clients' Paid Search campaigns with major search and shopping engines (Google, Yahoo, MSN, NexTag, PriceGrabber).");
        position.listTextArray.push("Utilized Struts2/Webwork to build Business Intelligence tools for reporting, analysis and dashboards against an in-house Data Warehouse on Mysql 5.1 containing click and purchase information from clients' E-commerce sites.");
        position.listTextArray.push("Performed regular support of application database including resolving data integrity issues, synchronizing with remote search engine data, bulk keyword deletes and cost-per-click changes.");
        position.listTextArray.push("Programmed a 3-tier daily product feed lifecycle with Perl, Bash, Java, XML and Unix cron.  Large product datasets would be sent from clients by ftp, be transformed to a unified data format, and sent out to Google, Yahoo, MSN, etc., through each Search Engine's proprietary API.");
        position.listTextArray.push("Collaborated with account managers to address the reporting needs for clients Sears, The Gap, Hilton, Lands End, LEGO, Williams Sonoma.  Custom reports were created on the Merchantize UI or in Excel using Apache POI.");
        position.listTextArray.push("Provided expertise for resolving UTF-8, Latin1 and WinLatin1 character conversion problems in feeds.");
        position.listTextArray.push("On regular rotation for bi-weekly release of product across 10 different Linux servers.");
        position.listTextArray.push("Created JUnit tests for Test Driven Development.");
        position.listTextArray.push("Collaborated using a Scrum based agile methodology, using tools Bamboo (continuous integration), Crucible (code reviews), Fisheye and Greenhopper.");
        @resume.positions.push(position)
#
#       TRIBUNE
#
        position = Position.new(
            "Tribune Interactive", "Chicago, IL", "Feb 08 - Oct 08",
					"W2/Direct Placement", "Sr. Internet Software Developer"
        )
		position.listTextArray.push("Supported central web software and content management behind all of Tribune Corp's newspaper, radio and television websites, including Chicago Tribune, LA Times, Red Eye");
		position.listTextArray.push("Developed code in Java 1.5  on J2EE platform including Oracle Application Server 10g, Oracle DB 10g, FAST search server, Sun Webserver (iPlanet) and TopLink 9.0. Development tools included Intellij 6.0, svn, Borland Starteam, Toad, SQuirrel SQL Client, Cruise Control, Enterprise Architect 7");
		position.listTextArray.push("Created scheduled jobs for sweeping expired database content");
		position.listTextArray.push("Worked with SEO Manager to optimize sites for favorable Google positioning, created daily, weekly and 30-day sitemaps");
		position.listTextArray.push("Supported web services for user registration and Mobile feeds");
		position.listTextArray.push("Created JMeter test plans and reporting tools to compare performance before and after software changes");
		position.listTextArray.push("Wrote Product Development specs, deployment and QA test plans");
		position.listTextArray.push("Actively deployed apps in server farm environments with separate environments for dev, qa, design, test and prod");
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

        @slides = Slideshow.new(150, 90, "logos", "Supported Technologies",2000)
		@slides.add("apache2.jpg")
		@slides.add("apacheAnt2.jpg");
		@slides.add("apacheCommons.png");
		@slides.add("autonomy.jpg");
		@slides.add("bamboo.jpg");
		@slides.add("coffeescript.jpg");
		@slides.add("cognos.jpg");
		@slides.add("crucible.jpg");
		@slides.add("eclipse2.jpg");
		@slides.add("gimp2.jpg");
		@slides.add("googleApps.jpg");
		@slides.add("googleDrive.jpg");
		@slides.add("glassfish.jpg");
		@slides.add("intellijIdea.jpg");
		@slides.add("iText.jpg");
		@slides.add("java2.jpg");
		@slides.add("javascript.jpg");
		@slides.add("jenkins.jpg");
		@slides.add("jfreechart.jpg");
		@slides.add("jira.png");
		@slides.add("jmeter.jpg");
		@slides.add("jquery2.jpg");
		@slides.add("jqueryMobile.jpg");
		@slides.add("jshint.jpg");
		@slides.add("json.jpg");
		@slides.add("jsp3.jpg");
		@slides.add("linux.jpg");
		@slides.add("maven2.jpg");
		@slides.add("mercurial.jpg");
		@slides.add("netbeans.jpg");
		@slides.add("oracle2.jpg");
		@slides.add("parse.jpg");
		@slides.add("php.jpg");
		@slides.add("pivotalTracker.jpg");
		@slides.add("poi.jpg");
		@slides.add("mysql2.jpg");
		@slides.add("rails.jpeg");
		@slides.add("sass.jpg");
		@slides.add("subversion.jpg");
		@slides.add("toad.jpg");
		@slides.add("tomcat2.jpg");
		@slides.add("triggerIO.jpg");
		@slides.add("vim.jpg");
		@slides.add("websphere.gif");
		@slides.add("xmlTypewriter.jpg");
		@slides.add("filezilla.jpg");
		@slides.add("ruby.png");
		@slides.add("chromeDevTools.jpg");
		@slides.add("angularJS.jpg");
		@slides.add("highcharts.jpg");
		@slides.add("mamp.jpg");
		@slides.add("git.jpg");
		@slides.add("github.jpg");
		@slides.add("homebrew.jpg");
		@slides.add("twitterBootstrap.png");
		@slides.add("jasmine.jpg");
		@slides.add("grunt.jpg");
		@slides.add("nodeJS.jpg");
		@slides.add("sqlServer2.jpg");
		@slides.add("css3.jpg");
		@slides.add("html5.jpg");
		@slides.add("xslt.jpg");
		@slides.add("testflight.jpg");
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
        
class Slideshow
    attr_accessor :width, :height, :imgsSubdir, :title, :dur, :slides
    def initialize(width, height, imgsSubdir, title, dur)
        @width = width
        @height = height
        @imgsSubdir = imgsSubdir
        @title = title
        @dur = dur
        @slides = []
    end
    def add(img)
        @slides.push(img)
    end
end


    
              

