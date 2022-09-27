#KhanhNguyen9872
SKIPMOUNT=false
AUTOMOUNT=true
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true
SKIPUNZIP=0
DEBUG=false
MINAPI=29
MAXAPI=29
K_VER_MO="kn_20220927.kn9872"
OLD=/data/adb/modules/KhanhNguyen9872_RMX2021/module.prop
OLD1=/data/adb/modules/flushram/module.prop
OLD2=/data/adb/modules/KN9872/module.prop
OLD3=/data/adb/modules/KN9872_Un/module.prop
OLD_VER001=/data/adb/modules/KhanhNguyen9872_RMX2021/$K_VER_MO

function install_swap_script () {
	mv $MODPATH/KhanhNguyen9872/KN9872_swapon.xml $MODPATH/system/xbin/khanh_swapon
	mv $MODPATH/KhanhNguyen9872/KN9872_swapoff.xml $MODPATH/system/xbin/khanh_swapoff
	mv $MODPATH/KhanhNguyen9872/KN9872_swap.xml $MODPATH/system/xbin/khanh_swap
}

function remove_temp () {
	rm -rf /data/cache_kn
	rm -rf $MODPATH
	cleanup
}

STATUS="Stable"
firmware="$(getprop ro.build.display.id)"
module_kn9872="2022-09-27"
module_kn9872d="20220927"
author="Khanh Vui Nguyen Van"
board="$(getprop ro.product.board)"
board1="$(getprop ro.board.platform)"
device="$(getprop ro.product.vendor.device)"
brand="$(getprop ro.product.vendor.brand)"
version="$(getprop ro.vendor.build.version.release)"
model="$(getprop ro.product.vendor.model)"
manu="$(getprop ro.product.vendor.manufacturer)"
hw="$(getprop ro.hardware)"
ui_print "- Verify file: PASS"
ui_print "- Magisk version: $MAGISK_VER ($MAGISK_VER_CODE)"
ui_print "- Module code: $module_kn9872d ($STATUS)"
ui_print "- Date release: $module_kn9872"
ui_print "- Maker: $author"
mkdir /data/cache_kn
echo "K" > /data/cache_kn/$board1.kn9873
echo "K" > /data/cache_kn/$device.kn9873
echo "K" > /data/cache_kn/$board.kn9872
echo "K" > /data/cache_kn/$model.kn9872
echo "K" > /data/cache_kn/$API.kn9872
echo "K" > /data/cache_kn/$brand.kn9872
echo "K" > /data/cache_kn/$manu.kn9873
echo "K" > /data/cache_kn/$version.kn9873
echo "K" > /data/cache_kn/$hw.kn9872
AND=/data/cache_kn/10.kn9873
RMX2020=/data/cache_kn/RMX2020.kn9872
RMX2021=/data/cache_kn/RMX2021.kn9872
RMX2022=/data/cache_kn/RMX2022.kn9872
RMX2027=/data/cache_kn/RMX2027.kn9872
KN_BO1=/data/cache_kn/mt6768.kn9873
KN_BO=/data/cache_kn/oppo6769.kn9872
KN_DE0=/data/cache_kn/RMX2020.kn9873
KN_DE1=/data/cache_kn/RMX2021.kn9873
KN_DE2=/data/cache_kn/RMX2022.kn9873
KN_DE7=/data/cache_kn/RMX2027.kn9873
KN_HW=/data/cache_kn/mt6768.kn9872
KN_SDK=/data/cache_kn/29.kn9872
KN_BRA=/data/cache_kn/realme.kn9872
KN_MAN=/data/cache_kn/realme.kn9873
sleep 1
if [ -f "$OLD_VER001" ]; then
	 ui_print "- Checking exist module: FAIL"
	 ui_print " @ Detected module was installed!"
	 ui_print " @ You cannot install again!"
	 ui_print " @ Setup will now exit!"
	 remove_temp
	 exit 1
else
	if [ -f "$OLD" ]; then
	 ui_print "- Checking exist module: FAIL"
	 ui_print " @ Detected old version module!"
	 ui_print " @ You cannot update module!"
	 ui_print " @ Please remove it first!"
	 remove_temp
	 exit 1
