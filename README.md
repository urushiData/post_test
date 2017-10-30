# README

local_file_path =
server_ip_port =

curl -X POST  -F "fileupload[file]"="@$local_file_path" http://$server_ip_port/fileuploads
