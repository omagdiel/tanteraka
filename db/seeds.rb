10.times do |project|
  Project.create!(
    title: "House ##{project}",
    info: "This is a nice house with a bunch of features",
    main_img: "https://www.roomsketcher.com/wp-content/uploads/2015/11/RoomSketcher-2-Bedroom-Floor-Plans.jpg"
  )
end

10.times do |project_image|
  4.times do |project_img|
    ProjectImage.create!(
      image: "https://www.roomsketcher.com/wp-content/uploads/2015/11/RoomSketcher-2-Bedroom-Floor-Plans.jpg",
      project_id: "#{project_image + 1}"
    )
  end
end

10.times do |floor_plan|
  FloorPlan.create!(
    title: "Floor Plan ##{floor_plan}",
    info: "This floor plan is great for families",
    main_img: "https://www.roomsketcher.com/wp-content/uploads/2015/11/RoomSketcher-2-Bedroom-Floor-Plans.jpg"
  )
end

10.times do |fp_image|
  4.times do |fp_img|
    FloorPlanImage.create!(
      image: "https://www.roomsketcher.com/wp-content/uploads/2015/11/RoomSketcher-2-Bedroom-Floor-Plans.jpg",
      floor_plan_id: "#{fp_image + 1}"
    )
  end
end
