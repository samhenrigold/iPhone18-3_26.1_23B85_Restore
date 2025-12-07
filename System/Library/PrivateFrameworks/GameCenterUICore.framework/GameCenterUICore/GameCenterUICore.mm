void sub_24E4AA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKAppleIDAuthenticationInAppContextClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AuthKitUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AuthKitUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27967EDB8;
    v5 = 0;
    AuthKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AuthKitUILibraryCore_frameworkLibrary)
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1();
  }

  getAKAppleIDAuthenticationInAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void _annotateDrawInRectWithContextAndInput(uint64_t a1, CGContext *CurrentContext, void *a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  v11 = a3;
  if (v11)
  {
    v23 = v11;
    if (_annotateDrawInRectWithContextAndInput_onceToken != -1)
    {
      _annotateDrawInRectWithContextAndInput_cold_1();
      v11 = v23;
    }

    v12 = objc_getAssociatedObject(v11, @"GK_IMAGE_URL_ANNOTATION_KEY");
    if (v12)
    {
      if (!CurrentContext)
      {
        CurrentContext = UIGraphicsGetCurrentContext();
      }

      v25.width = a6;
      v25.height = a7;
      v13 = CGContextConvertSizeToDeviceSpace(CurrentContext, v25);
      v14 = MEMORY[0x277CCACA8];
      v15 = v23;
      [v15 size];
      v17 = v16;
      [v15 size];
      v19 = v18;

      v20 = [v12 absoluteString];
      v21 = [v14 stringWithFormat:@"Server Image Usage: %s rect.size=%g x %g image.size=%g x %g %@\n", a1, *&v13.width, *&v13.height, v17, v19, v20];

      v22 = [v21 UTF8String];
      fputs(v22, _annotateDrawInRectWithContextAndInput_output);
      fflush(_annotateDrawInRectWithContextAndInput_output);
    }

    v11 = v23;
  }
}

void sub_24E4AFED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___annotateDrawInRectWithContextAndInput_block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v2 = [v1 objectAtIndex:0];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/Logs", v2];
  v6 = 0;
  [v0 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v6];
  v4 = v6;
  if (v4)
  {
    NSLog(&cfstr_FailedToCreate.isa, v4);
    exit(1);
  }

  v5 = [v3 stringByAppendingPathComponent:@"GKImageAnnotation.log"];
  NSLog(&cfstr_Gkimageannotat_0.isa, v5);
  _annotateDrawInRectWithContextAndInput_output = fopen([v5 UTF8String], "w+");
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_24E4B4984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24E4B5134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24E4B6474(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void GKRectsCenterYInRect(uint64_t a1, double **a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 >= 1)
  {
    v7 = a2;
    v8 = a1;
    v10 = 0;
    v11 = 0.0;
    do
    {
      if (v10)
      {
        v11 = v11 + a7;
      }

      v11 = v11 + a2[v10++][3];
    }

    while (a1 != v10);
    v12 = (a6 - v11) * 0.5;
    v13 = a4 + floorf(v12);
    do
    {
      v14 = *v7++;
      v14[1] = v13;
      v15 = *v14;
      v16 = *(v14 + 2);
      v17 = *(v14 + 3);
      v13 = CGRectGetMaxY(*(&v13 - 1)) + a7;
      --v8;
    }

    while (v8);
  }
}

void GKRectsCenterXInRect(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 >= 1)
  {
    v10 = 0;
    v11 = a7;
    do
    {
      v11 = v11 + *(*(a2 + 8 * v10++) + 16);
    }

    while (a1 != v10);
    v12 = 0;
    v13 = (a5 - v11) * 0.5;
    MaxY = a3 + floorf(v13);
    do
    {
      v15 = *(a2 + 8 * v12);
      if (v12)
      {
        MaxY = MaxY + a7;
      }

      *v15 = MaxY;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      MaxY = CGRectGetMaxY(*&MaxY);
      ++v12;
    }

    while (a1 != v12);
  }
}

double GKRectEnforceMinimumHeight(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 24);
  result = a3 - v3;
  if (result > 0.0)
  {
    *(a1 + 24) = v3 + result;
    v5 = *(a2 + 24);
    if (v5 > result)
    {
      result = v5 - result;
      *(a2 + 24) = result;
    }
  }

  return result;
}

CGFloat GKRectDivideYIntoThreeConsumingMiddle(double *a1, double *a2, double *a3, CGFloat a4, double a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  v19 = a7 - (a8 + a9 + a10 * 2.0);
  v21 = CGRectGetMaxY(*&a4) + a10;
  v23.origin.x = a4;
  v23.origin.y = v21;
  v23.size.width = a6;
  v23.size.height = v19;
  result = CGRectGetMaxY(v23) + a10;
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a8;
  *a2 = a4;
  a2[1] = v21;
  a2[2] = a6;
  a2[3] = v19;
  *a3 = a4;
  a3[1] = result;
  a3[2] = a6;
  a3[3] = a9;
  return result;
}

void sub_24E4B7020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GKIsAvatarEditingSupported(uint64_t a1, uint64_t a2)
{
  if (GKIsAvatarEditingSupported_onceToken != -1)
  {
    GKIsAvatarEditingSupported_cold_1();
  }

  return GKIsAvatarEditingSupported_sIsSupported;
}

uint64_t __GKIsAvatarEditingSupported_block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAVTUIAreAvatarsSupportedSymbolLoc_ptr;
  v6 = getAVTUIAreAvatarsSupportedSymbolLoc_ptr;
  if (!getAVTUIAreAvatarsSupportedSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke;
    v2[3] = &unk_27967ED98;
    v2[4] = &v3;
    __getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __GKIsAvatarEditingSupported_block_invoke_cold_1();
  }

  result = v0();
  GKIsAvatarEditingSupported_sIsSupported = result;
  return result;
}

