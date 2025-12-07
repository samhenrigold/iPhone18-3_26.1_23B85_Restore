uint64_t sub_1B00C595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B014CADC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B00C5A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_1B014CADC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B00C5AA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5B80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5BBC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C3B88;
}

uint64_t sub_1B00C5C3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B00C5CC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5D00()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B00C5DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C5E2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C5EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B00C5F04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B00C6054()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C608C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C60CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C6104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FBKSEvaluation.Subject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B00C61D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FBKSEvaluation.Subject(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B00C6764()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C6874@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C4178;
}

uint64_t sub_1B00C68DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B00C69F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void *sub_1B00C6C00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B00C6C20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C6F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FBKSInteraction.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B00C704C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FBKSInteraction.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B00C7108@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B00C7164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B00C71C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B00C721C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B00C72B8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B00C72F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B00C7364()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C739C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B00C7430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B00C7470()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B00C74A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C5220, &qword_1B015AFE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B00C7568@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15FeedbackService15FBKSInteractionC13FeatureDomainO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t FBKSIsInternalInstall(uint64_t a1, uint64_t a2)
{
  if (FBKSIsInternalInstall_onceToken != -1)
  {
    FBKSIsInternalInstall_cold_1();
  }

  return FBKSIsInternalInstall__isInternal;
}

void __FBKSIsInternalInstall_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  [v0 cStringUsingEncoding:4];
  FBKSIsInternalInstall__isInternal = os_variant_has_internal_ui();
}

uint64_t FBKSEnvironmentFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"stagingDev"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"staging"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"development"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"demo"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FBKSStringFromEnvironment(__int16 a1)
{
  if ((a1 - 1) > 3u)
  {
    return @"production";
  }

  else
  {
    return off_1E7A8FFA8[(a1 - 1)];
  }
}

void *_FBKSNilIfNSNull(void *a1)
{
  v1 = MEMORY[0x1E695DFB0];
  v2 = a1;
  v3 = [v1 null];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

id Log(uint64_t a1)
{
  if (Log_onceToken1 != -1)
  {
    Log_cold_1();
  }

  v2 = Log_handle;

  return v2;
}

void sub_1B00CB41C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    v3 = Log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [FBKSHTTPClient logHTTPErrorWithResponse:withData:fromRequest:];
    }

    objc_end_catch();
    JUMPOUT(0x1B00CB3BCLL);
  }

  _Unwind_Resume(a1);
}

void __Log_block_invoke()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "http");
  v2 = Log_handle;
  Log_handle = v1;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id Log_0(uint64_t a1)
{
  if (Log_onceToken1_0 != -1)
  {
    Log_cold_1_0();
  }

  v2 = Log_handle_0;

  return v2;
}

void __Log_block_invoke_0()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "2p-spi");
  v2 = Log_handle_0;
  Log_handle_0 = v1;
}

uint64_t FBKSIsValidErrorResponse(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForKey:@"errors"];
    v3 = _FBKSNilIfNSNull(v2);

    if (v3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id FBKSErrorForDict(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForKeyedSubscript:@"code"];
    v3 = _FBKSNilIfNSNull(v2);

    v4 = [v1 objectForKeyedSubscript:@"message"];
    v5 = _FBKSNilIfNSNull(v4);

    v6 = 0;
    if (v3 && v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 integerValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v5;
        }

        else
        {
          v8 = &stru_1F25DB460;
        }

        v9 = MEMORY[0x1E696ABC0];
        v12 = @"message";
        v13[0] = v8;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        v6 = [v9 errorWithDomain:@"com.apple.FeedbackService" code:v7 userInfo:v10];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t FBKSErrorContainsSP2ErrorCode(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"FBKSSeedPortalErrorsKey"];

  v6 = [v3 userInfo];
  v7 = [v6 objectForKey:@"FBKSAggregatedErrorsKey"];

  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v23 + 1) + 8 * v12) code] == a2)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

LABEL_21:
      v17 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_23;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v13 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v8);
        }

        if (FBKSErrorContainsSP2ErrorCode(*(*(&v19 + 1) + 8 * v16), a2))
        {
          goto LABEL_21;
        }

        if (v14 == ++v16)
        {
          v14 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

LABEL_20:
  v17 = 0;
LABEL_22:

LABEL_23:
  return v17;
}

id FBKSError(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBKSError() with stringError == nil"];
    v11 = [v9 exceptionWithName:@"InvalidParameterException" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v4 = v3;
  v5 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.FeedbackService" code:a1 userInfo:v6];

  return v7;
}

id FBKSLog(uint64_t a1)
{
  if (FBKSLog_onceToken != -1)
  {
    FBKSLog_cold_1();
  }

  v2 = FBKSLog_handle;

  return v2;
}

void __FBKSLog_block_invoke()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "shared");
  v2 = FBKSLog_handle;
  FBKSLog_handle = v1;
}

id FBKSSP2Log(uint64_t a1)
{
  if (FBKSSP2Log_onceToken != -1)
  {
    FBKSSP2Log_cold_1();
  }

  v2 = FBKSSP2Log_handle;

  return v2;
}

void __FBKSSP2Log_block_invoke()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "sp2");
  v2 = FBKSSP2Log_handle;
  FBKSSP2Log_handle = v1;
}

uint64_t FBKSHasInternalDiagnostics(uint64_t a1, uint64_t a2)
{
  if (FBKSHasInternalDiagnostics_onceToken != -1)
  {
    FBKSHasInternalDiagnostics_cold_1();
  }

  return FBKSHasInternalDiagnostics__isInternal;
}

void __FBKSHasInternalDiagnostics_block_invoke()
{
  v1 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v1;
  [v1 UTF8String];
  FBKSHasInternalDiagnostics__isInternal = os_variant_has_internal_diagnostics();
}

uint64_t FBKSHasInternalUI(uint64_t a1, uint64_t a2)
{
  if (FBKSHasInternalUI_onceToken != -1)
  {
    FBKSHasInternalUI_cold_1();
  }

  return FBKSHasInternalUI__isInternal;
}

void __FBKSHasInternalUI_block_invoke()
{
  v1 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v1;
  [v1 UTF8String];
  FBKSHasInternalUI__isInternal = os_variant_has_internal_ui();
}

id Log_1(uint64_t a1)
{
  if (Log_onceToken[0] != -1)
  {
    Log_cold_1_1();
  }

  v2 = Log_handle_1;

  return v2;
}

void __Log_block_invoke_1()
{
  v3 = +[_TtC15FeedbackService11FBKSStrings FeedbackServiceBundleIdentifier];
  v0 = v3;
  v1 = os_log_create([v3 UTF8String], "device-token");
  v2 = Log_handle_1;
  Log_handle_1 = v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

Swift::String __swiftcall FBKSLocalizedString(key:)(Swift::String key)
{
  type metadata accessor for AClassInFBKS();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1B014C9AC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

BOOL sub_1B00CED20(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void sub_1B00CED8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t User.loggedInDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for User(0) + 24);
  v4 = sub_1B014CADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for User(uint64_t a1)
{
  result = qword_1EB6C3AC0;
  if (!qword_1EB6C3AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t User.sessionExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for User(0) + 28);
  v4 = sub_1B014CADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL User.hasExpiredSession.getter()
{
  v0 = sub_1B014CADC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014CACC();
  type metadata accessor for User(0);
  sub_1B00CF030();
  v4 = sub_1B014CBFC();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

unint64_t sub_1B00CF030()
{
  result = qword_1EB6C3AB8;
  if (!qword_1EB6C3AB8)
  {
    sub_1B014CADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3AB8);
  }

  return result;
}

uint64_t User.description.getter()
{
  sub_1B014D01C();

  v1 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v1);

  MEMORY[0x1B271E7F0](0xD000000000000013, 0x80000001B015BE50);
  if (*(v0 + 8))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B271E7F0](v2, v3);

  return 0x69202D2072657355;
}

uint64_t sub_1B00CF1B4(uint64_t a1)
{
  result = sub_1B014CADC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B00CF238()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3AD0);
  __swift_project_value_buffer(v0, qword_1EB6C3AD0);
  return sub_1B014CB4C();
}

id sub_1B00CF2B8()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonAdminConnection()) init];
  qword_1EB6C5240 = result;
  return result;
}

id sub_1B00CF334()
{
  v1 = OBJC_IVAR____TtC15FeedbackService21DaemonAdminConnection____lazy_storage___connectionForAdmin;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService21DaemonAdminConnection____lazy_storage___connectionForAdmin);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService21DaemonAdminConnection____lazy_storage___connectionForAdmin);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1B00CF3A4(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1B00CF3A4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6C3A50 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C3AD0);
  v5 = sub_1B014CB3C();
  v6 = sub_1B014CF6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_1B00CF694(a2);
    v11 = sub_1B00E6C2C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B00C4000, v5, v6, "%s: Setting up connection admin daemon connection", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B271F750](v8, -1, -1);
    MEMORY[0x1B271F750](v7, -1, -1);
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v13 = sub_1B014CC0C();
  v14 = [v12 initWithMachServiceName:v13 options:0];

  v15 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonAdminInterface()) init];
  [v14 setRemoteObjectInterface_];

  [v14 setExportedObject_];
  v23 = sub_1B00CF718;
  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EDC7C;
  v22 = &block_descriptor;
  v16 = _Block_copy(&v19);
  [v14 setInterruptionHandler_];
  _Block_release(v16);
  v23 = sub_1B00CF874;
  v24 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B00EDC7C;
  v22 = &block_descriptor_7;
  v17 = _Block_copy(&v19);
  [v14 setInvalidationHandler_];
  _Block_release(v17);
  [v14 resume];
  return v14;
}

uint64_t sub_1B00CF694(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v3 = sub_1B014CC1C();

  return v3;
}

id FeedbackDaemonAdminInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B00CF718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = 0x80000001B015BF70;
  sub_1B014D2EC();

  if (qword_1EB6C3A50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3AD0);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon interrupted from admin service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

void sub_1B00CF874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = 0x80000001B015BF30;
  sub_1B014D2EC();

  if (qword_1EB6C3A50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3AD0);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon invalidated from admin service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

uint64_t sub_1B00CFA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = sub_1B00CF334();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00FA1A0;
  aBlock[3] = a5;
  v13 = _Block_copy(aBlock);

  v14 = [v11 *a6];
  _Block_release(v13);

  sub_1B014CFFC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B30, &qword_1B014F288);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void sub_1B00CFB7C(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B014F1E0;
  sub_1B014D01C();

  swift_getErrorValue();
  v4 = sub_1B014D29C();
  MEMORY[0x1B271E7F0](v4);

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = 0xD00000000000001DLL;
  *(v3 + 40) = 0x80000001B015BFF0;
  sub_1B014D2EC();

  v5 = sub_1B014C9BC();
  a2();
}