else
     if [ -f "$OLD1" ]; then
		 ui_print "- Checking exist module: FAIL"
		 ui_print " @ Detected flushram module!"
		 ui_print " @ Please remove it first!"
		 remove_temp
		 exit 1
	 else
		 if [ -f "$OLD2" ]; then
			 ui_print "- Checking exist module: FAIL"
			 ui_print " @ Detected TempModule module!"
			 ui_print " @ Please remove it first!"
			 remove_temp
			 exit 1
		 else
			 if [[ -f "$OLD3" ]]; then
				 ui_print "- Checking exist module: FAIL"
				 ui_print " @ Detected TempModule module!"
				 ui_print " @ Please remove it first!"
				 remove_temp
				 exit 1
			 fi
		 fi
	 fi
	fi
ui_print "- Checking exist module: PASS"
fi
ui_print " * Checking device..."
if [ -f "$RMX2020" ]; then
    ui_print "- Model: $model (realme C3) [4GB-64GB]"
    rm -f /data/cache_kn/RMX2020.kn9872
else
    if [ -f "$RMX2021" ]; then
    ui_print "- Model: $model (realme C3) [3GB-32GB]"
    rm -f /data/cache_kn/RMX2021.kn9872
    else
        if [ -f "$RMX2022" ]; then
        ui_print "- Model: $model (realme C3) [3GB-64GB]"
        rm -f /data/cache_kn/RMX2022.kn9872
        else
             if [ -f "$RMX2027" ]; then
             ui_print "- Model: $model  (realme C3i) [2GB-32GB]"
             rm -f /data/cache_kn/RMX2027.kn9872
             else
		     ui_print "- Checking compatibility: FAIL"
			ui_print " "
             	ui_print " @ Unsupported: Model: $model ($manu <n/a>) [<n/a>GB-<n/a>GB]"
	        	ui_print " @ Supported only: RMX2020, RMX2021, RMX2022, RMX2027"
             	ui_print " "
             	ui_print "- Installation cannot continue!"
             	ui_print " "
             	remove_temp
	         	exit 1
	       fi
        fi
    fi
fi
if [ -f "$KN_MAN" ]; then
     ui_print "- Manufacturer: $manu (PASS)"
     rm -f /data/cache_kn/realme.kn9873
else
	ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Manufacturer=$manu"
     ui_print " @ Supported only: realme"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
     remove_temp
  	exit 1
fi
if [ -f "$KN_BO" ]; then
     ui_print "- Board: $manu (PASS)"
     rm -f /data/cache_kn/oppo6769.kn9872
else
	 ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Board=$board"
     ui_print " @ Supported only: oppo6769"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
if [ -f "$KN_DE0" ]; then
     ui_print "- Device: $device (PASS)"
     rm -f /data/cache_kn/RMX2020.kn9873
else
if [ -f "$KN_DE1" ]; then
     ui_print "- Device: $device (PASS)"
     rm -f /data/cache_kn/RMX2021.kn9873
else
if [ -f "$KN_DE2" ]; then
     ui_print "- Device: $device (PASS)"
     rm -f /data/cache_kn/RMX2022.kn9873
else
if [ -f "$KN_DE7" ]; then
     ui_print "- Device: $device (PASS)"
     rm -f /data/cache_kn/RMX2027.kn9873
else
	 ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Device=$board"
     ui_print " @ Supported only: RMX2020, RMX2021, RMX2022, RMX2027"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
fi
fi
fi
if [ -f "$KN_BRA" ]; then
     ui_print "- Brand: $brand (PASS)"
     rm -f /data/cache_kn/realme.kn9872
else
	ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Brand=$brand"
     ui_print " @ Supported only: realme"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
if [ -f "$AND" ]; then
     ui_print "- Android: $version (PASS)"
     rm -f /data/cache_kn/10.kn9873
else
	ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Android=$version"
     ui_print " @ Supported only: Android 10"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
if [ -f "$KN_SDK" ]; then
     ui_print "- SDK: $API (PASS)"
     rm -f /data/cache_kn/29.kn9872
else
	ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : SDK=$API"
     ui_print " @ Supported only: SDK29"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
if [ -f "$KN_BO1" ]; then
     ui_print "- Platform: $board1 (PASS)"
     rm -f /data/cache_kn/mt6768.kn9873