void sub_24E4B8100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GKCurrentMedusaMode()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  if ([v0 userInterfaceIdiom] != 1)
  {
    goto LABEL_5;
  }

  v1 = *MEMORY[0x277D0C258];

  if ((v1 & 1) == 0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 bounds];
    v5 = v4;

    v6 = [*MEMORY[0x277D76620] windows];
    v0 = [v6 objectAtIndexedSubscript:0];

    [v0 bounds];
    v8 = v7 / v5;
    if (v7 / v5 != 0.0)
    {
      if (v8 >= 0.4)
      {
        if (v8 >= 0.6)
        {
          if (v8 >= 0.9)
          {
            v2 = 3;
          }

          else
          {
            v2 = 2;
          }
        }

        else
        {
          v2 = 1;
        }
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_6;
    }

LABEL_5:
    v2 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

    return v2;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

void *__getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AvatarUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27967F298;
    v6 = 0;
    AvatarUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AvatarUILibraryCore_frameworkLibrary;
  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    __getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AVTUIAreAvatarsSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVTUIAreAvatarsSupportedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_24E4B8A9C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

double GKRoundToScreenScale(double a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return round(v4 * a1) / v4;
}

void sub_24E4C006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t __GKThemeBundle_block_invoke()
{
  GKThemeBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24E4C6730()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACHIEVEMENT_PENDING_APPROVAL", 28, 2, v9, 0, 0, v2, v6, "Describes to a developer that an achievement is not live because it hasn't been approved yet", 92);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C338 = v18;
  unk_27F20C340 = v20;
  return result;
}

void static GCUILocalizedStrings.ACHIEVEMENT_RARITY_PERCENT(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_47(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_1();
  v7 = sub_24E4DEB38();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = OUTLINED_FUNCTION_46();
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v11 = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  OUTLINED_FUNCTION_38();
  sub_24E4DEC48();
  if (qword_27F20CBA8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  __swift_project_value_buffer(v7, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_34();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_29("ACHIEVEMENT_RARITY_PERCENT", 26, v17, v18, v19, v20, v21, v22, "Copy for global player UI when Achievement rarity percent is 0% or more than 10%.", 81);
  v23 = OUTLINED_FUNCTION_25();
  v24(v23);
  v25 = sub_24E4DC114();
  OUTLINED_FUNCTION_44(v25, &type metadata for AttributeScopes.ExtendedMarkdownAttributes, v26, v25);
  v27 = OUTLINED_FUNCTION_42();
  v28(v27);
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.ACHIEVEMENT_RARITY_PERCENT_LESS_THAN_FRACTION(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_47(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_1();
  v7 = sub_24E4DEB38();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = OUTLINED_FUNCTION_46();
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v11 = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  OUTLINED_FUNCTION_38();
  sub_24E4DEC48();
  if (qword_27F20CBA8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  __swift_project_value_buffer(v7, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_34();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_29("ACHIEVEMENT_RARITY_PERCENT_LESS_THAN_FRACTION", 45, v17, v18, v19, v20, v21, v22, "Copy for global player UI when Achievement rarity percent is less than 0.1%.", 76);
  v23 = OUTLINED_FUNCTION_25();
  v24(v23);
  v25 = sub_24E4DC114();
  OUTLINED_FUNCTION_44(v25, &type metadata for AttributeScopes.ExtendedMarkdownAttributes, v26, v25);
  v27 = OUTLINED_FUNCTION_42();
  v28(v27);
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.ACHIEVEMENT_RARITY_PERCENT_ONLY(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_47(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_1();
  v7 = sub_24E4DEB38();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = OUTLINED_FUNCTION_46();
  v10 = OUTLINED_FUNCTION_24(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v11 = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  OUTLINED_FUNCTION_38();
  sub_24E4DEC48();
  if (qword_27F20CBA8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  __swift_project_value_buffer(v7, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_34();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_29("ACHIEVEMENT_RARITY_PERCENT_ONLY", 31, v17, v18, v19, v20, v21, v22, "Copy for global player UI when Achievement rarity percent is less than 1 or 10%.", 80);
  v23 = OUTLINED_FUNCTION_25();
  v24(v23);
  v25 = sub_24E4DC114();
  OUTLINED_FUNCTION_44(v25, &type metadata for AttributeScopes.ExtendedMarkdownAttributes, v26, v25);
  v27 = OUTLINED_FUNCTION_42();
  v28(v27);
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4C7190()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("DEVELOPER", 9, 2, v9, 0, 0, v2, v6, "Section header on a card for information targeting app developers", 65);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C350 = v18;
  *algn_27F20C358 = v20;
  return result;
}

id sub_24E4C74C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_24E4DEC68();

  return v3;
}

uint64_t sub_24E4C7514()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_INVITE_CODE_FETCH_IN_PROGRESS_ERROR", 42, 2, v9, 0, 0, v2, v6, "Error alert message when users try to send the friend invite message before the friend code is fetched", 102);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C368 = v18;
  unk_27F20C370 = v20;
  return result;
}

uint64_t sub_24E4C784C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_REQUEST_MODULE_SENDER_SUBTITLE", 37, 2, v9, 0, 0, v2, v6, "The subtitle to show in the friend invite message card for the sender", 69);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C380 = v18;
  *algn_27F20C388 = v20;
  return result;
}

uint64_t sub_24E4C7B84()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_REQUEST_MODULE_SUBTITLE", 30, 2, v9, 0, 0, v2, v6, "The subtitle to show in the friend invite message card", 54);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C398 = v18;
  unk_27F20C3A0 = v20;
  return result;
}

void static GCUILocalizedStrings.FRIEND_REQUEST_MODULE_UPSELL(playerName:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_52(v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v14, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_28();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v2, "Upsell text for friending on Game Center", 40);
  v24 = OUTLINED_FUNCTION_18();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_22();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4C8138()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_REQUEST_CELL_FROM_CONTACTS_LABEL", 39, 2, v9, 0, 0, v2, v6, "Subtitle for friend requests sent via push, where we do not have their real name", 80);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C3B0 = v18;
  *algn_27F20C3B8 = v20;
  return result;
}

uint64_t sub_24E4C8478()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("GAME_CENTER", 11, 2, v9, 0, 0, v2, v6, "Game Center", 11);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C3C8 = v18;
  unk_27F20C3D0 = v20;
  return result;
}

uint64_t sub_24E4C87B4()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("GAME_CENTER_FRIEND_REQUEST_ACCEPTED", 35, 2, v9, 0, 0, v2, v6, "Friend invite acceptance message", 32);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C3E0 = v18;
  *algn_27F20C3E8 = v20;
  return result;
}

uint64_t sub_24E4C8AEC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("LEADERBOARD_PENDING_APPROVAL", 28, 2, v9, 0, 0, v2, v6, "Describes to a developer that a leaderboard is not live because it hasn't been approved yet", 91);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C3F8 = v18;
  unk_27F20C400 = v20;
  return result;
}

uint64_t sub_24E4C8E24()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v20[0] = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24E4DEB38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E4DEB48();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = sub_24E4DEAF8();
  __swift_allocate_value_buffer(v16, qword_27F20C410);
  __swift_project_value_buffer(v16, qword_27F20C410);
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_27F20CBB0);
  (*(v3 + 16))(v5, v17, v2);
  v18 = v20[0];
  sub_24E4DEBC8();
  sub_24E4DEB58("NO_ACHIEVEMENT_RARITY", 21, 2, v8, 0, 0, v18, v5, "Global player UI copy if the game has less than 1,000 players", 61);
  (*(v10 + 16))(v13, v15, v9);
  sub_24E4DC114();
  sub_24E4DEAE8();
  return (*(v10 + 8))(v15, v9);
}

uint64_t static GCUILocalizedStrings.NO_ACHIEVEMENT_RARITY.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F20C408 != -1)
  {
    swift_once();
  }

  v2 = sub_24E4DEAF8();
  v3 = __swift_project_value_buffer(v2, qword_27F20C410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24E4C9204()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("NO_FRIENDS_EMPTY_STATE_DESCRIPTION", 34, 2, v9, 0, 0, v2, v6, "Description of the empty state view when the local player has no friends", 72);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C430 = v18;
  *algn_27F20C438 = v20;
  return result;
}

uint64_t sub_24E4C953C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("PLAYER_CARD_BUTTON_INVITE", 25, 2, v9, 0, 0, v2, v6, "Invite player as friend button title", 36);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C448 = v18;
  unk_27F20C450 = v20;
  return result;
}

uint64_t sub_24E4C986C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("PLAYER_PICKER_NEARBY_OR_BOOP_INSTRUCTIONAL_MESSAGE", 50, 2, v9, 0, 0, v2, v6, "instructions for searching for nearby or airdrop/boop players in the suggestions shelf", 86);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C460 = v18;
  *algn_27F20C468 = v20;
  return result;
}

uint64_t sub_24E4C9BA4()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("PLAYER_PICKER_NEARBY_OR_BOOP_INSTRUCTIONAL_MESSAGE_WLAN", 55, 2, v9, 0, 0, v2, v6, "instructions for searching for nearby players which uses WLAN instead of Wi-Fi for Chinese-config devices or airdrop/boop players in the suggestions shelf", 154);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C478 = v18;
  unk_27F20C480 = v20;
  return result;
}