uint64_t FeedbackDaemonAdminInterface.init()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FeedbackDaemonAdminInterface();
  [objc_msgSendSuper2(&v6 init)];
  sub_1B00D0014(0, &qword_1EB6C3AE8, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B014F1F0;
  v2 = sub_1B00D0014(0, &qword_1EB6C3AF8, 0x1E696ABC0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B00, &qword_1B014F208);
  *(v1 + 32) = v2;
  v3 = sub_1B00D0014(0, &qword_1EB6C3B08, 0x1E695DF20);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B10, &qword_1B014F210);
  *(v1 + 64) = v3;
  v4 = sub_1B00D0014(0, &qword_1EB6C3B18, 0x1E696AEC0);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B20, qword_1B014F218);
  *(v1 + 96) = v4;
  MEMORY[0x1B271EA70](v1);
  result = sub_1B014CECC();
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B00D0014(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1B00D0098(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
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

uint64_t Failure.message.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B00D0280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00D02C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FBKSForm.asJSON.getter()
{
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  type metadata accessor for FBKSForm();
  sub_1B00D207C(&qword_1EB6C3B38, &protocol conformance descriptor for FBKSForm);
  v0 = sub_1B014C86C();

  return v0;
}

uint64_t FBKSForm.asFBAURLScheme(isSurvey:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v84 = sub_1B014C8CC();
  v5 = *(v84 - 8);
  v88 = v5;
  v6 = MEMORY[0x1EEE9AC00](v84);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v71 - v8;
  v9 = sub_1B014C8AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B014C93C();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014C92C();
  if (a1)
  {
    v15 = 0x755368636E75616CLL;
  }

  else
  {
    v15 = 0x654668636E75616CLL;
  }

  if (a1)
  {
    v16 = 0xEC00000079657672;
  }

  else
  {
    v16 = 0xEE006B6361626465;
  }

  MEMORY[0x1B271E400](v15, v16);
  sub_1B014C91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B48, &qword_1B014F320);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v83 = *(v5 + 72);
  *(swift_allocObject() + 16) = xmmword_1B014F1E0;
  v18 = (v3 + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v19 = v18[1];
  v90 = *v18;
  v91 = v19;

  sub_1B014C89C();
  sub_1B00D1FA8();
  sub_1B014CFEC();
  (*(v10 + 8))(v12, v9);

  v82 = v17;
  sub_1B014C8BC();

  v86 = v14;
  sub_1B014C8EC();
  v20 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  v21 = *(v3 + v20);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v79 = v24 & *(v21 + 64);
  v25 = (v23 + 63) >> 6;
  v80 = 0x80000001B015C080;
  v81 = (v88 + 32);
  v77 = v21;

  v27 = 0;
  v75 = v22;
  v76 = v25;
  v28 = v79;
  if (v79)
  {
    goto LABEL_14;
  }

  do
  {
LABEL_10:
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_84;
    }

    if (v29 >= v25)
    {

      v70 = v86;
      sub_1B014C8FC();
      return (*(v71 + 8))(v70, v72);
    }

    v28 = *(v22 + 8 * v29);
    ++v27;
  }

  while (!v28);
  v27 = v29;
LABEL_14:
  v79 = (v28 - 1) & v28;
  v78 = v27;
  v30 = __clz(__rbit64(v28)) | (v27 << 6);
  v31 = (*(v77 + 48) + 16 * v30);
  v32 = v31[1];
  v33 = *(*(v77 + 56) + 8 * v30);
  v34 = *(v33 + 16);
  v88 = *v31;
  sub_1B00D1FFC(v88, v32);

  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v37 = (v33 + 40 + 16 * v35);
  while (1)
  {
    if (v34 == v35)
    {

      v44 = *(v36 + 16);
      if (v44 >= 2)
      {
        v45 = 0;
        v46 = v36 + 40;
        v85 = *(v36 + 16);
        while (1)
        {
          if (v45 >= *(v36 + 16))
          {
            goto LABEL_83;
          }

          v47 = v36;
          v89 = v45;
          v90 = 0x6E6F697473657571;
          v91 = 0xEA00000000005B73;

          v48 = sub_1B014D22C();
          MEMORY[0x1B271E7F0](v48);

          MEMORY[0x1B271E7F0](23389, 0xE200000000000000);
          if (v32 > 2)
          {
            switch(v32)
            {
              case 3:
                v49 = 0x657275746165663ALL;
                v51 = 0xEF6E69616D6F645FLL;
                break;
              case 4:
                v49 = 0x6165665F6275733ALL;
                v50 = 1701999988;
                goto LABEL_45;
              case 5:
                v49 = 0xD000000000000012;
                v51 = v80;
                break;
              default:
                goto LABEL_42;
            }
          }

          else
          {
            if (v32)
            {
              if (v32 == 1)
              {
                v51 = 0xE500000000000000;
                v49 = 0x616572613ALL;
                goto LABEL_46;
              }

              if (v32 == 2)
              {
                v49 = 0x706972637365643ALL;
                v50 = 1852795252;
LABEL_45:
                v51 = v50 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                goto LABEL_46;
              }

LABEL_42:
              v49 = v88;
              v51 = v32;
              goto LABEL_46;
            }

            v51 = 0xE600000000000000;
            v49 = 0x656C7469743ALL;
          }

LABEL_46:
          sub_1B00D1FFC(v88, v32);
          MEMORY[0x1B271E7F0](v49, v51);

          MEMORY[0x1B271E7F0](93, 0xE100000000000000);
          v53 = sub_1B014C8DC();
          if (*v52)
          {
            v54 = v52;
            sub_1B014C8BC();

            v55 = *v54;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v54 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v55 = sub_1B00D151C(0, v55[2] + 1, 1, v55, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
              *v54 = v55;
            }

            v58 = v55[2];
            v57 = v55[3];
            if (v58 >= v57 >> 1)
            {
              v55 = sub_1B00D151C((v57 > 1), v58 + 1, 1, v55, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
              *v54 = v55;
            }

            v55[2] = v58 + 1;
            (*v81)(v55 + v82 + v58 * v83, v87, v84);
          }

          else
          {
          }

          result = v53(&v90, 0);
          ++v45;
          v46 += 16;
          v36 = v47;
          if (v85 == v45)
          {

            result = sub_1B00D2010(v88, v32);
            v22 = v75;
            v25 = v76;
            goto LABEL_79;
          }
        }
      }

      v25 = v76;
      if (!v44)
      {
        sub_1B00D2010(v88, v32);

LABEL_78:
        v22 = v75;
LABEL_79:
        v27 = v78;
        v28 = v79;
        if (!v79)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      v90 = 0x6E6F697473657571;
      v91 = 0xE90000000000005BLL;
      if (v32 > 2)
      {
        switch(v32)
        {
          case 3:
            v59 = 0x657275746165663ALL;
            v61 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v59 = 0x6165665F6275733ALL;
            v60 = 1701999988;
            goto LABEL_69;
          case 5:
            v59 = 0xD000000000000012;
            v61 = v80;
            break;
          default:
LABEL_66:
            v59 = v88;
            v61 = v32;
            break;
        }
      }

      else
      {
        if (v32)
        {
          if (v32 == 1)
          {
            v61 = 0xE500000000000000;
            v59 = 0x616572613ALL;
            goto LABEL_70;
          }

          if (v32 == 2)
          {
            v59 = 0x706972637365643ALL;
            v60 = 1852795252;
LABEL_69:
            v61 = v60 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_70;
          }

          goto LABEL_66;
        }

        v61 = 0xE600000000000000;
        v59 = 0x656C7469743ALL;
      }

LABEL_70:
      v62 = v88;
      sub_1B00D1FFC(v88, v32);
      MEMORY[0x1B271E7F0](v59, v61);

      sub_1B00D2010(v62, v32);
      MEMORY[0x1B271E7F0](93, 0xE100000000000000);
      v64 = sub_1B014C8DC();
      if (*v63)
      {
        v65 = v63;
        sub_1B014C8BC();

        v66 = *v65;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *v65 = v66;
        if ((v67 & 1) == 0)
        {
          v66 = sub_1B00D151C(0, v66[2] + 1, 1, v66, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
          *v65 = v66;
        }

        v69 = v66[2];
        v68 = v66[3];
        if (v69 >= v68 >> 1)
        {
          v66 = sub_1B00D151C((v68 > 1), v69 + 1, 1, v66, &qword_1EB6C3B48, &qword_1B014F320, MEMORY[0x1E6968178]);
          *v65 = v66;
        }

        v27 = v78;
        v66[2] = v69 + 1;
        (*v81)(v66 + v82 + v69 * v83, v74, v84);
        result = v64(&v90, 0);
        v22 = v75;
        v25 = v76;
        v28 = v79;
        if (!v79)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      result = v64(&v90, 0);
      goto LABEL_78;
    }

    if (v35 >= *(v33 + 16))
    {
      break;
    }

    ++v35;
    v39 = *(v37 - 1);
    v38 = *v37;
    v37 += 2;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v90 = v36;
      if ((result & 1) == 0)
      {
        result = sub_1B00D16F8(0, *(v36 + 16) + 1, 1);
        v36 = v90;
      }

      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        result = sub_1B00D16F8((v41 > 1), v42 + 1, 1);
        v36 = v90;
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

char *sub_1B00D12DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B00D13E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B70, &qword_1B014F350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B00D151C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B00D16F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B00D1758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B00D1718(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B00D1864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B00D1738(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B00D1980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B00D1758(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B00D1864(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B60, &qword_1B014F340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B00D1980(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s15FeedbackService8FBKSFormC12setQuestions13nsMutableDictySo19NSMutableDictionaryC_tF_0()
{
  sub_1B014CF0C();
  sub_1B014CF1C();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  if (!*(&v24 + 1))
  {
LABEL_19:
  }

  v0 = MEMORY[0x1E69E7CC8];
  v1 = MEMORY[0x1E69E6158];
  v2 = &qword_1EB6C3B80;
  while (1)
  {
    sub_1B00D20C0(&v29, &v23);
    sub_1B00D20C0(&v27, v22);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(&v23);
LABEL_4:
    sub_1B014CF1C();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (!*(&v24 + 1))
    {
      goto LABEL_19;
    }
  }

  sub_1B00D20D0(&v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, qword_1B0151250);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(&v23);

    goto LABEL_4;
  }

  v3 = v1;
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[0] = v0;
  v6 = sub_1B013E0D0(v20, v21);
  v8 = v0[2];
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (!v10)
  {
    v12 = v7;
    if (v0[3] >= v11)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      v15 = v6;
      sub_1B013F190();
      v6 = v15;
      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      v14 = v6;

      v0 = *&v22[0];
      *(*(*&v22[0] + 56) + 8 * v14) = v20;

      __swift_destroy_boxed_opaque_existential_0(&v23);
    }

    else
    {
      sub_1B013E598(v11, isUniquelyReferenced_nonNull_native);
      v6 = sub_1B013E0D0(v20, v21);
      if ((v12 & 1) != (v13 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_16:
      v0 = *&v22[0];
      *(*&v22[0] + 8 * (v6 >> 6) + 64) |= 1 << v6;
      v16 = (v0[6] + 16 * v6);
      *v16 = v20;
      v16[1] = v21;
      *(v0[7] + 8 * v6) = v20;
      __swift_destroy_boxed_opaque_existential_0(&v23);
      v17 = v0[2];
      v10 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v10)
      {
        goto LABEL_21;
      }

      v0[2] = v18;
    }

    v2 = v4;
    v1 = v3;
    goto LABEL_4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1B014D28C();
  __break(1u);
  return result;
}

uint64_t _s15FeedbackService8FBKSFormC8fromJSON4dataACSg10Foundation4DataV_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1B014C82C();
  swift_allocObject();
  sub_1B014C81C();
  type metadata accessor for FBKSForm();
  sub_1B00D207C(&qword_1EB6C3B78, &protocol conformance descriptor for FBKSForm);
  sub_1B014C80C();

  return v3;
}

unint64_t sub_1B00D1FA8()
{
  result = qword_1EDAE6EF0;
  if (!qword_1EDAE6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6EF0);
  }

  return result;
}

uint64_t sub_1B00D1FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B00D2010(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B00D2024(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B00D207C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSForm();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1B00D20C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B00D20D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B00D2194()
{
  sub_1B014D01C();

  v1 = *(v0 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xE400000000000000;
      v3 = 1885956947;
    }

    else if (v1 == 4)
    {
      v2 = 0xEC00000061746164;
      v3 = 0x2064696C61766E49;
    }

    else
    {
      v2 = 0xEF646574656C6564;
      v3 = 0x20746E65746E6F43;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action))
  {
    if (v1 == 1)
    {
      v2 = 0xEB000000006E776FLL;
      v3 = 0x642073626D756854;
    }

    else
    {
      v2 = 0xEE006E7265636E6FLL;
      v3 = 0x632074726F706552;
    }
  }

  else
  {
    v2 = 0xE900000000000070;
    v3 = 0x752073626D756854;
  }

  MEMORY[0x1B271E7F0](v3, v2);

  return 0xD000000000000010;
}

uint64_t FBKSEvaluation.EvaluationError.hashValue.getter()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t static FBKSEvaluation.Subject.ID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B014CB1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for FBKSEvaluation.Subject(0);

  return swift_storeEnumTagMultiPayload();
}

id static FBKSEvaluation.Subject.evaluatedFeature(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for FBKSEvaluation.Subject(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t FBKSEvaluation.Subject.description.getter()
{
  v1 = v0;
  v2 = sub_1B014CB1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B00D52E0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    strcpy(v17, "interaction: ");
    HIWORD(v17[1]) = -4864;
    v10 = [v9 description];
    v11 = sub_1B014CC1C();
    v13 = v12;

    MEMORY[0x1B271E7F0](v11, v13);

    return v17[0];
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v17[0] = 540697705;
    v17[1] = 0xE400000000000000;
    sub_1B00DC264(&qword_1EB6C3B90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1B014D22C();
    MEMORY[0x1B271E7F0](v15);

    v14 = v17[0];
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

void FBKSEvaluation.Subject.evaluationID.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B00D52E0(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
    swift_beginAccess();
    sub_1B00DE660(v7 + v8, a1, &qword_1EB6C3B98, &qword_1B014F360);
  }

  else
  {
    v9 = sub_1B014CB1C();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v6, v9);
    (*(v10 + 56))(a1, 0, 1, v9);
  }
}

void FBKSEvaluation.Subject.presented(_:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B014CB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B00D52E0(v3, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    sub_1B0101878(a1, a2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    _s15FeedbackService12FBKSDonationC9presented12evaluationID10completiony10Foundation4UUIDV_ys5Error_pSgctFZ_0(v9, a1, a2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t FBKSEvaluation.Subject.presented()()
{
  v1[2] = v0;
  v2 = sub_1B014CB1C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for FBKSEvaluation.Subject(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B00D2AA8, 0, 0);
}

uint64_t sub_1B00D2AA8()
{
  sub_1B00D52E0(v0[2], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v0[10] = *v2;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1B00D2D94;

    return sub_1B0101EB0();
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v2, v0[3]);
    type metadata accessor for FBKSDonation(0);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1B00D2BF8;
    v6 = v0[5];

    return static FBKSDonation.presented(evaluationID:)(v6);
  }
}

uint64_t sub_1B00D2BF8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B00D2F20;
  }

  else
  {
    v2 = sub_1B00D2D0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00D2D0C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B00D2D94()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B00D2FA8;
  }

  else
  {
    v2 = sub_1B00D2EA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00D2EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B00D2F20()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B00D2FA8()
{

  v1 = *(v0 + 8);

  return v1();
}

void FBKSEvaluation.Subject.evaluate(action:formResponse:completion:)(char *a1, uint64_t *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  sub_1B00D52E0(v5, v12);
  v17 = type metadata accessor for FBKSEvaluation(0);
  v18 = objc_allocWithZone(v17);
  sub_1B00D52E0(v12, &v18[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v18[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v13;
  v19 = &v18[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v19 = v14;
  v19[1] = v15;
  v19[2] = v16;
  sub_1B00DB7AC(v14, v15, v16);
  v22.receiver = v18;
  v22.super_class = v17;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_1B00DB7F0(v12);

  v21 = v20;
  sub_1B00DB84C(v21, a3, a4, v21);
}

id FBKSEvaluation.__allocating_init(subject:action:formResponse:)(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  v7 = objc_allocWithZone(v3);
  LOBYTE(a2) = *a2;
  v12 = *a3;
  v8 = *(a3 + 2);
  sub_1B00D52E0(a1, &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = a2;
  v9 = &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v9 = v12;
  *(v9 + 2) = v8;
  v13.receiver = v7;
  v13.super_class = v3;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_1B00DB7F0(a1);
  return v10;
}

void sub_1B00D3234(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v12 - v8);
  sub_1B00DE660(a1, &v12 - v8, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    a2(v10, 1);
  }

  else
  {
    sub_1B00DE9C0(v9, &qword_1EB6C3C30, &qword_1B014F3F0);
    a2(a4, 0);
  }
}

uint64_t FBKSEvaluation.Subject.evaluate(action:formResponse:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 32) = v2;
  v6 = sub_1B014CB1C();
  *(v3 + 40) = v6;
  *(v3 + 48) = *(v6 - 8);
  *(v3 + 56) = swift_task_alloc();
  type metadata accessor for FBKSEvaluation.Subject(0);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 120) = *a1;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B00D346C, 0, 0);
}

uint64_t sub_1B00D346C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 120);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_1B00D52E0(*(v0 + 32), v5);
  v6 = type metadata accessor for FBKSEvaluation(0);
  v7 = objc_allocWithZone(v6);
  sub_1B00D52E0(v5, &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v3;
  v8 = &v7[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v8 = v4;
  v8[1] = v1;
  v8[2] = v2;
  sub_1B00DB7AC(v4, v1, v2);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 96) = objc_msgSendSuper2((v0 + 16), sel_init);
  sub_1B00DB7F0(v5);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1B00D35B0;
  v10 = *(v0 + 56);

  return sub_1B00DA454(v10);
}

uint64_t sub_1B00D35B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B00D3750;
  }

  else
  {
    v2 = sub_1B00D36C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00D36C4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_1B00D3750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FBKSEvaluation.Subject.represents(_:)(uint64_t a1)
{
  v35 = type metadata accessor for FBKSEvaluation.Subject(0);
  v2 = MEMORY[0x1EEE9AC00](v35);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v30 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = sub_1B014CB1C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v19 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  v33 = a1;
  sub_1B00DE660(a1 + v19, v11, &qword_1EB6C3B98, &qword_1B014F360);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) != 1)
  {
    v23 = *(v13 + 32);
    v31 = v18;
    v23(v18, v11, v12);
    sub_1B00D52E0(v34, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v6;
      v25 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
      swift_beginAccess();
      v26 = v32;
      sub_1B00DE660(v24 + v25, v32, &qword_1EB6C3B98, &qword_1B014F360);
      if (v20(v26, 1, v12) == 1)
      {
        sub_1B00DE9C0(v26, &qword_1EB6C3B98, &qword_1B014F360);
        sub_1B00DC12C();
        v22 = sub_1B014CF9C();

        (*(v13 + 8))(v31, v12);
        return v22 & 1;
      }
    }

    else
    {
      v26 = v6;
    }

    v27 = v31;
    v23(v16, v26, v12);
    v22 = sub_1B014CAFC();
    v28 = *(v13 + 8);
    v28(v16, v12);
    v28(v27, v12);
    return v22 & 1;
  }

  sub_1B00DE9C0(v11, &qword_1EB6C3B98, &qword_1B014F360);
  sub_1B00D52E0(v34, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v4;
    sub_1B00DC12C();
    v22 = sub_1B014CF9C();
  }

  else
  {
    sub_1B00DB7F0(v4);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1B00D3BC4()
{
  if (*v0)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B00D3BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B00D3CE0(uint64_t a1)
{
  v2 = sub_1B00DC1BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D3D1C(uint64_t a1)
{
  v2 = sub_1B00DC1BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00D3D64(uint64_t a1)
{
  v2 = sub_1B00DC2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D3DA0(uint64_t a1)
{
  v2 = sub_1B00DC2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00D3DDC()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t sub_1B00D3E20(uint64_t a1)
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t sub_1B00D3E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B00D3EE0(uint64_t a1)
{
  v2 = sub_1B00DC210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D3F1C(uint64_t a1)
{
  v2 = sub_1B00DC210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FBKSEvaluation.Subject.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BA0, &qword_1B014F380);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v23 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BA8, &qword_1B014F388);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v23 - v4;
  v6 = sub_1B014CB1C();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BB0, &qword_1B014F390);
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DC1BC();
  sub_1B014D35C();
  sub_1B00D52E0(v31, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v11;
    v35 = 1;
    sub_1B00DC210();
    v16 = v27;
    v17 = v32;
    sub_1B014D19C();
    v33 = v15;
    type metadata accessor for FBKSInteraction(0);
    sub_1B00DC264(&qword_1EDAE6B20, type metadata accessor for FBKSInteraction, &protocol conformance descriptor for FBKSInteraction);
    v18 = v30;
    sub_1B014D21C();
    (*(v29 + 8))(v16, v18);
    (*(v12 + 8))(v14, v17);
  }

  else
  {
    v20 = v24;
    v19 = v25;
    (*(v24 + 32))(v8, v11, v25);
    v34 = 0;
    sub_1B00DC2AC();
    v21 = v32;
    sub_1B014D19C();
    sub_1B00DC264(&qword_1EDAE7200, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v22 = v28;
    sub_1B014D21C();
    (*(v26 + 8))(v5, v22);
    (*(v20 + 8))(v8, v19);
    (*(v12 + 8))(v14, v21);
  }
}

uint64_t FBKSEvaluation.Subject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BD0, &qword_1B014F398);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v47 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BD8, &qword_1B014F3A0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE0, &qword_1B014F3A8);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for FBKSEvaluation.Subject(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B00DC1BC();
  v19 = v49;
  sub_1B014D34C();
  if (!v19)
  {
    v49 = v15;
    v39 = v12;
    v40 = v17;
    v20 = v46;
    v21 = v47;
    v22 = v45;
    v23 = v48;
    v24 = sub_1B014D18C();
    if (*(v24 + 16) == 1)
    {
      v38 = v24;
      if (*(v24 + 32))
      {
        v37 = v9;
        v53 = 1;
        sub_1B00DC210();
        sub_1B014D0EC();
        type metadata accessor for FBKSInteraction(0);
        sub_1B00DC264(&qword_1EB6C3BF0, type metadata accessor for FBKSInteraction, &protocol conformance descriptor for FBKSInteraction);
        v25 = v41;
        sub_1B014D17C();
        (*(v44 + 8))(v21, v25);
        (*(v22 + 8))(v8, v6);
        swift_unknownObjectRelease();
        v26 = v39;
        *v39 = v51;
        swift_storeEnumTagMultiPayload();
        v27 = v26;
        v28 = v40;
        sub_1B00DC300(v27, v40);
        v29 = v48;
      }

      else
      {
        v52 = 0;
        sub_1B00DC2AC();
        sub_1B014D0EC();
        v29 = v23;
        v37 = v9;
        sub_1B014CB1C();
        sub_1B00DC264(&qword_1EDAE6EA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v34 = v49;
        v35 = v43;
        sub_1B014D17C();
        (*(v42 + 8))(v20, v35);
        (*(v22 + 8))(v8, v6);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v28 = v40;
        sub_1B00DC300(v34, v40);
      }

      sub_1B00DC300(v28, v29);
    }

    else
    {
      v30 = sub_1B014D05C();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
      *v32 = v9;
      sub_1B014D0FC();
      sub_1B014D04C();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

BOOL sub_1B00D4A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1B00D4A68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 37;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4A9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4AD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4B04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4B38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 39;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4B6C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B00D4BA0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FBKSEvaluation.Action.description.getter()
{
  v1 = *v0;
  v2 = 0x752073626D756854;
  v3 = 1885956947;
  v4 = 0x2064696C61766E49;
  if (v1 != 4)
  {
    v4 = 0x20746E65746E6F43;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x642073626D756854;
  if (v1 != 1)
  {
    v5 = 0x632074726F706552;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static FBKSEvaluation.Action.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EB6C3B88 = a1;
}

uint64_t sub_1B00D4DEC(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EB6C3B88 = v1;
}

FeedbackService::FBKSEvaluation::Action_optional __swiftcall FBKSEvaluation.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B014D0DC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B00D4EA8(unsigned __int8 a1)
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00D4FD4(uint64_t a1)
{
  sub_1B014CCAC();
}

void sub_1B00D50FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000070;
  v4 = 0x752073626D756854;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0xEC00000061746164;
  v8 = 0x2064696C61766E49;
  if (v2 != 4)
  {
    v8 = 0x20746E65746E6F43;
    v7 = 0xEF646574656C6564;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E776FLL;
  v10 = 0x642073626D756854;
  if (v2 != 1)
  {
    v10 = 0x632074726F706552;
    v9 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B00D51E0()
{
  v1 = *v0;
  v2 = 0x752073626D756854;
  v3 = 1885956947;
  v4 = 0x2064696C61766E49;
  if (v1 != 4)
  {
    v4 = 0x20746E65746E6F43;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x642073626D756854;
  if (v1 != 1)
  {
    v5 = 0x632074726F706552;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B00D52E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00D53F4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C3B88;
}

uint64_t FBKSEvaluation.FormResponse.feedbackID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FBKSEvaluation.FormResponse.feedbackID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FBKSEvaluation.FormResponse.answers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

FeedbackService::FBKSEvaluation::FormResponse __swiftcall FBKSEvaluation.FormResponse.init(feedbackID:answers:)(Swift::String feedbackID, Swift::OpaquePointer answers)
{
  *v2 = feedbackID;
  *(v2 + 16) = answers;
  result.feedbackID = feedbackID;
  result.answers = answers;
  return result;
}

uint64_t static FBKSEvaluation.FormResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  return sub_1B00D80AC(v2, v3);
}

uint64_t sub_1B00D55B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1B013E0D0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1B014D25C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B00D5754(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a2;
  v6 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (*&v11 == 0.0)
        {
          v14 = v7;
          do
          {
            v7 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_295:
              v235 = a1;
              v236 = v11;
              sub_1B00DE580(v3, v11, v2);
              sub_1B00DE5AC(v235, v5, 0);
              sub_1B00DE5AC(v3, v236, v2);
              v28 = v4;
              v4 = v385;
              goto LABEL_361;
            }

            if (v7 >= v12)
            {
              return 1;
            }

            v15 = *(v8 + 8 * v7);
            ++v14;
          }

          while (!v15);
          v13 = __clz(__rbit64(v15));
          v383 = (v15 - 1) & v15;
        }

        else
        {
          v13 = __clz(__rbit64(v11));
          v383 = (v11 - 1) & v11;
        }

        v16 = v13 | (v7 << 6);
        v17 = (*(v6 + 48) + 16 * v16);
        v18 = *v17;
        v4 = v17[1];
        v19 = *(v6 + 56) + 24 * v16;
        v20 = *v19;
        v21 = *(v19 + 8);
        v3 = *(v19 + 16);

        v384 = v21;
        sub_1B00DE580(v20, v21, v3);
        v2 = v4 == 0;
        if (*&v4 == 0.0)
        {
          return v2;
        }

        v385 = v20;
        v22 = sub_1B013E0D0(v18, v4);
        v23 = v5;
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v224 = v385;
          goto LABEL_292;
        }

        v26 = *(v23 + 56) + 24 * v22;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        v5 = v23;
        if (v29 > 2)
        {
          break;
        }

        if (*(v26 + 16))
        {
          v30 = v385;
          if (v29 == 1)
          {
            sub_1B00DE5AC(*v26, v27, 1);
            if (v3 != 1)
            {
              goto LABEL_287;
            }

            *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v385, v384, 1));
            v31 = v28 == v385;
            goto LABEL_38;
          }

          if (v3 != 2)
          {
            sub_1B00DE5AC(*v26, v27, 2);
LABEL_287:
            v224 = v30;
LABEL_292:
            v231 = v384;
            v232 = v3;
LABEL_363:
            sub_1B00DE5AC(v224, v231, v232);
            return 0;
          }

          sub_1B00DE5AC(*v26, v27, 2);
          *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v385, v384, 2));
          v31 = *&v28 == *&v385;
LABEL_38:
          v11 = v383;
          if (!v31)
          {
            return v2;
          }
        }

        else
        {
          sub_1B00DE5AC(*v26, v27, 0);
          v30 = v385;
          if (v3)
          {
            goto LABEL_287;
          }

          *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v385, v384, 0));
          v11 = v383;
          if ((v28 ^ v385))
          {
            return v2;
          }
        }
      }

      if (v29 == 3)
      {
        v4 = v385;
        if (v3 != 3)
        {
          v230 = *(v26 + 8);

          v226 = v28;
          v227 = v230;
          v228 = 3;
          goto LABEL_291;
        }

        v3 = v384;
        if (v28 == v385 && v27 == v384)
        {
          v380 = 3;

          v40 = v385;
          v41 = v384;
          v42 = 3;
LABEL_45:
          sub_1B00DE5AC(v40, v41, v42);
          goto LABEL_48;
        }

        v3 = *(v26 + 8);
        *&v4 = COERCE_DOUBLE(sub_1B014D25C());

        sub_1B00DE5AC(v28, v3, 3);
        v37 = v385;
        v38 = v384;
        v39 = 3;
        goto LABEL_42;
      }

      v4 = v385;
      if (v29 == 4)
      {
        break;
      }

      if (v3 != 5)
      {
        v229 = *(v26 + 8);

        v227 = v229;
        v228 = 5;
        goto LABEL_291;
      }

      v3 = *(v26 + 8);
      sub_1B00DE580(*v26, v27, 5);
      sub_1B00DE580(v28, v3, 5);
      sub_1B00DE580(v385, v384, 5);
      *&v4 = COERCE_DOUBLE(sub_1B00D5754(v28, v385));
      sub_1B00DE5AC(v385, v384, 5);
      sub_1B00DE5AC(v28, v3, 5);
      sub_1B00DE5AC(v28, v3, 5);
      v37 = v385;
      v38 = v384;
      v39 = 5;
LABEL_42:
      *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v37, v38, v39));
      v11 = v383;
      if ((v4 & 1) == 0)
      {
        return v2;
      }
    }

    if (v3 != 4)
    {
      v225 = *(v26 + 8);

      v227 = v225;
      v228 = 4;
LABEL_291:
      sub_1B00DE5AC(v226, v227, v228);
      v224 = v4;
      goto LABEL_292;
    }

    v32 = *(v28 + 16);
    if (v32 != *(v385 + 16))
    {
      v233 = *(v26 + 8);

      sub_1B00DE5AC(v234, v233, 4);
      v224 = v385;
      v231 = v384;
LABEL_362:
      v232 = 4;
      goto LABEL_363;
    }

    v380 = 4;
    if (!v32)
    {
      v2 = *(v26 + 8);

      v35 = v2;
      goto LABEL_47;
    }

    if (v28 != v385)
    {
      break;
    }

    v33 = *(v26 + 8);

    v34 = v385;
    v35 = v33;
LABEL_47:
    sub_1B00DE5AC(v34, v35, 4);
    v3 = v384;
LABEL_48:
    *&a1 = COERCE_DOUBLE(sub_1B00DE5AC(v4, v3, v380));
    v11 = v383;
  }

  v379 = v28 + 32;
  v43 = *(v26 + 8);
  sub_1B00DE580(v28, v27, 4);
  v368 = v43;
  sub_1B00DE580(v28, v43, 4);
  sub_1B00DE580(v385, v384, 4);
  v46 = 0;
  v374 = v28;
  v375 = v32;
  while (1)
  {
    if (v46 >= *(v28 + 16))
    {
      __break(1u);
LABEL_322:
      __break(1u);
      goto LABEL_323;
    }

    if (v46 >= *(v4 + 16))
    {
      goto LABEL_322;
    }

    v54 = v379 + 24 * v46;
    a1 = *v54;
    v55 = *(v54 + 8);
    v56 = *(v54 + 16);
    v57 = v385 + 32 + 24 * v46;
    v23 = *v57;
    v11 = *(v57 + 8);
    LODWORD(v2) = *(v57 + 16);
    v382 = v46;
    if (v56 > 2)
    {
      break;
    }

    if (!v56)
    {
      v3 = *v57;
      v23 = v5;
      v5 = v55;
      v4 = v28;
      if (*(v57 + 16))
      {
        goto LABEL_295;
      }

      v63 = a1;
      v43 = *(v57 + 8);
      sub_1B00DE5AC(a1, v55, 0);
      sub_1B00DE5AC(v3, v43, 0);
      v64 = v3 ^ v63;
      v28 = v4;
      v5 = v23;
      v4 = v385;
      v32 = v375;
      if (v64)
      {
        goto LABEL_361;
      }

      goto LABEL_85;
    }

    if (v56 != 1)
    {
      if (v2 == 2)
      {
        v71 = *&a1;
        v43 = *(v57 + 8);
        sub_1B00DE5AC(a1, v55, 2);
        sub_1B00DE5AC(v23, v43, 2);
        if (v71 != *&v23)
        {
          goto LABEL_361;
        }

        goto LABEL_85;
      }

      v245 = v55;
      v238 = *v57;
      v246 = v28;
      v247 = a1;
      v241 = *(v57 + 8);
      sub_1B00DE580(*v57, v11, v2);
      v242 = v247;
      v28 = v246;
      v243 = v245;
      v244 = 2;
LABEL_301:
      sub_1B00DE5AC(v242, v243, v244);
      v255 = v238;
      v256 = v241;
      v257 = v2;
      goto LABEL_360;
    }

    if (v2 != 1)
    {
      v237 = v55;
      v238 = *v57;
      v239 = v28;
      v240 = a1;
      v241 = *(v57 + 8);
      sub_1B00DE580(*v57, v11, v2);
      v242 = v240;
      v28 = v239;
      v243 = v237;
      v244 = 1;
      goto LABEL_301;
    }

    v43 = a1;
    v58 = *(v57 + 8);
    sub_1B00DE5AC(a1, v55, 1);
    v59 = v58;
    v28 = v374;
    sub_1B00DE5AC(v23, v59, 1);
    if (v43 != v23)
    {
      goto LABEL_361;
    }

LABEL_85:
    v46 = v382 + 1;
    if (v382 + 1 == v32)
    {
      v3 = v384;
      sub_1B00DE5AC(v4, v384, 4);
      LOBYTE(v2) = v368;
      sub_1B00DE5AC(v28, v368, 4);
      v40 = v28;
      v41 = v368;
      v42 = 4;
      goto LABEL_45;
    }
  }

  if (v56 == 3)
  {
    if (v2 != 3)
    {
      v249 = v55;
      v238 = *v57;
      v250 = v28;
      v251 = a1;
      v241 = *(v57 + 8);
      sub_1B00DE580(*v57, v11, v2);
      sub_1B00DE580(v251, v249, 3);
      v242 = v251;
      v28 = v250;
      v243 = v249;
      v244 = 3;
      goto LABEL_301;
    }

    if (a1 != v23 || v55 != v11)
    {
      v47 = *v57;
      v23 = v5;
      v48 = v55;
      v49 = a1;
      v50 = *(v57 + 8);
      *&v43 = COERCE_DOUBLE(sub_1B014D25C());
      sub_1B00DE580(v47, v50, 3);
      sub_1B00DE580(v49, v48, 3);
      v51 = v49;
      v52 = v48;
      v5 = v23;
      v4 = v385;
      sub_1B00DE5AC(v51, v52, 3);
      v53 = v50;
      v28 = v374;
      sub_1B00DE5AC(v47, v53, 3);
      v32 = v375;
      if ((v43 & 1) == 0)
      {
        goto LABEL_361;
      }

      goto LABEL_85;
    }

    v43 = v28;
    v66 = a1;
    v67 = v55;
    sub_1B00DE580(a1, v55, 3);
    sub_1B00DE580(v66, v67, 3);
    sub_1B00DE5AC(v66, v67, 3);
    v68 = v66;
    v28 = v43;
    v69 = v67;
    v70 = 3;
    goto LABEL_84;
  }

  v377 = a1;
  if (v56 != 4)
  {
    v72 = *v57;
    v23 = v5;
    v73 = v55;
    if (v2 != 5)
    {
      v248 = *(v57 + 8);
      sub_1B00DE580(v72, v11, v2);
      sub_1B00DE580(v377, v73, 5);
      sub_1B00DE5AC(v377, v73, 5);
      sub_1B00DE5AC(v72, v248, v2);
      v4 = v385;
      goto LABEL_361;
    }

    v74 = *(v57 + 8);
    sub_1B00DE580(v72, v11, 5);
    sub_1B00DE580(v377, v73, 5);
    sub_1B00DE580(v72, v74, 5);
    sub_1B00DE580(v377, v73, 5);
    *&v43 = COERCE_DOUBLE(sub_1B00D5754(v377, v72));
    sub_1B00DE5AC(v377, v73, 5);
    sub_1B00DE5AC(v72, v74, 5);
    v75 = v74;
    v28 = v374;
    sub_1B00DE5AC(v72, v75, 5);
    sub_1B00DE5AC(v377, v73, 5);
    v5 = v23;
    v4 = v385;
    v32 = v375;
    if ((v43 & 1) == 0)
    {
LABEL_361:
      sub_1B00DE5AC(v28, v368, 4);
      sub_1B00DE5AC(v4, v384, 4);
      sub_1B00DE5AC(v4, v384, 4);
      v224 = v28;
      v231 = v368;
      goto LABEL_362;
    }

    goto LABEL_85;
  }

  if (v2 != 4)
  {
    v252 = v55;
    v238 = *v57;
    v253 = v28;
    v254 = a1;
    v241 = *(v57 + 8);
    sub_1B00DE580(*v57, v11, v2);
    sub_1B00DE580(v254, v252, 4);
    v242 = v254;
    v28 = v253;
    v243 = v252;
    v244 = 4;
    goto LABEL_301;
  }

  v60 = *(a1 + 16);
  if (v60 != *(v23 + 16))
  {
    v258 = v28;
    v259 = a1;
    v260 = v55;
    v261 = v11;
    sub_1B00DE580(v23, v11, 4);
    sub_1B00DE580(v259, v260, 4);
    v262 = v259;
    v28 = v258;
    sub_1B00DE5AC(v262, v260, 4);
    v255 = v23;
    v256 = v261;
    goto LABEL_359;
  }

  if (!v60)
  {
    v43 = a1;
    v76 = v55;
    v77 = v11;
    sub_1B00DE580(v23, v11, 4);
    sub_1B00DE580(v43, v76, 4);
    sub_1B00DE5AC(v43, v76, 4);
    v68 = v23;
    v69 = v77;
    v28 = v374;
    v70 = 4;
LABEL_84:
    sub_1B00DE5AC(v68, v69, v70);
    v32 = v375;
    goto LABEL_85;
  }

  v61 = *&v55;
  if (a1 == v23)
  {
    v43 = a1;
    v62 = v11;
    sub_1B00DE580(a1, v11, 4);
    sub_1B00DE580(v43, *&v61, 4);
    sub_1B00DE5AC(v43, *&v61, 4);
    sub_1B00DE5AC(v43, v62, 4);
    v28 = v374;
    v32 = v375;
    goto LABEL_85;
  }

  v371 = *(a1 + 16);
  v381 = v5;
  v372 = v23 + 32;
  v373 = a1 + 32;
  v78 = v11;
  sub_1B00DE580(v23, v11, 4);
  sub_1B00DE580(v377, *&v61, 4);
  v359 = v78;
  sub_1B00DE580(v23, v78, 4);
  v358 = *&v61;
  sub_1B00DE580(v377, *&v61, 4);
  v43 = v377;
  v80 = 0;
  v363 = v23;
  while (2)
  {
    if (v80 >= *(v43 + 16))
    {
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      v168 = *&v61;
      v170 = v343;
LABEL_334:
      v307 = v168;
      v308 = v79;
      sub_1B00DE580(v78, v168, v79);

      LOBYTE(v79) = v308;
      v168 = v307;
LABEL_335:
      v309 = v168;
      v310 = v79;
      sub_1B00DE580(v356, v170, v43);
      sub_1B00DE5AC(v78, v309, v310);
LABEL_348:
      sub_1B00DE5AC(v356, v170, v43);
      sub_1B00DE5AC(v78, v309, v310);
LABEL_349:
      sub_1B00DE5AC(v353, v344, 4);
      sub_1B00DE5AC(v349, v361, 4);
      sub_1B00DE5AC(v349, v361, 4);
      v301 = v353;
      v302 = v344;
LABEL_350:
      v303 = 4;
      goto LABEL_351;
    }

    if (v80 >= *(v23 + 16))
    {
      goto LABEL_332;
    }

    v81 = v373 + 24 * v80;
    v78 = *v81;
    v376 = *(v81 + 8);
    v82 = *(v81 + 16);
    v83 = v372 + 24 * v80;
    v84 = *(v83 + 8);
    v378 = *v83;
    v85 = *(v83 + 16);
    if (v82 <= 2)
    {
      if (v82)
      {
        if (v82 == 1)
        {
          if (v85 == 1)
          {
            v86 = v78;
            v87 = v78;
            v78 = *(v83 + 8);
            sub_1B00DE5AC(v86, v376, 1);
            v61 = *&v378;
            sub_1B00DE5AC(v378, v78, 1);
            if (v87 != v378)
            {
              goto LABEL_358;
            }

            goto LABEL_89;
          }

          v268 = *v83;
          v264 = *(v83 + 8);
          sub_1B00DE580(v378, v84, *(v83 + 16));
          v269 = v78;
          v270 = v376;
          v271 = 1;
LABEL_310:
          sub_1B00DE5AC(v269, v270, v271);
          v272 = *&v268;
LABEL_311:
          v273 = v264;
          v274 = v85;
          goto LABEL_357;
        }

        if (v85 != 2)
        {
          v268 = *v83;
          v264 = *(v83 + 8);
          sub_1B00DE580(v378, v84, *(v83 + 16));
          v269 = v78;
          v270 = v376;
          v271 = 2;
          goto LABEL_310;
        }

        v61 = *v83;
        v97 = *(v83 + 8);
        sub_1B00DE5AC(v78, v376, 2);
        sub_1B00DE5AC(v378, v97, 2);
        if (*&v78 != *&v378)
        {
          goto LABEL_358;
        }
      }

      else
      {
        if (*(v83 + 16))
        {
          v268 = *v83;
          v264 = *(v83 + 8);
          sub_1B00DE580(v378, v84, *(v83 + 16));
          v269 = v78;
          v270 = v376;
          v271 = 0;
          goto LABEL_310;
        }

        v92 = *(v83 + 8);
        sub_1B00DE5AC(v78, v376, 0);
        v61 = *&v378;
        sub_1B00DE5AC(v378, v92, 0);
        if ((v378 ^ v78))
        {
          goto LABEL_358;
        }
      }

LABEL_89:
      ++v80;
      v43 = v377;
      if (v80 == v371)
      {
        sub_1B00DE5AC(v377, v358, 4);
        sub_1B00DE5AC(v23, v359, 4);
        v28 = v374;
        sub_1B00DE5AC(v23, v359, 4);
        sub_1B00DE5AC(v377, v358, 4);
        v5 = v381;
        v32 = v375;
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  if (v82 == 3)
  {
    if (v85 == 3)
    {
      if (v78 == v378 && v376 == v84)
      {
        sub_1B00DE580(v78, v376, 3);
        sub_1B00DE580(v78, v376, 3);
        sub_1B00DE5AC(v78, v376, 3);
        sub_1B00DE5AC(v78, v376, 3);
      }

      else
      {
        v61 = *&v376;
        v94 = v80;
        v95 = v78;
        v78 = *(v83 + 8);
        LODWORD(v370) = sub_1B014D25C();
        sub_1B00DE580(v378, v78, 3);
        sub_1B00DE580(v95, v376, 3);
        v96 = v95;
        v80 = v94;
        sub_1B00DE5AC(v96, v376, 3);
        v23 = v363;
        sub_1B00DE5AC(v378, v78, 3);
        if ((v370 & 1) == 0)
        {
          goto LABEL_358;
        }
      }

      goto LABEL_89;
    }

    v263 = *v83;
    v264 = *(v83 + 8);
    sub_1B00DE580(v378, v84, *(v83 + 16));
    sub_1B00DE580(v78, v376, 3);
    v265 = v78;
    v266 = v376;
    v267 = 3;
    goto LABEL_308;
  }

  v367 = v80;
  if (v82 != 4)
  {
    if (v85 == 5)
    {
      v61 = *&v376;
      v98 = *(v83 + 8);
      sub_1B00DE580(v378, v84, 5);
      sub_1B00DE580(v78, v376, 5);
      sub_1B00DE580(v378, v98, 5);
      sub_1B00DE580(v78, v376, 5);
      v99 = sub_1B00D5754(v78, v378);
      sub_1B00DE5AC(v78, v376, 5);
      sub_1B00DE5AC(v378, v98, 5);
      v100 = v98;
      v23 = v363;
      sub_1B00DE5AC(v378, v100, 5);
      sub_1B00DE5AC(v78, v376, 5);
      if ((v99 & 1) == 0)
      {
        goto LABEL_358;
      }

      goto LABEL_89;
    }

    v263 = *v83;
    v264 = *(v83 + 8);
    sub_1B00DE580(v378, v84, v85);
    sub_1B00DE580(v78, v376, 5);
    v265 = v78;
    v266 = v376;
    v267 = 5;
LABEL_308:
    sub_1B00DE5AC(v265, v266, v267);
    v272 = *&v263;
    goto LABEL_311;
  }

  if (v85 != 4)
  {
    v263 = *v83;
    v264 = *(v83 + 8);
    sub_1B00DE580(v378, v84, v85);
    sub_1B00DE580(v78, v376, 4);
    v265 = v78;
    v266 = v376;
    v267 = 4;
    goto LABEL_308;
  }

  v88 = *(v78 + 16);
  if (v88 != *(v378 + 16))
  {
    v275 = v84;
    sub_1B00DE580(v378, v84, 4);
    sub_1B00DE580(v78, v376, 4);
    sub_1B00DE5AC(v78, v376, 4);
    v272 = v378;
    v273 = v275;
    goto LABEL_356;
  }

  if (!v88)
  {
    v101 = v78;
    v78 = v84;
    sub_1B00DE580(v378, v84, 4);
    v61 = *&v376;
    sub_1B00DE580(v101, v376, 4);
    sub_1B00DE5AC(v101, v376, 4);
    v91 = v378;
LABEL_122:
    v102 = v78;
    goto LABEL_123;
  }

  if (v78 == v378)
  {
    v89 = v78;
    v90 = v78;
    v78 = v84;
    sub_1B00DE580(v89, v84, 4);
    v61 = *&v376;
    sub_1B00DE580(v90, v376, 4);
    sub_1B00DE5AC(v90, v376, 4);
    v91 = v90;
    goto LABEL_122;
  }

  v365 = v78 + 32;
  v362 = *(v78 + 16);
  v366 = v78;
  v103 = v84;
  sub_1B00DE580(v378, v84, 4);
  LOBYTE(v104) = v376;
  sub_1B00DE580(v366, v376, 4);
  v105 = v362;
  v350 = v103;
  sub_1B00DE580(v378, v103, 4);
  sub_1B00DE580(v366, v376, 4);
  v109 = 0;
LABEL_127:
  if (v109 >= *(v366 + 16))
  {
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    v312 = v108;
    v188 = v80;
    v189 = v107;
    v313 = v23;
    v335 = v106;
LABEL_342:
    v314 = v312;
    sub_1B00DE580(v345, v335, v312);

    LOBYTE(v108) = v314;
    v106 = v335;
    v186 = v345;
    v23 = v313;
    v4 = v385;
LABEL_343:
    v315 = v188;
    v316 = v188;
    v317 = v106;
    v318 = v108;
    v319 = v186;
    sub_1B00DE580(v316, v189, v104);
    sub_1B00DE5AC(v319, v317, v318);
    sub_1B00DE5AC(v315, v189, v104);
    v320 = v319;
    v321 = v317;
    v322 = v318;
LABEL_346:
    sub_1B00DE5AC(v320, v321, v322);
    v78 = v328;
LABEL_347:
    LOBYTE(v43) = 4;
    v309 = v330;
    sub_1B00DE5AC(v78, v330, 4);
    v170 = v343;
    sub_1B00DE5AC(v356, v343, 4);
    v310 = 4;
    goto LABEL_348;
  }

  if (v109 >= *(v378 + 16))
  {
    goto LABEL_338;
  }

  v111 = v365 + 24 * v109;
  v112 = *v111;
  v369 = v109;
  v370 = *(v111 + 8);
  v113 = *(v111 + 16);
  v114 = v378 + 32 + 24 * v109;
  v116 = *v114;
  v115 = *(v114 + 8);
  v117 = *(v114 + 16);
  if (v113 <= 2)
  {
    if (v113)
    {
      if (v113 == 1)
      {
        v118 = *v114;
        if (v117 == 1)
        {
          v104 = v112;
          v119 = *(v114 + 8);
          sub_1B00DE5AC(v112, v370, 1);
          sub_1B00DE5AC(v118, v119, 1);
          v31 = v104 == v118;
          v105 = v362;
          if (!v31)
          {
            goto LABEL_355;
          }

          goto LABEL_126;
        }

        v283 = v112;
        v277 = *(v114 + 8);
        sub_1B00DE580(*v114, v277, *(v114 + 16));
        v278 = v283;
        v279 = v370;
        v280 = 1;
      }

      else
      {
        if (v117 == 2)
        {
          v129 = *&v112;
          v104 = *(v114 + 8);
          sub_1B00DE5AC(v112, v370, 2);
          sub_1B00DE5AC(v116, v104, 2);
          if (v129 != *&v116)
          {
            goto LABEL_355;
          }

          goto LABEL_126;
        }

        v118 = *v114;
        v282 = v112;
        v277 = *(v114 + 8);
        sub_1B00DE580(*v114, v277, *(v114 + 16));
        v278 = v282;
        v279 = v370;
        v280 = 2;
      }
    }

    else
    {
      v118 = *v114;
      if (!*(v114 + 16))
      {
        v123 = v112;
        v104 = *(v114 + 8);
        sub_1B00DE5AC(v112, v370, 0);
        sub_1B00DE5AC(v118, v104, 0);
        v124 = v118 ^ v123;
        v105 = v362;
        if (v124)
        {
          goto LABEL_355;
        }

        goto LABEL_126;
      }

      v284 = v112;
      v277 = *(v114 + 8);
      sub_1B00DE580(*v114, v277, *(v114 + 16));
      v278 = v284;
      v279 = v370;
      v280 = 0;
    }

    goto LABEL_319;
  }

  if (v113 == 3)
  {
    if (v117 == 3)
    {
      if (v112 == v116 && v370 == v115)
      {
        v110 = v112;
        LOBYTE(v104) = v370;
        sub_1B00DE580(v112, v370, 3);
        sub_1B00DE580(v110, v370, 3);
        sub_1B00DE5AC(v110, v370, 3);
        sub_1B00DE5AC(v110, v370, 3);
      }

      else
      {
        v126 = v112;
        v80 = v370;
        v104 = *v114;
        v127 = *(v114 + 8);
        LODWORD(v364) = sub_1B014D25C();
        sub_1B00DE580(v104, v127, 3);
        sub_1B00DE580(v126, v370, 3);
        v128 = v126;
        v105 = v362;
        sub_1B00DE5AC(v128, v370, 3);
        sub_1B00DE5AC(v104, v127, 3);
        if ((v364 & 1) == 0)
        {
          goto LABEL_355;
        }
      }

      goto LABEL_126;
    }

    v118 = *v114;
    v276 = v112;
    v277 = *(v114 + 8);
    sub_1B00DE580(*v114, v277, *(v114 + 16));
    sub_1B00DE580(v276, v370, 3);
    v278 = v276;
    v279 = v370;
    v280 = 3;
    goto LABEL_319;
  }

  v364 = v112;
  if (v113 != 4)
  {
    if (v117 == 5)
    {
      v80 = v370;
      v104 = *(v114 + 8);
      sub_1B00DE580(v116, v115, 5);
      sub_1B00DE580(v364, v370, 5);
      sub_1B00DE580(v116, v104, 5);
      sub_1B00DE580(v364, v370, 5);
      LODWORD(v361) = sub_1B00D5754(v364, v116);
      sub_1B00DE5AC(v364, v370, 5);
      sub_1B00DE5AC(v116, v104, 5);
      sub_1B00DE5AC(v116, v104, 5);
      v105 = v362;
      sub_1B00DE5AC(v364, v370, 5);
      if ((v361 & 1) == 0)
      {
        goto LABEL_355;
      }

      goto LABEL_126;
    }

    v277 = *(v114 + 8);
    sub_1B00DE580(v116, v115, v117);
    v118 = v116;
    sub_1B00DE580(v364, v370, 5);
    v278 = v364;
    v279 = v370;
    v280 = 5;
LABEL_319:
    sub_1B00DE5AC(v278, v279, v280);
    v285 = v118;
    v286 = v277;
    v287 = v117;
    goto LABEL_354;
  }

  if (v117 != 4)
  {
    v118 = *v114;
    v281 = v112;
    v277 = *(v114 + 8);
    sub_1B00DE580(*v114, v115, v117);
    sub_1B00DE580(v281, v370, 4);
    v278 = v281;
    v279 = v370;
    v280 = 4;
    goto LABEL_319;
  }

  v120 = *(v112 + 16);
  if (v120 != *(v116 + 16))
  {
    v288 = *v114;
    v289 = v112;
    v290 = *(v114 + 8);
    sub_1B00DE580(*v114, v115, 4);
    sub_1B00DE580(v289, v370, 4);
    sub_1B00DE5AC(v289, v370, 4);
    v285 = v288;
    v286 = v290;
    goto LABEL_353;
  }

  if (!v120)
  {
    v104 = v112;
    v130 = *v114;
    v121 = *(v114 + 8);
    sub_1B00DE580(*v114, v115, 4);
    v80 = v370;
    sub_1B00DE580(v104, v370, 4);
    sub_1B00DE5AC(v104, v370, 4);
    v122 = v130;
    goto LABEL_159;
  }

  if (v112 == v116)
  {
    v104 = v112;
    v121 = *(v114 + 8);
    sub_1B00DE580(v112, v115, 4);
    sub_1B00DE580(v104, v370, 4);
    sub_1B00DE5AC(v104, v370, 4);
    v122 = v104;
LABEL_159:
    v131 = v121;
    goto LABEL_160;
  }

  v354 = v116 + 32;
  v355 = v112 + 32;
  v357 = *v114;
  v132 = *(v114 + 8);
  sub_1B00DE580(*v114, v115, 4);
  sub_1B00DE580(v364, v370, 4);
  v338 = v132;
  sub_1B00DE580(v357, v132, 4);
  result = sub_1B00DE580(v364, v370, 4);
  v104 = v364;
  v134 = 0;
  v352 = v120;
LABEL_165:
  if (v134 < *(v104 + 16))
  {
    if (v134 >= *(v357 + 16))
    {
      goto LABEL_367;
    }

    v141 = v355 + 24 * v134;
    v43 = *v141;
    v44 = *(v141 + 8);
    v142 = *(v141 + 16);
    v143 = v354 + 24 * v134;
    v45 = *v143;
    v360 = v134;
    v361 = *(v143 + 8);
    LODWORD(v28) = *(v143 + 16);
    if (v142 <= 2)
    {
      if (v142)
      {
        if (v142 == 1)
        {
          if (v28 == 1)
          {
            v144 = *v143;
            sub_1B00DE5AC(v43, v44, 1);
            result = sub_1B00DE5AC(v144, v361, 1);
            if (v43 == v144)
            {
              goto LABEL_164;
            }

            goto LABEL_352;
          }

LABEL_323:
          v291 = v44;
          v292 = v361;
          v293 = v45;
          sub_1B00DE580(v45, v361, v28);
          v294 = v43;
          v295 = v291;
          v296 = 1;
LABEL_329:
          sub_1B00DE5AC(v294, v295, v296);
          v301 = v293;
          v302 = v292;
          v303 = v28;
LABEL_351:
          sub_1B00DE5AC(v301, v302, v303);
          goto LABEL_352;
        }

        if (v28 != 2)
        {
          v299 = v44;
          v292 = *(v143 + 8);
          v293 = *v143;
          sub_1B00DE580(v45, v361, *(v143 + 16));
          v294 = v43;
          v295 = v299;
          v296 = 2;
          goto LABEL_329;
        }

        v158 = *&v43;
        v159 = *v143;
        v160 = v43;
        v161 = *v143;
        sub_1B00DE5AC(v160, v44, 2);
        result = sub_1B00DE5AC(v161, v361, 2);
        if (v158 == v159)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if (*(v143 + 16))
        {
          v300 = v44;
          v292 = *(v143 + 8);
          v293 = *v143;
          sub_1B00DE580(v45, v361, *(v143 + 16));
          v294 = v43;
          v295 = v300;
          v296 = 0;
          goto LABEL_329;
        }

        v148 = v43;
        v149 = v43;
        v150 = *v143;
        sub_1B00DE5AC(v149, v44, 0);
        result = sub_1B00DE5AC(v150, v361, 0);
        if (((v150 ^ v148) & 1) == 0)
        {
          goto LABEL_164;
        }
      }

LABEL_352:
      sub_1B00DE5AC(v364, v370, 4);
      sub_1B00DE5AC(v357, v338, 4);
      sub_1B00DE5AC(v357, v338, 4);
      v285 = v364;
      v286 = v370;
LABEL_353:
      v287 = 4;
LABEL_354:
      sub_1B00DE5AC(v285, v286, v287);
LABEL_355:
      sub_1B00DE5AC(v366, v376, 4);
      sub_1B00DE5AC(v378, v350, 4);
      sub_1B00DE5AC(v378, v350, 4);
      v272 = v366;
      v273 = v376;
LABEL_356:
      v274 = 4;
LABEL_357:
      sub_1B00DE5AC(v272, v273, v274);
LABEL_358:
      sub_1B00DE5AC(v377, v358, 4);
      sub_1B00DE5AC(v23, v359, 4);
      sub_1B00DE5AC(v23, v359, 4);
      v255 = v377;
      v28 = v374;
      v256 = v358;
LABEL_359:
      v257 = 4;
LABEL_360:
      sub_1B00DE5AC(v255, v256, v257);
      goto LABEL_361;
    }

    if (v142 == 3)
    {
      if (v28 != 3)
      {
        v297 = v44;
        v292 = *(v143 + 8);
        v293 = *v143;
        sub_1B00DE580(v45, v361, *(v143 + 16));
        sub_1B00DE580(v43, v297, 3);
        v294 = v43;
        v295 = v297;
        v296 = 3;
        goto LABEL_329;
      }

      if (v43 == v45 && v44 == v361)
      {
        v135 = v43;
        v136 = v43;
        v137 = v44;
        sub_1B00DE580(v136, v44, 3);
        sub_1B00DE580(v135, v137, 3);
        sub_1B00DE5AC(v135, v137, 3);
        v138 = v135;
        v139 = v137;
        v140 = 3;
        goto LABEL_163;
      }

      v152 = v43;
      v153 = v44;
      v154 = *v143;
      LODWORD(v356) = sub_1B014D25C();
      sub_1B00DE580(v154, v361, 3);
      sub_1B00DE580(v152, v153, 3);
      sub_1B00DE5AC(v152, v153, 3);
      v155 = v154;
      v156 = v361;
      v157 = 3;
      goto LABEL_198;
    }

    v353 = v43;
    if (v142 != 4)
    {
      v162 = v44;
      if (v28 != 5)
      {
        v292 = *(v143 + 8);
        v293 = *v143;
        sub_1B00DE580(v45, v361, v28);
        sub_1B00DE580(v353, v162, 5);
        v294 = v353;
        v295 = v162;
        v296 = 5;
        goto LABEL_329;
      }

      v163 = *v143;
      sub_1B00DE580(v45, v361, 5);
      sub_1B00DE580(v353, v162, 5);
      sub_1B00DE580(v163, v361, 5);
      sub_1B00DE580(v353, v162, 5);
      LODWORD(v356) = sub_1B00D5754(v353, v163);
      sub_1B00DE5AC(v353, v162, 5);
      sub_1B00DE5AC(v163, v361, 5);
      sub_1B00DE5AC(v163, v361, 5);
      v155 = v353;
      v156 = v162;
      v157 = 5;
LABEL_198:
      result = sub_1B00DE5AC(v155, v156, v157);
      if (v356)
      {
        goto LABEL_164;
      }

      goto LABEL_352;
    }

    if (v28 != 4)
    {
      v298 = v44;
      v292 = *(v143 + 8);
      v293 = *v143;
      sub_1B00DE580(v45, v361, v28);
      sub_1B00DE580(v43, v298, 4);
      v294 = v43;
      v295 = v298;
      v296 = 4;
      goto LABEL_329;
    }

    v145 = *(v43 + 16);
    if (v145 != *(v45 + 16))
    {
      v304 = v43;
      v305 = v44;
      v306 = *v143;
      sub_1B00DE580(v45, v361, 4);
      sub_1B00DE580(v304, v305, 4);
      sub_1B00DE5AC(v304, v305, 4);
      v301 = v306;
      v302 = v361;
      goto LABEL_350;
    }

    v344 = v44;
    if (v145)
    {
      v146 = v43 == v45;
    }

    else
    {
      v146 = 1;
    }

    if (v146)
    {
      v147 = *v143;
      sub_1B00DE580(v45, v361, 4);
      sub_1B00DE580(v43, v344, 4);
      sub_1B00DE5AC(v43, v344, 4);
      v138 = v147;
      v139 = v361;
      goto LABEL_183;
    }

    v347 = v45 + 32;
    v348 = v43 + 32;
    v164 = *v143;
    sub_1B00DE580(v45, v361, 4);
    sub_1B00DE580(v43, v344, 4);
    v349 = v164;
    sub_1B00DE580(v164, v361, 4);
    result = sub_1B00DE580(v43, v344, 4);
    v165 = 0;
    v346 = v145;
    while (1)
    {
      if (v165 >= *(v43 + 16))
      {
        goto LABEL_368;
      }

      if (v165 >= *(v349 + 16))
      {
        goto LABEL_369;
      }

      v167 = v348 + 24 * v165;
      v78 = *v167;
      v168 = *(v167 + 8);
      v79 = *(v167 + 16);
      v169 = v347 + 24 * v165;
      v170 = *(v169 + 8);
      v356 = *v169;
      LODWORD(v43) = *(v169 + 16);
      v351 = v165;
      if (v79 <= 2)
      {
        if (*(v167 + 16))
        {
          if (v79 == 1)
          {
            if (v43 != 1)
            {
              goto LABEL_335;
            }

            sub_1B00DE5AC(v78, v168, 1);
            result = sub_1B00DE5AC(v356, v170, 1);
            v166 = v346;
            if (v78 != v356)
            {
              goto LABEL_349;
            }
          }

          else
          {
            if (v43 != 2)
            {
              goto LABEL_335;
            }

            sub_1B00DE5AC(v78, v168, 2);
            result = sub_1B00DE5AC(v356, v170, 2);
            v166 = v346;
            if (*&v78 != *&v356)
            {
              goto LABEL_349;
            }
          }
        }

        else
        {
          if (*(v169 + 16))
          {
            goto LABEL_335;
          }

          sub_1B00DE5AC(v78, v168, 0);
          result = sub_1B00DE5AC(v356, v170, 0);
          v166 = v346;
          if ((v356 ^ v78))
          {
            goto LABEL_349;
          }
        }

        goto LABEL_279;
      }

      if (v79 == 3)
      {
        if (v43 != 3)
        {
          goto LABEL_334;
        }

        if (v78 != v356 || v168 != v170)
        {
          v175 = *(v167 + 8);
          LODWORD(v345) = sub_1B014D25C();
          sub_1B00DE580(v356, v170, 3);
          sub_1B00DE580(v78, v175, 3);
          sub_1B00DE5AC(v78, v175, 3);
          v176 = v356;
          v177 = v170;
          v178 = 3;
          goto LABEL_229;
        }

        v332 = 3;
        v179 = *(v167 + 8);
        sub_1B00DE580(v78, v168, 3);
        sub_1B00DE580(v78, v179, 3);
        v180 = v78;
        v181 = v179;
        v182 = 3;
      }

      else
      {
        v343 = *(v169 + 8);
        if (v79 != 4)
        {
          v61 = *(v167 + 8);
          if (v43 != 5)
          {
            goto LABEL_333;
          }

          sub_1B00DE580(v356, v170, 5);
          sub_1B00DE580(v78, *&v61, 5);
          sub_1B00DE580(v356, v170, 5);
          sub_1B00DE580(v78, *&v61, 5);
          LODWORD(v345) = sub_1B00D5754(v78, v356);
          sub_1B00DE5AC(v78, *&v61, 5);
          sub_1B00DE5AC(v356, v170, 5);
          sub_1B00DE5AC(v356, v170, 5);
          v176 = v78;
          v177 = *&v61;
          v178 = 5;
LABEL_229:
          result = sub_1B00DE5AC(v176, v177, v178);
          v166 = v346;
          if ((v345 & 1) == 0)
          {
            goto LABEL_349;
          }

          goto LABEL_279;
        }

        if (v43 != 4)
        {
          goto LABEL_334;
        }

        v171 = *(v78 + 16);
        v330 = v168;
        if (v171 != *(v356 + 16))
        {
          v311 = v168;
          sub_1B00DE580(v356, v170, 4);
          sub_1B00DE580(v78, v311, 4);
          sub_1B00DE580(v356, v170, 4);
          sub_1B00DE580(v78, v311, 4);
          goto LABEL_347;
        }

        v332 = 4;
        if (v171)
        {
          v172 = *&v78;
          if (v78 != v356)
          {
            v334 = v78 + 32;
            v333 = *(v78 + 16);
            sub_1B00DE580(v356, v170, 4);
            sub_1B00DE580(v78, v330, 4);
            sub_1B00DE580(v356, v170, 4);
            result = sub_1B00DE580(v78, v330, 4);
            v173 = 0;
            v328 = v78;
            while (1)
            {
              if (v173 >= *(v78 + 16))
              {
                goto LABEL_370;
              }

              if (v173 >= *(v356 + 16))
              {
                goto LABEL_371;
              }

              v185 = v334 + 24 * v173;
              v186 = *v185;
              v106 = *(v185 + 8);
              v108 = *(v185 + 16);
              v187 = v356 + 32 + 24 * v173;
              v80 = *v187;
              v107 = *(v187 + 8);
              LODWORD(v104) = *(v187 + 16);
              if (v108 <= 2)
              {
                v188 = *v187;
                v189 = *(v187 + 8);
                if (v108)
                {
                  if (v108 == 1)
                  {
                    if (v104 != 1)
                    {
                      goto LABEL_343;
                    }

                    v345 = v186;
                    sub_1B00DE5AC(v186, v106, 1);
                    result = sub_1B00DE5AC(v188, v189, 1);
                    v31 = v345 == v188;
                    v78 = v328;
                    if (!v31)
                    {
                      goto LABEL_347;
                    }
                  }

                  else
                  {
                    if (v104 != 2)
                    {
                      goto LABEL_343;
                    }

                    v183 = *&v186;
                    v184 = *v187;
                    sub_1B00DE5AC(v186, v106, 2);
                    result = sub_1B00DE5AC(v188, v189, 2);
                    v78 = v328;
                    if (v183 != v184)
                    {
                      goto LABEL_347;
                    }
                  }
                }

                else
                {
                  if (*(v187 + 16))
                  {
                    goto LABEL_343;
                  }

                  v345 = v186;
                  sub_1B00DE5AC(v186, v106, 0);
                  result = sub_1B00DE5AC(v188, v189, 0);
                  v209 = v188 ^ v345;
                  v78 = v328;
                  if (v209)
                  {
                    goto LABEL_347;
                  }
                }

                goto LABEL_273;
              }

              v345 = v186;
              v331 = v173;
              if (v108 == 3)
              {
                if (v104 != 3)
                {
                  goto LABEL_339;
                }

                if (v186 != v80 || v106 != v107)
                {
                  v336 = v106;
                  v211 = *(v187 + 8);
                  v212 = v186;
                  v341 = sub_1B014D25C();
                  sub_1B00DE580(v80, v211, 3);
                  sub_1B00DE580(v212, v336, 3);
                  sub_1B00DE5AC(v212, v336, 3);
                  v213 = v80;
                  v214 = v211;
                  v215 = 3;
LABEL_266:
                  result = sub_1B00DE5AC(v213, v214, v215);
                  v173 = v331;
                  if ((v341 & 1) == 0)
                  {
                    goto LABEL_347;
                  }

                  goto LABEL_273;
                }

                v326 = 3;
                v207 = v106;
                v200 = v186;
                sub_1B00DE580(v186, v106, 3);
                sub_1B00DE580(v200, v207, 3);
                v218 = v200;
                v219 = v207;
                v220 = 3;
              }

              else
              {
                v327 = *(v187 + 8);
                v335 = v106;
                if (v108 != 4)
                {
                  if (v104 != 5)
                  {
                    v312 = v108;
                    v188 = *v187;
                    v189 = *(v187 + 8);
                    v313 = v23;
                    goto LABEL_342;
                  }

                  v216 = *v187;
                  v217 = *(v187 + 8);
                  sub_1B00DE580(*v187, v107, 5);
                  sub_1B00DE580(v345, v335, 5);
                  sub_1B00DE580(v216, v217, 5);
                  sub_1B00DE580(v345, v335, 5);
                  v341 = sub_1B00D5754(v345, v216);
                  sub_1B00DE5AC(v345, v335, 5);
                  sub_1B00DE5AC(v216, v327, 5);
                  sub_1B00DE5AC(v216, v327, 5);
                  v213 = v345;
                  v214 = v335;
                  v215 = 5;
                  goto LABEL_266;
                }

                if (v104 != 4)
                {
                  v312 = v108;
                  v188 = *v187;
                  v189 = *(v187 + 8);
                  v313 = v23;
                  goto LABEL_342;
                }

                v190 = *(v186 + 16);
                if (v190 != *(v80 + 16))
                {
                  v323 = v106;
                  v324 = v186;
                  v325 = *(v187 + 8);
                  sub_1B00DE580(v80, v107, 4);
                  sub_1B00DE580(v324, v323, 4);
                  v337 = v80;
                  sub_1B00DE580(v80, v325, 4);
                  sub_1B00DE580(v324, v323, 4);
LABEL_345:
                  sub_1B00DE5AC(v345, v335, 4);
                  sub_1B00DE5AC(v337, v327, 4);
                  sub_1B00DE5AC(v337, v327, 4);
                  v320 = v345;
                  v321 = v335;
                  v322 = 4;
                  goto LABEL_346;
                }

                v326 = 4;
                if (v190)
                {
                  v191 = v186;
                  v192 = v186;
                  if (v186 != v80)
                  {
                    v329 = *(v186 + 16);
                    v193 = v186;
                    v194 = *v187;
                    v195 = *(v187 + 8);
                    sub_1B00DE580(*v187, v107, 4);
                    sub_1B00DE580(v193, v335, 4);
                    sub_1B00DE580(v194, v195, 4);
                    result = sub_1B00DE580(v193, v335, 4);
                    v196 = v194;
                    v197 = 0;
                    v198 = (v194 + 48);
                    v199 = (v193 + 48);
                    v200 = v193;
                    v337 = v194;
                    while (v197 < *(v200 + 16))
                    {
                      result = *(v199 - 2);
                      v201 = *(v199 - 1);
                      v339 = v197;
                      v340 = v199;
                      v202 = *v199;
                      v389 = result;
                      v390 = v201;
                      v391 = v202;
                      if (v197 >= *(v196 + 16))
                      {
                        goto LABEL_373;
                      }

                      v204 = *(v198 - 1);
                      v386 = *(v198 - 2);
                      v203 = v386;
                      v387 = v204;
                      v388 = *v198;
                      v205 = v388;
                      sub_1B00DE580(result, v201, v202);
                      sub_1B00DE580(v203, v204, v205);
                      v206 = static FBKSInteraction.StructuredValue.== infix(_:_:)(&v389, &v386);
                      sub_1B00DE5AC(v386, v387, v388);
                      result = sub_1B00DE5AC(v389, v390, v391);
                      if ((v206 & 1) == 0)
                      {
                        goto LABEL_345;
                      }

                      v197 = v339 + 1;
                      v198 += 24;
                      v199 = v340 + 24;
                      v200 = v345;
                      v196 = v337;
                      if (v329 == v339 + 1)
                      {
                        v207 = v335;
                        v208 = v337;
                        v78 = v328;
                        goto LABEL_271;
                      }
                    }

                    goto LABEL_372;
                  }
                }

                else
                {
                  v191 = *v187;
                  v192 = v186;
                }

                v221 = v191;
                v342 = v191;
                v222 = *(v187 + 8);
                sub_1B00DE580(v191, v107, 4);
                v223 = v192;
                v207 = v335;
                sub_1B00DE580(v223, v335, 4);
                sub_1B00DE580(v221, v222, 4);
                v200 = v345;
                sub_1B00DE580(v345, v335, 4);
                v208 = v342;
LABEL_271:
                sub_1B00DE5AC(v200, v207, 4);
                sub_1B00DE5AC(v208, v327, 4);
                v218 = v208;
                v219 = v327;
                v220 = 4;
              }

              sub_1B00DE5AC(v218, v219, v220);
              result = sub_1B00DE5AC(v200, v207, v326);
              v173 = v331;
LABEL_273:
              if (++v173 == v333)
              {
                v179 = v330;
                v172 = *&v356;
                v170 = v343;
                goto LABEL_277;
              }
            }
          }
        }

        else
        {
          v172 = *v169;
        }

        sub_1B00DE580(*&v172, v170, 4);
        v179 = v330;
        sub_1B00DE580(v78, v330, 4);
        sub_1B00DE580(*&v172, v170, 4);
        sub_1B00DE580(v78, v330, 4);
LABEL_277:
        sub_1B00DE5AC(v78, v179, 4);
        sub_1B00DE5AC(*&v172, v170, 4);
        v180 = *&v172;
        v181 = v170;
        v182 = 4;
      }

      sub_1B00DE5AC(v180, v181, v182);
      result = sub_1B00DE5AC(v78, v179, v332);
      v166 = v346;
LABEL_279:
      v165 = v351 + 1;
      v43 = v353;
      if (v351 + 1 == v166)
      {
        sub_1B00DE5AC(v353, v344, 4);
        sub_1B00DE5AC(v349, v361, 4);
        sub_1B00DE5AC(v349, v361, 4);
        v138 = v353;
        v139 = v344;
LABEL_183:
        v140 = 4;
LABEL_163:
        result = sub_1B00DE5AC(v138, v139, v140);
LABEL_164:
        v134 = v360 + 1;
        v104 = v364;
        if (v360 + 1 != v352)
        {
          goto LABEL_165;
        }

        v80 = v370;
        sub_1B00DE5AC(v364, v370, 4);
        sub_1B00DE5AC(v357, v338, 4);
        sub_1B00DE5AC(v357, v338, 4);
        v122 = v364;
        v131 = v370;
LABEL_160:
        sub_1B00DE5AC(v122, v131, 4);
        v105 = v362;
LABEL_126:
        v109 = v369 + 1;
        if (v369 + 1 != v105)
        {
          goto LABEL_127;
        }

        v61 = *&v376;
        sub_1B00DE5AC(v366, v376, 4);
        v78 = v350;
        sub_1B00DE5AC(v378, v350, 4);
        sub_1B00DE5AC(v378, v350, 4);
        v91 = v366;
        v102 = v376;
LABEL_123:
        sub_1B00DE5AC(v91, v102, 4);
        v80 = v367;
        goto LABEL_89;
      }
    }
  }

  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
  return result;
}

uint64_t sub_1B00D80AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_14:
    v14 = v10 | (v4 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v3 + 56) + 8 * v14);
    sub_1B00D1FFC(*v15, v17);

    if (!v18)
    {
      return 1;
    }

    v29 = v11;
    v19 = v3;
    v20 = sub_1B013E148(v16, v17);
    v22 = v21;
    result = sub_1B00D2010(v16, v17);
    if ((v22 & 1) == 0 || (v23 = *(*(a2 + 56) + 8 * v20), v24 = *(v23 + 16), v24 != *(v18 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v24)
    {
      v25 = v23 == v18;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = (v23 + 40);
      v27 = (v18 + 40);
      while (v24)
      {
        result = *(v26 - 1);
        if (result != *(v27 - 1) || *v26 != *v27)
        {
          result = sub_1B014D25C();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v26 += 2;
        v27 += 2;
        if (!--v24)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    v3 = v19;
    v8 = v29;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t _s15FeedbackService0A12FeatureErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t sub_1B00D82C0(uint64_t a1)
{
  v2 = *v1;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v2);
  return sub_1B014D33C();
}

uint64_t sub_1B00D8304()
{
  if (*v0)
  {
    return 0x73726577736E61;
  }

  else
  {
    return 0x6B63616264656566;
  }
}

uint64_t sub_1B00D8344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B63616264656566 && a2 == 0xEA00000000004449;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726577736E61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B00D8428(uint64_t a1)
{
  v2 = sub_1B00DC364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00D8464(uint64_t a1)
{
  v2 = sub_1B00DC364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSEvaluation.FormResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BF8, &qword_1B014F3B8);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DC364();
  sub_1B014D35C();
  v13 = 0;
  sub_1B014D1DC();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC3B8();
    sub_1B014D21C();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t FBKSEvaluation.FormResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C10, &qword_1B014F3D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DC364();
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = sub_1B014D13C();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
  v16 = 1;
  sub_1B00DC504();
  sub_1B014D17C();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B00D889C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  return sub_1B00D80AC(v2, v3);
}

void FBKSEvaluation.formResponse.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse);
  v3 = *(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 8);
  v4 = *(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1B00DB7AC(v2, v3, v4);
}

void sub_1B00D895C(void *a1, void (*a2)(void *, uint64_t))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1, 1);
  }

  else
  {
    sub_1B00DE6C8();
    v15 = swift_allocError();
    a2(v15, 1);
  }
}

void sub_1B00D8B40(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v10 = a3;
    a4(a3, 1);
  }

  else if (a2 >> 60 == 15)
  {
    a4(0, 0);
  }

  else
  {
    sub_1B014C82C();
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DE8F8();
    v8 = a1;
    sub_1B014C80C();

    v9 = v11;
    a4(v11, 0);
    sub_1B00DE9AC(v8, a2);
  }
}

uint64_t static FBKSEvaluation.fetch(evaluationID:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00D8D10, 0, 0);
}

uint64_t sub_1B00D8D10()
{
  v14 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000014, 0x80000001B015C140, &v13);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[2].i64[1] = &type metadata for FeedbackFeatureFlags;
  v0[3].i64[0] = sub_1B00DC988();
  v0[1].i8[0] = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0[1].i64);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[5].i64[0] = v7;
    v7[1] = vextq_s8(v0[4], v0[4], 8uLL);
    v8 = swift_task_alloc();
    v0[5].i64[1] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    *v8 = v0;
    v8[1] = sub_1B00D8FBC;

    return MEMORY[0x1EEE6DE38](&v0[3].u64[1], 0, 0, 0xD000000000000014, 0x80000001B015C140, sub_1B00DCA30, v7, v9);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0->i64[1];

    return v11();
  }
}

uint64_t sub_1B00D8FBC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B00D90F4;
  }

  else
  {

    v2 = sub_1B00D90D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00D90F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B00D9158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  _s15FeedbackService14FBKSEvaluationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(a3, sub_1B00DE808, v10);
}

uint64_t sub_1B00D92A4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);
    return sub_1B014CE8C();
  }
}

id FBKSEvaluation.init(subject:action:formResponse:)(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = *a2;
  v10 = *a3;
  v6 = *(a3 + 2);
  sub_1B00D52E0(a1, &v3[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject]);
  v3[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v5;
  v7 = &v3[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
  *v7 = v10;
  *(v7 + 2) = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for FBKSEvaluation(0);
  v8 = objc_msgSendSuper2(&v11, sel_init);
  sub_1B00DB7F0(a1);
  return v8;
}

uint64_t sub_1B00D93C4(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v43 - v6;
  v7 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v45);
  v11 = (&v43 - v10);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v12 = sub_1B014CB5C();
  __swift_project_value_buffer(v12, qword_1EDAE7828);
  v13 = sub_1B014CB3C();
  v14 = sub_1B014CF6C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1B00E6C2C(0x5F2864726F636572, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v13, v14, "%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B271F750](v17, -1, -1);
    v18 = v16;
    a2 = v15;
    MEMORY[0x1B271F750](v18, -1, -1);
  }

  v48 = &type metadata for FeedbackFeatureFlags;
  v49 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v19 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v19)
  {
    sub_1B00D52E0(v2 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = a2;
      v20 = *v9;
      v21 = sub_1B014CB3C();
      v22 = sub_1B014CF3C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1B00C4000, v21, v22, "Nilling out content properties on interaction", v23, 2u);
        MEMORY[0x1B271F750](v23, -1, -1);
      }

      v24 = type metadata accessor for FBKSInteraction.Content(0);
      v25 = *(*(v24 - 8) + 56);
      v26 = v44;
      v25(v44, 1, 1, v24);
      v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
      swift_beginAccess();
      sub_1B00DE71C(v26, &v20[v27], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v25(v26, 1, 1, v24);
      v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
      swift_beginAccess();
      sub_1B00DE71C(v26, &v20[v28], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      *&v20[v29] = MEMORY[0x1E69E7CC0];

      a2 = v43;
    }

    else
    {
      sub_1B00DB7F0(v9);
    }

    sub_1B014C88C();
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = v3;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00DC264(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    v32 = v3;
    v33 = sub_1B014C86C();
    v35 = v34;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v37 = swift_allocObject();
    *(v37 + 16) = v46;
    *(v37 + 24) = a2;

    v38 = sub_1B00FA9AC(sub_1B00DCA38, v37);

    if (v38)
    {
      v39 = sub_1B014CA7C();
      v40 = swift_allocObject();
      v40[2] = v46;
      v40[3] = a2;
      v40[4] = v32;
      v49 = sub_1B00DCA40;
      v50 = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v48 = &block_descriptor_0;
      v41 = _Block_copy(aBlock);

      v42 = v32;

      [v38 recordEvaluationWithEvaluationJSON:v39 completion:v41];
      _Block_release(v41);
      swift_unknownObjectRelease();
    }

    return sub_1B00D2024(v33, v35);
  }

  else
  {
    sub_1B00DC9DC();
    v30 = swift_allocError();
    *v31 = 0;
    *v11 = v30;
    swift_storeEnumTagMultiPayload();
    v46(v11);
    return sub_1B00DE9C0(v11, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

uint64_t sub_1B00D9AD8(void *a1, void (*a2)(uint64_t *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v21 - v5);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v7 = sub_1B014CB5C();
  __swift_project_value_buffer(v7, qword_1EDAE7828);
  v8 = a1;
  v9 = sub_1B014CB3C();
  v10 = sub_1B014CF4C();

  v11 = os_log_type_enabled(v9, v10);
  v22 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = a1;
    v24 = v21;
    *v12 = 136315138;
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v14 = sub_1B014CC6C();
    v16 = sub_1B00E6C2C(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B00C4000, v9, v10, "Failed to connect to centralized feedback daemon: %s", v12, 0xCu);
    v17 = v21;
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B271F750](v17, -1, -1);
    MEMORY[0x1B271F750](v12, -1, -1);
  }

  if (a1)
  {
    v18 = v22;
    *v6 = v22;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
  }

  else
  {
    sub_1B00DE6C8();
    *v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  a2(v6);
  return sub_1B00DE9C0(v6, &qword_1EB6C3C30, &qword_1B014F3F0);
}

uint64_t sub_1B00D9D4C(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a1;
  v46 = a3;
  v47 = a4;
  v6 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  v21 = sub_1B014CB1C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    v25 = a2;
LABEL_5:
    v46(v11);
    return sub_1B00DE9C0(v11, &qword_1EB6C3C30, &qword_1B014F3F0);
  }

  v42[0] = v15;
  v42[1] = v9;
  v43 = v24;
  sub_1B00DE660(v45, v20, &qword_1EB6C3B98, &qword_1B014F360);
  v26 = *(v22 + 48);
  if (v26(v20, 1, v21) == 1)
  {
    sub_1B00DE9C0(v20, &qword_1EB6C3B98, &qword_1B014F360);
    sub_1B00DE6C8();
    *v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  (*(v22 + 32))(v43, v20, v21);
  sub_1B00D52E0(v44 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v8);
  v28 = v11;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v8;
    v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
    swift_beginAccess();
    sub_1B00DE660(&v29[v30], v18, &qword_1EB6C3B98, &qword_1B014F360);
    v31 = v26(v18, 1, v21);
    sub_1B00DE9C0(v18, &qword_1EB6C3B98, &qword_1B014F360);
    if (v31 == 1)
    {
      v32 = v42[0];
      (*(v22 + 16))(v42[0], v43, v21);
      (*(v22 + 56))(v32, 0, 1, v21);
      swift_beginAccess();
      sub_1B00DE71C(v32, &v29[v30], &qword_1EB6C3B98, &qword_1B014F360);
      swift_endAccess();
    }

    v33 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
    swift_beginAccess();
    v29[v33] = 0;
    v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
    swift_beginAccess();
    v35 = v21;
    if (v29[v34] == 1)
    {
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v36 = sub_1B014CB5C();
      __swift_project_value_buffer(v36, qword_1EDAE7828);
      v37 = sub_1B014CB3C();
      v38 = sub_1B014CF6C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1B00C4000, v37, v38, "Resetting sentPresented after successful evaluation", v39, 2u);
        MEMORY[0x1B271F750](v39, -1, -1);
      }

      v29[v34] = 0;
    }
  }

  else
  {
    v35 = v21;
    sub_1B00DB7F0(v8);
  }

  v40 = v46;
  v41 = v43;
  (*(v22 + 16))(v28, v43, v35);
  swift_storeEnumTagMultiPayload();
  v40(v28);
  sub_1B00DE9C0(v28, &qword_1EB6C3C30, &qword_1B014F3F0);
  return (*(v22 + 8))(v41, v35);
}

uint64_t sub_1B00DA300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1B014CB0C();
    v10 = sub_1B014CB1C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B014CB1C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1B00DE9C0(v8, &qword_1EB6C3B98, &qword_1B014F360);
}

uint64_t sub_1B00DA454(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00DA474, 0, 0);
}

uint64_t sub_1B00DA474()
{
  v16 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x292864726F636572, 0xE800000000000000, &v15);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    v7 = v0[8];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *(v8 + 16) = v7;
    v9 = swift_task_alloc();
    v0[10] = v9;
    v10 = sub_1B014CB1C();
    *v9 = v0;
    v9[1] = sub_1B00DA708;
    v11 = v0[7];

    return MEMORY[0x1EEE6DE38](v11, 0, 0, 0x292864726F636572, 0xE800000000000000, sub_1B00DCA64, v8, v10);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1B00DA708()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00DA844, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B00DA844()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B00DA8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1B00D93C4(sub_1B00DE5E4, v7);
}

uint64_t sub_1B00DA9F0(uint64_t a1)
{
  v2 = sub_1B014CB1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v13 - v10);
  sub_1B00DE660(a1, v13 - v10, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[1] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    return sub_1B014CE7C();
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    sub_1B014CE8C();
    return (*(v3 + 8))(v8, v2);
  }
}

id FBKSEvaluation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B00DAC90()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x707365526D726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A627573;
  }
}

