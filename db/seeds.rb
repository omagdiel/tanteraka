10.times do |project|
  Project.create!(
    title: "House ##{project}",
    info: "This is a nice house with a bunch of features",
    main_img: "https://via.placeholder.com/350x150",
    img: "https://via.placeholder.com/350x150"
  )
end
