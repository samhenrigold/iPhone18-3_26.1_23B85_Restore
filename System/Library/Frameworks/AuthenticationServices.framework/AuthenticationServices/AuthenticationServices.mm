void ___ZL35isProcessAllowedToFetchWebsiteNamesv_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isProcessAllowedToFetchWebsiteNames(void)::isProcessAllowedToFetchWebsiteNames = [v0 isEqualToString:*MEMORY[0x1E69C8CC0]];
}

void ___ZL42getWBSPrivacyProxyAvailabilityManagerClassv_block_invoke(uint64_t a1)
{
  SafariSharedUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WBSPrivacyProxyAvailabilityManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSPrivacyProxyAvailabilityManagerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:23 description:{@"Unable to find class %s", "WBSPrivacyProxyAvailabilityManager"}];

    __break(1u);
  }
}

void *SafariSharedUILibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariSharedUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL25SafariSharedUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7AF8458;
    v6 = 0;
    SafariSharedUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = SafariSharedUILibraryCore(char **)::frameworkLibrary;
  if (!SafariSharedUILibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariSharedUILibrary()"];
    [v0 handleFailureInFunction:v3 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:6 description:{@"%s", v4[0]}];

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

uint64_t WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider_log;
}

uint64_t sub_1B1C9020C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1C90244(uint64_t a1)
{
  sub_1B1D7B53C();
  if (v1 <= 0x3F)
  {
    sub_1B1C9030C(319, &qword_1EB775C98, &type metadata for ASImportableAccount, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1C9030C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B1C90370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B1D7B53C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B1C90434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B1D7B53C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordManager(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordManager_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordManager_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordManager_log;
}

void *sub_1B1C90584@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B1C9076C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1C907A4()
{
  swift_unknownObjectRelease();

  sub_1B1CDEFDC(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B1C9080C()
{
  swift_unknownObjectRelease();

  sub_1B1CDEFDC(*(v0 + 64), *(v0 + 72));
  sub_1B1CDEFDC(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B1C9087C()
{
  swift_unknownObjectRelease();

  sub_1B1CDEFDC(*(v0 + 64), *(v0 + 72));
  sub_1B1CDEFDC(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B1C908E4()
{
  swift_unknownObjectRelease();

  sub_1B1CDEFDC(*(v0 + 64), *(v0 + 72));
  sub_1B1CDEFDC(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B1C90954()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B1C90A64@<D0>(uint64_t a1@<X8>)
{
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_1B1C90AAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 __largeBlobSwift];
  *a2 = result;
  return result;
}

id sub_1B1C90AFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 __prfSwift];
  *a2 = result;
  return result;
}

void *sub_1B1C90B4C@<X0>(_BYTE *a1@<X8>)
{
  result = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.getter(&v3);
  *a1 = v3;
  return result;
}

double sub_1B1C90BC0@<D0>(_OWORD *a1@<X8>)
{
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1B1C90BFC(uint64_t *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  sub_1B1D07270(v2[0], v1);
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.setter(v2);
}

id sub_1B1C90C50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSupported];
  *a2 = result;
  return result;
}

void sub_1B1C90D1C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B1D7B4DC();
  [v2 setFirst_];
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices51ASAuthorizationPublicKeyCredentialPRFAssertionInputV0H6ValuesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1C90DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1D7BDAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B1C90EA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B1D7BDAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B1C90FAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1B1C91068(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B1C91164()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1C911B8()
{
  swift_unknownObjectRelease();

  sub_1B1CDEFDC(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1C91208()
{
  swift_unknownObjectRelease();

  sub_1B1CDEFDC(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B1C91260()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1C912B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1C912FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1C91370()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1C913BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1C913FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  swift_beginAccess();
  return sub_1B1D22E28(v3 + v4, a2);
}

id sub_1B1C9145C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B1C914C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1C91500()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B1C91560()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1C915B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B1C91630(id *a1)
{
  v2 = *a1;
  v1 = v2;
  ASPasskeyAssertionCredential.extensionOutput.setter(&v2);
}

void sub_1B1C916A8(id *a1)
{
  v2 = *a1;
  v1 = v2;
  ASPasskeyRegistrationCredential.extensionOutput.setter(&v2);
}

uint64_t sub_1B1C91960@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

double sub_1B1C91990@<D0>(uint64_t a1@<X8>)
{
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_1B1C919D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 __largeBlobSwift];
  *a2 = result;
  return result;
}

id sub_1B1C91A28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 __prfSwift];
  *a2 = result;
  return result;
}

uint64_t sub_1B1C91AE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B1CDEFDC(result, a2);
  }

  return result;
}

void sub_1B1C91B94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1B1CE111C(a1, a2);
  }
}

void sub_1B1C92160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1C924A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getWBSPrivacyProxyChangeNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getWBSPrivacyProxyChangeNotificationSymbolLoc_ptr;
  v7 = getWBSPrivacyProxyChangeNotificationSymbolLoc_ptr;
  if (!getWBSPrivacyProxyChangeNotificationSymbolLoc_ptr)
  {
    v1 = SafariSharedUILibrary();
    v5[3] = dlsym(v1, "WBSPrivacyProxyChangeNotification");
    getWBSPrivacyProxyChangeNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getWBSPrivacyProxyChangeNotification_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B1C925AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1C92A24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

id getWBUHistoryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWBUHistoryClass_softClass;
  v7 = getWBUHistoryClass_softClass;
  if (!getWBUHistoryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWBUHistoryClass_block_invoke;
    v3[3] = &unk_1E7AF7948;
    v3[4] = &v4;
    __getWBUHistoryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1C92B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_SFAccountManagerAppearanceValuesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFAccountManagerAppearanceValuesClass_softClass;
  v7 = get_SFAccountManagerAppearanceValuesClass_softClass;
  if (!get_SFAccountManagerAppearanceValuesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAccountManagerAppearanceValuesClass_block_invoke;
    v3[3] = &unk_1E7AF7948;
    v3[4] = &v4;
    __get_SFAccountManagerAppearanceValuesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1C92FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getWBSHistoryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWBSHistoryClass_softClass;
  v7 = getWBSHistoryClass_softClass;
  if (!getWBSHistoryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWBSHistoryClass_block_invoke;
    v3[3] = &unk_1E7AF7948;
    v3[4] = &v4;
    __getWBSHistoryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1C931D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getWBSImageUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWBSImageUtilitiesClass_softClass;
  v7 = getWBSImageUtilitiesClass_softClass;
  if (!getWBSImageUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWBSImageUtilitiesClass_block_invoke;
    v3[3] = &unk_1E7AF7948;
    v3[4] = &v4;
    __getWBSImageUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1C937F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1C93938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1C94E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getSFScreenScale()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_SFScreenScaleSymbolLoc_ptr;
  v6 = get_SFScreenScaleSymbolLoc_ptr;
  if (!get_SFScreenScaleSymbolLoc_ptr)
  {
    v1 = MobileSafariLibrary();
    v4[3] = dlsym(v1, "_SFScreenScale");
    get_SFScreenScaleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getSFScreenScale_cold_1();
  }

  return v0();
}

void sub_1B1C94F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1C9577C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id iconForApplicationProxy(void *a1)
{
  v1 = a1;
  getSFScreenScale();
  v3 = v2;
  if (v2 >= 2.0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= 3.0)
  {
    v5 = 32;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v1 iconDataForVariant:v5];
  if (v6)
  {
    v7 = LICreateIconFromCachedBitmap();
    if (v7)
    {
      v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7 scale:0 orientation:v3];
    }

    else
    {
      v8 = 0;
    }

    CGImageRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t MobileSafariLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MobileSafariLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MobileSafariLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7AF7968;
    v4 = 0;
    MobileSafariLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileSafariLibraryCore_frameworkLibrary;
  if (!MobileSafariLibraryCore_frameworkLibrary)
  {
    MobileSafariLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MobileSafariLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileSafariLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWBSCacheClass_block_invoke(uint64_t a1)
{
  SafariSharedLibrary();
  result = objc_getClass("WBSCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBSCacheClass_block_invoke_cold_1();
  }

  getWBSCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SafariSharedLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SafariSharedLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SafariSharedLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7AF79A0;
    v2 = 0;
    SafariSharedLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariSharedLibraryCore_frameworkLibrary)
  {
    SafariSharedLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SafariSharedLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariSharedLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWBSPrivacyProxyAvailabilityManagerClass_block_invoke(uint64_t a1)
{
  SafariSharedUILibrary();
  result = objc_getClass("WBSPrivacyProxyAvailabilityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBSPrivacyProxyAvailabilityManagerClass_block_invoke_cold_1();
  }

  getWBSPrivacyProxyAvailabilityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SafariSharedUILibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!SafariSharedUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __SafariSharedUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7AF79B8;
    v4 = 0;
    SafariSharedUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SafariSharedUILibraryCore_frameworkLibrary;
  if (!SafariSharedUILibraryCore_frameworkLibrary)
  {
    SafariSharedUILibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SafariSharedUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariSharedUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWBSPrivacyProxyChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SafariSharedUILibrary();
  result = dlsym(v2, "WBSPrivacyProxyChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWBSPrivacyProxyChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getWBUHistoryClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WebUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __WebUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AF79D0;
    v5 = 0;
    WebUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebUILibraryCore_frameworkLibrary)
  {
    __getWBUHistoryClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("WBUHistory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBUHistoryClass_block_invoke_cold_1();
  }

  getWBUHistoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WebUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWBSHistoryClass_block_invoke(uint64_t a1)
{
  SafariSharedLibrary();
  result = objc_getClass("WBSHistory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBSHistoryClass_block_invoke_cold_1();
  }

  getWBSHistoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getWBSImageUtilitiesClass_block_invoke(uint64_t a1)
{
  SafariSharedUILibrary();
  result = objc_getClass("WBSImageUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBSImageUtilitiesClass_block_invoke_cold_1();
  }

  getWBSImageUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getWBSTouchIconResponseClass_block_invoke(uint64_t a1)
{
  SafariSharedUILibrary();
  result = objc_getClass("WBSTouchIconResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBSTouchIconResponseClass_block_invoke_cold_1();
  }

  getWBSTouchIconResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B1C96F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1C981F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B1C99014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1B1C9C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAAUIProfilePictureStoreClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppleAccountUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AF7D48;
    v5 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    __getAAUIProfilePictureStoreClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AAUIProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIProfilePictureStoreClass_block_invoke_cold_1();
  }

  getAAUIProfilePictureStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleAccountUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1B1CA22CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_1B1CA2618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1CA29A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1CA3AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1CA3C4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B1CA40C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1CA8490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1CA8C20(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1B1CA8E30(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, objc_super a10)
{
  a10.super_class = _ASWebsiteNameProvider;
  [(_Unwind_Exception *)&a10 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B1CA90FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B1CA94BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B1CAB3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose((v34 - 248), 8);
  _Block_object_dispose((v34 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1CAB598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

uint64_t ___ZL25SafariSharedUILibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariSharedUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL45getWBSPrivacyProxyChangeNotificationSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = SafariSharedUILibrary();
  result = dlsym(v2, "WBSPrivacyProxyChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__deviceAlertStyle_block_invoke()
{
  result = [MEMORY[0x1E698E020] isPad];
  deviceAlertStyle_style = result;
  return result;
}

id _ASAgentCredentialUpdateListenerInterface(uint64_t a1)
{
  if (_ASAgentCredentialUpdateListenerInterface_onceToken != -1)
  {
    _ASAgentCredentialUpdateListenerInterface_cold_1();
  }

  v2 = _ASAgentCredentialUpdateListenerInterface_interface;

  return v2;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_4(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1B1CAFC84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B1CB03FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void _ASAuthorizationButtonInitialize(void *a1)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DC888];
  v2 = a1;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  v4 = MEMORY[0x1E696ACD8];
  v5 = [v2 widthAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant:130.0];
  v14[0] = v6;
  v7 = [v2 widthAnchor];
  v8 = [v7 constraintLessThanOrEqualToConstant:375.0];
  v14[1] = v8;
  v9 = [v2 heightAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant:30.0];
  v14[2] = v10;
  v11 = [v2 heightAnchor];

  v12 = [v11 constraintLessThanOrEqualToConstant:64.0];
  v14[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  [v4 activateConstraints:v13];
}

void sub_1B1CB4F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1CB6710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSArray *ASAuthorizationAllSupportedPublicKeyCredentialDescriptorTransports(void)
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"usb";
  v2[1] = @"nfc";
  v2[2] = @"ble";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

id safariCredentialIdentitiesFromCredentialIdentities(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v25 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v1;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v26)
  {
    v2 = *v29;
    v20 = *v29;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v29 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        v5 = [v4 serviceIdentifier];
        v6 = [v5 type] == 1;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v5;
          v7 = MEMORY[0x1E69C8DF8];
          v8 = v4;
          v24 = [v7 alloc];
          v23 = [v27 identifier];
          v9 = [v8 recordIdentifier];
          v10 = [v8 user];
          v22 = [v8 rank];
          v11 = [v8 credentialID];
          v12 = [v11 base64EncodedStringWithOptions:0];
          v13 = [v8 userHandle];

          v14 = [v13 base64EncodedStringWithOptions:0];
          v15 = v23;
          v16 = [v24 initWithServiceIdentifier:v23 serviceIdentifierType:v6 externalRecordIdentifier:v9 user:v10 rank:v22 credentialID:v12 userHandle:v14];

          v2 = v20;
          v5 = v27;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = MEMORY[0x1E69C8DF0];
          }

          else
          {
            v17 = MEMORY[0x1E69C8E00];
          }

          v18 = [v17 alloc];
          v15 = [v5 identifier];
          v9 = [v4 recordIdentifier];
          v10 = [v4 user];
          v16 = [v18 initWithServiceIdentifier:v15 serviceIdentifierType:v6 externalRecordIdentifier:v9 user:v10 rank:{objc_msgSend(v4, "rank")}];
        }

        [v25 addObject:v16];
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v26);
  }

  return v25;
}

id credentialIdentityStoreErrorFromSFExternalCredentialIdentityStoreError(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 code];
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (v2 == 2);
    }

    v4 = MEMORY[0x1E696ABC0];
    v5 = [v1 userInfo];

    v6 = [v4 errorWithDomain:@"ASCredentialIdentityStoreErrorDomain" code:v3 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

id qrCodeContentsColor()
{
  v0 = MEMORY[0x1E69DC888];
  v1 = [MEMORY[0x1E696AAE8] as_authenticationServicesBundle];
  v2 = [v0 colorNamed:@"CABLEQRCodeContentsColor" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

void sub_1B1CC6E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_3_0(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1B1CCD8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPMCredentialRequestPaneHeaderClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PasswordManagerUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PasswordManagerUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AF8CC0;
    v5 = 0;
    PasswordManagerUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PasswordManagerUILibraryCore_frameworkLibrary)
  {
    __getPMCredentialRequestPaneHeaderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PMCredentialRequestPaneHeader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPMCredentialRequestPaneHeaderClass_block_invoke_cold_1();
  }

  getPMCredentialRequestPaneHeaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PasswordManagerUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PasswordManagerUILibraryCore_frameworkLibrary = result;
  return result;
}

id ASAgentCredentialExchangeExporterInterface(uint64_t a1)
{
  if (ASAgentCredentialExchangeExporterInterface_onceToken != -1)
  {
    ASAgentCredentialExchangeExporterInterface_cold_1();
  }

  v2 = ASAgentCredentialExchangeExporterInterface_interface;

  return v2;
}

uint64_t __ASAgentCredentialExchangeExporterInterface_block_invoke()
{
  ASAgentCredentialExchangeExporterInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29100B8];

  return MEMORY[0x1EEE66BB8]();
}

id ASAgentCredentialExchangeImporterInterface(uint64_t a1)
{
  if (ASAgentCredentialExchangeImporterInterface_onceToken != -1)
  {
    ASAgentCredentialExchangeImporterInterface_cold_1();
  }

  v2 = ASAgentCredentialExchangeImporterInterface_interface;

  return v2;
}

uint64_t __ASAgentCredentialExchangeImporterInterface_block_invoke()
{
  ASAgentCredentialExchangeImporterInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2910150];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1CD0124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1CD0314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthenticationSession(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAuthenticationSession_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthenticationSession_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthenticationSession_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthorization(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAuthorization_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthorization_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthorization_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCredentialExchange(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXCredentialExchange_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCredentialExchange_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCredentialExchange_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordsIcons(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordsIcons_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordsIcons_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordsIcons_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_log;
}

Class __getSFAuthenticationSessionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SafariServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AF8E68;
    v5 = 0;
    SafariServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary_0)
  {
    __getSFAuthenticationSessionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SFAuthenticationSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFAuthenticationSessionClass_block_invoke_cold_1();
  }

  getSFAuthenticationSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t sub_1B1CDD514(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774AC0, type metadata accessor for ASAuthorizationError, &unk_1B1D84FC0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1CDD580(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774AC0, type metadata accessor for ASAuthorizationError, &unk_1B1D84FC0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1CDD5EC(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B1CDD658(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774B60, type metadata accessor for ASCAuthorizationError, &unk_1B1D854D0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1CDD6C4(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774B60, type metadata accessor for ASCAuthorizationError, &unk_1B1D854D0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1CDD730(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774B90, type metadata accessor for ASCAuthorizationError, &unk_1B1D8566C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B1CDD7A4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1B273B000](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B1CDD7F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1D7BFBC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1B1CDD850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1D7BFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1B1CDD878()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CDD8C0(uint64_t a1)
{
  v2 = *v1;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CDD914(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B1CDD980(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B1CDD9EC(void *a1, uint64_t a2)
{
  v4 = sub_1B1CDDE18(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B1CDDA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1CDDE18(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B1CDDB08(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774B90, type metadata accessor for ASCAuthorizationError, &unk_1B1D8566C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B1CDDB74(uint64_t a1)
{
  v2 = sub_1B1CDDE18(&qword_1EB774B90, type metadata accessor for ASCAuthorizationError, &unk_1B1D8566C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B1CDDBE0(void *a1, uint64_t a2)
{
  v4 = sub_1B1CDDE18(&qword_1EB774B90, type metadata accessor for ASCAuthorizationError, &unk_1B1D8566C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B1CDDC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1CDDE18(&qword_1EB774B90, type metadata accessor for ASCAuthorizationError, &unk_1B1D8566C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B1CDDCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B1D7C5CC();
  sub_1B1D7BDEC();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CDDD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1CDDE18(&qword_1EB774F70, type metadata accessor for ASAuthorizationError, &unk_1B1D8508C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B1CDDE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B1CDDFDC()
{
  result = qword_1EB774AE8;
  if (!qword_1EB774AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774AE8);
  }

  return result;
}

uint64_t sub_1B1CDE0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1CDDE18(&qword_1EB774B90, type metadata accessor for ASCAuthorizationError, &unk_1B1D8566C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B1CDE26C(uint64_t a1)
{
  sub_1B1CDDE18(&qword_1EB774B98, type metadata accessor for ASCOSEAlgorithmIdentifier, &unk_1B1D855DC);
  sub_1B1CDDE18(&qword_1EB774BA0, type metadata accessor for ASCOSEAlgorithmIdentifier, &unk_1B1D8557C);
  return sub_1B1D7C38C();
}

void sub_1B1CDE544(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t ASPasskeyAssertionCredentialExtensionInput.largeBlob.getter@<X0>(__int128 *a1@<X8>)
{
  v2 = sub_1B1D7BA8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = sub_1B1D7BABC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  sub_1B1D7BACC();
  if ((*(v10 + 48))(v15, 1, v9))
  {
    result = sub_1B1CDEC18(v15, &qword_1EB774CD0, &qword_1B1D857C0);
    v17 = xmmword_1B1D857A0;
LABEL_7:
    *a1 = v17;
    return result;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1B1CDEC18(v15, &qword_1EB774CD0, &qword_1B1D857C0);
  sub_1B1D7BAAC();
  (*(v3 + 16))(v6, v8, v2);
  v18 = (*(v3 + 88))(v6, v2);
  if (v18 == *MEMORY[0x1E698DF30])
  {
    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v12, v9);
    result = (*(v3 + 96))(v6, v2);
    v17 = *v6;
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x1E698DF28])
  {
    (*(v3 + 8))(v8, v2);
    result = (*(v10 + 8))(v12, v9);
    v17 = xmmword_1B1D857B0;
    goto LABEL_7;
  }

  result = sub_1B1D7C32C();
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

uint64_t ASPasskeyAssertionCredentialExtensionInput.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B1D7BA5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  sub_1B1D7BA6C();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    result = sub_1B1CDEC18(v8, &qword_1EB774CD8, &qword_1B1D857C8);
    v10 = 0uLL;
    v11 = 1;
    v12 = 0uLL;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1B1CDEC18(v8, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v13);
    result = (*(v3 + 8))(v5, v2);
    v10 = v13[0];
    v12 = v13[1];
    v11 = v14;
  }

  *a1 = v10;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_1B1CDEC18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void ASPasskeyAssertionCredentialExtensionInput.init(largeBlob:prf:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1B1D7BA8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = a2[1];
  v28 = *a2;
  v29 = v18;
  v19 = *(a2 + 4);
  v20 = [objc_allocWithZone(sub_1B1D7BAEC()) init];
  if (v17 >> 60 == 11)
  {
    v21 = sub_1B1D7BABC();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    v22 = v20;
  }

  else
  {
    if (v17 >> 60 == 15)
    {
      v23 = MEMORY[0x1E698DF28];
    }

    else
    {
      *v12 = v16;
      v12[1] = v17;
      v23 = MEMORY[0x1E698DF30];
    }

    (*(v10 + 104))(v12, *v23, v9);
    v24 = v20;
    sub_1B1D7BA9C();
    v25 = sub_1B1D7BABC();
    (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
  }

  sub_1B1D7BADC();
  if (v19 == 1)
  {
    v26 = 1;
  }

  else
  {
    v30 = v28;
    v31 = v29;
    v32 = v19;
    sub_1B1D0DCD8(v8);
    sub_1B1CDEF8C(v30, *(&v30 + 1), v31, *(&v31 + 1));

    v26 = 0;
  }

  v27 = sub_1B1D7BA5C();
  (*(*(v27 - 8) + 56))(v8, v26, 1, v27);
  sub_1B1D7BA7C();

  *a3 = v20;
}

uint64_t sub_1B1CDEF8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1B1CDEFDC(result, a2);

    return sub_1B1C91AE4(a3, a4);
  }

  return result;
}

uint64_t sub_1B1CDEFDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void __swiftcall ASPasskeyAssertionCredentialExtensionInput.toObjC()(ASPasskeyAssertionCredentialExtensionInput *__return_ptr retstr)
{
  v2 = *v1;
  v3 = objc_allocWithZone(ASPasskeyAssertionCredentialExtensionInput);

  [v3 initWithCoreExtensions_];
}

id sub_1B1CDF0D4()
{
  v1 = sub_1B1D7BA8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = sub_1B1D7BABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = *(v0 + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions);
  sub_1B1D7BACC();

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1B1CDEC18(v14, &qword_1EB774CD0, &qword_1B1D857C0);
    return 0;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_1B1CDEC18(v14, &qword_1EB774CD0, &qword_1B1D857C0);
    sub_1B1D7BAAC();
    (*(v2 + 16))(v5, v7, v1);
    v17 = (*(v2 + 88))(v5, v1);
    if (v17 == *MEMORY[0x1E698DF30])
    {
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
      (*(v2 + 96))(v5, v1);
      v18 = *v5;
      v19 = v5[1];
      v20 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput) initWithOperation_];
      v21 = sub_1B1D7B4DC();
      [v20 setDataToWrite_];

      sub_1B1CDEFDC(v18, v19);
      return v20;
    }

    else if (v17 == *MEMORY[0x1E698DF28])
    {
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
      return [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput) initWithOperation_];
    }

    else
    {
      result = sub_1B1D7C32C();
      __break(1u);
    }
  }

  return result;
}

id ASPasskeyAssertionCredentialExtensionInput.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1B1D7BAEC();
  v4 = sub_1B1D7C12C();
  if (v4)
  {
    v5 = v4;
    v6 = [v2 initWithCoreExtensions_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ASPasskeyAssertionCredentialExtensionInput.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions);
  v4 = sub_1B1D7BE1C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void __swiftcall ASPasskeyAssertionCredentialExtensionInput.init()(ASPasskeyAssertionCredentialExtensionInput *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id ASPasskeyAssertionCredentialExtensionInput.init()()
{
  v1 = OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions;
  *&v0[v1] = [objc_allocWithZone(sub_1B1D7BAEC()) init];
  v3.receiver = v0;
  v3.super_class = ASPasskeyAssertionCredentialExtensionInput;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B1CDF908(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1CDF950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for ASPasskeyAssertionCredentialExtensionInput()
{
  result = qword_1EB774D50;
  if (!qword_1EB774D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB774D50);
  }

  return result;
}

uint64_t ASPasskeyAssertionCredentialExtensionOutput.largeBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B1D7BB5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = sub_1B1D7BB8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  sub_1B1D7BB9C();
  if ((*(v10 + 48))(v15, 1, v9))
  {
    result = sub_1B1CDEC18(v15, &qword_1EB774D60, &qword_1B1D85830);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return result;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1B1CDEC18(v15, &qword_1EB774D60, &qword_1B1D85830);
  sub_1B1D7BB7C();
  (*(v3 + 16))(v6, v8, v2);
  v17 = (*(v3 + 88))(v6, v2);
  v18 = v17;
  v19 = *MEMORY[0x1E698DF38];
  if (v17 == *MEMORY[0x1E698DF38])
  {
    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v12, v9);
    result = (*(v3 + 96))(v6, v2);
    v21 = *v6;
    v20 = v6[1];
  }

  else
  {
    if (v17 != *MEMORY[0x1E698DF40])
    {
      result = sub_1B1D7C32C();
      __break(1u);
      return result;
    }

    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v12, v9);
    result = (*(v3 + 96))(v6, v2);
    v20 = 0;
    v21 = *v6;
  }

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v18 != v19;
  return result;
}

uint64_t ASPasskeyAssertionCredentialExtensionOutput.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B1D7BB2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D68, &qword_1B1D85838);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1B1D7BB3C();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1B1CDEC18(v8, &qword_1EB774D68, &qword_1B1D85838);
    v9 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1B1CDEC18(v8, &qword_1EB774D68, &qword_1B1D85838);
    sub_1B1D7BB0C();
    v11 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
    sub_1B1D7BB1C();
    (*(v3 + 8))(v5, v2);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t ASPasskeyAssertionCredentialExtensionOutput.init(largeBlob:prf:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v34 - v5;
  v36 = sub_1B1D7BDAC();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D78, &qword_1B1D85848);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D68, &qword_1B1D85838);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_1B1D7BB5C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = *(a1 + 16);
  v23 = [objc_allocWithZone(sub_1B1D7BBBC()) init];
  if (v22 == 255)
  {
    v25 = sub_1B1D7BB8C();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    v26 = v23;
  }

  else
  {
    v24 = (v14 + 104);
    if (v22)
    {
      *v16 = v21 & 1;
      (*v24)(v16, *MEMORY[0x1E698DF40], v13);
    }

    else
    {
      *v16 = v21;
      *(v16 + 1) = v20;
      (*v24)(v16, *MEMORY[0x1E698DF38], v13);
      sub_1B1CE1110(v21, v20, 0);
    }

    v27 = v23;
    sub_1B1D7BB6C();
    sub_1B1CE10EC(v21, v20, v22);
    v28 = sub_1B1D7BB8C();
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
  }

  sub_1B1D7BBAC();
  v29 = v38;
  sub_1B1CE1028(v38, v9, &qword_1EB774D78, &qword_1B1D85848);
  v30 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
  if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
  {
    sub_1B1CDEC18(v9, &qword_1EB774D78, &qword_1B1D85848);
    v31 = 1;
  }

  else
  {
    (*(v34 + 16))(v35, v9, v36);
    sub_1B1CE1028(&v9[*(v30 + 20)], v37, &qword_1EB774D70, &qword_1B1D85840);
    sub_1B1D7BAFC();
    sub_1B1CE1090(v9);
    v31 = 0;
  }

  v32 = sub_1B1D7BB2C();
  (*(*(v32 - 8) + 56))(v12, v31, 1, v32);
  sub_1B1D7BB4C();

  result = sub_1B1CDEC18(v29, &qword_1EB774D78, &qword_1B1D85848);
  *v39 = v23;
  return result;
}

char *sub_1B1CE054C(void *a1)
{
  v2 = sub_1B1D7BB5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = [objc_allocWithZone(sub_1B1D7BBBC()) init];
  if (a1)
  {
    v10 = a1;
    if ([v10 didWrite])
    {
      *v5 = 1;
      (*(v3 + 104))(v5, *MEMORY[0x1E698DF40], v2);
      sub_1B1D7BB6C();
      v11 = sub_1B1D7BB8C();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
      sub_1B1D7BBAC();
    }

    else
    {
      v12 = [v10 readData];
      if (v12)
      {
        v13 = v12;
        v24 = sub_1B1D7B4EC();
        v25 = v9;
        v14 = v24;
        v16 = v15;

        *v5 = v14;
        *(v5 + 1) = v16;
        (*(v3 + 104))(v5, *MEMORY[0x1E698DF38], v2);
        v17 = v24;
        v18 = v16;
        sub_1B1CE111C(v24, v16);
        sub_1B1D7BB6C();
        v19 = sub_1B1D7BB8C();
        (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
        sub_1B1D7BBAC();
        v9 = v25;
        sub_1B1CDEFDC(v17, v18);
      }
    }
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];

  v21 = *&v20[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
  *&v20[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v9;
  v22 = v20;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v22;
}

id sub_1B1CE08C8()
{
  v1 = sub_1B1D7BB5C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = sub_1B1D7BB8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = *(v0 + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  sub_1B1D7BB9C();

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1B1CDEC18(v14, &qword_1EB774D60, &qword_1B1D85830);
    return 0;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_1B1CDEC18(v14, &qword_1EB774D60, &qword_1B1D85830);
    sub_1B1D7BB7C();
    (*(v2 + 16))(v5, v7, v1);
    v17 = (*(v2 + 88))(v5, v1);
    if (v17 == *MEMORY[0x1E698DF38])
    {
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
      (*(v2 + 96))(v5, v1);
      v18 = *v5;
      v19 = *(v5 + 1);
      if (v19 >> 60 == 15)
      {
        v20 = 0;
      }

      else
      {
        sub_1B1CE111C(*v5, *(v5 + 1));
        v20 = sub_1B1D7B4DC();
        sub_1B1C91AE4(v18, v19);
      }

      v21 = [objc_opt_self() _outputWithData_didWrite_];

      sub_1B1C91AE4(v18, v19);
      return v21;
    }

    else if (v17 == *MEMORY[0x1E698DF40])
    {
      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
      (*(v2 + 96))(v5, v1);
      return [objc_opt_self() _outputWithData_didWrite_];
    }

    else
    {
      result = sub_1B1D7C32C();
      __break(1u);
    }
  }

  return result;
}

char *ASPasskeyAssertionCredentialExtensionOutput.init(coder:)(void *a1)
{
  sub_1B1D7BBBC();
  v2 = sub_1B1D7C12C();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];

    v5 = *&v4[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
    *&v4[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v3;
    v6 = v4;

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ASPasskeyAssertionCredentialExtensionOutput.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  v4 = sub_1B1D7BE1C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t sub_1B1CE1028(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B1CE1090(uint64_t a1)
{
  v2 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1CE10EC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B1CE1104(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B1CE1104(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1B1C91AE4(result, a2);
  }

  return result;
}

void sub_1B1CE1110(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_1B1C91B94(a1, a2);
  }
}

void sub_1B1CE111C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t type metadata accessor for ASPasskeyAssertionCredentialExtensionOutput()
{
  result = qword_1EB774D90;
  if (!qword_1EB774D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB774D90);
  }

  return result;
}

uint64_t sub_1B1CE11CC()
{
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B1CE1268@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1B1CE1300(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_1B1D7C50C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
    sub_1B1D7B6CC();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1B1CE145C()
{
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1B1CE14F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1B1CE1590(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_1B1D7C50C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
    sub_1B1D7B6CC();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void sub_1B1CE16EC(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v1 + 72);
  *(a1 + 24) = v6;
  sub_1B1CE2000(v3, v4, v5, v6);
}

void sub_1B1CE1794(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 72);
  *(a2 + 24) = v7;
  sub_1B1CE2000(v4, v5, v6, v7);
}

void sub_1B1CE183C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v5 = v3;
  sub_1B1CE2000(v4[0], v1, v2, v3);
  sub_1B1CE1890(v4);
}

void sub_1B1CE1890(void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  sub_1B1CE2000(v6, v7, v8, *(v1 + 72));
  v10 = sub_1B1CE37F4(v6, v7, v8, v9, v2, v3, v4, v5);
  sub_1B1CE2398(v6, v7, v8, v9);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
    sub_1B1D7B6CC();
    sub_1B1CE2398(v2, v3, v4, v5);
  }

  else
  {
    v12 = *(v1 + 48);
    v13 = *(v1 + 56);
    v14 = *(v1 + 64);
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    v15 = *(v1 + 72);
    *(v1 + 72) = v5;

    sub_1B1CE2398(v12, v13, v14, v15);
  }
}

void sub_1B1CE1A50(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  if (*(v1 + 24))
  {
    sub_1B1D7C5EC();

    sub_1B1D7BE7C();
  }

  else
  {
    sub_1B1D7C5EC();
  }

  swift_getKeyPath();
  sub_1B1D7B6DC();

  if (*(v1 + 40))
  {
    sub_1B1D7C5EC();

    sub_1B1D7BE7C();
  }

  else
  {
    sub_1B1D7C5EC();
  }

  swift_getKeyPath();
  sub_1B1D7B6DC();

  v3 = *(v1 + 72);
  if (v3 < 0xFC)
  {
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    v6 = *(v1 + 64);
    sub_1B1D7C5EC();
    sub_1B1CE2014(v4, v5, v6, v3);
    ASOsloIcon.hash(into:)(a1);
    sub_1B1CE23AC(v4, v5, v6, v3);
  }

  else
  {
    sub_1B1D7C5EC();
  }
}

uint64_t sub_1B1CE1C4C()
{

  sub_1B1CE2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = OBJC_IVAR____TtC22AuthenticationServicesP33_69A77571B0FC9B54CADBF6C775CFD2A245ASCredentialRequestPaneHeaderRawConfiguration___observationRegistrar;
  v2 = sub_1B1D7B6FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B1CE1D08()
{
  sub_1B1D7C5CC();
  sub_1B1CE1A50(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CE1D70(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1CE1A50(v2);
  return sub_1B1D7C61C();
}

id ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  v9 = *(a5 + 16);
  v10 = *(a5 + 24);
  if (!a2)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_1B1D7BE1C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1B1D7BE1C();

LABEL_6:
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a6)) initWithTitle:v11 subtitle:v12];

  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v17 = v10;
  v14 = v13;
  sub_1B1CE1890(v16);

  return v14;
}

void ASCredentialRequestPaneHeaderConfiguration.icon.setter(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = v1;
  v5 = v2;
  sub_1B1CE1890(&v3);
}

void ASCredentialRequestPaneHeaderConfiguration.icon.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 72);
  *(a1 + 24) = v7;
  sub_1B1CE2000(v4, v5, v6, v7);
}

uint64_t type metadata accessor for ASCredentialRequestPaneHeaderRawConfiguration(uint64_t a1)
{
  result = qword_1EB774DB8;
  if (!qword_1EB774DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1CE2000(id result, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    sub_1B1CE2014(result, a2, a3, a4);
  }
}

void sub_1B1CE2014(id result, unint64_t a2, void *a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 <= 1)
  {
    if (!(a4 >> 5) || v4 == 1)
    {
    }
  }

  else
  {
    if (v4 == 2)
    {

      result = a3;
LABEL_12:

      v5 = result;
      return;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return;
      }

      goto LABEL_12;
    }

    v6 = a4 & 0x1F;

    sub_1B1CE20D4(result, a2, a3, v6);
  }
}

void sub_1B1CE20D4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    sub_1B1CE111C(a1, a2);
  }

  else if (!a4)
  {
  }
}

void sub_1B1CE20F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 72);
  *(a2 + 24) = v7;
  sub_1B1CE2000(v4, v5, v6, v7);
}

void sub_1B1CE21A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v5 = v3;
  sub_1B1CE2000(v4[0], v1, v2, v3);
  sub_1B1CE1890(v4);
}

void (*ASCredentialRequestPaneHeaderConfiguration.icon.modify(uint64_t **a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  v3[5] = v5;
  swift_getKeyPath();
  v4[4] = v5;
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v5 + 72);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  *(v4 + 24) = v9;
  sub_1B1CE2000(v6, v7, v8, v9);
  return sub_1B1CE2304;
}

void sub_1B1CE2304(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v9 = v7;
  if (a2)
  {
    sub_1B1CE2000(v4, v5, v6, v7);
    sub_1B1CE1890(v8);
    sub_1B1CE2398(*v3, v3[1], v3[2], *(v3 + 24));
  }

  else
  {
    sub_1B1CE1890(v8);
  }

  free(v3);
}

void sub_1B1CE2398(void *result, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    sub_1B1CE23AC(result, a2, a3, a4);
  }
}

void sub_1B1CE23AC(void *a1, unint64_t a2, void *a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 <= 1)
  {
    if (!(a4 >> 5) || v4 == 1)
    {
    }
  }

  else
  {
    if (v4 == 2)
    {

      a1 = a3;
LABEL_12:

      return;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return;
      }

      goto LABEL_12;
    }

    v5 = a4 & 0x1F;

    sub_1B1CE246C(a1, a2, a3, v5);
  }
}

uint64_t sub_1B1CE246C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_1B1CDEFDC(result, a2);
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t ASCredentialRequestPaneHeaderConfiguration.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t ASCredentialRequestPaneHeaderConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  v6 = *(v5 + 24);
  if (v6)
  {
    if (a2)
    {
      v7 = *(v5 + 16) == a1 && v6 == a2;
      if (v7 || (sub_1B1D7C50C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
    sub_1B1D7B6CC();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t ASCredentialRequestPaneHeaderConfiguration.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v2 = *(v1 + 32);

  return v2;
}

void sub_1B1CE294C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B1D7BE4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t ASCredentialRequestPaneHeaderConfiguration.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  v6 = *(v5 + 40);
  if (v6)
  {
    if (a2)
    {
      v7 = *(v5 + 32) == a1 && v6 == a2;
      if (v7 || (sub_1B1D7C50C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
    sub_1B1D7B6CC();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

void sub_1B1CE2B3C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B1D7BE4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B1CE2BA0(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_1B1D7BE1C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void __swiftcall ASCredentialRequestPaneHeaderConfiguration.init()(ASCredentialRequestPaneHeaderConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id ASCredentialRequestPaneHeaderConfiguration.init()()
{
  type metadata accessor for ASCredentialRequestPaneHeaderRawConfiguration(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = -4;
  sub_1B1D7B6EC();
  if (!*(v1 + 24))
  {
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    goto LABEL_6;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v6[0] = v1;
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6CC();

  if (!*(v1 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v3);
  v6[0] = v1;
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6CC();

LABEL_6:
  memset(v6, 0, sizeof(v6));
  v7 = -4;
  sub_1B1CE1890(v6);
  *&v0[OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration] = v1;
  v5.receiver = v0;
  v5.super_class = ASCredentialRequestPaneHeaderConfiguration;
  return objc_msgSendSuper2(&v5, sel_init);
}

void __swiftcall ASCredentialRequestPaneHeaderConfiguration.init(__title:subtitle:)(ASCredentialRequestPaneHeaderConfiguration *__return_ptr retstr, Swift::String_optional __title, Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  if (!__title.value._object)
  {
    v4 = 0;
    if (subtitle.value._object)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_1B1D7BE1C();

  if (!object)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_1B1D7BE1C();

LABEL_6:
  [objc_allocWithZone(swift_getObjCClassFromMetadata(retstr)) initWithTitle:v4 subtitle:v5];
}

id ASCredentialRequestPaneHeaderConfiguration.init(__title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ASCredentialRequestPaneHeaderRawConfiguration(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v10 + 72) = -4;
  sub_1B1D7B6EC();
  sub_1B1CE1300(a1, a2);
  sub_1B1CE1590(a3, a4);
  memset(v13, 0, sizeof(v13));
  v14 = -4;
  sub_1B1CE1890(v13);
  *&v5[OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration] = v10;
  v12.receiver = v5;
  v12.super_class = ASCredentialRequestPaneHeaderConfiguration;
  return objc_msgSendSuper2(&v12, sel_init);
}

BOOL ASCredentialRequestPaneHeaderConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B1CE371C(a1, v8);
  if (!v9)
  {
    sub_1B1CE378C(v8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  v4 = *&v7[OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration];

  v5 = sub_1B1CE39E0(v3, v4);

  return v5;
}

uint64_t ASCredentialRequestPaneHeaderConfiguration.hash.getter()
{
  sub_1B1D7C5CC();
  sub_1B1CE1A50(v1);
  return sub_1B1D7C61C();
}

id static ASCredentialRequestPaneHeaderConfiguration.passwordManagerHeader(withTitle:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  memset(v8, 0, sizeof(v8));
  v9 = 98;

  return ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(a2, a4, v8, v6);
}

id static ASCredentialRequestPaneHeaderConfiguration.credentialProviderHeader(withApplicationBundleID:title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = 0;
  v13 = 96;

  return ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(a4, a6, v12, v10);
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1B1CE371C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774DB0, &qword_1B1D85D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1CE378C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774DB0, &qword_1B1D85D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1CE37F4(void *a1, unint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  v12 = a4;
  if (a4 <= 0xFBu)
  {
    v24 = a1;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    if (a8 <= 0xFBu)
    {
      v20 = a5;
      v21 = a6;
      v22 = a7;
      v23 = a8;
      sub_1B1CE2000(a1, a2, a3, a4);
      sub_1B1CE2000(a5, a6, a7, v8);
      sub_1B1CE2000(a1, a2, a3, v12);
      v18 = _s22AuthenticationServices10ASOsloIconO2eeoiySbAC_ACtFZ_0(&v24, &v20);
      sub_1B1CE23AC(v20, v21, v22, v23);
      sub_1B1CE23AC(v24, v25, v26, v27);
      sub_1B1CE2398(a1, a2, a3, v12);
      v17 = !v18;
      return v17 & 1;
    }

    sub_1B1CE2000(a1, a2, a3, a4);
    sub_1B1CE2000(a5, a6, a7, v8);
    sub_1B1CE2000(a1, a2, a3, v12);
    sub_1B1CE23AC(a1, a2, a3, v12);
    goto LABEL_6;
  }

  v16 = a8;
  sub_1B1CE2000(a1, a2, a3, a4);
  sub_1B1CE2000(a5, a6, a7, v8);
  if (v16 <= 0xFB)
  {
LABEL_6:
    sub_1B1CE2398(a1, a2, a3, v12);
    sub_1B1CE2398(a5, a6, a7, v8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B1CE2398(a1, a2, a3, v12);
  v17 = 0;
  return v17 & 1;
}

BOOL sub_1B1CE39E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v26 = a1;
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  sub_1B1D7B6DC();

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();
  v26 = a2;

  sub_1B1D7B6DC();

  v6 = *(a2 + 24);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    if (v5 == *(a2 + 16) && v4 == v6)
    {
    }

    else
    {
      v7 = sub_1B1D7C50C();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_getKeyPath();
  v26 = a1;
  sub_1B1D7B6DC();

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_getKeyPath();
  v26 = a2;

  sub_1B1D7B6DC();

  v10 = *(a2 + 40);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v10)
  {
LABEL_14:

    return 0;
  }

  if (v9 == *(a2 + 32) && v8 == v10)
  {

    goto LABEL_18;
  }

  v11 = sub_1B1D7C50C();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  swift_getKeyPath();
  v26 = a1;
  sub_1B1D7B6DC();

  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_getKeyPath();
  v26 = a2;
  sub_1B1CE2000(v13, v12, v14, v15);
  sub_1B1D7B6DC();

  v17 = *(a2 + 48);
  v16 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a2 + 72);
  if (v15 <= 0xFB)
  {
    v26 = v13;
    v27 = v12;
    v28 = v14;
    v29 = v15;
    if (v19 <= 0xFB)
    {
      v22 = v17;
      v23 = v16;
      v24 = v18;
      v25 = v19;
      sub_1B1CE2000(v17, v16, v18, v19);
      sub_1B1CE2000(v13, v12, v14, v15);
      v20 = _s22AuthenticationServices10ASOsloIconO2eeoiySbAC_ACtFZ_0(&v26, &v22);
      sub_1B1CE23AC(v22, v23, v24, v25);
      sub_1B1CE23AC(v26, v27, v28, v29);
      sub_1B1CE2398(v13, v12, v14, v15);
      return v20;
    }

    sub_1B1CE2000(v17, v16, v18, v19);
    sub_1B1CE2000(v13, v12, v14, v15);
    sub_1B1CE23AC(v13, v12, v14, v15);
    goto LABEL_23;
  }

  sub_1B1CE2000(v17, v16, v18, v19);
  if (v19 <= 0xFB)
  {
LABEL_23:
    sub_1B1CE2398(v13, v12, v14, v15);
    sub_1B1CE2398(v17, v16, v18, v19);
    return 0;
  }

  sub_1B1CE2398(v13, v12, v14, v15);
  return 1;
}

id _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE18noCredentialsError15withServiceNameABSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1D7BE1C();
  v3 = noCredentialsErrorString();

  if (!v3)
  {
    sub_1B1D7BE4C();
    v3 = sub_1B1D7BE1C();
  }

  v4 = [objc_allocWithZone(ASCredentialRequestPaneHeaderConfiguration) initWithTitle:v3 subtitle:0];

  v7[0] = 0xD000000000000015;
  v7[1] = 0x80000001B1D9AC20;
  v7[2] = 0;
  v8 = 0;
  v5 = v4;
  sub_1B1CE1890(v7);

  return v5;
}

id _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE17signInFailedError12withSubtitleABSSSg_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1D7B65C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1D7B64C();
  sub_1B1D7B63C();
  (*(v4 + 8))(v6, v3);
  v7 = sub_1B1D7BE1C();

  if (a2)
  {
    v8 = sub_1B1D7BE1C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(ASCredentialRequestPaneHeaderConfiguration) initWithTitle:v7 subtitle:v8];

  v12[0] = 0xD000000000000018;
  v12[1] = 0x80000001B1D9AC00;
  v12[2] = 0;
  v13 = 0;
  v10 = v9;
  sub_1B1CE1890(v12);

  return v10;
}

unint64_t type metadata accessor for ASCredentialRequestPaneHeaderConfiguration()
{
  result = qword_1EB774DC8;
  if (!qword_1EB774DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB774DC8);
  }

  return result;
}

id _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE011securityKeyD04with5title8subtitleABSo0ab8SecurityI13PreferredIconV_SSSgAJtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 1)
  {
    v7 = 0x80000001B1D9ABC0;
    v8 = [objc_opt_self() as_authenticationServicesBundle];
    v9 = 64;
    v10 = 0xD000000000000010;
  }

  else
  {
    v8 = 0;
    v9 = 32;
    v7 = 0xEC00000079656B2ELL;
    v10 = 0x7974697275636573;
  }

  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  v13[0] = v10;
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;

  return ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(a3, a5, v13, v11);
}

uint64_t sub_1B1CE41BC(uint64_t a1)
{
  result = sub_1B1D7B6FC();
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

uint64_t sub_1B1CE4298(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCredentialRequestPaneHeaderRawConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1CE42DC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_1B1CE431C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

void sub_1B1CE435C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v0 + 48);
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v9 = *(v2 + 72);
  *(v2 + 72) = v8;
  sub_1B1CE2000(v1, v3, v4, v8);
  sub_1B1CE2398(v5, v6, v7, v9);
}

uint64_t ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.relyingPartyIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier);

  return v1;
}

uint64_t ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.challenge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge);
  sub_1B1CE111C(v1, *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge + 8));
  return v1;
}

uint64_t ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.userID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID);
  sub_1B1CE111C(v1, *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID + 8));
  return v1;
}

id sub_1B1CE44D8(void *a1)
{
  swift_getObjectType();
  sub_1B1CE60C8();
  v2 = sub_1B1D7C12C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B1D7B4EC();
    v6 = v5;

    sub_1B1D7B2BC();
    swift_allocObject();
    sub_1B1D7B2AC();
    sub_1B1CE6198(&qword_1EB774E78, &protocol conformance descriptor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest);
    sub_1B1D7B29C();

    v15 = v35;
    swift_getObjectType();
    v32 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_shouldRequestName);
    v31 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier);
    v29 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_acceptedContactIdentifiers);
    v30 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier + 8);
    v16 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge);
    v17 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge + 8);
    v18 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID);
    v19 = *(v35 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID + 8);
    v33 = a1;
    v20 = objc_allocWithZone(type metadata accessor for ASAuthorizationAccountCreationProvider());

    sub_1B1CE111C(v16, v17);
    sub_1B1CE111C(v18, v19);
    v21 = [v20 init];
    v22 = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_acceptedContactIdentifiers] = v29;
    v23[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_shouldRequestName] = v32;
    v24 = &v23[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier];
    *v24 = v31;
    v24[1] = v30;
    v25 = &v23[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge];
    *v25 = v16;
    v25[1] = v17;
    v26 = &v23[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID];
    *v26 = v18;
    v26[1] = v19;
    sub_1B1CE111C(v16, v17);
    sub_1B1CE111C(v18, v19);
    v34.receiver = v23;
    v34.super_class = v22;
    v27 = objc_msgSendSuper2(&v34, sel_initWithProvider_, v21);

    sub_1B1CDEFDC(v18, v19);
    sub_1B1CDEFDC(v16, v17);

    sub_1B1CDEFDC(v4, v6);
    swift_deallocPartialClassInstance();
    return v27;
  }

  else
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v7, qword_1EB782530);
    v8 = sub_1B1D7BD6C();
    v9 = sub_1B1D7C00C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136446210;
      v12 = sub_1B1D7C66C();
      v14 = sub_1B1D0D070(v12, v13, &v35);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B1C8D000, v8, v9, "Could not find encoded json for %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B273C4C0](v11, -1, -1);
      MEMORY[0x1B273C4C0](v10, -1, -1);
    }

    else
    {
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1B1CE4A84(void *a1)
{
  sub_1B1D7B2EC();
  swift_allocObject();
  sub_1B1D7B2DC();
  type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
  sub_1B1CE6198(&qword_1EB774E00, &protocol conformance descriptor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest);
  v2 = sub_1B1D7B2CC();
  v4 = v3;

  v5 = sub_1B1D7B4DC();
  v6 = sub_1B1D7BE1C();
  [a1 encodeObject:v5 forKey:v6];

  return sub_1B1CDEFDC(v2, v4);
}

uint64_t sub_1B1CE4C40()
{
  v1 = sub_1B1D7B8DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_acceptedContactIdentifiers);
  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = v0;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B1D19470(0, v6, 0);
    v7 = v23;
    v8 = (v5 + 32);
    v9 = *MEMORY[0x1E698DF08];
    v22 = *(v2 + 104);
    v21 = *MEMORY[0x1E698DF10];
    v20 = v2 + 32;
    do
    {
      if (*v8)
      {
        v10 = v21;
      }

      else
      {
        v10 = v9;
      }

      v22(v4, v10, v1);
      v23 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B1D19470((v11 > 1), v12 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v12 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v4, v1);
      ++v8;
      --v6;
    }

    while (v6);
    v0 = v19;
  }

  v13 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge);
  v14 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge + 8);
  v15 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID);
  v16 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID + 8);
  objc_allocWithZone(sub_1B1D7B8FC());
  sub_1B1CE111C(v13, v14);
  sub_1B1CE111C(v15, v16);

  return sub_1B1D7B8CC();
}

id ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.__allocating_init(provider:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithProvider_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B1CE4F64()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CE4FAC(uint64_t a1)
{
  v2 = *v1;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v2);
  return sub_1B1D7C61C();
}

unint64_t sub_1B1CE4FF0()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  if (v1 != 3)
  {
    v2 = 0x444972657375;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD00000000000001ALL;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1CE5098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1CE5F0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1CE50D8(uint64_t a1)
{
  v2 = sub_1B1CE552C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1CE5114(uint64_t a1)
{
  v2 = sub_1B1CE552C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1CE51FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774E08, &qword_1B1D85A40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CE552C();
  sub_1B1D7C63C();
  v13 = *(v3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_acceptedContactIdentifiers);
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774E18, &qword_1B1D85A48);
  sub_1B1CE5A80(&qword_1EB774E20, sub_1B1CE55C8, MEMORY[0x1E69E6300]);
  sub_1B1D7C4CC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B1D7C4AC();
    LOBYTE(v13) = 2;
    sub_1B1D7C49C();
    v9 = *(v3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge + 8);
    v13 = *(v3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge);
    v14 = v9;
    v15 = 3;
    sub_1B1CE111C(v13, v9);
    sub_1B1CE561C();
    sub_1B1D7C4CC();
    sub_1B1CDEFDC(v13, v14);
    v10 = *(v3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID + 8);
    v13 = *(v3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID);
    v14 = v10;
    v15 = 4;
    sub_1B1CE111C(v13, v10);
    sub_1B1D7C4CC();
    sub_1B1CDEFDC(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B1CE552C()
{
  result = qword_1EB774E10;
  if (!qword_1EB774E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E10);
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

unint64_t sub_1B1CE55C8()
{
  result = qword_1EB774E28;
  if (!qword_1EB774E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E28);
  }

  return result;
}

unint64_t sub_1B1CE561C()
{
  result = qword_1EB774E30;
  if (!qword_1EB774E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E30);
  }

  return result;
}

_BYTE *ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774E38, &qword_1B1D85A50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CE552C();
  sub_1B1D7C62C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774E18, &qword_1B1D85A48);
    v16 = 0;
    sub_1B1CE5A80(&qword_1EB774E40, sub_1B1CE5AF8, MEMORY[0x1E69E6330]);
    sub_1B1D7C43C();
    *(v1 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_acceptedContactIdentifiers) = v15;
    LOBYTE(v15) = 1;
    *(v1 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_shouldRequestName) = sub_1B1D7C41C() & 1;
    LOBYTE(v15) = 2;
    v10 = sub_1B1D7C40C();
    v11 = (v1 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier);
    *v11 = v10;
    v11[1] = v12;
    v16 = 3;
    sub_1B1CE5B4C();
    sub_1B1D7C43C();
    *(v1 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge) = v15;
    v16 = 4;
    sub_1B1D7C43C();
    *(v1 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID) = v15;
    v13 = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1B1CE5A80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB774E18, &qword_1B1D85A48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1CE5AF8()
{
  result = qword_1EB774E48;
  if (!qword_1EB774E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E48);
  }

  return result;
}

unint64_t sub_1B1CE5B4C()
{
  result = qword_1EB774E50;
  if (!qword_1EB774E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E50);
  }

  return result;
}

_BYTE *sub_1B1CE5BA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest());
  result = ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1CE5E08()
{
  result = qword_1EB774E58;
  if (!qword_1EB774E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E58);
  }

  return result;
}

unint64_t sub_1B1CE5E60()
{
  result = qword_1EB774E60;
  if (!qword_1EB774E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E60);
  }

  return result;
}

unint64_t sub_1B1CE5EB8()
{
  result = qword_1EB774E68;
  if (!qword_1EB774E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774E68);
  }

  return result;
}

uint64_t sub_1B1CE5F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001B1D9AD90 == a2;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B1D9ADB0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B1D9ADD0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1B1CE60C8()
{
  result = qword_1EB774E70;
  if (!qword_1EB774E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB774E70);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_1B1CE6198(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B1CE61D8()
{
  v1 = OBJC_IVAR____ASAgentCredentialUpdateListener_domainsToPartialAccountStore;
  *&v0[v1] = sub_1B1D6F9B4(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____ASAgentCredentialUpdateListener_internalLock] = 0;
  v2 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v3 = sub_1B1D7BE1C();
  v4 = [v2 initWithMachServiceName_];

  *&v0[OBJC_IVAR____ASAgentCredentialUpdateListener_listener] = v4;
  v10.receiver = v0;
  v10.super_class = _ASAgentCredentialUpdateListener;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = OBJC_IVAR____ASAgentCredentialUpdateListener_listener;
  v7 = *&v5[OBJC_IVAR____ASAgentCredentialUpdateListener_listener];
  v8 = v5;
  [v7 setDelegate_];
  [*&v5[v6] resume];

  return v8;
}

void sub_1B1CE6300(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v2, qword_1EB782548);

  oslog = sub_1B1D7BD6C();
  v3 = sub_1B1D7BFEC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775110, &qword_1B1D862E0);
    v6 = sub_1B1D7BE5C();
    v8 = sub_1B1D0D070(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1B1C8D000, oslog, v3, "%s disconnected", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B273C4C0](v5, -1, -1);
    MEMORY[0x1B273C4C0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B1CE650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1CE6554, 0, 0);
}

uint64_t sub_1B1CE6554()
{
  *(v0 + 112) = sub_1B1CE688C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1B1CE6674;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_1B1CFAAF0(v7, v6, v4, v5, v2, v3);
}

uint64_t sub_1B1CE6674()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B1CE67F8;
  }

  else
  {
    v2 = sub_1B1CE6788;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CE6788()
{
  v1 = *(v0 + 112);
  (*(v0 + 96))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B1CE67F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = v1;
  v2(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1CE688C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedNotificationManager];
  if (v10)
  {
    v11 = v10;
    sub_1B1D7B2BC();
    swift_allocObject();
    v5 = sub_1B1D7B2AC();
    sub_1B1CE95B0();
    sub_1B1D7B29C();

    if (v6)
    {
    }

    else
    {
      v13 = v31;
      v14 = sub_1B1CE793C(a1, a2);
      v15 = [objc_opt_self() sharedManager];
      v16 = type metadata accessor for _ASCredentialProviderExtensionNotificationManager();
      v17 = swift_allocObject();
      swift_defaultActor_initialize();
      v17[14] = v15;
      v32.receiver = v17;
      v32.super_class = v16;
      v18 = v15;
      v19 = objc_msgSendSuper2(&v32, sel_init);
      v20 = v19[14];
      v21 = v19;
      [v20 addWeakObserver_];

      updated = type metadata accessor for _ASCredentialUpdateController();
      v23 = objc_allocWithZone(updated);
      v24 = &v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_test_overrideCallingAppName];
      *v24 = 0;
      v24[1] = 0;
      *&v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection] = a3;
      *&v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore] = v14;
      *&v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager] = v11;
      *&v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager] = v21;
      v25 = objc_opt_self();
      v26 = a3;
      v27 = v14;
      [v26 auditToken];
      v28 = [v25 isClientWithAuditTokenAWebBrowser_];
      v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser] = v28;
      v23[OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options] = v13;
      v30.receiver = v23;
      v30.super_class = updated;
      v5 = objc_msgSendSuper2(&v30, sel_init);
    }
  }

  else
  {
    sub_1B1CE955C();
    swift_allocError();
    *v12 = xmmword_1B1D85C30;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1B1CE6C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1CE6CBC, 0, 0);
}

uint64_t sub_1B1CE6CBC()
{
  *(v0 + 96) = sub_1B1CE688C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B1CE6DD8;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_1B1CFC76C(v5, v4, v2, v3);
}

uint64_t sub_1B1CE6DD8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B1CE9AD4;
  }

  else
  {
    v2 = sub_1B1CE9AD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CE7000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 96) = v13;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1CE7040, 0, 0);
}

