# notify_new_ip
This project is composed by:
 - **new_ip.txt:** the place where IP of new servers are inserted. Note: First character is a letter (A for add, R for remove).
 - **check_ip.sh:** script that read new_ip.txt and insert/delete IP from ipvsadm. After the insert/delete the record will be deleted from the file.
