#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# bundle exec rails db:migrate
# bundle exec puma -C config/puma.rb
# bundle exec rails g model task title:string sub_title:text due_date:datetime priority:integer status:integer

bundle exec rails s -b 0.0.0.0