-keep class app.revanced.patcher.** { *; }
-keep class com.android.tools.smali.** { *; }
-keep class kotlin.** { *; }
-keep class com.google.auto.value.** { *; }
-keep class com.android.apksig.internal.** { *; }
-keepnames class com.google.common.collect.**
-keepnames class org.xmlpull.** { *; }

# Why does R8 obfuscate android.util package???
-keepnames class android.util.** { *; }

-dontwarn com.google.auto.value.**
-dontwarn com.google.j2objc.annotations.*
-dontwarn java.awt.**
-dontwarn javax.**
