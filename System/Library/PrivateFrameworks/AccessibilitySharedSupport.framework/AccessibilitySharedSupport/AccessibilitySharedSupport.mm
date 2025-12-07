void onKeybagLockStatusChange()
{
  v0 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_INFO, "Keybag lock status changed", v3, 2u);
  }

  v1 = +[AXSSPunctuationManager sharedDatabase];
  [v1 _initializeDatabaseStartup];

  v2 = +[AXSSPunctuationManager sharedDatabase];
  [v2 _updateCloudKitHelpers];
}

uint64_t userAuthDidChange(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 userAuthChanged];
  }

  return result;
}

void sub_1C0E8D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C0E8D28C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0E8D2C4()
{
  v1 = (type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1C0F4F940();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1C0E8D4DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0ECF180(v1);
}

void sub_1C0E8D534(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0ECF32C(v1);
}

uint64_t sub_1C0E8DA60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C0E8DB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0E8DBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0F4F860();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C0F4F830();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0E8DCA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C0F4F860();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C0F4F830();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C0E8DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0F4F940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C0E8DE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C0F4F940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0E8DF34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C0E8DF94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0ED042C(v1);
}

uint64_t sub_1C0E8E1D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0E8E210()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0E8E2C4()
{
  v1 = sub_1C0F4F830();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C0E8E410()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_26AccessibilitySharedSupport16VOMyLocationInfo33_CBECDD908EB1E0F957F08A3D85914CCDLLVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0E8E47C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0E8E520()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0E8E570@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C0E8E5C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C0E8E618()
{

  sub_1C0F08B10(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1C0E8E660()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0E8E6A8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1C0E8E6E8()
{
  v1 = *v0;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E90F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E916E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E91AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E91F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E933B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E93588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E93BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E93E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AXSSAccessibilityDescriptionForSymbolName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ([v3 length])
  {
    if ([v3 containsString:@"wifi"] && MGGetBoolAnswer())
    {
      v6 = [v3 stringByReplacingOccurrencesOfString:@"wifi" withString:@"WLAN"];

      v3 = v6;
    }

    v7 = AXNSLocalizedStringForLocale();
    if (![v7 length] || objc_msgSend(v7, "isEqual:", @"__--__"))
    {
      v8 = AXNSLocalizedStringForLocale();

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 length] && (objc_msgSend(v7, "isEqual:", @"__--__") & 1) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F405A428;
  }

  return v9;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void AXSSLuminanceForColor(CGColor *a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    AXSSColorGetRGBAComponents(a1, v4);
    for (i = 0; i != 4; ++i)
    {
      v2 = *&v4[i];
      if (v2 <= 0.03928)
      {
        v3 = v2 / 12.92;
      }

      else
      {
        v3 = pow((v2 + 0.055) / 1.055, 2.4);
      }

      *&v4[i] = v3;
    }
  }
}

void AXSSColorGetRGBAComponents(CGColor *a1, uint64_t a2)
{
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v5 = CGBitmapContextCreate(data, 1uLL, 1uLL, 8uLL, 4uLL, v4, 5u);
  CGContextSetFillColorWithColor(v5, a1);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 1.0;
  v9.size.height = 1.0;
  CGContextFillRect(v5, v9);
  CGContextRelease(v5);
  CGColorSpaceRelease(v4);
  for (i = 0; i != 4; ++i)
  {
    LOBYTE(v6) = data[i];
    v6 = (LODWORD(v6) / 255.0);
    *(a2 + 8 * i) = v6;
  }
}

void AXSSRecommendedColorForColors(CGColor *a1, CGColor *a2, uint64_t a3, CFTypeRef *a4, CFTypeRef *a5, __n128 a6)
{
  v7 = a4;
  v8 = a6.n128_f64[0];
  v33[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!a3 && a4)
  {
    RecommendedColorIfNeeded = _findRecommendedColorIfNeeded(a1, a2, a6.n128_f64[0]);
    if (!RecommendedColorIfNeeded)
    {
      return;
    }

    v12 = RecommendedColorIfNeeded;
    AXSSLuminanceForColor(RecommendedColorIfNeeded);
    v14 = v13;
    AXSSLuminanceForColor(a2);
    if (v15 <= v14)
    {
      v16 = (v14 + 0.05) / (v15 + 0.05);
    }

    else
    {
      v16 = 1.0 / ((v14 + 0.05) / (v15 + 0.05));
    }

    if (v16 < v8)
    {
      goto LABEL_46;
    }

    goto LABEL_20;
  }

  if (a3 == 1 && a5)
  {
    v17 = _findRecommendedColorIfNeeded(a2, a1, a6.n128_f64[0]);
    if (!v17)
    {
      return;
    }

    v12 = v17;
    AXSSLuminanceForColor(a1);
    v19 = v18;
    AXSSLuminanceForColor(v12);
    if (v20 <= v19)
    {
      v21 = (v19 + 0.05) / (v20 + 0.05);
    }

    else
    {
      v21 = 1.0 / ((v19 + 0.05) / (v20 + 0.05));
    }

    v7 = a5;
    if (v21 < v8)
    {
      goto LABEL_46;
    }

LABEL_20:
    *v7 = CGColorCreateCopy(v12);
LABEL_46:

    CFRelease(v12);
    return;
  }

  if (a3 == 2 && a4 && a5)
  {
    v12 = _findRecommendedColorIfNeeded(a1, a2, a6.n128_f64[0]);
    *v7 = CGColorCreateCopy(v12);
    AXSSLuminanceForColor(a2);
    v23 = v22;
    AXSSLuminanceForColor(v12);
    if (v24 <= v23)
    {
      v25 = (v23 + 0.05) / (v24 + 0.05);
    }

    else
    {
      v25 = 1.0 / ((v23 + 0.05) / (v24 + 0.05));
    }

    if (v25 < v8)
    {
      v26 = _findRecommendedColorIfNeeded(a2, v12, v8);
      *a5 = CGColorCreateCopy(v26);
      AXSSLuminanceForColor(v26);
      v28 = v27;
      AXSSLuminanceForColor(v12);
      if (v29 <= v28)
      {
        v30 = (v28 + 0.05) / (v29 + 0.05);
      }

      else
      {
        v30 = 1.0 / ((v28 + 0.05) / (v29 + 0.05));
      }

      if (v30 <= v8)
      {
        if (*v7)
        {
          CFRelease(*v7);
        }

        if (*a5)
        {
          CFRelease(*a5);
        }

        AXSSColorGetRGBAComponents(v26, v33);
        if (v33[0] >= 0.2)
        {
          v31 = 1.0;
        }

        else
        {
          v31 = 0.0;
        }

        if (v33[0] >= 0.2)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = 1.0;
        }

        *a5 = CGColorCreateGenericGray(v31, 1.0);
        *v7 = CGColorCreateGenericGray(v32, 1.0);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (v12)
    {
      goto LABEL_46;
    }
  }
}

uint64_t _findRecommendedColorIfNeeded(CGColor *a1, CGColor *a2, double a3)
{
  AXSSLuminanceForColor(a1);
  v7 = v6;
  AXSSLuminanceForColor(a2);
  if (v8 <= v7)
  {
    v9 = (v7 + 0.05) / (v8 + 0.05);
  }

  else
  {
    v9 = 1.0 / ((v7 + 0.05) / (v8 + 0.05));
  }

  if (v9 >= a3)
  {
    return 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___findRecommendedColor_block_invoke;
  aBlock[3] = &unk_1E8134D38;
  aBlock[6] = a1;
  aBlock[7] = a2;
  *&aBlock[8] = a3;
  aBlock[4] = &v17;
  aBlock[5] = &v21;
  v10 = _Block_copy(aBlock);
  v10[2](1.0, 1.0);
  (v10[2])(v10, -1.0, 0.0);
  (v10[2])(v10, -1.0, -1.0);
  (v10[2])(v10, 1.0, 0.0);
  (v10[2])(v10, 0.0, 1.0);
  (v10[2])(v10, 0.0, -1.0);
  v11 = v18;
  if (!v18[3])
  {
    Copy = CGColorCreateCopy(v22[3]);
    v11 = v18;
    v18[3] = Copy;
  }

  v13 = v22[3];
  if (v13)
  {
    CFRelease(v13);
    v11 = v18;
  }

  v14 = v11[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v14;
}

void sub_1C0E99414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

double *AXSSRgb2hsv(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4;
  }

  if (a4 <= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  if (v6 >= a6)
  {
    v6 = a6;
  }

  if (v7 <= a6)
  {
    v7 = a6;
  }

  *a3 = v7;
  v8 = v7 - v6;
  if (v8 >= 0.00001)
  {
    if (v7 <= 0.0)
    {
      *a2 = 0.0;
      v9 = NAN;
    }

    else
    {
      *a2 = v8 / v7;
      if (v7 <= a4)
      {
        v12 = (a5 - a6) / v8;
      }

      else
      {
        v10 = v7 > a5;
        v11 = (a4 - a5) / v8 + 4.0;
        v12 = (a6 - a4) / v8 + 2.0;
        if (v10)
        {
          v12 = v11;
        }
      }

      v9 = v12 * 60.0;
      if (v9 < 0.0)
      {
        v9 = v9 + 360.0;
      }
    }
  }

  else
  {
    *a2 = 0.0;
    v9 = 0.0;
  }

  *result = v9;
  return result;
}

double *AXSSHsv2rgb(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a5 <= 0.0)
  {
    *a3 = a6;
    *a2 = a6;
    *result = a6;
    return result;
  }

  v6 = a4 / 60.0;
  v7 = vcvtmd_s64_f64(v6);
  v8 = v6 - v7;
  v9 = (1.0 - a5) * a6;
  v10 = (1.0 - a5 * v8) * a6;
  v11 = (1.0 - a5 * (1.0 - v8)) * a6;
  if (v7 > 1)
  {
    switch(v7)
    {
      case 2:
        *result = v9;
        *a2 = a6;
        *a3 = v11;
        return result;
      case 3:
        *result = v9;
        *a2 = v10;
        goto LABEL_13;
      case 4:
        *result = v11;
        *a2 = v9;
LABEL_13:
        *a3 = a6;
        return result;
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    *result = a6;
    *a2 = v11;
    goto LABEL_15;
  }

  if (v7 == 1)
  {
    *result = v10;
    *a2 = a6;
LABEL_15:
    *a3 = v9;
    return result;
  }

LABEL_16:
  *result = a6;
  *a2 = v9;
  *a3 = v10;
  return result;
}

void ___findRecommendedColor_block_invoke(uint64_t a1, double a2, double a3)
{
  components[4] = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return;
  }

  v7 = *(a1 + 56);
  v46 = *(a1 + 64);
  AXSSColorGetRGBAComponents(*(a1 + 48), &v59);
  v57 = v60;
  v58 = v59;
  v47 = v62;
  v56 = v61;
  v54 = 0.0;
  v55 = 0.0;
  v53 = 0.0;
  AXSSRgb2hsv(&v55, &v54, &v53, v59, v60, v61);
  v8 = 0;
  v10 = v53;
  v9 = v54;
  v11 = 1.0;
  v12 = 1.0 - v54;
  if (a3 <= 0.0)
  {
    v12 = v54;
  }

  v51 = v12 / 70.0;
  v13 = 1.0 - v53;
  if (a2 <= 0.0)
  {
    v13 = v53;
  }

  v14 = *MEMORY[0x1E695F1C0];
  v15 = 0.0;
  v49 = v13 / 70.0;
  for (i = 69; i; --i)
  {
    v9 = v9 + a3 * v51;
    v10 = v10 + a2 * v49;
    v53 = v10;
    v54 = v9;
    if (v10 < 0.0 || v10 > v11)
    {
      break;
    }

    if (v9 < 0.0 || v9 > v11)
    {
      break;
    }

    if (v8)
    {
      CFRelease(v8);
      v10 = v53;
      v9 = v54;
    }

    AXSSHsv2rgb(&v58, &v57, &v56, v55, v9, v10);
    v20 = v57;
    v19 = v58;
    v21 = v56;
    v22 = CGColorSpaceCreateWithName(v14);
    if (v22)
    {
      v23 = v22;
      components[0] = v19;
      components[1] = v20;
      components[2] = v21;
      components[3] = v47;
      v8 = CGColorCreate(v22, components);
      CFRelease(v23);
      if (v8)
      {
        AXSSLuminanceForColor(v8);
        v25 = v24;
        AXSSLuminanceForColor(v7);
        v11 = 1.0;
        if (v26 <= v25)
        {
          v15 = (v25 + 0.05) / (v26 + 0.05);
        }

        else
        {
          v15 = 1.0 / ((v25 + 0.05) / (v26 + 0.05));
        }

        if (v15 >= v46)
        {
          goto LABEL_30;
        }

        continue;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = 1.0;
  }

  if (!v8)
  {
    return;
  }

LABEL_30:
  if (v15 <= *(a1 + 64) && (v3 = a1 + 40, *(*(*(a1 + 40) + 8) + 24)))
  {
    v27 = *(a1 + 56);
    AXSSLuminanceForColor(v8);
    v50 = v28;
    AXSSLuminanceForColor(v27);
    v52 = v29;
    v30 = *(*(*(a1 + 40) + 8) + 24);
    v31 = *(a1 + 56);
    AXSSLuminanceForColor(v30);
    v48 = v32;
    AXSSLuminanceForColor(v31);
    v33.f64[0] = v50;
    v33.f64[1] = v48;
    v34 = vdupq_n_s64(0x3FA999999999999AuLL);
    v35.f64[0] = v52;
    v35.f64[1] = v36;
    v37 = vdivq_f64(vaddq_f64(v33, v34), vaddq_f64(v35, v34));
    v38 = vcgtq_f64(v35, v33);
    __asm { FMOV            V2.2D, #1.0 }

    v44 = vbslq_s8(v38, vdivq_f64(_Q2, v37), v37);
    if (vmovn_s64(vcgtq_f64(v44, vdupq_laneq_s64(v44, 1))).u8[0])
    {
      v45 = *(*(*v3 + 8) + 24);
      if (v45)
      {
        CFRelease(v45);
      }

      goto LABEL_35;
    }
  }

  else
  {
LABEL_35:
    *(*(*v3 + 8) + 24) = CGColorCreateCopy(v8);
  }

  CFRelease(v8);
}

void sub_1C0E99DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E9A208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E9A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E9ADF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E9D6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVMediaTypeMetadataObject()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVMediaTypeMetadataObjectSymbolLoc_ptr;
  v8 = getAVMediaTypeMetadataObjectSymbolLoc_ptr;
  if (!getAVMediaTypeMetadataObjectSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary();
    v6[3] = dlsym(v1, "AVMediaTypeMetadataObject");
    getAVMediaTypeMetadataObjectSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getAVCaptureDeviceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVCaptureDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVCaptureDeviceClass_block_invoke_cold_1();
    return AVFoundationLibrary();
  }

  return result;
}

uint64_t AVFoundationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AVFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8134F30;
    v5 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMediaTypeMetadataObjectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMediaTypeMetadataObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeMetadataObjectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C0EA094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *AXSSLanguageConvertToCanonicalForm(void *a1)
{
  v1 = AXSSLanguageToLocales_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXSSLanguageConvertToCanonicalForm_cold_1();
  }

  v3 = AXSSLanguageToLocales_LanguageToLangLocale;
  v4 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if ([v4 hasPrefix:@"zh"])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];

    v4 = [v5 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
  }

  if (![v4 length])
  {
    v8 = 0;
    goto LABEL_30;
  }

  v6 = [v4 lowercaseString];
  v7 = [v3 objectForKey:v6];
  if (v7)
  {
    v8 = v7;
LABEL_8:
    if ((![v6 isEqualToString:@"zh"] || (-[__CFString hasPrefix:](v8, "hasPrefix:", @"zh") & 1) == 0) && (!objc_msgSend(v6, "isEqualToString:", @"pt") || (-[__CFString hasPrefix:](v8, "hasPrefix:", @"pt") & 1) == 0) && (!objc_msgSend(v6, "isEqualToString:", @"fr") || !-[__CFString hasPrefix:](v8, "hasPrefix:", @"fr")))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v9 = [v4 rangeOfString:@"-"];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v4 substringToIndex:v9];
  v12 = [v4 substringFromIndex:v10 + 1];
  v13 = [v12 uppercaseString];
  v8 = [v11 stringByAppendingFormat:@"-%@", v13];

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_19:
  v14 = [v6 isEqualToString:@"zh"];
  v15 = CFLocaleCopyPreferredLanguages();
  v16 = [(__CFArray *)v15 firstObject];
  if (!v14)
  {

    if (v16)
    {
      v18 = [(__CFString *)v16 lowercaseString];
      v19 = [v3 objectForKeyedSubscript:v18];
      if (!v19)
      {
LABEL_26:

        goto LABEL_28;
      }

      v20 = v19;
      v21 = [(__CFString *)v16 lowercaseString];
      v22 = [v21 hasPrefix:v6];

      if (v22)
      {
        v18 = v8;
        v8 = v16;
        goto LABEL_26;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v17 = [(__CFString *)v16 stringByReplacingOccurrencesOfString:@"-Hans" withString:&stru_1F405A428];

  v16 = [v17 stringByReplacingOccurrencesOfString:@"-Hant" withString:&stru_1F405A428];

  if (([(__CFString *)v16 hasPrefix:@"zh"]& 1) == 0)
  {
    v8 = @"zh-CN";
    goto LABEL_28;
  }

  v8 = v16;
LABEL_29:

LABEL_30:

  return v8;
}

id AXSSLanguageCanonicalFormToGeneralLanguage(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [a1 lowercaseString];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [&unk_1F4066618 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(&unk_1F4066618);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v1 rangeOfString:v6] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = [v1 substringToIndex:{objc_msgSend(v1, "rangeOfString:", v6)}];
          goto LABEL_11;
        }
      }

      v3 = [&unk_1F4066618 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = v1;
LABEL_11:
  v8 = v7;

  return v8;
}

void sub_1C0EA3DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AXSSLanguageToLocales_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v4 pathForResource:@"AXLanguageToLocale" ofType:@"plist"];
  v2 = [v0 initWithContentsOfFile:v1];
  v3 = AXSSLanguageToLocales_LanguageToLangLocale;
  AXSSLanguageToLocales_LanguageToLangLocale = v2;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C0EA755C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0EA7BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EA8084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C0EA856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EA96D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EAAD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double OUTLINED_FUNCTION_2_2(uint64_t a1)
{

  objc_opt_class();
  return result;
}

id AXSSHumanReadableDescriptionForMotionTrackingFacialExpression(unint64_t a1)
{
  if (a1 > 9)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E8135400[a1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableExplanationForMotionTrackingFacialExpression(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E8135450[a1 - 1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableDescriptionForMotionTrackingFacialExpressionSensitivity(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E8135498[a1 - 1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableDescriptionForMotionTrackingMode(unint64_t a1)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E81354B0[a1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableExplanationForMotionTrackingMode(unint64_t a1)
{
  if (a1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E81354D0[a1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableDescriptionForMotionTrackingErrorCodeAndTrackingType(uint64_t a1, uint64_t a2)
{
  if (a1 <= 5)
  {
    if (a1 > 3)
    {
      if (a1 != 4)
      {
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_TOO_DARK";
        goto LABEL_38;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
      if (a2 == 3)
      {
        v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_MOVED_SIGNIFICANTLY";
      }

      else
      {
        v9 = @"AXMT_FAILURE_REASON_FACE_MOVED_SIGNIFICANTLY";
      }

      goto LABEL_37;
    }

    if ((a1 - 2) < 2)
    {
      if (AXSSDeviceGetType(a1, a2) == 3)
      {
        v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
        v4 = [v3 usesMetricSystem];

        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        if (v4)
        {
          if (a2 == 3)
          {
            v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC_IPAD";
          }

          else
          {
            v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC_IPAD";
          }
        }

        else if (a2 == 3)
        {
          v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_IPAD";
        }

        else
        {
          v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_IPAD";
        }
      }

      else
      {
        v7 = [MEMORY[0x1E695DF58] currentLocale];
        v8 = [v7 usesMetricSystem];

        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        if (v8)
        {
          if (a2 == 3)
          {
            v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC";
          }

          else
          {
            v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC";
          }
        }

        else if (a2 == 3)
        {
          v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA";
        }

        else
        {
          v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA";
        }
      }

LABEL_37:
      v6 = v5;
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
      v5 = v6;
      v9 = @"AXMT_FAILURE_REASON_FACE_LOST";
      goto LABEL_38;
    }

LABEL_29:
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v5 = v6;
    v9 = @"AXMT_FAILURE_REASON_UNDEFINED";
    goto LABEL_38;
  }

  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_DEVICE_IN_MOTION";
        goto LABEL_38;
      case 11:
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_INITIALIZING";
        goto LABEL_38;
      case 14:
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_HID_DEVICE_CONFIGURING";
        goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (a1 == 6)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v5 = v6;
    v9 = @"AXMT_FAILURE_REASON_SENSOR_COVERED";
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v5 = v6;
    v9 = @"AXMT_FAILURE_REASON_CAMERA_STOLEN";
  }

LABEL_38:
  v10 = [v6 localizedStringForKey:v9 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

  return v10;
}

void sub_1C0EB00D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C0EB1A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0EB23AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EB4500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0EB5518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXSSDeviceGetType(uint64_t a1, uint64_t a2)
{
  if (AXSSDeviceGetType__AXSSCurrentDeviceTypeOnceToken != -1)
  {
    AXSSDeviceGetType_cold_1();
  }

  return AXSSDeviceGetType__AXSSDeviceType;
}

uint64_t __AXSSDeviceGetType_block_invoke()
{
  result = MGGetSInt32Answer();
  AXSSDeviceGetType__AXSSDeviceType = result;
  return result;
}

void *__AXSSCastAsClass(NSString *a1, void *a2)
{
  v3 = a2;
  NSClassFromString(a1);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id AXSSVoiceOverAvailableTextualContextIdentifiers()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXSSVoiceOverTextualContextWordProcessing";
  v2[1] = @"AXSSVoiceOverTextualContextNarrative";
  v2[2] = @"AXSSVoiceOverTextualContextMessaging";
  v2[3] = @"AXSSVoiceOverTextualContextSocialMedia";
  v2[4] = @"AXSSVoiceOverTextualContextSpreadsheet";
  v2[5] = @"AXSSVoiceOverTextualContextFileSystem";
  v2[6] = @"AXSSVoiceOverTextualContextSourceCode";
  v2[7] = @"AXSSVoiceOverTextualContextConsole";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];

  return v0;
}

id AXSSVoiceOverLocalizedNameForTextualContextIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextWordProcessing"])
  {
    v2 = @"punctuation.context.word.processing";
LABEL_17:
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v4 = [v3 localizedStringForKey:v2 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

    goto LABEL_18;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextNarrative"])
  {
    v2 = @"punctuation.context.reading";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextMessaging"])
  {
    v2 = @"punctuation.context.messaging";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSourceCode"])
  {
    v2 = @"punctuation.context.source.code";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSocialMedia"])
  {
    v2 = @"punctuation.context.social.media";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSpreadsheet"])
  {
    v2 = @"punctuation.context.spreadsheet";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextConsole"])
  {
    v2 = @"punctuation.context.console";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextFileSystem"])
  {
    v2 = @"punctuation.context.file.system";
    goto LABEL_17;
  }

  v4 = 0;
LABEL_18:

  return v4;
}

__CFString *AXSSVoiceOverSymbolNameForTextualContextIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextWordProcessing"])
  {
    v2 = @"doc.text";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextNarrative"])
  {
    v2 = @"book";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextMessaging"])
  {
    v2 = @"message";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSourceCode"])
  {
    v2 = @"curlybraces";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSocialMedia"])
  {
    v2 = @"person.2";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSpreadsheet"])
  {
    v2 = @"tablecells";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextConsole"])
  {
    v2 = @"terminal";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextFileSystem"])
  {
    v2 = @"folder";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id getAVCaptureDeviceWasConnectedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr;
  v8 = getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr;
  if (!getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceWasConnectedNotification");
    getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVCaptureDeviceWasDisconnectedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr;
  v8 = getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr;
  if (!getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceWasDisconnectedNotification");
    getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVCaptureDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVCaptureDeviceClass_softClass_0;
  v7 = getAVCaptureDeviceClass_softClass_0;
  if (!getAVCaptureDeviceClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVCaptureDeviceClass_block_invoke_0;
    v3[3] = &unk_1E8134F10;
    v3[4] = &v4;
    __getAVCaptureDeviceClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0EB794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVMediaTypeVideo()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVMediaTypeVideoSymbolLoc_ptr_0;
  v8 = getAVMediaTypeVideoSymbolLoc_ptr_0;
  if (!getAVMediaTypeVideoSymbolLoc_ptr_0)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVMediaTypeVideo");
    getAVMediaTypeVideoSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1C0EB8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr;
  v12 = getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr)
  {
    v5 = AVFoundationLibrary_0();
    v10[3] = dlsym(v5, "AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera");
    getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = *v4;

  return v6;
}

id getAVCaptureDeviceTypeBuiltInWideAngleMetadataCamera(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr;
  v12 = getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr)
  {
    v5 = AVFoundationLibrary_0();
    v10[3] = dlsym(v5, "AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera");
    getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = *v4;

  return v6;
}

id getAVCaptureDeviceTypeBuiltInWideAngleCamera(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr;
  v12 = getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr)
  {
    v5 = AVFoundationLibrary_0();
    v10[3] = dlsym(v5, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
    getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = *v4;

  return v6;
}

void sub_1C0EB90BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureDeviceWasConnectedNotificationSymbolLoc_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = AVFoundationLibrary_0();
  result = dlsym(v5, "AVCaptureDeviceWasConnectedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVFoundationLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AVFoundationLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8135B78;
    v5 = 0;
    AVFoundationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!AVFoundationLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceWasDisconnectedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVCaptureDeviceClass_block_invoke_0(uint64_t a1)
{
  AVFoundationLibrary_0();
  result = objc_getClass("AVCaptureDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVCaptureDeviceClass_block_invoke_cold_1();
    return __getAVMediaTypeVideoSymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMediaTypeMetadataObjectSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVMediaTypeMetadataObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeMetadataObjectSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInDualCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInTelephotoCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInUltraWideCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceDiscoverySessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceDiscoverySession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceDiscoverySessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVCaptureDeviceDiscoverySessionClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_7();
  }
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1C0EBEB94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x270]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak(&STACK[0x2D0]);
  objc_destroyWeak(&STACK[0x300]);
  objc_destroyWeak(&STACK[0x330]);
  objc_destroyWeak(&STACK[0x360]);
  objc_destroyWeak(&STACK[0x390]);
  objc_destroyWeak(&STACK[0x3C0]);
  objc_destroyWeak(&STACK[0x3F0]);
  objc_destroyWeak(&STACK[0x420]);
  objc_destroyWeak(&STACK[0x450]);
  objc_destroyWeak(&STACK[0x480]);
  objc_destroyWeak(&STACK[0x4B0]);
  objc_destroyWeak(&STACK[0x4E0]);
  objc_destroyWeak(&STACK[0x510]);
  objc_destroyWeak(&STACK[0x540]);
  objc_destroyWeak(&STACK[0x570]);
  objc_destroyWeak(&STACK[0x5F0]);
  objc_destroyWeak(&STACK[0x620]);
  objc_destroyWeak(&STACK[0x650]);
  objc_destroyWeak(&STACK[0x680]);
  objc_destroyWeak(&STACK[0x6B0]);
  objc_destroyWeak(&STACK[0x6E0]);
  objc_destroyWeak(&STACK[0x710]);
  objc_destroyWeak(&STACK[0x740]);
  objc_destroyWeak(&STACK[0x770]);
  objc_destroyWeak(&STACK[0x7A0]);
  objc_destroyWeak(&STACK[0x7D0]);
  objc_destroyWeak(&STACK[0x800]);
  objc_destroyWeak(&STACK[0x830]);
  objc_destroyWeak(&STACK[0x860]);
  objc_destroyWeak(&STACK[0x890]);
  objc_destroyWeak(&STACK[0x8C0]);
  objc_destroyWeak(&STACK[0x8F0]);
  objc_destroyWeak(&STACK[0x920]);
  objc_destroyWeak(&STACK[0x950]);
  objc_destroyWeak(&STACK[0x980]);
  objc_destroyWeak(&STACK[0x9B0]);
  objc_destroyWeak(&STACK[0x9E0]);
  objc_destroyWeak(&STACK[0xA10]);
  objc_destroyWeak(&STACK[0xB80]);
  objc_destroyWeak(&STACK[0xBB0]);
  objc_destroyWeak(&STACK[0xBE0]);
  objc_destroyWeak(&STACK[0xD00]);
  objc_destroyWeak(&STACK[0xE20]);
  objc_destroyWeak(&STACK[0xE50]);
  objc_destroyWeak(&STACK[0xF70]);
  objc_destroyWeak(&STACK[0xFA0]);
  objc_destroyWeak(&STACK[0xFD0]);
  objc_destroyWeak(&STACK[0x1050]);
  objc_destroyWeak(&STACK[0x1080]);
  objc_destroyWeak(&STACK[0x10B0]);
  objc_destroyWeak(&STACK[0x10E0]);
  objc_destroyWeak(&STACK[0x1110]);
  objc_destroyWeak(&STACK[0x1140]);
  objc_destroyWeak(&STACK[0x1148]);
  _Unwind_Resume(a1);
}

id AXSSLogForCategory(uint64_t a1)
{
  if (a1 < 4)
  {
    if (AXSSLogForCategory_onceToken != -1)
    {
      AXSSLogForCategory_cold_1();
    }

    v1 = AXSSLogForCategory_AllLogObjects[a1];
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  return v1;
}

uint64_t __AXSSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Accessibility", "default");
  v1 = AXSSLogForCategory_AllLogObjects[0];
  AXSSLogForCategory_AllLogObjects[0] = v0;

  v2 = os_log_create("com.apple.Accessibility", "idc");
  v3 = qword_1EBE796B8;
  qword_1EBE796B8 = v2;

  qword_1EBE796C0 = os_log_create("com.apple.Accessibility", "motiontracking");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C0EC2478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__GetHiraganaSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[[:Hiragana:][:Katakana_Or_Hiragana:]]"];
  GetHiraganaSet___hiraganaSet = result;
  return result;
}

void *__GetKatakanaSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[[:Katakana:][:Katakana_Or_Hiragana:]]"];
  GetKatakanaSet___katakanaSet = result;
  return result;
}

void *__GetHalfWidthLatinSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[a-zA-Z]"];
  GetHalfWidthLatinSet___halfWidthLatinSet = result;
  return result;
}

void *__GetFullWidthLatinSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[ａ-ｚＡ-Ｚ]"];
  GetFullWidthLatinSet___fullWidthLatinSet = result;
  return result;
}

void sub_1C0EC2DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHIDManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!HIDLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __HIDLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8135C50;
    v6 = 0;
    HIDLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HIDLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HIDManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHIDManagerClass_block_invoke_cold_1();
  }

  getHIDManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HIDLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HIDLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1C0EC5440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC6284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC6B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC7898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCPeerIDClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCPeerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCPeerIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMCPeerIDClass_block_invoke_cold_1();
    return MultipeerConnectivityLibrary();
  }

  return result;
}

uint64_t MultipeerConnectivityLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MultipeerConnectivityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MultipeerConnectivityLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8135D50;
    v5 = 0;
    MultipeerConnectivityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MultipeerConnectivityLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!MultipeerConnectivityLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MultipeerConnectivityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MultipeerConnectivityLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMCSessionClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMCSessionClass_block_invoke_cold_1();
    return __getMCNearbyServiceBrowserClass_block_invoke(v3);
  }

  return result;
}

Class __getMCNearbyServiceBrowserClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCNearbyServiceBrowser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCNearbyServiceBrowserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMCNearbyServiceBrowserClass_block_invoke_cold_1();
    return __getMCNearbyServiceAdvertiserClass_block_invoke(v3);
  }

  return result;
}

Class __getMCNearbyServiceAdvertiserClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCNearbyServiceAdvertiser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCNearbyServiceAdvertiserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMCNearbyServiceAdvertiserClass_block_invoke_cold_1();
    return __getMCErrorDomainSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMCErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MultipeerConnectivityLibrary();
  result = dlsym(v2, "MCErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C0ECBFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getkSBSLockStateNotifyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8135E38;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "kSBSLockStateNotifyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBSLockStateNotifyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void type metadata accessor for AXSSRemoteDesktopFeature()
{
  if (!qword_1EBE77298)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBE77298);
    }
  }
}

void *sub_1C0ECD6D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C0ECD6E4(uint64_t a1)
{
  v3 = sub_1C0F4F630();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5, v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing) = 1;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber) = 0;
  sub_1C0F4F600();
  v12 = *(v4 + 32);
  v12(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript, v9, v3);
  sub_1C0F4F600();
  v12(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript, v9, v3);
  v13 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask) = 0;
  v17 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
  v18 = sub_1C0F4F750();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory) = *sub_1C0F4FCD0();

  v19 = sub_1C0F50290();
  *(v19 + 16) = 10;
  *(v19 + 64) = 0;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  v20 = v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  *(v20 + 24) = 0;
  *v20 = v19;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(v20 + 32) = 10;
  v21 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  v23 = sub_1C0F4F830();
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking) = 0;
  v24 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine;
  *(v1 + v24) = [objc_allocWithZone(MEMORY[0x1E69583F8]) init];
  type metadata accessor for AXSpeechTranscriber.AudioBufferConverter();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter) = v25;
  v26 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes) = v21;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_bufferSize) = 4096;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup) = 0;
  sub_1C0F4F990();
  v28 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_logger;
  v29 = sub_1C0F4FD30();
  (*(*(v29 - 8) + 32))(v1 + v28, a1, v29);
  return v1;
}

uint64_t sub_1C0ECDBB8(_BYTE *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) == *a1)
  {
    LOBYTE(v7) = *a1;
    return sub_1C0ECEA80(&v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4, v5, v6);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }
}

uint64_t sub_1C0ECDCD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a4;
  v6 = v4;
  v8 = sub_1C0F4F630();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10, v11, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  swift_beginAccess();
  (*(v9 + 16))(v14, v4 + v15, v8);
  sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  v16 = sub_1C0F50190();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    swift_beginAccess();
    (*(v9 + 24))(v6 + v15, a1, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v19, v20, v21);
    v23[-2] = v6;
    v23[-1] = a1;
    v23[1] = v6;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  return (v17)(a1, v8);
}

uint64_t sub_1C0ECDF4C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8, v9, v10);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  return result;
}

uint64_t sub_1C0ECE0D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  swift_beginAccess();
  sub_1C0EED570(v1 + v9, v8, &qword_1EBE77370, &qword_1C0F56200);
  v10 = sub_1C0EEBF3C(v8, a1);
  sub_1C0EEFAA8(v8, &qword_1EBE77370, &qword_1C0F56200);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12, v13, v14);
    v16[-2] = v1;
    v16[-1] = a1;
    v16[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v9, &qword_1EBE77370, &qword_1C0F56200);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77370, &qword_1C0F56200);
}

uint64_t sub_1C0ECE2D4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6, v7, v8);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  return result;
}

uint64_t sub_1C0ECE3D8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3, v4, v5);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }
}

