; ModuleID = 'factorial2.c'
source_filename = "factorial2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @factorial(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %6, label %9

6:                                                ; preds = %60, %3
  %7 = phi i32 [ 2, %3 ], [ %11, %60 ]
  %8 = phi i32 [ 1, %3 ], [ %68, %60 ]
  br label %72

9:                                                ; preds = %3
  %10 = and i32 %4, -8
  %11 = or i32 %10, 2
  %12 = add i32 %10, -8
  %13 = lshr exact i32 %12, 3
  %14 = add nuw nsw i32 %13, 1
  %15 = and i32 %14, 3
  %16 = icmp ult i32 %12, 24
  br i1 %16, label %42, label %17

17:                                               ; preds = %9
  %18 = sub nsw i32 %14, %15
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %17 ], [ %39, %19 ]
  %21 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %37, %19 ]
  %22 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %38, %19 ]
  %23 = phi i32 [ %18, %17 ], [ %40, %19 ]
  %24 = add <4 x i32> %20, <i32 4, i32 4, i32 4, i32 4>
  %25 = mul <4 x i32> %20, %21
  %26 = mul <4 x i32> %24, %22
  %27 = add <4 x i32> %20, <i32 8, i32 8, i32 8, i32 8>
  %28 = add <4 x i32> %20, <i32 12, i32 12, i32 12, i32 12>
  %29 = mul <4 x i32> %27, %25
  %30 = mul <4 x i32> %28, %26
  %31 = add <4 x i32> %20, <i32 16, i32 16, i32 16, i32 16>
  %32 = add <4 x i32> %20, <i32 20, i32 20, i32 20, i32 20>
  %33 = mul <4 x i32> %31, %29
  %34 = mul <4 x i32> %32, %30
  %35 = add <4 x i32> %20, <i32 24, i32 24, i32 24, i32 24>
  %36 = add <4 x i32> %20, <i32 28, i32 28, i32 28, i32 28>
  %37 = mul <4 x i32> %35, %33
  %38 = mul <4 x i32> %36, %34
  %39 = add <4 x i32> %20, <i32 32, i32 32, i32 32, i32 32>
  %40 = add i32 %23, -4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %19, !llvm.loop !2

42:                                               ; preds = %19, %9
  %43 = phi <4 x i32> [ undef, %9 ], [ %37, %19 ]
  %44 = phi <4 x i32> [ undef, %9 ], [ %38, %19 ]
  %45 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %9 ], [ %39, %19 ]
  %46 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %9 ], [ %37, %19 ]
  %47 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %9 ], [ %38, %19 ]
  %48 = icmp eq i32 %15, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42, %49
  %50 = phi <4 x i32> [ %57, %49 ], [ %45, %42 ]
  %51 = phi <4 x i32> [ %55, %49 ], [ %46, %42 ]
  %52 = phi <4 x i32> [ %56, %49 ], [ %47, %42 ]
  %53 = phi i32 [ %58, %49 ], [ %15, %42 ]
  %54 = add <4 x i32> %50, <i32 4, i32 4, i32 4, i32 4>
  %55 = mul <4 x i32> %50, %51
  %56 = mul <4 x i32> %54, %52
  %57 = add <4 x i32> %50, <i32 8, i32 8, i32 8, i32 8>
  %58 = add i32 %53, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %49, !llvm.loop !4

60:                                               ; preds = %49, %42
  %61 = phi <4 x i32> [ %43, %42 ], [ %55, %49 ]
  %62 = phi <4 x i32> [ %44, %42 ], [ %56, %49 ]
  %63 = mul <4 x i32> %62, %61
  %64 = shufflevector <4 x i32> %63, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %65 = mul <4 x i32> %63, %64
  %66 = shufflevector <4 x i32> %65, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %67 = mul <4 x i32> %65, %66
  %68 = extractelement <4 x i32> %67, i32 0
  %69 = icmp eq i32 %4, %10
  br i1 %69, label %70, label %6

70:                                               ; preds = %72, %60, %1
  %71 = phi i32 [ 1, %1 ], [ %68, %60 ], [ %75, %72 ]
  ret i32 %71

72:                                               ; preds = %6, %72
  %73 = phi i32 [ %76, %72 ], [ %7, %6 ]
  %74 = phi i32 [ %75, %72 ], [ %8, %6 ]
  %75 = mul nsw i32 %73, %74
  %76 = add nuw i32 %73, 1
  %77 = icmp eq i32 %73, %0
  br i1 %77, label %70, label %72, !llvm.loop !6
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.isvectorized", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = distinct !{!6, !7, !3}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
