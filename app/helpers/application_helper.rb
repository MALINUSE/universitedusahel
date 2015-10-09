module ApplicationHelper
  def menu_header
    menu_presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    menu_presenter.dom_id = 'header_menu'
    menu_presenter.css = 'collapse navbar-collapse'
    menu_presenter.menu_tag = :nav
    menu_presenter.list_tag = :ul
    menu_presenter.list_item_tag = :li
    menu_presenter.selected_css = :active
    menu_presenter.first_css = :first
    menu_presenter.last_css = :last
    menu_presenter.list_tag_css = 'nav navbar-nav'
    menu_presenter.max_depth = 0
    menu_presenter.to_html
  end
end