uint64_t sub_1B00DACF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B00DE414(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B00DAD24(uint64_t a1)
{
  v2 = sub_1B00DCA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00DAD60(uint64_t a1)
{
  v2 = sub_1B00DCA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FBKSEvaluation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSEvaluation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B00DAE28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C40, &qword_1B014F3F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DCA6C();
  sub_1B014D35C();
  LOBYTE(v12) = 0;
  type metadata accessor for FBKSEvaluation.Subject(0);
  sub_1B00DC264(&qword_1EB6C3C50, type metadata accessor for FBKSEvaluation.Subject, &protocol conformance descriptor for FBKSEvaluation.Subject);
  sub_1B014D21C();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action);
    v15 = 1;
    sub_1B00DCAC0();
    sub_1B014D21C();
    v9 = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 8);
    v10 = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 16);
    v12 = *(v3 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse);
    v13 = v9;
    v14 = v10;
    v15 = 2;
    sub_1B00DB7AC(v12, v9, v10);
    sub_1B00DCB14();
    sub_1B014D1CC();
    sub_1B00DCB68(v12, v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

void *FBKSEvaluation.init(from:)(void *a1)
{
  v3 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C68, &qword_1B014F400);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00DCA6C();
  sub_1B014D34C();
  if (v1)
  {
    v16 = v18;
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for FBKSEvaluation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    LOBYTE(v20) = 0;
    sub_1B00DC264(&qword_1EB6C3C70, type metadata accessor for FBKSEvaluation.Subject, &protocol conformance descriptor for FBKSEvaluation.Subject);
    v10 = v17;
    sub_1B014D17C();
    v12 = v18;
    sub_1B00DC300(v5, v18 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject);
    v22 = 1;
    sub_1B00DCBAC();
    sub_1B014D17C();
    v12[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = v20;
    v22 = 2;
    sub_1B00DCC00();
    sub_1B014D12C();
    v13 = v21;
    v14 = &v12[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
    *v14 = v20;
    *(v14 + 2) = v13;
    v15 = type metadata accessor for FBKSEvaluation(0);
    v19.receiver = v12;
    v19.super_class = v15;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    (*(v9 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v16;
}

void *sub_1B00DB418@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for FBKSEvaluation(0));
  result = FBKSEvaluation.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s15FeedbackService14FBKSEvaluationC7SubjectO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B014CB1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FBKSEvaluation.Subject(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D58, &qword_1B014FE08);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B00D52E0(a1, &v24 - v16);
  sub_1B00D52E0(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B00D52E0(v17, v11);
    v19 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *&v17[v18];
      sub_1B00DC12C();
      v21 = sub_1B014CF9C();

LABEL_9:
      sub_1B00DB7F0(v17);
      return v21 & 1;
    }
  }

  else
  {
    sub_1B00D52E0(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v21 = sub_1B014CAFC();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_1B00DE9C0(v17, &qword_1EB6C3D58, &qword_1B014FE08);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1B00DB774(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B00DB7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1B00DB7F0(uint64_t a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Subject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B00DB84C(void *a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4)
{
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57[0] = v57 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v57[1] = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57[2] = v57 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (v57 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v57 - v16);
  v18 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  v61 = a3;
  v62 = a2;
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v22 = qword_1EDAE7070;

  v58 = a4;
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1B014CB5C();
  __swift_project_value_buffer(v23, qword_1EDAE7828);
  v24 = sub_1B014CB3C();
  v25 = sub_1B014CF6C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v21;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1B00E6C2C(0x5F2864726F636572, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v24, v25, "%{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B271F750](v28, -1, -1);
    v29 = v27;
    v21 = v26;
    MEMORY[0x1B271F750](v29, -1, -1);
  }

  v64 = &type metadata for FeedbackFeatureFlags;
  v65 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v30 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v30)
  {
    v31 = v59;
    sub_1B00D52E0(v59 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v21;
      v33 = *v20;
      v34 = sub_1B014CB3C();
      v35 = sub_1B014CF3C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B00C4000, v34, v35, "Nilling out content properties on interaction", v36, 2u);
        MEMORY[0x1B271F750](v36, -1, -1);
      }

      v37 = type metadata accessor for FBKSInteraction.Content(0);
      v38 = *(*(v37 - 8) + 56);
      v39 = v57[0];
      v38(v57[0], 1, 1, v37);
      v40 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
      swift_beginAccess();
      sub_1B00DE71C(v39, &v33[v40], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v38(v39, 1, 1, v37);
      v41 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
      swift_beginAccess();
      sub_1B00DE71C(v39, &v33[v41], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v42 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      *&v33[v42] = MEMORY[0x1E69E7CC0];

      v21 = v32;
    }

    else
    {
      sub_1B00DB7F0(v20);
    }

    sub_1B014C88C();
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = v31;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00DC264(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    v47 = sub_1B014C86C();
    v49 = v48;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v50 = swift_allocObject();
    *(v50 + 16) = sub_1B00DEA20;
    *(v50 + 24) = v21;

    v51 = sub_1B00FA9AC(sub_1B00DEAD4, v50);

    if (v51)
    {
      v52 = sub_1B014CA7C();
      v53 = swift_allocObject();
      v53[2] = sub_1B00DEA20;
      v53[3] = v21;
      v53[4] = v31;
      v65 = sub_1B00DEA90;
      v66 = v53;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v64 = &block_descriptor_104;
      v54 = _Block_copy(aBlock);

      v55 = v31;

      [v51 recordEvaluationWithEvaluationJSON:v52 completion:v54];
      _Block_release(v54);
      swift_unknownObjectRelease();
    }

    sub_1B00D2024(v47, v49);
  }

  else
  {
    sub_1B00DC9DC();
    v43 = swift_allocError();
    *v44 = 0;
    *v17 = v43;
    swift_storeEnumTagMultiPayload();
    sub_1B00DE660(v17, v15, &qword_1EB6C3C30, &qword_1B014F3F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = *v15;
      v46 = *v15;
      v62(v45, 1);
    }

    else
    {
      sub_1B00DE9C0(v15, &qword_1EB6C3C30, &qword_1B014F3F0);
      v62(v58, 0);
    }

    sub_1B00DE9C0(v17, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

unint64_t sub_1B00DC12C()
{
  result = qword_1EDAE6F50;
  if (!qword_1EDAE6F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAE6F50);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B00DC1BC()
{
  result = qword_1EB6C3BB8;
  if (!qword_1EB6C3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3BB8);
  }

  return result;
}

unint64_t sub_1B00DC210()
{
  result = qword_1EB6C3BC0;
  if (!qword_1EB6C3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3BC0);
  }

  return result;
}

uint64_t sub_1B00DC264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B00DC2AC()
{
  result = qword_1EB6C3BC8;
  if (!qword_1EB6C3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3BC8);
  }

  return result;
}

uint64_t sub_1B00DC300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B00DC364()
{
  result = qword_1EB6C3C00;
  if (!qword_1EB6C3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C00);
  }

  return result;
}

unint64_t sub_1B00DC3B8()
{
  result = qword_1EDAE7068;
  if (!qword_1EDAE7068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC4B0();
    sub_1B00DC608(&qword_1EDAE7048, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7068);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B00DC4B0()
{
  result = qword_1EDAE7078;
  if (!qword_1EDAE7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7078);
  }

  return result;
}

unint64_t sub_1B00DC504()
{
  result = qword_1EDAE6B10;
  if (!qword_1EDAE6B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC5B4();
    sub_1B00DC608(&qword_1EDAE6AF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B10);
  }

  return result;
}

unint64_t sub_1B00DC5B4()
{
  result = qword_1EDAE6B18;
  if (!qword_1EDAE6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B18);
  }

  return result;
}

uint64_t sub_1B00DC608(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3B80, qword_1B0151250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s15FeedbackService14FBKSEvaluationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v5 = sub_1B014CB5C();
  __swift_project_value_buffer(v5, qword_1EDAE7828);
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0xD00000000000001FLL, 0x80000001B015C230, v18);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v19 = &type metadata for FeedbackFeatureFlags;
  v20 = sub_1B00DC988();
  LOBYTE(v18[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v10)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_1B00FA9AC(sub_1B00DE894, v11);

    if (v12)
    {
      v13 = sub_1B014CAEC();
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v20 = sub_1B00DE89C;
      v21 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B0145D1C;
      v19 = &block_descriptor_90;
      v15 = _Block_copy(v18);

      [v12 fetchEvaluationWithEvaluationID:v13 completion:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a2(v16, 1);
  }
}

unint64_t sub_1B00DC988()
{
  result = qword_1EDAE71F8;
  if (!qword_1EDAE71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71F8);
  }

  return result;
}

unint64_t sub_1B00DC9DC()
{
  result = qword_1EB6C3C18;
  if (!qword_1EB6C3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C18);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B00DCA6C()
{
  result = qword_1EB6C3C48;
  if (!qword_1EB6C3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C48);
  }

  return result;
}

unint64_t sub_1B00DCAC0()
{
  result = qword_1EB6C3C58;
  if (!qword_1EB6C3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C58);
  }

  return result;
}

unint64_t sub_1B00DCB14()
{
  result = qword_1EB6C3C60;
  if (!qword_1EB6C3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C60);
  }

  return result;
}

void sub_1B00DCB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t sub_1B00DCBAC()
{
  result = qword_1EB6C3C78;
  if (!qword_1EB6C3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C78);
  }

  return result;
}

unint64_t sub_1B00DCC00()
{
  result = qword_1EB6C3C80;
  if (!qword_1EB6C3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C80);
  }

  return result;
}

unint64_t sub_1B00DCC58()
{
  result = qword_1EB6C3C88;
  if (!qword_1EB6C3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C88);
  }

  return result;
}

unint64_t sub_1B00DCCB0()
{
  result = qword_1EB6C3C90;
  if (!qword_1EB6C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C90);
  }

  return result;
}

unint64_t sub_1B00DCD08()
{
  result = qword_1EB6C3C98;
  if (!qword_1EB6C3C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3CA0, &qword_1B014F668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3C98);
  }

  return result;
}

