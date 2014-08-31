# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

School.create([{
  name: "Stanford University",
  location: "Stanford, California",
  start_date: "2014/09/22",
  end_date: "2016/01/01",
  degree: "M.S. in Civil & Environmental Engineering, Atmosphere/Energy focus",
  additional_info: "",
  image_path: "stanford_logo.png" },

  {
  name: "Middlebury College",
  location: "Middlebury, Vermont",
  start_date: "2005/09/01",
  end_date: "2009/05/01",
  degree: "Joint B.A. in Environmental Studies and Geography, French minor",
  additional_info: "Senior Thesis: <a href=\"/thesis\">The Grocery Gap: Examining Food Access in US Cities</a>",
  image_path: "middlebury_logo.gif" }]
)

Job.create([{
  company: "Launch Academy",
  location: "Boston, MA",
  start_date: "2014/05/01",
  end_date: "2014/07/18",
  company_logo: "launch_academy_logo.png",
  title: "Junior Web Developer",
  highlights: "Achieved proficiency as a junior sofware engineer through a 10-week immersive bootcamp"
  },
  {
  company: "Global Consulting International",
  location: "Salt Lake City, Utah",
  start_date: "2013/06/01",
  end_date: "2014/04/14",
  company_logo: "gci-logo.png",
  title: "GIS Analyst",
  highlights: "Served as a GIS subject matter expert to the US Forest Service, providing Helpdesk support and training development for the technologies which manage, analyze and visualize the agency's spatial data"
  },
  {
  company: "Columbus Technologies & Services, Inc",
  location: "Salt Lake City, Utah",
  start_date: "2012/05/21",
  end_date: "2013/05/24",
  company_logo: "columbus_logo.jpeg",
  title: "GIS Specialist",
  highlights: "Delivered onsite technical GIS support to the US Forest Service’s Geospatial Services and Technology Center and produced training sessions to educate users on emerging desktop and web GIS technologies"
  },
  {
  company: "Coler & Colantonio, Inc",
  location: "Norwell, Massachusetts",
  start_date: "2009/12/07",
  end_date: "2012/05/07",
  company_logo: "cnc_logo.jpeg",
  title: "Project Engineer",
  highlights: "Developed and trained users on custom Python-based tools to automate human and environmental risk analysis posed by oil and gas pipelines, and customized algorithms to fulfill client needs"
  },
  {
  company: "Boston Parks & Recreation Deparment",
  location: "Boston, Massachusetts",
  start_date: "2009/08/01",
  end_date: "2009/11/20",
  company_logo: "boston_logo.jpeg",
  title: "GIS Intern",
  highlights: "Developed statistical models to assess accessibility to Parks and Recreation for the city's Open Space Plan"
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