uint64_t sub_1B1CE7040()
{
  *(v0 + 104) = sub_1B1CE688C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1B1CE7160;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1B1CFF6BC(v6, v5, v4, v2, v3);
}

uint64_t sub_1B1CE7160()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B1CE72E4;
  }

  else
  {
    v2 = sub_1B1CE7274;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CE7274()
{
  v1 = *(v0 + 104);
  (*(v0 + 88))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B1CE72E4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = v1;
  v2(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1CE74C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1CE7504, 0, 0);
}

uint64_t sub_1B1CE7504()
{
  *(v0 + 96) = sub_1B1CE688C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B1CE7620;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_1B1D01A80(v5, v4, v2, v3);
}

uint64_t sub_1B1CE7620()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B1CE77A4;
  }

  else
  {
    v2 = sub_1B1CE7734;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CE7734()
{
  v1 = *(v0 + 96);
  (*(v0 + 80))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B1CE77A4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = v1;
  v2(v1);

  v4 = *(v0 + 8);

  return v4();
}

id sub_1B1CE793C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____ASAgentCredentialUpdateListener_internalLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v6));
  swift_endAccess();
  v7 = sub_1B1D7BE1C();
  v8 = [v7 safari_highLevelDomainFromHost];

  if (v8)
  {
    a1 = sub_1B1D7BE4C();
    a2 = v9;
  }

  else
  {
  }

  v10 = OBJC_IVAR____ASAgentCredentialUpdateListener_domainsToPartialAccountStore;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (*(v11 + 16) && (v12 = sub_1B1CE7FC0(a1, a2, sub_1B1CE7C4C), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;

    swift_beginAccess();
    os_unfair_lock_unlock((v3 + v6));
    swift_endAccess();
    return v15;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F88, &qword_1B1D85C60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B1D85C40;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    v18 = objc_allocWithZone(MEMORY[0x1E69C8A38]);

    v19 = sub_1B1D7BEDC();

    v20 = [v18 initPartialStoreForDomains:v19 forTesting:0];

    swift_beginAccess();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + v10);
    *(v3 + v10) = 0x8000000000000000;
    sub_1B1CE8044(v21, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v10) = v23;
    swift_endAccess();
    swift_beginAccess();
    os_unfair_lock_unlock((v3 + v6));
    swift_endAccess();
    return v21;
  }
}

