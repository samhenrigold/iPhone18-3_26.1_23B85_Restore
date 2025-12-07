uint64_t sub_1976D61C8()
{

  return v0;
}

uint64_t sub_1976D6208()
{
  v0 = sub_1976D61C8();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1976D6334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1976D6438()
{
  result = qword_1EAF40388;
  if (!qword_1EAF40388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF40380, &qword_19775FBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{
}

void sub_1976D8B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DialogEngineLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B0808;
    v8 = 0;
    DialogEngineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNBasicDialog+CATSupport.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNBasicDialog+CATSupport.m" lineNumber:18 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t LNCopyBundleIdentifierAndTeamFromSecTaskRef(__SecTask *a1, uint64_t *a2)
{
  v4 = SecTaskCopyValueForEntitlement(a1, @"application-identifier", 0);
  if (v4)
  {
    v5 = v4;
    v6 = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    CFRelease(v5);
    return v6;
  }

  else
  {
    result = SecTaskCopySigningIdentifier(a1, 0);
    if (result)
    {
      *a2 = result;
      return 1;
    }
  }

  return result;
}

__CFString *LNTranscriptActionSourceAsString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"app";
  }

  else
  {
    return off_1E74B0848[a1];
  }
}

__CFString *LNTranscriptActionKindAsString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"userShortcut";
  }

  if (a1 == 2)
  {
    return @"appShortcut";
  }

  else
  {
    return v1;
  }
}

id LNConnectionHostXPCListenerEndpointVendingInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF1C8];
  LNXPCInterfaceByUpdatingWithXPCListenerEndpointVendingInterface(v0);

  return v0;
}

void sub_1976DD880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_691(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_692)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DialogEngineLibraryCore_block_invoke_693;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B08C8;
    v8 = 0;
    DialogEngineLibraryCore_frameworkLibrary_692 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_692)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNSpeakableStringDialog+CATSupport.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNSpeakableStringDialog+CATSupport.m" lineNumber:17 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_693(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_692 = result;
  return result;
}

id LNViewLocationAsString(double *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[2];
  v4 = a1[5];
  if (v3 == 0.0 && v4 == 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f:%.f, %.f", *&v1, v2, *(a1 + 3), *(a1 + 4), v7, v8];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f, %.f:%.f, %.f, %.f", *&v1, v2, *&v3, *(a1 + 3), *(a1 + 4), *&v4];
  }
  v5 = ;

  return v5;
}

void sub_1976E1D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __LNTranscriptXPCPrivilegedInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF648];
  v1 = LNTranscriptXPCPrivilegedInterface_interface;
  LNTranscriptXPCPrivilegedInterface_interface = v0;

  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateWithActionRecord_reply_ argumentIndex:0 ofReply:0];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateWithActionRecord_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateActionRecordData_writeImmediately_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessWithReply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessWithReply_ argumentIndex:1 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:0 ofReply:0];
  v2 = LNTranscriptXPCPrivilegedInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:0 ofReply:1];

  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:1 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_deleteAllRecordsWithReply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessForStream_reply_ argumentIndex:0 ofReply:0];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessForStream_reply_ argumentIndex:0 ofReply:1];
  v6 = LNTranscriptXPCPrivilegedInterface_interface;
  v7 = objc_opt_class();

  return [v6 setClass:v7 forSelector:sel_requestReadAccessForStream_reply_ argumentIndex:1 ofReply:1];
}

id LNDaemonConstraintValidationXPCInterface()
{
  if (LNDaemonConstraintValidationXPCInterface_once != -1)
  {
    dispatch_once(&LNDaemonConstraintValidationXPCInterface_once, &__block_literal_global_1716);
  }

  v1 = LNDaemonConstraintValidationXPCInterface_interface;

  return v1;
}

uint64_t __LNDaemonConstraintValidationXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF4F88];
  v1 = LNDaemonConstraintValidationXPCInterface_interface;
  LNDaemonConstraintValidationXPCInterface_interface = v0;

  [LNDaemonConstraintValidationXPCInterface_interface setClass:objc_opt_class() forSelector:sel_validateAction_reply_ argumentIndex:0 ofReply:0];
  v2 = LNDaemonConstraintValidationXPCInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_validateAction_reply_ argumentIndex:1 ofReply:1];
}

