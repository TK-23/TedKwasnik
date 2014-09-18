# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Location.create([
  { name: "Stanford, CA",
    description:"",
    address1: "450 Serra Mall",
    city:"Stanford",
    state:"CA",
    zip:"94305",
    country:"USA",
    location_type_id: 1
  },
  { name: "Middlebury, VT",
    description:"",
    address1: "14 Old Chapel Rd",
    city:"Middlebury",
    state:"VT",
    zip:"05753",
    country:"USA",
    location_type_id: 1
  },
  { name: "Paris, France",
    description:"",
    address1: "17 Rue de Tolbiac",
    city:"Paris",
    state:"",
    zip:"",
    country:"France",
    location_type_id: 1
  },
  { name: "Online",
    description:"",
    address1: "10995 Le Conte Ave",
    city:"Los Angeles",
    state:"CA",
    zip:"90095",
    country:"USA",
    location_type_id: 1
  },
  { name: "Norwell, MA",
    description:"",
    address1: "101 Accord Park Drive",
    city:"Norwell",
    state:"MA",
    zip:"02061",
    country:"USA",
    location_type_id: 2
  },
  { name: "Boston, MA",
    description:"",
    address1: "1010 Massachusetts Ave",
    city:"Boston",
    state:"MA",
    zip:"02118",
    country:"USA",
    location_type_id: 2
  },
  { name: "Boston, MA",
    description:"",
    address1: "33 Harrison Ave",
    address2:"#501",
    city:"Boston",
    state:"MA",
    zip:"02111",
    country:"USA",
    location_type_id: 2
  },
  { name: "Salt Lake City, UT",
    description:"",
    address1: "2222 W 2300 S",
    city:"Salt Lake City",
    state:"UT",
    zip:"84119",
    country:"USA",
    location_type_id: 2
  },
  { name: "Newton, MA",
    description:"",
    address1: "90 Bridge St",
    address2: "#200",
    city:"Newton",
    state:"MA",
    zip:"02458",
    country:"USA",
    location_type_id: 2
  }
  ])

LocationType.create([
  { name:"School",
    description:"" },
  { name:"Job",
    description:"" }
    ])