unint64_t type metadata accessor for _ASAgentCredentialUpdateListener()
{
  result = qword_1EB774F60;
  if (!qword_1EB774F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB774F60);
  }

  return result;
}

unint64_t sub_1B1CE7C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B1D7C50C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1B1CE7D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F90, &unk_1B1D93950);
  v35 = v4;
  result = sub_1B1D7C36C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B1CE7FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  v5 = sub_1B1D7C61C();

  return a3(a1, a2, v5);
}

uint64_t sub_1B1CE8044(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B1CE7FC0(a2, a3, sub_1B1CE7C4C);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B1CE7D04(v16, a4 & 1);
      v11 = sub_1B1CE7FC0(a2, a3, sub_1B1CE7C4C);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B1D7C53C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1B1CE81E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1B1CE81E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F90, &unk_1B1D93950);
  v2 = *v0;
  v3 = sub_1B1D7C35C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B1CE8350(void *a1)
{
  v2 = v1;
  [a1 auditToken];
  v4 = WBSApplicationIdentifierFromAuditToken();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B1D7BE4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v9, qword_1EB782548);

  v10 = sub_1B1D7BD6C();
  v11 = sub_1B1D7BFEC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    aBlock = v6;
    *v12 = 136315138;
    aBlock_8 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775110, &qword_1B1D862E0);
    v14 = sub_1B1D7BE5C();
    v16 = sub_1B1D0D070(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B1C8D000, v10, v11, "Received connection from %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B273C4C0](v13, -1, -1);
    MEMORY[0x1B273C4C0](v12, -1, -1);
  }

  v17 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v8;
  v26 = sub_1B1CE9AB0;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  aBlock_8 = 1107296256;
  v24 = sub_1B1D25594;
  v25 = &block_descriptor;
  v19 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v19);
  [a1 resume];
  return 1;
}