uint64_t sub_1C0ECE514(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation;
  swift_beginAccess();
  sub_1C0EED570(v1 + v9, v8, &qword_1EBE77390, &qword_1C0F56208);
  v10 = sub_1C0EEC25C(v8, a1);
  sub_1C0EEFAA8(v8, &qword_1EBE77390, &qword_1C0F56208);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12, v13, v14);
    v16[-2] = v1;
    v16[-1] = a1;
    v16[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v9, &qword_1EBE77390, &qword_1C0F56208);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77390, &qword_1C0F56208);
}

uint64_t sub_1C0ECE710(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes;
  if (sub_1C0EF70A0(*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes), a1))
  {
    *(v1 + v3) = a1;

    return sub_1C0EE3084();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6, v7, v8);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }
}

uint64_t sub_1C0ECE884(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  sub_1C0EED570(v1 + v9, v8, &qword_1EBE772B0, &qword_1C0F561E0);
  v10 = sub_1C0EEC580(v8, a1);
  sub_1C0EEFAA8(v8, &qword_1EBE772B0, &qword_1C0F561E0);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12, v13, v14);
    v16[-2] = v1;
    v16[-1] = a1;
    v16[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v9, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE772B0, &qword_1C0F561E0);
}

uint64_t sub_1C0ECEA80(unsigned __int8 *a1)
{
  v2 = v1;
  v36 = type metadata accessor for AXSpeechTranscriber.Event(0);
  MEMORY[0x1EEE9AC00](v36, v4, v5, v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11, v12, v13);
  v35 = &v33[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16, v17, v18);
  v20 = &v33[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22, v23, v24);
  v26 = &v33[-v25];
  v34 = *a1;
  swift_getKeyPath();
  v38 = v2;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v27 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  sub_1C0EED570(v2 + v27, v20, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v10 + 48))(v20, 1, v9))
  {
    sub_1C0EEFAA8(v20, &qword_1EBE772B0, &qword_1C0F561E0);
    v28 = 1;
  }

  else
  {
    v29 = v35;
    (*(v10 + 16))(v35, v20, v9);
    sub_1C0EEFAA8(v20, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_getKeyPath();
    v37 = v2;
    sub_1C0F4F960();

    v30 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
    *v8 = v34;
    v8[1] = v30;
    swift_storeEnumTagMultiPayload();
    sub_1C0F50360();
    (*(v10 + 8))(v29, v9);
    v28 = 0;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v31 - 8) + 56))(v26, v28, 1, v31);
  return sub_1C0EEFAA8(v26, &qword_1EBE77618, &qword_1C0F56BC8);
}

uint64_t sub_1C0ECEE50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a1 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
  return result;
}

uint64_t sub_1C0ECEF00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
  return result;
}

uint64_t sub_1C0ECEFD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (!*(v4 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9, v10, v11);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v7 = sub_1C0F503B0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v4 + v6) = a1;
}

void sub_1C0ECF180(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress;
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11, v12, v13);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C0EED60C(0, &qword_1EBE775F0, 0x1E696AE38);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C0F504F0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C0ECF32C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat;
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11, v12, v13);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C0EED60C(0, &qword_1EBE775E8, 0x1E6958418);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C0F504F0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1C0ECF53C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1C0F4F630();
  return (*(*(v7 - 8) + 16))(a3, v9 + v6, v7);
}

