wiki_options = {
    :h1_title => true,
    :user_icons => 'gravatar',
    :live_preview => false,
    :allow_uploads => true,
    :per_page_uploads => true,
    :allow_editing => true,
    :css => true,
    :js => false,
    :mathjax => false,
    :emoji => true,
    :show_all => true
}

Precious::App.set(:wiki_options, wiki_options)

# GitHub::Markup::Markdown::MARKDOWN_GEMS['commonmarker'] = proc { |content, options: {}|
#   CommonMarker.render_html(content, [:UNSAFE, :GITHUB_PRE_LANG], [:tagfilter, :autolink, :table, :strikethrough])
# }

# Gollum::Hook.register(:post_commit, :hook_id) do |committer, sha1|
#     #committer.wiki.repo.git.pull('origin', committer.wiki.ref)
#     committer.wiki.repo.git.push('origin', committer.wiki.ref)
#     #`cd /wiki && git pull`
#     #`cd /wiki && git push`
# end

Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES
Gollum::Page::FORMAT_NAMES = { :markdown => "Markdown" }

# require 'omnigollum'
# require 'omniauth/strategies/github'
#
# options = {
#     :providers => Proc.new do
#     provider :github, 'Client ID', 'Client Secret'
#     end,
#     :dummy_auth => false,
#
#     :author_format => Proc.new { |user| user.name },
#     :author_email => Proc.new { |user| user.email }
# }
#
# Precious::App.set(:omnigollum, options)
# Precious::App.register Omnigollum::Sinatra