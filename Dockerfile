FROM logstash:7.13.2
RUN bin/logstash-plugin install logstash-output-gelf
RUN sed -i~ -r "s/self\.default_options\['\w+'\]/# \0/" /usr/share/logstash/vendor/bundle/jruby/2.5.0/gems/gelf-3.0.0/lib/gelf/notifier.rb
