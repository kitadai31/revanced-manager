# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.kts.kts.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

-keep class app.revanced.patcher.** { *; }
-keep class com.android.tools.smali.** { *; }
-keep class kotlin.** { *; }
-keep class com.android.apksig.internal.** { *; }
-keepnames class com.google.common.collect.**
-keepnames class org.xmlpull.** { *; }

-dontwarn com.google.j2objc.annotations.*
-dontwarn java.awt.**
-dontwarn javax.**

# Why does R8 obfuscate android.util package???
-keepnames class android.util.** { *; }