unint64_t sub_1B1CE8634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F98, &unk_1B1D93960);
    v3 = sub_1B1D7C37C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B1CE9604(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B1CE7FC0(v13, v14, sub_1B1CE7C4C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B1CE9674(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B1CE8758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9, void (**a10)(void, void))
{
  v37 = a1;
  v38 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v35 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a10;
  v20 = objc_opt_self();
  _Block_copy(a10);
  v21 = [v20 currentConnection];
  if (v21)
  {
    v22 = v21;
    v36 = a6;
    v23 = sub_1B1D7BF4C();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v26 = v37;
    v25 = v38;
    v24[4] = a9;
    v24[5] = v26;
    v24[6] = a2;
    v24[7] = v22;
    v24[8] = a7;
    v24[9] = a8;
    v24[10] = a3;
    v24[11] = a4;
    v27 = v36;
    v24[12] = v25;
    v24[13] = v27;
    v24[14] = sub_1B1CE9ADC;
    v24[15] = v19;
    v28 = a9;

    sub_1B1CE111C(a7, a8);
    sub_1B1CE111C(a3, a4);

    sub_1B1D1A388(0, 0, v18, &unk_1B1D85C90, v24);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v29 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v29, qword_1EB782548);
    v30 = sub_1B1D7BD6C();
    v31 = sub_1B1D7C00C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B1C8D000, v30, v31, "No active connection.", v32, 2u);
      MEMORY[0x1B273C4C0](v32, -1, -1);
    }

    type metadata accessor for ASAuthorizationError(0);
    v39 = 1000;
    sub_1B1CE8634(MEMORY[0x1E69E7CC0]);
    sub_1B1CE93F8();
    sub_1B1D7B42C();
    v33 = v40;
    v34 = sub_1B1D7B43C();
    (a10)[2](a10, v34);
  }
}

