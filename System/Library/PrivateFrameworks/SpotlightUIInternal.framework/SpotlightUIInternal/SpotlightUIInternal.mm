void lockStateChanged_0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D4C898];
  v4 = [v2 view];
  v5 = [v3 deviceIsAuthenticatedForView:v4];

  v6 = [v2 spotlightIsVisible];
  if (v5)
  {
    if (([v2 lastQueryWasAuthenticated] & 1) == 0)
    {
      v7 = [v2 navigationController];
      v8 = [v7 _appearState];

      if (v8)
      {
        if ([v2 spotlightIsVisible])
        {
          v9 = [v2 navigationController];
          v10 = [v9 topViewController];

          if (v10 == v2)
          {
            v11 = [v2 searchHeader];
            [v11 triggerSearchForUnlock];
          }
        }
      }
    }
  }

  else
  {
    v12 = v6;
    v13 = MEMORY[0x277D65D40];
    v14 = *MEMORY[0x277D65D40];
    if (!*MEMORY[0x277D65D40])
    {
      SPUIInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_26B837000, v14, OS_LOG_TYPE_DEFAULT, "clearing since we are no longer authenticated", v15, 2u);
    }

    [v2 clearSearchResultsAndFetchZKW:v12 resetZKW:1];
  }
}

void sub_26B83A748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B83BC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26B8413D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BF0, &qword_26B867358);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_26B84148C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BF0, &qword_26B867358);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B841540()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B84157C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C08, &qword_26B867378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26B844EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B84DB18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B84DC8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void HardwareKeyboardAvailabilityChanged(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __HardwareKeyboardAvailabilityChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t homeScreenPrefChanged(uint64_t a1, void *a2)
{
  v3 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B837000, v3, OS_LOG_TYPE_DEFAULT, "toggling zkw pref", v5, 2u);
  }

  return [a2 _refreshRequested];
}

void sub_26B8570E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t PS_PSKillProcessNamed()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPSKillProcessNamedSymbolLoc_ptr;
  v6 = getPSKillProcessNamedSymbolLoc_ptr;
  if (!getPSKillProcessNamedSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getPSKillProcessNamedSymbolLoc_block_invoke;
    v2[3] = &unk_279D07528;
    v2[4] = &v3;
    __getPSKillProcessNamedSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    PS_PSKillProcessNamed_cold_1();
  }

  return v0(@"parsecd");
}

