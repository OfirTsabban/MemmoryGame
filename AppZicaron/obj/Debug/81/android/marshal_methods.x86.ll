; ModuleID = 'obj\Debug\81\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\81\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [56 x i32] [
	i32 160529393, ; 0: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 8
	i32 166922606, ; 1: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 13
	i32 177563795, ; 2: AppZicaron.dll => 0xa956893 => 0
	i32 293914992, ; 3: Xamarin.Android.Support.Transition => 0x1184c970 => 19
	i32 321597661, ; 4: System.Numerics => 0x132b30dd => 26
	i32 388313361, ; 5: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 11
	i32 389971796, ; 6: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 14
	i32 465846621, ; 7: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 8: System.dll => 0x1bff388e => 5
	i32 514659665, ; 9: Xamarin.Android.Support.Compat => 0x1ead1551 => 13
	i32 539750087, ; 10: Xamarin.Android.Support.Design => 0x202beec7 => 16
	i32 571524804, ; 11: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 21
	i32 692692150, ; 12: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 12
	i32 809851609, ; 13: System.Drawing.Common.dll => 0x30455ad9 => 24
	i32 958213972, ; 14: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 18
	i32 1098259244, ; 15: System => 0x41761b2c => 5
	i32 1359785034, ; 16: Xamarin.Android.Support.Design.dll => 0x510cac4a => 16
	i32 1445445088, ; 17: Xamarin.Android.Support.Fragment => 0x5627bde0 => 17
	i32 1574652163, ; 18: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 15
	i32 1587447679, ; 19: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 8
	i32 1591080575, ; 20: AppZicaron => 0x5ed5f67f => 0
	i32 1639515021, ; 21: System.Net.Http.dll => 0x61b9038d => 23
	i32 1657153582, ; 22: System.Runtime => 0x62c6282e => 6
	i32 1662014763, ; 23: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 22
	i32 1776026572, ; 24: System.Core.dll => 0x69dc03cc => 4
	i32 1877418711, ; 25: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 21
	i32 2079903147, ; 26: System.Runtime.dll => 0x7bf8cdab => 6
	i32 2166116741, ; 27: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 15
	i32 2201231467, ; 28: System.Net.Http => 0x8334206b => 23
	i32 2330457430, ; 29: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 14
	i32 2373288475, ; 30: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 17
	i32 2475788418, ; 31: Java.Interop.dll => 0x93918882 => 1
	i32 2819470561, ; 32: System.Xml.dll => 0xa80db4e1 => 7
	i32 2903344695, ; 33: System.ComponentModel.Composition => 0xad0d8637 => 27
	i32 2905242038, ; 34: mscorlib.dll => 0xad2a79b6 => 3
	i32 2922925221, ; 35: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 22
	i32 3068715062, ; 36: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 9
	i32 3092211740, ; 37: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 18
	i32 3247949154, ; 38: Mono.Security => 0xc197c562 => 25
	i32 3366347497, ; 39: Java.Interop => 0xc8a662e9 => 1
	i32 3429136800, ; 40: System.Xml => 0xcc6479a0 => 7
	i32 3439690031, ; 41: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 12
	i32 3476120550, ; 42: Mono.Android => 0xcf3163e6 => 2
	i32 3567349600, ; 43: System.ComponentModel.Composition.dll => 0xd4a16f60 => 27
	i32 3672681054, ; 44: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3678221644, ; 45: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 20
	i32 3681174138, ; 46: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 9
	i32 3689375977, ; 47: System.Drawing.Common => 0xdbe768e9 => 24
	i32 3718463572, ; 48: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 11
	i32 3829621856, ; 49: System.Numerics.dll => 0xe4436460 => 26
	i32 3862817207, ; 50: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 10
	i32 3874897629, ; 51: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 10
	i32 3883175360, ; 52: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 20
	i32 4105002889, ; 53: Mono.Security.dll => 0xf4ad5f89 => 25
	i32 4151237749, ; 54: System.Core => 0xf76edc75 => 4
	i32 4216993138 ; 55: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 19
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [56 x i32] [
	i32 8, i32 13, i32 0, i32 19, i32 26, i32 11, i32 14, i32 3, ; 0..7
	i32 5, i32 13, i32 16, i32 21, i32 12, i32 24, i32 18, i32 5, ; 8..15
	i32 16, i32 17, i32 15, i32 8, i32 0, i32 23, i32 6, i32 22, ; 16..23
	i32 4, i32 21, i32 6, i32 15, i32 23, i32 14, i32 17, i32 1, ; 24..31
	i32 7, i32 27, i32 3, i32 22, i32 9, i32 18, i32 25, i32 1, ; 32..39
	i32 7, i32 12, i32 2, i32 27, i32 2, i32 20, i32 9, i32 24, ; 40..47
	i32 11, i32 26, i32 10, i32 10, i32 20, i32 25, i32 4, i32 19 ; 56..55
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
