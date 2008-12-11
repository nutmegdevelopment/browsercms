module Cms::Routes
  def routes_for_browser_cms_news_module
    news_release_details '/news_releases/:year/:month/:day/:slug',
      :controller => 'cms/content',
      :action => 'show',
      :page_path => ['news_releases','details'],
      :prepare_with => {
        :content_type => 'NewsRelease',
        :method => 'prepare_params_for_details!'
      },
      :year => /\d{4,}/,
      :month => /\d{2}/,
      :day => /\d{2}/
  end
end