void sub_1B1CE8A90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, void (**a8)(void, void))
{
  v33 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  v19 = objc_opt_self();
  _Block_copy(a8);
  v20 = [v19 currentConnection];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1B1D7BF4C();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v24 = v33;
    v23[4] = a7;
    v23[5] = v24;
    v23[6] = a2;
    v23[7] = v21;
    v23[8] = a5;
    v23[9] = a6;
    v23[10] = a3;
    v23[11] = a4;
    v23[12] = sub_1B1CE9ADC;
    v23[13] = v18;
    v25 = a7;

    sub_1B1CE111C(a5, a6);
    sub_1B1CE111C(a3, a4);

    sub_1B1D1A388(0, 0, v17, &unk_1B1D85C80, v23);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v26, qword_1EB782548);
    v27 = sub_1B1D7BD6C();
    v28 = sub_1B1D7C00C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B1C8D000, v27, v28, "No active connection.", v29, 2u);
      MEMORY[0x1B273C4C0](v29, -1, -1);
    }

    type metadata accessor for ASAuthorizationError(0);
    v34 = 1000;
    sub_1B1CE8634(MEMORY[0x1E69E7CC0]);
    sub_1B1CE93F8();
    sub_1B1D7B42C();
    v30 = v35;
    v31 = sub_1B1D7B43C();
    (a8)[2](a8, v31);
  }
}

void sub_1B1CE8DAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, void (**a9)(void, void))
{
  v32 = a1;
  v33 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a9;
  v19 = objc_opt_self();
  _Block_copy(a9);
  v20 = [v19 currentConnection];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1B1D7BF4C();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v24 = v32;
    v23[4] = a8;
    v23[5] = v24;
    v23[6] = a2;
    v23[7] = v21;
    v23[8] = a6;
    v23[9] = a7;
    v23[10] = a3;
    v23[11] = a4;
    v23[12] = v33;
    v23[13] = sub_1B1CE9ADC;
    v23[14] = v18;
    v25 = a8;

    sub_1B1CE111C(a6, a7);
    sub_1B1CE111C(a3, a4);

    sub_1B1D1A388(0, 0, v17, &unk_1B1D85C70, v23);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v26, qword_1EB782548);
    v27 = sub_1B1D7BD6C();
    v28 = sub_1B1D7C00C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B1C8D000, v27, v28, "No active connection.", v29, 2u);
      MEMORY[0x1B273C4C0](v29, -1, -1);
    }

    type metadata accessor for ASAuthorizationError(0);
    v34 = 1000;
    sub_1B1CE8634(MEMORY[0x1E69E7CC0]);
    sub_1B1CE93F8();
    sub_1B1D7B42C();
    v30 = v35;
    v31 = sub_1B1D7B43C();
    (a9)[2](a9, v31);
  }
}

void sub_1B1CE90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, void (**a8)(void, void))
{
  v32 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  v19 = objc_opt_self();
  _Block_copy(a8);
  v20 = [v19 currentConnection];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1B1D7BF4C();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = a7;
    v23[5] = a1;
    v23[6] = a2;
    v23[7] = v21;
    v23[8] = a5;
    v23[9] = a6;
    v23[10] = v32;
    v23[11] = a4;
    v23[12] = sub_1B1CE93F0;
    v23[13] = v18;
    v24 = a7;

    sub_1B1CE111C(a5, a6);

    sub_1B1D1A388(0, 0, v17, &unk_1B1D85C58, v23);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v25, qword_1EB782548);
    v26 = sub_1B1D7BD6C();
    v27 = sub_1B1D7C00C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B1C8D000, v26, v27, "No active connection.", v28, 2u);
      MEMORY[0x1B273C4C0](v28, -1, -1);
    }

    type metadata accessor for ASAuthorizationError(0);
    v33 = 1000;
    sub_1B1CE8634(MEMORY[0x1E69E7CC0]);
    sub_1B1CE93F8();
    sub_1B1D7B42C();
    v29 = v34;
    v30 = sub_1B1D7B43C();
    (a8)[2](a8, v30);
  }
}

unint64_t sub_1B1CE93F8()
{
  result = qword_1EB774F70;
  if (!qword_1EB774F70)
  {
    type metadata accessor for ASAuthorizationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774F70);
  }

  return result;
}

uint64_t sub_1B1CE9450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE9AD0;

  return sub_1B1CE74C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1B1CE955C()
{
  result = qword_1EB774F78;
  if (!qword_1EB774F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774F78);
  }

  return result;
}

unint64_t sub_1B1CE95B0()
{
  result = qword_1EB774F80;
  if (!qword_1EB774F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774F80);
  }

  return result;
}

uint64_t sub_1B1CE9604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FA0, &unk_1B1D93690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B1CE9674(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B1CE9684(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B1CE9AD0;

  return sub_1B1CE7000(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B1CE9794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE9AD0;

  return sub_1B1CE6C7C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B1CE98A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE99BC;

  return sub_1B1CE650C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B1CE99BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ASPasskeyRegistrationCredentialExtensionOutput.largeBlob.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1B1D7BD2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1B1D7BD3C();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    result = sub_1B1CDEC18(v8, &qword_1EB774FB0, &qword_1B1D85CA0);
    v10 = 2;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1B1CDEC18(v8, &qword_1EB774FB0, &qword_1B1D85CA0);
    v11 = sub_1B1D7BD1C();
    result = (*(v3 + 8))(v5, v2);
    v10 = v11 & 1;
  }

  *a1 = v10;
  return result;
}

uint64_t ASPasskeyRegistrationCredentialExtensionOutput.prf.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1B1D7BCDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FB8, &unk_1B1D85CA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1B1D7BCEC();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1B1CDEC18(v8, &unk_1EB774FB8, &unk_1B1D85CA8);
    v9 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1B1CDEC18(v8, &unk_1EB774FB8, &unk_1B1D85CA8);
    sub_1B1D0E02C(a1);
    (*(v3 + 8))(v5, v2);
    v9 = 0;
  }

  v10 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t ASPasskeyRegistrationCredentialExtensionOutput.init(largeBlob:prf:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FC8, &qword_1B1D85CB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FB8, &unk_1B1D85CA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  v21 = *a1;
  v22 = [objc_allocWithZone(sub_1B1D7BD5C()) init];
  v23 = v22;
  if (v21 == 2)
  {
    v24 = sub_1B1D7BD2C();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    v25 = v23;
  }

  else
  {
    v26 = v22;
    sub_1B1D7BD0C();
    v27 = sub_1B1D7BD2C();
    (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
  }

  sub_1B1D7BD4C();
  sub_1B1CE1028(a2, v14, &qword_1EB774FC8, &qword_1B1D85CB8);
  v28 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
  {
    sub_1B1CDEC18(v14, &qword_1EB774FC8, &qword_1B1D85CB8);
    v29 = 1;
  }

  else
  {
    v33 = a2;
    sub_1B1CE1028(&v14[*(v28 + 20)], v11, &qword_1EB774D70, &qword_1B1D85840);
    sub_1B1CE1028(&v14[*(v28 + 24)], v9, &qword_1EB774D70, &qword_1B1D85840);
    a2 = v33;
    sub_1B1D7BC9C();
    sub_1B1CEA240(v14);
    v29 = 0;
  }

  v30 = sub_1B1D7BCDC();
  (*(*(v30 - 8) + 56))(v17, v29, 1, v30);
  sub_1B1D7BCFC();

  result = sub_1B1CDEC18(a2, &qword_1EB774FC8, &qword_1B1D85CB8);
  *a3 = v23;
  return result;
}

uint64_t sub_1B1CEA240(uint64_t a1)
{
  v2 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1B1CEA2AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_allocWithZone(sub_1B1D7BD5C()) init];
  if (a1)
  {
    v6 = a1;
    [v6 isSupported];
    sub_1B1D7BD0C();
    v7 = sub_1B1D7BD2C();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_1B1D7BD4C();
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];

  v9 = *&v8[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
  *&v8[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v5;
  v10 = v8;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id sub_1B1CEA488()
{
  v1 = sub_1B1D7BD2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = *(v0 + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions);
  sub_1B1D7BD3C();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1B1CDEC18(v7, &qword_1EB774FB0, &qword_1B1D85CA0);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_1B1CDEC18(v7, &qword_1EB774FB0, &qword_1B1D85CA0);
    v10 = sub_1B1D7BD1C();
    (*(v2 + 8))(v4, v1);
    return [objc_opt_self() _outputWithIsSupported_];
  }
}

char *ASPasskeyRegistrationCredentialExtensionOutput.init(coder:)(void *a1)
{
  sub_1B1D7BD5C();
  v2 = sub_1B1D7C12C();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];

    v5 = *&v4[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions];
    *&v4[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions] = v3;
    v6 = v4;

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ASPasskeyRegistrationCredentialExtensionOutput.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions);
  v4 = sub_1B1D7BE1C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

unint64_t type metadata accessor for ASPasskeyRegistrationCredentialExtensionOutput()
{
  result = qword_1EB774FE0;
  if (!qword_1EB774FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB774FE0);
  }

  return result;
}

uint64_t sub_1B1CEA9E8()
{
  sub_1B1D7C5CC();
  v1 = *v0;
  if (v0[7])
  {
    v2 = v0[6];
    v3 = v0[2];
    MEMORY[0x1B273B630](1);
    sub_1B1D7BE7C();
    MEMORY[0x1B273B630](v3);
    sub_1B1D7BE7C();
    sub_1B1D7C5EC();
    if (v2)
    {
      sub_1B1D7BE7C();
    }
  }

  else
  {
    MEMORY[0x1B273B630](0);
    MEMORY[0x1B273B630](v1);
  }

  return sub_1B1D7C61C();
}

BOOL sub_1B1CEAAD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1B1CECF2C(v5, v7);
}

uint64_t sub_1B1CEAB70(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 56) == 1)
  {
    v3 = v1[6];
    v4 = v1[2];
    MEMORY[0x1B273B630](1);
    sub_1B1D7BE7C();
    MEMORY[0x1B273B630](v4);
    sub_1B1D7BE7C();
    if (v3)
    {
      sub_1B1D7C5EC();

      return sub_1B1D7BE7C();
    }

    else
    {
      return sub_1B1D7C5EC();
    }
  }

  else
  {
    MEMORY[0x1B273B630](0);
    return MEMORY[0x1B273B630](v2);
  }
}

