module ApplicationHelper

  def user_nav_items
    [
      {
        url: new_project_path,
        title: 'New Project'
      },
      {
        url: new_floor_plan_path,
        title: 'New Floor Plan'
      }
    ]
  end

  def user_nav_helper style, tag_type
    nav_links = ''

    user_nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: projects_path,
        title: 'Projects'
      },
      {
        url: floor_plans_path,
        title: 'Floor Plans'
      },
      {
        url: contact_pages_path,
        title: 'Contact'
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
