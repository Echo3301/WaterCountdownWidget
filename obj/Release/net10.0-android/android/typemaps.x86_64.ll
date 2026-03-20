; ModuleID = 'typemaps.x86_64.ll'
source_filename = "typemaps.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 3, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 87, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [3 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x3e, i8 u0x2c, i8 u0xbf, i8 u0xf3, i8 u0xa1, i8 u0x8c, i8 u0x5a, i8 u0x4f, i8 u0x8c, i8 u0xa5, i8 u0xce, i8 u0x7e, i8 u0x57, i8 u0x43, i8 u0x52, i8 u0xa4 ], ; module_uuid: f3bf2c3e-8ca1-4f5a-8ca5-ce7e574352a4
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: WaterCountdownWidget
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x68, i8 u0x6d, i8 u0x84, i8 u0xf9, i8 u0x98, i8 u0x62, i8 u0xaa, i8 u0x47, i8 u0x93, i8 u0x47, i8 u0x17, i8 u0xfd, i8 u0xee, i8 u0xfc, i8 u0x96, i8 u0x51 ], ; module_uuid: f9846d68-6298-47aa-9347-17fdeefc9651
		i32 73, ; uint32_t entry_count
		i32 21, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xd1, i8 u0xc7, i8 u0x21, i8 u0x3e, i8 u0x53, i8 u0xca, i8 u0xaf, i8 u0x46, i8 u0x88, i8 u0x27, i8 u0xed, i8 u0xa6, i8 u0x33, i8 u0x9e, i8 u0x26, i8 u0x21 ], ; module_uuid: 3e21c7d1-ca53-46af-8827-eda6339e2621
		i32 14, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Java.Interop
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 2
], align 16

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [87 x i64] [
	i64 u0x01cd624f1e38cc9f, ; 0 => java/lang/Byte
	i64 u0x038a3021620c35a8, ; 1 => android/appwidget/AppWidgetManager
	i64 u0x0b1da699fb29019a, ; 2 => android/os/BaseBundle
	i64 u0x0c44130caa233945, ; 3 => mono/android/runtime/JavaObject
	i64 u0x0d9335f0988cd796, ; 4 => java/util/HashMap
	i64 u0x0f506638e9652730, ; 5 => crc64752b970231ac5f1e/WaterCountdownWidgetProvider
	i64 u0x10cc64dc53558d33, ; 6 => android/content/ComponentName
	i64 u0x15682bdd2dfb6d3f, ; 7 => android/widget/RemoteViews
	i64 u0x194b32fbae047fc7, ; 8 => net/dot/jni/internal/JavaProxyObject
	i64 u0x1e69018626ef9ffb, ; 9 => android/os/Handler
	i64 u0x225c20a45cb91cd7, ; 10 => java/lang/Error
	i64 u0x2bead3961bcf92a8, ; 11 => android/os/VibrationEffect
	i64 u0x32d6a1d6ee9f6d5a, ; 12 => android/content/Intent
	i64 u0x332031975eda7654, ; 13 => java/lang/Boolean
	i64 u0x35e989807a64bcd9, ; 14 => java/lang/IllegalStateException
	i64 u0x3611feb7c92af67a, ; 15 => android/content/SharedPreferences$Editor
	i64 u0x39f1c81500ddb55b, ; 16 => [F
	i64 u0x3c29d7fc1b1891dc, ; 17 => android/appwidget/AppWidgetProvider
	i64 u0x406e54c64b3bee74, ; 18 => android/runtime/JavaProxyThrowable
	i64 u0x4d9ebcacd375703a, ; 19 => android/app/AlarmManager
	i64 u0x5181b129b1a25949, ; 20 => java/lang/Class
	i64 u0x5238ad63b58da994, ; 21 => java/lang/ClassCastException
	i64 u0x529da4201fa0d461, ; 22 => net/dot/jni/internal/JavaProxyThrowable
	i64 u0x551ac881eb4466c0, ; 23 => java/lang/Number
	i64 u0x560a92597b121e00, ; 24 => [C
	i64 u0x56365290d5a06704, ; 25 => java/lang/LinkageError
	i64 u0x569e3e19ee7d7618, ; 26 => java/util/Calendar
	i64 u0x57fe4a40460344db, ; 27 => android/os/Build$VERSION
	i64 u0x5a6af884fe3c181e, ; 28 => android/os/Bundle
	i64 u0x5bfd65ae1a6e6ffc, ; 29 => android/app/Activity
	i64 u0x5f5a9fc3430795a4, ; 30 => android/content/ContextWrapper
	i64 u0x5f7e709faf8646e0, ; 31 => java/lang/Short
	i64 u0x61428f9f249ac534, ; 32 => [Z
	i64 u0x62daf35c931c09d6, ; 33 => android/content/BroadcastReceiver
	i64 u0x65f6b14b7e978927, ; 34 => java/io/IOException
	i64 u0x6e0fb15bd0f04d15, ; 35 => java/lang/StackTraceElement
	i64 u0x720cd712e1248c34, ; 36 => java/util/Iterator
	i64 u0x75591c18ddf5e52d, ; 37 => mono/android/TypeManager
	i64 u0x76cbd2104dd555ed, ; 38 => android/content/Context
	i64 u0x7b90c42bde036cae, ; 39 => [I
	i64 u0x7b925bdca68a0101, ; 40 => java/util/ArrayList
	i64 u0x84f94178aab6cc34, ; 41 => java/lang/CharSequence
	i64 u0x888700b03d541d93, ; 42 => java/lang/RuntimeException
	i64 u0x88f7510c649f4a97, ; 43 => java/io/InputStream
	i64 u0x8a3ea3c274e8ce68, ; 44 => java/lang/Character
	i64 u0x90b4aeb45636cd6a, ; 45 => mono/android/runtime/OutputStreamAdapter
	i64 u0x92188d393e2af2d2, ; 46 => java/lang/Throwable
	i64 u0x92b59c839bc46278, ; 47 => java/lang/Thread
	i64 u0x965bfaf1ff1da014, ; 48 => java/lang/ReflectiveOperationException
	i64 u0x98ba110c6c57da31, ; 49 => java/lang/Float
	i64 u0x99df91bab800c287, ; 50 => mono/android/runtime/InputStreamAdapter
	i64 u0x9e10a0b3efa170dc, ; 51 => android/view/ContextThemeWrapper
	i64 u0x9fa1370a1b1093fa, ; 52 => java/lang/NullPointerException
	i64 u0x9fffe5ad5d77dedd, ; 53 => android/os/Vibrator
	i64 u0xa50967895fa80a53, ; 54 => crc64752b970231ac5f1e/MainActivity
	i64 u0xa865adbdd81d9951, ; 55 => java/io/OutputStream
	i64 u0xa86f66387eaee170, ; 56 => android/content/SharedPreferences
	i64 u0xabc3cd0f40f748aa, ; 57 => java/lang/String
	i64 u0xac9902bb0e4c5217, ; 58 => java/lang/IllegalArgumentException
	i64 u0xacaf4fe23af1f72a, ; 59 => [S
	i64 u0xada6872f699d2ae8, ; 60 => [J
	i64 u0xb02badeb1c97535c, ; 61 => java/lang/Integer
	i64 u0xb18d71343ca8e96f, ; 62 => java/lang/Exception
	i64 u0xb6c4749da9477c3a, ; 63 => [B
	i64 u0xbb84ccbe48f6c18b, ; 64 => android/os/Looper
	i64 u0xbf6d427143271cb3, ; 65 => java/lang/Object
	i64 u0xc00f4c2f11efdcff, ; 66 => java/lang/ClassNotFoundException
	i64 u0xc2a8e50a5f08afc6, ; 67 => mono/java/lang/RunnableImplementor
	i64 u0xca35caf567cfa745, ; 68 => java/util/Collection
	i64 u0xcc306823503920e9, ; 69 => android/app/Application
	i64 u0xd1b288a9c7bb8f53, ; 70 => java/lang/Double
	i64 u0xd1bb565fc45586eb, ; 71 => android/app/PendingIntent
	i64 u0xd2fc750314fd2213, ; 72 => [D
	i64 u0xd5a28b8fa6d48e71, ; 73 => android/os/Build
	i64 u0xdd812f1d4afa427b, ; 74 => java/lang/UnsupportedOperationException
	i64 u0xdfabd9351f4351a6, ; 75 => [Ljava/lang/Object;
	i64 u0xe024b538ad65ea66, ; 76 => java/util/function/Consumer
	i64 u0xe0446bf91fb0c2dd, ; 77 => java/lang/NoClassDefFoundError
	i64 u0xe1b3c5871398eb28, ; 78 => java/nio/channels/FileChannel
	i64 u0xe5abbaa9de37d34b, ; 79 => net/dot/jni/ManagedPeer
	i64 u0xeb82145dcac4c559, ; 80 => java/lang/Long
	i64 u0xed3bf28f37177c87, ; 81 => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 u0xed49ed70aa9be1b3, ; 82 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 u0xef2f2996a1d369cc, ; 83 => java/io/FileInputStream
	i64 u0xf11f22a6441fcfbc, ; 84 => java/lang/IndexOutOfBoundsException
	i64 u0xfbe9bfa5cc50fed6, ; 85 => java/util/HashSet
	i64 u0xfd2b1a3de667eb51 ; 86 => java/lang/Runnable
], align 16

@module0_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	} ; 1
], align 16

@module1_managed_to_java = internal dso_local constant [73 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 62; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	} ; 72
], align 16

@module1_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	} ; 20
], align 16

@module2_managed_to_java = internal dso_local constant [14 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 72; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	} ; 13
], align 16

@module2_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	} ; 1
], align 16

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [87 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000043, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 74; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000091, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 84; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 60; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 62; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 82; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000075, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 59; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 85; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 68; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 78; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 65; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000093, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 54; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 76; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 70; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 72; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000032, ; uint32_t type_token_id
		i32 80; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 49; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 53; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 58; uint32_t java_name_index
	}, ; 46
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 56; uint32_t java_name_index
	}, ; 47
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 69; uint32_t java_name_index
	}, ; 48
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 48; uint32_t java_name_index
	}, ; 49
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 50
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 51
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 67; uint32_t java_name_index
	}, ; 52
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 53
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 73; uint32_t java_name_index
	}, ; 54
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 55
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 56
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 55; uint32_t java_name_index
	}, ; 57
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 61; uint32_t java_name_index
	}, ; 58
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 79; uint32_t java_name_index
	}, ; 59
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 81; uint32_t java_name_index
	}, ; 60
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 50; uint32_t java_name_index
	}, ; 61
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 47; uint32_t java_name_index
	}, ; 62
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 77; uint32_t java_name_index
	}, ; 63
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 64
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 52; uint32_t java_name_index
	}, ; 65
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 66
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 57; uint32_t java_name_index
	}, ; 67
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 68
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 69
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 70
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 71
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 83; uint32_t java_name_index
	}, ; 72
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 73
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000da, ; uint32_t type_token_id
		i32 71; uint32_t java_name_index
	}, ; 74
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 75; uint32_t java_name_index
	}, ; 75
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	}, ; 76
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 66; uint32_t java_name_index
	}, ; 77
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 78
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 86; uint32_t java_name_index
	}, ; 79
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 51; uint32_t java_name_index
	}, ; 80
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 81
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 82
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 83
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 63; uint32_t java_name_index
	}, ; 84
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000076, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 85
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 64; uint32_t java_name_index
	} ; 86
], align 16

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [87 x ptr] [
	ptr @.tmr.0, ; 0 ('android/appwidget/AppWidgetManager')
	ptr @.tmr.1, ; 1 ('android/appwidget/AppWidgetProvider')
	ptr @.tmr.2, ; 2 ('android/widget/RemoteViews')
	ptr @.tmr.3, ; 3 ('android/os/Handler')
	ptr @.tmr.4, ; 4 ('android/os/Vibrator')
	ptr @.tmr.5, ; 5 ('android/os/BaseBundle')
	ptr @.tmr.6, ; 6 ('android/os/Build')
	ptr @.tmr.7, ; 7 ('android/os/Build$VERSION')
	ptr @.tmr.8, ; 8 ('android/os/Bundle')
	ptr @.tmr.9, ; 9 ('android/os/Looper')
	ptr @.tmr.10, ; 10 ('android/os/VibrationEffect')
	ptr @.tmr.11, ; 11 ('android/view/ContextThemeWrapper')
	ptr @.tmr.12, ; 12 ('mono/android/runtime/InputStreamAdapter')
	ptr @.tmr.13, ; 13 ('java/util/Collection')
	ptr @.tmr.14, ; 14 ('java/util/HashMap')
	ptr @.tmr.15, ; 15 ('java/util/ArrayList')
	ptr @.tmr.16, ; 16 ('mono/android/runtime/JavaObject')
	ptr @.tmr.17, ; 17 ('android/runtime/JavaProxyThrowable')
	ptr @.tmr.18, ; 18 ('java/util/HashSet')
	ptr @.tmr.19, ; 19 ('mono/android/runtime/OutputStreamAdapter')
	ptr @.tmr.20, ; 20 ('android/content/Context')
	ptr @.tmr.21, ; 21 ('android/content/Intent')
	ptr @.tmr.22, ; 22 ('android/content/BroadcastReceiver')
	ptr @.tmr.23, ; 23 ('android/content/ComponentName')
	ptr @.tmr.24, ; 24 ('android/content/ContextWrapper')
	ptr @.tmr.25, ; 25 ('android/content/SharedPreferences$Editor')
	ptr @.tmr.26, ; 26 ('android/content/SharedPreferences$OnSharedPreferenceChangeListener')
	ptr @.tmr.27, ; 27 ('android/content/SharedPreferences')
	ptr @.tmr.28, ; 28 ('android/app/Activity')
	ptr @.tmr.29, ; 29 ('android/app/AlarmManager')
	ptr @.tmr.30, ; 30 ('android/app/Application')
	ptr @.tmr.31, ; 31 ('android/app/PendingIntent')
	ptr @.tmr.32, ; 32 ('java/nio/channels/FileChannel')
	ptr @.tmr.33, ; 33 ('java/nio/channels/spi/AbstractInterruptibleChannel')
	ptr @.tmr.34, ; 34 ('java/io/FileInputStream')
	ptr @.tmr.35, ; 35 ('java/io/InputStream')
	ptr @.tmr.36, ; 36 ('java/io/IOException')
	ptr @.tmr.37, ; 37 ('java/io/OutputStream')
	ptr @.tmr.38, ; 38 ('java/util/Calendar')
	ptr @.tmr.39, ; 39 ('java/util/Iterator')
	ptr @.tmr.40, ; 40 ('java/util/function/Consumer')
	ptr @.tmr.41, ; 41 ('java/lang/Boolean')
	ptr @.tmr.42, ; 42 ('java/lang/Byte')
	ptr @.tmr.43, ; 43 ('java/lang/Character')
	ptr @.tmr.44, ; 44 ('java/lang/Class')
	ptr @.tmr.45, ; 45 ('java/lang/ClassNotFoundException')
	ptr @.tmr.46, ; 46 ('java/lang/Double')
	ptr @.tmr.47, ; 47 ('java/lang/Exception')
	ptr @.tmr.48, ; 48 ('java/lang/Float')
	ptr @.tmr.49, ; 49 ('java/lang/CharSequence')
	ptr @.tmr.50, ; 50 ('java/lang/Integer')
	ptr @.tmr.51, ; 51 ('java/lang/Long')
	ptr @.tmr.52, ; 52 ('java/lang/Object')
	ptr @.tmr.53, ; 53 ('java/lang/RuntimeException')
	ptr @.tmr.54, ; 54 ('java/lang/Short')
	ptr @.tmr.55, ; 55 ('java/lang/String')
	ptr @.tmr.56, ; 56 ('java/lang/Thread')
	ptr @.tmr.57, ; 57 ('mono/java/lang/RunnableImplementor')
	ptr @.tmr.58, ; 58 ('java/lang/Throwable')
	ptr @.tmr.59, ; 59 ('java/lang/ClassCastException')
	ptr @.tmr.60, ; 60 ('java/lang/Error')
	ptr @.tmr.61, ; 61 ('java/lang/IllegalArgumentException')
	ptr @.tmr.62, ; 62 ('java/lang/IllegalStateException')
	ptr @.tmr.63, ; 63 ('java/lang/IndexOutOfBoundsException')
	ptr @.tmr.64, ; 64 ('java/lang/Runnable')
	ptr @.tmr.65, ; 65 ('java/lang/LinkageError')
	ptr @.tmr.66, ; 66 ('java/lang/NoClassDefFoundError')
	ptr @.tmr.67, ; 67 ('java/lang/NullPointerException')
	ptr @.tmr.68, ; 68 ('java/lang/Number')
	ptr @.tmr.69, ; 69 ('java/lang/ReflectiveOperationException')
	ptr @.tmr.70, ; 70 ('java/lang/StackTraceElement')
	ptr @.tmr.71, ; 71 ('java/lang/UnsupportedOperationException')
	ptr @.tmr.72, ; 72 ('mono/android/TypeManager')
	ptr @.tmr.73, ; 73 ('crc64752b970231ac5f1e/MainActivity')
	ptr @.tmr.74, ; 74 ('crc64752b970231ac5f1e/WaterCountdownWidgetProvider')
	ptr @.tmr.75, ; 75 ('[Ljava/lang/Object;')
	ptr @.tmr.76, ; 76 ('[Z')
	ptr @.tmr.77, ; 77 ('[B')
	ptr @.tmr.78, ; 78 ('[C')
	ptr @.tmr.79, ; 79 ('[S')
	ptr @.tmr.80, ; 80 ('[I')
	ptr @.tmr.81, ; 81 ('[J')
	ptr @.tmr.82, ; 82 ('[F')
	ptr @.tmr.83, ; 83 ('[D')
	ptr @.tmr.84, ; 84 ('net/dot/jni/internal/JavaProxyObject')
	ptr @.tmr.85, ; 85 ('net/dot/jni/internal/JavaProxyThrowable')
	ptr @.tmr.86 ; 86 ('net/dot/jni/ManagedPeer')
], align 16

