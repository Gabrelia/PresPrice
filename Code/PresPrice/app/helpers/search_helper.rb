module SearchHelper
  
  def sortable_columns
    ["name", "walmart_price", "cvs_price", "walgreens_price", "riteaid_price", "generic"]
  end
  
  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def custom_link_to(name, icon, column, direction)
    "#{name} <span class='#{icon}'></span>".html_safe
  end 

  def sort_link(column, name = nil)
    name ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
    icon = column == sort_column ? icon : ""
    
    link_to "#{name} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
  end
end
