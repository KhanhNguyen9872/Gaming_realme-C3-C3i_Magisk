#servicetest
sleep 36
su -c "am start -a android.intent.action.MAIN -e message 'Starting reinstall app...' -n com.rja.utility/.ShowToast"
su -c "chmod 777 /data/adb/modules/KN9872_Un/rollbackapp"
su -c "sh /data/adb/modules/KN9872_Un/rollbackapp"