uint64_t sub_24E4C9EDC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("PRERELEASE_ITEM", 15, 2, v9, 0, 0, v2, v6, "Used to indicate an item (e.g. achievement, leaderboard) is in the Pre-release state.", 87);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C490 = v18;
  *algn_27F20C498 = v20;
  return result;
}

uint64_t sub_24E4CA214()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("READY_FOR_REVIEW", 16, 2, v9, 0, 0, v2, v6, "Used to indicate an achievement is in the Ready for review state.", 67);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C4A8 = v18;
  unk_27F20C4B0 = v20;
  return result;
}

uint64_t sub_24E4CA54C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("RETRY", 5, 2, v9, 0, 0, v2, v6, "Copy for try again button", 25);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C4C0 = v18;
  *algn_27F20C4C8 = v20;
  return result;
}

uint64_t sub_24E4CA884()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_BANNER_TITLE", 20, 2, v9, 0, 0, v2, v6, "Sign-in banner title", 20);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C4D8 = v18;
  unk_27F20C4E0 = v20;
  return result;
}

uint64_t sub_24E4CABBC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_BANNER_SUBTITLE", 23, 2, v9, 0, 0, v2, v6, "Sign-in banner subtitle", 23);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C4F0 = v18;
  *algn_27F20C4F8 = v20;
  return result;
}

uint64_t sub_24E4CAEF4()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_TITLE_MESSAGE", 21, 2, v9, 0, 0, v2, v6, "Title of GC Sign-in screen on iOS", 33);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C508 = v18;
  unk_27F20C510 = v20;
  return result;
}

uint64_t sub_24E4CB22C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_WITH_APPLEID_BUTTON_TITLE", 33, 2, v9, 0, 0, v2, v6, "Sign-in button title when already signed in to iCloud", 53);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C520 = v18;
  *algn_27F20C528 = v20;
  return result;
}

uint64_t sub_24E4CB564()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_BUTTON_TITLE", 20, 2, v9, 0, 0, v2, v6, "Sign-in button title when not already signed in to iCloud", 57);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C538 = v18;
  unk_27F20C540 = v20;
  return result;
}

uint64_t sub_24E4CB898()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_PROMPT_MESSAGE_TEXT", 27, 2, v9, 0, 0, v2, v6, "Sign in prompt message text from sign-in screen", 47);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C550 = v18;
  *algn_27F20C558 = v20;
  return result;
}

uint64_t sub_24E4CBBD0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SIGN_IN_PROMPT_MESSAGE_TEXT_WITH_APPLEID", 40, 2, v9, 0, 0, v2, v6, "Sign in prompt message text from sign-in screen, including prompt to continue with Apple ID", 91);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C568 = v18;
  unk_27F20C570 = v20;
  return result;
}

uint64_t sub_24E4CBF08()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIENDS_WHO_HAVE_THIS", 21, 2, v9, 0, 0, v2, v6, "Section header for friends who have this achievement list", 57);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C580 = v18;
  *algn_27F20C588 = v20;
  return result;
}

void static GCUILocalizedStrings.FRIEND_WHO_EARNED_THIS_SEC_AGO(sec:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_36(8307);
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for when friend earned an achievement sec ago", 50);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.FRIEND_WHO_EARNED_THIS_MIN_AGO(min:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_36(8301);
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for when friend earned an achievement min ago", 50);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.FRIEND_WHO_EARNED_THIS_HOUR_AGO(hr:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_36(8296);
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for when friend earned an achievement hr ago", 49);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.FRIEND_WHO_EARNED_THIS_DAY_AGO(day:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_36(8292);
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for when friend earned an achievement days ago", 51);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.FRIEND_WHO_EARNED_THIS_WEEK_AGO(week:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_36(8311);
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for when friend earned an achievement weeks ago", 52);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.FRIEND_WHO_EARNED_THIS_AVATAR_COUNT(COUNT:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  sub_24E4DEC18();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for friends who earned this count is greater than 3.", 57);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4CD014()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_WHO_EARNED_THIS_SECTION_SHOW_MORE_TITLE", 46, 2, v9, 0, 0, v2, v6, "Friends who have this section, title for the button that expands the list", 73);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C598 = v18;
  unk_27F20C5A0 = v20;
  return result;
}

