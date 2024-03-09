# ReVanced Manager for Android 5.x and 6.0-7.1
This is a ReVanced Manager fork specific to kitadai31 & d4n3436's patches.

The following ReVanced Patches are supported:

YouTube ReVanced for Android 6.0-7.1  
https://github.com/kitadai31/revanced-patches-android6-7

YouTube ReVanced for Android 5  
https://github.com/d4n3436/revanced-patches-android5

## Download
Go to [Releases](https://github.com/kitadai31/revanced-manager-android5-7/releases) page

## Prerequisites
1. Android 5.0 or higher
2. Does not work on some ARMv7 (32bit) devices.  
If your device is ARMv7, you may get `(exit code = 135)` or `(exit code = 7)` error.
3. Android emulators (x86_64 devices) are not supported. Use patching methods for PC.
4. Vanced MicroG is required for YouTube and YouTube Music (Only for non-root)  
[For Android 6+](https://github.com/inotia00/VancedMicroG/releases/latest)  
[For Android 5](https://github.com/TeamVanced/VancedMicroG/releases/tag/v0.2.22.212658-212658001)

# How to patch

## YouTube 17.34.36 (Android 6 & 7)
Use kitadai31's patches. (default)  
[Click here](https://github.com/kitadai31/revanced-patches-android6-7/wiki/How-to-build)

## YouTube 16.40.36 (Android 5)

> [!CAUTION]
> YT ReVanced for Android 5 16.40.36() is likely dead!  
> In March 2024, YouTube dropped support of 16.01.XX-17.32.XX clients  
> Spoofing app version to 17.33 causes a problem that cannot open videos

<details>

<summary>Open old guide</summary>

Use d4n3436's patches.

> [!WARNING]
> Most Android 5.x devices have ARMv7 (32bit) CPU, so patching may fail.  
> If you got `(exit code = 135)` error, please patch with other device or PC, and move a patched apk to A5.x device.

1. Download YouTube 16.40.36 APK from APKMirror. (Just download. DO NOT install it.)  
https://www.apkmirror.com/apk/google-inc/youtube/youtube-16-40-36-release/youtube-16-40-36-android-apk-download/
2. Download ReVanced Manager
3. Open [Settings] > [Sources]
4. Change three items

| Setting | value |
| --- | --- |
| Patches organization | d4n3436 |
| Patches source | revanced-patches-android5 |
| Integrations organization | d4n3436 |
| Integrations source | *(no change)* |

<img src="https://github.com/kitadai31/revanced-manager-android6-7/assets/90122968/15721086-7ec7-4158-a1ca-60a15ce74d86" width="240"><br>

5. Restart Manager (important)
6. Open [Patcher] > [Select an application]
7. Tap [Storage] button and choose the APK which you downloaded in step 1.
8. Tap [Patch] button.

After patching is complete, I recommend saving the patched APK from [💾] button.

</details>

## Other apps
Since v1.17.1 (December 2023), this ReVanced Manager fork is no longer compatible with official/RVX revanced-patches.

So, if you want to install other ReVanced apps (YT Music, Twitter, TikTok, etc.) on Android 5-7 devices, use other patching methods.

- Official/RVX ReVanced Manager (Android 8.0+)
- [auto-cli](https://github.com/taku-nm/auto-cli) (PC)
- [RVX Builder](https://github.com/inotia00/rvx-builder) (PC/Android 5.0+)
- [Revancify](https://github.com/decipher3114/Revancify) (Android 5.0+)

> **How to use Termux on Android 5.0-6.0?**  
Download latest alpha builds from Termux's GitHub Actions. (GitHub Account needed)  
There are Android 5 version in "Artifacts"  
https://github.com/termux/termux-app/actions/runs/6728253937  
&nbsp;  
(I started redistributing these APKs for who doesn't have GitHub accounts: https://github.com/kitadai31/tmxapks/releases)

&nbsp;

[![TelegramChannel](https://img.shields.io/badge/Telegram_news_channel-2CA5E0?style=for-the-badge&logo=Telegram&logoColor=white)](https://t.me/rvx_for_a6_7)
[![TelegramChat](https://img.shields.io/badge/Telegram_chat_group-2CA5E0?style=for-the-badge&logo=Telegram&logoColor=white)](https://t.me/rvx_for_a6_7_chat)
