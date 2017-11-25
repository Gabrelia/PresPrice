module SearchHelper
  
  def sortable_columns
    ["Medicine"]
  end
  
  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "Medicine"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def custom_link_to(title, icon, column, direction)
    "#{title} <span class='#{icon}'></span>".html_safe
  end 

  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
    icon = column == sort_column ? icon : ""
    
    link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
  end
end