__CFString *LNValueExtractionTypeAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Data";
  }

  else
  {
    return @"File";
  }
}

uint64_t __Block_byref_object_copy__2033(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1976E9AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2676(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1976E9CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976E9F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

id NSErrorFromMetadataProviderError(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = off_1E74B0B68[a1 - 9000];
  v8 = *MEMORY[0x1E696A578];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F0BBC770 table:0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNMetadataProviderErrorDomain" code:a1 userInfo:v5];

  return v6;
}

void sub_1976EA388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EA5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EA81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EAAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EAD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EAFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EBC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EBEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ECC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976ECEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1976EEF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EF464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EF6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EF940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EFB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EFE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F0108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976F0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F05E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F0868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F10CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1976F1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F196C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F1BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F1FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976F23E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F29DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F2CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F2F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t LNIsLinkEnabled(__CFBundle *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CFBundleCopyResourceURL(a1, @"Metadata", @"appintents", 0);
  if (v3 || (objc_autoreleasePoolPop(v2), v2 = objc_autoreleasePoolPush(), (v3 = CFBundleCopyResourceURL(a1, @"Link", @"data", 0)) != 0))
  {
    CFRelease(v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1976F7AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1976FAADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSpeechUaapXPCClientClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreSpeechLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B0CD8;
    v8 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpeechLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNSpeechUaapXPCClient.m" lineNumber:13 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CSSpeechUaapXPCClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSpeechUaapXPCClientClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNSpeechUaapXPCClient.m" lineNumber:14 description:{@"Unable to find class %s", "CSSpeechUaapXPCClient"}];

LABEL_10:
    __break(1u);
  }

  getCSSpeechUaapXPCClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *LNActionExecutorErrorCodeAsString(uint64_t a1)
{
  if ((a1 - 3001) > 2)
  {
    return @"LNActionExecutorErrorCodeUnknown";
  }

  else
  {
    return off_1E74B0D08[a1 - 3001];
  }
}

__CFString *LNPerformActionErrorCodeAsString(uint64_t a1)
{
  if ((a1 - 2001) > 0x17)
  {
    return @"LNPerformActionErrorCodeActionUnknown";
  }

  else
  {
    return off_1E74B0D20[a1 - 2001];
  }
}

__CFString *LNPerformActionPrebuiltErrorCodeAsString(uint64_t a1)
{
  if ((a1 - 4001) > 0x19)
  {
    return @"LNPerformActionPrebuiltErrorCodeAppLaunch";
  }

  else
  {
    return off_1E74B0DE0[a1 - 4001];
  }
}

id LNTranscriptXPCObservingInterface()
{
  if (LNTranscriptXPCObservingInterface_onceToken != -1)
  {
    dispatch_once(&LNTranscriptXPCObservingInterface_onceToken, &__block_literal_global_4114);
  }

  v1 = LNTranscriptXPCObservingInterface_interface;

  return v1;
}

void __LNTranscriptXPCObservingInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF6A8];
  v1 = LNTranscriptXPCObservingInterface_interface;
  LNTranscriptXPCObservingInterface_interface = v0;

  v2 = LNTranscriptXPCObservingInterface_interface;

  LNConfigureStartObservingNextActionXPCMethod(v2);
}

void LNConfigureStartObservingNextActionXPCMethod(void *a1)
{
  v1 = a1;
  [v1 setClass:objc_opt_class() forSelector:sel_startObservingNextActionStreamWithCompletion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_startObservingNextActionStreamWithCompletion_ argumentIndex:1 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_stopObservingNextActionStreamWithConnectionUUID_completion_ argumentIndex:0 ofReply:1];
}

id LNTranscriptXPCPrivilegedObservingInterface()
{
  if (LNTranscriptXPCPrivilegedObservingInterface_onceToken != -1)
  {
    dispatch_once(&LNTranscriptXPCPrivilegedObservingInterface_onceToken, &__block_literal_global_60);
  }

  v1 = LNTranscriptXPCPrivilegedObservingInterface_interface;

  return v1;
}

void __LNTranscriptXPCPrivilegedObservingInterface_block_invoke()
{
  v0 = LNTranscriptXPCPrivilegedInterface();
  v1 = LNTranscriptXPCPrivilegedObservingInterface_interface;
  LNTranscriptXPCPrivilegedObservingInterface_interface = v0;

  [LNTranscriptXPCPrivilegedObservingInterface_interface setProtocol:&unk_1F0BF4FE8];
  v2 = LNTranscriptXPCPrivilegedObservingInterface_interface;

  LNConfigureStartObservingNextActionXPCMethod(v2);
}

id LNNextActionObserverXPCInterface()
{
  if (LNNextActionObserverXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNNextActionObserverXPCInterface_onceToken, &__block_literal_global_69);
  }

  v1 = LNNextActionObserverXPCInterface_interface;

  return v1;
}