uint64_t sub_1C0ECF634@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v7 = *a3;
  swift_beginAccess();
  v8 = sub_1C0F4F630();
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1C0ECF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1C0F4F630();
  MEMORY[0x1EEE9AC00](v11, v12, v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1);
  return sub_1C0ECDCD8(v15, a5, a6, a7);
}

uint64_t sub_1C0ECF81C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1C0F4F630();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1C0ECF8D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5, v6, v7);
  v9 = &v12[-v8];
  sub_1C0EED570(a1, &v12[-v8], &qword_1EBE77310, &qword_1C0F561E8);
  v10 = *a2;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  v15 = v10;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();

  return sub_1C0EEFAA8(v9, &qword_1EBE77310, &qword_1C0F561E8);
}

uint64_t sub_1C0ECFA28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1C0EEFA0C(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1C0ECFACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v16 = &v18 - v15;
  sub_1C0EED570(a1, &v18 - v15, a5, a6);
  return a7(v16);
}

uint64_t sub_1C0ECFB78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  swift_beginAccess();
  sub_1C0EED570(v1 + v9, v8, &qword_1EBE77320, &qword_1C0F561F0);
  v10 = sub_1C0EEC8A4(v8, a1);
  sub_1C0EEFAA8(v8, &qword_1EBE77320, &qword_1C0F561F0);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12, v13, v14);
    v16[-2] = v1;
    v16[-1] = a1;
    v16[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v9, &qword_1EBE77320, &qword_1C0F561F0);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77320, &qword_1C0F561F0);
}

uint64_t sub_1C0ECFD9C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();
}

uint64_t sub_1C0ECFE40@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1C0ECFEF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (!*(v4 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9, v10, v11);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0);
  v7 = sub_1C0F503B0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v4 + v6) = a1;
}

uint64_t sub_1C0ED00B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
  swift_beginAccess();
  sub_1C0EED570(v1 + v9, v8, &qword_1EBE77340, &qword_1C0F561F8);
  v10 = sub_1C0EECBC8(v8, a1);
  sub_1C0EEFAA8(v8, &qword_1EBE77340, &qword_1C0F561F8);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12, v13, v14);
    v16[-2] = v1;
    v16[-1] = a1;
    v16[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v9, &qword_1EBE77340, &qword_1C0F561F8);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77340, &qword_1C0F561F8);
}

void *sub_1C0ED02C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1C0ED0368@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1C0ED042C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile;
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11, v12, v13);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C0EED60C(0, &qword_1EBE77638, 0x1E6958408);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C0F504F0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1C0ED05C4()
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  swift_beginAccess();
}

uint64_t sub_1C0ED0684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C0ED074C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();
}

uint64_t sub_1C0ED0808(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1C0ED0878@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v3 = v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  v4 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 24);
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother);
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1C0ED0948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  v5 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 24);
  v6 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 32);
  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother);
  *(a2 + 8) = *(v4 + 8);
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

uint64_t sub_1C0ED0A18(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();
}

double sub_1C0ED0B08()
{
  v6 = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  v5 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v1 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory;
  if (!*(*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) + 16))
  {
    return 0.0;
  }

  __C = 0.0;
  swift_getKeyPath();
  v5 = v0;
  sub_1C0F4F960();

  v2 = *(v0 + v1);
  swift_getKeyPath();
  v5 = v0;

  sub_1C0F4F960();

  vDSP_meamgv((v2 + 32), 1, &__C, *(*(v0 + v1) + 16));

  *&result = __C;
  return result;
}

uint64_t sub_1C0ED0CCC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  return *(v2 + *a2);
}

uint64_t sub_1C0ED0D6C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1C0ED0E20(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v2[33] = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for AXSpeechTranscriber.Event(0);
  v2[36] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8);
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for AXSpeechTranscriber.AudioBuffer(0);
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77640, &qword_1C0F56CE8);
  v2[45] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77648, &qword_1C0F56CF0);
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77650, &qword_1C0F56CF8);
  v2[49] = v6;
  v2[50] = *(v6 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = sub_1C0F502F0();
  v2[60] = sub_1C0F502E0();
  v7 = sub_1C0F502B0();
  v2[61] = v7;
  v2[62] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED11F8, v7, v8);
}

uint64_t sub_1C0ED11F8()
{
  v6 = v0;
  v5 = *MEMORY[0x1E69E9840];
  v4 = 1;
  sub_1C0ECDBB8(&v4);
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_1C0ED12D0;
  v2 = *(v0 + 456);

  return sub_1C0ED4140(v2);
}

uint64_t sub_1C0ED12D0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1C0ED39D4;
  }

  else
  {
    v5 = sub_1C0ED1438;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0ED1438()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  v0[65] = v3;
  v4 = *(v2 + *(v3 + 28));
  if (v4 == *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing))
  {
    *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing) = v4;
  }

  else
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = v4;
    v0[13] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  v6 = *(v0[31] + *(v3 + 44));
  v7 = *MEMORY[0x1E6958060];
  v8 = *MEMORY[0x1E6958150];
  v0[14] = 0;
  v9 = [v6 setCategory:v7 mode:v8 options:0 error:v0 + 14];
  v10 = v0[14];
  if (v9 && (v0[15] = 0, v11 = v10, v12 = [v6 setActive:1 withOptions:1 error:v0 + 15], v10 = v0[15], v12))
  {
    v13 = v10;
    v14 = swift_task_alloc();
    v0[66] = v14;
    *v14 = v0;
    v14[1] = sub_1C0ED1890;
    v15 = v0[55];
    v16 = v0[31];

    return sub_1C0ED4558(v16, v15);
  }

  else
  {
    v18 = v10;
    v19 = sub_1C0F4F6B0();

    swift_willThrow();
    v20 = v0[58];
    v21 = v0[56];
    *v21 = v19;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();

    sub_1C0EE9E60(v21, v20, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v22 = v0[34];
    sub_1C0EE9E60(v0[58], v22, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_storeEnumTagMultiPayload();
    sub_1C0ED696C(v22);
    sub_1C0EE9EC8(v22, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1C0ED1890()
{
  v2 = *v1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1C0ED3B9C;
  }

  else
  {
    v5 = sub_1C0ED19F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0ED19F8()
{
  v9 = v0;
  v1 = v0;
  v8 = *MEMORY[0x1E69E9840];
  v7 = 2;
  sub_1C0ECDBB8(&v7);
  sub_1C0ED4B7C();
  v2 = swift_task_alloc();
  v1[67] = v2;
  *v2 = v1;
  v2[1] = sub_1C0ED1AE0;
  v3 = v1[54];
  v4 = v1[48];
  v5 = v1[31];

  return sub_1C0ED4E28(v4, v5, v3);
}

uint64_t sub_1C0ED1AE0()
{
  v2 = *v1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1C0ED3D68;
  }

  else
  {
    v5 = sub_1C0ED1C48;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0ED1C48()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  sub_1C0F50380();
  (*(v2 + 8))(v1, v3);
  v0[68] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[69] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  v0[70] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory;
  v0[71] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking;
  v0[72] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  v4 = sub_1C0F502E0();
  v0[73] = v4;
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = sub_1C0ED1DC0;
  v6 = v0[49];
  v7 = v0[45];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1C0ED1DC0()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1C0ED1F30, v3, v2);
}

uint64_t sub_1C0ED1F30()
{
  v1 = v0[45];
  if ((*(v0[43] + 48))(v1, 1, v0[42]) == 1)
  {
    (*(v0[50] + 8))(v0[51], v0[49]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[44];
    sub_1C0EE9E60(v1, v4, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v5 = *v4;
    v0[75] = v5;
    v6 = swift_task_alloc();
    v0[76] = v6;
    *v6 = v0;
    v6[1] = sub_1C0ED218C;
    v7 = v0[53];

    return sub_1C0ED5CEC(v5, v7);
  }
}

uint64_t sub_1C0ED218C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1C0ED3F34;
  }

  else
  {
    v5 = sub_1C0ED22F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void *sub_1C0ED22F4()
{
  if (*(*(v0 + 248) + *(*(v0 + 520) + 32)) == 1)
  {
    v5 = [*(v0 + 600) floatChannelData];
    if (v5)
    {
      v6 = *v5;
LABEL_15:
      v28 = [*(v0 + 600) frameLength];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1C0EF72EC(v28, 0);
        memcpy(v30 + 4, v6, 4 * v29);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 624) = v30;
      v31 = swift_task_alloc();
      *(v0 + 632) = v31;
      *v31 = v0;
      v31[1] = sub_1C0ED2E20;

      return sub_1C0ED6554(v30);
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 128) = v9;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *(v0 + 136) = v9;
  swift_getKeyPath();
  v10 = (v9 + v8);
  sub_1C0F4F980();

  swift_beginAccess();
  v11 = *(*(v9 + v7) + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v85 = *(v0 + 560);
    v86 = *(v0 + 256);
    v10 = sub_1C0F2222C(0, *(v10 + 2) + 1, 1, v10);
    *(v86 + v85) = v10;
    goto LABEL_35;
  }

  v13 = *(v0 + 552);
  v14 = *(v0 + 256);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v14 + v13);
  if (*(v10 + 2) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *(v0 + 552);
    v17 = *(v0 + 256);
    sub_1C0EEB294(isUniquelyReferenced_nonNull_native, v12, 0);
    v10 = *(v17 + v16);
  }

  v18 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v19 = *(v18 - 8);
  v21 = *(v10 + 3);
  v20 = *(v10 + 4);
  v26 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v26)
  {
    goto LABEL_61;
  }

  v23 = v18;
  v24 = *(v19 + 80);
  if (v21 < 0)
  {
    if (v22 < 0)
    {
      v33 = *(v10 + 2);
      v26 = __OFADD__(v22, v33);
      v22 += v33;
      if (v26)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
    v25 = *(v10 + 2);
    v26 = __OFSUB__(v22, v25);
    v27 = v22 - v25;
    if (v27 < 0 == v26)
    {
      v22 = v27;
      if (v26)
      {
        __break(1u);
        goto LABEL_14;
      }
    }
  }

  v12 = *(v0 + 352) + *(*(v0 + 336) + 20);
  v88 = (v24 + 40) & ~v24;
  v34 = *(v19 + 72);
  sub_1C0EE9DA0(v12, &v10[v88 + v34 * v22], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v35 = *(v10 + 3);
  v26 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v26)
  {
    goto LABEL_62;
  }

  v87 = v24;
  v89 = v23;
  v37 = *(v0 + 552);
  v38 = *(v0 + 256);
  *(v10 + 3) = v36;
  swift_endAccess();
  *(v0 + 144) = v38;
  swift_getKeyPath();
  sub_1C0F4F970();

  swift_getKeyPath();
  *(v0 + 152) = v38;
  sub_1C0F4F960();

  if (*(*(v38 + v37) + 24) <= 20)
  {
    goto LABEL_33;
  }

  v39 = *(v0 + 552);
  v40 = *(v0 + 544);
  v1 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 224) = v1;
  sub_1C0F4F960();

  *(v0 + 232) = v1;
  swift_getKeyPath();
  v10 = (v1 + v40);
  sub_1C0F4F980();

  swift_beginAccess();
  if (!*(*(v1 + v39) + 24))
  {
    goto LABEL_63;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C0EEB504();
  }

  v10 = *(*(v0 + 256) + *(v0 + 552));
  sub_1C0EE9EC8(&v10[v88 + *(v10 + 4) * v34], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v41 = *(v10 + 4);
  v26 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (v26)
  {
    goto LABEL_64;
  }

  v43 = *(v10 + 3);
  if (v42 >= *(v10 + 2))
  {
    v42 = 0;
  }

  *(v10 + 4) = v42;
  if (__OFSUB__(v43, 1))
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v44 = *(v0 + 256);
  *(v10 + 3) = v43 - 1;
  swift_endAccess();
  *(v0 + 240) = v44;
  swift_getKeyPath();
  sub_1C0F4F970();

LABEL_33:
  v1 = v89;
  v2 = *(v12 + *(v89 + 28));
  v3 = 0.5;
  if (v2 >= 0.5)
  {
    goto LABEL_38;
  }

  v45 = *(v0 + 560);
  v46 = *(v0 + 256);
  v4 = *(v12 + *(v89 + 36));
  swift_getKeyPath();
  *(v0 + 200) = v46;
  sub_1C0F4F960();

  *(v0 + 208) = v46;
  swift_getKeyPath();
  sub_1C0F4F980();

  v10 = *(v46 + v45);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *(v46 + v45) = v10;
  if ((v47 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_35:
  v49 = *(v10 + 2);
  v48 = *(v10 + 3);
  if (v49 >= v48 >> 1)
  {
    v10 = sub_1C0F2222C((v48 > 1), v49 + 1, 1, v10);
  }

  v50 = *(v0 + 560);
  v51 = *(v0 + 256);
  *(v10 + 2) = v49 + 1;
  *&v10[4 * v49 + 32] = v4;
  *(v51 + v50) = v10;
  *(v0 + 216) = v51;
  swift_getKeyPath();
  sub_1C0F4F970();

LABEL_38:
  v52 = *(v0 + 568);
  v53 = *(v0 + 256);
  if (v2 <= v3)
  {
    v54 = 0;
    if ((*(v53 + v52) & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_42:
    v56 = *(v0 + 616);
    swift_getKeyPath();
    v57 = swift_task_alloc();
    *(v57 + 16) = v53;
    *(v57 + 24) = v54;
    *(v0 + 160) = v53;
    sub_1C0F4F950();

    goto LABEL_44;
  }

  v54 = vabds_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(sub_1C0ED0B08())), *(v12 + *(v1 + 40))) <= 5.0;
  v55 = *(v53 + v52) ^ v54;
  v53 = *(v0 + 256);
  if (v55)
  {
    goto LABEL_42;
  }

  v52 = *(v0 + 568);
LABEL_43:
  *(v53 + v52) = v54;
  v56 = *(v0 + 616);
LABEL_44:
  v58 = *(v0 + 568);
  v59 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 168) = v59;
  sub_1C0F4F960();

  if ((*(v59 + v58) & 1) == 0)
  {
    sub_1C0ED4B7C();
  }

  if (*(*(v0 + 248) + *(*(v0 + 520) + 40)) != 1)
  {
    goto LABEL_50;
  }

  v60 = *(v0 + 576);
  v61 = *(v0 + 320);
  v62 = *(v0 + 296);
  v63 = *(v0 + 304);
  v64 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 176) = v64;
  sub_1C0F4F960();

  sub_1C0EED570(v64 + v60, v61, &qword_1EBE772B0, &qword_1C0F561E0);
  if (!(*(v63 + 48))(v61, 1, v62))
  {
    v73 = *(v0 + 552);
    v74 = *(v0 + 320);
    v75 = *(v0 + 256);
    (*(*(v0 + 304) + 16))(*(v0 + 312), v74, *(v0 + 296));
    sub_1C0EEFAA8(v74, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_getKeyPath();
    *(v0 + 184) = v75;
    sub_1C0F4F960();

    v76 = *(v75 + v73);
    v77 = *(v76 + 24);
    if ((v77 & 0x8000000000000000) == 0)
    {

      if (v77)
      {
        v78 = sub_1C0F50290();
        *(v78 + 16) = v77;
      }

      else
      {
        v78 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 192) = 0;
      *(v0 + 88) = v78 + ((v87 + 32) & ~v87);
      *(v0 + 96) = v77;
      result = sub_1C0EEBB38((v76 + 16), v76 + v88, (v0 + 88), (v0 + 192));
      if (v56)
      {
        return result;
      }

      v79 = *(v0 + 192);
      if (v77 >= v79)
      {
        v81 = *(v0 + 304);
        v80 = *(v0 + 312);
        v83 = *(v0 + 288);
        v82 = *(v0 + 296);
        *(v78 + 16) = v79;

        v84 = sub_1C0ED0B08();
        *v83 = v78;
        *(v83 + 8) = LODWORD(v84);
        swift_storeEnumTagMultiPayload();
        sub_1C0F50360();
        (*(v81 + 8))(v80, v82);
        v65 = 0;
        goto LABEL_49;
      }

LABEL_69:
      __break(1u);
    }

    goto LABEL_67;
  }

  sub_1C0EEFAA8(*(v0 + 320), &qword_1EBE772B0, &qword_1C0F561E0);
  v65 = 1;
LABEL_49:
  v66 = *(v0 + 328);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v67 - 8) + 56))(v66, v65, 1, v67);
  sub_1C0EEFAA8(v66, &qword_1EBE77618, &qword_1C0F56BC8);
LABEL_50:
  sub_1C0EE9EC8(*(v0 + 352), type metadata accessor for AXSpeechTranscriber.AudioBuffer);
  v68 = sub_1C0F502E0();
  *(v0 + 584) = v68;
  v69 = swift_task_alloc();
  *(v0 + 592) = v69;
  *v69 = v0;
  v69[1] = sub_1C0ED1DC0;
  v70 = *(v0 + 392);
  v71 = *(v0 + 360);
  v72 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v71, v68, v72, v70);
}

uint64_t sub_1C0ED2E20(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 640) = a1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1C0ED2F98, v4, v3);
}

void *sub_1C0ED2F98()
{
  sub_1C0ECE710(v0[80]);
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[32];
  swift_getKeyPath();
  v0[16] = v6;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v0[17] = v6;
  swift_getKeyPath();
  v7 = (v6 + v5);
  sub_1C0F4F980();

  swift_beginAccess();
  v8 = *(*(v6 + v4) + 24);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = v0[69];
  v11 = v0[32];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v11 + v10);
  if (*(v7 + 2) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = v0[69];
    v14 = v0[32];
    sub_1C0EEB294(isUniquelyReferenced_nonNull_native, v9, 0);
    v7 = *(v14 + v13);
  }

  v15 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v16 = *(v15 - 8);
  v18 = *(v7 + 3);
  v17 = *(v7 + 4);
  v22 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v22)
  {
    goto LABEL_51;
  }

  v20 = *(v16 + 80);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v21 = *(v7 + 2);
    v22 = __OFSUB__(v19, v21);
    v23 = v19 - v21;
    if (v23 < 0 != v22)
    {
      goto LABEL_13;
    }

    v19 = v23;
    if (!v22)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v19 < 0)
  {
    v24 = *(v7 + 2);
    v22 = __OFADD__(v19, v24);
    v19 += v24;
    if (v22)
    {
      goto LABEL_58;
    }
  }

LABEL_13:
  v25 = v0[44] + *(v0[42] + 20);
  v83 = (v20 + 40) & ~v20;
  v84 = v15;
  v5 = *(v16 + 72);
  sub_1C0EE9DA0(v25, &v7[v83 + v5 * v19], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v26 = *(v7 + 3);
  v22 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v22)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v78 = v0[70];
    v79 = v0[32];
    v7 = sub_1C0F2222C(0, *(v7 + 2) + 1, 1, v7);
    *(v79 + v78) = v7;
    goto LABEL_25;
  }

  v85 = v25;
  v82 = v20;
  v28 = v0[69];
  v29 = v0[32];
  *(v7 + 3) = v27;
  swift_endAccess();
  v0[18] = v29;
  swift_getKeyPath();
  sub_1C0F4F970();

  swift_getKeyPath();
  v0[19] = v29;
  sub_1C0F4F960();

  if (*(*(v29 + v28) + 24) <= 20)
  {
    goto LABEL_23;
  }

  v81 = v5;
  v5 = (v0 + 8);
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[32];
  swift_getKeyPath();
  v0[28] = v32;
  sub_1C0F4F960();

  v0[29] = v32;
  swift_getKeyPath();
  v7 = (v32 + v31);
  sub_1C0F4F980();

  swift_beginAccess();
  if (!*(*(v32 + v30) + 24))
  {
    goto LABEL_53;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C0EEB504();
  }

  v7 = *(v0[32] + v0[69]);
  sub_1C0EE9EC8(&v7[v83 + *(v7 + 4) * v81], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v33 = *(v7 + 4);
  v22 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v22)
  {
    goto LABEL_54;
  }

  v35 = *(v7 + 3);
  if (v34 >= *(v7 + 2))
  {
    v34 = 0;
  }

  *(v7 + 4) = v34;
  if (__OFSUB__(v35, 1))
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v36 = v0[32];
  *(v7 + 3) = v35 - 1;
  swift_endAccess();
  v0[30] = v36;
  swift_getKeyPath();
  sub_1C0F4F970();

