id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A23AB608 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityLookupButtonName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"pawprint.fill"])
  {
    if ([v4 isEqualToString:@"com.apple.argos.domain_key.cats"])
    {
      v5 = @"lookup.cat";
    }

    else if ([v4 isEqualToString:@"com.apple.argos.domain_key.dogs"])
    {
      v5 = @"lookup.dog";
    }

    else
    {
      v5 = @"lookup.pet";
    }

    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"mappin.and.ellipse"])
  {
    v5 = @"lookup.landmarks";
LABEL_19:
    v6 = accessibilityLocalizedString(v5);
    goto LABEL_20;
  }

  if ([v3 isEqualToString:@"leaf.fill"])
  {
    v5 = @"lookup.plant";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"photo.fill"])
  {
    v5 = @"lookup.art";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"book.closed.fill"])
  {
    v5 = @"lookup.book";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"music"])
  {
    v5 = @"lookup.album";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"music.on.film"])
  {
    v5 = @"lookup.media";
    goto LABEL_19;
  }

  v8 = AXLogAppAccessibility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    accessibilityLookupButtonName_cold_1(v3, v4, v8);
  }

  v6 = 0;
LABEL_20:

  return v6;
}

id AXImageAnalysisLabel(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v2 = @"appclip";
      goto LABEL_7;
    case 1:
      v2 = @"qrcode";
      goto LABEL_7;
    case 0:
      v2 = @"text";
LABEL_7:
      v3 = accessibilityLocalizedString(v2);
      goto LABEL_11;
  }

  v4 = AXLogAppAccessibility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    AXImageAnalysisLabel_cold_1(a1, v4);
  }

  v3 = 0;
LABEL_11:

  return v3;
}

void sub_29C76A2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void accessibilityLookupButtonName_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_29C768000, log, OS_LOG_TYPE_ERROR, "No lookup button name found for symbolName : %@, domainName : %@", &v3, 0x16u);
}

void AXImageAnalysisLabel_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_29C768000, a2, OS_LOG_TYPE_ERROR, "VKImageAnalysisButtonMode unhandled : %lu", &v2, 0xCu);
}