uint64_t __LNNextActionObserverXPCInterface_block_invoke()
{
  LNNextActionObserverXPCInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5048];

  return MEMORY[0x1EEE66BB8]();
}

Class __getUILinkConnectionActionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B0FF0;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNEmbeddedApplicationConnection.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UILinkConnectionAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUILinkConnectionActionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNEmbeddedApplicationConnection.m" lineNumber:42 description:{@"Unable to find class %s", "UILinkConnectionAction"}];

LABEL_10:
    __break(1u);
  }

  getUILinkConnectionActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1976FF9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1977000F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B0FD8;
    v8 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PrivacyDisclosureCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNEmbeddedApplicationConnection.m" lineNumber:55 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPDCPreflightManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNEmbeddedApplicationConnection.m" lineNumber:56 description:{@"Unable to find class %s", "PDCPreflightManager"}];

LABEL_10:
    __break(1u);
  }

  getPDCPreflightManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PrivacyDisclosureCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PrivacyDisclosureCoreLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *LNActionExecutionPriorityAsString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"background";
  }

  if (a1 == 2)
  {
    return @"userInteractive";
  }

  else
  {
    return v1;
  }
}

__CFString *LNAssistantDismissalPolicyAsString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"retainAssistant";
  }

  if (a1 == 2)
  {
    return @"dismissAssistant";
  }

  else
  {
    return v1;
  }
}

void sub_197705A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_5387(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_5389)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DialogEngineLibraryCore_block_invoke_5390;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B10D8;
    v8 = 0;
    DialogEngineLibraryCore_frameworkLibrary_5389 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_5389)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNCATDialog+CATSupport.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNCATDialog+CATSupport.m" lineNumber:18 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_5386 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_5390(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_5389 = result;
  return result;
}

void sub_19770615C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_197708358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1977085E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *LNConnectionAuthenticationPolicyAsString(uint64_t a1)
{
  if (a1)
  {
    return @"Force Unlock";
  }

  else
  {
    return @"Default";
  }
}

id LNStructuredDataRepresentationsAsString(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ShareableEntity"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"ApplicationRepresentable"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"CalendarEventRepresentable"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"EnvironmentRepresentable"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"MediaItemRepresentable"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"MediaSearchRepresentable"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"MessageConversationRepresentable"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"NoteRepresentable"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"NotificationRepresentable"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"PersonRepresentable"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"TaskRepresentable"];
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  [v3 addObject:@"TaskListRepresentable"];
  if ((a1 & 0x1000) != 0)
  {
LABEL_14:
    [v3 addObject:@"TimerRepresentable"];
  }

LABEL_15:

  return v3;
}

void sub_19770AA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_5954(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_5955)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DialogEngineLibraryCore_block_invoke_5956;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B1270;
    v8 = 0;
    DialogEngineLibraryCore_frameworkLibrary_5955 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_5955)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNNLGDialog+CATSupport.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNNLGDialog+CATSupport.m" lineNumber:21 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_5953 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_5956(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_5955 = result;
  return result;
}

void sub_19770BAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNAppContextClass_block_invoke(uint64_t a1)
{
  AppIntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAppContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNAppContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNInProcessConnection.m" lineNumber:16 description:{@"Unable to find class %s", "LNAppContext"}];

    __break(1u);
  }
}