uint64_t sub_1B00DCD74(uint64_t a1)
{
  result = type metadata accessor for FBKSEvaluation.Subject(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of FBKSEvaluation.record()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00DCFAC;

  return v7(a1);
}

uint64_t sub_1B00DCFAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B00DD180(uint64_t a1)
{
  result = sub_1B014CB1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FBKSInteraction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSEvaluation.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSEvaluation.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B00DD364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00DD3AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSEvaluation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSEvaluation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSRemoteEvaluationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSRemoteEvaluationResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSAdmin(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FBKSAdmin(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1B00DD79C()
{
  result = qword_1EB6C3CA8;
  if (!qword_1EB6C3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CA8);
  }

  return result;
}

unint64_t sub_1B00DD7F4()
{
  result = qword_1EB6C3CB0;
  if (!qword_1EB6C3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CB0);
  }

  return result;
}

unint64_t sub_1B00DD84C()
{
  result = qword_1EB6C3CB8;
  if (!qword_1EB6C3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CB8);
  }

  return result;
}

unint64_t sub_1B00DD8A4()
{
  result = qword_1EB6C3CC0;
  if (!qword_1EB6C3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CC0);
  }

  return result;
}

unint64_t sub_1B00DD8FC()
{
  result = qword_1EB6C3CC8;
  if (!qword_1EB6C3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CC8);
  }

  return result;
}