uint64_t sub_24E4CD34C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_WHO_EARNED_THIS_SECTION_SHOW_LESS_TITLE", 46, 2, v9, 0, 0, v2, v6, "Friends who have this section, title for the button that collapses the list", 75);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C5B0 = v18;
  *algn_27F20C5B8 = v20;
  return result;
}

void static GCUILocalizedStrings.LEADERBOARD_LIST_ITEM_SUBTITLE_FRIENDS_PLAYING(COUNT:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Copy for leaderboard list item subtitle when friends are playing.", 65);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4CD8E8()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("PROFILE_CREATION_TITLE", 22, 2, v9, 0, 0, v2, v6, "Title for the profile onboarding view", 37);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C5C8 = v18;
  unk_27F20C5D0 = v20;
  return result;
}

uint64_t sub_24E4CDC20()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("CHOOSE_NICKNAME_TITLE", 21, 2, v9, 0, 0, v2, v6, "Title for the nickname input", 28);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C5E0 = v18;
  *algn_27F20C5E8 = v20;
  return result;
}

uint64_t sub_24E4CDF58()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACTIVITY_SHARING_HEADER", 23, 2, v9, 0, 0, v2, v6, "Header for the activity sharing setting", 39);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C5F8 = v18;
  unk_27F20C600 = v20;
  return result;
}

uint64_t sub_24E4CE290()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACTIVITY_SHARING_DESCRIPTION", 28, 2, v9, 0, 0, v2, v6, "Description for the activity sharing setting", 44);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C610 = v18;
  *algn_27F20C618 = v20;
  return result;
}

uint64_t sub_24E4CE5C8()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACTIVITY_SHARING_DESCRIPTION_TVOS", 33, 2, v9, 0, 0, v2, v6, "Description for the activity sharing setting on tvOS", 52);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C628 = v18;
  unk_27F20C630 = v20;
  return result;
}

uint64_t sub_24E4CE900()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("AVATAR_DESCRIPTION_TVOS", 23, 2, v9, 0, 0, v2, v6, "Description next to the avatar on tvOS", 38);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C640 = v18;
  *algn_27F20C648 = v20;
  return result;
}

uint64_t sub_24E4CEC38()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_CONTACT_INTEGRATION_HEADER_TEXT", 40, 2, v9, 0, 0, v2, v6, "Section header text for the contacts integration setting", 56);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C658 = v18;
  unk_27F20C660 = v20;
  return result;
}

uint64_t sub_24E4CEF78()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_CUSTOMIZE_PROFILE_BUTTON_TITLE", 39, 2, v9, 0, 0, v2, v6, "Button text to customize the user's Game Center profile in settings", 67);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C670 = v18;
  *algn_27F20C678 = v20;
  return result;
}

uint64_t sub_24E4CF2B0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_MAC_CUSTOMIZE_PROFILE_BUTTON_TITLE", 43, 2, v9, 0, 0, v2, v6, "Button text to customize the user's Game Center profile in settings on Mac", 74);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C688 = v18;
  unk_27F20C690 = v20;
  return result;
}

uint64_t sub_24E4CF5E8()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_CUSTOMIZE_PROFILE_TITLE", 32, 2, v9, 0, 0, v2, v6, "Title for the view to customize your Game Center profile", 56);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C6A0 = v18;
  *algn_27F20C6A8 = v20;
  return result;
}

uint64_t sub_24E4CF920()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_ONBOARDING_TITLE", 31, 2, v9, 0, 0, v2, v6, "Title for the Invite Friends onboarding", 39);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C6B8 = v18;
  unk_27F20C6C0 = v20;
  return result;
}

uint64_t sub_24E4CFC60()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_ONBOARDING_SUBTITLE", 34, 2, v9, 0, 0, v2, v6, "Subtitle for the Invite Friends onboarding", 42);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C6D0 = v18;
  *algn_27F20C6D8 = v20;
  return result;
}

uint64_t sub_24E4CFF98()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_TITLE", 26, 2, v9, 0, 0, v2, v6, "Title for the Invite Friends sheet", 34);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C6E8 = v18;
  unk_27F20C6F0 = v20;
  return result;
}

uint64_t sub_24E4D02D8()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_HEADER", 27, 2, v9, 0, 0, v2, v6, "Header for the Invite Friends sheet", 35);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C700 = v18;
  *algn_27F20C708 = v20;
  return result;
}

uint64_t sub_24E4D0614()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SEARCH_SHEET_HEADER", 34, 2, v9, 0, 0, v2, v6, "Header for the Invite Friends sheet while searching contacts", 60);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C718 = v18;
  unk_27F20C720 = v20;
  return result;
}

uint64_t sub_24E4D0948()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_SEARCH_PLACEHOLDER", 39, 2, v9, 0, 0, v2, v6, "Placeholder for the contacts search field in the Invite Friends sheet", 69);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C730 = v18;
  *algn_27F20C738 = v20;
  return result;
}

uint64_t sub_24E4D0C88()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_DONE_BUTTON_TITLE", 38, 2, v9, 0, 0, v2, v6, "Done button to dismiss the Invite Friends sheet", 47);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C748 = v18;
  unk_27F20C750 = v20;
  return result;
}

uint64_t sub_24E4D0FB4()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_EMPTY_STATE_TITLE", 38, 2, v9, 0, 0, v2, v6, "Title for the empty state in the Invite Friends sheet", 53);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C760 = v18;
  *algn_27F20C768 = v20;
  return result;
}

uint64_t sub_24E4D12EC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_EMPTY_STATE_SUBTITLE", 41, 2, v9, 0, 0, v2, v6, "Subtitle for the empty state in the Invite Friends sheet", 56);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C778 = v18;
  unk_27F20C780 = v20;
  return result;
}

