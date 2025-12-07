void sub_1E115CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHAssetCollectionClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHAssetCollectionClass_block_invoke_cold_1();
    PhotosLibrary();
  }
}

void PhotosLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotosLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8704E98;
    v3 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHPhotoLibraryClass_block_invoke_cold_1();
    return __51__CLFSystemShellSwitcher_sharedSystemShellSwitcher__block_invoke();
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id CLFSortedCommunicationLimits(uint64_t a1)
{
  if (CLFSortedCommunicationLimits_onceToken != -1)
  {
    CLFSortedCommunicationLimits_cold_1();
  }

  v2 = CLFSortedCommunicationLimits_SortedCommunicationLimits;

  return v2;
}

void __CLFSortedCommunicationLimits_block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"selectedContacts";
  v2[1] = @"contacts";
  v2[2] = @"everyone";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = CLFSortedCommunicationLimits_SortedCommunicationLimits;
  CLFSortedCommunicationLimits_SortedCommunicationLimits = v0;
}

id CLFWallpaperDirectory()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:AXCPSharedResourcesDirectory()];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Accessibility/ClarityBoard/Wallpaper" isDirectory:1];

  return v1;
}

id CLFWallpaperURL()
{
  v0 = CLFWallpaperDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"clarityBoardWallpaper.jpeg"];

  return v1;
}

void sub_1E11606B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E1160BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E1160CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAPSubjectClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APSubject");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPSubjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAPSubjectClass_block_invoke_cold_1();
    AppProtectionLibrary();
  }
}

void AppProtectionLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppProtectionLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8704FC8;
    v3 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8704FE0;
    v6 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPDCPreflightManagerClass_block_invoke_cold_1();
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

Class __getLSApplicationRecordClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8704FF8;
    v6 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LSApplicationRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationRecordClass_block_invoke_cold_1();
  }

  getLSApplicationRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAPApplicationClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAPApplicationClass_block_invoke_cold_1();
    return [(CLFMessagesSettings *)v3 requiresMoreRestrictiveOutgoingCommunicationLimit];
  }

  return result;
}

uint64_t CLFListLayout.description.getter(uint64_t a1)
{
  v1 = 1684632167;
  v2 = sub_1E1162E80();
  v4 = v3;
  if (v2 == sub_1E1162E80() && v4 == v5)
  {
    goto LABEL_7;
  }

  v7 = sub_1E1162ED0();

  if (v7)
  {
    return v1;
  }

  v1 = 0x6B63617473;
  v9 = sub_1E1162E80();
  v11 = v10;
  if (v9 == sub_1E1162E80() && v11 == v12)
  {
LABEL_7:

    return v1;
  }

  v14 = sub_1E1162ED0();

  if (v14)
  {
    return v1;
  }

  result = sub_1E1162EB0();
  __break(1u);
  return result;
}

uint64_t sub_1E116224C(uint64_t a1, id *a2)
{
  result = sub_1E1162E60();
  *a2 = 0;
  return result;
}

uint64_t sub_1E11622C4(uint64_t a1, id *a2)
{
  v3 = sub_1E1162E70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E1162344@<X0>(uint64_t *a2@<X8>)
{
  sub_1E1162E80();
  v3 = sub_1E1162E50();

  *a2 = v3;
  return result;
}

uint64_t sub_1E1162388(void *a1, uint64_t *a2)
{
  v2 = sub_1E1162E80();
  v4 = v3;
  if (v2 == sub_1E1162E80() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E1162ED0();
  }

  return v7 & 1;
}

uint64_t sub_1E1162410@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1E1162E50();

  *a2 = v3;
  return result;
}

uint64_t sub_1E1162458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1162E80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void type metadata accessor for CLFListLayout()
{
  if (!qword_1ECEA7AA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECEA7AA0);
    }
  }
}

uint64_t sub_1E11624D4(uint64_t a1)
{
  v2 = sub_1E116270C(&qword_1ECEA7AC0, &unk_1E1163FCC);
  v3 = sub_1E116270C(&qword_1ECEA7AC8, &unk_1E1163F6C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E1162608()
{
  v0 = sub_1E1162E80();
  v1 = MEMORY[0x1E12EFDE0](v0);

  return v1;
}

uint64_t sub_1E1162644(uint64_t a1)
{
  sub_1E1162E80();
  sub_1E1162E90();
}

uint64_t sub_1E1162698(uint64_t a1)
{
  sub_1E1162E80();
  sub_1E1162EE0();
  sub_1E1162E90();
  v1 = sub_1E1162EF0();

  return v1;
}

uint64_t sub_1E116270C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLFListLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}