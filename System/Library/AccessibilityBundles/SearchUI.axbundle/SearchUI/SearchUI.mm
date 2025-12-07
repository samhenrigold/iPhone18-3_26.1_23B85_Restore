id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.SearchUI.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22CFF00 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityApproximateVisibleSummaryTextForView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [v3 _accessibilityValueForKey:@"ApproximateVisibleSummary"];
  v5 = v12[5];
  if (!v5)
  {
    v9 = MEMORY[0x29EDCA5F8];
    v10 = v4;
    AXPerformSafeBlock();
    v6 = v12[5];
    if (v6)
    {
      [v3 _accessibilitySetRetainedValue:v6 forKey:{@"ApproximateVisibleSummary", v9, 3221225472, __accessibilityApproximateVisibleSummaryTextForView_block_invoke, &unk_29F2F4DB8, v10, &v11}];
    }

    v5 = v12[5];
  }

  v7 = v5;
  _Block_object_dispose(&v11, 8);

  return v7;
}

void sub_29C2F7B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __accessibilityApproximateVisibleSummaryTextForView_block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) attributedText];
  v3 = [v2 string];

  if (!v3)
  {
    v3 = [*(a1 + 32) text];
  }

  if ([v3 length])
  {
    v14 = *MEMORY[0x29EDC7638];
    v4 = [*(a1 + 32) font];
    v15[0] = v4;
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v3 attributes:v5];
    v7 = CTFramesetterCreateWithAttributedString(v6);

    [*(a1 + 32) bounds];
    v8 = CGPathCreateWithRect(v17, 0);
    v16.length = [v3 length];
    v16.location = 0;
    Frame = CTFramesetterCreateFrame(v7, v16, v8, 0);
    VisibleStringRange = CTFrameGetVisibleStringRange(Frame);
    CFRelease(Frame);
    CFRelease(v8);
    CFRelease(v7);
    if (VisibleStringRange.location != -1)
    {
      v11 = [v3 substringWithRange:{VisibleStringRange.location, VisibleStringRange.length}];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

void sub_29C2F92FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C2F982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C2F9DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AXLocalizedStringFromQuickActionCategory_block_invoke()
{
  v9[6] = *MEMORY[0x29EDCA608];
  v8[0] = *MEMORY[0x29EDB8BD0];
  v0 = accessibilityLocalizedString(@"quickaction.action.audio-call");
  v9[0] = v0;
  v8[1] = *MEMORY[0x29EDB8BF0];
  v1 = accessibilityLocalizedString(@"quickaction.action.facetime");
  v9[1] = v1;
  v8[2] = *MEMORY[0x29EDB8BE8];
  v2 = accessibilityLocalizedString(@"quickaction.action.email");
  v9[2] = v2;
  v8[3] = *MEMORY[0x29EDB8BD8];
  v3 = accessibilityLocalizedString(@"quickaction.action.info");
  v9[3] = v3;
  v8[4] = *MEMORY[0x29EDB8BC8];
  v4 = accessibilityLocalizedString(@"quickaction.action.add-to-contact");
  v9[4] = v4;
  v8[5] = *MEMORY[0x29EDB8BE0];
  v5 = accessibilityLocalizedString(@"quickaction.action.instant-message");
  v9[5] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = AXLocalizedStringFromQuickActionCategory_AXQuickActionCategoryTable;
  AXLocalizedStringFromQuickActionCategory_AXQuickActionCategoryTable = v6;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x2A1C59EB0](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x2A1C6A7E0](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}