uint64_t sub_24E4D1624()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_EMPTY_STATE_ACTION_TITLE", 45, 2, v9, 0, 0, v2, v6, "Action button title for the empty state in the Invite Friends sheet", 67);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C790 = v18;
  *algn_27F20C798 = v20;
  return result;
}

uint64_t sub_24E4D195C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("INVITE_FRIENDS_SHEET_SEARCH_EMPTY_STATE_TITLE", 45, 2, v9, 0, 0, v2, v6, "Title for the empty state in the Invite Friends sheet", 53);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C7A8 = v18;
  unk_27F20C7B0 = v20;
  return result;
}

void static GCUILocalizedStrings.INVITE_FRIENDS_SHEET_SEARCH_EMPTY_STATE_SUBTITLE(searchTerm:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_52(v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v14, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_28();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v2, "Subtitle for the empty state in the Invite Friends sheet", 56);
  v24 = OUTLINED_FUNCTION_18();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_22();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.FRIEND_SUGGESTION_ALREADY_FRIENDS_SUBTITLE(friendPlayerName:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_52(v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v14, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_28();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v2, "Subtitle on friend suggestions that says you are already friends with that contact", 82);
  v24 = OUTLINED_FUNCTION_18();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_22();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4D2164()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_SUGGESTION_FROM_CONTACTS_SUBTITLE", 40, 2, v9, 0, 0, v2, v6, "Subtitle on friend suggestions that says they’re from Contacts", 64);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C7C0 = v18;
  *algn_27F20C7C8 = v20;
  return result;
}

uint64_t sub_24E4D24A0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_SUGGESTION_INVITE_BUTTON_TITLE", 37, 2, v9, 0, 0, v2, v6, "Invite button title for friend suggestions", 42);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C7D8 = v18;
  unk_27F20C7E0 = v20;
  return result;
}

uint64_t sub_24E4D27D0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_SUGGESTION_HIDE_BUTTON_TITLE", 35, 2, v9, 0, 0, v2, v6, "Hide swipe action button title for friend suggestions", 53);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C7F0 = v18;
  *algn_27F20C7F8 = v20;
  return result;
}

uint64_t sub_24E4D2AFC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_SUGGESTION_NO_CONTACT_AVAILABLE", 38, 2, v9, 0, 0, v2, v6, "Subtitle on friend suggestions search that has no contact details available", 75);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C808 = v18;
  unk_27F20C810 = v20;
  return result;
}

uint64_t sub_24E4D2E34()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_SUGGESTION_SENT_BUTTON_TITLE", 35, 2, v9, 0, 0, v2, v6, "Button title for after a friend invitation is sent to a suggested friend", 72);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C820 = v18;
  *algn_27F20C828 = v20;
  return result;
}

uint64_t sub_24E4D3160()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FRIEND_REQUESTS_SHEET_TITLE", 27, 2, v9, 0, 0, v2, v6, "Title for the Friend Requests dashboard page", 44);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C838 = v18;
  unk_27F20C840 = v20;
  return result;
}

uint64_t sub_24E4D34A0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ALL_FRIENDS_SHEET_TITLE", 23, 2, v9, 0, 0, v2, v6, "Title for the All Friends dashboard page", 40);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C850 = v18;
  *algn_27F20C858 = v20;
  return result;
}

uint64_t sub_24E4D37DC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_SECTION_FOOTER", 39, 2, v9, 0, 0, v2, v6, "Footer text for the list of friend requests in settings", 55);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C868 = v18;
  unk_27F20C870 = v20;
  return result;
}

uint64_t sub_24E4D3B14()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_CONTACTS_TOGGLE_LABEL", 46, 2, v9, 0, 0, v2, v6, "Label text for the contacts-only toggle for friend requests in settings", 71);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C880 = v18;
  *algn_27F20C888 = v20;
  return result;
}

uint64_t sub_24E4D3E4C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_CONTACTS_TOGGLE_FOOTER", 47, 2, v9, 0, 0, v2, v6, "Footer text for the contacts-only toggle for friend requests in settings", 72);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C898 = v18;
  unk_27F20C8A0 = v20;
  return result;
}

uint64_t sub_24E4D4184()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_INVITE_TITLE", 37, 2, v9, 0, 0, v2, v6, "Title of the invite friends section of the Friend Requests page for settings", 76);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C8B0 = v18;
  *algn_27F20C8B8 = v20;
  return result;
}

uint64_t sub_24E4D44BC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_INVITE_SUBTITLE", 40, 2, v9, 0, 0, v2, v6, "Subtitle of the invite friends section of the Friend Requests page for settings", 79);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C8C8 = v18;
  unk_27F20C8D0 = v20;
  return result;
}

uint64_t sub_24E4D47F4()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_EMPTY_TITLE", 36, 2, v9, 0, 0, v2, v6, "Title for the friend requests list when the user has no friend requests to display", 82);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C8E0 = v18;
  *algn_27F20C8E8 = v20;
  return result;
}

uint64_t sub_24E4D4B2C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_REQUESTS_EMPTY_SUBTITLE", 39, 2, v9, 0, 0, v2, v6, "Subtitle for the friend requests list when the user has no friend requests to display", 85);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C8F8 = v18;
  unk_27F20C900 = v20;
  return result;
}

uint64_t sub_24E4D4E64()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_SUGGESTIONS_SECTION_FOOTER", 42, 2, v9, 0, 0, v2, v6, "Section header text for the list of friend suggestions in settings", 66);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C910 = v18;
  *algn_27F20C918 = v20;
  return result;
}

void static GCUILocalizedStrings.SETTINGS_ALL_FRIENDS_SECTION_HEADER(count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  OUTLINED_FUNCTION_51(0x4620u);
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Header above the friends list that displays the count of total friends", 70);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4D53F0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_ALL_FRIENDS_EMPTY_TITLE", 32, 2, v9, 0, 0, v2, v6, "Title for the friends list when the user has no friends to display", 66);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C928 = v18;
  unk_27F20C930 = v20;
  return result;
}

uint64_t sub_24E4D5730()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_ALL_FRIENDS_EMPTY_SUBTITLE", 35, 2, v9, 0, 0, v2, v6, "Subtitle for the friends list when the user has no friends to display", 69);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C940 = v18;
  *algn_27F20C948 = v20;
  return result;
}

