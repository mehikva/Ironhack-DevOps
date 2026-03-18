----------------- common.sh -----------------

source <enter_the_path_of_your_script>/common.sh
log "common.sh initialized from $(whoami)"

# This will create a log file in your log outputs folder, source command will make your terminal refer to this script file for the relevant commands.


----------------- proc_watch.sh -----------------

(sleep 120 &) ; "<enter_the_path_of_your_script>/proc_watch.sh" --name 'sleep' --samples 3 --interval 1
# Will give you log outputs about the running process.


----------------- fm_tool.sh -----------------

"<enter_the_path_of_your_script>/fm_tool.sh" --dir "<enter_the_directory_of_your_logs>" --pattern '*.log' --older-than 0 --archive --retention 3


----------------- backup.sh -----------------

"<enter_the_path_of_your_script>/backup.sh" --source "<your_own_dir>" --dest "<output_file>" --name lab7 --exclude tmp --retention 3
