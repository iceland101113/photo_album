module ApplicationHelper

  def boostrap_class_for_flash(flash_type)
    case flash_type.to_sym
    when :notice then 'alert-warning'
    when :success then 'alert-success'
    when :error then 'alert-danger'
    when :alert then 'alert-danger'
    else flash_type.to_s
    end
  end
end
