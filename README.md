# The WordPress-Xdebug Docker image

This image is based on the [official WordPress image](https://hub.docker.com/_/wordpress) and extends it with [Xdebug](https://xdebug.org/) for remote debugging purposes.

The image provides environment variables to configure the [settings of Xdebug](https://xdebug.org/docs/all_settings) as described in the following table.

| Environment variable | Xdebug setting | Default value |
| -------------------- | -------------- | ------------- |
| XDEBUG_COLLECT_ASSIGNMENTS | [xdebug.collect_assignments](https://xdebug.org/docs/all_settings#collect_assignments) | false |
| XDEBUG_COLLECT_INCLUDES | [xdebug.collect_includes](https://xdebug.org/docs/all_settings#collect_includes) | true |
| XDEBUG_COLLECT_PARAMS | [xdebug.collect_params](https://xdebug.org/docs/all_settings#collect_params) | 0 |
| XDEBUG_COLLECT_RETURN | [xdebug.collect_return](https://xdebug.org/docs/all_settings#collect_return) | false |
| XDEBUG_COLLECT_VARS | [xdebug.collect_vars](https://xdebug.org/docs/all_settings#collect_vars) | false |
| XDEBUG_COLLECT_COVERAGE_ENABLE | [xdebug.coverage_enable](https://xdebug.org/docs/all_settings#coverage_enable) | true |
| XDEBUG_DUMP_COOKIE | [xdebug.dump.COOKIE](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_FILES | [xdebug.dump.FILES](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_GET | [xdebug.dump.GET](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_POST | [xdebug.dump.POST](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_REQUEST | [xdebug.dump.REQUEST](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_SERVER | [xdebug.dump.SERVER](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_SESSION | [xdebug.dump.SESSION](https://xdebug.org/docs/all_settings#dump.*) | Empty |
| XDEBUG_DUMP_GLOBALS | [xdebug.dump_globals](https://xdebug.org/docs/all_settings#dump_globals) | true |
| XDEBUG_DUMP_ONCE | [xdebug.dump_once](https://xdebug.org/docs/all_settings#dump_once) | true |
| XDEBUG_DUMP_UNDEFINED | [xdebug.dump_undefined](https://xdebug.org/docs/all_settings#dump_undefined) | false |
| XDEBUG_FORCE_DISPLAY_ERRORS | [xdebug.force_display_errors](https://xdebug.org/docs/all_settings#force_display_errors) | 0 |
| XDEBUG_FORCE_ERROR_REPORTNG | [xdebug.force_error_reporting](https://xdebug.org/docs/all_settings#force_error_reporting) | 0 |
| XDEBUG_IDEKEY | [xdebug.idekey](https://xdebug.org/docs/all_settings#idekey) | wordpress-xdebug |
| XDEBUG_PROFILER_APPEND | [xdebug.profiler_append](https://xdebug.org/docs/all_settings#profiler_append) | 0 |
| XDEBUG_PROFILER_ENABLE | [xdebug.profiler_enable](https://xdebug.org/docs/all_settings#profiler_enable) | 0 |
| XDEBUG_REMOTE_LOG_LEVEL | [xdebug.remote_log_level](https://xdebug.org/docs/all_settings#remote_log_level) | 7 |
| XDEBUG_REMOTE_HOST | [xdebug.remote_host](https://xdebug.org/docs/all_settings#remote_host) | host.docker.internal |
| XDEBUG_REMOTE_PORT | [xdebug.remote_port](https://xdebug.org/docs/all_settings#remote_port) | 9000 |
| XDEBUG_REMOTE_TIMEOUT | [xdebug.remote_timeout](https://xdebug.org/docs/all_settings#remote_timeout) | 200 |
| XDEBUG_SHOW_ERROR_TRACE | [xdebug.show_error_trace](https://xdebug.org/docs/all_settings#show_error_trace) | 0 |
| XDEBUG_SHOW_EXCEPTION_TRACE | [xdebug.show_exception_trace](https://xdebug.org/docs/all_settings#show_exception_trace) | 0 |
| XDEBUG_SHOW_LOCAL_VARS | [xdebug.show_local_vars](https://xdebug.org/docs/all_settings#show_local_vars) | 0 |

The image provides furthermore the mount point `/var/xdebug`.

As [profiler output directory](https://xdebug.org/docs/all_settings#profiler_output_dir) will be the directory `/var/xdebug/profiler` configured.

As file to log all [Step Debugging](https://xdebug.org/docs/remote) connection attempts, failures and communication into, the file `/var/xdebug/remote.log` will be [configured](https://xdebug.org/docs/all_settings#remote_log).

The created images will be published in the Docker Hub Repository [ivgg/wordpress-xdebug](https://hub.docker.com/repository/docker/ivgg/wordpress-xdebug).

> :warning: **This README describes the images newer as `5.4.2-php7.4`!**

***

This work is released under the [GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0.html).

Copyright © 2020 [Gergö Gabor Ilyes-Veisz](https://github.com/ivgg-me).