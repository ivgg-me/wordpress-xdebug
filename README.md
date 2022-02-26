# The WordPress-Xdebug Docker image

This image is based on the [official WordPress image](https://hub.docker.com/_/wordpress) and extends it with [Xdebug](https://xdebug.org/) for remote debugging purposes.

The image provides the mount point `/var/xdebug` in addition to the mount points of the base image.

Furthermore the image provides environment variables to configure the [settings of Xdebug](https://xdebug.org/docs/all_settings) as described in the following table.

| Environment variable | Xdebug setting | Default value |
| -------------------- | -------------- | ------------- |
| XDEBUG_CLIENT_DICOVERY_HEADER | [xdebug.client_discovery_header](https://xdebug.org/docs/all_settings#client_discovery_header) |  |
| XDEBUG_CLIENT_HOST | [xdebug.client_host](https://xdebug.org/docs/all_settings#client_host) | host.docker.internal |
| XDEBUG_CLIENT_PORT | [xdebug.client_port](https://xdebug.org/docs/all_settings#client_port) | 9003 |
| XDEBUG_COLLECT_ASSIGNMENTS | [xdebug.collect_assignments](https://xdebug.org/docs/all_settings#collect_assignments) | false |
| XDEBUG_COLLECT_RETURN | [xdebug.collect_return](https://xdebug.org/docs/all_settings#collect_return) | false |
| XDEBUG_CONNECTION_TIMEOUT | [xdebug.connect_timeout_ms](https://xdebug.org/docs/all_settings#connect_timeout_ms) | 200 |
| XDEBUG_DISCOVER_CLIENT_HOST | [xdebug.discover_client_host](https://xdebug.org/docs/all_settings#discover_client_host) | false |
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
| XDEBUG_FILE_LINK_FORMAT | [xdebug.file_link_format](https://xdebug.org/docs/all_settings#file_link_format) |  |
| XDEBUG_FILENAME_FORMAT | [xdebug.filename_format](https://xdebug.org/docs/all_settings#filename_format) | ...%s%n |
| XDEBUG_FORCE_DISPLAY_ERRORS | [xdebug.force_display_errors](https://xdebug.org/docs/all_settings#force_display_errors) | 0 |
| XDEBUG_FORCE_ERROR_REPORTNG | [xdebug.force_error_reporting](https://xdebug.org/docs/all_settings#force_error_reporting) | 0 |
| XDEBUG_GC_STATS_OUPUT_NAME | [xdebug.gc_stats_output_name](https://xdebug.org/docs/all_settings#gc_stats_output_name) | gcstats.%p |
| XDEBUG_HALT_LEVEL | [xdebug.halt_level](https://xdebug.org/docs/all_settings#halt_level) | 0 |
| XDEBUG_IDEKEY | [xdebug.idekey](https://xdebug.org/docs/all_settings#idekey) | wordpress-xdebug |
| XDEBUG_LOG_LEVEL | [xdebug.log_level](https://xdebug.org/docs/all_settings#log_level) | 7 |
| XDEBUG_MAX_NESTING_LEVEL | [xdebug.max_nesting_level](https://xdebug.org/docs/all_settings#max_nesting_level) | 256 |
| XDEBUG_MAX_STACK_FRAMES | [xdebug.max_stack_frames](https://xdebug.org/docs/all_settings#max_stack_frames) | -1 |
| XDEBUG_MODE | [xdebug.mode](https://xdebug.org/docs/all_settings#mode) | develop |
| XDEBUG_PROFILER_APPEND | [xdebug.profiler_append](https://xdebug.org/docs/all_settings#profiler_append) | 0 |
| XDEBUG_PROFILER_OUTPUT_NAME | [xdebug.profiler_output_name](https://xdebug.org/docs/all_settings#profiler_output_name) | cachegrind.out.%p |
| XDEBUG_SCREAM | [xdebug.scream](https://xdebug.org/docs/all_settings#scream) | false |
| XDEBUG_SHOW_ERROR_TRACE | [xdebug.show_error_trace](https://xdebug.org/docs/all_settings#show_error_trace) | 0 |
| XDEBUG_SHOW_EXCEPTION_TRACE | [xdebug.show_exception_trace](https://xdebug.org/docs/all_settings#show_exception_trace) | 0 |
| XDEBUG_SHOW_LOCAL_VARS | [xdebug.show_local_vars](https://xdebug.org/docs/all_settings#show_local_vars) | 0 |
| XDEBUG_START_UPON_ERROR | [xdebug.start_upon_error](https://xdebug.org/docs/all_settings#start_upon_error) | default |
| XDEBUG_START_WITH_REQUEST | [xdebug.start_with_request](https://xdebug.org/docs/all_settings#start_with_request) | default |
| XDEBUG_TRACE_FORMAT | [xdebug.trace_format](https://xdebug.org/docs/all_settings#trace_format) | 0 |
| XDEBUG_TRACE_OPTIONS | [xdebug.trace_options](https://xdebug.org/docs/all_settings#trace_options) | 0 |
| XDEBUG_TRACE_OUTPUT_NAME | [xdebug.trace_output_name](https://xdebug.org/docs/all_settings#trace_output_name) | trace.%c |
| XDEBUG_TRIGGER_VALUE | [xdebug.trigger_value](https://xdebug.org/docs/all_settings#trigger_value) |  |
| XDEBUG_USE_COMPRESSION | [xdebug.use_compression](https://xdebug.org/docs/all_settings#use_compression) | true |
| XDEBUG_VAR_DISPLAY_MAX_CHILDREN | [xdebug.var_display_max_children](https://xdebug.org/docs/all_settings#var_display_max_children) | 128 |
| XDEBUG_VAR_DISPLAY_MAX_DATA | [xdebug.var_display_max_data](https://xdebug.org/docs/all_settings#var_display_max_data) | 512 |
| XDEBUG_VAR_DISPLAY_MAX_DEPTH | [xdebug.var_display_max_depth](https://xdebug.org/docs/all_settings#var_display_max_depth) | 3 |

As [log file](https://xdebug.org/docs/all_settings#log) will be the file `/var/xdebug/xdebug.log` configured.

As [the directory where Xdebug will write tracing, profiling, and garbage collection statistics to](https://xdebug.org/docs/all_settings#output_dir) will be the directory `/var/xdebug/output` configured.

If you are using this image you can open in your browser the page

1. `phpinfo.php` to retrieve [information about PHP's configuration](https://www.php.net/manual/en/function.phpinfo.php);
2. `xdebug_info.php` to retrieve [diagnostic information according to Xdebug](https://xdebug.org/docs/all_functions#xdebug_info).

The created images will be published in the Docker Hub Repository [ivgg/wordpress-xdebug](https://hub.docker.com/repository/docker/ivgg/wordpress-xdebug).

> :warning: **This README describes the images newer as `5.4.2-php7.4`!**

***

Copyright © [Gergö Gabor Ilyes-Veisz](https://github.com/ivgg-me). Licensed under the [GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0.html).

<a href="https://www.buymeacoffee.com/ivgg" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" height="41" width="174"></a>