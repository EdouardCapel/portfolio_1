puts 'Cleaning database'
User.destroy_all
Project.destroy_all

project_test_list = []

(1..9).each do |i|
  new_project = {
    head: {
      title: "Head_title_#{i}",
      banner: "Head_banner_#{i}",
      description: "Head_description_#{i}",
      period: "Head_period_#{i}",
      typology: "Head_typology_#{i}"
    },
    body:"Body_test_#{i}"
  }
  project_test_list << new_project
end

project_test_list.each do |project|
  Project.create!(
    head: project[:head],
    body: project[:body],
  )
end


