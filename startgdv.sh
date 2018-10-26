#!/bin/ash
case "-${STARTMODE}" in
  -) 
    cmd=default.py
    ;;
  -DEFAULT)
    cmd=default.py
    ;;
  -SCHEDULER)
    cmd=scheduler.py
    ;;
  -NOSCHEDULER)
    cmd=noscheduler.py
    ;;
  -*)
    cmd=default.py
    ;;
esac

COMMAND="python ${cmd} ${DB}"
echo "Executing: ${COMMAND}"
${COMMAND}
