; ModuleID = 'obj\Debug\81\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\81\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [56 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 2
	i64 702024105029695270, ; 1: System.Drawing.Common => 0x9be17343c0e7726 => 24
	i64 1000557547492888992, ; 2: Mono.Security.dll => 0xde2b1c9cba651a0 => 25
	i64 1342439039765371018, ; 3: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 17
	i64 1744702963312407042, ; 4: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 20
	i64 1860886102525309849, ; 5: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 21
	i64 2497223385847772520, ; 6: System.Runtime => 0x22a7eb7046413568 => 6
	i64 2592350477072141967, ; 7: System.Xml.dll => 0x23f9e10627330e8f => 7
	i64 2624866290265602282, ; 8: mscorlib.dll => 0x246d65fbde2db8ea => 3
	i64 2965102914050845703, ; 9: AppZicaron => 0x29262963fa79ec07 => 0
	i64 3022227708164871115, ; 10: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 18
	i64 3531994851595924923, ; 11: System.Numerics => 0x31042a9aade235bb => 26
	i64 3571415421602489686, ; 12: System.Runtime.dll => 0x319037675df7e556 => 6
	i64 4264996749430196783, ; 13: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 19
	i64 5439315836349573567, ; 14: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 11
	i64 5507995362134886206, ; 15: System.Core.dll => 0x4c705499688c873e => 4
	i64 5767696078500135884, ; 16: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 12
	i64 6405879832841858445, ; 17: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 22
	i64 7654504624184590948, ; 18: System.Net.Http => 0x6a3a4366801b8264 => 23
	i64 7879037620440914030, ; 19: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 20
	i64 8044118961405839122, ; 20: System.ComponentModel.Composition => 0x6fa2739369944712 => 27
	i64 8101777744205214367, ; 21: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 12
	i64 8167236081217502503, ; 22: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8385935383968044654, ; 23: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 10
	i64 8626175481042262068, ; 24: Java.Interop => 0x77b654e585b55834 => 1
	i64 9475595603812259686, ; 25: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 16
	i64 9662334977499516867, ; 26: System.Numerics.dll => 0x8617827802b0cfc3 => 26
	i64 9808709177481450983, ; 27: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9866412715007501892, ; 28: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 9
	i64 9998632235833408227, ; 29: Mono.Security => 0x8ac2470b209ebae3 => 25
	i64 10038780035334861115, ; 30: System.Net.Http.dll => 0x8b50e941206af13b => 23
	i64 10659915745327611409, ; 31: AppZicaron.dll => 0x93efa0e447d87e11 => 0
	i64 10850923258212604222, ; 32: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 10
	i64 11023048688141570732, ; 33: System.Core => 0x98f9bc61168392ac => 4
	i64 11037814507248023548, ; 34: System.Xml => 0x992e31d0412bf7fc => 7
	i64 11376461258732682436, ; 35: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 13
	i64 12414299427252656003, ; 36: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 13
	i64 12952608645614506925, ; 37: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 15
	i64 12963446364377008305, ; 38: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 24
	i64 13358059602087096138, ; 39: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 17
	i64 14369828458497533121, ; 40: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 22
	i64 14400856865250966808, ; 41: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 14
	i64 15188640517174936311, ; 42: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 8
	i64 15246441518555807158, ; 43: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 8
	i64 15418891414777631748, ; 44: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 19
	i64 15457813392950723921, ; 45: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 18
	i64 15609085926864131306, ; 46: System.dll => 0xd89e9cf3334914ea => 5
	i64 16154507427712707110, ; 47: System => 0xe03056ea4e39aa26 => 5
	i64 16565028646146589191, ; 48: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 27
	i64 16833383113903931215, ; 49: mscorlib => 0xe99c30c1484d7f4f => 3
	i64 16932527889823454152, ; 50: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 15
	i64 17009591894298689098, ; 51: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 11
	i64 17428701562824544279, ; 52: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 14
	i64 17760961058993581169, ; 53: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 9
	i64 17936749993673010118, ; 54: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 16
	i64 18090425465832348288 ; 55: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 21
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [56 x i32] [
	i32 2, i32 24, i32 25, i32 17, i32 20, i32 21, i32 6, i32 7, ; 0..7
	i32 3, i32 0, i32 18, i32 26, i32 6, i32 19, i32 11, i32 4, ; 8..15
	i32 12, i32 22, i32 23, i32 20, i32 27, i32 12, i32 1, i32 10, ; 16..23
	i32 1, i32 16, i32 26, i32 2, i32 9, i32 25, i32 23, i32 0, ; 24..31
	i32 10, i32 4, i32 7, i32 13, i32 13, i32 15, i32 24, i32 17, ; 32..39
	i32 22, i32 14, i32 8, i32 8, i32 19, i32 18, i32 5, i32 5, ; 40..47
	i32 27, i32 3, i32 15, i32 11, i32 14, i32 9, i32 16, i32 21 ; 56..55
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}