LABEL_23:
  v5 = v84;
  v37 = v85;
  v1 = *(v85 + *(v84 + 28));
  v2 = 0.5;
  if (v1 >= 0.5)
  {
    goto LABEL_28;
  }

  v38 = v0[70];
  v39 = v0[32];
  v3 = *(v85 + *(v84 + 36));
  swift_getKeyPath();
  v0[25] = v39;
  sub_1C0F4F960();

  v0[26] = v39;
  swift_getKeyPath();
  sub_1C0F4F980();

  v7 = *(v39 + v38);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v39 + v38) = v7;
  if ((v40 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_25:
  v42 = *(v7 + 2);
  v41 = *(v7 + 3);
  if (v42 >= v41 >> 1)
  {
    v7 = sub_1C0F2222C((v41 > 1), v42 + 1, 1, v7);
  }

  v43 = v0[70];
  v44 = v0[32];
  *(v7 + 2) = v42 + 1;
  *&v7[4 * v42 + 32] = v3;
  *(v44 + v43) = v7;
  v0[27] = v44;
  swift_getKeyPath();
  sub_1C0F4F970();

  v37 = v85;
LABEL_28:
  v45 = v0[71];
  v46 = v0[32];
  if (v1 <= v2)
  {
    v47 = 0;
    if ((*(v46 + v45) & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v49 = v0[77];
    swift_getKeyPath();
    v50 = swift_task_alloc();
    *(v50 + 16) = v46;
    *(v50 + 24) = v47;
    v0[20] = v46;
    sub_1C0F4F950();

    goto LABEL_34;
  }

  v47 = vabds_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(sub_1C0ED0B08())), *(v37 + *(v5 + 40))) <= 5.0;
  v48 = *(v46 + v45) ^ v47;
  v46 = v0[32];
  if (v48)
  {
    goto LABEL_32;
  }

  v45 = v0[71];
LABEL_33:
  *(v46 + v45) = v47;
  v49 = v0[77];
LABEL_34:
  v51 = v0[71];
  v52 = v0[32];
  swift_getKeyPath();
  v0[21] = v52;
  sub_1C0F4F960();

  if ((*(v52 + v51) & 1) == 0)
  {
    sub_1C0ED4B7C();
  }

  if (*(v0[31] + *(v0[65] + 40)) != 1)
  {
    goto LABEL_40;
  }

  v53 = v0[72];
  v54 = v0[40];
  v55 = v0[37];
  v56 = v0[38];
  v57 = v0[32];
  swift_getKeyPath();
  v0[22] = v57;
  sub_1C0F4F960();

  sub_1C0EED570(v57 + v53, v54, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v56 + 48))(v54, 1, v55))
  {
    sub_1C0EEFAA8(v0[40], &qword_1EBE772B0, &qword_1C0F561E0);
    v58 = 1;
LABEL_39:
    v59 = v0[41];
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
    (*(*(v60 - 8) + 56))(v59, v58, 1, v60);
    sub_1C0EEFAA8(v59, &qword_1EBE77618, &qword_1C0F56BC8);
LABEL_40:
    sub_1C0EE9EC8(v0[44], type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v61 = sub_1C0F502E0();
    v0[73] = v61;
    v62 = swift_task_alloc();
    v0[74] = v62;
    *v62 = v0;
    v62[1] = sub_1C0ED1DC0;
    v63 = v0[49];
    v64 = v0[45];
    v65 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v64, v61, v65, v63);
  }

  v66 = v0[69];
  v67 = v0[40];
  v68 = v0[32];
  (*(v0[38] + 16))(v0[39], v67, v0[37]);
  sub_1C0EEFAA8(v67, &qword_1EBE772B0, &qword_1C0F561E0);
  swift_getKeyPath();
  v0[23] = v68;
  sub_1C0F4F960();

  v69 = *(v68 + v66);
  v70 = *(v69 + 24);
  if (v70 < 0)
  {
    goto LABEL_57;
  }

  if (v70)
  {
    v71 = sub_1C0F50290();
    *(v71 + 16) = v70;
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC0];
  }

  v0[24] = 0;
  v0[11] = v71 + ((v82 + 32) & ~v82);
  v0[12] = v70;
  result = sub_1C0EEBB38((v69 + 16), v69 + v83, v0 + 11, v0 + 24);
  if (!v49)
  {
    v72 = v0[24];
    if (v70 >= v72)
    {
      v74 = v0[38];
      v73 = v0[39];
      v76 = v0[36];
      v75 = v0[37];
      *(v71 + 16) = v72;

      v77 = sub_1C0ED0B08();
      *v76 = v71;
      *(v76 + 8) = LODWORD(v77);
      swift_storeEnumTagMultiPayload();
      sub_1C0F50360();
      (*(v74 + 8))(v73, v75);
      v58 = 0;
      goto LABEL_39;
    }

LABEL_59:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0ED39D4()
{
  v1 = v0[57];
  v2 = v0[58];

  sub_1C0EE9E60(v1, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v3 = v0[34];
  sub_1C0EE9E60(v0[58], v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v3);
  sub_1C0EE9EC8(v3, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0ED3B9C()
{
  v1 = v0[58];
  v2 = v0[55];

  sub_1C0EE9E60(v2, v1, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v3 = v0[34];
  sub_1C0EE9E60(v0[58], v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v3);
  sub_1C0EE9EC8(v3, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0ED3D68()
{
  v1 = v0[58];
  v2 = v0[54];

  sub_1C0EE9E60(v2, v1, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v3 = v0[34];
  sub_1C0EE9E60(v0[58], v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v3);
  sub_1C0EE9EC8(v3, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0ED3F34()
{
  v1 = v0[58];
  v2 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v6 = v0[44];

  (*(v4 + 8))(v3, v5);
  sub_1C0EE9E60(v2, v1, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  sub_1C0EE9EC8(v6, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
  v7 = v0[34];
  sub_1C0EE9E60(v0[58], v7, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v7);
  sub_1C0EE9EC8(v7, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1C0ED4140(uint64_t a1)
{
  v1[18] = a1;
  sub_1C0F502F0();
  v1[19] = sub_1C0F502E0();
  v3 = sub_1C0F502B0();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED41D8, v3, v2);
}

uint64_t sub_1C0ED41D8()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69875A0];
  if ([v1 authorizationStatusForMediaType_] == 3)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_1C0ED4370;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777E0, &qword_1C0F56F50);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C0EE36A4;
    v0[13] = &block_descriptor_352;
    v0[14] = v5;
    [v1 requestAccessForMediaType:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C0ED4370()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1C0ED4478, v2, v1);
}

uint64_t sub_1C0ED4478()
{

  if ((*(v0 + 176) & 1) == 0)
  {
    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0ED4558(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  sub_1C0F502F0();
  v3[7] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED462C, v5, v4);
}

uint64_t sub_1C0ED462C()
{
  v1 = v0[2];
  if (*(v1 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 20)))
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1C0ED4900;
    v3 = v0[5];
    v4 = v0[2];

    return sub_1C0EDB6E0(v4, v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1C0ED474C;
    v7 = v0[6];
    v8 = v0[2];

    return sub_1C0ED9C14(v8, v7);
  }
}

uint64_t sub_1C0ED474C()
{
  v2 = *v1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1C0ED4A3C;
  }

  else
  {
    v5 = sub_1C0ED4888;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0ED4888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0ED4900()
{
  v2 = *v1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1C0ED4ADC;
  }

  else
  {
    v5 = sub_1C0EEFCEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0ED4A3C()
{
  v1 = v0[6];
  v2 = v0[4];

  sub_1C0EE9E60(v1, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0ED4ADC()
{
  v2 = v0[4];
  v1 = v0[5];

  sub_1C0EE9E60(v1, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0ED4B7C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4, v5);
  v7 = &v15 - v6;
  swift_getKeyPath();
  v16 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask))
  {

    sub_1C0F503C0();
  }

  swift_getKeyPath();
  v16 = v0;
  sub_1C0F4F960();

  if (*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing) == 1)
  {
    v9 = sub_1C0F50320();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    sub_1C0F502F0();

    v11 = sub_1C0F502E0();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    v12[5] = v1;

    v14 = sub_1C0ED943C(0, 0, v7, &unk_1C0F56E20, v12);
    return sub_1C0ECEFD8(v14, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask, &unk_1C0F564E8, sub_1C0EECF34);
  }

  return result;
}

uint64_t sub_1C0ED4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[28] = a3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77668, &qword_1C0F56D88);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v4[33] = swift_task_alloc();
  v6 = sub_1C0F4F6C0();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v7 = sub_1C0F4F830();
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = sub_1C0F4F750();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  sub_1C0F502F0();
  v4[47] = sub_1C0F502E0();
  v10 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0ED5100, v10, v9);
}

uint64_t sub_1C0ED5100()
{
  v1 = v0[26];
  v2 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  v3 = v2;
  if (*(v1 + *(v2 + 36)) == 1)
  {
    v60 = v2;
    v63 = v0[46];
    v64 = v0[45];
    v4 = v0[42];
    v5 = v0[43];
    v6 = v0[40];
    v66 = v0[41];
    v7 = v0[38];
    v8 = v0[35];
    v9 = v0[36];
    v61 = v0[37];
    v62 = v0[34];
    v10 = v0[27];
    v11 = [*(v10 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine) inputNode];
    v12 = [v11 inputFormatForBus_];

    v13 = [v12 settings];
    aBlock = sub_1C0F50160();

    sub_1C0F4F6F0();
    sub_1C0F505A0();
    v0[14] = 0;
    v0[15] = 0xE000000000000000;
    MEMORY[0x1C68E9A50](0xD000000000000012, 0x80000001C0F66590);
    sub_1C0F4F820();
    sub_1C0F4F7D0();
    (*(v7 + 8))(v6, v61);
    sub_1C0F50400();
    MEMORY[0x1C68E9A50](1986098990, 0xE400000000000000);
    v14 = v0[15];
    v0[16] = v0[14];
    v0[17] = v14;
    (*(v8 + 104))(v9, *MEMORY[0x1E6968F70], v62);
    sub_1C0EED51C();
    sub_1C0F4F740();
    (*(v8 + 8))(v9, v62);

    (*(v4 + 8))(v5, v66);
    (*(v4 + 56))(v63, 0, 1, v66);
    sub_1C0ED00B0(v63);
    swift_getKeyPath();
    v0[23] = v10;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F960();

    v15 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
    swift_beginAccess();
    sub_1C0EED570(v10 + v15, v64, &qword_1EBE77340, &qword_1C0F561F8);
    result = (*(v4 + 48))(v64, 1, v66);
    if (result == 1)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v17 = v0[45];
    v18 = objc_allocWithZone(MEMORY[0x1E6958408]);

    v19 = sub_1C0EE9114(v17, aBlock);

    sub_1C0ED042C(v19);
    v3 = v60;
  }

  else
  {
  }

  v20 = v0[26];
  v67 = *(v0[27] + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine);
  v21 = [v67 inputNode];
  [v21 removeTapOnBus_];

  if (*(v20 + *(v3 + 32)) == 1)
  {
    Setup = vDSP_DFT_zop_CreateSetup(0, 0x1000uLL, vDSP_DFT_FORWARD);
    sub_1C0ED9AF8(Setup);
  }

  v23 = v0[27];
  v24 = *sub_1C0F4FCD0();
  swift_getKeyPath();
  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v0[18] = v23;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);

  sub_1C0F4F950();

  swift_getKeyPath();
  v0[19] = v23;
  sub_1C0F4F960();

  v0[20] = v23;
  swift_getKeyPath();
  sub_1C0F4F980();

  v26 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(*(v23 + v26) + 16) < 20 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C0EEB294(isUniquelyReferenced_nonNull_native, 20, 1);
  }

  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[27];
  swift_endAccess();
  v0[21] = v30;
  swift_getKeyPath();
  sub_1C0F4F970();

  v31 = mach_absolute_time();
  sub_1C0F4F820();
  [objc_opt_self() secondsForHostTime_];
  v33 = v32;
  sub_1C0F4F810();
  v35 = v34 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v36 = swift_allocBox();
  (*(v28 + 56))(v37, 1, 1, v29);
  v38 = [v67 inputNode];
  v39 = [v67 inputNode];
  v40 = [v39 outputFormatForBus_];

  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v35;
  *(v42 + 24) = v41;
  *(v42 + 32) = v36;
  v0[6] = sub_1C0EED508;
  v0[7] = v42;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C0EE4C80;
  v0[5] = &block_descriptor_256;
  v43 = _Block_copy(v0 + 2);

  [v38 installTapOnBus:0 bufferSize:4096 format:v40 block:v43];
  _Block_release(v43);

  [v67 prepare];
  v0[22] = 0;
  v44 = [v67 startAndReturnError_];
  v45 = v0[22];
  if (v44)
  {
    v46 = v0[39];
    v47 = v0[38];
    v59 = v0[37];
    v49 = v0[30];
    v48 = v0[31];
    v50 = v0[29];
    type metadata accessor for AXSpeechTranscriber.AudioBuffer(0);
    (*(v49 + 104))(v48, *MEMORY[0x1E69E8650], v50);
    v51 = v45;
    sub_1C0F503A0();
    (*(v47 + 8))(v46, v59);
  }

  else
  {
    v54 = v0[38];
    v53 = v0[39];
    v55 = v0[37];
    v56 = v0[28];
    v57 = v45;
    v58 = sub_1C0F4F6B0();

    swift_willThrow();
    *v56 = v58;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
    (*(v54 + 8))(v53, v55);
  }

  v52 = v0[1];

  return v52();
}

uint64_t sub_1C0ED5CEC(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v3[12] = a2;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77660, &qword_1C0F56D58);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_1C0F4FF20();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  sub_1C0F502F0();
  v3[26] = sub_1C0F502E0();
  v8 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0ED5F30, v8, v7);
}

uint64_t sub_1C0ED5F30()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[11];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v5 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  swift_beginAccess();
  sub_1C0EED570(v4 + v5, v3, &qword_1EBE77320, &qword_1C0F561F0);
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v37 = v6;
    sub_1C0EEFAA8(v0[22], &qword_1EBE77320, &qword_1C0F561F0);
LABEL_6:
    v18 = v0[23];
    v19 = v0[21];
    v20 = v0[11];
    sub_1C0F505A0();
    MEMORY[0x1C68E9A50](0xD000000000000029, 0x80000001C0F664A0);
    swift_getKeyPath();
    v0[6] = v20;
    sub_1C0F4F960();

    sub_1C0EED570(v4 + v5, v19, &qword_1EBE77320, &qword_1C0F561F0);
    v21 = v37(v19, 1, v18);
    sub_1C0EEFAA8(v19, &qword_1EBE77320, &qword_1C0F561F0);
    if (v21 == 1)
    {
      v22 = 7104878;
    }

    else
    {
      v22 = 0x6C696E2D6E6F6ELL;
    }

    if (v21 == 1)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    MEMORY[0x1C68E9A50](v22, v23);

    MEMORY[0x1C68E9A50](0xD000000000000010, 0x80000001C0F664D0);
    swift_getKeyPath();
    v0[7] = v20;
    sub_1C0F4F960();

    if (*(v20 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat))
    {
      v24 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v24 = 7104878;
    }

    if (*(v20 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat))
    {
      v25 = 0xE700000000000000;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    MEMORY[0x1C68E9A50](v24, v25);

    return sub_1C0F50620();
  }

  v7 = v0[11];
  (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
  swift_getKeyPath();
  v0[8] = v7;
  sub_1C0F4F960();

  v8 = *(v7 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat);
  if (!v8)
  {
    v37 = v6;
    (*(v0[24] + 8))(v0[25], v0[23]);
    goto LABEL_6;
  }

  v9 = v0[20];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v8;

  swift_getKeyPath();
  v0[9] = v10;
  sub_1C0F4F960();

  v13 = sub_1C0EE16C0(v11, v12, v9);
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v17 = v0[19];
  v27 = v13;
  v34 = v12;
  v29 = v0[16];
  v28 = v0[17];
  v33 = v0[15];
  v36 = v0[18];
  v30 = v0[14];
  v35 = v0[13];

  v31 = v27;
  sub_1C0F4FF10();
  (*(v28 + 16))(v36, v17, v29);
  sub_1C0F50360();

  (*(v30 + 8))(v33, v35);
  (*(v28 + 8))(v17, v29);
  (*(v14 + 8))(v15, v16);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1C0ED6554(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1C0F502F0();
  v2[6] = sub_1C0F502E0();
  v4 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0ED6620, v4, v3);
}

uint64_t sub_1C0ED6620()
{
  v1 = *(v0 + 40);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  if (v2)
  {

    v3 = sub_1C0F50290();
    *(v3 + 16) = 4096;
    bzero((v3 + 32), 0x4000uLL);
    v4 = sub_1C0F50290();
    *(v4 + 16) = 4096;
    v5 = (v4 + 32);
    bzero((v4 + 32), 0x4000uLL);
    v6 = sub_1C0F50290();
    *(v6 + 16) = 4096;
    v7 = (v6 + 32);
    bzero((v6 + 32), 0x4000uLL);
    v8 = sub_1C0F50290();
    *(v8 + 16) = 200;
    bzero((v8 + 32), 0x320uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 32);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1C0EF9584(*(v0 + 32));
    }

    vDSP_DFT_Execute(v2, v10 + 8, (v3 + 32), v5, v7);
    *(v0 + 16) = v5;
    *(v0 + 24) = v7;
    vDSP_zvabs((v0 + 16), 1, (v8 + 32), 1, 0xC8uLL);

    v11 = *(v8 + 16);
    if (v11)
    {
      v19 = MEMORY[0x1E69E7CC0];
      sub_1C0EF8E8C(0, v11, 0);
      v12 = v19;
      v13 = *(v19 + 16);
      v14 = 32;
      do
      {
        if (*(v8 + v14) <= 100.0)
        {
          v15 = *(v8 + v14);
        }

        else
        {
          v15 = 100.0;
        }

        v16 = *(v19 + 24);
        if (v13 >= v16 >> 1)
        {
          sub_1C0EF8E8C((v16 > 1), v13 + 1, 1);
        }

        *(v19 + 16) = v13 + 1;
        *(v19 + 4 * v13 + 32) = v15;
        v14 += 4;
        ++v13;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = sub_1C0F50290();
    *(v12 + 16) = 200;
    bzero((v12 + 32), 0x320uLL);
  }

  v17 = *(v0 + 8);

  return v17(v12);
}

uint64_t sub_1C0ED696C(uint64_t a1)
{
  v2 = v1;
  v143 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v151 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9, v10, v11);
  v150 = &v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14, v15, v16);
  v149 = &v136 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19, v20, v21);
  v148 = &v136 - v22;
  v23 = sub_1C0F4F630();
  MEMORY[0x1EEE9AC00](v23 - 8, v24, v25, v26);
  v147 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for AXSpeechTranscriber.Event(0);
  MEMORY[0x1EEE9AC00](v142, v28, v29, v30);
  v140 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v32, v33, v34);
  v138 = &v136 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v40 = MEMORY[0x1EEE9AC00](v36 - 8, v37, v38, v39);
  v146 = &v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42, v43, v44);
  v144 = &v136 - v45;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v46 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v47, v48, v49);
  v137 = &v136 - v50;
  [*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine) stop];
  swift_getKeyPath();
  v153[0] = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v51 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile;
  [*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile) close];
  if (*(v2 + v51))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v53, v54, v55);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v153[0] = v2;
    sub_1C0F4F950();
  }

  sub_1C0ECE710(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  v153[0] = v2;
  sub_1C0F4F960();

  v56 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup;
  v57 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  if (v57)
  {
    vDSP_DFT_DestroySetup(v57);
    if (*(v2 + v56))
    {
      v58 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v58, v59, v60, v61);
      *(&v136 - 2) = v2;
      *(&v136 - 1) = 0;
      v153[0] = v2;
      sub_1C0F4F950();
    }
  }

  v62 = *sub_1C0F4FCD0();
  v63 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v63, v64, v65, v66);
  *(&v136 - 2) = v2;
  *(&v136 - 1) = v62;
  v153[0] = v2;

  sub_1C0F4F950();

  LOBYTE(v153[0]) = 0;
  sub_1C0ECDBB8(v153);
  swift_getKeyPath();
  v153[0] = v2;
  sub_1C0F4F960();

  v67 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  v68 = v2 + v67;
  v69 = v144;
  sub_1C0EED570(v68, v144, &qword_1EBE772B0, &qword_1C0F561E0);
  v70 = v145;
  if ((*(v46 + 48))(v69, 1, v145) == 1)
  {
    sub_1C0EEFAA8(v69, &qword_1EBE772B0, &qword_1C0F561E0);
  }

  else
  {
    v71 = v137;
    (*(v46 + 32))(v137, v69, v70);
    sub_1C0EE9DA0(v143, v140, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
    swift_storeEnumTagMultiPayload();
    v72 = v138;
    sub_1C0F50360();
    sub_1C0F50370();
    (*(v139 + 8))(v72, v141);
    (*(v46 + 8))(v71, v70);
  }

  v73 = v146;
  (*(v46 + 56))(v146, 1, 1, v70);
  sub_1C0ECE884(v73);
  swift_getKeyPath();
  v152 = v2;
  sub_1C0F4F960();

  v74 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask) && (, sub_1C0F503C0(), , *(v2 + v74)))
  {
    v75 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v75, v76, v77, v78);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v74) = 0;
  }

  swift_getKeyPath();
  v152 = v2;
  sub_1C0F4F960();

  v79 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask) && (, sub_1C0F503C0(), , *(v2 + v79)))
  {
    v80 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v80, v81, v82, v83);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v79) = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress))
  {
    v84 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v84, v85, v86, v87);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat))
  {
    v88 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v88, v89, v90, v91);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  v92 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v92, v93, v94, v95);
  *(&v136 - 2) = v2;
  *(&v136 - 1) = 0;
  v152 = v2;
  sub_1C0F4F950();

  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96, v97, v98, v99);
  *(&v136 - 2) = v2;
  *(&v136 - 1) = 0;
  v152 = v2;
  sub_1C0F4F950();

  v100 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v100, v101, v102, v103);
  *(&v136 - 2) = v2;
  *(&v136 - 1) = 0;
  v152 = v2;
  sub_1C0F4F950();

  v104 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v104, v105, v106, v107);
  *(&v136 - 2) = v2;
  *(&v136 - 1) = 0;
  v152 = v2;
  sub_1C0F4F950();

  v108 = v147;
  sub_1C0F4F600();
  sub_1C0ECDCD8(v108, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript, &unk_1C0F563F0, sub_1C0EED020);
  sub_1C0F4F600();
  sub_1C0ECDCD8(v108, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript, &unk_1C0F56418, sub_1C0EECFFC);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  v110 = v148;
  (*(*(v109 - 8) + 56))(v148, 1, 1, v109);
  v111 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v111, v112, v113, v114);
  *(&v136 - 2) = v2;
  *(&v136 - 1) = v110;
  v152 = v2;
  sub_1C0F4F950();

  sub_1C0EEFAA8(v110, &qword_1EBE77310, &qword_1C0F561E8);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v116 = v149;
  (*(*(v115 - 8) + 56))(v149, 1, 1, v115);
  sub_1C0ECFB78(v116);
  swift_getKeyPath();
  v152 = v2;
  sub_1C0F4F960();

  v117 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask) && (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0), sub_1C0F503C0(), , *(v2 + v117)))
  {
    v118 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v118, v119, v120, v121);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v117) = 0;
  }

  swift_getKeyPath();
  v152 = v2;
  sub_1C0F4F960();

  v122 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask) && (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0), sub_1C0F503C0(), , *(v2 + v122)))
  {
    v123 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v123, v124, v125, v126);
    *(&v136 - 2) = v2;
    *(&v136 - 1) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v122) = 0;
  }

  v127 = sub_1C0F4F750();
  v128 = v150;
  (*(*(v127 - 8) + 56))(v150, 1, 1, v127);
  sub_1C0ED00B0(v128);
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking))
  {
    v129 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v129, v130, v131, v132);
    *(&v136 - 2) = v2;
    *(&v136 - 8) = 0;
    v152 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking) = 0;
  }

  v133 = sub_1C0F4F830();
  v134 = v151;
  (*(*(v133 - 8) + 56))(v151, 1, 1, v133);
  return sub_1C0ECE0D8(v134);
}

