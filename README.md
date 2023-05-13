# ReVanced Manager builds for Android 7

Custom builds of ReVanced Manager, for Android 7.x

Combining with my [ReVanced Patches for YouTube 17.34.36](https://github.com/kitadai31/revanced-patches-android6-7), you can build YouTube ReVanced easily with an Android 7.x device alone.

### ⚠ [Important] Repository was renamed

<details>

This repository was previously named "revanced-manager-**android6-7**", but it has been renamed "revanced-manager-**android7**".  
Because it turns out that it does not work properly on Android 6.0.

On Android 6.0, an error occurs while compiling resources. (Issue https://github.com/kitadai31/revanced-manager-android7/issues/5)  
I'm sorry for releasing this app without sufficient confirmation of its operation.

If you access the old URL, you will be redirected by GitHub.

If anyone had successfully patched on Android 6.0, please report it on the Discussions page or my twitter.

> And I think Twitter and other apps can be patched successfully on Android 6.0, though I didn't test.
</details>

## Download
Go to [Releases](https://github.com/kitadai31/revanced-manager-android6-7/releases) page

## Prerequisites
1. **Android 7.0** or higher <sub>(Not available on A6.0)</sub>
2. Does not work on some armv7 (32bit) devices.  
If your device is armv7, you may get `(exit code = 135)` (or 137) error.
3. Vanced MicroG (https://github.com/inotia00/VancedMicroG/releases) is required for YouTube and YouTube Music (Only for non-root)

## What I did to support Android 6 & 7
- Change minSdkVersion to 23
- Fix dependent library problem
- Change apksig library to another one
  - Thank you [MuntashirAkon/apksig-android](https://github.com/MuntashirAkon/apksig-android) !
- Enable java.nio API desugaring library
- Remove unsupported java.nio.file API from patches ([Patches side change](https://github.com/kitadai31/revanced-patches-android6-7/commit/aada74d77793c9783a7015a051474a1f6567eb60))

# How to patch
The usage is same as the original ReVanced Manager. This section describes the points specific to Android 6-7.

## YouTube
Official patches and latest Extended patches are not compatible with YouTube 17.34.36.  
(17.34.36 is the final version for Android 6 & 7.)

Therefore, I recommend changing the patch source to [ReVanced Patches for YouTube 17.34.36](https://github.com/kitadai31/revanced-patches-android6-7), provided by me.

<img src="https://user-images.githubusercontent.com/90122968/230283820-dd55a454-6267-43dc-a6c0-eb1b6f5f4e15.png" width="240">

See [How to build](https://github.com/kitadai31/revanced-patches-android6-7/wiki/How-to-build) page for details.

## YouTube Music
**ReVanced Music** - No plobrem with recommended patches.

**ReVanced Extended Music** - The following patches are not available.

- `Custom Branding xxx`
- `Optimize Resource`
- `Translations`

These patches cause `NoSuchMethodError` so you have to exclude these patches.

> **Note**  
> Instead of this ReVanced Manager, you can also use [Revancify](https://github.com/decipher3114/Revancify) or [RVX Builder](https://github.com/inotia00/rvx-builder) on A6/7 device.  
These solutions will allow you to apply all patches to YT Music.

## Other apps
You can patch as usual as original Manager.

Please note that errors may occur, such as "NoSuchMethodError", "NoClassDefFoundError".  
If an error occurred and the error was specific to old Android , please give up.

> Known info: `dynamic-color` patch for Twitter causes "NoSuchMethodError".  
> This patch does not work on below Android 12, so no need to apply it.

However, you can use [Revancify](https://github.com/decipher3114/Revancify) or [ReVanced Builder](https://github.com/reisxd/rvx-builder) instead of this ReVanced Manager.  
Also, if you have other Android 8+ devices (or PC), you may want to use ReVanced Manager on that device and transfer patched APK to A6/7 devices.