void __getLNClientConnectionClass_block_invoke(uint64_t a1)
{
  AppIntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNClientConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNClientConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNClientConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNInProcessConnection.m" lineNumber:17 description:{@"Unable to find class %s", "LNClientConnection"}];

    __break(1u);
  }
}

void AppIntentsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppIntentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppIntentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74B12E8;
    v5 = 0;
    AppIntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppIntentsLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppIntentsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LNInProcessConnection.m" lineNumber:15 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppIntentsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppIntentsLibraryCore_frameworkLibrary = result;
  return result;
}

id LNAppNotificationEventListenerXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF50A8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_sendAppNotificationEvents_reply_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_sendAppNotificationEvents_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id LNDaemonMediatorXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5108];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchResponseForConnectionAction_auditToken_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchResponseForConnectionAction_auditToken_bundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_sendConnectionActionResponse_forConnectionActionWithIdentifier_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_19770F460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_donationTypeName(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Full";
  }

  else if (a1 == 2)
  {
    v2 = @"Incremental";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  return v2;
}

__CFString *LNChoiceOptionStyleAsString(uint64_t a1)
{
  v1 = @"Default";
  if (a1 == 1)
  {
    v1 = @"Cancel";
  }

  if (a1 == 2)
  {
    return @"Destructive";
  }

  else
  {
    return v1;
  }
}

void sub_197711F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_7285(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_7286)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DialogEngineLibraryCore_block_invoke_7287;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B13D0;
    v8 = 0;
    DialogEngineLibraryCore_frameworkLibrary_7286 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_7286)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNLocalizedStringResourceDialog+CATSupport.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNLocalizedStringResourceDialog+CATSupport.m" lineNumber:18 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_7284 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_7287(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_7286 = result;
  return result;
}

void sub_197712BAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 152));
  os_activity_scope_leave((v3 - 128));
  _Unwind_Resume(a1);
}

id LNDaemonSuggestionsXPCInterface()
{
  if (LNDaemonSuggestionsXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNDaemonSuggestionsXPCInterface_onceToken, &__block_literal_global_7472);
  }

  v1 = LNDaemonSuggestionsXPCInterface_interface;

  return v1;
}

void __LNDaemonSuggestionsXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5168];
  v1 = LNDaemonSuggestionsXPCInterface_interface;
  LNDaemonSuggestionsXPCInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v9 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  [LNDaemonSuggestionsXPCInterface_interface setClasses:v9 forSelector:sel_suggestedActionsForSuggestionsRequests_reply_ argumentIndex:0 ofReply:0];
  [LNDaemonSuggestionsXPCInterface_interface setClasses:v8 forSelector:sel_suggestedActionsForSuggestionsRequests_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonSuggestionsXPCInterface_interface setClass:objc_opt_class() forSelector:sel_suggestedActionsForSuggestionsRequests_reply_ argumentIndex:1 ofReply:1];
}

id getAVSystemControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v7 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVSystemControllerClass_block_invoke;
    v3[3] = &unk_1E74B26D0;
    v3[4] = &v4;
    __getAVSystemControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_197713240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MediaExperienceLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaExperienceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74B1418;
    v6 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LNRuntimeAssertionsTakingConnectionOperation.m" lineNumber:16 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSystemController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNRuntimeAssertionsTakingConnectionOperation.m" lineNumber:21 description:{@"Unable to find class %s", "AVSystemController"}];

    __break(1u);
  }
}

void sub_197714744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getKVItemBuilderClass_block_invoke(uint64_t a1)
{
  KoaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KVItemBuilder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKVItemBuilderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKVItemBuilderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:21 description:{@"Unable to find class %s", "KVItemBuilder"}];

    __break(1u);
  }
}

void KoaLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!KoaLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __KoaLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74B1480;
    v5 = 0;
    KoaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!KoaLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *KoaLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LNKoaClient.m" lineNumber:18 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __KoaLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  KoaLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_197715304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getKVDonatorClass_block_invoke(uint64_t a1)
{
  KoaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KVDonator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKVDonatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKVDonatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:19 description:{@"Unable to find class %s", "KVDonator"}];

    __break(1u);
  }
}

