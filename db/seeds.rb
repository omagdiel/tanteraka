def seed_image(file_name, file_type)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.#{file_type}"))
end

10.times do |project|
  Project.create!(
    title: "House ##{project}",
    info: "This is a nice house with a bunch of features",
    main_img: seed_image('house', 'jpg')
  )
end

10.times do |project_image|
  4.times do |project_img|
    ProjectImage.create!(
      image: seed_image('interior', 'jpeg'),
      project_id: "#{project_image + 1}"
    )
  end
end

10.times do |floor_plan|
  FloorPlan.create!(
    title: "Floor Plan ##{floor_plan}",
    info: "This floor plan is great for families",
    main_img: seed_image('wireFrame', 'jpg')
  )
end

10.times do |fp_image|
  4.times do |fp_img|
    FloorPlanImage.create!(
      image: seed_image('floorPlan', 'jpg'),
      floor_plan_id: "#{fp_image + 1}"
    )
  end
end
