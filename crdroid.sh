git clone https://github.com/kiam001/android_device_motorola_cedric -b crdroid device/motorola/cedric
git clone https://github.com/kiam001/android_vendor_motorola_cedric vendor/motorola/cedric
git clone https://github.com/kiam001/android_kernel_motorola_msm8937 kernel/motorola/msm8937
git clone https://github.com/kiam001/packages_resources_MotoActions packages/resources/MotoActions
repo init -u git://github.com/crdroidandroid/android.git -b 9.0
repo sync
. build/envsetup.sh
brunch cedric
echo done