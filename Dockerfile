FROM wordpress:5.8.4-php7.4

ENV XDEBUG_VERSION=3.1.3
ENV XDEBUG_CLIENT_DICOVERY_HEADER=
ENV XDEBUG_CLIENT_HOST host.docker.internal
ENV XDEBUG_CLIENT_PORT 9003
ENV XDEBUG_COLLECT_ASSIGNMENTS false
ENV XDEBUG_COLLECT_RETURN false
ENV XDEBUG_CONNECTION_TIMEOUT 200
ENV XDEBUG_DISCOVER_CLIENT_HOST false
ENV XDEBUG_DUMP_COOKIE Empty
ENV XDEBUG_DUMP_FILES Empty
ENV XDEBUG_DUMP_GET Empty
ENV XDEBUG_DUMP_POST Empty
ENV XDEBUG_DUMP_REQUEST Empty
ENV XDEBUG_DUMP_SERVER Empty
ENV XDEBUG_DUMP_SESSION Empty
ENV XDEBUG_DUMP_GLOBALS true
ENV XDEBUG_DUMP_ONCE true
ENV XDEBUG_DUMP_UNDEFINED false
ENV XDEBUG_FILE_LINK_FORMAT=
ENV XDEBUG_FILENAME_FORMAT ...%s%n
ENV XDEBUG_FORCE_DISPLAY_ERRORS 0
ENV XDEBUG_FORCE_ERROR_REPORTNG 0
ENV XDEBUG_GC_STATS_OUPUT_NAME gcstats.%p
ENV XDEBUG_HALT_LEVEL 0
ENV XDEBUG_IDEKEY wordpress-xdebug
ENV XDEBUG_LOG_LEVEL 7
ENV XDEBUG_MAX_NESTING_LEVEL 256
ENV XDEBUG_MAX_STACK_FRAMES -1
ENV XDEBUG_MODE develop
ENV XDEBUG_PROFILER_APPEND 0
ENV XDEBUG_PROFILER_OUTPUT_NAME cachegrind.out.%p
ENV XDEBUG_SCREAM false
ENV XDEBUG_SHOW_ERROR_TRACE 0
ENV XDEBUG_SHOW_EXCEPTION_TRACE 0
ENV XDEBUG_SHOW_LOCAL_VARS 0
ENV XDEBUG_START_UPON_ERROR default
ENV XDEBUG_START_WITH_REQUEST default
ENV XDEBUG_TRACE_FORMAT 0
ENV XDEBUG_TRACE_OPTIONS 0
ENV XDEBUG_TRACE_OUTPUT_NAME trace.%c
ENV XDEBUG_TRIGGER_VALUE=
ENV XDEBUG_USE_COMPRESSION true
ENV XDEBUG_VAR_DISPLAY_MAX_CHILDREN 128
ENV XDEBUG_VAR_DISPLAY_MAX_DATA 512
ENV XDEBUG_VAR_DISPLAY_MAX_DEPTH 3

RUN pecl install "xdebug-${XDEBUG_VERSION}" && \
    docker-php-ext-enable xdebug

RUN mkdir -p /var/xdebug/output

RUN echo "xdebug.client_discovery_header=${XDEBUG_CLIENT_DICOVERY_HEADER:-\"\"}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.client_host=${XDEBUG_CLIENT_HOST}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.client_port=${XDEBUG_CLIENT_PORT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.collect_assignments=${XDEBUG_COLLECT_ASSIGNMENTS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.collect_return=${XDEBUG_COLLECT_RETURN}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.connect_timeout_ms=${XDEBUG_CONNECTION_TIMEOUT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.discover_client_host=${XDEBUG_DISCOVER_CLIENT_HOST}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.COOKIE=${XDEBUG_DUMP_COOKIE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.FILES=${XDEBUG_DUMP_FILES}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.GET=${XDEBUG_DUMP_GET}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.POST=${XDEBUG_DUMP_POST}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.REQUEST=${XDEBUG_DUMP_REQUEST}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.SERVER=${XDEBUG_DUMP_SERVER}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump.SESSION=${XDEBUG_DUMP_SESSION}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump_globals=${XDEBUG_DUMP_GLOBALS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump_once=${XDEBUG_DUMP_ONCE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.dump_undefined=${XDEBUG_DUMP_UNDEFINED}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.file_link_format=${XDEBUG_FILE_LINK_FORMAT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.filename_format=${XDEBUG_FILENAME_FORMAT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.force_display_errors=${XDEBUG_FORCE_DISPLAY_ERRORS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.force_error_reporting=${XDEBUG_FORCE_ERROR_REPORTNG}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.gc_stats_output_name=${XDEBUG_GC_STATS_OUPUT_NAME}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.halt_level=${XDEBUG_HALT_LEVEL}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.idekey=${XDEBUG_IDEKEY}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.log=/var/xdebug/xdebug.log" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.log_level=${XDEBUG_LOG_LEVEL}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.max_nesting_level=${XDEBUG_MAX_NESTING_LEVEL}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.max_stack_frames=${XDEBUG_MAX_STACK_FRAMES}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.mode=develop" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.output_dir=/var/xdebug/output" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.profiler_append=${XDEBUG_PROFILER_APPEND}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.profiler_output_name=${XDEBUG_PROFILER_OUTPUT_NAME}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.scream=${XDEBUG_SCREAM}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.show_error_trace=${XDEBUG_SHOW_ERROR_TRACE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.show_exception_trace=${XDEBUG_SHOW_EXCEPTION_TRACE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.show_local_vars=${XDEBUG_SHOW_LOCAL_VARS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.start_upon_error=${XDEBUG_START_UPON_ERROR}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.start_with_request=${XDEBUG_START_WITH_REQUEST}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.trace_format=${XDEBUG_TRACE_FORMAT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.trace_options=${XDEBUG_TRACE_OPTIONS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.trace_output_name=${XDEBUG_TRACE_OUTPUT_NAME}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.trigger_value=${XDEBUG_TRIGGER_VALUE:-\"\"}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.use_compression=${XDEBUG_USE_COMPRESSION}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.var_display_max_children=${XDEBUG_VAR_DISPLAY_MAX_CHILDREN}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.var_display_max_data=${XDEBUG_VAR_DISPLAY_MAX_DATA}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.var_display_max_depth=${XDEBUG_VAR_DISPLAY_MAX_DEPTH}" >> /usr/local/etc/php/conf.d/xdebug.ini

ADD bootstrap.sh /etc/init.d/bootstrap.sh

RUN update-rc.d bootstrap.sh defaults

RUN mkdir -p /usr/src/wordpress-xdebug/scripts
ADD --chown=www-data:www-data scripts/*.php /usr/src/wordpress-xdebug/scripts/

VOLUME ["/var/xdebug"]

COPY docker-entrypoint-wordpress-xdebug.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint-wordpress-xdebug.sh"]
CMD ["apache2-foreground"]