unint64_t sub_1B00DD954()
{
  result = qword_1EB6C3CD0;
  if (!qword_1EB6C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CD0);
  }

  return result;
}

unint64_t sub_1B00DD9AC()
{
  result = qword_1EB6C3CD8;
  if (!qword_1EB6C3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CD8);
  }

  return result;
}

unint64_t sub_1B00DDA04()
{
  result = qword_1EB6C3CE0;
  if (!qword_1EB6C3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CE0);
  }

  return result;
}

unint64_t sub_1B00DDA5C()
{
  result = qword_1EB6C3CE8;
  if (!qword_1EB6C3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CE8);
  }

  return result;
}

unint64_t sub_1B00DDAB4()
{
  result = qword_1EB6C3CF0;
  if (!qword_1EB6C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CF0);
  }

  return result;
}

unint64_t sub_1B00DDB0C()
{
  result = qword_1EB6C3CF8;
  if (!qword_1EB6C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3CF8);
  }

  return result;
}

unint64_t sub_1B00DDB64()
{
  result = qword_1EB6C3D00;
  if (!qword_1EB6C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D00);
  }

  return result;
}

unint64_t sub_1B00DDBBC()
{
  result = qword_1EB6C3D08;
  if (!qword_1EB6C3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D08);
  }

  return result;
}

