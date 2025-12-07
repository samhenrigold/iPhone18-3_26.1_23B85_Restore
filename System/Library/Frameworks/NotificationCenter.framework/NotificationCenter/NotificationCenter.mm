__CFString *NCStringFromWidgetDisplayMode(uint64_t a1)
{
  v1 = @"[Unknown]";
  if (a1 == 1)
  {
    v1 = @"NCWidgetDisplayModeExpanded";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"NCWidgetDisplayModeCompact";
  }
}

__CFString *NCStringFromWidgetVisibilityState(uint64_t a1)
{
  v1 = @"[Unknown]";
  if (a1 == 1)
  {
    v1 = @"NCWidgetVisibilityStateForeground";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"NCWidgetVisibilityStateBackground";
  }
}

void sub_22D118730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose((v36 - 128), 8);
  _Block_object_dispose((v36 - 96), 8);
  _Block_object_dispose((v36 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t SanitizedClientFrameFromHostSize(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = fmax(a1 - a4 - a6, 0.0);
  if (a1 <= v9)
  {
    v10 = a1;
  }

  else
  {
    v10 = v9;
  }

  v11 = fmax(a2 - a3 - a5, 0.0);
  if (a2 <= v11)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  v28.origin.x = *MEMORY[0x277CBF3A0];
  v28.origin.y = *(MEMORY[0x277CBF3A0] + 8);
  v28.size.width = v10;
  v28.size.height = v12;
  Width = CGRectGetWidth(v28);
  v14 = fmax(a4, 0.0);
  if (Width <= v14)
  {
    v15 = Width;
  }

  else
  {
    v15 = v14;
  }

  v29.origin.x = v15;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  Height = CGRectGetHeight(v29);
  v19 = fmax(a3, 0.0);
  if (Height <= v19)
  {
    v20 = Height;
  }

  else
  {
    v20 = v19;
  }

  v21.n128_u64[0] = NCMainScreenScale(v16, v17);
  v22.n128_f64[0] = v15;
  v23.n128_f64[0] = v20;
  v24.n128_f64[0] = v10;
  v25.n128_f64[0] = v12;

  return MEMORY[0x2821DE7D0](v22, v23, v24, v25, v21);
}

void sub_22D119AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D11A124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D11A608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D11B13C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2 == 1)
  {
    v24 = objc_begin_catch(a1);
    v25 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v23 + 32);
      LODWORD(buf) = 138543618;
      *(&buf + 4) = v26;
      WORD6(buf) = 2114;
      *(&buf + 14) = v24;
      _os_log_impl(&dword_22D116000, v25, OS_LOG_TYPE_DEFAULT, "Encountered exception attempting to encode layer tree (layer=%{public}@): %{public}@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x22D11AFB0);
  }

  _Unwind_Resume(a1);
}

void sub_22D11C1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22D11CB38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void NCSwizzleClassMethod(objc_class *a1, const char *a2, const char *a3)
{
  ClassMethod = class_getClassMethod(a1, a2);
  if (!ClassMethod)
  {
    NCSwizzleClassMethod_cold_1(a2);
  }

  v7 = class_getClassMethod(a1, a3);
  if (!v7)
  {
    NCSwizzleClassMethod_cold_2(a3);
  }

  method_exchangeImplementations(ClassMethod, v7);
}

double NCMainScreenScale(uint64_t a1, uint64_t a2)
{
  if (NCMainScreenScale_onceToken != -1)
  {
    NCMainScreenScale_cold_1();
  }

  return *&NCMainScreenScale___mainScreenScale;
}

void __NCMainScreenScale_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  NCMainScreenScale___mainScreenScale = v1;

  if (*&NCMainScreenScale___mainScreenScale <= 0.0)
  {
    __NCMainScreenScale_block_invoke_cold_1();
  }
}

void NCRegisterWidgetsLogging(uint64_t result, uint64_t a2)
{
  if (NCRegisterWidgetsLogging_onceToken != -1)
  {
    NCRegisterWidgetsLogging_cold_1();
  }
}

uint64_t __NCRegisterWidgetsLogging_block_invoke()
{
  NCLogWidgets = os_log_create(NCWidgetLogSubsystem, "Widgets");

  return MEMORY[0x2821F96F8]();
}

void NCSwizzleClassMethod_cold_1(const char *a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void NCSwizzleClassMethod(__unsafe_unretained Class, SEL, SEL)"}];
  v3 = NSStringFromSelector(a1);
  [v4 handleFailureInFunction:v2 file:@"NCUtilities.m" lineNumber:15 description:{@"Could not obtain method for selector '%@'", v3}];
}

void NCSwizzleClassMethod_cold_2(const char *a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void NCSwizzleClassMethod(__unsafe_unretained Class, SEL, SEL)"}];
  v3 = NSStringFromSelector(a1);
  [v4 handleFailureInFunction:v2 file:@"NCUtilities.m" lineNumber:17 description:{@"Could not obtain method for selector '%@'", v3}];
}

void __NCMainScreenScale_block_invoke_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat NCMainScreenScale(void)_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"NCWidgetMetrics.m" lineNumber:25 description:@"Failed to initialized main screen scale!"];
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2821DE310](string);
  result.height = v2;
  result.width = v1;
  return result;
}

UIEdgeInsets UIEdgeInsetsFromString(NSString *string)
{
  MEMORY[0x2821DE4A8](string);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}