; Strings
@.tmr.0 = private unnamed_addr constant [35 x i8] c"android/appwidget/AppWidgetManager\00", align 16
@.tmr.1 = private unnamed_addr constant [36 x i8] c"android/appwidget/AppWidgetProvider\00", align 16
@.tmr.2 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 16
@.tmr.3 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 16
@.tmr.4 = private unnamed_addr constant [20 x i8] c"android/os/Vibrator\00", align 16
@.tmr.5 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 16
@.tmr.6 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 16
@.tmr.7 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 16
@.tmr.8 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 16
@.tmr.9 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 16
@.tmr.10 = private unnamed_addr constant [27 x i8] c"android/os/VibrationEffect\00", align 16
@.tmr.11 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 16
@.tmr.12 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 16
@.tmr.13 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 16
@.tmr.14 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 16
@.tmr.15 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 16
@.tmr.16 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 16
@.tmr.17 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 16
@.tmr.18 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 16
@.tmr.19 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 16
@.tmr.20 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 16
@.tmr.21 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 16
@.tmr.22 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 16
@.tmr.23 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 16
@.tmr.24 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 16
@.tmr.25 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 16
@.tmr.26 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 16
@.tmr.27 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 16
@.tmr.28 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 16
@.tmr.29 = private unnamed_addr constant [25 x i8] c"android/app/AlarmManager\00", align 16
@.tmr.30 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 16
@.tmr.31 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 16
@.tmr.32 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 16
@.tmr.33 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 16
@.tmr.34 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 16
@.tmr.35 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 16
@.tmr.36 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 16
@.tmr.37 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 16
@.tmr.38 = private unnamed_addr constant [19 x i8] c"java/util/Calendar\00", align 16
@.tmr.39 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 16
@.tmr.40 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 16
@.tmr.41 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 16
@.tmr.42 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.tmr.43 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 16
@.tmr.44 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 16
@.tmr.45 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 16
@.tmr.46 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 16
@.tmr.47 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 16
@.tmr.48 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 16
@.tmr.49 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 16
@.tmr.50 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 16
@.tmr.51 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.tmr.52 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 16
@.tmr.53 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 16
@.tmr.54 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 16
@.tmr.55 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 16
@.tmr.56 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 16
@.tmr.57 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 16
@.tmr.58 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 16
@.tmr.59 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 16
@.tmr.60 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 16
@.tmr.61 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 16
@.tmr.62 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 16
@.tmr.63 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 16
@.tmr.64 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 16
@.tmr.65 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 16
@.tmr.66 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 16
@.tmr.67 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 16
@.tmr.68 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 16
@.tmr.69 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 16
@.tmr.70 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 16
@.tmr.71 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 16
@.tmr.72 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 16
@.tmr.73 = private unnamed_addr constant [35 x i8] c"crc64752b970231ac5f1e/MainActivity\00", align 16
@.tmr.74 = private unnamed_addr constant [51 x i8] c"crc64752b970231ac5f1e/WaterCountdownWidgetProvider\00", align 16
@.tmr.75 = private unnamed_addr constant [20 x i8] c"[Ljava/lang/Object;\00", align 16
@.tmr.76 = private unnamed_addr constant [3 x i8] c"[Z\00", align 1
@.tmr.77 = private unnamed_addr constant [3 x i8] c"[B\00", align 1
@.tmr.78 = private unnamed_addr constant [3 x i8] c"[C\00", align 1
@.tmr.79 = private unnamed_addr constant [3 x i8] c"[S\00", align 1
@.tmr.80 = private unnamed_addr constant [3 x i8] c"[I\00", align 1
@.tmr.81 = private unnamed_addr constant [3 x i8] c"[J\00", align 1
@.tmr.82 = private unnamed_addr constant [3 x i8] c"[F\00", align 1
@.tmr.83 = private unnamed_addr constant [3 x i8] c"[D\00", align 1
@.tmr.84 = private unnamed_addr constant [37 x i8] c"net/dot/jni/internal/JavaProxyObject\00", align 16
@.tmr.85 = private unnamed_addr constant [40 x i8] c"net/dot/jni/internal/JavaProxyThrowable\00", align 16
@.tmr.86 = private unnamed_addr constant [24 x i8] c"net/dot/jni/ManagedPeer\00", align 16

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [21 x i8] c"WaterCountdownWidget\00", align 16
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [13 x i8] c"Java.Interop\00", align 1

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ 9a2d211ba972d3a0c4c108e043def432f3ec2620"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