void sub_26B85B838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B85C72C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B85CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B85D3B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26B85D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_26B85D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B85E694(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void *__getPSKillProcessNamedSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PreferencesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PreferencesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279D07548;
    v7 = 0;
    PreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = PreferencesLibraryCore_frameworkLibrary;
    if (PreferencesLibraryCore_frameworkLibrary)
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

  v2 = PreferencesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "PSKillProcessNamed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPSKillProcessNamedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PreferencesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t sub_26B860A80(uint64_t a1)
{
  v2 = sub_26B862BE4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26B862C24();
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

id sub_26B860B90()
{
  type metadata accessor for SPUIFTEView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DCE0B8 = result;
  return result;
}

uint64_t sub_26B860BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BC0, &qword_26B867278);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  *v5 = sub_26B862C84();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BC8, &qword_26B867280);
  sub_26B860D6C(v1, &v5[*(v6 + 44)]);
  v7 = sub_26B862CA4();
  KeyPath = swift_getKeyPath();
  v9 = &v5[*(v3 + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  sub_26B861B50();
  sub_26B862CC4();
  sub_26B8621DC(v5, &qword_280424BC0, &qword_26B867278);
  v10 = objc_opt_self();
  [v10 standardTableCellContentInset];
  v12 = v11;
  [v10 standardTableCellContentInset];
  v14 = v13;
  LOBYTE(v10) = sub_26B862C94();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BE0, &qword_26B8672C8);
  v16 = a1 + *(result + 36);
  *v16 = v10;
  *(v16 + 8) = 0x402E000000000000;
  *(v16 + 16) = v12;
  *(v16 + 24) = 0;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_26B860D6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a1;
  v69 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BF8, &qword_26B867368);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C00, &qword_26B867370);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C08, &qword_26B867378);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v72 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v60 - v8;
  v9 = type metadata accessor for FTEView(0);
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = v10;
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C10, &qword_26B867380);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C18, &qword_26B867388);
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v79 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - v19;
  sub_26B862C74();
  if (qword_280DCE040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_280DCE0B8;
  LOWORD(v59) = 256;
  v58 = 0;
  v77 = sub_26B862CB4();
  v78 = v22;
  v67 = v23;
  v66 = v24;
  KeyPath = swift_getKeyPath();
  v25 = v68;
  sub_26B861CC8(v68, v11);
  v26 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v27 = swift_allocObject();
  sub_26B862080(v11, v27 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C20, &qword_26B8673C0);
  sub_26B862148();
  sub_26B862D24();
  sub_26B8623E8(&qword_280DCDE98, &qword_280424C10, &qword_26B867380, MEMORY[0x277CDF028]);
  sub_26B862CD4();
  (*(v13 + 8))(v15, v12);
  v28 = [objc_opt_self() shouldDisplayTapToRadar];
  v29 = 1;
  if (v28)
  {
    v30 = sub_26B862C74();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_26B861CC8(v25, v11);
    v37 = swift_allocObject();
    v38 = sub_26B862080(v11, v37 + v26);
    MEMORY[0x28223BE20](v38);
    *(&v60 - 6) = v30;
    *(&v60 - 5) = v32;
    *(&v60 - 32) = v34 & 1;
    *(&v60 - 3) = v36;
    v58 = 0x6C6C69662E746E61;
    v59 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280424C30, &qword_26B8673D0);
    sub_26B8623E8(&qword_280DCDEA0, &unk_280424C30, &qword_26B8673D0, MEMORY[0x277CDEFF0]);
    v39 = v61;
    sub_26B862D24();

    sub_26B8623E8(&qword_280DCDE90, &qword_280424BF8, &qword_26B867368, MEMORY[0x277CDF028]);
    v40 = v60;
    v41 = v63;
    sub_26B862CD4();
    (*(v62 + 8))(v39, v41);
    (*(v74 + 32))(v80, v40, v75);
    v29 = 0;
  }

  v64 = v20;
  v42 = v80;
  (*(v74 + 56))(v80, v29, 1, v75);
  v44 = v70;
  v43 = v71;
  v45 = *(v70 + 16);
  v46 = v79;
  v45(v79, v20, v71);
  v47 = v72;
  sub_26B84157C(v42, v72);
  v48 = v69;
  v49 = v77;
  v50 = v67;
  *v69 = v77;
  v48[1] = v50;
  v51 = v50;
  LODWORD(v75) = v66 & 1;
  *(v48 + 16) = v66 & 1;
  v52 = KeyPath;
  v48[3] = v78;
  v48[4] = v52;
  *(v48 + 40) = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C28, &qword_26B8673C8);
  v45(v48 + *(v53 + 48), v46, v43);
  sub_26B84157C(v47, v48 + *(v53 + 64));
  v54 = v51;
  v55 = v51;
  LOBYTE(v51) = v75;
  sub_26B8621CC(v49, v55, v75);

  sub_26B8621DC(v80, &qword_280424C08, &qword_26B867378);
  v56 = *(v44 + 8);
  v56(v64, v43);
  sub_26B8621DC(v47, &qword_280424C08, &qword_26B867378);
  v56(v79, v43);
  sub_26B86223C(v77, v54, v51);
}