uint64_t sub_1B1CEAC54(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[6];
  v5 = *(v1 + 56);
  sub_1B1D7C5CC();
  if (v5 == 1)
  {
    MEMORY[0x1B273B630](1);
    sub_1B1D7BE7C();
    MEMORY[0x1B273B630](v3);
    sub_1B1D7BE7C();
    sub_1B1D7C5EC();
    if (v4)
    {
      sub_1B1D7BE7C();
    }
  }

  else
  {
    MEMORY[0x1B273B630](0);
    MEMORY[0x1B273B630](v2);
  }

  return sub_1B1D7C61C();
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(securityKeyEntryForNewPIN:mode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata(a3));

  return [v5 initWithSecurityKeyEntryForNewPIN:a1 & 1 mode:a2];
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(securityKeyEntryForNewPIN:mode:preferredIcon:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata(a4));

  return [v7 initWithSecurityKeyEntryForNewPIN:a1 & 1 mode:a2 preferredIcon:a3];
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(securityKeyEntryForNewPIN:mode:preferredIcon:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = 2;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona] = v5;
  v6 = &v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a3 == 1)
  {
    v7 = 0x80000001B1D9ABC0;
    v8 = [objc_opt_self() as_authenticationServicesBundle];
    v9 = 64;
    v10 = 0xD000000000000010;
  }

  else
  {
    v8 = 0;
    v9 = 32;
    v7 = 0xEC00000079656B2ELL;
    v10 = 0x7974697275636573;
  }

  v11 = &v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon];
  *v11 = v10;
  *(v11 + 1) = v7;
  *(v11 + 2) = v8;
  v11[24] = v9;
  v15 = 0;
  v12 = &v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields];
  *v12 = a2;
  v12[56] = 0;
  v14.receiver = v3;
  v14.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(manualPasswordEntryForPasswordManagerWithSite:serviceName:serviceType:proxiedOriginDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1B1D7BE1C();

  v10 = sub_1B1D7BE1C();

  if (a7)
  {
    v12 = sub_1B1D7BE1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v11)) initWithManualPasswordEntryForPasswordManagerWithSite:v9 serviceName:v10 serviceType:a5 proxiedOriginDeviceName:v12];

  return v13;
}

{
  *(v7 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona) = 3;
  v8 = (v7 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
  *v8 = 0;
  v8[1] = 0;
  v9 = v7 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 98;
  v13 = 1;
  v10 = v7 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields;
  *v10 = a3;
  *(v10 + 8) = a4;
  *(v10 + 16) = a5;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a6;
  *(v10 + 48) = a7;
  *(v10 + 56) = 1;
  v12.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return objc_msgSendSuper2(&v12, sel_init);
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(manualPasswordEntryForCredentialProviderWithApplicationBundleID:site:serviceName:serviceType:proxiedOriginDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = sub_1B1D7BE1C();

  v11 = sub_1B1D7BE1C();

  v12 = sub_1B1D7BE1C();

  if (a9)
  {
    v14 = sub_1B1D7BE1C();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v13)) initWithManualPasswordEntryForCredentialProviderWithApplicationBundleID:v10 site:v11 serviceName:v12 serviceType:a7 proxiedOriginDeviceName:v14];

  return v15;
}

{
  *(v9 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona) = 3;
  v10 = (v9 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = v9 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon;
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = 0;
  *(v11 + 24) = 96;
  v15 = 1;
  v12 = v9 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields;
  *v12 = a5;
  *(v12 + 8) = a6;
  *(v12 + 16) = a7;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a8;
  *(v12 + 48) = a9;
  *(v12 + 56) = 1;
  v14.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(manualPasswordEntryForCredentialProviderWithProxiedIconData:proxiedIconScale:site:serviceName:serviceType:proxiedOriginDeviceName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v13 = sub_1B1D7B4DC();
  v14 = sub_1B1D7BE1C();

  v15 = sub_1B1D7BE1C();

  if (a10)
  {
    v17 = sub_1B1D7BE1C();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v16)) initWithManualPasswordEntryForCredentialProviderWithProxiedIconData:v13 proxiedIconScale:v14 site:v15 serviceName:a7 serviceType:v17 proxiedOriginDeviceName:a9];

  sub_1B1CDEFDC(a1, a2);
  return v18;
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(manualPasswordEntryForCredentialProviderWithProxiedIconData:proxiedIconScale:site:serviceName:serviceType:proxiedOriginDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  *(v10 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona) = 3;
  v11 = (v10 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = v10 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a9;
  *(v12 + 24) = 97;
  v16 = 1;
  v13 = v10 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields;
  *v13 = a5;
  *(v13 + 8) = a6;
  *(v13 + 16) = a7;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a8;
  *(v13 + 48) = a10;
  *(v13 + 56) = 1;
  v15.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return objc_msgSendSuper2(&v15, sel_init);
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(persona:presentationContext:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a3)) initWithPersona:a1 presentationContext:a2];

  return v4;
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(persona:presentationContext:)(unint64_t a1, void *a2)
{
  v3 = sub_1B1CED06C(a1, a2);

  return v3;
}

id sub_1B1CEB87C(void *a1)
{
  result = [a1 overrideTitle];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1D7BE4C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1B1CEB8FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 proxiedIconData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B1D7B4EC();
    v8 = v7;

    v9 = [a1 proxiedIconScale];
    if (v9)
    {
      v10 = v9;
      [v9 doubleValue];
      v12 = v11;

      *a2 = v6;
      *(a2 + 8) = v8;
      *(a2 + 16) = v12;
      v13 = 97;
LABEL_26:
      *(a2 + 24) = v13;
      return;
    }

    sub_1B1CDEFDC(v6, v8);
  }

  v14 = sub_1B1D111FC();
  v15 = v14;
  if (*(v14 + 16) == 1)
  {
    v16 = sub_1B1CF620C(v14);
    if (v17 >= 2)
    {
      if (v17 != 2)
      {
        v30 = v16;
        v31 = v17;

        *a2 = v30;
        *(a2 + 8) = v31;
LABEL_25:
        *(a2 + 16) = 0;
        v13 = 96;
        goto LABEL_26;
      }
    }

    else
    {
      sub_1B1CED588(v16, v17);
    }
  }

  if (([a1 requestTypes] & 2) != 0)
  {

    v25 = [a1 appIdentifier];
LABEL_23:
    v26 = v25;
    v27 = sub_1B1D7BE4C();
    v29 = v28;

    *a2 = v27;
    *(a2 + 8) = v29;
    goto LABEL_25;
  }

  v18 = 0;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 56);
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = v18;
LABEL_20:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    if (*(*(v15 + 48) + ((v23 << 10) | (16 * v24)) + 8) >= 2uLL)
    {

      v25 = [a1 appIdentifier];
      goto LABEL_23;
    }
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v13 = 98;
      goto LABEL_26;
    }

    v21 = *(v15 + 56 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_1B1CEBB1C@<X0>(id a1@<X1>, unint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v8 = a1;
  if (a2 < 3)
  {
    result = [objc_opt_self() modeForPresentationContext_];
    v11 = 0;
    goto LABEL_17;
  }

  if (a2 != 3)
  {
    result = 0;
    v3 = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
    v8 = 0;
    v6 = 0;
    v11 = -1;
    goto LABEL_17;
  }

  v12 = [a1 serviceName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B1D7BE4C();
    v3 = v15;
  }

  else
  {
    v14 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = [v8 serviceType];
  v16 = [v8 proxiedAssociatedDomains];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_1B1D7BEEC();

  if (!v18[2])
  {

LABEL_12:
    v7 = 0;
    v5 = 0xE000000000000000;
    goto LABEL_13;
  }

  v7 = v18[4];
  v5 = v18[5];

LABEL_13:
  v19 = [v8 proxiedOriginDeviceName];
  if (v19)
  {
    v20 = v19;
    v8 = sub_1B1D7BE4C();
    v6 = v21;
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  result = v14;
  v11 = 1;
LABEL_17:
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v8;
  *(a3 + 48) = v6;
  *(a3 + 56) = v11;
  return result;
}

BOOL ASPasswordAuthenticationPaneViewControllerConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B1CE1028(a1, &v30, &qword_1EB774DB0, &qword_1B1D85D40);
  if (!*(&v31 + 1))
  {
    v8 = &qword_1EB774DB0;
    v9 = &qword_1B1D85D40;
LABEL_13:
    sub_1B1CDEC18(&v30, v8, v9);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = *v37;
    v4 = [v1 persona];
    if (v4 == [v3 persona])
    {
      v5 = *&v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle + 8];
      v6 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle + 8];
      if (v5)
      {
        if (!v6)
        {
          goto LABEL_15;
        }

        v7 = *&v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle] == *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle] && v5 == v6;
        if (!v7 && (sub_1B1D7C50C() & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v6)
      {
        goto LABEL_15;
      }

      v13 = *&v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon];
      v12 = *&v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 8];
      v14 = *&v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 16];
      v15 = v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 24];
      v17 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon];
      v16 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 8];
      v18 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 16];
      v19 = v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 24];
      if (v15 > 0xFB)
      {
        sub_1B1CE2000(*&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon], *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 8], *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 16], v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 24]);
        sub_1B1CE2000(v13, v12, v14, v15);
        if (v19 > 0xFB)
        {
          sub_1B1CE2398(v13, v12, v14, v15);
LABEL_26:
          v21 = &v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields];
          v22 = v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 56];
          v23 = &v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields];
          v25 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 16];
          v24 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 32];
          v26 = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields];
          *&v43[9] = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 41];
          v42[1] = v25;
          *v43 = v24;
          v42[0] = v26;
          v27 = *(v21 + 1);
          v38 = *v21;
          v39 = v27;
          v40 = *(v21 + 2);
          v41 = *(v21 + 6);
          *&v37[7] = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields];
          *&v37[23] = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 16];
          *&v37[39] = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 32];
          *&v37[48] = *&v3[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 41];
          if (v22 == 255)
          {
            sub_1B1CE1028(v42, &v30, &qword_1EB775008, &qword_1B1D85D48);

            if (v43[24] == 255)
            {
              return 1;
            }
          }

          else
          {
            if (v43[24] != 255)
            {
              v30 = *v23;
              v31 = v23[1];
              *v32 = v23[2];
              *&v32[9] = *(v23 + 41);
              v28 = *(v21 + 1);
              v44[0] = *v21;
              v44[1] = v28;
              v44[2] = *(v21 + 2);
              v45 = *(v21 + 6);
              v46 = v22;
              v10 = sub_1B1CECF2C(v44, &v30);

              return v10;
            }

            v29 = *(v21 + 1);
            v30 = *v21;
            v31 = v29;
            *v32 = *(v21 + 2);
            *&v32[16] = *(v21 + 6);
            v32[24] = v22;
            sub_1B1CED208(&v30, v44);
          }

          v30 = v38;
          v31 = v39;
          *v32 = v40;
          v33 = *v37;
          v34 = *&v37[16];
          v35 = *&v37[32];
          *&v32[16] = v41;
          v32[24] = v22;
          v36 = *&v37[48];
          v8 = &unk_1EB775010;
          v9 = &unk_1B1D85D50;
          goto LABEL_13;
        }

LABEL_24:
        sub_1B1CE2398(v13, v12, v14, v15);
        sub_1B1CE2398(v17, v16, v18, v19);
        return 0;
      }

      *&v30 = *&v1[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon];
      *(&v30 + 1) = v12;
      *&v31 = v14;
      BYTE8(v31) = v15;
      if (v19 > 0xFB)
      {
        sub_1B1CE2000(v17, v16, v18, v19);
        sub_1B1CE2000(v13, v12, v14, v15);
        sub_1B1CE2000(v13, v12, v14, v15);

        sub_1B1CE23AC(v13, v12, v14, v15);
        goto LABEL_24;
      }

      *v37 = v17;
      *&v37[8] = v16;
      *&v37[16] = v18;
      v37[24] = v19;
      sub_1B1CE2000(v17, v16, v18, v19);
      sub_1B1CE2000(v13, v12, v14, v15);
      sub_1B1CE2000(v13, v12, v14, v15);
      v20 = _s22AuthenticationServices10ASOsloIconO2eeoiySbAC_ACtFZ_0(&v30, v37);
      sub_1B1CE23AC(*v37, *&v37[8], *&v37[16], v37[24]);
      sub_1B1CE23AC(v30, *(&v30 + 1), v31, BYTE8(v31));
      sub_1B1CE2398(v13, v12, v14, v15);
      if (v20)
      {
        goto LABEL_26;
      }
    }

LABEL_15:
  }

  return 0;
}

uint64_t ASPasswordAuthenticationPaneViewControllerConfiguration.hash.getter()
{
  v1 = [v0 persona];
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  v2 = sub_1B1D7C61C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775110, &qword_1B1D862E0);
  v3 = sub_1B1D7C19C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775018, &qword_1B1D85D60);
  sub_1B1CED240();
  v4 = v2 ^ sub_1B1D7C19C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775008, &qword_1B1D85D48);
  sub_1B1CED294();
  return v3 ^ v4 ^ sub_1B1D7C19C();
}

uint64_t ASPasswordAuthenticationPaneViewControllerConfiguration.passwordCredentialSite.getter()
{
  v1 = (v0 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields);
  v2 = *(v0 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 56);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    return 0;
  }

  v3 = v1[3];
  sub_1B1CED2E8(*v1, v1[1], v1[2], v3, v1[4], v1[5], v1[6], 1);

  return v3;
}

void __swiftcall ASPasswordAuthenticationPaneViewControllerConfiguration.headerConfiguration()(ASCredentialRequestPaneHeaderConfiguration *__return_ptr retstr)
{
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  sub_1B1CEC55C();
  v3 = v2;
  sub_1B1CEC978();
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 8);
  v7 = *(v1 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 16);
  v8 = *(v1 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 24);
  v10[0] = *(v1 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon);
  v10[1] = v6;
  v10[2] = v7;
  v11 = v8;
  sub_1B1CE2000(v10[0], v6, v7, v8);
  ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(v3, v5, v10, v9);
}