uint64_t sub_1C0ED7AE0(_BYTE *a1)
{
  *(v2 + 128) = v1;
  v4 = sub_1C0F4F620();
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v5 = sub_1C0F4F5F0();
  *(v2 + 168) = v5;
  *(v2 + 176) = *(v5 - 8);
  *(v2 + 184) = swift_task_alloc();
  v6 = sub_1C0F4F630();
  *(v2 + 192) = v6;
  *(v2 + 200) = *(v6 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  *(v2 + 240) = v7;
  *(v2 + 248) = *(v7 - 8);
  *(v2 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 352) = *a1;
  sub_1C0F502F0();
  *(v2 + 288) = sub_1C0F502E0();
  v9 = sub_1C0F502B0();
  *(v2 + 296) = v9;
  *(v2 + 304) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED7DB0, v9, v8);
}

uint64_t sub_1C0ED7DB0()
{
  v42 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v39 = *(v0 + 240);
  v3 = *(v0 + 128);
  v41 = 3;
  sub_1C0ECDBB8(&v41);
  [*(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine) stop];
  swift_getKeyPath();
  *(v0 + 88) = v3;
  *(v0 + 312) = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  *(v0 + 320) = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  swift_beginAccess();
  sub_1C0EED570(v3 + v4, v1, &qword_1EBE77320, &qword_1C0F561F0);
  v5 = (*(v2 + 48))(v1, 1, v39);
  v6 = *(v0 + 264);
  if (v5)
  {
    sub_1C0EEFAA8(*(v0 + 264), &qword_1EBE77320, &qword_1C0F561F0);
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);
    (*(v8 + 16))(v7, *(v0 + 264), v9);
    sub_1C0EEFAA8(v6, &qword_1EBE77320, &qword_1C0F561F0);
    sub_1C0F50370();
    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 128);
  swift_getKeyPath();
  *(v0 + 96) = v10;
  sub_1C0F4F960();

  v11 = *(v10 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);
  *(v0 + 328) = v11;
  if (v11)
  {

    v12 = swift_task_alloc();
    *(v0 + 336) = v12;
    *v12 = v0;
    v12[1] = sub_1C0ED841C;

    return MEMORY[0x1EEDD8E38]();
  }

  else
  {

    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);
    v32 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v36 = *(v0 + 152);
    v38 = *(v0 + 144);
    v40 = *(v0 + 176);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    swift_getKeyPath();
    *(v0 + 104) = v17;
    sub_1C0F4F960();

    v18 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
    swift_beginAccess();
    v31 = v17;
    v29 = v18;
    v30 = *(v14 + 16);
    v30(v13, v17 + v18, v15);
    sub_1C0F4F5E0();
    (*(v14 + 8))(v13, v15);
    sub_1C0EE9CFC(&qword_1EBE77608, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
    sub_1C0F50420();
    sub_1C0F50430();
    sub_1C0EE9CFC(&qword_1EBE77610, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
    LOBYTE(v18) = sub_1C0F50190();
    v19 = *(v38 + 8);
    v19(v36, v16);
    v19(v33, v16);
    (*(v40 + 8))(v32, v34);
    if (v18)
    {
      **(v0 + 232) = *(v0 + 352);
    }

    else
    {
      v20 = *(v0 + 352);
      v21 = *(v0 + 232);
      v35 = *(v0 + 192);
      v22 = *(v0 + 128);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77430, &qword_1C0F56560);
      v24 = *(v23 + 48);
      v37 = *(v23 + 64);
      swift_getKeyPath();
      *(v0 + 112) = v22;
      sub_1C0F4F960();

      v30(v21, v31 + v29, v35);
      *(v21 + v24) = v20;
      swift_getKeyPath();
      *(v0 + 120) = v22;
      sub_1C0F4F960();

      v25 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
      swift_beginAccess();
      sub_1C0EED570(v22 + v25, v21 + v37, &qword_1EBE77340, &qword_1C0F561F8);
    }

    swift_storeEnumTagMultiPayload();
    v26 = *(v0 + 232);
    sub_1C0ED696C(v26);
    sub_1C0EE9EC8(v26, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1C0ED841C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1C0ED8940;
  }

  else
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1C0ED8538;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C0ED8538()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v19 = *(v0 + 184);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(v0 + 152);
  v24 = *(v0 + 144);
  v26 = *(v0 + 176);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  swift_getKeyPath();
  *(v0 + 104) = v5;
  sub_1C0F4F960();

  v6 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
  swift_beginAccess();
  v18 = v6;
  v17 = *(v1 + 16);
  v17(v2, v5 + v6, v3);
  sub_1C0F4F5E0();
  (*(v1 + 8))(v2, v3);
  sub_1C0EE9CFC(&qword_1EBE77608, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
  sub_1C0F50420();
  sub_1C0F50430();
  sub_1C0EE9CFC(&qword_1EBE77610, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  LOBYTE(v6) = sub_1C0F50190();
  v7 = *(v24 + 8);
  v7(v22, v4);
  v7(v20, v4);
  (*(v26 + 8))(v19, v21);
  if (v6)
  {
    **(v0 + 232) = *(v0 + 352);
  }

  else
  {
    v23 = *(v0 + 352);
    v8 = *(v0 + 232);
    v9 = *(v0 + 192);
    v10 = *(v0 + 128);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77430, &qword_1C0F56560);
    v12 = *(v11 + 48);
    v25 = *(v11 + 64);
    swift_getKeyPath();
    *(v0 + 112) = v10;
    sub_1C0F4F960();

    v17(v8, v5 + v18, v9);
    *(v8 + v12) = v23;
    swift_getKeyPath();
    *(v0 + 120) = v10;
    sub_1C0F4F960();

    v13 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
    swift_beginAccess();
    sub_1C0EED570(v10 + v13, v8 + v25, &qword_1EBE77340, &qword_1C0F561F8);
  }

  swift_storeEnumTagMultiPayload();
  v14 = *(v0 + 232);
  sub_1C0ED696C(v14);
  sub_1C0EE9EC8(v14, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C0ED8940()
{
  v1 = v0[43];
  v2 = v0[35];
  v3 = v0[28];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  sub_1C0EE9DA0(v2, v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v3);
  sub_1C0EE9EC8(v3, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  sub_1C0EE9EC8(v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0ED8AF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4, v5);
  v7 = &v26 - v6;
  v8 = sub_1C0F4F830();
  v9 = *(v8 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8, v10, v11, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16, v17, v18);
  v20 = &v26 - v19;
  swift_getKeyPath();
  v27 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v21 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  swift_beginAccess();
  sub_1C0EED570(v1 + v21, v7, &qword_1EBE77370, &qword_1C0F56200);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C0EEFAA8(v7, &qword_1EBE77370, &qword_1C0F56200);
  }

  else
  {
    (*(v9 + 32))(v20, v7, v8);
    sub_1C0F4F820();
    sub_1C0F4F7E0();
    v23 = v22;
    v24 = *(v9 + 8);
    v24(v15, v8);
    v24(v20, v8);
    if (v23 < 0.5)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  v26 = v1;
  sub_1C0F4F960();

  return *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking);
}

uint64_t sub_1C0ED8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1C0F505F0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1C0F502F0();
  v4[9] = sub_1C0F502E0();
  v7 = sub_1C0F502B0();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED8EC0, v7, v6);
}

uint64_t sub_1C0ED8EC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = sub_1C0F508C0();
    v4 = v3;
    sub_1C0F507F0();
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1C0ED9008;

    return sub_1C0EE929C(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1C0ED9008()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C0EEFCE4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C0ED919C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C0ED919C()
{
  if (sub_1C0F503D0())
  {

LABEL_8:

    v3 = *(v0 + 8);

    return v3();
  }

  if ((sub_1C0ED8AF8() & 1) == 0)
  {

    sub_1C0ED4B7C();
    goto LABEL_8;
  }

  *(v0 + 120) = 0;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1C0ED92A8;

  return sub_1C0ED7AE0((v0 + 120));
}

uint64_t sub_1C0ED92A8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1C0ED93C8, v3, v2);
}

uint64_t sub_1C0ED93C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0ED943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11, v12);
  v14 = v28 - v13;
  sub_1C0EED570(a3, v28 - v13, &qword_1EBE773B0, &qword_1C0F57F40);
  v15 = sub_1C0F50320();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1C0EEFAA8(v14, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1C0F502B0();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1C0F501E0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1C0ED973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11, v12);
  v14 = v28 - v13;
  sub_1C0EED570(a3, v28 - v13, &qword_1EBE773B0, &qword_1C0F57F40);
  v15 = sub_1C0F50320();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1C0EEFAA8(v14, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1C0F502B0();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1C0F501E0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B8, &qword_1C0F56B98);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B8, &qword_1C0F56B98);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1C0ED9A50()
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  return *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
}

uint64_t sub_1C0ED9AF8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  if (v2)
  {
    if (v2 == result)
    {
LABEL_3:
      *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup) = result;
      return result;
    }
  }

  else if (!result)
  {
    goto LABEL_3;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v4, v5, v6);
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();
}

uint64_t sub_1C0ED9C14(uint64_t a1, uint64_t a2)
{
  v3[19] = v2;
  v3[20] = a2;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776E8, &qword_1C0F56E40);
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776F0, &qword_1C0F56E48);
  v3[37] = swift_task_alloc();
  v7 = sub_1C0F4FEC0();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  sub_1C0F4FEB0();
  v3[41] = swift_task_alloc();
  v8 = sub_1C0F4F940();
  v3[42] = v8;
  v3[43] = *(v8 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = sub_1C0F502F0();
  v3[46] = sub_1C0F502E0();
  v10 = sub_1C0F502B0();
  v3[47] = v10;
  v3[48] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED9FF8, v10, v9);
}

uint64_t sub_1C0ED9FF8()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v37 = v0[40];
  v38 = v0[38];
  v6 = v0[18];
  v5 = v0[19];
  sub_1C0F4FE10();
  (*(v2 + 16))(v1, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776F8, &qword_1C0F56E50);
  v7 = sub_1C0F4FDC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0F561C0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E697B898], v7);
  v13(v12 + v9, *MEMORY[0x1E697B890], v7);
  sub_1C0EED764(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = sub_1C0F4FE00();
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v5;
  *(v15 + 24) = v14;
  v0[49] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[5] = v5;
  v36 = v5;
  v0[50] = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();

  (*(v4 + 104))(v37, *MEMORY[0x1E697B900], v38);
  sub_1C0F4FEA0();
  sub_1C0F4FF00();
  swift_allocObject();
  v16 = sub_1C0F4FED0();
  swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v5;
  *(v17 + 24) = v16;
  v0[6] = v5;
  sub_1C0F4F950();

  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[7] = v5;
  sub_1C0F4F960();

  v20 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber;
  v0[52] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber;
  v21 = *(v5 + v20);
  if (!v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  v39 = v20;
  v22 = v0[19];
  v23 = sub_1C0EE9CFC(&qword_1EBE77708, MEMORY[0x1E697B8E0], MEMORY[0x1E697B8D8]);
  v0[53] = v23;
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  swift_getKeyPath();
  v0[8] = v22;

  sub_1C0F4F960();

  v24 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v0[54] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v25 = *(v22 + v24);
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = v0[37];
  v27 = v0[19];
  v0[55] = sub_1C0F4FE90();
  v28 = sub_1C0EE9CFC(&qword_1EBE77710, MEMORY[0x1E697B918], MEMORY[0x1E697B910]);
  v0[56] = v28;
  *(v18 + 48) = v25;
  *(v18 + 56) = v28;
  v29 = sub_1C0F4FE70();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);

  v30 = sub_1C0F4FE80();
  swift_getKeyPath();
  v31 = swift_task_alloc();
  *(v31 + 16) = v27;
  *(v31 + 24) = v30;
  v0[9] = v27;
  sub_1C0F4F950();

  swift_getKeyPath();
  v0[10] = v27;
  sub_1C0F4F960();

  v32 = *(v36 + v39);
  v0[57] = v32;
  if (!v32)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v33 = swift_task_alloc();
  v0[58] = v33;
  *v33 = v0;
  v33[1] = sub_1C0EDA670;
  v34 = v0[36];
  v35 = v0[18];

  return sub_1C0EDCE6C(v32, v35, v34);
}

uint64_t sub_1C0EDA670()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_1C0EDB408;
  }

  else
  {
    v5 = sub_1C0EDA7C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EDA7C4()
{
  v1 = v0[52];
  v2 = v0[19];
  v3 = swift_allocObject();
  v0[60] = v3;
  *(v3 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[11] = v2;
  sub_1C0F4F960();

  v5 = *(v2 + v1);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[19];
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_getKeyPath();
  v0[12] = v8;

  sub_1C0F4F960();

  v4 = *(v8 + v7);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEDD8E30](v4);
  }

  v9 = v0[56];
  *(v3 + 48) = v4;
  *(v3 + 56) = v9;

  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_1C0EDA944;
  v4 = v3;

  return MEMORY[0x1EEDD8E30](v4);
}

uint64_t sub_1C0EDA944(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 496) = a1;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDAA90, v4, v3);
}

