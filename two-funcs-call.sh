set -x 
if [ $# != 2 ];then
	echo "args error. using:$0 func1 func2"
	exit 1;
fi
cd /sys/kernel/debug/tracing/
echo 0 > ./tracing_on
echo "p $1" >> ./kprobe_events
echo "p $2" >> ./kprobe_events
echo traceon > ./events/kprobes/p_$1_0/trigger
echo traceoff > ./events/kprobes/p_$2_0/trigger
echo io_serial* >> ./set_ftrace_notrace
echo serial8250* >> ./set_ftrace_notrace
echo wait_for_xmitr >> set_ftrace_notrace
echo function > ./current_tracer
echo 1 > events/kprobes/enable

