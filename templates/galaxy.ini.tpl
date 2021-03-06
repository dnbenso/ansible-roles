[server:main]
use = egg:Paste#http
use_threadpool = True
host = 127.0.0.1
port = 8080

[filter:proxy-prefix]
use = egg:PasteDeploy#prefix
prefix = /galaxy

[filter:gzip]
use = egg:Paste#gzip

[app:main]
new_file_path = /mnt/galaxy/tmp
data_manager_config_file = /mnt/galaxy/galaxy-app/config/data_manager_conf.xml.sample
external_service_type_config_file = /mnt/galaxy/galaxy-app/config/external_service_types_conf.xml.sample
citation_cache_lock_dir = /mnt/galaxy/citations/locks
template_cache_path = /mnt/galaxy/template_cache
whoosh_index_dir = /mnt/galaxy/whoosh_cache
job_working_directory = /mnt/galaxy/tmp/job_working_directory
citation_cache_data_dir = /mnt/galaxy/citations/data
openid_consumer_cache_path = /mnt/galaxy/openid_consumer_cache
shed_data_manager_config_file = /mnt/galaxy/var/shed_data_manager_conf.xml
object_store_cache_path = /mnt/galaxy/object_store_cache
openid_config_file = /mnt/galaxy/galaxy-app/config/openid_conf.xml.sample
integrated_tool_panel_config = /mnt/galaxy/var/integrated_tool_panel.xml
ucsc_build_sites = /mnt/galaxy/galaxy-app/tool-data/shared/ucsc/ucsc_build_sites.txt.sample
paste.app_factory = galaxy.web.buildapp:app_factory
static_images_dir = /mnt/galaxy/galaxy-app/static/images
shed_tool_data_path = /mnt/galaxyIndices/tool-data/dm
database_connection = postgres://galaxy:{{ postgresdb_pass }}@lservices.{{ domainname }}:{{ pg_port }}/galaxy
ucsc_display_sites = gvlmain,test,archaea,ucla
nginx_upload_path = /_upload
builds_file_path = /mnt/galaxy/galaxy-app/config/builds.txt
static_robots_txt = /mnt/galaxy/galaxy-app/static/robots.txt
allow_user_deletion = True
enable_unique_workflow_defaults = True
filter-with = proxy-prefix
use_pbkdf2 = False
database_engine_option_max_overflow = 50
static_dir = /mnt/galaxy/galaxy-app/static/
database_engine_option_pool_size = 20
support_url = https://genome.edu.au/wiki/GVL_Help
tool_dependency_dir = /mnt/galaxy/tools
set_metadata_externally = True
static_scripts_dir = /mnt/galaxy/galaxy-app/static/scripts/
retry_metadata_internally = True
migrated_tools_config = /mnt/galaxy/var/migrated_tools_conf.xml
nginx_upload_store = /mnt/galaxy/upload_store
len_file_path = /mnt/galaxy/galaxy-app/tool-data/len
tool_data_table_config_path = /mnt/galaxy/galaxy-app/config/tool_data_table_conf.xml
ftp_upload_dir = /mnt/galaxy/tmp/ftp
galaxy_data_manager_data_path = /mnt/galaxyIndices/genomes
enable_openid = True
file_path = /mnt/galaxy/files
genome_data_path = /mnt/galaxyIndices/genomes
database_engine_option_server_side_cursors = True
enable_job_recovery = True
static_favicon_dir = /mnt/galaxy/galaxy-app/static/favicon.ico
tool_config_file = /mnt/galaxy/galaxy-app/config/tool_conf.xml,/mnt/galaxy/galaxy-app/config/shed_tool_conf_cloud.xml
nginx_x_accel_redirect_base = /_x_accel_redirect
brand = GVL 4.0.0
shed_tool_data_table_config = /mnt/galaxy/var/shed_tool_data_table_conf.xml
install_database_connection = sqlite:////mnt/galaxy/var/galaxy_install_db.sqlite?isolation_level=IMMEDIATE
visualization_plugins_directory = config/plugins/visualizations
database_engine_option_strategy = threadlocal
rsync_url = rsync://scofield.bx.psu.edu/indexes
outputs_to_working_directory = False
track_jobs_in_database = True
allow_user_dataset_purge = True
allow_library_path_paste = True
tool_sheds_config_file = /mnt/galaxy/galaxy-app/config/tool_sheds_conf.xml
datatypes_config_file = /mnt/galaxy/galaxy-app/config/datatypes_conf.xml
expose_dataset_path = True
library_import_dir = /mnt/galaxy/tmp/library_import_dir
cleanup_job = onsuccess
static_enabled = True
cluster_job_queue_workers = 3
cluster_files_directory = /mnt/galaxy/tmp/pbs
tool_data_path = /mnt/galaxyIndices
ftp_upload_site = 203.101.228.180
admin_users = d.benson@uq.edu.au,m.cao1@uq.edu.au