void sub_197715898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getKVFullDatasetStreamClass_block_invoke(uint64_t a1)
{
  KoaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KVFullDatasetStream");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKVFullDatasetStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKVFullDatasetStreamClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:20 description:{@"Unable to find class %s", "KVFullDatasetStream"}];

    __break(1u);
  }
}

void sub_1977163DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7818(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19771679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19771729C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *LNAppNotificationEventTypeAsString(uint64_t a1)
{
  v1 = @"Created";
  if (a1 == 1)
  {
    v1 = @"Deleted";
  }

  if (a1 == 2)
  {
    return @"Updated";
  }

  else
  {
    return v1;
  }
}

void sub_19771C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCAppEntityDisplayRepresentationClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppEntityDisplayRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppEntityDisplayRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppEntityDisplayRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:24 description:{@"Unable to find class %s", "CCAppEntityDisplayRepresentation"}];

    __break(1u);
  }
}

void __getCCAppEntityTypeDisplayRepresentationClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppEntityTypeDisplayRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppEntityTypeDisplayRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppEntityTypeDisplayRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:25 description:{@"Unable to find class %s", "CCAppEntityTypeDisplayRepresentation"}];

    __break(1u);
  }
}

void __getCCAppIntentsIndexedEntityContentClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppIntentsIndexedEntityContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppIntentsIndexedEntityContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppIntentsIndexedEntityContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:21 description:{@"Unable to find class %s", "CCAppIntentsIndexedEntityContent"}];

    __break(1u);
  }
}

void __getCCAppIntentsIndexedEntityMetaContentClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppIntentsIndexedEntityMetaContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppIntentsIndexedEntityMetaContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppIntentsIndexedEntityMetaContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:26 description:{@"Unable to find class %s", "CCAppIntentsIndexedEntityMetaContent"}];

    __break(1u);
  }
}

id getCCItemInstanceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCItemInstanceClass_softClass;
  v7 = getCCItemInstanceClass_softClass;
  if (!getCCItemInstanceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCItemInstanceClass_block_invoke;
    v3[3] = &unk_1E74B26D0;
    v3[4] = &v4;
    __getCCItemInstanceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19771C668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCItemInstanceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCItemInstance");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCItemInstanceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCItemInstanceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:27 description:{@"Unable to find class %s", "CCItemInstance"}];

    __break(1u);
  }
}

void IntelligencePlatformLibraryLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74B1658;
    v5 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LNSpotlightCascadeTranslator.m" lineNumber:20 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCCAssistantSchemaClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAssistantSchema");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAssistantSchemaClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAssistantSchemaClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:22 description:{@"Unable to find class %s", "CCAssistantSchema"}];

    __break(1u);
  }
}

void __getCCAssistantSchemaVersionClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAssistantSchemaVersion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAssistantSchemaVersionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAssistantSchemaVersionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:23 description:{@"Unable to find class %s", "CCAssistantSchemaVersion"}];

    __break(1u);
  }
}

void sub_19771D9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v13 + 2);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8763(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19771E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __QuickLookLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B16D8;
    v8 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNQuickLook.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNQuickLook.m" lineNumber:16 description:{@"Unable to find class %s", "QLPreviewController"}];

LABEL_10:
    __break(1u);
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

id LNViewEntityStateAsString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Selected"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Highlighted"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"Focused"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"Disabled"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:@"Editing"];
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    [v3 addObject:@"Primary"];
  }

LABEL_8:
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v4];

  return v5;
}

void sub_197721228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHSAppIntentsXPCListenerEndpointProviderClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ChronoServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B1858;
    v8 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNExtensionMediator.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CHSAppIntentsXPCListenerEndpointProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSAppIntentsXPCListenerEndpointProviderClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNExtensionMediator.m" lineNumber:24 description:{@"Unable to find class %s", "CHSAppIntentsXPCListenerEndpointProvider"}];

LABEL_10:
    __break(1u);
  }

  getCHSAppIntentsXPCListenerEndpointProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

