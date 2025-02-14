# ReVanced Manager for Android 5.x and 6.0-7.1
This is a ReVanced Manager fork that added support for Android 5-7.

Compatible with the official ReVanced Manager.

## Download
Go to [Releases](https://github.com/kitadai31/revanced-manager-android5-7/releases) page

# How to patch

## YouTube 17.34.36 (Android 6-7)
Use kitadai31's patches. (default)  
[Patching guide](https://github.com/kitadai31/revanced-patches-android6-7/wiki/How-to-build)

For detailed information, see the revanced-patches-android6-7 repository.  
https://github.com/kitadai31/revanced-patches-android6-7

## YouTube 16.40.36 (Android 5)
Use d4n3436's patches.

> [!CAUTION]
> YouTube ReVanced for Android 5 (16.40.36) is almost dead!  
> In March 2024, YouTube dropped support of 16.01.XX-17.32.XX clients completely.  
> So, it is spoofing the app version to 17.33.42 to make the app working, but it has **critical problems**.  
> Read [this page](https://github.com/d4n3436/revanced-patches-android5/releases/tag/v2.161.4) to check the critical known issues.

<details>

<summary>Open guide</summary>

1. Download YouTube 16.40.36 APK from APKMirror. (Just download. DO NOT install it.)  
   https://www.apkmirror.com/apk/google-inc/youtube/youtube-16-40-36-release/youtube-16-40-36-android-apk-download/
2. Download ReVanced Manager **v1.17.6** (v1.23.3+ is not compatible with d4n3436's patches!)
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

## YouTube Music v6.20.51 (A5-6) / v6.42.55 (A7)
Use inotia00's official RVX Patches.

You have to change the source setting to inotia00.  
See [this page](https://github.com/kitadai31/revanced-patches-android6-7/wiki/About-YouTube-Music#method-1-use-revanced-manger-for-android-5-7)

## Other apps
Since v1.23.3, this fork has restored compatibility with the official ReVanced Patches.  
(Previously, in v1.17.1-v1.17.6, this fork was only compatible with kitadai31's and d4n3436's patches.)

Therefore, you can also use the official ReVanced Patches now.  
You can patch some apps that support older Android.

To use the official patches, turn off "Use alternative sources" in the [Settings] tab.

(When you patch Twitter 10.23.0-release.0, you must disable "Dynamic theme" patch, otherwise patching fails!)

&nbsp;

[![TelegramChannel](https://img.shields.io/badge/Telegram_news_channel-2CA5E0?style=for-the-badge&logo=Telegram&logoColor=white)](https://t.me/rvx_for_a6_7)
[![TelegramChat](https://img.shields.io/badge/Telegram_chat_group-2CA5E0?style=for-the-badge&logo=Telegram&logoColor=white)](https://t.me/rvx_for_a6_7_chat)