uint64_t sub_1C0EDAA90()
{
  v1 = *(v0 + 272);
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v38 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v39 = *(v0 + 184);
  v37 = *(v0 + 176);
  v8 = *(v0 + 152);
  sub_1C0ECF32C(*(v0 + 496));
  sub_1C0F4FF20();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1C0F50330();
  (*(v6 + 8))(v4, v5);
  v36 = *(v41 + 32);
  v36(v7, v1, v40);
  (*(v41 + 56))(v7, 0, 1, v40);
  (*(v3 + 32))(v37, v2, v38);
  (*(v3 + 56))(v37, 0, 1, v38);
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v0 + 104) = v8;
  sub_1C0F4F950();

  sub_1C0EEFAA8(v7, &qword_1EBE77310, &qword_1C0F561E8);
  sub_1C0ECFB78(v37);
  swift_getKeyPath();
  *(v0 + 112) = v8;
  sub_1C0F4F960();

  v10 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
  swift_beginAccess();
  sub_1C0EED570(v8 + v10, v39, &qword_1EBE77310, &qword_1C0F561E8);
  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {
    v12 = *(v0 + 416);
    v13 = *(v0 + 152);
    v36(*(v0 + 264), *(v0 + 184), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 120) = v13;
    sub_1C0F4F960();

    v17 = *(v13 + v12);
    if (v17)
    {
      v42 = *(v0 + 432);
      v18 = *(v0 + 168);
      v19 = *(v0 + 152);
      v20 = sub_1C0F50320();
      v21 = *(*(v20 - 8) + 56);
      v21(v18, 1, 1, v20);
      swift_retain_n();

      v22 = sub_1C0F502E0();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v17;
      v23[5] = v19;
      v25 = sub_1C0F053C4(0, 0, v18, &unk_1C0F56E70, v23);

      sub_1C0ECFEF8(v25, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask, &unk_1C0F56490, sub_1C0EECF74);
      swift_getKeyPath();
      *(v0 + 128) = v19;
      sub_1C0F4F960();

      v26 = *(v19 + v42);
      if (v26)
      {
        v27 = *(v0 + 168);
        v28 = *(v0 + 152);
        v21(v27, 1, 1, v20);
        swift_retain_n();
        v29 = sub_1C0F502E0();
        v30 = swift_allocObject();
        v30[2] = v29;
        v30[3] = MEMORY[0x1E69E85E0];
        v30[4] = v26;
        v31 = sub_1C0F053C4(0, 0, v27, &unk_1C0F56E80, v30);

        sub_1C0ECFEF8(v31, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask, &unk_1C0F564C0, sub_1C0EECF54);
        swift_getKeyPath();
        *(v0 + 136) = v28;
        sub_1C0F4F960();

        v32 = *(v28 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);
        *(v0 + 504) = v32;
        if (!v32)
        {

          (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
          goto LABEL_10;
        }

        v33 = swift_task_alloc();
        *(v0 + 512) = v33;
        v16 = sub_1C0EEFB08(&qword_1EBE77718, &qword_1EBE774A0, &qword_1C0F56970, MEMORY[0x1E69E86A0]);
        *v33 = v0;
        v33[1] = sub_1C0EDB1C4;
        v14 = *(v0 + 264);
        v15 = *(v0 + 248);

        return MEMORY[0x1EEDD8E40](v14, v15, v16);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDD8E40](v14, v15, v16);
  }

  v11 = *(v0 + 184);

  sub_1C0EEFAA8(v11, &qword_1EBE77310, &qword_1C0F561E8);
LABEL_10:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1C0EDB1C4()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_1C0EDB540;
  }

  else
  {

    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_1C0EDB2E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C0EDB2E0()
{

  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1C0EDB408()
{
  v1 = v0[36];
  v2 = v0[20];

  sub_1C0EE9E60(v1, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0EDB540()
{
  v1 = v0[65];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[20];

  *v5 = v1;
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C0EDB6E0(uint64_t a1, uint64_t a2)
{
  v3[19] = v2;
  v3[20] = a2;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776E8, &qword_1C0F56E40);
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776F0, &qword_1C0F56E48);
  v3[37] = swift_task_alloc();
  v7 = sub_1C0F4FEC0();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  sub_1C0F4FEB0();
  v3[41] = swift_task_alloc();
  v8 = sub_1C0F4F940();
  v3[42] = v8;
  v3[43] = *(v8 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = sub_1C0F502F0();
  v3[46] = sub_1C0F502E0();
  v10 = sub_1C0F502B0();
  v3[47] = v10;
  v3[48] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDBAC4, v10, v9);
}

uint64_t sub_1C0EDBAC4()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v38 = v0[40];
  v40 = v0[38];
  v6 = v0[18];
  v5 = v0[19];
  sub_1C0F4FFC0();
  (*(v2 + 16))(v1, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77778, &qword_1C0F56EE0);
  v7 = sub_1C0F4FF60();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C0F561D0;
  sub_1C0F4FF50();
  sub_1C0EEE428(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77780, &qword_1C0F56EE8);
  v11 = sub_1C0F4FF70();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C0F561D0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E697B960], v11);
  sub_1C0EEE748(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  v15 = sub_1C0F4FFB0();
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v5;
  *(v16 + 24) = v15;
  v0[49] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[5] = v5;
  v37 = v5;
  v0[50] = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();

  (*(v4 + 104))(v38, *MEMORY[0x1E697B900], v40);
  sub_1C0F4FEA0();
  sub_1C0F4FF00();
  swift_allocObject();
  v17 = sub_1C0F4FED0();
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v5;
  *(v18 + 24) = v17;
  v0[6] = v5;
  sub_1C0F4F950();

  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[7] = v5;
  sub_1C0F4F960();

  v21 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber;
  v0[52] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber;
  v22 = *(v5 + v21);
  if (!v22)
  {
    __break(1u);
    goto LABEL_8;
  }

  v39 = v21;
  v23 = v0[19];
  v24 = sub_1C0EE9CFC(&qword_1EBE77788, MEMORY[0x1E697B9A8], MEMORY[0x1E697B9A0]);
  v0[53] = v24;
  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  swift_getKeyPath();
  v0[8] = v23;

  sub_1C0F4F960();

  v25 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v0[54] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v26 = *(v23 + v25);
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v0[37];
  v28 = v0[19];
  v0[55] = sub_1C0F4FE90();
  v29 = sub_1C0EE9CFC(&qword_1EBE77710, MEMORY[0x1E697B918], MEMORY[0x1E697B910]);
  v0[56] = v29;
  *(v19 + 48) = v26;
  *(v19 + 56) = v29;
  v30 = sub_1C0F4FE70();
  (*(*(v30 - 8) + 56))(v27, 1, 1, v30);

  v31 = sub_1C0F4FE80();
  swift_getKeyPath();
  v32 = swift_task_alloc();
  *(v32 + 16) = v28;
  *(v32 + 24) = v31;
  v0[9] = v28;
  sub_1C0F4F950();

  swift_getKeyPath();
  v0[10] = v28;
  sub_1C0F4F960();

  v33 = *(v37 + v39);
  v0[57] = v33;
  if (!v33)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v34 = swift_task_alloc();
  v0[58] = v34;
  *v34 = v0;
  v34[1] = sub_1C0EDC1FC;
  v35 = v0[36];
  v36 = v0[18];

  return sub_1C0EDD760(v33, v36, v35);
}

uint64_t sub_1C0EDC1FC()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_1C0EEFE38;
  }

  else
  {
    v5 = sub_1C0EDC350;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EDC350()
{
  v1 = v0[52];
  v2 = v0[19];
  v3 = swift_allocObject();
  v0[60] = v3;
  *(v3 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[11] = v2;
  sub_1C0F4F960();

  v5 = *(v2 + v1);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[19];
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_getKeyPath();
  v0[12] = v8;

  sub_1C0F4F960();

  v4 = *(v8 + v7);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEDD8E30](v4);
  }

  v9 = v0[56];
  *(v3 + 48) = v4;
  *(v3 + 56) = v9;

  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_1C0EDC4D0;
  v4 = v3;

  return MEMORY[0x1EEDD8E30](v4);
}

uint64_t sub_1C0EDC4D0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 496) = a1;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDC61C, v4, v3);
}

uint64_t sub_1C0EDC61C()
{
  v1 = *(v0 + 272);
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v38 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v39 = *(v0 + 184);
  v37 = *(v0 + 176);
  v8 = *(v0 + 152);
  sub_1C0ECF32C(*(v0 + 496));
  sub_1C0F4FF20();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1C0F50330();
  (*(v6 + 8))(v4, v5);
  v36 = *(v41 + 32);
  v36(v7, v1, v40);
  (*(v41 + 56))(v7, 0, 1, v40);
  (*(v3 + 32))(v37, v2, v38);
  (*(v3 + 56))(v37, 0, 1, v38);
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v0 + 104) = v8;
  sub_1C0F4F950();

  sub_1C0EEFAA8(v7, &qword_1EBE77310, &qword_1C0F561E8);
  sub_1C0ECFB78(v37);
  swift_getKeyPath();
  *(v0 + 112) = v8;
  sub_1C0F4F960();

  v10 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
  swift_beginAccess();
  sub_1C0EED570(v8 + v10, v39, &qword_1EBE77310, &qword_1C0F561E8);
  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {
    v12 = *(v0 + 416);
    v13 = *(v0 + 152);
    v36(*(v0 + 264), *(v0 + 184), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 120) = v13;
    sub_1C0F4F960();

    v17 = *(v13 + v12);
    if (v17)
    {
      v42 = *(v0 + 432);
      v18 = *(v0 + 168);
      v19 = *(v0 + 152);
      v20 = sub_1C0F50320();
      v21 = *(*(v20 - 8) + 56);
      v21(v18, 1, 1, v20);
      swift_retain_n();

      v22 = sub_1C0F502E0();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v17;
      v23[5] = v19;
      v25 = sub_1C0F053C4(0, 0, v18, &unk_1C0F56F00, v23);

      sub_1C0ECFEF8(v25, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask, &unk_1C0F56490, sub_1C0EECF74);
      swift_getKeyPath();
      *(v0 + 128) = v19;
      sub_1C0F4F960();

      v26 = *(v19 + v42);
      if (v26)
      {
        v27 = *(v0 + 168);
        v28 = *(v0 + 152);
        v21(v27, 1, 1, v20);
        swift_retain_n();
        v29 = sub_1C0F502E0();
        v30 = swift_allocObject();
        v30[2] = v29;
        v30[3] = MEMORY[0x1E69E85E0];
        v30[4] = v26;
        v31 = sub_1C0F053C4(0, 0, v27, &unk_1C0F56F08, v30);

        sub_1C0ECFEF8(v31, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask, &unk_1C0F564C0, sub_1C0EECF54);
        swift_getKeyPath();
        *(v0 + 136) = v28;
        sub_1C0F4F960();

        v32 = *(v28 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);
        *(v0 + 504) = v32;
        if (!v32)
        {

          (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
          goto LABEL_10;
        }

        v33 = swift_task_alloc();
        *(v0 + 512) = v33;
        v16 = sub_1C0EEFB08(&qword_1EBE77718, &qword_1EBE774A0, &qword_1C0F56970, MEMORY[0x1E69E86A0]);
        *v33 = v0;
        v33[1] = sub_1C0EDCD50;
        v14 = *(v0 + 264);
        v15 = *(v0 + 248);

        return MEMORY[0x1EEDD8E40](v14, v15, v16);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDD8E40](v14, v15, v16);
  }

  v11 = *(v0 + 184);

  sub_1C0EEFAA8(v11, &qword_1EBE77310, &qword_1C0F561E8);
LABEL_10:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1C0EDCD50()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_1C0EEFC70;
  }

  else
  {

    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_1C0EEFCE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C0EDCE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v4[7] = swift_task_alloc();
  sub_1C0F502F0();
  v4[8] = sub_1C0F502E0();
  v6 = sub_1C0F502B0();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDCF38, v6, v5);
}

uint64_t sub_1C0EDCF38()
{
  v1 = **(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1C0EDCFF4;
  v3 = *(v0 + 24);

  return sub_1C0EEDA84(v1, v3);
}

uint64_t sub_1C0EDCFF4(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDD11C, v4, v3);
}

uint64_t sub_1C0EDD11C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1C0EDD2A4;
    v2 = *(v0 + 24);

    return sub_1C0EEE06C(v2);
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    v6 = sub_1C0F4F940();
    (*(*(v6 - 8) + 16))(v4, v5, v6);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1C0EDD2A4(char a1)
{
  v2 = *v1;
  *(*v1 + 113) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDD3CC, v4, v3);
}

uint64_t sub_1C0EDD3CC()
{
  if (*(v0 + 113) == 1)
  {

    v1 = *(v0 + 8);
LABEL_8:

    return v1();
  }

  v2 = *(v0 + 24);
  if (*(v2 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 24)) != 1)
  {
    v7 = *(v0 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77750, &qword_1C0F56EC8);
    v8 = sub_1C0F4F940();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C0F561D0;
    (*(v9 + 16))(v11 + v10, v2, v8);
    *v7 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();

    v1 = *(v0 + 8);
    goto LABEL_8;
  }

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1C0EDD624;
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return sub_1C0EE1BB0(v5, v4);
}

uint64_t sub_1C0EDD624()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1C0EEFCD4;
  }

  else
  {
    v5 = sub_1C0EEFCF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EDD760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v4[7] = swift_task_alloc();
  sub_1C0F502F0();
  v4[8] = sub_1C0F502E0();
  v6 = sub_1C0F502B0();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDD82C, v6, v5);
}

uint64_t sub_1C0EDD82C()
{
  v1 = **(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1C0EDD8E8;
  v3 = *(v0 + 24);

  return sub_1C0EEEA68(v1, v3);
}

uint64_t sub_1C0EDD8E8(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDDA10, v4, v3);
}

uint64_t sub_1C0EDDA10()
{
  if (*(v0 + 112) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1C0EDDB98;
    v2 = *(v0 + 24);

    return sub_1C0EEEC28(v2);
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    v6 = sub_1C0F4F940();
    (*(*(v6 - 8) + 16))(v4, v5, v6);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1C0EDDB98(char a1)
{
  v2 = *v1;
  *(*v1 + 113) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDDCC0, v4, v3);
}

uint64_t sub_1C0EDDCC0()
{
  if (*(v0 + 113) == 1)
  {

    v1 = *(v0 + 8);
LABEL_8:

    return v1();
  }

  v2 = *(v0 + 24);
  if (*(v2 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 24)) != 1)
  {
    v7 = *(v0 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77750, &qword_1C0F56EC8);
    v8 = sub_1C0F4F940();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C0F561D0;
    (*(v9 + 16))(v11 + v10, v2, v8);
    *v7 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();

    v1 = *(v0 + 8);
    goto LABEL_8;
  }

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1C0EDDF18;
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return sub_1C0EE21CC(v5, v4);
}

uint64_t sub_1C0EDDF18()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1C0EDE0C0;
  }

  else
  {
    v5 = sub_1C0EDE054;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EDE054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0EDE0C0()
{
  v1 = v0[7];
  v2 = v0[5];

  sub_1C0EE9E60(v1, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0EDE150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77720, &qword_1C0F56E88);
  v4[4] = swift_task_alloc();
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77728, &qword_1C0F56E90);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77730, &qword_1C0F56E98);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_1C0F502F0();
  v4[11] = sub_1C0F502E0();
  v7 = sub_1C0F502B0();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDE2C8, v7, v6);
}

uint64_t sub_1C0EDE2C8()
{
  sub_1C0F4FEF0();
  v0[14] = swift_getOpaqueTypeConformance2();
  sub_1C0F503F0();
  v1 = sub_1C0F502E0();
  v0[15] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1C0EDE414;
  v4 = v0[7];
  v5 = v0[4];
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v5, v1, v6, v0 + 2, v4, AssociatedConformanceWitness);
}

uint64_t sub_1C0EDE414()
{
  v2 = *v1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1C0EDE718;
  }

  else
  {
    v5 = sub_1C0EDE534;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C0EDE534()
{
  v1 = v0[4];
  v2 = sub_1C0F4FEE0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1C0EEFAA8(v1, &qword_1EBE77720, &qword_1C0F56E88);
    v5 = sub_1C0F502E0();
    v0[15] = v5;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1C0EDE414;
    v8 = v0[7];
    v9 = v0[4];
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v9, v5, v10, v0 + 2, v8, AssociatedConformanceWitness);
  }
}

uint64_t sub_1C0EDE718()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0EDE7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[38] = type metadata accessor for AXSpeechTranscriber.Event(0);
  v5[39] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8);
  v5[44] = swift_task_alloc();
  v7 = sub_1C0F4F830();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77628, &qword_1C0F56CA0);
  v5[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v8 = sub_1C0F4FDF0();
  v5[53] = v8;
  v5[54] = *(v8 - 8);
  v5[55] = swift_task_alloc();
  v9 = sub_1C0F4F630();
  v5[56] = v9;
  v5[57] = *(v9 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77738, &qword_1C0F56EA0);
  v5[62] = swift_task_alloc();
  v5[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77740, &qword_1C0F56EA8);
  v5[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77748, &qword_1C0F56EB0);
  v5[65] = v10;
  v5[66] = *(v10 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = sub_1C0F502F0();
  v5[69] = sub_1C0F502E0();
  v12 = sub_1C0F502B0();
  v5[70] = v12;
  v5[71] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDEC14, v12, v11);
}

uint64_t sub_1C0EDEC14()
{
  sub_1C0F4FE10();
  sub_1C0EE9CFC(&qword_1EBE77708, MEMORY[0x1E697B8E0], MEMORY[0x1E697B8D8]);
  sub_1C0F4FE30();
  v0[72] = swift_getOpaqueTypeConformance2();
  sub_1C0F503F0();
  v0[73] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
  v0[74] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[75] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
  v0[76] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  v0[77] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = sub_1C0F502E0();
  v0[78] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[79] = v3;
  *v3 = v0;
  v3[1] = sub_1C0EDEE34;
  v4 = v0[65];
  v5 = v0[62];
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v5, v1, v6, v0 + 26, v4, AssociatedConformanceWitness);
}