unint64_t sub_1B00DDC14()
{
  result = qword_1EB6C3D10;
  if (!qword_1EB6C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D10);
  }

  return result;
}

unint64_t sub_1B00DDC6C()
{
  result = qword_1EB6C3D18;
  if (!qword_1EB6C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D18);
  }

  return result;
}

uint64_t sub_1B00DDCC0(void *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v49 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v54);
  v13 = (&v49 - v12);
  v14 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v55 = a3;
  v17[4] = a4;
  v17[5] = a5;
  v18 = qword_1EDAE7070;
  v53 = a2;
  v56 = a4;

  v52 = a5;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_1B014CB5C();
  __swift_project_value_buffer(v19, qword_1EDAE7828);
  v20 = sub_1B014CB3C();
  v21 = sub_1B014CF6C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a1;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_1B00E6C2C(0x5F2864726F636572, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v20, v21, "%{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B271F750](v24, -1, -1);
    v25 = v23;
    a1 = v22;
    MEMORY[0x1B271F750](v25, -1, -1);
  }

  v58 = &type metadata for FeedbackFeatureFlags;
  v59 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v26 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v26)
  {
    sub_1B00D52E0(a1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = a1;
      v27 = *v16;
      v28 = sub_1B014CB3C();
      v29 = sub_1B014CF3C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1B00C4000, v28, v29, "Nilling out content properties on interaction", v30, 2u);
        MEMORY[0x1B271F750](v30, -1, -1);
      }

      v31 = type metadata accessor for FBKSInteraction.Content(0);
      v32 = *(*(v31 - 8) + 56);
      v33 = v51;
      v32(v51, 1, 1, v31);
      v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
      swift_beginAccess();
      sub_1B00DE71C(v33, &v27[v34], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v32(v33, 1, 1, v31);
      v35 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
      swift_beginAccess();
      sub_1B00DE71C(v33, &v27[v35], &qword_1EB6C3C28, &qword_1B01515D0);
      swift_endAccess();
      v36 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      *&v27[v36] = MEMORY[0x1E69E7CC0];

      a1 = v50;
    }

    else
    {
      sub_1B00DB7F0(v16);
    }

    sub_1B014C88C();
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = a1;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00DC264(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    v39 = sub_1B014C86C();
    v41 = v40;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v43 = swift_allocObject();
    *(v43 + 16) = sub_1B00DE5D8;
    *(v43 + 24) = v17;

    v44 = sub_1B00FA9AC(sub_1B00DEAD4, v43);

    if (v44)
    {
      v45 = sub_1B014CA7C();
      v46 = swift_allocObject();
      v46[2] = sub_1B00DE5D8;
      v46[3] = v17;
      v46[4] = a1;
      v59 = sub_1B00DEA90;
      v60 = v46;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v58 = &block_descriptor_75;
      v47 = _Block_copy(aBlock);

      v48 = a1;

      [v44 recordEvaluationWithEvaluationJSON:v45 completion:v47];
      _Block_release(v47);
      swift_unknownObjectRelease();
    }

    sub_1B00D2024(v39, v41);
  }

  else
  {
    sub_1B00DC9DC();
    v37 = swift_allocError();
    *v38 = 0;
    *v13 = v37;
    swift_storeEnumTagMultiPayload();
    sub_1B0116558(v13, v53, v55, v56, v52);
    sub_1B00DE9C0(v13, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

uint64_t sub_1B00DE414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707365526D726F66 && a2 == 0xEC00000065736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1B00DE52C()
{
  result = qword_1EB6C3D20;
  if (!qword_1EB6C3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D20);
  }

  return result;
}

uint64_t sub_1B00DE580(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return v3;
}

uint64_t sub_1B00DE5AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return v3;
}

