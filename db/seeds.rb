# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

connor = User.create( fname: 'Connor', 
                      lname: 'Savage', 
                      login: 'csavage', 
                      password: 'password',
                      password_confirmation: 'password',
                      email: 'connor@savage.net'
                    )

resume = connor.resumes.create( title: 'Full Stack Web Developer',
                                email: 'connor@savage.net',
                                link: 'github.com/CGDS',
                                phone: '206.303.7200',
                                headline: 'Full Stack Web Developer seeking Junior Developer position'
                              )

resume.educations.create([{ institution: 'App Academy',
                            location: 'New York, NY',
                            time: 'Summer 2013',
                            edu_points: [
                              { description: 'Intensive Ruby on Rails and JavaScript Web Development Course' }
                            ]
                          },
                          { institution: 'CUNY - Brooklyn College',
                            location: 'Brooklyn, NY', 
                            time: 'Fall 2009 - Spring 2011',
                            edu_points: [
                              { description: 'Major in Economics, Concentration in Economic Analysis, Minor in Mathematics' },
                              { description: 'GPA: 3.957, 4.00 in Major' },
                              { description: 'After graduation, began pursuing additional BS in Computational Mathematics' }
                            ]
                          },
                          { institution: 'University of Utah - WMI, NOLS',
                            location: 'Lander, WY',
                            time: '2006 - 2007',
                            edu_points: [
                              { description: 'EMT, NREMT, WEMT' },
                              { description: 'GPA: 3.8, 4.00 in WMI' }
                            ] 
                          }
                        ])

resume.projects.create([{ title: 'Says Shoot',
                          subtitle: 'N-Weapon Rock Paper Scissors',
                          link: 'says-shoot.herokuapp.com/',
                          properties: [
                            { description: 'Users may be authenticated by Devise, or log in via FaceBook and OmniAuth' },
                            { description: 'Users may create their own n-weapon games, uploading images of the \'weapons\',
                                            or dragging and dropping previously used weapons utilizing jQueryUI ' },
                            { description: 'Users may be authenticated by Devise, or log in via FaceBook and OmniAuth' }
                          ]
                        },
                        { title: 'I, Churchill',
                          subtitle: 'Social Network for robot Winston Churchills',
                          link: 'github.com/CGDS/I-Churchill',
                          properties: [
                            { description: 'A FaceBook like clone, including posts, messages, photos, albums, 
                                            simple search, and a newsfeed' },
                            { description: 'Newsfeed items utilize polymorphic associations and after create hooks' },
                            { description: 'Users utilize the Devise authentication solution.' }
                          ]
                        },
                        { title: 'Chalet Magazine',
                          subtitle: 'Magazine Web Presence',
                          link: 'coming soon',
                          properties: [
                            { description: 'project still under active development' },
                            { description: 'Designed to use Unicorn to run multiple workers in one Heroku Web Dyno and 
                                            New Relic to provide availability monitoring and prevent spin up delay' }
                          ]
                        }
                      ])

resume.experiences.create([{  title: 'Technical Consultant',
                              company: 'Blue Beard',
                              location: 'New York, NY',
                              time: 'Spring 2012 - Spring 2013',
                              exp_points: [
                                { description: 'Created solutions for the technical challenges of film production' },
                                { description: 'Oversaw construction of specialized equipment, managed complex set construction' }
                              ]
                            },
                            { title: 'College Associate',
                              company: 'CUNY - Brooklyn College',
                              location: 'Brooklyn, NY',
                              time: 'Winter 2010 - Spring 2012',
                              exp_points: [
                                { description: 'Tutored students from 6 courses: Advanced Business Statistics, Microeconomics,
                                                Macroeconomics, Mathematical Methods in Economics, Corporate Finance and Advanced
                                                Programming Techniques (C/C++)' },
                                { description: 'Worked closely with faculty to create study materials to improve learning outcomes' },
                                { description: 'Administered discussion boards to facilitate an alternative learning environment' }
                              ]
                            },
                            { title: 'Trading &amp Quantitative Intern',
                              company: 'SMB Capital',
                              location: 'New York, NY',
                              time: 'Summer, Fall 2010',
                              exp_points: [
                                { description: 'Completed trader training program with incoming group of 18 traders, and
                                                excelled in simulated trading for the duration of the internship' },
                                { description: 'Wrote implied volatility analysis and surface smoothing program in conjunction with
                                                head trader utilizing Newton-Raphson and spline interpolation techniques' },
                                { description: 'Wrote, maintained, &amp operated, 8 new statistical filters for proprietary market
                                                scanning software' },
                                { description: 'Recruited, hired, and managed an outsourced team of 5 independent contractors and 3
                                                additional interns to implement new training software system.' }
                              ]
                            }
                          ])