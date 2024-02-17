; ModuleID = 'f1-opt1.ll'
source_filename = "factorial1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define dso_local i32 @main(i32 %arg, i8** nocapture readnone %arg1) local_unnamed_addr #0 {
bb:
  %tmp = call i32 @factorial(i32 2)
  %tmp2 = mul nsw i32 %tmp, 7
  %tmp3 = icmp eq i32 %tmp2, 42
  %tmp4 = zext i1 %tmp3 to i32
  ret i32 %tmp4
}

; Function Attrs: nounwind readnone uwtable
define dso_local i32 @factorial(i32 %arg) local_unnamed_addr #0 {
bb:
  %tmp = icmp eq i32 %arg, 0
  br i1 %tmp, label %bb5, label %bb1

bb1:                                              ; preds = %bb
  %tmp2 = add nsw i32 %arg, -1
  %tmp3 = call i32 @factorial(i32 %tmp2)
  %tmp4 = mul nsw i32 %tmp3, %arg
  br label %bb5

bb5:                                              ; preds = %bb1, %bb
  %tmp6 = phi i32 [ %tmp4, %bb1 ], [ 1, %bb ]
  ret i32 %tmp6
}

attributes #0 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