School.create([{
  name: "Stanford University",
  location_id: 1,
  start_date: "2014/09/22",
  end_date: "2016/01/01",
  date_note: "[expected]",
  degree: "M.S. in Civil & Environmental Engineering, Atmosphere/Energy focus",
  status: "Full-time",
  additional_info: "",
  image_path: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/stanford_logo.png" },

  {
  name: "UCLA Extension",
  location_id: 4,
  start_date: "2013/01/09",
  end_date: "2013/03/27",
  degree: "Introduction to Statistics and Quantitative Methods (Online)",
  status: "Part-time",
  image_path: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/ucla_logo.jpeg" },

  {
  name: "Middlebury College",
  location_id: 2,
  start_date: "2005/09/01",
  end_date: "2009/05/01",
  degree: "Joint B.A. in Environmental Studies and Geography, French minor",
  status: "Full-time",
  additional_info: "Senior Thesis: <a href=\"/thesis\">The Grocery Gap: Examining Food Access in US Cities</a>",
  image_path: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/middlebury_logo.png" },

  {
  name: "Universite de Paris 1",
  location_id: 3,
  start_date: "2007/09/01",
  end_date: "2007/12/31",
  degree: "French Immersion Program with coursework conducted in French",
  status: "Part-time",
  additional_info: "",
  image_path: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/universite_paris_1_logo.jpeg" }]
)

Job.create([{
  company: "Launch Academy",
  location_id: 7,
  start_date: "2014/05/01",
  end_date: "2014/07/18",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/launch_academy_logo.png",
  title: "Junior Web Developer",
  status: "Full-time",
  highlights: "Achieved proficiency as a junior sofware engineer through a 10-week immersive bootcamp"
  },
  {
  company: "Global Consulting International",
  location_id: 8,
  start_date: "2013/06/01",
  end_date: "2014/04/14",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/gci-logo.png",
  title: "GIS Analyst",
  status: "Full-time",
  highlights: "Served as a GIS subject matter expert to the US Forest Service, providing Helpdesk support and training development for the technologies which manage, analyze and visualize the agency's spatial data"
  },
  {
  company: "Columbus Technologies & Services, Inc",
  location_id: 8,
  start_date: "2012/05/21",
  end_date: "2013/05/24",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/columbus_logo.jpeg",
  title: "GIS Specialist",
  status: "Full-time",
  highlights: "Delivered onsite technical GIS support to the US Forest Service’s Geospatial Services and Technology Center and produced training sessions to educate users on emerging desktop and web GIS technologies"
  },
  {
  company: "Coler & Colantonio, Inc",
  location_id: 5,
  start_date: "2012/05/22",
  end_date: "2013/05/31",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/cnc_logo.jpeg",
  title: "Project Engineer (Part-time)",
  status: "Part-time",
  highlights: "Maintained and updated custom Python-based toolsets"
  },
  {
  company: "Coler & Colantonio, Inc",
  location_id: 5,
  start_date: "2009/12/07",
  end_date: "2012/05/07",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/cnc_logo.jpeg",
  title: "Project Engineer",
  status: "Full-time",
  highlights: "Developed and trained users on custom Python-based tools to automate human and environmental risk analysis posed by oil and gas pipelines, and customized algorithms to fulfill client needs"
  },
  {
  company: "Summit Educational Group",
  location_id: 9,
  start_date: "2009/12/01",
  end_date: "2011/05/01",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/summit_logo.png",
  title: "SAT Tutor",
  status: "Part-time",
  highlights: "Instructed groups of high-school students in the subjects and test-taking strategies critical to success on the SAT"
  },
  {
  company: "Boston Parks & Recreation Deparment",
  location_id: 6,
  start_date: "2009/08/01",
  end_date: "2009/11/20",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/boston_logo.png",
  title: "GIS Intern",
  status: "Part-time",
  highlights: "Developed statistical models to assess accessibility to Parks and Recreation for the city's Open Space Plan"
  },
  {
  company: "Middlebury College",
  location_id: 2,
  start_date: "2009/01/01",
  end_date: "2009/05/01",
  company_logo: "https://s3-us-west-2.amazonaws.com/tedkwasnik/images/middlebury_logo.png",
  title: "GIS Lab Monitor",
  status: "Part-time",
  highlights: "Provided technical support to students in GIS and Cartography classes"
  }])

ExpertiseArea.create([{
  name: "Geographic Information Systems (GIS)",
  description: "Enterprise Relational Database Management, Geospatial Analysis, Cartography
Custom Software / Web Map Application Development" },
  {
  name: "Full Stack Web Development",
  description: "Web Application Development, Data Visualization" },
  {name: "Other" }
  ])

Skill.create([
  {name: "ESRI Product Suite"},
  {name: "Geodatabases"},
  {name: "Web Map Services"},
  {name: "Backend"},
  {name: "Frontend"},
  {name: "Deployment"},
  {name: "Adobe Creative Suite"},
  {name: "Sharepoint"},
  {name: "Citrix"}
  ])

AreaSkill.create([
  {skill_id: 1, expertise_area_id: 1 },
  {skill_id: 2, expertise_area_id: 1 },
  {skill_id: 3, expertise_area_id: 1 },
  {skill_id: 4, expertise_area_id: 2 },
  {skill_id: 5, expertise_area_id: 2 },
  {skill_id: 6, expertise_area_id: 2 },
  {skill_id: 7, expertise_area_id: 3 },
  {skill_id: 8, expertise_area_id: 3 },
  ])

SkillSpecific.create([
  {skill_id: 1, description: "ArcGIS for Desktop (ArcInfo) v9.3+"},
  {skill_id: 1, description: "ArcSDE"},
  {skill_id: 1, description: "Custom Toolboxes (ModelBuilder & Python)"},
  {skill_id: 1, description: "Spatial Analyst, 3D Analyst, Network Analyst"},

  {skill_id: 2, description: "Oracle"},
  {skill_id: 2, description: "SQL Server"},
  {skill_id: 2, description: "PostGIS"},

  {skill_id: 3, description: "Google Maps API"},
  {skill_id: 3, description: "Mapbox JS & Leaflet JS"},
  {skill_id: 3, description: "ArcGIS Online"},

  {skill_id: 4, description: "Ruby on Rails"},
  {skill_id: 5, description: "HTML & CSS"},
  {skill_id: 5, description: "Javascript"},
  {skill_id: 5, description: "jQuery"},
  {skill_id: 5, description: "Bootstrap"},
  {skill_id: 5, description: "Foundation"},
  {skill_id: 4, description:  "Postgresql"},
  {skill_id: 4, description:  "Git / Github"},
  {skill_id: 6, description: "Heroku"},
  {skill_id: 6, description: "Amazon Web Services"},

  {skill_id: 7, description: "Illustrator"},
  {skill_id: 7, description: "Photoshop"},

  ])

AdditionalDetail.create([
  {name: "Activities", description: "<ul>
      <li>2013 ESRI International User Conference Attendee & Map Gallery Contributor</li>
      <li>2012 ESRI Developer's Summit Attendee</li>
      <li>2009 Middlebury College Student Symposium Presenter</li>
     </ul>"}])



