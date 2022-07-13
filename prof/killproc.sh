
#!/bin/bash


ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}