uint64_t sub_1B1CEC55C()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - v7;
  if (!*(v0 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle + 8))
  {
    v10 = (v0 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields);
    v11 = *(v0 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 56);
    if (v11 == 255)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v12 = *v10;
    if ((v11 & 1) == 0)
    {
      v18 = [objc_opt_self() titleWithMode_];
      v9 = sub_1B1D7BE4C();

      goto LABEL_15;
    }

    v13 = v6;
    v14 = v10[1];
    v15 = v10[2];
    v17 = v10[5];
    v16 = v10[6];

    if (v16)
    {
      if (v15 <= 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B64C();
        v27 = sub_1B1D7B62C();
        v28 = v17;
        v19 = *(v2 + 8);
        v19(v5, v13);
        v19(v8, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1B1D85D30;
        v21 = MEMORY[0x1E69E6158];
        *(v20 + 56) = MEMORY[0x1E69E6158];
        v22 = sub_1B1CED4EC();
        *(v20 + 32) = v12;
        *(v20 + 40) = v14;
        *(v20 + 96) = v21;
        *(v20 + 104) = v22;
        v23 = v28;
        *(v20 + 64) = v22;
        *(v20 + 72) = v23;
        *(v20 + 80) = v16;
LABEL_14:
        v9 = sub_1B1D7BE2C();

        goto LABEL_15;
      }
    }

    else if (v15 <= 1)
    {
      sub_1B1D7B64C();
      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v24 = *(v2 + 8);
      v24(v5, v13);
      v24(v8, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B1D85C40;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1B1CED4EC();
      *(v25 + 32) = v12;
      *(v25 + 40) = v14;
      goto LABEL_14;
    }

    v9 = 0;
    goto LABEL_15;
  }

  v9 = *(v0 + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
LABEL_15:

  return v9;
}

uint64_t sub_1B1CEC978()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 persona];
  if (!v5 || v5 == 2 || (v6 = 0, v5 == 1))
  {
    sub_1B1D7B64C();
    v6 = sub_1B1D7B63C();
    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

void __swiftcall ASPasswordAuthenticationPaneViewControllerConfiguration.init()(ASPasswordAuthenticationPaneViewControllerConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id ASPasswordAuthenticationPaneViewControllerConfiguration.init(manualPasswordEntryForSite:serviceName:serviceType:proxiedOriginDeviceName:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8)
{
  v9 = *a8;
  v10 = *(a8 + 1);
  v11 = a8[2];
  if (!*(a8 + 24))
  {
    v26 = sub_1B1D7BE1C();
    v12 = sub_1B1D7BE1C();

    v13 = sub_1B1D7BE1C();

    if (a7)
    {
      v15 = sub_1B1D7BE1C();
    }

    else
    {
      v15 = 0;
    }

    v18 = v26;
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v16)) initWithManualPasswordEntryForCredentialProviderWithApplicationBundleID:v26 site:v12 serviceName:v13 serviceType:a5 proxiedOriginDeviceName:v15];
    v20 = v9;
    v21 = v10;
    v22 = *&v11;
    v23 = 0;
    goto LABEL_13;
  }

  if (*(a8 + 24) == 1)
  {
    v25 = sub_1B1D7B4DC();
    v12 = sub_1B1D7BE1C();

    v13 = sub_1B1D7BE1C();

    if (a7)
    {
      v15 = sub_1B1D7BE1C();
    }

    else
    {
      v15 = 0;
    }

    v18 = v25;
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v14)) initWithManualPasswordEntryForCredentialProviderWithProxiedIconData:v25 proxiedIconScale:v12 site:v13 serviceName:a5 serviceType:v15 proxiedOriginDeviceName:v11];
    v20 = v9;
    v21 = v10;
    v22 = *&v11;
    v23 = 1;
LABEL_13:
    sub_1B1CE246C(v20, v21, v22, v23);

    goto LABEL_16;
  }

  v12 = sub_1B1D7BE1C();

  v13 = sub_1B1D7BE1C();

  if (a7)
  {
    v15 = sub_1B1D7BE1C();
  }

  else
  {
    v15 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v17)) initWithManualPasswordEntryForPasswordManagerWithSite:v12 serviceName:v13 serviceType:a5 proxiedOriginDeviceName:v15];
LABEL_16:

  return v19;
}

BOOL sub_1B1CECF2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((a1[7] & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return v3 == *a2;
    }

    return 0;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v4 != v10)
    {
      return 0;
    }

LABEL_12:
    if ((v5 != v9 || v6 != v12) && (sub_1B1D7C50C() & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (!v13 || (v7 != v11 || v8 != v13) && (sub_1B1D7C50C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    return 1;
  }

  v15 = sub_1B1D7C50C();
  result = 0;
  if ((v15 & 1) != 0 && v4 == v10)
  {
    goto LABEL_12;
  }

  return result;
}

id sub_1B1CED06C(unint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona] = a1;
  v5 = sub_1B1CEB87C(a2);
  v6 = &v2[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle];
  *v6 = v5;
  *(v6 + 1) = v7;
  if (a1 >= 3)
  {
    if (a1 == 3)
    {
      sub_1B1CED540(0, &qword_1EB775050, off_1E7AF68D0);
      sub_1B1CEB8FC(a2, &v17);
      v8 = *(&v17 + 1);
      v11 = v17;
      v9 = v18;
      v10 = BYTE8(v18);
    }

    else
    {
      v11 = 0;
      v8 = 0;
      v9 = 0;
      v10 = -4;
    }
  }

  else if ([a2 useAlternativeSecurityKeysIcon])
  {
    v8 = 0x80000001B1D9ABC0;
    v9 = [objc_opt_self() as_authenticationServicesBundle];
    v10 = 64;
    v11 = 0xD000000000000010;
  }

  else
  {
    v9 = 0;
    v10 = 32;
    v8 = 0xEC00000079656B2ELL;
    v11 = 0x7974697275636573;
  }

  v12 = &v2[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon];
  *v12 = v11;
  *(v12 + 1) = v8;
  *(v12 + 2) = v9;
  v12[24] = v10;
  sub_1B1CEBB1C(a2, a1, &v17);
  v13 = &v2[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields];
  v14 = v18;
  *v13 = v17;
  *(v13 + 1) = v14;
  *(v13 + 2) = v19[0];
  *(v13 + 41) = *(v19 + 9);
  v16.receiver = v2;
  v16.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_1B1CED240()
{
  result = qword_1EB775020;
  if (!qword_1EB775020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775020);
  }

  return result;
}

unint64_t sub_1B1CED294()
{
  result = qword_1EB775028;
  if (!qword_1EB775028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775028);
  }

  return result;
}

void sub_1B1CED2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1CED374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B1CED3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B1CED430()
{
  result = qword_1EB775038;
  if (!qword_1EB775038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775038);
  }

  return result;
}

void sub_1B1CED484(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != -1)
  {
    sub_1B1CED49C(result, a2, a3, a4, a5, a6, a7, a8 & 1);
  }
}

void sub_1B1CED49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }
}

unint64_t sub_1B1CED4EC()
{
  result = qword_1EB775048;
  if (!qword_1EB775048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775048);
  }

  return result;
}

uint64_t sub_1B1CED540(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1B1CED588(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1B1CED598(a1, a2);
  }

  return a1;
}

uint64_t sub_1B1CED598(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id sub_1B1CED6D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1B1D7B91C();
  v5 = v4;
  v6 = sub_1B1D7B92C();
  v8 = v7;
  sub_1B1D7B93C();
  v9 = sub_1B1D7B90C();
  v10 = [objc_allocWithZone(ASAuthorizationPlatformPublicKeyCredentialRegistration) initWithCoreCredential_];

  v11 = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredential(0);
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  v14 = sub_1B1D7B3BC();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = &v12[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v12[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber];
  *v15 = v3;
  v15[1] = v5;
  *v16 = v6;
  v16[1] = v8;
  swift_beginAccess();
  sub_1B1CED898(v2, &v12[v13]);
  swift_endAccess();
  *&v12[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration] = v10;
  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_1B1CED908(v2);
  return v17;
}

uint64_t sub_1B1CED898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1CED908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialRegistration.prf.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1B1D7BCDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FB8, &unk_1B1D85CA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = [v1 coreCredential];
  v11 = [v10 extensions];

  if (v11)
  {
    sub_1B1D7BCEC();

    if (!(*(v4 + 48))(v9, 1, v3))
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_1B1CDEC18(v9, &unk_1EB774FB8, &unk_1B1D85CA8);
      sub_1B1D0E02C(a1);
      (*(v4 + 8))(v6, v3);
      v12 = 0;
      goto LABEL_6;
    }

    sub_1B1CDEC18(v9, &unk_1EB774FB8, &unk_1B1D85CA8);
  }

  v12 = 1;
LABEL_6:
  v13 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

id ASAuthorizationPlatformPublicKeyCredentialRegistration.__largeBlobSwift.getter()
{
  v1 = sub_1B1D7BD2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = [v0 coreCredential];
  v9 = [v8 extensions];

  if (!v9)
  {
    return 0;
  }

  sub_1B1D7BD3C();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1B1CDEC18(v7, &qword_1EB774FB0, &qword_1B1D85CA0);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_1B1CDEC18(v7, &qword_1EB774FB0, &qword_1B1D85CA0);
  v11 = sub_1B1D7BD1C();
  (*(v2 + 8))(v4, v1);
  return [objc_opt_self() _outputWithIsSupported_];
}

id ASAuthorizationPlatformPublicKeyCredentialRegistration.__prfSwift.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - v2;
  v4 = sub_1B1D7BDAC();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v34 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - v7;
  v9 = sub_1B1D7BCDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FB8, &unk_1B1D85CA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v32 - v14;
  v16 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 coreCredential];
  v20 = [v19 extensions];

  if (!v20)
  {
    return 0;
  }

  sub_1B1D7BCEC();

  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_1B1CDEC18(v15, &unk_1EB774FB8, &unk_1B1D85CA8);
    return 0;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1B1CDEC18(v15, &unk_1EB774FB8, &unk_1B1D85CA8);
  sub_1B1D7BCBC();
  v23 = v35;
  v22 = v36;
  if ((*(v35 + 48))(v3, 1, v36) == 1)
  {
    sub_1B1CDEC18(v3, &qword_1EB774D70, &qword_1B1D85840);
    v24 = sub_1B1D7BCAC();
    (*(v10 + 8))(v12, v9);
    *v18 = v24 & 1;
    v25 = *(v23 + 56);
    v25(&v18[*(v16 + 20)], 1, 1, v22);
    v25(&v18[*(v16 + 24)], 1, 1, v22);
  }

  else
  {
    v26 = *(v23 + 32);
    v32[1] = v23 + 32;
    v33 = v26;
    v27 = v3;
    v28 = v22;
    v26(v8, v27, v22);
    v29 = v34;
    (*(v23 + 16))(v34, v8, v28);
    sub_1B1D7BCCC();
    (*(v23 + 8))(v8, v28);
    (*(v10 + 8))(v12, v9);
    *v18 = 1;
    v30 = *(v16 + 20);
    v33(&v18[v30], v29, v28);
    (*(v23 + 56))(&v18[v30], 0, 1, v28);
  }

  v31 = sub_1B1D0E2B4();
  sub_1B1CEA240(v18);
  return v31;
}

id sub_1B1CEE3C4()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 safari_isPasswordManagerTestMode];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(sub_1B1D7B81C()) init];
  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v3, qword_1EB782530);
  v4 = v2;
  v5 = sub_1B1D7BD6C();
  v6 = sub_1B1D7BFEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_1B1C8D000, v5, v6, "Applying test options: %{public}@", v7, 0xCu);
    sub_1B1CEE550(v8);
    MEMORY[0x1B273C4C0](v8, -1, -1);
    MEMORY[0x1B273C4C0](v7, -1, -1);
  }

  return v4;
}

uint64_t sub_1B1CEE550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775058, &unk_1B1D880B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1CEE5B8()
{
  v1 = *(v0 + 16);
  *v61 = *v0;
  v62 = v1;
  v63[0] = *(v0 + 32);
  *(v63 + 15) = *(v0 + 47);
  v58 = v61[0];
  v2 = [v61[0] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v3 = sub_1B1D7BEEC();

  v60 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_4:
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
        v6 = v5 + 1;
        if (!__OFADD__(v5, 1))
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v4 = sub_1B1D7C1FC();
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v5, v3);
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

LABEL_7:
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && (v59 = v7, (sub_1B1CF6F88(&v59, v61) & 1) != 0))
      {
        sub_1B1D7C2DC();
        sub_1B1D7C30C();
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        if (v6 == v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (v6 == v4)
        {
          goto LABEL_19;
        }
      }

      ++v5;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_19:

  v8 = v60;
  v9 = [v58 loginChoices];
  v10 = sub_1B1D7BEEC();

  v60 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    goto LABEL_85;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v57 = v8;
  v13 = 0;
  v8 = v10 & 0xFFFFFFFFFFFFFF8;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B273B2E0](v13, v10);
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_32;
    }

LABEL_28:
    if ([v14 loginChoiceKind])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B1D7C2DC();
      sub_1B1D7C30C();
      sub_1B1D7C31C();
      sub_1B1D7C2EC();
    }

    ++v13;
    if (v15 == v11)
    {
      goto LABEL_33;
    }
  }

  if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v14 = *(v10 + 8 * v13 + 32);
  swift_unknownObjectRetain();
  v15 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v50 = v60;
  v8 = v57;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_35:

  v16 = [v58 loginChoices];
  v17 = sub_1B1D7BEEC();

  v60 = v12;
  v51 = v17;
  if (!(v17 >> 62))
  {
    v10 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_37;
    }

LABEL_87:
    v49 = v8 & 0x4000000000000000;
    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_88;
  }

  v10 = sub_1B1D7C1FC();
  if (!v10)
  {
    goto LABEL_87;
  }

LABEL_37:
  v18 = 0;
  v54 = v17 & 0xFFFFFFFFFFFFFF8;
  v55 = v17 & 0xC000000000000001;
  v49 = v8 & 0x4000000000000000;
  v19 = (v8 >> 62) & 1;
  if (v8 < 0)
  {
    LODWORD(v19) = 1;
  }

  v53 = v19;
  v52 = v10;
  while (1)
  {
LABEL_41:
    if (v55)
    {
      MEMORY[0x1B273B2E0](v18, v51);
      v20 = __OFADD__(v18++, 1);
      if (v20)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v18 >= *(v54 + 16))
      {
        goto LABEL_84;
      }

      swift_unknownObjectRetain();
      v20 = __OFADD__(v18++, 1);
      if (v20)
      {
        goto LABEL_83;
      }
    }

    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v18 == v10)
    {
      goto LABEL_79;
    }
  }

  if (v53)
  {
    v21 = sub_1B1D7C1FC();
  }

  else
  {
    v21 = *(v8 + 16);
  }

  v56 = v18;
  swift_unknownObjectRetain();
  if (v21)
  {
    v22 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1B273B2E0](v22, v8);
      }

      else
      {
        if (v22 >= *(v8 + 16))
        {
          goto LABEL_81;
        }

        v24 = *(v8 + 8 * v22 + 32);
      }

      v10 = v24;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        v11 = sub_1B1D7C1FC();
        goto LABEL_21;
      }

      v26 = [v24 relyingPartyIdentifier];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 safari_highLevelDomainForPasswordManager];

        v29 = sub_1B1D7BE4C();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = [v58 site];
      if (!v32)
      {
        sub_1B1D7BE4C();
        v32 = sub_1B1D7BE1C();
      }

      v33 = [v32 safari_highLevelDomainForPasswordManager];

      v34 = sub_1B1D7BE4C();
      v36 = v35;

      if (!v31)
      {
        break;
      }

      if (v29 == v34 && v31 == v36)
      {
      }

      else
      {
        v37 = sub_1B1D7C50C();

        if ((v37 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      v38 = [v10 userVisibleName];
      v39 = sub_1B1D7BE4C();
      v41 = v40;

      v42 = [v58 username];
      v43 = sub_1B1D7BE4C();
      v45 = v44;

      if (v39 == v43 && v41 == v45)
      {
        swift_unknownObjectRelease_n();

        goto LABEL_72;
      }

      v23 = sub_1B1D7C50C();

      if (v23)
      {
        swift_unknownObjectRelease_n();
        goto LABEL_72;
      }

LABEL_50:
      ++v22;
      if (v25 == v21)
      {
        goto LABEL_71;
      }
    }

LABEL_69:

    goto LABEL_50;
  }

LABEL_71:
  swift_unknownObjectRelease();
  sub_1B1D7C2DC();
  sub_1B1D7C30C();
  sub_1B1D7C31C();
  sub_1B1D7C2EC();
LABEL_72:
  v10 = v52;
  v18 = v56;
  if (v56 != v52)
  {
    goto LABEL_41;
  }

LABEL_79:
  v46 = v60;
LABEL_88:

  if (v8 < 0 || v49)
  {
    v47 = sub_1B1D7C33C();
  }

  else
  {
    v47 = v8;
    sub_1B1D7C51C();
  }

  sub_1B1D0C36C(v50);
  sub_1B1D0C36C(v46);
  return v47;
}

