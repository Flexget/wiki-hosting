FROM gollumwiki/gollum:v5.3.0
RUN gem install github-markup omnigollum omniauth-github
EXPOSE 4567