LNEntityKVCAdapter *kvcValueForValue(void *a1)
{
  v1 = [a1 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[LNEntityKVCAdapter alloc] initWithEntity:v1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v2 = [v1 if_map:&__block_literal_global_128];
  }

  v3 = v2;

  v1 = v3;
LABEL_6:

  return v1;
}

id __kvcValueForValue_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = kvcValueForValue(v2);
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

void sub_197723CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1977241BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_FAULT, "%@", &buf, 0xCu);
    }

    if (v15)
    {
      v18 = MEMORY[0x1E696ABC0];
      a9 = *MEMORY[0x1E696A278];
      v19 = [v16 reason];
      a10 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a10 forKeys:&a9 count:1];
      *v15 = [v18 errorWithDomain:@"AppIntentConstraints" code:-1 userInfo:v20];
    }

    objc_end_catch();
    JUMPOUT(0x197724164);
  }

  _Unwind_Resume(exception_object);
}

void sub_197725050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *LNConfirmationActionNameEnumAsString(uint64_t a1)
{
  if ((a1 - 1) > 0x20)
  {
    return @"Continue";
  }

  else
  {
    return off_1E74B19A0[a1 - 1];
  }
}

void sub_197728AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19772BD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_19772C2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10568(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *LNActionExecutorStateAsString(uint64_t a1)
{
  v1 = @"Idle";
  if (a1 > 40)
  {
    v2 = @"WaitingForActionConfirmation";
    v6 = @"Performing";
    v7 = @"Completed";
    if (a1 != 100)
    {
      v7 = @"Idle";
    }

    if (a1 != 90)
    {
      v6 = v7;
    }

    if (a1 != 80)
    {
      v2 = v6;
    }

    if (a1 == 43)
    {
      v1 = @"WaitingForChoice";
    }

    if (a1 == 42)
    {
      v1 = @"WaitingForConfirmation";
    }

    if (a1 == 41)
    {
      v1 = @"WaitingForDisambiguation";
    }

    v5 = a1 <= 79;
  }

  else
  {
    v2 = @"Resolved";
    v3 = @"WaitingForAppProtectionUnlock";
    v4 = @"WaitingForValue";
    if (a1 != 40)
    {
      v4 = @"Idle";
    }

    if (a1 != 30)
    {
      v3 = v4;
    }

    if (a1 != 29)
    {
      v2 = v3;
    }

    if (a1 == 20)
    {
      v1 = @"Resolving";
    }

    if (a1 == 11)
    {
      v1 = @"Connecting";
    }

    if (a1 == 10)
    {
      v1 = @"ValidatingConstraints";
    }

    v5 = a1 <= 28;
  }

  if (v5)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id LNConnectionErrorWithCode(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = v2;
  v4 = @"Unknown";
  if (a1 > 1399)
  {
    if (a1 <= 1899)
    {
      v5 = @"LNConnectionErrorCodeAppManagerAppShortcutsNotFound";
      v16 = @"LNConnectionErrorCodePreflightRequiredToLaunchApp";
      v17 = @"LNConnectionErrorCodeUnsupportedInCarPlay";
      if (a1 != 1800)
      {
        v17 = @"Unknown";
      }

      if (a1 != 1700)
      {
        v16 = v17;
      }

      if (a1 != 1603)
      {
        v5 = v16;
      }

      v18 = @"LNConnectionErrorCodeAppManagerUnableToExtractStaticMetadata";
      v19 = @"LNConnectionErrorCodeAppManagerTypeMetadataNotFound";
      if (a1 != 1602)
      {
        v19 = @"Unknown";
      }

      if (a1 != 1601)
      {
        v18 = v19;
      }

      if (a1 <= 1602)
      {
        v5 = v18;
      }

      v10 = @"LNConnectionErrorCodeLinkManagerUnableToExtractStaticMetadata";
      v20 = @"LNConnectionErrorCodeAppManagerUnableToObtainBundleIdentifier";
      if (a1 != 1600)
      {
        v20 = @"Unknown";
      }

      if (a1 != 1501)
      {
        v10 = v20;
      }

      v21 = @"LNConnectionErrorCodeLinkManagerDidNotRegisterActionss";
      v22 = @"LNConnectionErrorCodeLinkManagerUnableToObtainBundleIdentifier";
      if (a1 != 1500)
      {
        v22 = @"Unknown";
      }

      if (a1 != 1400)
      {
        v21 = v22;
      }

      if (a1 <= 1500)
      {
        v10 = v21;
      }

      v15 = a1 <= 1600;
    }

    else
    {
      v5 = @"LNConnectionErrorCodeAsyncSequenceNotFound";
      v6 = @"LNConnectionErrorCodeUserIdentityMismatchFailure";
      v7 = @"LNConnectionErrorCodeBundleIdentifierMismatchFailure";
      if (a1 != 2601)
      {
        v7 = @"Unknown";
      }

      if (a1 != 2600)
      {
        v6 = v7;
      }

      if (a1 != 2501)
      {
        v5 = v6;
      }

      v8 = @"LNConnectionErrorCodeAppProtectionChallengeRequired";
      v9 = @"LNConnectionErrorCodeAsyncSequenceInvalidRequest";
      if (a1 != 2500)
      {
        v9 = @"Unknown";
      }

      if (a1 != 2400)
      {
        v8 = v9;
      }

      if (a1 <= 2500)
      {
        v5 = v8;
      }

      v10 = @"LNConnectionErrorCodeInvalidMediator";
      v11 = @"LNConnectionErrorCodeConnectionListenerIsUnset";
      v12 = @"LNConnectionErrorCodeProcessInstanceIdentifierIsUnset";
      if (a1 != 2302)
      {
        v12 = @"Unknown";
      }

      if (a1 != 2301)
      {
        v11 = v12;
      }

      if (a1 != 2300)
      {
        v10 = v11;
      }

      v13 = @"LNConnectionErrorCodeUnableToUnlockDevice";
      v14 = @"LNConnectionErrorCodeFrontBoardFailure";
      if (a1 != 2200)
      {
        v14 = @"Unknown";
      }

      if (a1 != 1900)
      {
        v13 = v14;
      }

      if (a1 <= 2299)
      {
        v10 = v13;
      }

      v15 = a1 <= 2399;
    }

    if (v15)
    {
      v4 = v10;
    }

    else
    {
      v4 = v5;
    }
  }

  else if (a1 > 1099)
  {
    v27 = @"LNConnectionErrorCodeAppleEventsFailed";
    v28 = @"LNConnectionErrorCodeLinkManagerDidNotRegisterEntities";
    if (a1 != 1300)
    {
      v28 = @"Unknown";
    }

    if (a1 != 1200)
    {
      v27 = v28;
    }

    if (a1 == 1100)
    {
      v4 = @"LNConnectionErrorCodeExtensionNotFound";
    }

    else
    {
      v4 = v27;
    }
  }

  else
  {
    switch(a1)
    {
      case 1001:
        v4 = @"LNConnectionErrorCodeUnimplemented";
        break;
      case 1002:
        v4 = @"LNConnectionErrorCodeRequestTimeout";
        break;
      case 1003:
        v4 = @"LNConnectionErrorCodeApplicationExitedUnexpectedly";
        break;
      case 1004:
        v4 = @"LNConnectionErrorCodeXPCConnectionInterrupted";
        break;
      case 1005:
        v4 = @"LNConnectionErrorCodeXPCConnectionInvalidated";
        break;
      case 1006:
        v4 = @"LNConnectionErrorCodeNotSupportedOnPlatform";
        break;
      case 1007:
        v4 = @"LNConnectionErrorCodeFetchEntitiesFailure";
        break;
      case 1008:
        v4 = @"LNConnectionErrorCodeFetchOptionsFailure";
        break;
      case 1009:
        v4 = @"LNConnectionErrorCodeFetchOptionsUnsupportedParameter";
        break;
      case 1010:
        v4 = @"LNConnectionErrorCodeFetchOptionsUnknownAction";
        break;
      case 1011:
        v4 = @"LNConnectionErrorCodeFetchOptionsNoOptionsProvider";
        break;
      case 1012:
        v4 = @"LNConnectionErrorCodeFetchOptionsParameterNotFound";
        break;
      case 1013:
        v4 = @"LNConnectionErrorCodeFetchMetadataFailure";
        break;
      case 1014:
        v4 = @"LNConnectionErrorCodeOperationFailure";
        break;
      case 1015:
        v4 = @"LNConnectionErrorCodeInvalidXPCHost";
        break;
      case 1016:
        v4 = @"LNConnectionErrorCodeMismatchingAuditTokens";
        break;
      default:
        break;
    }
  }

  v23 = [v2 localizedStringForKey:v4 value:&stru_1F0BBC770 table:0];

  if ([v23 length])
  {
    v29 = *MEMORY[0x1E696A578];
    v30[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  }

  else
  {
    v24 = 0;
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNConnectionErrorDomain" code:a1 userInfo:v24];

  return v25;
}

id LNDaemonObservationStatusRegistryXPCInterface()
{
  if (LNDaemonObservationStatusRegistryXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNDaemonObservationStatusRegistryXPCInterface_onceToken, &__block_literal_global_12115);
  }

  v1 = LNDaemonObservationStatusRegistryXPCInterface_interface;

  return v1;
}

uint64_t __LNDaemonObservationStatusRegistryXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF53F0];
  v1 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  LNDaemonObservationStatusRegistryXPCInterface_interface = v0;

  v2 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:1 ofReply:0];

  [LNDaemonObservationStatusRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:1];
  v6 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:0];

  v8 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:1 ofReply:0];

  v10 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v11 = objc_opt_class();

  return [v10 setClass:v11 forSelector:sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:1];
}