double sub_26B861634@<D0>(uint64_t a1@<X8>)
{
  sub_26B862C74();
  if (qword_280DCE040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DCE0B8;
  v3 = sub_26B862CB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_26B862C94();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = 20.0;
  *(a1 + 56) = xmmword_26B867230;
  *(a1 + 72) = 0;
  return result;
}

id sub_26B861788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FTEView(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v23.receiver - v15);
  *v16 = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v17 = *(v14 + 32);
  *(v16 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BB8, &qword_26B867270);
  swift_storeEnumTagMultiPayload();
  sub_26B861CC8(v16, v13);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BE8, qword_26B8672D0));
  v19 = sub_26B862C04();
  v23.receiver = v5;
  v23.super_class = SPUIFTEView;
  v20 = objc_msgSendSuper2(&v23, sel_initWithHostedView_, v19);
  v21 = [v20 layer];
  [v21 setAllowsGroupOpacity_];

  sub_26B861D2C(v16);
  return v20;
}

uint64_t sub_26B861A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x282130010](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26B861AF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B862C54();
  *a1 = result;
  return result;
}

unint64_t sub_26B861B50()
{
  result = qword_280DCDEB0;
  if (!qword_280DCDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424BC0, &qword_26B867278);
    sub_26B8623E8(&qword_280DCDE88, &qword_280424BD0, &qword_26B8672B8, MEMORY[0x277CE1198]);
    sub_26B8623E8(&qword_280DCDEA8, &qword_280424BD8, &qword_26B8672C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCDEB0);
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

uint64_t type metadata accessor for FTEView(uint64_t a1)
{
  result = qword_280DCDFB0;
  if (!qword_280DCDFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B861CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTEView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B861D2C(uint64_t a1)
{
  v2 = type metadata accessor for FTEView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B861DDC(uint64_t a1)
{
  sub_26B861E60();
  if (v1 <= 0x3F)
  {
    sub_26B861EB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26B861E60()
{
  result = qword_280DCDE80;
  if (!qword_280DCDE80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DCDE80);
  }

  return result;
}

void sub_26B861EB0(uint64_t a1)
{
  if (!qword_280DCDEC8[0])
  {
    sub_26B862BE4();
    v1 = sub_26B862BF4();
    if (!v2)
    {
      atomic_store(v1, qword_280DCDEC8);
    }
  }
}

unint64_t type metadata accessor for SPUIFTEView()
{
  result = qword_280DCDFA0;
  if (!qword_280DCDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DCDFA0);
  }

  return result;
}

unint64_t sub_26B861F54()
{
  result = qword_280DCDEB8;
  if (!qword_280DCDEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424BE0, &qword_26B8672C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424BC0, &qword_26B867278);
    sub_26B861B50();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCDEB8);
  }

  return result;
}

uint64_t sub_26B86202C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B862C34();
  *a1 = result;
  return result;
}

uint64_t sub_26B862080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTEView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B862148()
{
  result = qword_280DCDEC0;
  if (!qword_280DCDEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424C20, &qword_26B8673C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCDEC0);
  }

  return result;
}

uint64_t sub_26B8621CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B8621DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B86223C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for FTEView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BB8, &qword_26B867270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B862BE4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B8623E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B862434(uint64_t a1)
{
  v2 = sub_26B862BA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = sub_26B862BC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v15 = v12;
      sub_26B862B84();
      sub_26B862B94();
      (*(v3 + 8))(v9, v2);
      sub_26B862BD4();
      sub_26B862BB4();
      return (*(v11 + 8))(v14, v15);
    }

    sub_26B862B84();
  }

  else
  {
    sub_26B862B84();
    sub_26B862B74();
    v17 = *(v3 + 8);
    v17(v6, v2);
    sub_26B862B94();
    v17(v9, v2);
  }

  return sub_26B862BD4();
}

SPUIViewUtilities __swiftcall SPUIViewUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SPUIViewUtilities()
{
  result = qword_280DCDF98;
  if (!qword_280DCDF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DCDF98);
  }

  return result;
}

void PS_PSKillProcessNamed_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  sub_26B862B54();
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}