id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A22935E8 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_29C1674B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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