uint64_t LNSetUserDirSuffix(void *a1)
{
  v1 = [a1 UTF8String];

  return MEMORY[0x1EEE71CF8](v1);
}

__CFString *LNContinueInAppRequestTypeAsString(uint64_t a1)
{
  v1 = @"UserInitiated";
  if (a1 == 1)
  {
    v1 = @"ForegroundLaunch";
  }

  if (a1 == 2)
  {
    return @"ForegroundLaunchWithRunningUI";
  }

  else
  {
    return v1;
  }
}

void sub_197738938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCATDisableLoggingSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_12709)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __DialogEngineLibraryCore_block_invoke_12710;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74B2018;
    v7 = 0;
    DialogEngineLibraryCore_frameworkLibrary_12709 = _sl_dlopen();
  }

  v2 = DialogEngineLibraryCore_frameworkLibrary_12709;
  if (!DialogEngineLibraryCore_frameworkLibrary_12709)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"LNDialog+CATSupport.m" lineNumber:13 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CATDisableLogging");
  *(*(a1[4] + 8) + 24) = result;
  getCATDisableLoggingSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_12710(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_12709 = result;
  return result;
}

void sub_19773A660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v48 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12786(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19773D9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  (*(v10 + 16))(v10);
  _Unwind_Resume(a1);
}

