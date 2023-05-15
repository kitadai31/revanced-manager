# ReVanced Manager builds for Android 6.0-7.1

Custom builds of ReVanced Manager, for Android 6.0-7.1

Combining with my [ReVanced Patches for YouTube 17.34.36](https://github.com/kitadai31/revanced-patches-android6-7), you can build YouTube ReVanced easily with an A6-7 device alone.

<details>

<summary>[Announcement] Repository name was renamed again (click to open)</summary>

On May 4, I renamed this repository to "revanced-manager-**android7**" because this app does not work properly on Android 6.0.

However, I finally found a way to patch successfully on Android 6.0.  
So I renamed the repository back to "revanced-manager-**android6-7**".

(May 15, 2023)
</details>

## Download
Go to [Releases](https://github.com/kitadai31/revanced-manager-android6-7/releases) page

## ⚠ IMPORTANT NOTICE for Android 6.0 ⚠

<details>

There are various problems when using ReVanced Manager on Android 6.0.  
It is highly not recommended to use this app on Android 6.0.  
Use other device to patch, or use Revancify.

If you still want to use it, please note the following.

- Do NOT select `Overlay Buttons` patch!
  - If this patch is selected, patching will aborts with `(exit code = 1)` while compiling resources.
- After patching, the "Install" button is unavailable.
  - When you press it, it says "There was a problem parsing the package."
  - Instead, export the APK and Install it later.

<img src="https://github.com/kitadai31/revanced-manager-android6-7/assets/90122968/ca98a8f5-a617-442f-9460-65009f114fad" width="240">

- Official ReVanced Patches (Twitter, Reddit, Twitch, etc.) is unavaiable.
  - Because the app cannot access the ReVanced API on Android 6.0.
  - Since v1.0.0, if you do not have access to the ReVanced API, you cannot even patch.
  - In other words, ReVanced Manager on Android 6.0 can only patch YouTube with kitadai31 source.

</details>

## Prerequisites
1. Android 6.0 or higher
2. Does not work on some armv7 (32bit) devices.  
If your device is armv7, you may get `(exit code = 135)` (or 137) error.
3. Vanced MicroG (https://github.com/inotia00/VancedMicroG/releases) is required for YouTube and YouTube Music (Only for non-root)

## What I did to support Android 6 & 7
- Change minSdkVersion to 23
- [Fix dependent library's problem](https://github.com/kitadai31/flutter_plugin_device_apps/commit/a8bff360982d7acb545b97c19c221560bc5ffa91)
- Change apksig library to another one
  - Thank you [MuntashirAkon/apksig-android](https://github.com/MuntashirAkon/apksig-android) !
- Enable java.nio coreLibraryDesugaring
- Remove unsupported java.nio.file API from patches ([Patches side change](https://github.com/kitadai31/revanced-patches-android6-7/commit/aada74d77793c9783a7015a051474a1f6567eb60))

# How to patch
The usage is same as the original ReVanced Manager. This section describes the points specific to Android 6-7.

## YouTube
Official patches and latest Extended patches are not compatible with YouTube 17.34.36.  
(17.34.36 is the final version for Android 6 & 7.)

Therefore, change the patch source settings to [ReVanced Patches for YouTube 17.34.36](https://github.com/kitadai31/revanced-patches-android6-7), provided by me.

<img src="https://user-images.githubusercontent.com/90122968/230283820-dd55a454-6267-43dc-a6c0-eb1b6f5f4e15.png" width="240">

See [How to build](https://github.com/kitadai31/revanced-patches-android6-7/wiki/How-to-build) page for details.

## YouTube Music
**ReVanced Music** - No problem with default patches.

**ReVanced Extended Music** - Unavailable.

RVX patch causes `NoClassDefFoundError`, so you cannot use inotia00 source to patch YT Music.

> **Note**  
> Instead of this ReVanced Manager, you can also use [Revancify](https://github.com/decipher3114/Revancify) or [RVX Builder](https://github.com/inotia00/rvx-builder) on A6/7 device.  
These solutions can build RVX Music.

## Other apps
You can patch as usual as original Manager.

Please note that errors may occur, such as "NoSuchMethodError", "NoClassDefFoundError".  
If an error occurred and the error was specific to A6/7, please give up.

Known info: `dynamic-color` patch for Twitter causes "NoSuchMethodError". Do not select it.

> **Note**  
> However, you can use [Revancify](https://github.com/decipher3114/Revancify) or [ReVanced Builder](https://github.com/reisxd/rvx-builder) instead of this ReVanced Manager.  
These solutions are stable and do not cause errors which caused by older Android.
>
> Also, if you have other Android 8+ devices (or PC), you may want to use ReVanced Manager on that device and transfer the patched APK to A6/7 devices.