else
	ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Platform=$board1"
     ui_print " @ Supported only: mt6768"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
if [ -f "$KN_HW" ]; then
     ui_print "- Hardware: $hw (MediaTek Helio G70)"
     rm -f /data/cache_kn/mt6768.kn9872
else
	ui_print "- Checking compatibility: FAIL"
     ui_print " "
     ui_print " @ Unsupported : Hardware=$hw"
     ui_print " @ Supported only: mt6768"
     ui_print " "
     ui_print "- Installation cannot continue!"
     ui_print " "
	remove_temp
  	exit 1
fi
ui_print "- Firmware: $firmware"
ui_print " "
ui_print "- Checking compatibility: PASS"
ui_print "- Starting process..."
rm -rf /data/cache_kn
sleep 1.5
cat << "EOF"

							   𝗞𝗛𝗔𝗡𝗛 (^_^) <𝟯 (^.^) 𝗡𝗛𝗜
					  			  𝗞𝗵𝗮𝗻𝗵 𝗩𝘂𝗶 𝗡𝗴𝘂𝘆𝗲𝗻 𝗩𝗮𝗻
				    		𝗙𝗕: 𝗵𝘁𝘁𝗽𝘀://𝗳𝗯.𝗺𝗲/𝗸𝗵𝗮𝗻𝗵𝟭𝟬𝗮𝟭
EOF
cat << "EOF"
  * 𝗪𝗮𝗿𝗻𝗶𝗻𝗴:
- 𝗠𝗼𝗱𝘂𝗹𝗲 𝗼𝗻𝗹𝘆 𝗳𝗼𝗿 𝗥𝗲𝗮𝗹𝗺𝗲 𝗖𝟯 (𝗥𝗲𝗮𝗹𝗺𝗲𝗨𝗜 𝟭.𝟬/𝗔𝗻𝗱𝗿𝗼𝗶𝗱 𝟭𝟬)

- 𝗣𝗹𝗲𝗮𝘀𝗲 𝗿𝗲𝗺𝗼𝘃𝗲 𝗼𝘁𝗵𝗲𝗿 𝗺𝗼𝗱𝘂𝗹𝗲𝘀 𝘁𝗼 𝗮𝘃𝗼𝗶𝗱 𝗰𝗼𝗻𝗳𝗹𝗶𝗰𝘁𝘀!
- 𝗩𝘂𝗶 𝗹𝗼𝗻𝗴 𝘅𝗼𝗮 𝗰𝗮𝗰 𝗺𝗼𝗱𝘂𝗹𝗲 𝗸𝗵𝗮𝗰 𝗱𝗲 𝘁𝗿𝗮𝗻𝗵 𝗯𝗶 𝘅𝘂𝗻𝗴 𝗱𝗼𝘁 𝗵𝗲 𝘁𝗵𝗼𝗻𝗴!

