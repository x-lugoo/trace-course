if [ $# != 1 ];then
	echo "args error. using:$0 filename"
	exit 1;
fi
TRACE_PATH=/sys/kernel/debug/tracing/
TMP_PATH=/tmp/ftrace-filter-tmp
global -f $1 | grep -iv define |awk '{printf "%s*\n",$1}' > $TMP_PATH 
while read line; do echo $line; echo $line >> $TRACE_PATH/set_ftrace_filter ;done < $TMP_PATH
rm $TMP_PATH
echo "completed"

