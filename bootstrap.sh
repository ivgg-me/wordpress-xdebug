!/bin/bash

sed -i 's/xdebug.collect_assignments=.*/xdebug.collect_assignments=${XDEBUG_COLLECT_ASSIGNMENTS}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.collect_includes=.*/xdebug.collect_includes=${XDEBUG_COLLECT_INCLUDES}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.collect_params=.*/xdebug.collect_params=${XDEBUG_COLLECT_PARAMS}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.collect_return=.*/xdebug.collect_return=${XDEBUG_COLLECT_RETURN}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.collect_vars=.*/xdebug.collect_vars=${XDEBUG_COLLECT_VARS}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.coverage_enable=.*/xdebug.coverage_enable=${XDEBUG_COLLECT_COVERAGE_ENABLE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.COOKIE=.*/xdebug.dump.COOKIE=${XDEBUG_DUMP_COOKIE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.FILES=.*/xdebug.dump.FILES=${XDEBUG_DUMP_FILES}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.GET=.*/xdebug.dump.GET=${XDEBUG_DUMP_GET}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.POST=.*/xdebug.dump.POST=${XDEBUG_DUMP_POST}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.REQUEST=.*/xdebug.dump.REQUEST=${XDEBUG_DUMP_REQUEST}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.SERVER=.*/xdebug.dump.SERVER=${XDEBUG_DUMP_SERVER}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump.SESSION=.*/xdebug.dump.SESSION=${XDEBUG_DUMP_SESSION}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump_globals=.*/xdebug.dump_globals=${XDEBUG_DUMP_GLOBALS}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump_once=.*/xdebug.dump_once=${XDEBUG_DUMP_ONCE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.dump_undefined=.*/xdebug.dump_undefined=${XDEBUG_DUMP_UNDEFINED}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.force_display_errors=.*/xdebug.force_display_errors=${XDEBUG_FORCE_DISPLAY_ERRORS}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.force_error_reporting=.*/xdebug.force_error_reporting=${XDEBUG_FORCE_ERROR_REPORTNG}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.idekey=.*/xdebug.idekey=${XDEBUG_IDEKEY}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
#sed -i 's/xdebug.profiler_aggregate=.*/xdebug.profiler_aggregate=${XDEBUG_PROFILER_AGGREGATE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.profiler_append=.*/xdebug.profiler_append=${XDEBUG_PROFILER_APPEND}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.profiler_enable=.*/xdebug.profiler_enable=${XDEBUG_PROFILER_ENABLE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.remote_log_level=.*/xdebug.remote_log_level=${XDEBUG_REMOTE_LOG_LEVEL}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.remote_host=.*/xdebug.remote_host=${XDEBUG_REMOTE_HOST}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.remote_port=.*/xdebug.remote_port=${XDEBUG_REMOTE_PORT}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.remote_timeout=.*/xdebug.remote_timeout=${XDEBUG_REMOTE_TIMEOUT}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.show_error_trace=.*/xdebug.show_error_trace=${XDEBUG_SHOW_ERROR_TRACE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.show_exception_trace=.*/xdebug.show_exception_trace=${XDEBUG_SHOW_EXCEPTION_TRACE}/g' /usr/local/etc/php/conf.d/xdebug.ini && \
sed -i 's/xdebug.show_local_vars=.*/xdebug.show_local_vars=${XDEBUG_SHOW_LOCAL_VARS}/g' /usr/local/etc/php/conf.d/xdebug.ini