uint64_t sub_24E4D5A68()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_NICKNAME_MESSAGE", 25, 2, v9, 0, 0, v2, v6, "Message displayed to the user when editing their nickname in the Settings app", 77);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C958 = v18;
  unk_27F20C960 = v20;
  return result;
}

uint64_t sub_24E4D5DA0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_FRIEND_SUGGESTIONS_TITLE", 33, 2, v9, 0, 0, v2, v6, "Title above the friend suggestions sections in the Settings app", 63);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C970 = v18;
  *algn_27F20C978 = v20;
  return result;
}

uint64_t sub_24E4D60DC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_VIEW_PROFILE_BUTTON_TEXT", 33, 2, v9, 0, 0, v2, v6, "Text on the button to view your friends profile", 47);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C988 = v18;
  unk_27F20C990 = v20;
  return result;
}

uint64_t sub_24E4D6408()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_MAC_INVITE_FRIENDS_BUTTON_TITLE", 40, 2, v9, 0, 0, v2, v6, "Button text in settings to open the Invite Friends sheet", 56);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C9A0 = v18;
  *algn_27F20C9A8 = v20;
  return result;
}

uint64_t sub_24E4D6740()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("CONTACTS_INTEGRATION_ONBOARDING_TITLE", 37, 2, v9, 0, 0, v2, v6, "Title for the Contacts Integration onboarding", 45);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C9B8 = v18;
  unk_27F20C9C0 = v20;
  return result;
}

uint64_t sub_24E4D6A78()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("CONTACTS_INTEGRATION_ONBOARDING_SUBTITLE", 40, 2, v9, 0, 0, v2, v6, "Subtitle for the Contacts Integration onboarding", 48);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C9D0 = v18;
  *algn_27F20C9D8 = v20;
  return result;
}

uint64_t sub_24E4D6DB0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACTIVITY_SHARING_REPROMPT_TITLE", 31, 2, v9, 0, 0, v2, v6, "Title for the Activity Sharing Re-prompt", 40);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20C9E8 = v18;
  unk_27F20C9F0 = v20;
  return result;
}

void static GCUILocalizedStrings.ACTIVITY_SHARING_REPROMPT_SUBTITLE(recipientName:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v2 = sub_24E4DEBD8();
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v26 = sub_24E4DEB38();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33(v7);
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  sub_24E4DEC18();
  sub_24E4DEC08();
  sub_24E4DEC18();
  OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v14 = __swift_project_value_buffer(v26, qword_27F20CBB0);
  (*(v5 + 16))(v27, v14, v26);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v15, v16, v17, v18, v19, v20, v21, v27, "Subtitle for the Activity Sharing Re-prompt", 43);
  v22 = OUTLINED_FUNCTION_18();
  v23(v22);
  sub_24E4DEC88();
  v24 = OUTLINED_FUNCTION_22();
  v25(v24);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4D73CC()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACTIVITY_SHARING_REPROMPT_SHARE_BUTTON_TITLE", 44, 2, v9, 0, 0, v2, v6, "Title for the Share with Friends button", 39);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA00 = v18;
  *algn_27F20CA08 = v20;
  return result;
}

uint64_t sub_24E4D7704()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ACTIVITY_SHARING_REPROMPT_NOT_NOW_BUTTON_TITLE", 46, 2, v9, 0, 0, v2, v6, "Title for the Not Now button", 28);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA18 = v18;
  unk_27F20CA20 = v20;
  return result;
}

uint64_t sub_24E4D7A38()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ONLINE_SAFETY_REGULATORY_ACTION", 31, 2, v9, 0, 0, v2, v6, "Text for the button to display Online Safety information", 56);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA30 = v18;
  *algn_27F20CA38 = v20;
  return result;
}

uint64_t sub_24E4D7D70()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("RESET_ANALYTICS_IDENTIFIER_BUTTON_TITLE", 39, 2, v9, 0, 0, v2, v6, "Text for the button to reset the user's analytics identifier", 60);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA48 = v18;
  unk_27F20CA50 = v20;
  return result;
}

uint64_t sub_24E4D80A8()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_WELCOME_BANNER_TITLE", 28, 2, v9, 0, 0, v2, v6, "Title for signed-in welcome banner", 34);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA60 = v18;
  *algn_27F20CA68 = v20;
  return result;
}

uint64_t sub_24E4D83E0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_WELCOME_BANNER_TITLE_SHORT", 34, 2, v9, 0, 0, v2, v6, "Condensed title for signed-in welcome banner", 44);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA78 = v18;
  unk_27F20CA80 = v20;
  return result;
}

uint64_t sub_24E4D871C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_ACCESS_POINT_GAMES_FOR_YOU", 34, 2, v9, 0, 0, v2, v6, "Games For You title in access point", 35);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CA90 = v18;
  *algn_27F20CA98 = v20;
  return result;
}

uint64_t sub_24E4D8A50()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_ACHIEVEMENT_HIGHLIGHT_TITLE", 35, 2, v9, 0, 0, v2, v6, "Access point achievements highlight title", 41);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CAA8 = v18;
  unk_27F20CAB0 = v20;
  return result;
}

void static GCUILocalizedStrings.OVERLAY_FRIEND_REQUESTS_HIGHLIGHT_TITLE(count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Access point friend requests highlight title", 44);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.OVERLAY_ACHIEVEMENT_HIGHLIGHT_SUBTITLE_INPROGRESS(completed:total:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v3 = sub_24E4DEBD8();
  v4 = OUTLINED_FUNCTION_24(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33(v5);
  sub_24E4DEB38();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v8 = OUTLINED_FUNCTION_50(v7);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_53(v14);
  sub_24E4DEC18();
  v15 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_53(v15);
  sub_24E4DEC18();
  v16 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v16 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v16, qword_27F20CBB0);
  v17 = OUTLINED_FUNCTION_49();
  v18(v17);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v19, v20, v21, v22, v23, v24, v25, v2, "Access Point achievements highlight subtitle (e.g. 15 / 49)", 59);
  v26 = OUTLINED_FUNCTION_15();
  v27(v26);
  sub_24E4DEC88();
  v28 = OUTLINED_FUNCTION_43();
  v29(v28);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

