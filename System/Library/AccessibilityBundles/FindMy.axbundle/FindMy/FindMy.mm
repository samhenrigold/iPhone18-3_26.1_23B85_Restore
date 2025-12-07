id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A219EFA0 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityB389LocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityB389LocalizedString_axBundle;
  if (accessibilityB389LocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityB389LocalizedString_axBundle, accessibilityB389LocalizedString_axBundle = v3, v4, (v2 = accessibilityB389LocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A219EFA0 table:@"Accessibility-B389"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29BDE44E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BDE5A48(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_29BDE5DE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 96));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_29BDE6064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  objc_destroyWeak((v18 + 56));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_29BDE6324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_29BDE690C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2A1C59B58](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}