uint64_t sub_1B00DE5E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);

  return sub_1B00DA9F0(a1);
}

uint64_t sub_1B00DE660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B00DE6C8()
{
  result = qword_1EB6C3D30;
  if (!qword_1EB6C3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D30);
  }

  return result;
}

uint64_t sub_1B00DE71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_77Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1B00DE808(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D40, &qword_1B014FE00);

  return sub_1B00D92A4(a1, a2 & 1);
}

uint64_t sub_1B00DE8A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1B00DE8F8()
{
  result = qword_1EB6C3D48;
  if (!qword_1EB6C3D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DC264(&qword_1EB6C3D50, type metadata accessor for FBKSEvaluation, &protocol conformance descriptor for FBKSEvaluation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D48);
  }

  return result;
}

uint64_t sub_1B00DE9AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B00D2024(result, a2);
  }

  return result;
}

uint64_t sub_1B00DE9C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t static FBKSDonation.presented(evaluationID:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00DEAFC, 0, 0);
}

uint64_t sub_1B00DEAFC()
{
  v14 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000018, 0x80000001B015C250, &v13);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *(v7 + 16) = *(v0 + 56);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_1B00DED90;
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000018, 0x80000001B015C250, sub_1B00E7480, v7, v9);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B00DED90()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B00E8C10;
  }

  else
  {

    v2 = sub_1B00E8C14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00DEEAC()
{
  sub_1B014CC7C();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_1EDAE7010 = has_internal_diagnostics;
  return result;
}

unint64_t FBKSDonation.DonationError.description.getter()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974616E6F44;
  }
}

