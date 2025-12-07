void sub_29BDDC084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || (v3 = MEMORY[0x29EDB9F48], MEMORY[0x29C2D5A30](), v4 = objc_claimAutoreleasedReturnValue(), [v4 stringByAppendingPathComponent:@"MobilePhone.axbundle"], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleWithPath:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v6, v7, v5, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A219DBB0 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}