void static GCUILocalizedStrings.OVERLAY_ACHIEVEMENT_HIGHLIGHT_SUBTITLE(total:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_40(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  v15 = OUTLINED_FUNCTION_12(v14, qword_27F20CBB0);
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v3, "Access Point achievements highlight subtitle with no achievements completed", 75);
  v24 = OUTLINED_FUNCTION_8();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_9();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

id sub_24E4D950C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a3, a2);
  v4 = sub_24E4DEC68();

  return v4;
}

uint64_t sub_24E4D955C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_LEADERBOARD_HIGHLIGHT_TITLE", 35, 2, v9, 0, 0, v2, v6, "Access point leaderboards highlight title", 41);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CAC0 = v18;
  *algn_27F20CAC8 = v20;
  return result;
}

void static GCUILocalizedStrings.OVERLAY_LEADERBOARD_HIGHLIGHT_SUBTITLE_FRIEND_RANK(rank:total:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v3 = sub_24E4DEBD8();
  v4 = OUTLINED_FUNCTION_24(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33(v5);
  sub_24E4DEB38();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v8 = OUTLINED_FUNCTION_50(v7);
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  sub_24E4DEC28();
  sub_24E4DEC18();
  v14 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_53(v14);
  sub_24E4DEC18();
  v15 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_53(v15);
  OUTLINED_FUNCTION_51(0x6620u);
  v16 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v16 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v16, qword_27F20CBB0);
  v17 = OUTLINED_FUNCTION_49();
  v18(v17);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v19, v20, v21, v22, v23, v24, v25, v2, "Access Point leaderboards highlight subtitle showing player's position among friends", 84);
  v26 = OUTLINED_FUNCTION_15();
  v27(v26);
  sub_24E4DEC88();
  v28 = OUTLINED_FUNCTION_43();
  v29(v28);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

id sub_24E4D9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a5(a3, a4);
  v5 = sub_24E4DEC68();

  return v5;
}

void static GCUILocalizedStrings.OVERLAY_LEADERBOARD_HIGHLIGHT_SUBTITLE_GET_STARTED(leaderboardName:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_52(v3, v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v8 = sub_24E4DEC58();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13();
  v11 = OUTLINED_FUNCTION_24(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  sub_24E4DEC28();
  sub_24E4DEC18();
  sub_24E4DEC08();
  OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v14 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v14, qword_27F20CBB0);
  v15 = OUTLINED_FUNCTION_28();
  v16(v15);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v17, v18, v19, v20, v21, v22, v23, v2, "Access Point leaderboards highlight subtitle when player has not scored on any leaderboard", 90);
  v24 = OUTLINED_FUNCTION_18();
  v25(v24);
  sub_24E4DEC88();
  v26 = OUTLINED_FUNCTION_22();
  v27(v26);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

id sub_24E4D9DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_24E4DEC78();
  a4(v5);

  v6 = sub_24E4DEC68();

  return v6;
}

void static GCUILocalizedStrings.OVERLAY_FRIEND_REQUESTS_HIGHLIGHT_SUBTITLE(alias:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31();
  v36 = v5;
  v37 = v6;
  v35 = v7;
  v8 = sub_24E4DEBD8();
  v9 = OUTLINED_FUNCTION_24(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_1();
  v11 = sub_24E4DEC58();
  v12 = OUTLINED_FUNCTION_24(v11);
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_13();
  v14 = OUTLINED_FUNCTION_24(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  sub_24E4DEC28();
  OUTLINED_FUNCTION_39();
  sub_24E4DEC08();
  sub_24E4DEC18();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_10();
  sub_24E4DEBF8();
  sub_24E4DEC18();
  v24 = OUTLINED_FUNCTION_37();
  if (qword_27F20CBA8 != -1)
  {
    v24 = OUTLINED_FUNCTION_1_1(&qword_27F20CBA8);
  }

  OUTLINED_FUNCTION_23(v24, qword_27F20CBB0);
  v25 = OUTLINED_FUNCTION_28();
  v26(v25);
  sub_24E4DEBC8();
  OUTLINED_FUNCTION_21();
  v34 = "Access point friend requests highlight subtitle showing count of pending requests";
  v35 = 81;
  OUTLINED_FUNCTION_5_0();
  sub_24E4DEB58(v27, v28, v29, v30, v31, v32, v33, v3, v34, v35);
  (*(v16 + 16))(v20, v23, v4);
  sub_24E4DEC88();
  (*(v16 + 8))(v23, v4);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_32();
}

uint64_t sub_24E4DA1A0()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_GAME_MODE_TITLE", 23, 2, v9, 0, 0, v2, v6, "Game Mode Title", 15);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CAD8 = v18;
  unk_27F20CAE0 = v20;
  return result;
}

uint64_t sub_24E4DA4D8()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_GAME_MODE_ON", 20, 2, v9, 0, 0, v2, v6, "Game Mode State On", 18);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CAF0 = v18;
  *algn_27F20CAF8 = v20;
  return result;
}

uint64_t sub_24E4DA800()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_GAME_MODE_OFF", 21, 2, v9, 0, 0, v2, v6, "Game Mode State Off", 19);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB08 = v18;
  unk_27F20CB10 = v20;
  return result;
}

uint64_t sub_24E4DAB2C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("OVERLAY_GAME_MODE_TOGGLE_AX_HINT", 32, 2, v9, 0, 0, v2, v6, "Accessibility hint for Game Mode Toggle Switch", 46);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB20 = v18;
  *algn_27F20CB28 = v20;
  return result;
}

uint64_t sub_24E4DAE64()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ONBOARDING_WELCOME_SUBTITLE_CRYSTAL", 35, 2, v9, 0, 0, v2, v6, "Subtitle for the onboarding welcome sheet", 41);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB38 = v18;
  unk_27F20CB40 = v20;
  return result;
}

uint64_t sub_24E4DB19C()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("ONBOARDING_WHATSNEW_SUBTITLE_CRYSTAL", 36, 2, v9, 0, 0, v2, v6, "Subtitle for the onboarding sheet", 33);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB50 = v18;
  *algn_27F20CB58 = v20;
  return result;
}

uint64_t sub_24E4DB4D4()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("SETTINGS_SHARE_FRIENDS_LIST_SHOW_APPS", 37, 2, v9, 0, 0, v2, v6, "Button text in settings to allow player to view friend access by games", 70);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB68 = v18;
  unk_27F20CB70 = v20;
  return result;
}