void sub_19773EA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t LNPIDForAuditToken(_OWORD *a1)
{
  v2 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v2;
  if (!LNAuditTokenIsValid(&v5))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v3;
  return audit_token_to_pid(&v5);
}

void sub_1977407FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  (*(v15 + 16))(v15, a2, a3, a4, a5, a6, a7, a8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1977413B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  os_activity_scope_leave((v3 - 80));
  _Unwind_Resume(a1);
}

uint64_t LNPIDVersionForAuditToken(_OWORD *a1)
{
  v2 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v2;
  if (!LNAuditTokenIsValid(&v5))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v3;
  return audit_token_to_pidversion(&v5);
}

uint64_t LNEUIDForAuditToken(_OWORD *a1)
{
  v2 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v2;
  if (!LNAuditTokenIsValid(&v5))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v3;
  return audit_token_to_euid(&v5);
}

__CFString *LNTranscriptMatchingPredicateTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Donation Record";
  }

  else
  {
    return off_1E74B2610[a1 - 1];
  }
}

void sub_19774740C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_197749C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactInstantMessageAddressesKeySymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ContactsLibrary();
  result = dlsym(v3, "CNContactInstantMessageAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactInstantMessageAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74B26F0;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LNContactsKeys.m" lineNumber:13 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_197749F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19774A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19774BFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14892(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19774D67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}