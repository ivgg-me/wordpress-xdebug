FROM wordpress:5.4.2-php7.4

ENV XDEBUG_VERSION=2.9.6
ENV XDEBUG_COLLECT_ASSIGNMENTS false
ENV XDEBUG_COLLECT_INCLUDES true
ENV XDEBUG_COLLECT_PARAMS 0
ENV XDEBUG_COLLECT_RETURN false
ENV XDEBUG_COLLECT_VARS false
ENV XDEBUG_COLLECT_COVERAGE_ENABLE true
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
ENV XDEBUG_FORCE_DISPLAY_ERRORS 0
ENV XDEBUG_FORCE_ERROR_REPORTNG 0
ENV XDEBUG_IDEKEY wordpress-xdebug
#ENV XDEBUG_PROFILER_AGGREGATE 0
ENV XDEBUG_PROFILER_APPEND 0
ENV XDEBUG_PROFILER_ENABLE 0
ENV XDEBUG_REMOTE_LOG_LEVEL 7
ENV XDEBUG_REMOTE_HOST host.docker.internal
ENV XDEBUG_REMOTE_PORT 9000
ENV XDEBUG_REMOTE_TIMEOUT 200
ENV XDEBUG_SHOW_ERROR_TRACE 0
ENV XDEBUG_SHOW_EXCEPTION_TRACE 0
ENV XDEBUG_SHOW_LOCAL_VARS 0

RUN pecl install "xdebug-${XDEBUG_VERSION}" && \
    docker-php-ext-enable xdebug

RUN mkdir -p /var/xdebug/profiler

RUN echo "xdebug.collect_assignments=${XDEBUG_COLLECT_ASSIGNMENTS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.collect_includes=${XDEBUG_COLLECT_INCLUDES}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.collect_params=${XDEBUG_COLLECT_PARAMS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.collect_return=${XDEBUG_COLLECT_RETURN}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.collect_vars=${XDEBUG_COLLECT_VARS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.coverage_enable=${XDEBUG_COLLECT_COVERAGE_ENABLE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
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
    echo "xdebug.force_display_errors=${XDEBUG_FORCE_DISPLAY_ERRORS}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.force_error_reporting=${XDEBUG_FORCE_ERROR_REPORTNG}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.idekey=${XDEBUG_IDEKEY}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
 #   echo "xdebug.profiler_aggregate=${XDEBUG_PROFILER_AGGREGATE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.profiler_append=${XDEBUG_PROFILER_APPEND}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.profiler_enable=${XDEBUG_PROFILER_ENABLE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.profiler_output_dir=/var/xdebug/profiler" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.remote_autostart=true" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.remote_enable=true" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.remote_log=/var/xdebug/remote.log" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.remote_log_level=${XDEBUG_REMOTE_LOG_LEVEL}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.remote_host=${XDEBUG_REMOTE_HOST}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
	echo "xdebug.remote_port=${XDEBUG_REMOTE_PORT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.remote_timeout=${XDEBUG_REMOTE_TIMEOUT}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.show_error_trace=${XDEBUG_SHOW_ERROR_TRACE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.show_exception_trace=${XDEBUG_SHOW_EXCEPTION_TRACE}" >> /usr/local/etc/php/conf.d/xdebug.ini && \
    echo "xdebug.show_local_vars=${XDEBUG_SHOW_LOCAL_VARS}" >> /usr/local/etc/php/conf.d/xdebug.ini

ADD bootstrap.sh /etc/init.d/bootstrap.sh

RUN update-rc.d bootstrap.sh defaults

VOLUME ["/var/xdebug"]