uint64_t FBKSDonation.DonationError.hashValue.getter()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

unint64_t sub_1B00DF000()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974616E6F44;
  }
}

void sub_1B00DF078(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v10 = a3;
    a4(a3, 1);
  }

  else if (a2 >> 60 == 15)
  {
    a4(0, 0);
  }

  else
  {
    sub_1B014C82C();
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D60, qword_1B014FE28);
    sub_1B00E8A94(&qword_1EB6C3DC8, &qword_1EB6C3D60, qword_1B014FE28, MEMORY[0x1E69E7C88]);
    v8 = a1;
    sub_1B014C80C();

    v9 = v11;
    a4(v11, 0);
    sub_1B00DE9AC(v8, a2);
  }
}

uint64_t static FBKSDonation.fetch(evaluationID:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B00DF2E8;

  return static FBKSDonation.fetch(donationID:)(a1);
}

uint64_t sub_1B00DF2E8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t static FBKSDonation.fetch(donationID:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00DF408, 0, 0);
}

uint64_t sub_1B00DF408()
{
  v14 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000012, 0x80000001B015C2D0, &v13);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[2].i64[1] = &type metadata for FeedbackFeatureFlags;
  v0[3].i64[0] = sub_1B00DC988();
  v0[1].i8[0] = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0[1].i64);
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[5].i64[0] = v7;
    v7[1] = vextq_s8(v0[4], v0[4], 8uLL);
    v8 = swift_task_alloc();
    v0[5].i64[1] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D60, qword_1B014FE28);
    *v8 = v0;
    v8[1] = sub_1B00DF6B4;

    return MEMORY[0x1EEE6DE38](&v0[3].u64[1], 0, 0, 0xD000000000000012, 0x80000001B015C2D0, sub_1B00E779C, v7, v9);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0->i64[1];

    return v11();
  }
}

uint64_t sub_1B00DF6B4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B00E8C3C;
  }

  else
  {

    v2 = sub_1B00E8C4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00DF7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  _s15FeedbackService12FBKSDonationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(a3, sub_1B00E8A00, v10);
}

uint64_t sub_1B00DF91C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0);
    return sub_1B014CE8C();
  }
}

void sub_1B00DF99C(void *a1, void (*a2)(void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1);
  }

  else
  {
    sub_1B00E8BA4();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    (a2)(v15, v16);
  }
}

void sub_1B00DFB7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1B00DFBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  _s15FeedbackService12FBKSDonationC9presented12evaluationID10completiony10Foundation4UUIDV_ys5Error_pSgctFZ_0(a2, sub_1B00E8C34, v9);
}

char *sub_1B00DFD34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v66 = a8;
  v65 = a7;
  v64 = a4;
  v60 = a2;
  v70 = a12;
  v69 = a11;
  v68 = a10;
  v67 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v23 = objc_allocWithZone(v12);
  v24 = *a1;
  v61 = a1[1];
  v63 = a5;
  sub_1B00DE660(a5, v22, &qword_1EB6C3C28, &qword_1B01515D0);
  v62 = a6;
  sub_1B00DE660(a6, v20, &qword_1EB6C3C28, &qword_1B01515D0);
  v25 = &v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v25 = 0;
  v25[1] = 0;
  *&v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v26 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v27 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v28 = *(*(v27 - 8) + 56);
  v28(&v23[v26], 1, 1, v27);
  v28(&v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v27);
  *&v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v30 = type metadata accessor for FBKSInteraction.Content(0);
  v31 = *(*(v30 - 8) + 56);
  v31(&v23[v29], 1, 1, v30);
  v31(&v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v30);
  v32 = &v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v33 = 0;
  v33[1] = 0;
  *&v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v35 = sub_1B014CB1C();
  (*(*(v35 - 8) + 56))(&v23[v34], 1, 1, v35);
  v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v36 = &v23[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v37 = v61;
  *v36 = v24;
  v36[1] = v37;
  v38 = type metadata accessor for FBKSInteraction(0);
  v71.receiver = v23;
  v71.super_class = v38;
  v39 = objc_msgSendSuper2(&v71, sel_init);
  v40 = v39;
  if (a3)
  {
    v41 = v39;
    v42 = v60;
  }

  else
  {
    v43 = objc_opt_self();
    v44 = v40;
    v45 = [v43 mainBundle];
    v46 = [v45 bundleIdentifier];

    if (v46)
    {
      v42 = sub_1B014CC1C();
      a3 = v47;
    }

    else
    {
      v42 = 0;
      a3 = 0;
    }
  }

  sub_1B00DE9C0(v62, &qword_1EB6C3C28, &qword_1B01515D0);
  sub_1B00DE9C0(v63, &qword_1EB6C3C28, &qword_1B01515D0);
  v48 = (v40 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v48 = v42;
  v48[1] = a3;

  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v40 + v49) = v64;

  v50 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v22, v40 + v50, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v20, v40 + v51, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v52 = (v40 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v53 = v66;
  *v52 = v65;
  v52[1] = v53;

  v54 = (v40 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v55 = v68;
  *v54 = v67;
  v54[1] = v55;

  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v40 + v56) = v69;

  v57 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v40 + v57) = v70 & 1;

  v58 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v40 + v58) = MEMORY[0x1E69E7CC0];

  return v40;
}

char *FBKSDonation.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v14 = v13;
  v80 = a8;
  v79 = a7;
  v78 = a4;
  v73 = a3;
  v70 = a2;
  v85 = a12;
  v83 = a11;
  v82 = a10;
  v81 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - v25;
  v27 = objc_allocWithZone(v14);
  v28 = a1[1];
  v72 = *a1;
  v71 = v28;
  v76 = a5;
  v74 = v26;
  sub_1B00DE660(a5, v26, &qword_1EB6C3C28, &qword_1B01515D0);
  v75 = a6;
  v77 = v24;
  sub_1B00DE660(a6, v24, &qword_1EB6C3C28, &qword_1B01515D0);
  v84 = v20;
  sub_1B00DE660(a13, v20, &qword_1EB6C3B98, &qword_1B014F360);
  v29 = &v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v29 = 0;
  v29[1] = 0;
  *&v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v31 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v32 = *(*(v31 - 8) + 56);
  v32(&v27[v30], 1, 1, v31);
  v32(&v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v31);
  v33 = MEMORY[0x1E69E7CC0];
  *&v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v35 = type metadata accessor for FBKSInteraction.Content(0);
  v36 = *(*(v35 - 8) + 56);
  v36(&v27[v34], 1, 1, v35);
  v36(&v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v35);
  v37 = &v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v38 = 0;
  v38[1] = 0;
  *&v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v39 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v40 = sub_1B014CB1C();
  v41 = &v27[v39];
  v42 = v73;
  (*(*(v40 - 8) + 56))(v41, 1, 1, v40);
  v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v43 = &v27[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v44 = v71;
  *v43 = v72;
  v43[1] = v44;
  v45 = type metadata accessor for FBKSInteraction(0);
  v86.receiver = v27;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, sel_init);
  v47 = v46;
  if (v42)
  {
    v48 = v46;
    v49 = v70;
  }

  else
  {
    v50 = v33;
    v51 = objc_opt_self();
    v52 = v47;
    v53 = [v51 mainBundle];
    v42 = [v53 bundleIdentifier];

    if (v42)
    {
      v49 = sub_1B014CC1C();
      v55 = v54;

      v42 = v55;
    }

    else
    {
      v49 = 0;
    }

    v33 = v50;
  }

  sub_1B00DE9C0(a13, &qword_1EB6C3B98, &qword_1B014F360);
  sub_1B00DE9C0(v75, &qword_1EB6C3C28, &qword_1B01515D0);
  sub_1B00DE9C0(v76, &qword_1EB6C3C28, &qword_1B01515D0);
  v56 = (v47 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v56 = v49;
  v56[1] = v42;

  v57 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v47 + v57) = v78;

  v58 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v74, v47 + v58, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v59 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v77, v47 + v59, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v60 = (v47 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v61 = v80;
  *v60 = v79;
  v60[1] = v61;

  v62 = (v47 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v63 = v82;
  *v62 = v81;
  v62[1] = v63;

  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v47 + v64) = v83;

  v65 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v47 + v65) = v85 & 1;
  v66 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(v84, v47 + v66, &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  v67 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v47 + v67) = v33;

  return v47;
}

char *FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v74 = a8;
  v73 = a7;
  v72 = a4;
  v67 = a3;
  v64 = a2;
  v79 = a12;
  v77 = a11;
  v76 = a10;
  v75 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = a1[1];
  v66 = *a1;
  v65 = v24;
  v70 = a5;
  v68 = &v63 - v25;
  sub_1B00DE660(a5, &v63 - v25, &qword_1EB6C3C28, &qword_1B01515D0);
  v69 = a6;
  v71 = v23;
  sub_1B00DE660(a6, v23, &qword_1EB6C3C28, &qword_1B01515D0);
  v78 = v19;
  sub_1B00DE660(a13, v19, &qword_1EB6C3B98, &qword_1B014F360);
  v26 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v26 = 0;
  v26[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v28 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v29 = *(*(v28 - 8) + 56);
  v29(&v13[v27], 1, 1, v28);
  v29(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v28);
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v31 = type metadata accessor for FBKSInteraction.Content(0);
  v32 = *(*(v31 - 8) + 56);
  v32(&v13[v30], 1, 1, v31);
  v32(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v31);
  v33 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v34 = 0;
  v34[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v35 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v36 = sub_1B014CB1C();
  (*(*(v36 - 8) + 56))(&v13[v35], 1, 1, v36);
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v37 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v38 = v65;
  *v37 = v66;
  v37[1] = v38;
  v39 = type metadata accessor for FBKSInteraction(0);
  v80.receiver = v13;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, sel_init);
  v41 = v67;
  v42 = v40;
  if (v67)
  {
    v43 = v40;
    v44 = v64;
  }

  else
  {
    v45 = objc_opt_self();
    v46 = v42;
    v47 = [v45 mainBundle];
    v44 = [v47 bundleIdentifier];

    if (v44)
    {
      v48 = sub_1B014CC1C();
      v41 = v49;

      v44 = v48;
    }

    else
    {
      v41 = 0;
    }
  }

  sub_1B00DE9C0(a13, &qword_1EB6C3B98, &qword_1B014F360);
  sub_1B00DE9C0(v69, &qword_1EB6C3C28, &qword_1B01515D0);
  sub_1B00DE9C0(v70, &qword_1EB6C3C28, &qword_1B01515D0);
  v50 = (v42 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v50 = v44;
  v50[1] = v41;

  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v42 + v51) = v72;

  v52 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v68, v42 + v52, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v71, v42 + v53, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v54 = (v42 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v55 = v74;
  *v54 = v73;
  v54[1] = v55;

  v56 = (v42 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v57 = v76;
  *v56 = v75;
  v56[1] = v57;

  v58 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v42 + v58) = v77;

  v59 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v42 + v59) = v79 & 1;
  v60 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(v78, v42 + v60, &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  v61 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v42 + v61) = MEMORY[0x1E69E7CC0];

  return v42;
}

char *FBKSDonation.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v70 = a8;
  v69 = a7;
  v68 = a4;
  v62 = a2;
  v74 = a12;
  v73 = a11;
  v72 = a10;
  v71 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  v24 = objc_allocWithZone(v13);
  v25 = a1[1];
  v64 = *a1;
  v63 = v25;
  v67 = a5;
  sub_1B00E77A4(a5, v23);
  v26 = type metadata accessor for FBKSInteraction.Content(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v23, 0, 1, v26);
  v66 = a6;
  sub_1B00E77A4(a6, v21);
  v65 = v21;
  v27(v21, 0, 1, v26);
  v28 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v28 = 0;
  v28[1] = 0;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v30 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v31 = *(*(v30 - 8) + 56);
  v32 = &v24[v29];
  v33 = a3;
  v31(v32, 1, 1, v30);
  v31(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v30);
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v27(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent], 1, 1, v26);
  v27(&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v26);
  v34 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v35 = 0;
  v35[1] = 0;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v36 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v37 = sub_1B014CB1C();
  (*(*(v37 - 8) + 56))(&v24[v36], 1, 1, v37);
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v38 = &v24[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v39 = v63;
  *v38 = v64;
  v38[1] = v39;
  v40 = type metadata accessor for FBKSInteraction(0);
  v75.receiver = v24;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, sel_init);
  v42 = v41;
  if (a3)
  {
    v43 = v41;
    v44 = v62;
  }

  else
  {
    v45 = objc_opt_self();
    v46 = v42;
    v47 = [v45 mainBundle];
    v48 = [v47 bundleIdentifier];

    if (v48)
    {
      v44 = sub_1B014CC1C();
      v33 = v49;
    }

    else
    {
      v44 = 0;
      v33 = 0;
    }
  }

  sub_1B00E7808(v66);
  sub_1B00E7808(v67);
  v50 = (v42 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v50 = v44;
  v50[1] = v33;

  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v42 + v51) = v68;

  v52 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v23, v42 + v52, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v65, v42 + v53, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v54 = (v42 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v55 = v70;
  *v54 = v69;
  v54[1] = v55;

  v56 = (v42 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v57 = v72;
  *v56 = v71;
  v56[1] = v57;

  v58 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v42 + v58) = v73;

  v59 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v42 + v59) = v74 & 1;

  v60 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v42 + v60) = MEMORY[0x1E69E7CC0];

  return v42;
}

char *FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v68 = a8;
  v67 = a7;
  v66 = a4;
  v60 = a2;
  v72 = a12;
  v71 = a11;
  v70 = a10;
  v69 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v23 = a1[1];
  v62 = *a1;
  v61 = v23;
  v65 = a5;
  sub_1B00E77A4(a5, &v60 - v21);
  v24 = type metadata accessor for FBKSInteraction.Content(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v22, 0, 1, v24);
  v64 = a6;
  sub_1B00E77A4(a6, v20);
  v63 = v20;
  v25(v20, 0, 1, v24);
  v26 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v26 = 0;
  v26[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v28 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v29 = *(*(v28 - 8) + 56);
  v30 = &v12[v27];
  v31 = a3;
  v29(v30, 1, 1, v28);
  v29(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v28);
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v25(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent], 1, 1, v24);
  v25(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v24);
  v32 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v33 = 0;
  v33[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v35 = sub_1B014CB1C();
  (*(*(v35 - 8) + 56))(&v12[v34], 1, 1, v35);
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v36 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v37 = v61;
  *v36 = v62;
  v36[1] = v37;
  v38 = type metadata accessor for FBKSInteraction(0);
  v73.receiver = v12;
  v73.super_class = v38;
  v39 = objc_msgSendSuper2(&v73, sel_init);
  v40 = v39;
  if (a3)
  {
    v41 = v39;
    v42 = v60;
  }

  else
  {
    v43 = objc_opt_self();
    v44 = v40;
    v45 = [v43 mainBundle];
    v46 = [v45 bundleIdentifier];

    if (v46)
    {
      v42 = sub_1B014CC1C();
      v31 = v47;
    }

    else
    {
      v42 = 0;
      v31 = 0;
    }
  }

  sub_1B00E7808(v64);
  sub_1B00E7808(v65);
  v48 = (v40 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v48 = v42;
  v48[1] = v31;

  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v40 + v49) = v66;

  v50 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v22, v40 + v50, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v63, v40 + v51, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v52 = (v40 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  v53 = v68;
  *v52 = v67;
  v52[1] = v53;

  v54 = (v40 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  v55 = v70;
  *v54 = v69;
  v54[1] = v55;

  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v40 + v56) = v71;

  v57 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v40 + v57) = v72 & 1;

  v58 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v40 + v58) = MEMORY[0x1E69E7CC0];

  return v40;
}