void sub_1B1CEED90(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = *v2;
  v5 = *(v2 + 41);
  v6 = *(v2 + 42);
  v17 = *v2;
  v7 = *(v2 + 24);
  v18 = *(v2 + 8);
  v19 = v7;
  v20 = *(v2 + 40);
  v21 = v5;
  v22 = v6;
  v23 = *(v2 + 50);
  if (sub_1B1D11E00(a2))
  {
    v8 = [v4 appIdentifier];
    v9 = sub_1B1D7BE4C();
    v11 = v10;

    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    if (v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v12 = -4;
    }

    else
    {
      v13 = sub_1B1D111FC();
      v17 = v4;
      v14 = *(v2 + 24);
      v18 = *(v2 + 8);
      v19 = v14;
      v20 = *(v2 + 40);
      v21 = v5;
      v22 = *(v2 + 42);
      v23 = *(v2 + 50);
      sub_1B1D11EF8(v13, &v16);

      v15 = v16;
      if (v16 == 3)
      {
        *a1 = xmmword_1B1D85E80;
        *(a1 + 16) = 0;
        v12 = 64;
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = v15;
        v12 = -64;
      }
    }

    *(a1 + 24) = v12;
  }
}

uint64_t sub_1B1CEEEE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *v2;
  v25 = *(v2 + 8);
  v26 = *(v2 + 16);
  v24 = *(v2 + 24);
  v5 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  v6 = v5;
  v27 = MEMORY[0x1E69E7CC0];
  v7 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_17:
    v8 = sub_1B1D7C1FC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v20 = v7;
      v21 = a1;
      v22 = a2;
      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B273B2E0](v9, v6);
          a2 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v7 = *(v6 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          a2 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v27;
            a1 = v21;
            a2 = v22;
            v7 = v20;
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_47;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_1B1D12324();
        swift_unknownObjectRelease();
        if (v10)
        {
          sub_1B1D7C2DC();
          a1 = *(v27 + 16);
          sub_1B1D7C30C();
          sub_1B1D7C31C();
          sub_1B1D7C2EC();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (a2 == v8)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_19:
  if ((v11 & 0x4000000000000000) != 0)
  {
LABEL_47:
    v12 = sub_1B1D7C1FC();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  if (v7)
  {
    v13 = sub_1B1D7C1FC();
  }

  else
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 == v13)
  {
    v14 = [v23 isPasskeyRequest];
    v15 = sub_1B1CEE5B8();
    if (v15 >> 62)
    {
      v16 = sub_1B1D7C1FC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v14;
    *(a2 + 1) = v12 > 1;
    *(a2 + 2) = v16 != 0;
    type metadata accessor for ASAuthorizationUIContext.Message(0);
    goto LABEL_40;
  }

  if (v13 == 1)
  {
    v17 = [a1 loginChoiceKind];
    if (v17 <= 2)
    {
      switch(v17)
      {
        case 0:
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            *a2 = [v19 underlyingAppleIDLoginChoice];
            type metadata accessor for ASAuthorizationUIContext.Message(0);
            goto LABEL_40;
          }

LABEL_39:
          type metadata accessor for ASAuthorizationUIContext.Message(v19);
LABEL_40:

          return swift_storeEnumTagMultiPayload();
        case 1:
          return sub_1B1CF9888(a2);
        case 2:
          return sub_1B1CF64A0(a2);
      }
    }

    v19 = 0;
    goto LABEL_39;
  }

  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v24 & 1;
  type metadata accessor for ASAuthorizationUIContext.Message(0);
  swift_storeEnumTagMultiPayload();

  return sub_1B1CEF6D4(v25, v26);
}

uint64_t sub_1B1CEF358@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 32);
  v6 = *(v2 + 44);
  v7 = *(v2 + 48);
  v8 = *(v2 + 49);
  result = [a1 loginChoiceKind];
  v10 = 0;
  v11 = 3;
  if (result > 1)
  {
    if (result == 2)
    {
      objc_opt_self();
      v21 = [swift_dynamicCastObjCClassUnconditional() externalCredentialProviderName];
      if (v21)
      {

        v22 = 0;
      }

      else
      {
        v32 = v5;
        v23 = [v4 platformUserVerificationPreference];
        v30 = sub_1B1D7BE4C();
        v25 = v24;

        if (v30 == sub_1B1D7BE4C() && v25 == v26)
        {

          v22 = 1;
        }

        else
        {
          v31 = sub_1B1D7C50C();

          v22 = v31 | v8;
        }

        v5 = v32;
      }

      v28 = ASAuthorizationUIContext.loginChoicesToShow.getter();
      if (v28 >> 62)
      {
        v29 = sub_1B1D7C1FC();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v29 > 1;
      v11 = 2;
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (result != 5)
    {
LABEL_7:
      *a2 = v10;
LABEL_16:
      *(a2 + 10) = 1;
      *(a2 + 8) = v11;
      return result;
    }

LABEL_10:
    *a2 = v10;
    if (v6)
    {
      if (v6 == 1 || v5 != 1)
      {
        v11 |= 0x100u;
      }

      else
      {
        v11 |= 0x300u;
      }
    }

    goto LABEL_16;
  }

  if (result)
  {
    if (result != 1)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    v12 = ([swift_dynamicCastObjCClassUnconditional() isExternal] ^ 1) & v7;
    v13 = ASAuthorizationUIContext.loginChoicesToShow.getter();
    v14 = v13 >> 62 ? sub_1B1D7C1FC() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v10 = v14 > 1;
    v11 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v15 = 3;
  v16 = 4;
  if (v5 == 1)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  if (v6 == 1)
  {
    v18 = 1;
  }

  else
  {
    v16 = 2 * (v5 != 1);
    v18 = v17;
  }

  if (v6)
  {
    v15 = v16;
    v19 = v18;
  }

  else
  {
    v19 = 4;
  }

  v20 = (v19 << 8) + 65539;
  *a2 = v15;
  *(a2 + 8) = v20;
  *(a2 + 10) = BYTE2(v20);
  return result;
}

uint64_t ASEmailIdentifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASEmailIdentifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1CEF7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B1CEF7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B1CEF868(uint64_t a1, int a2)
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

uint64_t sub_1B1CEF8B0(uint64_t result, int a2, int a3)
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

uint64_t ASCredentialUpdater.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = [objc_allocWithZone(_ASAgentCredentialUpdateListenerProxy) init];
  *(v0 + 16) = 1;
  return v0;
}

uint64_t ASCredentialUpdater.init()()
{
  *(v0 + 24) = [objc_allocWithZone(_ASAgentCredentialUpdateListenerProxy) init];
  *(v0 + 16) = 1;
  return v0;
}

uint64_t (*ASCredentialUpdater.shouldShowNotifications.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1B1CEF9DC;
}

uint64_t ASCredentialUpdater.reportPublicKeyCredentialUpdate(relyingPartyIdentifier:userHandle:newName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CEFA18, 0, 0);
}

uint64_t sub_1B1CEFA18()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 24);
  v3 = sub_1B1D7BE1C();
  *(v0 + 200) = v3;
  v4 = sub_1B1D7B4DC();
  *(v0 + 208) = v4;
  v5 = sub_1B1D7BE1C();
  *(v0 + 216) = v5;
  v6 = *(v1 + 16);
  sub_1B1D7B2EC();
  swift_allocObject();
  sub_1B1D7B2DC();
  *(v0 + 80) = v6;
  sub_1B1CEFE94();
  v7 = sub_1B1D7B2CC();
  v9 = v8;

  v10 = sub_1B1D7B4DC();
  *(v0 + 224) = v10;
  sub_1B1CDEFDC(v7, v9);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1CEFC54;
  v11 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775078, &unk_1B1D936A0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CEFEE8;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v11;
  [v2 reportPublicKeyCredentialUpdateForRelyingParty:v3 userHandle:v4 newName:v5 credentialUpdaterOptions:v10 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1CEFC54()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1B1CEFDE0;
  }

  else
  {
    v2 = sub_1B1CEFD64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CEFD64()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1CEFDE0()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_willThrow();

  sub_1B1CF112C(v2);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

unint64_t sub_1B1CEFE94()
{
  result = qword_1EB775070;
  if (!qword_1EB775070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775070);
  }

  return result;
}

uint64_t sub_1B1CEFEE8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775098, &qword_1B1D86088);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1B1CEFFA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ASCredentialUpdater.reportUnknownPublicKeyCredential(relyingPartyIdentifier:credentialID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF0044, 0, 0);
}

uint64_t sub_1B1CF0044()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 24);
  v3 = sub_1B1D7BE1C();
  *(v0 + 184) = v3;
  v4 = sub_1B1D7B4DC();
  *(v0 + 192) = v4;
  v5 = *(v1 + 16);
  sub_1B1D7B2EC();
  swift_allocObject();
  sub_1B1D7B2DC();
  *(v0 + 80) = v5;
  sub_1B1CEFE94();
  v6 = sub_1B1D7B2CC();
  v8 = v7;

  v9 = sub_1B1D7B4DC();
  *(v0 + 200) = v9;
  sub_1B1CDEFDC(v6, v8);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1CF0264;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775078, &unk_1B1D936A0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CEFEE8;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v10;
  [v2 reportUnknownPublicKeyCredentialForRelyingParty:v3 credentialID:v4 credentialUpdaterOptions:v9 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1CF0264()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1B1CF18A8;
  }

  else
  {
    v2 = sub_1B1CF18A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t ASCredentialUpdater.reportAllAcceptedPublicKeyCredentials(relyingPartyIdentifier:userHandle:acceptedCredentialIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF039C, 0, 0);
}

uint64_t sub_1B1CF039C()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 24);
  v3 = sub_1B1D7BE1C();
  *(v0 + 192) = v3;
  v4 = sub_1B1D7B4DC();
  *(v0 + 200) = v4;
  v5 = sub_1B1D7BEDC();
  *(v0 + 208) = v5;
  v6 = *(v1 + 16);
  sub_1B1D7B2EC();
  swift_allocObject();
  sub_1B1D7B2DC();
  *(v0 + 80) = v6;
  sub_1B1CEFE94();
  v7 = sub_1B1D7B2CC();
  v9 = v8;

  v10 = sub_1B1D7B4DC();
  *(v0 + 216) = v10;
  sub_1B1CDEFDC(v7, v9);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1CF05D8;
  v11 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775078, &unk_1B1D936A0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CEFEE8;
  *(v0 + 104) = &block_descriptor_8;
  *(v0 + 112) = v11;
  [v2 reportAllAcceptedPublicKeyCredentialsForRelyingParty:v3 userHandle:v4 acceptedCredentialIDs:v5 credentialUpdaterOptions:v10 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1CF05D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1B1CF0764;
  }

  else
  {
    v2 = sub_1B1CF06E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CF06E8()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1CF0764()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  sub_1B1CF112C(v2);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t ASCredentialUpdater.reportUnusedPasswordCredential(domain:userName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF0840, 0, 0);
}

uint64_t sub_1B1CF0840()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 24);
  v3 = sub_1B1D7BE1C();
  *(v0 + 184) = v3;
  v4 = sub_1B1D7BE1C();
  *(v0 + 192) = v4;
  v5 = *(v1 + 16);
  sub_1B1D7B2EC();
  swift_allocObject();
  sub_1B1D7B2DC();
  *(v0 + 80) = v5;
  sub_1B1CEFE94();
  v6 = sub_1B1D7B2CC();
  v8 = v7;

  v9 = sub_1B1D7B4DC();
  *(v0 + 200) = v9;
  sub_1B1CDEFDC(v6, v8);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1CF0A60;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775078, &unk_1B1D936A0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CEFEE8;
  *(v0 + 104) = &block_descriptor_12;
  *(v0 + 112) = v10;
  [v2 reportUnusedPasswordCredentialForDomain:v3 username:v4 credentialUpdaterOptions:v9 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1CF0A60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1B1CF0BE0;
  }

  else
  {
    v2 = sub_1B1CF0B70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CF0B70()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B1CF0BE0()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  sub_1B1CF112C(v2);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t ASCredentialUpdater.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1CF0CE4()
{
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](0);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CF0D28(uint64_t a1)
{
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](0);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1CF0D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001B1D9B4E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B1CF0E18(uint64_t a1)
{
  v2 = sub_1B1CF157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1CF0E54(uint64_t a1)
{
  v2 = sub_1B1CF157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1CF0E90@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775090, &qword_1B1D86080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CF157C();
  sub_1B1D7C62C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = sub_1B1D7C41C();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1B1CF0FF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775080, &qword_1B1D86078);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CF157C();
  sub_1B1D7C63C();
  sub_1B1D7C4AC();
  return (*(v3 + 8))(v5, v2);
}

id sub_1B1CF112C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775098, &qword_1B1D86088);
  if (swift_dynamicCast())
  {
    sub_1B1CE955C();
    v2 = swift_allocError();
    *v3 = v16;
    v3[1] = v17;
    v4 = sub_1B1D7B43C();

    v5 = @"com.apple.AuthenticationServices.AuthorizationError";
    v6 = [v4 userInfo];
    sub_1B1D7BDDC();

    v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v8 = sub_1B1D7BDCC();

    v9 = [v7 initWithDomain:v5 code:1004 userInfo:v8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 40) = v11;
    swift_getErrorValue();
    *(inited + 72) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0);
    v5 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v8 = sub_1B1D7BDCC();

    v9 = [v13 initWithDomain:v5 code:1004 userInfo:v8];
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for ASCredentialUpdater.Options(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCredentialUpdater.Options(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1CF157C()
{
  result = qword_1EB775088;
  if (!qword_1EB775088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775088);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B1CF1634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FA0, &unk_1B1D93690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ASCredentialUpdater.Options.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ASCredentialUpdater.Options.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1B1CF1788()
{
  result = qword_1EB7750A8;
  if (!qword_1EB7750A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750A8);
  }

  return result;
}

unint64_t sub_1B1CF17E0()
{
  result = qword_1EB7750B0;
  if (!qword_1EB7750B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750B0);
  }

  return result;
}

unint64_t sub_1B1CF1838()
{
  result = qword_1EB7750B8;
  if (!qword_1EB7750B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750B8);
  }

  return result;
}

uint64_t sub_1B1CF1A50(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_1B1D7BE4C();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v5[5] = v10;
  v11 = sub_1B1D7BE4C();
  v13 = v12;
  v5[6] = v12;
  v14 = a1;
  a5;
  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_1B1CF1B74;

  return sub_1B1CF3E94(v14, a2, v10, v11, v13);
}

uint64_t sub_1B1CF1B74(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v2)
  {
    if (v6)
    {
      v10 = *(v5 + 32);
      v11 = sub_1B1D7B43C();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v13 = *(v5 + 32);
      v11 = sub_1B1D7BE1C();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  v14 = *(v9 + 8);

  return v14();
}