EOF
ui_print "#####################################"
ui_print " "
ui_print "- 𝗗𝗮𝗻𝗴 𝗯𝗮𝘁 𝗱𝗮𝘂 𝗰𝗮𝗶 𝗱𝗮𝘁..."
ui_print " "
REPLACE="
"
print_modname() {
  ui_print "- Please wait..."
}
on_install() {
  ui_print "- Dang giai nen...."
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
if mkdir $MODPATH/KhanhVuiNguyenVan; then
     ui_print "- Creating folder..."
     mkdir $MODPATH/system
	 mkdir $MODPATH/system/etc
	 mkdir $MODPATH/system/etc/sysconfig
	 mkdir $MODPATH/system/etc/permissions
	 mkdir $MODPATH/system/bin
	 mkdir $MODPATH/system/priv-app
	 mkdir $MODPATH/system/priv-app/KN9872_Via
	 mkdir $MODPATH/system/priv-app/KN9872_Vanced
	 mkdir $MODPATH/system/priv-app/KN9872
	 mkdir $MODPATH/system/priv-app/KN9872_Toast
	 mkdir $MODPATH/system/vendor
	 mkdir $MODPATH/system/vendor/lib
	 mkdir $MODPATH/system/vendor/lib64
	 mkdir $MODPATH/system/vendor/lib/egl
	 mkdir $MODPATH/system/vendor/lib64/egl
	 mkdir $MODPATH/system/xbin
else
     ui_print " @ Create folder installation failed!"
	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_RMX2121.xml $MODPATH/system.prop; then
     ui_print "- Setting up KhanhVuiNguyenVan_RMX2121.xml..."
else
     ui_print " @ Cannot Setup KhanhVuiNguyenVan_RMX2121.xml!"
	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan.xml $MODPATH/system/etc/sysconfig/nexus.xml; then
     ui_print "- Setting up KhanhNguyen9872.xml..."
else
     ui_print " @ Cannot Setup KhanhNguyen9872.xml!"
	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_armv7.so $MODPATH/system/vendor/lib/egl/libGLES_mali.so; then
     ui_print "- Setting up KhanhNguyen9872_armv7.so ....."
else
     ui_print " @ Cannot Setup KhanhNguyen9872_armv7.so!"
	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_arm64.so $MODPATH/system/vendor/lib64/egl/libGLES_mali.so; then
     ui_print "- Setting up KhanhNguyen9872_arm64.so ....."
else
     ui_print " @ Cannot Setup KhanhNguyen9872_arm64.so!"
	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_Script.xml $MODPATH/system/bin/bootanimation; then
     ui_print "- Setting up KhanhNguyen9872_Script.xml..."
else
     ui_print " @ Cannot Setup KhanhNguyen9872_Script.xml!"
	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/NguyenVanKhanh.so $MODPATH/system/xbin/khanh_cleanram; then
	mv $MODPATH/KhanhNguyen9872/KN9872_K.xml $MODPATH/system/xbin/k
     ui_print "- Setting up NguyenVanKhanh.so..."
else
     ui_print " @ Cannot Setup NguyenVanKhanh.so!"
 	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_Temp $MODPATH; then
	mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_Un $MODPATH/KN9872_Un
     ui_print "- Setting up TempModule..."
else
     ui_print " @ Cannot Setup TempModule!"
 	ui_print "- Installation cannot continue!"
	remove_temp
	exit 1
fi
ui_print " "
ui_print " * Please wait for setup Remove/Rollback command..."
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_removeapp.xml $MODPATH/system/xbin/removeapp1; then
	chmod 777 $MODPATH/system/xbin/removeapp1
	ui_print "- Completed Remove/Rollback App command!"
else
cat << "EOF"
- 𝗘𝗿𝗿𝗼𝗿 𝘄𝗵𝗲𝗻 𝘀𝗲𝘁𝘁𝗶𝗻𝗴 𝘂𝗽 𝗥𝗲𝗺𝗼𝘃𝗲 𝗮𝗽𝗽!
- 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗮𝘁𝗶𝗼𝗻 𝗰𝗮𝗻𝗻𝗼𝘁 𝗰𝗼𝗻𝘁𝗶𝗻𝘂𝗲!
EOF
	remove_temp
	exit 1
fi
ui_print " "
ui_print " * Initialization Application..."
sleep 1.5
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_LabanKey $MODPATH/system/priv-app; then
	ui_print "- Initializing LabanKey..."
else
	ui_print " @ Error when Initializing LabanKey!"
	remove_temp
	exit 1
fi
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_Via.apk $MODPATH/system/priv-app/KN9872_Via/KN9872_Via.apk; then
	 ui_print "- Initializing Via..."
else
	 ui_print " @ Error when Initializing Via!"
	 remove_temp
	 exit 1
fi
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_Vanced.apk $MODPATH/system/priv-app/KN9872_Vanced/KN9872_Vanced.apk; then
	 ui_print "- Initializing Vanced Manager..."
else
	 ui_print " @ Error when Initializing Vanced Manager!"
	 remove_temp
	 exit 1
fi
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_Terminal $MODPATH/system/priv-app; then
	 ui_print "- Initializing Terminal Emulator..."
else
	 ui_print " @ Error when Initializing Terminal Emulator!"
	 remove_temp
	 exit 1
fi
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872.apk $MODPATH/system/priv-app/KN9872/KN9872.apk; then
	 ui_print "- Initializing KhanhVuiNguyenVan_C3-C3i..."
else
	 ui_print " @ Error when Initializing KhanhVuiNguyenVan_C3-C3i!"
	 remove_temp
	 exit 1
fi
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_RAR $MODPATH/system/priv-app; then
	 ui_print "- Initializing RAR..."
else
	 ui_print " @ Error when Initializing RAR!"
	 remove_temp
	 exit 1
fi
if mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872_Toast.apk $MODPATH/system/priv-app/KN9872_Toast/KN9872_Toast.apk; then
	 ui_print "- Initializing Toast Notification..."
else
	 ui_print " @ Error when Initializing Toast Notification!"
	 remove_temp
	 exit 1
fi
ui_print " "
ui_print "- Application will installed in next boot!"
ui_print " "
ui_print " * Swap file"
sleep 0.5
ui_print "- Creating Swap File [count=1024MB/bs=1M] "
if dd if=/dev/zero of=/data/adb/modules_update/KhanhNguyen9872_RMX2021/KhanhVuiNguyenVan/swapfileKN9872.img bs=1000000 count=1024; then
	 ui_print "- Swap file was created [1024MB in /data]"
	 install_swap_script
	 ui_print "- Swap file will auto enable when device is booting!"
else
	 sleep 0.5
	 ui_print " @ Failed when creating swap file! [1024MB]"
	 sleep 0.5
	 ui_print "- Creating Swap File [count=512MB/bs=1M]"
	 if dd if=/dev/zero of=/data/adb/modules_update/KhanhNguyen9872_RMX2021/KhanhVuiNguyenVan/swapfileKN9872.img bs=1000000 count=512; then
	     ui_print "- Swap file was created [512MB in /data]"
		 install_swap_script
		 ui_print "- Swap file will auto enable when device is booting!"
	 else
		 sleep 0.5
		 ui_print " @ Failed when creating swap file! [512MB]"
		 sleep 0.5
		 ui_print "- Creating Swap File [count=256MB/bs=1M]"
		 if dd if=/dev/zero of=/data/adb/modules_update/KhanhNguyen9872_RMX2021/KhanhVuiNguyenVan/swapfileKN9872.img bs=1000000 count=256; then
			 ui_print "- Swap file was created [256MB in /data]"
			 install_swap_script
			 ui_print "- Swap file will auto enable when device is booting!"
	     else
			 sleep 0.5
		 cat << "EOF"
 @ Failed when creating swap file! [256MB]
 @ 𝗠𝗮𝗸𝗲 𝘀𝘂𝗿𝗲 𝘆𝗼𝘂𝗿 𝗱𝗲𝘃𝗶𝗰𝗲 𝗵𝗮𝘀 𝗲𝗻𝗼𝘂𝗴𝗵 𝘀𝗽𝗮𝗰𝗲 𝗹𝗲𝗳𝘁 𝗶𝗻 /𝗱𝗮𝘁𝗮

- 𝗗𝗼𝗻'𝘁 𝘄𝗼𝗿𝗿𝘆! 𝗠𝗼𝗱𝘂𝗹𝗲 𝘄𝗶𝗹𝗹 𝗰𝗼𝗻𝘁𝗶𝗻𝘂𝗲 𝗶𝗻𝘀𝘁𝗮𝗹𝗹!
- 𝗕𝘂𝘁 𝘆𝗼𝘂 𝘄𝗶𝗹𝗹 𝘄𝗼𝗻'𝘁 𝗵𝗮𝘃𝗲 𝘀𝘄𝗮𝗽 𝗳𝗶𝗹𝗲!
EOF
		 fi
	 fi
fi
ui_print " "
ui_print " * Please wait for config change resolution script..."
if mv $MODPATH/KhanhNguyen9872/KN9872_re.xml $MODPATH/system/xbin/rreset; then
	 mv $MODPATH/KhanhNguyen9872/KN9872_540.xml $MODPATH/system/xbin/540
	 mv $MODPATH/KhanhNguyen9872/KN9872_480.xml $MODPATH/system/xbin/480
	 mv $MODPATH/KhanhNguyen9872/KN9872_420.xml $MODPATH/system/xbin/420
	 mv $MODPATH/KhanhNguyen9872/KN9872_360.xml $MODPATH/system/xbin/360
	 ui_print "- Config done!"
else
cat << "EOF"
- 𝗘𝗿𝗿𝗼𝗿 𝘄𝗵𝗲𝗻 𝗰𝗼𝗻𝗳𝗶𝗴!
- 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗮𝘁𝗶𝗼𝗻 𝗰𝗮𝗻𝗻𝗼𝘁 𝗰𝗼𝗻𝘁𝗶𝗻𝘂𝗲!
EOF
	 remove_temp
	 exit 1
fi
ui_print " "
ui_print " * Please wait for config Disable/Enable Google..."
if mv $MODPATH/KhanhNguyen9872/KN9872_gg.xml $MODPATH/system/xbin/e; then
	 mv $MODPATH/KhanhNguyen9872/KN9872_Ungg.xml $MODPATH/system/xbin/d
	 ui_print "- Config done!"
else
cat << "EOF"
- 𝗘𝗿𝗿𝗼𝗿 𝘄𝗵𝗲𝗻 𝗰𝗼𝗻𝗳𝗶𝗴!
- 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗮𝘁𝗶𝗼𝗻 𝗰𝗮𝗻𝗻𝗼𝘁 𝗰𝗼𝗻𝘁𝗶𝗻𝘂𝗲!
EOF
	 remove_temp
	 exit 1
fi
ui_print " "
ui_print " * Please wait for config fix PIP..."
if mv $MODPATH/KhanhNguyen9872/KN9872_M.xml $MODPATH/system/xbin/messenger; then
	 mv $MODPATH/KhanhNguyen9872/KN9872_Z.xml $MODPATH/system/xbin/zalo
	 mv $MODPATH/KhanhNguyen9872/KN9872_A.xml $MODPATH/system/xbin/autoclicker
	 mv $MODPATH/KhanhNguyen9872/KN9872_Y.xml $MODPATH/system/xbin/youtubevanced
	 mv $MODPATH/KhanhNguyen9872/KN9872_LQ.xml $MODPATH/system/xbin/lienquan
	 mv $MODPATH/KhanhNguyen9872/KN9872_MR.xml $MODPATH/system/xbin/macrorify
	 mv $MODPATH/KhanhNguyen9872/KN9872_F.xml $MODPATH/system/xbin/f1vm
	 mv $MODPATH/KhanhNguyen9872/KN9872_G.xml $MODPATH/system/xbin/genshin
	 ui_print "- Config done!"
else
cat << "EOF"
- 𝗘𝗿𝗿𝗼𝗿 𝘄𝗵𝗲𝗻 𝗰𝗼𝗻𝗳𝗶𝗴!
- 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗮𝘁𝗶𝗼𝗻 𝗰𝗮𝗻𝗻𝗼𝘁 𝗰𝗼𝗻𝘁𝗶𝗻𝘂𝗲!
EOF
	 remove_temp
	 exit 1
fi
ui_print " "
ui_print " * Please wait for config/permission modules..."
if mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_Boot.xml $MODPATH/post-fs-data.sh; then
	 mv $MODPATH/KhanhVuiNguyenVan_Temp/KN9872/sepolicy.rule $MODPATH/sepolicy.rule
	 mv $MODPATH/KhanhNguyen9872/KN9872_config.xml $MODPATH/config.sh
	 mv $MODPATH/KhanhNguyen9872/KhanhVuiNguyenVan_Un.xml $MODPATH/uninstall.sh
	 mv $MODPATH/KhanhNguyen9872/KN9872.xml $MODPATH/service.sh
	 cp $MODPATH/system/bin/bootanimation $MODPATH/auto_mount
	 echo "KhanhVuiNguyenVan" > /data/adb/modules_update/KhanhNguyen9872_RMX2021/$K_VER_MO
	 ui_print "- Config/permission done!"
else
cat << "EOF"
- 𝗘𝗿𝗿𝗼𝗿 𝘄𝗵𝗲𝗻 𝗰𝗼𝗻𝗳𝗶𝗴/𝗽𝗲𝗿𝗺𝗶𝘀𝘀𝗶𝗼𝗻 𝗺𝗼𝗱𝘂𝗹𝗲!
- 𝗜𝗻𝘀𝘁𝗮𝗹𝗹𝗮𝘁𝗶𝗼𝗻 𝗰𝗮𝗻𝗻𝗼𝘁 𝗰𝗼𝗻𝘁𝗶𝗻𝘂𝗲!
EOF
	 remove_temp
	 exit 1
fi
ui_print " "
REPLACE="
"
print_modname() {
  ui_print "- Please wait..."
}
on_install() {
  ui_print "- Dang giai nen...."
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
ui_print "- Done all! (KhanhNguyen9872)"
cat << "EOF"

#####################################

  => 𝗖𝗮𝗺 𝗼𝗻 𝘁𝗮𝘁 𝗰𝗮 𝗮𝗻𝗵 𝗲𝗺 𝗱𝗮 𝘀𝘂 𝗱𝘂𝗻𝗴!
@ 𝗨𝗻𝗹𝗼𝗰𝗸 𝗚𝗿𝗮𝗽𝗵𝗶𝗰𝘀 - 𝗿𝗲𝗮𝗹𝗺𝗲 𝗫𝟳 𝗣𝗿𝗼 𝟱𝗚 @
@ 𝗥𝗲𝗺𝗼𝘃𝗲 𝗚𝗼𝗼𝗴𝗹𝗲 - 𝗥𝗲𝗮𝗹𝗺𝗲 𝗔𝗽𝗽 @
@ 𝗡𝗲𝘄 𝗟𝗮𝘂𝗻𝗰𝗵𝗲𝗿 @
@ 𝗗𝗶𝘀𝗮𝗯𝗹𝗲 𝗕𝗼𝗼𝘁 𝗔𝗻𝗶𝗺𝗮𝘁𝗶𝗼𝗻 @
@ 𝗖𝗣𝗨 𝗣𝗲𝗿𝗳𝗼𝗿𝗺𝗮𝗻𝗰𝗲 𝗠𝗼𝗱𝗲 @
@ 𝗦𝘄𝗮𝗽 𝗳𝗶𝗹𝗲 𝗶𝗻 𝗜𝗻𝘁𝗲𝗿𝗻𝗮𝗹 𝗦𝘁𝗼𝗿𝗮𝗴𝗲 @
@ 𝗨𝗻𝗹𝗶𝗺𝗶𝘁𝗲𝗱 𝗚𝗼𝗼𝗴𝗹𝗲 𝗣𝗵𝗼𝘁𝗼 - 𝗣𝗶𝘅𝗲𝗹 𝗙𝗲𝗮𝘁𝘂𝗿𝗲 @
@ 𝗘𝘅𝘁𝗿𝗲𝗺𝗲 𝗖𝗹𝗲𝗮𝗻 𝗥𝗔𝗠 𝘂𝘀𝗶𝗻𝗴 "𝗸" @
@ 𝗟𝗮𝗯𝗮𝗻𝗞𝗲𝘆-𝗧𝗲𝗿𝗺𝗶𝗻𝗮𝗹𝗘𝗺𝘂𝗹𝗮𝘁𝗼𝗿-𝗩𝗶𝗮-𝗥𝗔𝗥 @
@ 𝗞𝗵𝗮𝗻𝗵𝗩𝘂𝗶𝗡𝗴𝘂𝘆𝗲𝗻𝗩𝗮𝗻_𝗖𝟯-𝗖𝟯𝗶 𝗔𝗽𝗽@

*𝗧𝗵𝗶𝗲𝘁 𝗯𝗶 𝘀𝗲 𝗮𝘂𝘁𝗼 𝗿𝗲𝗯𝗼𝗼𝘁 𝟮 𝗹𝗮𝗻 𝘁𝗿𝗼𝗻𝗴 𝗹𝘂𝗰 𝗰𝗼𝗻𝗳𝗶𝗴 𝗺𝗼𝗱𝘂𝗹𝗲!

*𝗧𝗵𝗶𝗲𝘁 𝗯𝗶 𝗰𝘂𝗮 𝗯𝗮𝗻 𝘀𝗲 𝗸𝗵𝗼𝗶 𝗱𝗼𝗻𝗴 𝗹𝗮𝗶 𝘀𝗮𝘂 𝟭𝟬 𝗴𝗶𝗮𝘆!

#####################################

- Rebooting in 10 seconds....

EOF
sleep 11
remove_temp/KhanhNguyen9872
reboot