uint64_t sub_1C0EDEE34()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);
  if (v0)
  {
    v5 = sub_1C0EDFD98;
  }

  else
  {
    v5 = sub_1C0EDEF60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EDEF60()
{
  v1 = v0[62];
  v2 = v0[53];
  v3 = v0[54];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[66] + 8))(v0[67], v0[65]);

    v4 = v0[1];

    return v4();
  }

  (*(v3 + 32))(v0[55], v1, v2);
  sub_1C0F4FDE0();
  if (sub_1C0F4FE20())
  {
    v95 = v0[73];
    v6 = v0[59];
    v7 = v0[56];
    v90 = v0[57];
    v8 = v0[37];
    swift_getKeyPath();
    v0[32] = v8;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F960();

    v0[33] = v8;
    swift_getKeyPath();
    sub_1C0F4F980();

    swift_beginAccess();
    sub_1C0F4F610();
    swift_endAccess();
    v0[34] = v8;
    swift_getKeyPath();
    sub_1C0F4F970();

    sub_1C0F4F600();
    v89 = *(v90 + 16);
    v89(v6, v8 + v95, v7);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v9 = sub_1C0F50190();
    v96 = *(v90 + 8);
    v96(v6, v7);
    v10 = v0[54];
    v11 = v0[53];
    v12 = v0[37];
    if (v9)
    {
      v13 = v0[73];
      v14 = v0[60];
      v15 = v0[56];
      v16 = v0[57];
      (*(v10 + 8))(v0[55], v0[53]);
      swift_beginAccess();
      (*(v16 + 24))(v12 + v13, v14, v15);
      swift_endAccess();
    }

    else
    {
      v91 = v0[55];
      v29 = v0[60];
      swift_getKeyPath();
      v30 = swift_task_alloc();
      *(v30 + 16) = v12;
      *(v30 + 24) = v29;
      v0[35] = v12;
      sub_1C0F4F950();

      (*(v10 + 8))(v91, v11);
    }

    v96(v0[60], v0[56]);
  }

  else
  {
    v17 = v0[73];
    v18 = v0[59];
    v19 = v0[56];
    v20 = v0[57];
    v21 = v0[37];
    v22 = *(v20 + 16);
    v22(v0[58], v0[61], v19);
    v89 = v22;
    v22(v18, v21 + v17, v19);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v23 = sub_1C0F50190();
    v96 = *(v20 + 8);
    v96(v18, v19);
    if (v23)
    {
      v24 = v0[73];
      v26 = v0[57];
      v25 = v0[58];
      v27 = v0[56];
      v28 = v0[37];
      (*(v0[54] + 8))(v0[55], v0[53]);
      swift_beginAccess();
      (*(v26 + 24))(v28 + v24, v25, v27);
      swift_endAccess();
    }

    else
    {
      v31 = v0[58];
      v32 = v0[54];
      v92 = v0[55];
      v33 = v0[53];
      v34 = v0[37];
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = v31;
      v0[27] = v34;
      sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
      sub_1C0F4F950();

      (*(v32 + 8))(v92, v33);
    }

    v96(v0[58], v0[56]);
  }

  v36 = v0[76];
  v38 = v0[51];
  v37 = v0[52];
  v39 = v0[49];
  v93 = v0[48];
  v40 = v0[45];
  v41 = v0[46];
  v42 = v0[37];
  sub_1C0F4F820();
  (*(v41 + 56))(v37, 0, 1, v40);
  sub_1C0EED570(v42 + v36, v38, &qword_1EBE77370, &qword_1C0F56200);
  v43 = *(v93 + 48);
  sub_1C0EED570(v38, v39, &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0EED570(v37, v39 + v43, &qword_1EBE77370, &qword_1C0F56200);
  v44 = *(v41 + 48);
  if (v44(v39, 1, v40) == 1)
  {
    v45 = v0[45];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    if (v44(v39 + v43, 1, v45) == 1)
    {
      sub_1C0EEFAA8(v0[49], &qword_1EBE77370, &qword_1C0F56200);
LABEL_22:
      v61 = v0[76];
      v62 = v0[52];
      v63 = v0[37];
      swift_beginAccess();
      sub_1C0EEFA0C(v62, v63 + v61, &qword_1EBE77370, &qword_1C0F56200);
      swift_endAccess();
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v46 = v0[45];
  sub_1C0EED570(v0[49], v0[50], &qword_1EBE77370, &qword_1C0F56200);
  v47 = v44(v39 + v43, 1, v46);
  v48 = v0[50];
  v49 = v0[51];
  if (v47 == 1)
  {
    v50 = v0[45];
    v51 = v0[46];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    (*(v51 + 8))(v48, v50);
LABEL_19:
    sub_1C0EEFAA8(v0[49], &qword_1EBE77628, &qword_1C0F56CA0);
    goto LABEL_20;
  }

  v55 = v0[49];
  v56 = v0[46];
  v57 = v0[47];
  v58 = v0[45];
  (*(v56 + 32))(v57, v39 + v43, v58);
  sub_1C0EE9CFC(&qword_1EBE77630, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v59 = sub_1C0F50190();
  v60 = *(v56 + 8);
  v60(v57, v58);
  sub_1C0EEFAA8(v49, &qword_1EBE77370, &qword_1C0F56200);
  v60(v48, v58);
  sub_1C0EEFAA8(v55, &qword_1EBE77370, &qword_1C0F56200);
  if (v59)
  {
    goto LABEL_22;
  }

LABEL_20:
  v52 = v0[52];
  v53 = v0[37];
  swift_getKeyPath();
  v54 = swift_task_alloc();
  *(v54 + 16) = v53;
  *(v54 + 24) = v52;
  v0[28] = v53;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();

LABEL_23:
  v64 = v0[77];
  v65 = v0[43];
  v66 = v0[40];
  v67 = v0[41];
  v68 = v0[37];
  sub_1C0EEFAA8(v0[52], &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0ED4B7C();
  swift_getKeyPath();
  v0[29] = v68;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  sub_1C0EED570(v68 + v64, v65, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v67 + 48))(v65, 1, v66))
  {
    v69 = v0[43];
    v96(v0[61], v0[56]);
    sub_1C0EEFAA8(v69, &qword_1EBE772B0, &qword_1C0F561E0);
    v70 = 1;
  }

  else
  {
    v94 = v0[61];
    v71 = v0[56];
    v72 = v0[43];
    v88 = v0[75];
    v84 = v0[73];
    v85 = v0[41];
    v73 = v0[39];
    v86 = v0[40];
    v74 = v0[37];
    v87 = v0[42];
    (*(v85 + 16))();
    sub_1C0EEFAA8(v72, &qword_1EBE772B0, &qword_1C0F561E0);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77438, &qword_1C0F56568) + 48);
    swift_getKeyPath();
    v0[30] = v74;
    sub_1C0F4F960();

    v89(v73, v74 + v84, v71);
    swift_getKeyPath();
    v0[31] = v74;
    sub_1C0F4F960();

    v89(v73 + v83, v74 + v88, v71);
    swift_storeEnumTagMultiPayload();
    sub_1C0F50360();
    (*(v85 + 8))(v87, v86);
    v96(v94, v71);
    v70 = 0;
  }

  v75 = v0[44];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v76 - 8) + 56))(v75, v70, 1, v76);
  sub_1C0EEFAA8(v75, &qword_1EBE77618, &qword_1C0F56BC8);
  v77 = sub_1C0F502E0();
  v0[78] = v77;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = swift_task_alloc();
  v0[79] = v79;
  *v79 = v0;
  v79[1] = sub_1C0EDEE34;
  v80 = v0[65];
  v81 = v0[62];
  v82 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v81, v77, v82, v0 + 26, v80, AssociatedConformanceWitness);
}

uint64_t sub_1C0EDFD98()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0EDFF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[38] = type metadata accessor for AXSpeechTranscriber.Event(0);
  v5[39] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8);
  v5[44] = swift_task_alloc();
  v7 = sub_1C0F4F830();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77628, &qword_1C0F56CA0);
  v5[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v8 = sub_1C0F4F630();
  v5[53] = v8;
  v5[54] = *(v8 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v9 = sub_1C0F4FFA0();
  v5[59] = v9;
  v5[60] = *(v9 - 8);
  v5[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77790, &qword_1C0F56F10);
  v5[62] = swift_task_alloc();
  v5[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77798, &qword_1C0F56F18);
  v5[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777A0, &qword_1C0F56F20);
  v5[65] = v10;
  v5[66] = *(v10 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = sub_1C0F502F0();
  v5[69] = sub_1C0F502E0();
  v12 = sub_1C0F502B0();
  v5[70] = v12;
  v5[71] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE0354, v12, v11);
}

uint64_t sub_1C0EE0354()
{
  sub_1C0F4FFC0();
  sub_1C0EE9CFC(&qword_1EBE77788, MEMORY[0x1E697B9A8], MEMORY[0x1E697B9A0]);
  sub_1C0F4FE30();
  v0[72] = swift_getOpaqueTypeConformance2();
  sub_1C0F503F0();
  v0[73] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
  v0[74] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[75] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
  v0[76] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  v0[77] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = sub_1C0F502E0();
  v0[78] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[79] = v3;
  *v3 = v0;
  v3[1] = sub_1C0EE0574;
  v4 = v0[65];
  v5 = v0[62];
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v5, v1, v6, v0 + 26, v4, AssociatedConformanceWitness);
}

uint64_t sub_1C0EE0574()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);
  if (v0)
  {
    v5 = sub_1C0EE14A4;
  }

  else
  {
    v5 = sub_1C0EE06A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EE06A0()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[66] + 8))(v0[67], v0[65]);

    v4 = v0[1];

    return v4();
  }

  (*(v3 + 32))(v0[61], v1, v2);
  sub_1C0F4FF90();
  if (sub_1C0F4FE20())
  {
    v97 = v0[73];
    v6 = v0[56];
    v7 = v0[53];
    v93 = v0[54];
    v8 = v0[37];
    swift_getKeyPath();
    v0[32] = v8;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    sub_1C0F4F960();

    v0[33] = v8;
    swift_getKeyPath();
    sub_1C0F4F980();

    swift_beginAccess();
    sub_1C0F4F610();
    swift_endAccess();
    v0[34] = v8;
    swift_getKeyPath();
    sub_1C0F4F970();

    sub_1C0F4F600();
    v92 = *(v93 + 16);
    v92(v6, v8 + v97, v7);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v9 = sub_1C0F50190();
    v10 = *(v93 + 8);
    v10(v6, v7);
    v11 = v0[37];
    if (v9)
    {
      v12 = v0[73];
      v13 = v0[57];
      v14 = v0[53];
      v15 = v0[54];
      swift_beginAccess();
      (*(v15 + 24))(v11 + v12, v13, v14);
      swift_endAccess();
    }

    else
    {
      v29 = v0[57];
      swift_getKeyPath();
      v30 = swift_task_alloc();
      *(v30 + 16) = v11;
      *(v30 + 24) = v29;
      v0[35] = v11;
      sub_1C0F4F950();
    }

    v98 = v10;
    v10(v0[57], v0[53]);
  }

  else
  {
    v16 = v0[73];
    v17 = v0[56];
    v18 = v0[53];
    v19 = v0[54];
    v20 = v0[37];
    v21 = *(v19 + 16);
    v21(v0[55], v0[58], v18);
    v92 = v21;
    v21(v17, v20 + v16, v18);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v22 = sub_1C0F50190();
    v23 = *(v19 + 8);
    v23(v17, v18);
    if (v22)
    {
      v24 = v0[73];
      v26 = v0[54];
      v25 = v0[55];
      v27 = v0[53];
      v28 = v0[37];
      swift_beginAccess();
      (*(v26 + 24))(v28 + v24, v25, v27);
      swift_endAccess();
    }

    else
    {
      v31 = v0[55];
      v32 = v0[37];
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v32;
      *(v33 + 24) = v31;
      v0[27] = v32;
      sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
      sub_1C0F4F950();
    }

    v98 = v23;
    v23(v0[55], v0[53]);
  }

  v34 = v0[76];
  v36 = v0[51];
  v35 = v0[52];
  v37 = v0[49];
  v95 = v0[48];
  v38 = v0[45];
  v39 = v0[46];
  v40 = v0[37];
  sub_1C0F4F820();
  (*(v39 + 56))(v35, 0, 1, v38);
  sub_1C0EED570(v40 + v34, v36, &qword_1EBE77370, &qword_1C0F56200);
  v41 = *(v95 + 48);
  sub_1C0EED570(v36, v37, &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0EED570(v35, v37 + v41, &qword_1EBE77370, &qword_1C0F56200);
  v42 = *(v39 + 48);
  if (v42(v37, 1, v38) == 1)
  {
    v43 = v0[45];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    if (v42(v37 + v41, 1, v43) == 1)
    {
      sub_1C0EEFAA8(v0[49], &qword_1EBE77370, &qword_1C0F56200);
LABEL_22:
      v59 = v0[76];
      v60 = v0[52];
      v61 = v0[37];
      swift_beginAccess();
      sub_1C0EEFA0C(v60, v61 + v59, &qword_1EBE77370, &qword_1C0F56200);
      swift_endAccess();
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v44 = v0[45];
  sub_1C0EED570(v0[49], v0[50], &qword_1EBE77370, &qword_1C0F56200);
  v45 = v42(v37 + v41, 1, v44);
  v46 = v0[50];
  v47 = v0[51];
  if (v45 == 1)
  {
    v48 = v0[45];
    v49 = v0[46];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    (*(v49 + 8))(v46, v48);
LABEL_19:
    sub_1C0EEFAA8(v0[49], &qword_1EBE77628, &qword_1C0F56CA0);
    goto LABEL_20;
  }

  v53 = v0[49];
  v54 = v0[46];
  v55 = v0[47];
  v56 = v0[45];
  (*(v54 + 32))(v55, v37 + v41, v56);
  sub_1C0EE9CFC(&qword_1EBE77630, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v57 = sub_1C0F50190();
  v58 = *(v54 + 8);
  v58(v55, v56);
  sub_1C0EEFAA8(v47, &qword_1EBE77370, &qword_1C0F56200);
  v58(v46, v56);
  sub_1C0EEFAA8(v53, &qword_1EBE77370, &qword_1C0F56200);
  if (v57)
  {
    goto LABEL_22;
  }

LABEL_20:
  v50 = v0[52];
  v51 = v0[37];
  swift_getKeyPath();
  v52 = swift_task_alloc();
  *(v52 + 16) = v51;
  *(v52 + 24) = v50;
  v0[28] = v51;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F950();

LABEL_23:
  v62 = v0[77];
  v63 = v0[43];
  v64 = v0[40];
  v65 = v0[41];
  v66 = v0[37];
  sub_1C0EEFAA8(v0[52], &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0ED4B7C();
  swift_getKeyPath();
  v0[29] = v66;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  sub_1C0EED570(v66 + v62, v63, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v65 + 48))(v63, 1, v64))
  {
    v68 = v0[60];
    v67 = v0[61];
    v69 = v0[59];
    v70 = v0[43];
    v98(v0[58], v0[53]);
    (*(v68 + 8))(v67, v69);
    sub_1C0EEFAA8(v70, &qword_1EBE772B0, &qword_1C0F561E0);
    v71 = 1;
  }

  else
  {
    v89 = v0[75];
    v85 = v0[73];
    v96 = v0[61];
    v94 = v0[59];
    v90 = v0[58];
    v91 = v0[60];
    v72 = v0[53];
    v73 = v0[43];
    v74 = v0[39];
    v86 = v0[41];
    v87 = v0[40];
    v75 = v0[37];
    v88 = v0[42];
    (*(v86 + 16))();
    sub_1C0EEFAA8(v73, &qword_1EBE772B0, &qword_1C0F561E0);
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77438, &qword_1C0F56568) + 48);
    swift_getKeyPath();
    v0[30] = v75;
    sub_1C0F4F960();

    v92(v74, v75 + v85, v72);
    swift_getKeyPath();
    v0[31] = v75;
    sub_1C0F4F960();

    v92(v74 + v84, v75 + v89, v72);
    swift_storeEnumTagMultiPayload();
    sub_1C0F50360();
    (*(v86 + 8))(v88, v87);
    v98(v90, v72);
    (*(v91 + 8))(v96, v94);
    v71 = 0;
  }

  v76 = v0[44];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v77 - 8) + 56))(v76, v71, 1, v77);
  sub_1C0EEFAA8(v76, &qword_1EBE77618, &qword_1C0F56BC8);
  v78 = sub_1C0F502E0();
  v0[78] = v78;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = swift_task_alloc();
  v0[79] = v80;
  *v80 = v0;
  v80[1] = sub_1C0EE0574;
  v81 = v0[65];
  v82 = v0[62];
  v83 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v82, v78, v83, v0 + 26, v81, AssociatedConformanceWitness);
}

uint64_t sub_1C0EE14A4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0EE1614()
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();
}

void *sub_1C0EE16C0(void *a1, void *a2, void *a3)
{
  v5 = v3;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = [a1 format];
  sub_1C0EED60C(0, &qword_1EBE775E8, 0x1E6958418);
  if (sub_1C0F504F0())
  {
    v9 = a1;

    return v9;
  }

  v11 = v3[2];
  if (!v11 || (v12 = [v11 outputFormat]) == 0 || (v13 = v12, v14 = a2, v15 = sub_1C0F504F0(), v13, v14, (v15 & 1) == 0))
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v8 toFormat:a2];
    v17 = v5[2];
    v5[2] = v16;

    v18 = v5[2];
    if (!v18)
    {
LABEL_15:
      type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
      swift_storeEnumTagMultiPayload();
      sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
      swift_willThrowTypedImpl();
      goto LABEL_18;
    }

    [v18 setPrimeMethod_];
  }

  v19 = v5[2];
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v19;
  v21 = [v20 outputFormat];
  [v21 sampleRate];
  v23 = v22;

  v24 = [v20 inputFormat];
  [v24 sampleRate];
  v26 = v25;

  v27 = ceil(v23 / v26 * [a1 frameLength]);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v27 <= -1.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v27 >= 4294967300.0)
  {
    goto LABEL_23;
  }

  v28 = v27;
  v29 = [v20 outputFormat];
  v5 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v29 frameCapacity:v28];

  if (v5)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = a1;
    aBlock[4] = sub_1C0EED4A4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0EE51E8;
    aBlock[3] = &block_descriptor;
    v32 = _Block_copy(aBlock);

    v33 = a1;

    aBlock[0] = 0;
    v34 = [v20 convertToBuffer:v5 error:aBlock withInputFromBlock:v32];
    _Block_release(v32);
    if (v34 != 3)
    {

      return v5;
    }

    v35 = aBlock[0];
    *a3 = aBlock[0];
    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v36 = v35;
    swift_willThrowTypedImpl();
  }

  else
  {
    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
  }

LABEL_18:
  return v5;
}

uint64_t sub_1C0EE1BB0(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  sub_1C0F502F0();
  v3[5] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE1C4C, v5, v4);
}

uint64_t sub_1C0EE1C4C()
{
  v1 = v0[2];
  sub_1C0F4FF40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_1C0F561D0;
  v3 = sub_1C0EE9CFC(&qword_1EBE77708, MEMORY[0x1E697B8E0], MEMORY[0x1E697B8D8]);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1C0EE1D70;

  return MEMORY[0x1EEDD8EA8](v2);
}

