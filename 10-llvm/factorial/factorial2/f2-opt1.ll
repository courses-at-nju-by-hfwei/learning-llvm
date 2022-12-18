; ModuleID = 'factorial2.c'
source_filename = "factorial2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = call i32 @factorial(i32 2)
  %4 = mul nsw i32 %3, 7
  %5 = icmp eq i32 %4, 42
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @factorial(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %3, label %5

3:                                                ; preds = %5, %1
  %4 = phi i32 [ 1, %1 ], [ %8, %5 ]
  ret i32 %4

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 2, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 1, %1 ]
  %8 = mul nsw i32 %6, %7
  %9 = add nuw i32 %6, 1
  %10 = icmp eq i32 %6, %0
  br i1 %10, label %3, label %5
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