uint64_t sub_24E4DB810()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("FAILED_TO_ACCEPT_FRIEND_INVITE", 30, 2, v9, 0, 0, v2, v6, "Alert text when we fail to accept friend request due to some server error.", 74);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB80 = v18;
  *algn_27F20CB88 = v20;
  return result;
}

uint64_t sub_24E4DBB48()
{
  v0 = sub_24E4DEBD8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24E4DEB38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E4DEC58();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24E4DEB48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_24E4DEBE8();
  if (qword_27F20CBA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27F20CBB0);
  (*(v4 + 16))(v6, v17, v3);
  sub_24E4DEBC8();
  sub_24E4DEB58("PLEASE_TRY_AGAIN", 16, 2, v9, 0, 0, v2, v6, "Alert message when we fail to perform an operation due to server error.", 71);
  (*(v11 + 16))(v14, v16, v10);
  v18 = sub_24E4DEC88();
  v20 = v19;
  result = (*(v11 + 8))(v16, v10);
  qword_27F20CB98 = v18;
  unk_27F20CBA0 = v20;
  return result;
}

uint64_t sub_24E4DBE68(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;

  return v5;
}

id sub_24E4DBED4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GCUILocalizedStrings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E4DBF6C()
{
  v0 = sub_24E4DEBB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E4DEB38();
  __swift_allocate_value_buffer(v4, qword_27F20CBB0);
  v5 = __swift_project_value_buffer(v4, qword_27F20CBB0);
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = [v6 bundleURL];

  sub_24E4DEBA8();
  (*(v1 + 32))(v5, v3, v0);
  return (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277CC9118], v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24E4DC114()
{
  result = qword_27F20CBC8;
  if (!qword_27F20CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CBC8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_24E4DEB48();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return MEMORY[0x28211E808](0);
}

uint64_t OUTLINED_FUNCTION_26()
{

  return sub_24E4DEB38();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_24E4DEB58(a1, a2, 2, v12, 0, 0, v10, v11, a9, a10);
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{

  return sub_24E4DEC18();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_24E4DEC48();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_24E4DEC18();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_24E4DEC18();
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{
  *(v1 - 104) = a1;

  return sub_24E4DEBD8();
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_24E4DEAE8();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return MEMORY[0x28211E808](0);
}

uint64_t OUTLINED_FUNCTION_46()
{

  return sub_24E4DEC58();
}

uint64_t OUTLINED_FUNCTION_47@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 112) = a1;
  *(v3 - 104) = a2;
  *(v3 - 96) = a3;

  return sub_24E4DEBD8();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_24E4DEC28();
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = v1 - a1;

  return sub_24E4DEC58();
}

uint64_t OUTLINED_FUNCTION_51(unsigned __int16 a1)
{

  return sub_24E4DEC18();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return sub_24E4DEBD8();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{

  return sub_24E4DEBF8();
}

uint64_t AttributeScopes.ExtendedMarkdownStyleAttributes.Color.Value.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24E4DECC8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24E4DC774()
{
  sub_24E4DECD8();
  sub_24E4DEC98();
  return sub_24E4DECE8();
}

uint64_t sub_24E4DC7F0(uint64_t a1)
{
  sub_24E4DECD8();
  sub_24E4DEC98();
  return sub_24E4DECE8();
}

uint64_t static AttributeScopes.ExtendedMarkdownStyleAttributes.Color.name.getter()
{
  swift_beginAccess();
  v0 = *aEmdColor;

  return v0;
}

uint64_t static AttributeScopes.ExtendedMarkdownStyleAttributes.Color.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aEmdColor = a1;
  *&aEmdColor[8] = a2;
}

uint64_t sub_24E4DCA38@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aEmdColor[8];
  *a1 = *aEmdColor;
  a1[1] = v2;
}

uint64_t sub_24E4DCA88(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aEmdColor = v2;
  *&aEmdColor[8] = v1;
}

unint64_t sub_24E4DCC28()
{
  result = qword_27F20CBE0;
  if (!qword_27F20CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CBE0);
  }

  return result;
}

unint64_t sub_24E4DCC7C()
{
  result = qword_27F20CBE8;
  if (!qword_27F20CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CBE8);
  }

  return result;
}

unint64_t sub_24E4DCCD4()
{
  result = qword_27F20CBF0;
  if (!qword_27F20CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CBF0);
  }

  return result;
}

unint64_t sub_24E4DCD2C()
{
  result = qword_27F20CBF8;
  if (!qword_27F20CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CBF8);
  }

  return result;
}

unint64_t sub_24E4DCD84()
{
  result = qword_27F20CC00;
  if (!qword_27F20CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CC00);
  }

  return result;
}

uint64_t sub_24E4DCDE0(uint64_t a1)
{
  sub_24E4DC114();

  return sub_24E4DEAC8();
}

uint64_t sub_24E4DCE2C(uint64_t a1)
{
  sub_24E4DC114();

  return sub_24E4DEAC8();
}

uint64_t sub_24E4DCEB0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_24E4DCF00(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_24E4DCFA8()
{
  result = qword_27F20CC08;
  if (!qword_27F20CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CC08);
  }

  return result;
}

unint64_t sub_24E4DCFFC()
{
  result = qword_27F20CC10;
  if (!qword_27F20CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CC10);
  }

  return result;
}

unint64_t sub_24E4DD050()
{
  result = qword_27F20CC18;
  if (!qword_27F20CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CC18);
  }

  return result;
}

unint64_t sub_24E4DD0A4()
{
  result = qword_27F20CC20;
  if (!qword_27F20CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20CC20);
  }

  return result;
}

void __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAKAppleIDAuthenticationInAppContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKSoftLinkedClassesUI.h" lineNumber:27 description:{@"Unable to find class %s", "AKAppleIDAuthenticationInAppContext"}];

  __break(1u);
}

void __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AuthKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKSoftLinkedClassesUI.h" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __GKIsAvatarEditingSupported_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL AVTUIAreAvatarsSupported_SoftLinked(void)"];
  [v0 handleFailureInFunction:v1 file:@"GKPreferences+UI.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AvatarUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKPreferences+UI.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A50](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}