uint64_t sub_1C0EE1D70(uint64_t a1)
{
  v3 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = v3[7];
    v6 = sub_1C0EEFE40;
  }

  else
  {

    v4 = v3[6];
    v5 = v3[7];
    v6 = sub_1C0EE1E8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C0EE1E8C()
{
  if (*(v0 + 80))
  {
    v1 = sub_1C0F4FFE0();
    sub_1C0ECF180(v1);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1C0EE2090;

    return MEMORY[0x1EEDD8F38]();
  }

  else
  {

    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v3 = swift_allocError();
    v5 = v4;
    sub_1C0F4FE10();
    sub_1C0EE9CFC(&qword_1EBE77758, MEMORY[0x1E697B8E0], MEMORY[0x1E697B8D0]);
    *v5 = sub_1C0F4FDA0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    **(v0 + 32) = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1C0EE2090()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1C0EEFD30;
  }

  else
  {
    v5 = sub_1C0EEFD38;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EE21CC(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  sub_1C0F502F0();
  v3[5] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE2268, v5, v4);
}

uint64_t sub_1C0EE2268()
{
  v1 = v0[2];
  sub_1C0F4FF40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_1C0F561D0;
  v3 = sub_1C0EE9CFC(&qword_1EBE77788, MEMORY[0x1E697B9A8], MEMORY[0x1E697B9A0]);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1C0EE238C;

  return MEMORY[0x1EEDD8EA8](v2);
}

uint64_t sub_1C0EE238C(uint64_t a1)
{
  v3 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = v3[7];
    v6 = sub_1C0EE27E8;
  }

  else
  {

    v4 = v3[6];
    v5 = v3[7];
    v6 = sub_1C0EE24A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C0EE24A8()
{
  if (*(v0 + 80))
  {
    v1 = sub_1C0F4FFE0();
    sub_1C0ECF180(v1);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1C0EE26AC;

    return MEMORY[0x1EEDD8F38]();
  }

  else
  {

    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v3 = swift_allocError();
    v5 = v4;
    sub_1C0F4FFC0();
    sub_1C0EE9CFC(&qword_1EBE777A8, MEMORY[0x1E697B9A8], MEMORY[0x1E697B998]);
    *v5 = sub_1C0F4FDA0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    **(v0 + 32) = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1C0EE26AC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1C0EE2930;
  }

  else
  {
    v5 = sub_1C0EE28C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C0EE27E8()
{

  **(v0 + 32) = *(v0 + 88);
  type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0EE28C4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0EE2930()
{
  v1 = *(v0 + 80);

  **(v0 + 32) = *(v0 + 104);
  type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError, &protocol conformance descriptor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0EE2A08(uint64_t a1)
{
  v56 = sub_1C0F4F8A0();
  v3 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v4, v5, v6);
  v55 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C0F4F940();
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v9, v10, v11);
  v53 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v43[1] = v1;
  v62 = MEMORY[0x1E69E7CC0];
  sub_1C0EF8E6C(0, v13, 0);
  v14 = v62;
  v15 = a1 + 56;
  result = sub_1C0F50540();
  v17 = result;
  v18 = 0;
  v50 = v8 + 16;
  v49 = *MEMORY[0x1E6969640];
  v47 = (v3 + 8);
  v48 = (v3 + 104);
  v51 = a1 + 56;
  v52 = v8;
  v45 = v13;
  v46 = v8 + 8;
  v44 = a1 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v21 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v57 = v18;
    v58 = v22;
    v23 = *(a1 + 48);
    v61 = v14;
    v25 = v52;
    v24 = v53;
    v26 = v54;
    (*(v52 + 16))(v53, v23 + *(v52 + 72) * v17, v54);
    v28 = v55;
    v27 = v56;
    (*v48)(v55, v49, v56);
    v29 = sub_1C0F4F870();
    v59 = v30;
    v60 = v29;
    (*v47)(v28, v27);
    v31 = *(v25 + 8);
    v14 = v61;
    result = v31(v24, v26);
    v62 = v14;
    v33 = *(v14 + 16);
    v32 = *(v14 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_1C0EF8E6C((v32 > 1), v33 + 1, 1);
      v14 = v62;
    }

    *(v14 + 16) = v33 + 1;
    v34 = v14 + 16 * v33;
    v35 = v59;
    *(v34 + 32) = v60;
    *(v34 + 40) = v35;
    v19 = 1 << *(a1 + 32);
    v15 = v51;
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v36 = *(v51 + 8 * v21);
    if ((v36 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v58 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v37 = v36 & (-2 << (v17 & 0x3F));
    if (v37)
    {
      v19 = __clz(__rbit64(v37)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v45;
    }

    else
    {
      v38 = v21 << 6;
      v39 = v21 + 1;
      v20 = v45;
      v40 = (v44 + 8 * v21);
      while (v39 < (v19 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1C0EEF658(v17, v58, 0);
          v19 = __clz(__rbit64(v41)) + v38;
          goto LABEL_4;
        }
      }

      result = sub_1C0EEF658(v17, v58, 0);
    }

LABEL_4:
    v18 = v57 + 1;
    v17 = v19;
    if (v57 + 1 == v20)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0EE2DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter);
}

uint64_t sub_1C0EE2EC0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v10 = *a2;
  swift_beginAccess();
  return sub_1C0EED570(v12 + v10, a5, a3, a4);
}

uint64_t sub_1C0EE2FA0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v11 = *a3;
  swift_beginAccess();
  return sub_1C0EED570(v10 + v11, a6, a4, a5);
}

uint64_t sub_1C0EE3084()
{
  v1 = v0;
  v32 = type metadata accessor for AXSpeechTranscriber.Event(0);
  MEMORY[0x1EEE9AC00](v32, v2, v3, v4);
  v31 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13, v14, v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19, v20, v21);
  v23 = &v30 - v22;
  swift_getKeyPath();
  v35 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v25 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes;
  if (*(*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes) + 16))
  {
    swift_getKeyPath();
    v35 = v0;
    sub_1C0F4F960();

    v26 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
    swift_beginAccess();
    sub_1C0EED570(v1 + v26, v17, &qword_1EBE772B0, &qword_1C0F561E0);
    v27 = v33;
    if ((*(v33 + 48))(v17, 1, v6))
    {
      sub_1C0EEFAA8(v17, &qword_1EBE772B0, &qword_1C0F561E0);
      v28 = 1;
    }

    else
    {
      (*(v27 + 16))(v11, v17, v6);
      sub_1C0EEFAA8(v17, &qword_1EBE772B0, &qword_1C0F561E0);
      swift_getKeyPath();
      v34 = v1;
      sub_1C0F4F960();

      *v31 = *(v1 + v25);
      swift_storeEnumTagMultiPayload();

      sub_1C0F50360();
      (*(v27 + 8))(v11, v6);
      v28 = 0;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
    (*(*(v29 - 8) + 56))(v23, v28, 1, v29);
    return sub_1C0EEFAA8(v23, &qword_1EBE77618, &qword_1C0F56BC8);
  }

  return result;
}

uint64_t sub_1C0EE3498(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();
}

uint64_t sub_1C0EE353C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1C0EE35F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  return result;
}

uint64_t sub_1C0EE36A4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

void sub_1C0EE3700(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile);
  if (v3)
  {
    v17[0] = 0;
    v4 = [v3 writeFromBuffer:a1 error:v17];
    v5 = v17[0];
    if (v4)
    {

      v6 = v5;
    }

    else
    {
      v7 = v17[0];
      v8 = sub_1C0F4F6B0();

      swift_willThrow();
      v9 = v8;
      v10 = sub_1C0F4FD00();
      v11 = sub_1C0F50470();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v17[0] = v14;
        *v12 = 136315394;
        *(v12 + 4) = sub_1C0EE9754(0xD00000000000001ALL, 0x80000001C0F665B0, v17);
        *(v12 + 12) = 2112;
        v15 = v8;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 14) = v16;
        *v13 = v16;
        _os_log_impl(&dword_1C0E8A000, v10, v11, "🟡 %s: file writing error: %@", v12, 0x16u);
        sub_1C0EEFAA8(v13, &qword_1EBE776D0, &qword_1C0F56E10);
        MEMORY[0x1C68EB070](v13, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x1C68EB070](v14, -1, -1);
        MEMORY[0x1C68EB070](v12, -1, -1);
      }

      else
      {
      }
    }
  }
}

id sub_1C0EE39BC(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v72 = a4;
  v73 = a1;
  v66 = a3;
  v6 = sub_1C0F4FFF0();
  v71 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C0F50010();
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v11, v12, v13);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1C0F4F830();
  v15 = *(v68 - 8);
  v16 = *(v15 + 64);
  v20 = MEMORY[0x1EEE9AC00](v68, v17, v18, v19);
  v24 = MEMORY[0x1EEE9AC00](v20, v21, v22, v23);
  v64 = &v59 - v25;
  v29 = MEMORY[0x1EEE9AC00](v24, v26, v27, v28);
  v31 = &v59 - v30;
  MEMORY[0x1EEE9AC00](v29, v32, v33, v34);
  v36 = &v59 - v35;
  result = [a2 hostTime];
  if (result)
  {
    v38 = objc_opt_self();
    v63 = v6;
    [v38 secondsForHostTime_];
    v39 = v36;
    v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1C0F4F800();
    [v73 frameLength];
    [a2 sampleRate];
    v40 = v31;
    v61 = v31;
    v62 = v39;
    sub_1C0F4F7F0();
    sub_1C0EED60C(0, &qword_1EBE77690, 0x1E69E9610);
    v60 = sub_1C0F504C0();
    v41 = *(v15 + 16);
    v42 = v64;
    v43 = v68;
    v41(v64, v39, v68);
    v41(&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v43);
    v44 = *(v15 + 80);
    v45 = (v44 + 32) & ~v44;
    v46 = (v16 + v44 + v45) & ~v44;
    v47 = (v16 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = v72;
    *(v48 + 16) = v66;
    *(v48 + 24) = v49;
    v50 = *(v15 + 32);
    v50(v48 + v45, v42, v43);
    v50(v48 + v46, v59, v43);
    v51 = v73;
    *(v48 + v47) = v73;
    aBlock[4] = sub_1C0EED654;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0EE4C3C;
    aBlock[3] = &block_descriptor_267;
    v52 = _Block_copy(aBlock);

    v53 = v51;

    v54 = v69;
    sub_1C0F50000();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C0EE9CFC(&qword_1EBE77698, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776A0, &qword_1C0F56DC8);
    sub_1C0EEFB08(&qword_1EBE776A8, &qword_1EBE776A0, &qword_1C0F56DC8, MEMORY[0x1E69E6328]);
    v55 = v67;
    v56 = v63;
    sub_1C0F50530();
    v57 = v60;
    MEMORY[0x1C68E9CE0](0, v54, v55, v52);
    _Block_release(v52);

    (*(v71 + 8))(v55, v56);
    (*(v70 + 8))(v54, v65);
    v58 = *(v15 + 8);
    v58(v61, v43);
    return (v58)(v62, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0EE3F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v120 = a5;
  v117 = a4;
  v122 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v107 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v115 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776B0, &qword_1C0F56DD0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17, v18, v19);
  v21 = &v106 - v20;
  v121 = sub_1C0F4F830();
  v22 = *(v121 - 8);
  v26 = MEMORY[0x1EEE9AC00](v121, v23, v24, v25);
  v118 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28, v29, v30);
  v114 = &v106 - v31;
  v113 = type metadata accessor for AXSpeechTranscriber.AudioBuffer(0);
  v35 = MEMORY[0x1EEE9AC00](v113, v32, v33, v34);
  v106 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37, v38, v39);
  v119 = (&v106 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v45 = MEMORY[0x1EEE9AC00](v41 - 8, v42, v43, v44);
  v116 = (&v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x1EEE9AC00](v45, v47, v48, v49);
  v52 = &v106 - v51;
  v56 = MEMORY[0x1EEE9AC00](v50, v53, v54, v55);
  v58 = &v106 - v57;
  MEMORY[0x1EEE9AC00](v56, v59, v60, v61);
  v63 = &v106 - v62;
  v64 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v66 = result;
  v109 = v6;
  v110 = v5;
  v111 = v21;
  swift_beginAccess();
  sub_1C0EED570(v64, v63, &qword_1EBE77370, &qword_1C0F56200);
  v67 = v121;
  v112 = *(v22 + 48);
  v68 = v112(v63, 1, v121);
  sub_1C0EEFAA8(v63, &qword_1EBE77370, &qword_1C0F56200);
  if (v68 == 1)
  {
    (*(v22 + 16))(v58, v122, v67);
    (*(v22 + 56))(v58, 0, 1, v67);
    swift_beginAccess();
    sub_1C0EED6F4(v58, v64);
  }

  sub_1C0F4F810();
  v70 = v69;
  swift_beginAccess();
  sub_1C0EED570(v64, v52, &qword_1EBE77370, &qword_1C0F56200);
  v71 = v112;
  result = v112(v52, 1, v67);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1C0F4F810();
  v73 = v72;
  v74 = *(v22 + 8);
  v74(v52, v67);
  v75 = v117;
  sub_1C0F4F810();
  v77 = v76;
  swift_beginAccess();
  v78 = v116;
  sub_1C0EED570(v64, v116, &qword_1EBE77370, &qword_1C0F56200);
  result = v71(v78, 1, v67);
  v79 = v120;
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1C0F4F810();
  v81 = v80;
  v116 = v74;
  v112 = (v22 + 8);
  v74(v78, v67);
  sub_1C0EE3700(v79);
  result = sub_1C0EEEFE4(v79);
  if ((result & 0x100000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v82 = v70 - v73;
  v83 = *&result;
  v84 = *(v22 + 16);
  v85 = v114;
  v108 = result;
  v86 = v121;
  v84(v114, v122, v121);
  v84(v118, v75, v86);
  swift_getKeyPath();
  v87 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v123[0] = v66;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v123[0] = v66;
  swift_getKeyPath();
  v122 = v87;
  sub_1C0F4F980();

  sub_1C0EE49CC(v83);
  v89 = v88;
  v123[0] = v66;
  swift_getKeyPath();
  sub_1C0F4F970();

  v90 = v119;
  v91 = v120;
  *v119 = v120;
  v92 = v90 + *(v113 + 20);
  v93 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v84(&v92[v93[5]], v85, v86);
  v94 = v118;
  v84(&v92[v93[6]], v118, v86);
  v95 = v91;
  sub_1C0F4F850();
  v96 = v116;
  v116(v94, v86);
  v96(v85, v86);
  *&v92[v93[7]] = v82;
  *&v92[v93[8]] = v77 - v81;
  *&v92[v93[9]] = v108;
  *&v92[v93[10]] = v89;
  swift_getKeyPath();
  v123[0] = v66;
  sub_1C0F4F960();

  v97 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation;
  swift_beginAccess();
  v98 = v115;
  sub_1C0EED570(v66 + v97, v115, &qword_1EBE77390, &qword_1C0F56208);
  v99 = v109;
  v100 = v110;
  if ((*(v109 + 48))(v98, 1, v110))
  {
    sub_1C0EE9EC8(v119, type metadata accessor for AXSpeechTranscriber.AudioBuffer);

    sub_1C0EEFAA8(v98, &qword_1EBE77390, &qword_1C0F56208);
    v101 = 1;
    v102 = v111;
  }

  else
  {
    v103 = v107;
    (*(v99 + 16))(v107, v98, v100);
    sub_1C0EEFAA8(v98, &qword_1EBE77390, &qword_1C0F56208);
    v104 = v119;
    sub_1C0EE9DA0(v119, v106, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v102 = v111;
    sub_1C0F50360();

    (*(v99 + 8))(v103, v100);
    sub_1C0EE9EC8(v104, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v101 = 0;
  }

  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776B8, &qword_1C0F56E00);
  (*(*(v105 - 8) + 56))(v102, v101, 1, v105);
  return sub_1C0EEFAA8(v102, &qword_1EBE776B0, &qword_1C0F56DD0);
}

void sub_1C0EE49CC(float a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3 != v4)
  {
    v7 = __OFADD__(v3, 1);
    v8 = v3 + 1;
    if (v7)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *(v1 + 16) = v8;
    v6 = *v1;
    v5 = *(v1 + 8);
LABEL_7:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = sub_1C0EF9584(v6);
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v5 < *(v6 + 2))
        {
          *&v6[4 * v5 + 32] = a1;
          *v1 = v6;
          *(v1 + 24) = *(v1 + 24) + a1;
          if (v4)
          {
            *(v1 + 8) = (v5 + 1) % v4;
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v1 + 8);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *v1;
  if (v5 < *(*v1 + 16))
  {
    *(v1 + 24) = *(v1 + 24) - *&v6[4 * v5 + 32];
    goto LABEL_7;
  }

LABEL_18:
  __break(1u);
}

uint64_t AXSpeechTranscriber.AudioBuffer.init(buffer:startTime:endTime:sessionStartTimeDelta:sessionEndTimeDelta:rms:smoothedRms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>, float a7@<S2>, float a8@<S3>)
{
  *a4 = a1;
  v14 = a4 + *(type metadata accessor for AXSpeechTranscriber.AudioBuffer(0) + 20);
  v15 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v16 = v15[5];
  v17 = sub_1C0F4F830();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(&v14[v16], a2, v17);
  v19(&v14[v15[6]], a3, v17);
  sub_1C0F4F850();
  v20 = *(v18 + 8);
  v20(a3, v17);
  result = (v20)(a2, v17);
  *&v14[v15[7]] = a5;
  *&v14[v15[8]] = a6;
  *&v14[v15[9]] = a7;
  *&v14[v15[10]] = a8;
  return result;
}

uint64_t sub_1C0EE4C3C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C0EE4C80(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_1C0EE4D04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4, v5);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_1C0ECE514(v7);
}

uint64_t AXSpeechTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_logger;
  v2 = sub_1C0F4FD30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation, &qword_1EBE772B0, &qword_1C0F561E0);

  v3 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
  v4 = sub_1C0F4F630();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript, v4);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream, &qword_1EBE77310, &qword_1C0F561E8);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation, &qword_1EBE77320, &qword_1C0F561F0);

  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL, &qword_1EBE77340, &qword_1C0F561F8);

  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime, &qword_1EBE77370, &qword_1C0F56200);

  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation, &qword_1EBE77390, &qword_1C0F56208);

  v6 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v7 = sub_1C0F4F9A0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t AXSpeechTranscriber.__deallocating_deinit()
{
  AXSpeechTranscriber.deinit();

  return swift_deallocClassInstance();
}

void *sub_1C0EE515C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    a4 = 0;
    v7 = 1;
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  swift_beginAccess();
  *(a3 + 16) = 1;
  return a4;
}

id sub_1C0EE51E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_1C0EE5254()
{

  return swift_deallocClassInstance();
}

uint64_t AXSpeechTranscriber.__allocating_init(logger:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773A8, &unk_1C0F56210);
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4, v5);
  v7 = &v18 - v6;
  v8 = sub_1C0F4FD30();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10, v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0EED570(a1, v7, &qword_1EBE773A8, &unk_1C0F56210);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1C0F4FD20();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1C0EEFAA8(v7, &qword_1EBE773A8, &unk_1C0F56210);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  swift_allocObject();
  v16 = sub_1C0ECD6E4(v14);
  sub_1C0EEFAA8(a1, &qword_1EBE773A8, &unk_1C0F56210);
  return v16;
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC18startTranscription13configurationScSyAC5EventOGAC18InputConfigurationV_tAC06SpeechE5ErrorOYKF@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v4 = v3;
  v46 = a1;
  v44 = a3;
  v5 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6, v7, v8);
  v49 = v9;
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v10 - 8, v11, v12, v13);
  v48 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16, v17, v18);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B8, &qword_1C0F56220);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23, v24, v25);
  v27 = &v44 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v45 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
  v33 = &v44 - v32;
  swift_getKeyPath();
  v53 = v3;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState))
  {
    *v51 = 0;
    v52 = 0;
    sub_1C0EE7894();
    return swift_willThrowTypedImpl();
  }

  else
  {
    type metadata accessor for AXSpeechTranscriber.Event(0);
    (*(v22 + 104))(v27, *MEMORY[0x1E69E8650], v21);
    sub_1C0F50330();
    (*(v22 + 8))(v27, v21);
    swift_allocObject();
    swift_weakInit();
    sub_1C0F50350();
    v35 = v45;
    (*(v45 + 16))(v20, v33, v28);
    (*(v35 + 56))(v20, 0, 1, v28);
    sub_1C0ECE884(v20);
    v36 = sub_1C0F50320();
    v37 = v48;
    (*(*(v36 - 8) + 56))(v48, 1, 1, v36);
    v38 = v50;
    sub_1C0EE9DA0(v46, v50, type metadata accessor for AXSpeechTranscriber.InputConfiguration);
    sub_1C0F502F0();

    v39 = sub_1C0F502E0();
    v40 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v39;
    v41[3] = v42;
    v41[4] = v4;
    sub_1C0EE9E60(v38, v41 + v40, type metadata accessor for AXSpeechTranscriber.InputConfiguration);
    v43 = sub_1C0ED943C(0, 0, v37, &unk_1C0F56260, v41);
    sub_1C0ECEFD8(v43, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask, &unk_1C0F562A0, sub_1C0EEFE04);
    return (*(v35 + 8))(v33, v28);
  }
}