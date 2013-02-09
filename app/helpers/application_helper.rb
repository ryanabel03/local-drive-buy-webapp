module ApplicationHelper
  def nav_link(text, opts={})
    href        = opts.delete :href
    tab         = opts.delete :tab
    active_tab  = current_tab

    if opts[:class]
      opts[:class] << " " + tab.to_s
    else
      opts[:class] = tab.to_s
    end
    opts[:class] << " active" if tab == active_tab

    content_tag :li, opts do
      if block_given?
        yield
      else
        link_to text, href
      end
    end
  end
end
