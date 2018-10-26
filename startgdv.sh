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

echo "Executing: python ${cmd} ${DB}"
python ${cmd} ${DB}
