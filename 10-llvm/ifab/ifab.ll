; ModuleID = 'ifab.c'
source_filename = "ifab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @f(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8, !tbaa !2
  store i64 %1, i64* %4, align 8, !tbaa !2
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  %7 = load i64, i64* %3, align 8, !tbaa !2
  store i64 %7, i64* %5, align 8, !tbaa !2
  %8 = load i64, i64* %3, align 8, !tbaa !2
  %9 = load i64, i64* %4, align 8, !tbaa !2
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8, !tbaa !2
  %13 = add nsw i64 %12, 20
  store i64 %13, i64* %5, align 8, !tbaa !2
  br label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8, !tbaa !2
  %16 = load i64, i64* %5, align 8, !tbaa !2
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %5, align 8, !tbaa !2
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i64, i64* %5, align 8, !tbaa !2
  %20 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #2
  ret i64 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
