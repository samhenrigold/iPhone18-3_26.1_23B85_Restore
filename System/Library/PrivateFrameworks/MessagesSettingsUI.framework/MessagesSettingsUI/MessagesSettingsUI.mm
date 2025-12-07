id MessagesSettingsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CommunicationsSetupUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Messages"];

  return v3;
}

void sub_258D2733C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_258D2A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v23 - 104));
  _Unwind_Resume(a1);
}

void sub_258D2AC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D2B548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D2BA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICSManageStorageDrilldownControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudSettingsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudSettingsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2798C4928;
    v6 = 0;
    iCloudSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudSettingsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ICSManageStorageDrilldownController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICSManageStorageDrilldownControllerClass_block_invoke_cold_1();
  }

  getICSManageStorageDrilldownControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudSettingsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_258D2E574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D2F218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D32F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  _Block_object_dispose((v23 - 112), 8);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getICQCurrentInAppMessageChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQCurrentInAppMessageChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t iCloudQuotaUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __iCloudQuotaUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2798C4B18;
    v5 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = iCloudQuotaUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
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

uint64_t __iCloudQuotaUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getICQInAppMessageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQInAppMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQInAppMessageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getICQInAppMessagingClass_block_invoke(uint64_t a1)
{
  iCloudQuotaUILibrary();
  result = objc_getClass("ICQInAppMessaging");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQInAppMessagingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getICQInAppMessagingClass_block_invoke_cold_1();
    return __getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIMessagePlacementInSettingsAppDetail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasonServerUnreachableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasonServerUnreachable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasonServerUnreachableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasonAirplaneModeOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasonCellularDataOffSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasonCellularDataOff");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasonCellularDataOffSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasoniCloudAlmostFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasoniCloudFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasoniCloudFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_258D376B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x258D37658);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_258D37CC8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_258D56714();

    return sub_258D565A4();
  }

  else
  {
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    sub_258D565A4();
    sub_258D56C74();
    swift_getWitnessTable();
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    return sub_258D565A4();
  }
}

uint64_t sub_258D37E2C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_258D56714();
    sub_258D565A4();
  }

  else
  {
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    sub_258D565A4();
    sub_258D56C74();
    swift_getWitnessTable();
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    sub_258D565A4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_258D3802C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_258D38050()
{
  result = qword_27F9846B8;
  if (!qword_27F9846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9846B8);
  }

  return result;
}

id sub_258D380A4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 iMessageAppsViewController];

  return v1;
}

uint64_t sub_258D3815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D38268();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D381C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D38268();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D38240(uint64_t a1)
{
  sub_258D38268();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D38268()
{
  result = qword_27F9846C0;
  if (!qword_27F9846C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9846C0);
  }

  return result;
}

uint64_t sub_258D382E8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846C8, &qword_258D58EB8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846D0, &qword_258D58EC0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846D8, &qword_258D58EC8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = [*&a1[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] cellType];
  v12 = sub_258D56694();
  if (v11 == 6)
  {
    *v10 = v12;
    *(v10 + 1) = 0;
    v10[16] = 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846F8, &qword_258D58ED8);
    sub_258D38614(a1, &v10[*(v13 + 44)]);
    sub_258D39240(v10, v7, &qword_27F9846D8, &qword_258D58EC8);
    swift_storeEnumTagMultiPayload();
    v14 = MEMORY[0x277CE1138];
    sub_258D394F8(&qword_27F9846E8, &qword_27F9846D8, &qword_258D58EC8, MEMORY[0x277CE1138]);
    sub_258D394F8(&qword_27F9846F0, &qword_27F9846C8, &qword_258D58EB8, v14);
    sub_258D566E4();
    v15 = v10;
    v16 = &qword_27F9846D8;
    v17 = &qword_258D58EC8;
  }

  else
  {
    *v4 = v12;
    *(v4 + 1) = 0;
    v4[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846E0, &qword_258D58ED0);
    sub_258D38A7C(a1, &v4[*(v18 + 44)]);
    sub_258D39240(v4, v7, &qword_27F9846C8, &qword_258D58EB8);
    swift_storeEnumTagMultiPayload();
    v19 = MEMORY[0x277CE1138];
    sub_258D394F8(&qword_27F9846E8, &qword_27F9846D8, &qword_258D58EC8, MEMORY[0x277CE1138]);
    sub_258D394F8(&qword_27F9846F0, &qword_27F9846C8, &qword_258D58EB8, v19);
    sub_258D566E4();
    v15 = v4;
    v16 = &qword_27F9846C8;
    v17 = &qword_258D58EB8;
  }

  return sub_258D392A8(v15, v16, v17);
}

void sub_258D38614(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258D56684();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v42 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v39[-v13];
  v15 = a1;
  v40 = sub_258D567F4();
  sub_258D56534();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [*&v15[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] name];
  if (v24)
  {
    v25 = v24;
    v26 = sub_258D56BD4();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v46 = v26;
  v47 = v28;
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v15;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v15;
  v31 = v15;
  sub_258D56B44();
  sub_258D39364();
  sub_258D56AE4();
  v32 = v43;
  sub_258D56674();
  sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  sub_258D393B8();
  v33 = v45;
  sub_258D56934();
  (*(v44 + 8))(v32, v33);
  (*(v41 + 8))(v8, v6);
  v34 = *(v10 + 16);
  v35 = v42;
  v34(v42, v14, v9);
  *a2 = v31;
  *(a2 + 8) = v40;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984728, &qword_258D58EF0);
  v34((a2 + *(v36 + 48)), v35, v9);
  v37 = *(v10 + 8);
  v38 = v31;
  v37(v14, v9);
  v37(v35, v9);
}

void sub_258D38A7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984730, &qword_258D58EF8);
  MEMORY[0x28223BE20](v39);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984738, &qword_258D58F00);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v40 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = v36 - v7;
  v8 = a1;
  v37 = sub_258D567F4();
  sub_258D56534();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_258D565B4();
  v18 = sub_258D567E4();
  v43 = v8;
  v44 = v17;
  LOBYTE(v45) = v18;
  v19 = [*&v8[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] name];
  if (v19)
  {
    v20 = v19;
    v21 = sub_258D56BD4();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v47 = v21;
  v48 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984740, &qword_258D58F08);
  v25 = sub_258D39410();
  v26 = sub_258D39364();
  sub_258D56964();

  v36[1] = v36;
  MEMORY[0x28223BE20](v27);
  v36[-2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984758, &qword_258D58F10);
  sub_258D394F8(&qword_27F984760, &qword_27F984758, &qword_258D58F10, MEMORY[0x277CE1138]);
  v43 = v24;
  v44 = MEMORY[0x277D837D0];
  v45 = v25;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  sub_258D56584();
  v30 = v40;
  v29 = v41;
  v31 = *(v41 + 16);
  v32 = v42;
  v31(v40, v28, v42);
  *a2 = v8;
  *(a2 + 8) = v37;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984768, &qword_258D58F18);
  v31((a2 + *(v33 + 48)), v30, v32);
  v34 = *(v29 + 8);
  v35 = v8;
  v34(v28, v32);
  v34(v30, v32);
}

__n128 sub_258D38E44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258D56694();
  v5 = sub_258D566C4();
  sub_258D38F00(a1, v8);
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a2 + 57) = *&v7[16];
  result = *&v7[32];
  *(a2 + 73) = *&v7[32];
  *(a2 + 89) = *&v7[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = *v7;
  *(a2 + 104) = *&v7[63];
  return result;
}

uint64_t sub_258D38F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (v3)
  {
    v4 = v3;
    sub_258D56BD4();
  }

  sub_258D39364();
  v5 = sub_258D568E4();
  v7 = v6;
  v9 = v8;
  sub_258D569A4();
  v10 = sub_258D56894();
  v38 = v11;
  v37 = v12;
  v14 = v13;

  sub_258D39540(v5, v7, v9 & 1);

  sub_258D3FA00();
  if (v15)
  {
    v16 = sub_258D568E4();
    v18 = v17;
    v20 = v19;
    sub_258D56834();
    v21 = sub_258D568C4();
    v23 = v22;
    v36 = v14;
    v25 = v24;

    sub_258D39540(v16, v18, v20 & 1);

    sub_258D569B4();
    v26 = sub_258D56894();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v25 & 1;
    v14 = v36;
    sub_258D39540(v21, v23, v33);

    v34 = v30 & 1;
    sub_258D3802C(v26, v28, v30 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v34 = 0;
    v32 = 0;
  }

  sub_258D3802C(v10, v38, v37 & 1);

  sub_258D39550(v26, v28, v34, v32);
  sub_258D39594(v26, v28, v34, v32);
  *a2 = v10;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v34;
  *(a2 + 56) = v32;
  sub_258D39594(v26, v28, v34, v32);
  sub_258D39540(v10, v38, v37 & 1);
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

uint64_t sub_258D39240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258D392A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_258D39364()
{
  result = qword_27F984710;
  if (!qword_27F984710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984710);
  }

  return result;
}

unint64_t sub_258D393B8()
{
  result = qword_27F984720;
  if (!qword_27F984720)
  {
    sub_258D56684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984720);
  }

  return result;
}

unint64_t sub_258D39410()
{
  result = qword_27F984748;
  if (!qword_27F984748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984740, &qword_258D58F08);
    sub_258D3949C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984748);
  }

  return result;
}

unint64_t sub_258D3949C()
{
  result = qword_27F984750;
  if (!qword_27F984750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984750);
  }

  return result;
}

uint64_t sub_258D394F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_258D39540(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_258D39550(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_258D3802C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_258D39594(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_258D39540(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_258D395DC()
{
  result = qword_27F984770;
  if (!qword_27F984770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984778, &unk_258D58F20);
    v1 = MEMORY[0x277CE1138];
    sub_258D394F8(&qword_27F9846E8, &qword_27F9846D8, &qword_258D58EC8, MEMORY[0x277CE1138]);
    sub_258D394F8(&qword_27F9846F0, &qword_27F9846C8, &qword_258D58EB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984770);
  }

  return result;
}

uint64_t sub_258D396C0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_258D56BB4();
}

uint64_t sub_258D39890()
{
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564C4();

  v0 = objc_opt_self();
  if ([v0 hasUserCompletedOnboarding])
  {
    return [v0 shareAllLocations] ^ 1;
  }

  else
  {
    return 2;
  }
}

id sub_258D39964@<X0>(char *a2@<X8>)
{
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564C4();

  v3 = objc_opt_self();
  result = [v3 hasUserCompletedOnboarding];
  if (result)
  {
    result = [v3 shareAllLocations];
    v5 = result ^ 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_258D39A44(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564B4();
}

id sub_258D39B10(unsigned __int8 a1)
{
  v2 = a1;
  v3 = objc_opt_self();
  result = [v3 setHasUserCompletedOnboarding_];
  if (v2 != 2)
  {
    return [v3 setShareAllLocations_];
  }

  return result;
}

uint64_t sub_258D39B88()
{
  v1 = OBJC_IVAR____TtCV18MessagesSettingsUI15CheckInDataView5Model___observationRegistrar;
  v2 = sub_258D564E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CheckInDataView.Model(uint64_t a1)
{
  result = qword_27F984788;
  if (!qword_27F984788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D39C78(uint64_t a1)
{
  result = sub_258D564E4();
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_258D39D40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_258D39D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258D39DFC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847C0, &qword_258D59038);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = &v60 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847C8, &qword_258D59040);
  v64 = *(v65 - 8);
  v5 = MEMORY[0x28223BE20](v65);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847D0, &qword_258D59048);
  v61 = *(v62 - 8);
  v8 = MEMORY[0x28223BE20](v62);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847D8, &qword_258D59050);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847E0, &qword_258D59058);
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - v19;
  v78 = a1;
  sub_258D3B164(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847E8, &unk_258D59060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847F0, &unk_258D5A900);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9847F8, &qword_258D59070);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984800, &qword_258D59078);
  v23 = sub_258D56664();
  v24 = sub_258D394F8(&qword_27F984808, &qword_27F984800, &qword_258D59078, MEMORY[0x277CDF038]);
  v79 = v22;
  v80 = v23;
  v81 = v24;
  v82 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_258D3D028();
  v79 = v21;
  v80 = &type metadata for SettingsModel.CheckInData;
  v81 = OpaqueTypeConformance2;
  v82 = v26;
  swift_getOpaqueTypeConformance2();
  sub_258D3D07C();
  v69 = v20;
  sub_258D56B94();
  *v83 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984820, &qword_258D59080);
  sub_258D56A54();
  v27 = v79;
  swift_getKeyPath();
  v83[0] = v27;
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564C4();

  v28 = objc_opt_self();
  if ([v28 hasUserCompletedOnboarding])
  {
    v29 = [v28 shareAllLocations];

    MEMORY[0x28223BE20](v30);
    *(&v60 - 16) = v29 ^ 1;
    sub_258D3B61C(v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984830, &qword_258D59090);
    sub_258D3D100();
    v31 = v11;
    v60 = v11;
    v32 = sub_258D56B64();
    MEMORY[0x28223BE20](v32);
    *(&v60 - 16) = v29 ^ 1;
    sub_258D3BF0C(v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984880, &qword_258D590B8);
    sub_258D394F8(&qword_27F984888, &qword_27F984880, &qword_258D590B8, MEMORY[0x277CE14C0]);
    v33 = v68;
    sub_258D56B94();
    v34 = v61;
    v35 = *(v61 + 16);
    v36 = v67;
    v37 = v31;
    v38 = v62;
    v35(v67, v37, v62);
    v39 = v64;
    v40 = *(v64 + 16);
    v41 = v63;
    v42 = v33;
    v43 = v65;
    v40(v63, v42, v65);
    v35(v74, v36, v38);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984890, &qword_258D590C0);
    v45 = v74;
    v40(&v74[*(v44 + 48)], v41, v43);
    v46 = *(v39 + 8);
    v46(v68, v43);
    v47 = *(v34 + 8);
    v47(v60, v38);
    v46(v41, v43);
    v47(v67, v38);
    v48 = v66;
    sub_258D3D350(v45, v66, &qword_27F9847C0, &qword_258D59038);
    v49 = 0;
  }

  else
  {

    v49 = 1;
    v48 = v66;
  }

  (*(v75 + 56))(v48, v49, 1, v76);
  v50 = v70;
  v51 = v71;
  v52 = *(v70 + 16);
  v53 = v72;
  v54 = v69;
  v52(v72, v69, v71);
  v55 = v73;
  sub_258D39240(v48, v73, &qword_27F9847D8, &qword_258D59050);
  v56 = v77;
  v52(v77, v53, v51);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984828, &qword_258D59088);
  sub_258D39240(v55, &v56[*(v57 + 48)], &qword_27F9847D8, &qword_258D59050);
  sub_258D392A8(v48, &qword_27F9847D8, &qword_258D59050);
  v58 = *(v50 + 8);
  v58(v54, v51);
  sub_258D392A8(v55, &qword_27F9847D8, &qword_258D59050);
  return (v58)(v53, v51);
}

uint64_t sub_258D3A750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_258D56664();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984800, &qword_258D59078);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847F8, &qword_258D59070);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  MEMORY[0x28223BE20](v11);
  v44 = &v33 - v13;
  v14 = a1[3];
  v34 = a1[2];
  v15 = a1[4];
  v35 = v14;
  v36 = v15;
  v45 = v34;
  v46 = v14;
  v47 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v17 = v52;
  v18 = v53;
  v19 = v54;
  swift_getKeyPath();
  v45 = v17;
  v46 = v18;
  v47 = v19;
  sub_258D56B24();

  v20 = v52;
  v21 = v53;
  v22 = v54;

  v50[0] = v20;
  v50[1] = v21;
  v51 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848C0, &qword_258D59110);
  sub_258D3D3F8();
  sub_258D394F8(&qword_27F9848D0, &qword_27F9848C0, &qword_258D59110, MEMORY[0x277CE14C0]);
  sub_258D56AB4();
  sub_258D56654();
  v23 = sub_258D394F8(&qword_27F984808, &qword_27F984800, &qword_258D59078, MEMORY[0x277CDF038]);
  v24 = v37;
  v25 = v39;
  sub_258D56924();
  (*(v40 + 8))(v6, v25);
  (*(v38 + 8))(v10, v24);
  v26 = v34;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  MEMORY[0x259C9B090](&v52, v16);
  v27 = v52;
  swift_getKeyPath();
  v45 = v27;
  sub_258D3D44C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v20) = *(v27 + 35);

  v49 = v20;
  v50[0] = a1[1];
  v52 = v26;
  v28 = swift_allocObject();
  v29 = *(a1 + 1);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = a1[4];

  sub_258D39240(v50, &v45, &qword_27F9848E0, &qword_258D59118);
  sub_258D3D4F4(&v52, &v45);

  v45 = v24;
  v46 = v25;
  v47 = v23;
  v48 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_258D3D028();
  v30 = v41;
  v31 = v44;
  sub_258D56984();

  return (*(v42 + 8))(v31, v30);
}

uint64_t sub_258D3AC98@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848E8, &qword_258D59120);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v42 = &v41 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = ObjCClassFromMetadata;
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_258D56BC4();
  v16 = sub_258D56BC4();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_258D56BD4();
  v20 = v19;

  v45 = v18;
  v46 = v20;
  sub_258D39364();
  *v11 = sub_258D568E4();
  *(v11 + 1) = v21;
  v11[16] = v22 & 1;
  *(v11 + 3) = v23;
  *(v11 + 16) = 257;
  v24 = [v13 bundleForClass_];
  v25 = sub_258D56BC4();
  v26 = sub_258D56BC4();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  v28 = sub_258D56BD4();
  v30 = v29;

  v45 = v28;
  v46 = v30;
  *v9 = sub_258D568E4();
  *(v9 + 1) = v31;
  v9[16] = v32 & 1;
  *(v9 + 3) = v33;
  *(v9 + 16) = 256;
  v34 = *(v2 + 16);
  v35 = v42;
  v34(v42, v11, v1);
  v36 = v43;
  v34(v43, v9, v1);
  v37 = v44;
  v34(v44, v35, v1);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848F0, &qword_258D59128);
  v34(&v37[*(v38 + 48)], v36, v1);
  v39 = *(v2 + 8);
  v39(v9, v1);
  v39(v11, v1);
  v39(v36, v1);
  return (v39)(v35, v1);
}

uint64_t sub_258D3B068(uint64_t a1, char *a2, __int128 *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984820, &qword_258D59080);
  sub_258D56A54();
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564B4();
}

uint64_t sub_258D3B164@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984820, &qword_258D59080);
  sub_258D56A54();
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564C4();

  v3 = objc_opt_self();
  if ([v3 hasUserCompletedOnboarding])
  {
    [v3 shareAllLocations];

    type metadata accessor for MessagesSettingsUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_258D56BC4();
    v7 = sub_258D56BC4();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_258D56BD4();
    sub_258D39364();
    result = sub_258D568E4();
    v13 = v12 & 1;
  }

  else
  {

    result = 0;
    v10 = 0;
    v13 = 0;
    v11 = 0;
  }

  *a2 = result;
  a2[1] = v10;
  a2[2] = v13;
  a2[3] = v11;
  return result;
}

double sub_258D3B398@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_258D56A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258D56504();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_27F9846B0 != -1)
    {
      swift_once();
    }

    v12 = qword_27F987018;
  }

  else
  {
    if (qword_27F9846A8 != -1)
    {
      swift_once();
    }

    v12 = qword_27F987000;
  }

  v13 = __swift_project_value_buffer(v8, v12);
  (*(v9 + 16))(v11, v13, v8);
  sub_258D56A34();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v14 = sub_258D56A24();

  (*(v5 + 8))(v7, v4);
  v17[1] = sub_258D56994();
  v15 = sub_258D56AF4();
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v15;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_258D3B61C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D3B744@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984898, &qword_258D590C8);
  v3 = MEMORY[0x28223BE20](v73);
  v76 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v68 - v6;
  MEMORY[0x28223BE20](v5);
  v75 = &v68 - v8;
  v81 = sub_258D56844();
  v9 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848A0, &qword_258D590D0);
  v13 = MEMORY[0x28223BE20](v12);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v82 = &v68 - v18;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v79 = objc_opt_self();
  v80 = ObjCClassFromMetadata;
  v20 = [v79 bundleForClass_];
  v21 = sub_258D56BC4();
  v78 = "MPLE_DATA_FOOTER";
  v22 = sub_258D56BC4();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  v24 = sub_258D56BD4();
  v69 = v25;
  v70 = v24;

  v26 = 0;
  v27 = 0;
  if ((a1 & 1) == 0)
  {
    v28 = [v79 bundleForClass_];
    v29 = sub_258D56BC4();
    v30 = sub_258D56BC4();
    v31 = [v28 localizedStringForKey:v29 value:0 table:v30];
    v72 = v7;
    v32 = v11;
    v33 = a1;
    v34 = v9;
    v35 = v31;

    v26 = sub_258D56BD4();
    v27 = v36;

    v9 = v34;
    a1 = v33;
    v11 = v32;
    v7 = v72;
  }

  v83 = 0x4000000000000000;
  v37 = *MEMORY[0x277CE0A68];
  v71 = *(v9 + 104);
  v72 = (v9 + 104);
  v71(v11, v37, v81);
  sub_258D3D2FC();
  sub_258D56544();
  v38 = &v17[v12[7]];
  *v38 = 0x656E6F687069;
  *(v38 + 1) = 0xE600000000000000;
  v39 = &v17[v12[8]];
  v40 = v69;
  *v39 = v70;
  *(v39 + 1) = v40;
  v41 = &v17[v12[9]];
  *v41 = v26;
  v41[1] = v27;
  sub_258D3BE78(&v17[v12[10]]);
  sub_258D3D350(v17, v82, &qword_27F9848A0, &qword_258D590D0);
  v42 = [v79 bundleForClass_];
  v43 = sub_258D56BC4();
  v44 = sub_258D56BC4();
  v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

  v46 = sub_258D56BD4();
  v48 = v47;

  v49 = 0;
  v50 = 0;
  if ((a1 & 1) == 0)
  {
    v51 = [v79 bundleForClass_];
    v52 = sub_258D56BC4();
    v53 = sub_258D56BC4();
    v54 = [v51 localizedStringForKey:v52 value:0 table:v53];

    v49 = sub_258D56BD4();
    v50 = v55;
  }

  v83 = 0x4000000000000000;
  v71(v11, v37, v81);
  sub_258D56544();
  v56 = v73;
  v57 = &v7[*(v73 + 28)];
  *v57 = 0x746177656C707061;
  *(v57 + 1) = 0xEA00000000006863;
  v58 = &v7[v56[8]];
  *v58 = v46;
  v58[1] = v48;
  v59 = &v7[v56[9]];
  *v59 = v49;
  v59[1] = v50;
  v60 = v56[10];
  *&v7[v60] = sub_258D569F4();
  v61 = v75;
  sub_258D3D350(v7, v75, &qword_27F984898, &qword_258D590C8);
  v62 = v82;
  v63 = v74;
  sub_258D39240(v82, v74, &qword_27F9848A0, &qword_258D590D0);
  v64 = v76;
  sub_258D39240(v61, v76, &qword_27F984898, &qword_258D590C8);
  v65 = v77;
  sub_258D39240(v63, v77, &qword_27F9848A0, &qword_258D590D0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B0, &qword_258D590D8);
  sub_258D39240(v64, v65 + *(v66 + 48), &qword_27F984898, &qword_258D590C8);
  sub_258D392A8(v61, &qword_27F984898, &qword_258D590C8);
  sub_258D392A8(v62, &qword_27F9848A0, &qword_258D590D0);
  sub_258D392A8(v64, &qword_27F984898, &qword_258D590C8);
  return sub_258D392A8(v63, &qword_27F9848A0, &qword_258D590D0);
}

uint64_t sub_258D3BE78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_258D569F4();
  v3 = sub_258D569E4();
  result = sub_258D569F4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_258D3BF0C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D3C034@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984990, &qword_258D591A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984998, &qword_258D591B0);
  v5 = *(a1 + 16);
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  sub_258D565A4();
  swift_getTupleTypeMetadata2();
  sub_258D56BA4();
  swift_getWitnessTable();
  sub_258D56AA4();
  sub_258D565A4();
  swift_getTupleTypeMetadata3();
  sub_258D56BA4();
  swift_getWitnessTable();
  v6 = sub_258D56AA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v17 = v5;
  v18 = v2;
  sub_258D56694();
  sub_258D56A94();
  swift_getWitnessTable();
  v13 = *(v7 + 16);
  v13(v12, v10, v6);
  v14 = *(v7 + 8);
  v14(v10, v6);
  v13(a2, v12, v6);
  return (v14)(v12, v6);
}

uint64_t sub_258D3C2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  sub_258D565A4();
  swift_getTupleTypeMetadata2();
  v29 = sub_258D56BA4();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_258D56AA4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = sub_258D565A4();
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v30 = &v24 - v12;
  type metadata accessor for CheckInDataView.DeviceRow(0, a2, v13, v14);

  v27 = sub_258D569F4();
  v26 = sub_258D56824();
  KeyPath = swift_getKeyPath();
  v15 = sub_258D566C4();
  LOBYTE(v40) = 1;
  sub_258D3C8B0(a1, a2, v56, v16, v17);
  v49 = *&v56[32];
  v50 = *&v56[48];
  v51 = *&v56[64];
  v47 = *v56;
  v48 = *&v56[16];
  v52[2] = *&v56[32];
  v52[3] = *&v56[48];
  v53 = *&v56[64];
  v52[0] = *v56;
  v52[1] = *&v56[16];
  sub_258D39240(&v47, &v54, &qword_27F9849A8, &qword_258D591F0);
  sub_258D392A8(v52, &qword_27F9849A8, &qword_258D591F0);
  *&v56[7] = v47;
  *&v56[23] = v48;
  *&v56[39] = v49;
  *&v56[55] = v50;
  *&v56[71] = v51;
  v54 = v15;
  LOBYTE(v55[0]) = v40;
  *(v55 + 1) = *v56;
  *(&v55[3] + 12) = *&v56[59];
  *(&v55[3] + 1) = *&v56[48];
  *(&v55[2] + 1) = *&v56[32];
  *(&v55[1] + 1) = *&v56[16];
  v34 = a2;
  v35 = a1;
  sub_258D56694();
  sub_258D56A94();
  sub_258D56804();
  v18 = swift_getWitnessTable();
  sub_258D56974();
  (*(v31 + 8))(v7, v5);
  v46[3] = v18;
  v46[4] = MEMORY[0x277CDF918];
  v31 = swift_getWitnessTable();
  v19 = v33;
  v20 = *(v33 + 16);
  v21 = v30;
  v20(v30, v11, v8);
  v22 = *(v19 + 8);
  v33 = v19 + 8;
  v22(v11, v8);
  v45[0] = v27;
  v45[1] = KeyPath;
  v42 = v55[1];
  v43 = v55[2];
  v44[0] = v55[3];
  *(v44 + 12) = *(&v55[3] + 12);
  v40 = v54;
  v41 = v55[0];
  v45[2] = v26;
  v46[0] = v45;
  v46[1] = &v40;
  v20(v11, v21, v8);
  v46[2] = v11;

  sub_258D39240(&v54, v56, &qword_27F984998, &qword_258D591B0);
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984990, &qword_258D591A8);
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984998, &qword_258D591B0);
  v39[2] = v8;
  v36 = sub_258D3DDA4();
  v37 = sub_258D394F8(&qword_27F9849C8, &qword_27F984998, &qword_258D591B0, MEMORY[0x277CE1198]);
  v38 = v31;
  sub_258D396C0(v46, 3uLL, v39);
  sub_258D392A8(&v54, &qword_27F984998, &qword_258D591B0);

  v22(v21, v8);
  v22(v11, v8);
  *&v56[32] = v42;
  *&v56[48] = v43;
  *&v56[64] = v44[0];
  *&v56[76] = *(v44 + 12);
  *v56 = v40;
  *&v56[16] = v41;
  sub_258D392A8(v56, &qword_27F984998, &qword_258D591B0);
}

uint64_t sub_258D3C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = (a1 + *(type metadata accessor for CheckInDataView.DeviceRow(0, a2, a4, a5) + 32));
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;
  sub_258D39364();

  v10 = sub_258D568E4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_258D3C9E0(a1, a2, &v23, v13, v15);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = sub_258D56704();
  v14 &= 1u;
  LOBYTE(v23) = v14;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  *(a3 + 40) = v18;
  *(a3 + 48) = v19;
  *(a3 + 56) = v20;
  *(a3 + 64) = v21;
  sub_258D3802C(v10, v12, v14);

  sub_258D39550(v17, v18, v19, v20);
  sub_258D39594(v17, v18, v19, v20);
  sub_258D39540(v10, v12, v14);
}

uint64_t sub_258D3C9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = type metadata accessor for CheckInDataView.DeviceRow(0, a2, a4, a5);
  v8 = *(a1 + *(result + 36) + 8);
  if (v8)
  {
    sub_258D39364();

    v9 = sub_258D568E4();
    v11 = v10;
    v13 = v12;
    sub_258D56854();
    v8 = sub_258D568C4();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    sub_258D39540(v9, v11, v13 & 1);

    v20 = v17 & 1;
  }

  else
  {
    v15 = 0;
    v20 = 0;
    v19 = 0;
  }

  *a3 = v8;
  a3[1] = v15;
  a3[2] = v20;
  a3[3] = v19;
  return result;
}

uint64_t sub_258D3CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a1;
  v23[1] = a3;
  v4 = sub_258D56A14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  v8 = sub_258D565A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  type metadata accessor for CheckInDataView.DeviceRow(0, a2, v15, v16);
  (*(v5 + 104))(v7, *MEMORY[0x277CE1050], v4);
  WitnessTable = swift_getWitnessTable();
  sub_258D56914();
  (*(v5 + 8))(v7, v4);
  v18 = sub_258D394F8(&qword_27F9849D0, &qword_27F9849A0, &qword_258D591B8, MEMORY[0x277CE0868]);
  v27[2] = WitnessTable;
  v27[3] = v18;
  v19 = swift_getWitnessTable();
  v20 = *(v9 + 16);
  v20(v14, v12, v8);
  v21 = *(v9 + 8);
  v21(v12, v8);
  v25 = 0;
  v26 = 1;
  v27[0] = &v25;
  v20(v12, v14, v8);
  v27[1] = v12;
  v24[0] = MEMORY[0x277CE1180];
  v24[1] = v8;
  v23[2] = MEMORY[0x277CE1170];
  v23[3] = v19;
  sub_258D396C0(v27, 2uLL, v24);
  v21(v14, v8);
  return (v21)(v12, v8);
}

uint64_t sub_258D3CE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847A0, &qword_258D59028);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-v3];
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  v10 = *(v0 + 32);
  v8 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847A8, &qword_258D59030);
  sub_258D394F8(&qword_27F9847B0, &qword_27F9847A8, &qword_258D59030, MEMORY[0x277CE14C0]);
  sub_258D56884();
  sub_258D566A4();
  sub_258D394F8(&qword_27F9847B8, &qword_27F9847A0, &qword_258D59028, MEMORY[0x277CDE5A0]);
  sub_258D56954();

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_258D3D028()
{
  result = qword_27F984810;
  if (!qword_27F984810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984810);
  }

  return result;
}

unint64_t sub_258D3D07C()
{
  result = qword_27F984818;
  if (!qword_27F984818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9847F0, &unk_258D5A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984818);
  }

  return result;
}

unint64_t sub_258D3D100()
{
  result = qword_27F984838;
  if (!qword_27F984838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984830, &qword_258D59090);
    sub_258D3D1B8();
    sub_258D394F8(&qword_27F984870, &qword_27F984878, &qword_258D590B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984838);
  }

  return result;
}

unint64_t sub_258D3D1B8()
{
  result = qword_27F984840;
  if (!qword_27F984840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984848, &qword_258D59098);
    sub_258D3D270();
    sub_258D394F8(&qword_27F984860, &qword_27F984868, &qword_258D590A8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984840);
  }

  return result;
}

unint64_t sub_258D3D270()
{
  result = qword_27F984850;
  if (!qword_27F984850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984858, &qword_258D590A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984850);
  }

  return result;
}

unint64_t sub_258D3D2FC()
{
  result = qword_27F9848A8;
  if (!qword_27F9848A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9848A8);
  }

  return result;
}

uint64_t sub_258D3D350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_258D3D3F8()
{
  result = qword_27F9848C8;
  if (!qword_27F9848C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9848C8);
  }

  return result;
}

uint64_t sub_258D3D44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258D3D494()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_258D3D558(uint64_t a1)
{
  sub_258D3DC04(319);
  if (v1 <= 0x3F)
  {
    sub_258D3DC60();
    if (v2 <= 0x3F)
    {
      sub_258D56BA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258D3D608(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9848F8, &qword_258D59130);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 16;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v14 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(v9 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v23 = *(v7 + 48);

        return v23(a1, v8, v6);
      }

      else
      {
        v24 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v26 = *(v9 + 48);

          return v26((v14 + ((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
        }

        else
        {
          v25 = *(v24 + 8);
          if (v25 >= 0xFFFFFFFF)
          {
            LODWORD(v25) = -1;
          }

          return (v25 + 1);
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v14 + ((((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_258D3D8B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9848F8, &qword_258D59130);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + 16 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v25 = *(v11 + 56);

      v25((v13 + 16 + ((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v24 = a2 & 0x7FFFFFFF;
      v24[1] = 0;
    }

    else
    {
      v24[1] = (a2 - 1);
    }
  }
}

void sub_258D3DC04(uint64_t a1)
{
  if (!qword_27F984980)
  {
    sub_258D3D2FC();
    v1 = sub_258D56554();
    if (!v2)
    {
      atomic_store(v1, &qword_27F984980);
    }
  }
}

void sub_258D3DC60()
{
  if (!qword_27F984988)
  {
    v0 = sub_258D56C74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F984988);
    }
  }
}

uint64_t sub_258D3DCB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9847A0, &qword_258D59028);
  sub_258D394F8(&qword_27F9847B8, &qword_27F9847A0, &qword_258D59028, MEMORY[0x277CDE5A0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_258D3DDA4()
{
  result = qword_27F9849B0;
  if (!qword_27F9849B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984990, &qword_258D591A8);
    sub_258D394F8(&qword_27F9849B8, &qword_27F9849C0, &qword_258D591F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9849B0);
  }

  return result;
}

uint64_t sub_258D3DE8C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984990, &qword_258D591A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984998, &qword_258D591B0);
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  sub_258D565A4();
  swift_getTupleTypeMetadata2();
  sub_258D56BA4();
  swift_getWitnessTable();
  sub_258D56AA4();
  sub_258D565A4();
  swift_getTupleTypeMetadata3();
  sub_258D56BA4();
  swift_getWitnessTable();
  sub_258D56AA4();

  return swift_getWitnessTable();
}

uint64_t sub_258D3E07C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849D8, &qword_258D592B8);
  MEMORY[0x28223BE20](v45);
  v46 = &v40 - v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849E0, &qword_258D592C0);
  MEMORY[0x28223BE20](v48);
  v3 = &v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849E8, &qword_258D592C8);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849F0, &qword_258D592D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849F8, &qword_258D592D8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v40 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A00, &qword_258D592E0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_258D3F588();
  if (v16)
  {
    v17 = v16;
    *v12 = sub_258D569D4();
    swift_storeEnumTagMultiPayload();
    sub_258D3E7A8();

    sub_258D566E4();
    sub_258D39240(v15, v9, &qword_27F984A00, &qword_258D592E0);
    swift_storeEnumTagMultiPayload();
    sub_258D3E80C();
    sub_258D3E898();
    sub_258D566E4();

    v18 = v15;
    v19 = &qword_27F984A00;
    v20 = &qword_258D592E0;
    return sub_258D392A8(v18, v19, v20);
  }

  v40 = v3;
  v41 = v6;
  v42 = v9;
  v43 = v4;
  v44 = v13;
  sub_258D3FAF0();
  if (v22)
  {
    v23 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v24 = sub_258D56BC4();

    [v23 initWithType_];

    v25 = v41;
    if (qword_27F984690 != -1)
    {
      swift_once();
    }

    v26 = qword_27F986FF0;
    sub_258D56514();
    v27 = v47;
    v28 = v43;
    (*(v47 + 16))(v12, v25, v43);
    swift_storeEnumTagMultiPayload();
    sub_258D3E7A8();
    sub_258D566E4();
    sub_258D39240(v15, v42, &qword_27F984A00, &qword_258D592E0);
    swift_storeEnumTagMultiPayload();
    sub_258D3E80C();
    sub_258D3E898();
    sub_258D566E4();
    sub_258D392A8(v15, &qword_27F984A00, &qword_258D592E0);
    return (*(v27 + 8))(v25, v28);
  }

  else
  {
    sub_258D3FAE4();
    if (!v29)
    {
      swift_storeEnumTagMultiPayload();
      sub_258D3E7A8();
      v39 = v40;
      sub_258D566E4();
      sub_258D39240(v39, v42, &qword_27F9849E0, &qword_258D592C0);
      swift_storeEnumTagMultiPayload();
      sub_258D3E80C();
      sub_258D3E898();
      sub_258D566E4();
      v18 = v39;
      v19 = &qword_27F9849E0;
      v20 = &qword_258D592C0;
      return sub_258D392A8(v18, v19, v20);
    }

    v30 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v31 = sub_258D56BC4();

    [v30 initWithBundleIdentifier_];

    v33 = v42;
    v32 = v43;
    v34 = v40;
    v35 = v46;
    if (qword_27F984690 != -1)
    {
      swift_once();
    }

    v36 = qword_27F986FF0;
    v37 = v41;
    sub_258D56514();
    v38 = v47;
    (*(v47 + 16))(v35, v37, v32);
    swift_storeEnumTagMultiPayload();
    sub_258D3E7A8();
    sub_258D566E4();
    sub_258D39240(v34, v33, &qword_27F9849E0, &qword_258D592C0);
    swift_storeEnumTagMultiPayload();
    sub_258D3E80C();
    sub_258D3E898();
    sub_258D566E4();
    sub_258D392A8(v34, &qword_27F9849E0, &qword_258D592C0);
    return (*(v38 + 8))(v37, v32);
  }
}

unint64_t sub_258D3E7A8()
{
  result = qword_27F984A08;
  if (!qword_27F984A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849E8, &qword_258D592C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A08);
  }

  return result;
}

unint64_t sub_258D3E80C()
{
  result = qword_27F984A10;
  if (!qword_27F984A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A00, &qword_258D592E0);
    sub_258D3E7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A10);
  }

  return result;
}

unint64_t sub_258D3E898()
{
  result = qword_27F984A18;
  if (!qword_27F984A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849E0, &qword_258D592C0);
    sub_258D3E7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A18);
  }

  return result;
}

unint64_t sub_258D3E928()
{
  result = qword_27F984A20;
  if (!qword_27F984A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A28, &qword_258D592E8);
    sub_258D3E80C();
    sub_258D3E898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A20);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258D3E9C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_258D3EA10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258D3EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A30, &qword_258D59388);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  *v8 = sub_258D566B4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A38, &unk_258D59390);
  sub_258D3EC60(a1, a2, v3, &v8[*(v9 + 44)]);
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_258D56BC4();
  v13 = sub_258D56BC4();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_258D56BD4();
  v17 = v16;

  v19[0] = v15;
  v19[1] = v17;
  sub_258D3EF84();
  sub_258D39364();
  sub_258D56964();

  return sub_258D3EFE8(v8);
}

uint64_t sub_258D3EC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v30 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A48, &qword_258D5A980);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  sub_258D566A4();
  v26 = sub_258D568D4();
  v27 = v12;
  v28 = v13;
  v29 = v14;
  sub_258D566A4();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v30;
  *(v15 + 32) = v32;

  v16 = v11;
  v25 = v11;
  sub_258D56A74();
  v17 = *(v7 + 16);
  v18 = v31;
  v17(v31, v16, v6);
  v20 = v26;
  v19 = v27;
  *a4 = v26;
  *(a4 + 8) = v19;
  v21 = v28 & 1;
  *(a4 + 16) = v28 & 1;
  *(a4 + 24) = v29;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A50, &qword_258D593A0);
  v17((a4 + *(v22 + 48)), v18, v6);
  sub_258D3802C(v20, v19, v21);
  v23 = *(v7 + 8);

  v23(v25, v6);
  v23(v18, v6);
  sub_258D39540(v20, v19, v21);
}

unint64_t sub_258D3EF84()
{
  result = qword_27F984A40;
  if (!qword_27F984A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A30, &qword_258D59388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A40);
  }

  return result;
}

uint64_t sub_258D3EFE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A30, &qword_258D59388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D3F050()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_258D3F09C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A30, &qword_258D59388);
  sub_258D3EF84();
  sub_258D39364();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258D3F114()
{
  v1 = sub_258D564A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (v5)
  {
    v6 = v5;
    v7 = sub_258D56BD4();
  }

  else
  {
    sub_258D56494();
    v7 = sub_258D56484();
    (*(v2 + 8))(v4, v1);
  }

  return v7;
}

id sub_258D3F238()
{
  v0 = [objc_opt_self() imageDescriptorNamed_];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  [v0 setScale_];
  result = [v0 setDrawBorder_];
  qword_27F986FF0 = v0;
  return result;
}

unint64_t CKWrappedPreferencesSpecifier.SpecifierDisplayType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_258D3F320()
{
  v1 = *v0;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v1);
  return sub_258D56CC4();
}

uint64_t sub_258D3F394(uint64_t a1)
{
  v2 = *v1;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v2);
  return sub_258D56CC4();
}

unint64_t *sub_258D3F3D8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id CKWrappedPreferencesSpecifier.__allocating_init(specifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_258D564D4();
  *&v3[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id CKWrappedPreferencesSpecifier.init(specifier:)(uint64_t a1)
{
  sub_258D564D4();
  *&v1[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CKWrappedPreferencesSpecifier(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for CKWrappedPreferencesSpecifier(uint64_t a1)
{
  result = qword_27F984A90;
  if (!qword_27F984A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D3F588()
{
  if ([*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) propertyForKey_])
  {
    sub_258D56C84();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_258D3FECC(0, &qword_27F984A78, 0x277D755B8);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258D3F660(v5);
    return 0;
  }
}

uint64_t sub_258D3F660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A70, &qword_258D593B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D3F6C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_258D56BD4();

  return v3;
}

uint64_t sub_258D3F738()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  v3 = v0;
  sub_258D56B44();
  return v5;
}

uint64_t sub_258D3F7F4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if ([*(a1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) performGetter])
  {
    sub_258D56C84();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_258D3F660(v8);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  *a2 = v4;
  return result;
}

void sub_258D3F8B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  v5 = sub_258D56C04();
  [v4 performSetterWithValue_];
}

void sub_258D3F918(unsigned __int8 *a1)
{
  v2 = *(*(v1 + 32) + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  v3 = sub_258D56C04();
  [v2 performSetterWithValue_];
}

id sub_258D3FA00()
{
  result = [*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (result)
  {
    v2 = result;
    v3 = sub_258D56BD4();
    v5 = v4;

    if (v3 == 0x6163696669746F4ELL && v5 == 0xED0000736E6F6974)
    {
    }

    else
    {
      v7 = sub_258D56C94();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    return 0xD000000000000019;
  }

  return result;
}

uint64_t sub_258D3FAFC(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) propertyForKey_])
  {
    sub_258D56C84();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258D3F660(v6);
    return 0;
  }
}

id sub_258D3FBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  result = [v1 detailControllerClass];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_258D3FECC(0, &qword_27F984A80, 0x277D3FBA0);
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v3 setSpecifier_];
      return v3;
    }
  }

  return result;
}

id CKWrappedPreferencesSpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKWrappedPreferencesSpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKWrappedPreferencesSpecifier(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258D3FDA4(uint64_t *a1@<X8>)
{
  v3 = sub_258D564A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*v1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_258D56BD4();
    v11 = v10;
  }

  else
  {
    sub_258D56494();
    v9 = sub_258D56484();
    v11 = v12;
    (*(v4 + 8))(v6, v3);
  }

  *a1 = v9;
  a1[1] = v11;
}

uint64_t sub_258D3FECC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_258D3FF18()
{
  result = qword_27F984A88;
  if (!qword_27F984A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A88);
  }

  return result;
}

uint64_t sub_258D3FF80(uint64_t a1)
{
  result = sub_258D564E4();
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

Swift::Void __swiftcall CKSettingsHostingViewController.viewDidLoad()()
{
  v1 = v0;
  v13.super_class = CKSettingsHostingViewController;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  type metadata accessor for SettingsContext(0);
  swift_allocObject();
  v2 = sub_258D40A74();
  v12 = sub_258D46528();
  type metadata accessor for SettingsModel(0);
  sub_258D56A44();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984AA0, "fx"));

  v4 = sub_258D566D4();
  [v1 addChildViewController_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      [v6 addSubview_];

      [v4 didMoveToParentViewController_];

      v9 = *&v1[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController];
      *&v1[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController] = v4;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CKSettingsHostingViewController.viewDidLayoutSubviews()()
{
  v14.super_class = CKSettingsHostingViewController;
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void __swiftcall CKSettingsHostingViewController.init(nibName:bundle:)(CKSettingsHostingViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_258D56BC4();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id CKSettingsHostingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController] = 0;
  if (a2)
  {
    v5 = sub_258D56BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = CKSettingsHostingViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id CKSettingsHostingViewController.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
  v5.super_class = CKSettingsHostingViewController;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t type metadata accessor for CKSettingsHostingViewController()
{
  result = qword_27F984AB0;
  if (!qword_27F984AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F984AB0);
  }

  return result;
}

char *sub_258D40848()
{

  v1 = OBJC_IVAR____TtC18MessagesSettingsUI15SettingsContext___observationRegistrar;
  v2 = sub_258D564E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_258D40910()
{
  sub_258D40848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SettingsContext(uint64_t a1)
{
  result = qword_27F984AC0;
  if (!qword_27F984AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D409BC(uint64_t a1)
{
  result = sub_258D564E4();
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

void *sub_258D40A74()
{
  type metadata accessor for SummarizationManager();
  v0[2] = swift_allocObject();
  type metadata accessor for ReadReceiptsManager();
  v0[3] = swift_allocObject();
  type metadata accessor for FilterSendersManager();
  v0[4] = swift_allocObject();
  type metadata accessor for RaiseToListenManager();
  v0[5] = swift_allocObject();
  type metadata accessor for SubjectFieldManager();
  v0[6] = swift_allocObject();
  type metadata accessor for KeepMessagesManager();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(CKKeepMessagesPreferenceManager) init];
  v0[7] = v1;
  type metadata accessor for AudioExpirationManager();
  v0[8] = swift_allocObject();
  type metadata accessor for MMSManager();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(CKMMSSettingsHelper) init];
  v0[9] = v2;
  type metadata accessor for CharacterCountManager();
  v0[10] = swift_allocObject();
  type metadata accessor for LowQualityImagesManager();
  v0[11] = swift_allocObject();
  type metadata accessor for ShowContactPhotosManager();
  v0[12] = swift_allocObject();
  type metadata accessor for SendAsTextMessageManager();
  v0[13] = swift_allocObject();
  type metadata accessor for BusinessUpdatesManager();
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(BusinessSettingsHelper) init];
  v0[14] = v3;
  sub_258D564D4();
  return v0;
}

void *sub_258D40C3C()
{
  type metadata accessor for SettingsContext(0);
  v0 = swift_allocObject();
  result = sub_258D40A74();
  qword_27F986FF8 = v0;
  return result;
}

uint64_t sub_258D40C7C@<X0>(void *a1@<X8>)
{
  if (qword_27F984698 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F986FF8;
}

uint64_t sub_258D40CF0()
{
  sub_258D40D2C();
  sub_258D56634();
  return v1;
}

unint64_t sub_258D40D2C()
{
  result = qword_27F984AD0;
  if (!qword_27F984AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AD0);
  }

  return result;
}

void sub_258D40D90(char a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_258D56C34();
  [v1 setAudioMessageAutoKeep_];
}

id sub_258D40E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  if ([v2 detailControllerClass] && (swift_getObjCClassMetadata(), sub_258D41034(), swift_dynamicCastMetatype()))
  {
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v3 setSpecifier_];
    return v3;
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v5 init];
  }
}

uint64_t sub_258D40EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D40FE0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D40F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D40FE0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D40FB8(uint64_t a1)
{
  sub_258D40FE0();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D40FE0()
{
  result = qword_27F984AD8;
  if (!qword_27F984AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AD8);
  }

  return result;
}

unint64_t sub_258D41034()
{
  result = qword_27F984A80;
  if (!qword_27F984A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F984A80);
  }

  return result;
}

uint64_t KeepMessagesPreference.description.getter()
{
  v1 = 1918985593;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68746E6F6DLL;
  }
}

uint64_t sub_258D410F8()
{
  type metadata accessor for CloudSettingsSwiftUtils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258D56BC4();
  v3 = sub_258D56BC4();
  v4 = sub_258D56BC4();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_258D56BD4();
  return v6;
}

MessagesSettingsUI::KeepMessagesPreference_optional __swiftcall KeepMessagesPreference.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_258D4126C()
{
  result = qword_27F984AE0;
  if (!qword_27F984AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AE0);
  }

  return result;
}

uint64_t sub_258D412C0()
{
  v1 = *v0;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v1);
  return sub_258D56CC4();
}

uint64_t sub_258D41334(uint64_t a1)
{
  v2 = *v1;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v2);
  return sub_258D56CC4();
}

unint64_t sub_258D41390()
{
  result = qword_27F984AE8;
  if (!qword_27F984AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984AF0, &qword_258D597B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AE8);
  }

  return result;
}

unint64_t sub_258D41408()
{
  result = qword_27F984AF8;
  if (!qword_27F984AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AF8);
  }

  return result;
}

uint64_t sub_258D414B8()
{
  v1 = 1918985593;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68746E6F6DLL;
  }
}

uint64_t getEnumTagSinglePayload for KeepMessagesPreference(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KeepMessagesPreference(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258D41690()
{
  result = qword_27F984B00;
  if (!qword_27F984B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B00);
  }

  return result;
}

id sub_258D416E4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 smsRelayDevicesController];

  return v1;
}

uint64_t sub_258D41744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D41834();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D417A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D41834();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D4180C(uint64_t a1)
{
  sub_258D41834();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D41834()
{
  result = qword_27F984B08;
  if (!qword_27F984B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B08);
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

uint64_t sub_258D4189C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_258D418E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_258D41950@<X0>(void *a1@<X8>)
{
  sub_258D40D2C();
  result = sub_258D56634();
  *a1 = v3;
  return result;
}

uint64_t sub_258D419A0(uint64_t *a1)
{
  sub_258D40D2C();

  return sub_258D56644();
}

uint64_t sub_258D41A00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984B10, &qword_258D59A58);
  sub_258D56A64();
  sub_258D545B8(v9, *(&v9 + 1), v10, &v9);
  KeyPath = swift_getKeyPath();
  v5 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v5;
  v6 = v13;
  v7 = v10;
  *a1 = v9;
  *(a1 + 16) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v3;
}

void *sub_258D41AA4@<X0>(void *a1@<X8>)
{
  sub_258D40D2C();
  result = sub_258D56634();
  *a1 = v3;
  return result;
}

unint64_t sub_258D41AFC()
{
  result = qword_27F984B18;
  if (!qword_27F984B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984B20, &qword_258D59A88);
    sub_258D41B88();
    sub_258D41BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B18);
  }

  return result;
}

unint64_t sub_258D41B88()
{
  result = qword_27F984B28;
  if (!qword_27F984B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B28);
  }

  return result;
}

unint64_t sub_258D41BDC()
{
  result = qword_27F984B30;
  if (!qword_27F984B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984B38, &unk_258D59A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B30);
  }

  return result;
}

uint64_t sub_258D41C64(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_258D56BC4();

  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_258D56BC4();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_258D56C84();

      swift_unknownObjectRelease();
      sub_258D41DE0(v12, v13);
      sub_258D41DE0(v13, v12);
      if (swift_dynamicCast())
      {
        a4 = v11;
      }
    }

    else
    {
    }
  }

  return a4 & 1;
}

_OWORD *sub_258D41DE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258D41E44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 35);
  return result;
}

uint64_t sub_258D41F14()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 16);
}

uint64_t sub_258D41FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_258D42084(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42194()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 17);
}

uint64_t sub_258D42234@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_258D42304(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42414()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 19);
}

uint64_t sub_258D424B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_258D42584(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42694()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 20);
}

uint64_t sub_258D42734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_258D42804(uint64_t result)
{
  if (*(v1 + 20) == (result & 1))
  {
    *(v1 + 20) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42914()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 32);
}

uint64_t sub_258D429B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_258D42A84(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42B94()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 33);
}

uint64_t sub_258D42C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_258D42D04(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42E14()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 34);
}

uint64_t sub_258D42EB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_258D42F84(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43094()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 35);
}

uint64_t sub_258D43134(uint64_t result)
{
  if (*(v1 + 35) == (result & 1))
  {
    *(v1 + 35) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43244()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 37);
}

uint64_t sub_258D432E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 37);
  return result;
}

uint64_t sub_258D433B4(uint64_t result)
{
  if (*(v1 + 37) == (result & 1))
  {
    *(v1 + 37) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D434CC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 38);
}

uint64_t sub_258D4356C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 38);
  return result;
}

uint64_t sub_258D4363C(uint64_t result)
{
  if (*(v1 + 38) == (result & 1))
  {
    *(v1 + 38) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D4374C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 39);
}

uint64_t sub_258D437EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 39);
  return result;
}

uint64_t sub_258D438BC(uint64_t result)
{
  if (*(v1 + 39) == (result & 1))
  {
    *(v1 + 39) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D439CC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 40);
}

uint64_t sub_258D43A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_258D43B3C(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43C4C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a1 = *(v1 + 42);
  return result;
}

uint64_t sub_258D43CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 42);
  return result;
}

unsigned __int8 *sub_258D43DD4(unsigned __int8 *result)
{
  if (*(v1 + 42) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43EDC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 43);
}

uint64_t sub_258D43F7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 43);
  return result;
}

uint64_t sub_258D4404C(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D4415C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 44);
}

uint64_t sub_258D441FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_258D442CC(uint64_t result)
{
  if (*(v1 + 44) == (result & 1))
  {
    *(v1 + 44) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D443DC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 45);
}

uint64_t sub_258D4447C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 45);
  return result;
}

uint64_t sub_258D4454C(uint64_t result)
{
  if (*(v1 + 45) == (result & 1))
  {
    *(v1 + 45) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D4465C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 46);
}

uint64_t sub_258D446FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 46);
  return result;
}

uint64_t sub_258D447CC(uint64_t result)
{
  if (*(v1 + 46) == (result & 1))
  {
    *(v1 + 46) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D448DC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 47);
}

uint64_t sub_258D4497C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 47);
  return result;
}

uint64_t sub_258D44A4C(uint64_t result)
{
  if (*(v1 + 47) == (result & 1))
  {
    *(v1 + 47) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D44B5C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 50);
}

uint64_t sub_258D44BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 50);
  return result;
}

uint64_t sub_258D44CCC(uint64_t result)
{
  if (*(v1 + 50) == (result & 1))
  {
    *(v1 + 50) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t SettingsModel.deinit()
{

  v1 = OBJC_IVAR____TtC18MessagesSettingsUI13SettingsModel___observationRegistrar;
  v2 = sub_258D564E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18MessagesSettingsUI13SettingsModel___observationRegistrar;
  v2 = sub_258D564E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SettingsModel(uint64_t a1)
{
  result = qword_27F984B48;
  if (!qword_27F984B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D44F3C(uint64_t a1)
{
  result = sub_258D564E4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_258D4509C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_258D4512C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_258D4521C()
{
  v1 = *v0;
  sub_258D56CA4();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C9B240](v2);
  return sub_258D56CC4();
}

uint64_t sub_258D4526C()
{
  if (*v0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x259C9B240](v1);
}

uint64_t sub_258D452A4(uint64_t a1)
{
  v2 = *v1;
  sub_258D56CA4();
  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C9B240](v3);
  return sub_258D56CC4();
}

void *sub_258D452F0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_258D45310(uint64_t *a1@<X8>)
{
  v2 = 3;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t sub_258D453A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_258D56BC4();
  v8 = sub_258D56BC4();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_258D56BD4();
  return v10;
}

uint64_t sub_258D45528(char a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_258D56BC4();
  v4 = sub_258D56BC4();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_258D56BD4();
  return v6;
}

uint64_t sub_258D45640(char a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_258D56BC4();
  v4 = sub_258D56BC4();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_258D56BD4();
  return v6;
}

unint64_t sub_258D45750()
{
  result = qword_27F984B58;
  if (!qword_27F984B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B58);
  }

  return result;
}

unint64_t sub_258D45828()
{
  result = qword_27F984B70;
  if (!qword_27F984B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B70);
  }

  return result;
}

unint64_t sub_258D4587C()
{
  result = qword_27F984B78;
  if (!qword_27F984B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B78);
  }

  return result;
}

unint64_t sub_258D458D0()
{
  result = qword_27F984B80;
  if (!qword_27F984B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B80);
  }

  return result;
}

unint64_t sub_258D45928()
{
  result = qword_27F984B88;
  if (!qword_27F984B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B88);
  }

  return result;
}

unint64_t sub_258D45980()
{
  result = qword_27F984B90;
  if (!qword_27F984B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B90);
  }

  return result;
}

unint64_t sub_258D45A58()
{
  result = qword_27F984BA8;
  if (!qword_27F984BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BA8);
  }

  return result;
}

unint64_t sub_258D45AAC()
{
  result = qword_27F984BB0;
  if (!qword_27F984BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BB0);
  }

  return result;
}

unint64_t sub_258D45B00()
{
  result = qword_27F984BB8;
  if (!qword_27F984BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BB8);
  }

  return result;
}

unint64_t sub_258D45B58()
{
  result = qword_27F984BC0;
  if (!qword_27F984BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BC0);
  }

  return result;
}

unint64_t sub_258D45C34()
{
  result = qword_27F984BD8;
  if (!qword_27F984BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BD8);
  }

  return result;
}

unint64_t sub_258D45C88()
{
  result = qword_27F984BE0;
  if (!qword_27F984BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BE0);
  }

  return result;
}

unint64_t sub_258D45CDC()
{
  result = qword_27F984BE8;
  if (!qword_27F984BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BE8);
  }

  return result;
}

unint64_t sub_258D45D38()
{
  result = qword_27F984BF0;
  if (!qword_27F984BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BF0);
  }

  return result;
}

uint64_t sub_258D45E10(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_258D45E74()
{
  result = qword_27F984C08;
  if (!qword_27F984C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C08);
  }

  return result;
}

unint64_t sub_258D45EC8()
{
  result = qword_27F984C10;
  if (!qword_27F984C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C10);
  }

  return result;
}

unint64_t sub_258D45F1C()
{
  result = qword_27F984C18;
  if (!qword_27F984C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C18);
  }

  return result;
}

unint64_t sub_258D45F74()
{
  result = qword_27F984C20;
  if (!qword_27F984C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C20);
  }

  return result;
}

unint64_t sub_258D45FCC()
{
  result = qword_27F984C28;
  if (!qword_27F984C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C28);
  }

  return result;
}

uint64_t sub_258D46050(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_258D46528()
{
  type metadata accessor for SettingsModel(0);
  v0 = swift_allocObject();
  sub_258D564D4();
  *(v0 + 16) = 1;
  *(v0 + 18) = 1;
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 areReadReceiptsEnabled];

  *(v0 + 19) = v3;
  *(v0 + 20) = [objc_opt_self() messageSummarizationEnabled];
  *(v0 + 24) = &unk_286A13010;
  v4 = [v1 sharedInstance];
  v5 = [v4 getAudioMessageAutoKeep];

  v6 = sub_258D56C24();
  *(v0 + 32) = v6 == 3;
  *(v0 + 33) = sub_258D41C64(0, 0xD000000000000014, 0x8000000258D5CD20, 1) & 1;
  *(v0 + 34) = sub_258D41C64(2, 0xD000000000000019, 0x8000000258D5CD40, 0) & 1;
  type metadata accessor for CheckInDataView.Model(0);
  v7 = swift_allocObject();
  sub_258D564D4();
  swift_getKeyPath();
  v30 = v7;
  sub_258D46A8C(&qword_27F984798, type metadata accessor for CheckInDataView.Model, &unk_258D58F94);
  sub_258D564C4();

  v8 = objc_opt_self();
  if ([v8 hasUserCompletedOnboarding])
  {
    v9 = [v8 shareAllLocations];

    if (v9)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 1;
LABEL_6:
  *(v0 + 35) = v10;
  *(v0 + 36) = 1;
  v11 = [v1 sharedInstance];
  v12 = [v11 _sharedWithYouEnabled];

  *(v0 + 37) = v12;
  *(v0 + 38) = 0;
  *(v0 + 39) = sub_258D41C64(0, 0xD000000000000011, 0x8000000258D5CD60, 1) & 1;
  v13 = [objc_opt_self() sharedFeatureFlags];
  v14 = [v13 isIntroductionsEnabled];

  v15 = "ShowContactPhotos";
  if (v14)
  {
    v15 = "MMSShowCharacterCount";
    v16 = 0xD000000000000015;
  }

  else
  {
    v16 = 0xD00000000000001ELL;
  }

  *(v0 + 40) = sub_258D41C64(0, v16, v15 | 0x8000000000000000, 0) & 1;
  *(v0 + 41) = 1;
  v17 = [objc_opt_self() keepMessagesPreference];
  sub_258D3FECC(0, &qword_27F984C40, 0x277D82BB8);
  sub_258D3FECC(0, &qword_27F984C48, 0x277CCABB0);
  v18 = sub_258D56C54();
  v19 = sub_258D56C64();

  if (v19)
  {

    v20 = 0;
  }

  else
  {
    v21 = sub_258D56C54();
    v22 = sub_258D56C64();

    if (v22)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  *(v0 + 42) = v20;
  *(v0 + 43) = 0;
  v23 = [objc_allocWithZone(CKMMSSettingsHelper) init];
  v24 = [v23 isMMSEnabled];

  v29 = 2;
  result = MEMORY[0x259C9B1A0](v24, &v29);
  v26 = v29;
  if (v29 == 2)
  {
    __break(1u);
  }

  else
  {

    *(v0 + 44) = v26 & 1;
    *(v0 + 45) = sub_258D41C64(0, 0x53776F6853534D4DLL, 0xEE007463656A6275, 0) & 1;
    *(v0 + 46) = sub_258D41C64(0, 0xD000000000000015, 0x8000000258D5CDA0, 0) & 1;
    *(v0 + 47) = sub_258D41C64(0, 0x4D537341646E6553, 0xE900000000000053, 0) & 1;
    *(v0 + 48) = 257;
    v27 = [objc_allocWithZone(BusinessSettingsHelper) init];
    v28 = [v27 areBusinessUpdatesEnabled];

    *(v0 + 50) = v28;
    *(v0 + 56) = 0;
    *(v0 + 64) = 65793;
    *(v0 + 68) = 1;
    return v0;
  }

  return result;
}

uint64_t sub_258D46A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258D46BAC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_258D46D28(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
  }
}

void sub_258D46E78(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    center = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v6, 0, 0, 1u);

    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v7, 0, 0, 1u);
  }
}

void sub_258D47000(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_258D56BC4();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {
    v11 = sub_258D56BC4();
    [v10 setBool:1 forKey:v11];

    [v10 synchronize];
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = sub_258D56BC4();
    CFNotificationCenterPostNotification(v12, v13, 0, 0, 1u);
  }
}

void sub_258D4722C(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    center = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v6, 0, 0, 1u);

    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v7, 0, 0, 1u);
  }
}

void sub_258D473B4(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    center = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v6, 0, 0, 1u);

    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v7, 0, 0, 1u);
  }
}

uint64_t sub_258D47548()
{
  v1 = sub_258D56624();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_258D56C44();
    v7 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v10, &qword_27F984D90, &qword_258D5A9B0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_258D476A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C60, &qword_258D5A870);
  MEMORY[0x28223BE20](v116);
  v114 = (&v105 - v3);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C68, &qword_258D5A878);
  v4 = MEMORY[0x28223BE20](v115);
  v146 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v125 = &v105 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C70, &qword_258D5A880);
  v112 = *(v113 - 1);
  MEMORY[0x28223BE20](v113);
  v106 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C78, &qword_258D5A888);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v145 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = (&v105 - v11);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C80, &qword_258D5A890);
  v152 = *(v144 - 8);
  v12 = MEMORY[0x28223BE20](v144);
  v143 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v105 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C88, &qword_258D5A898);
  v151 = *(v142 - 8);
  v15 = MEMORY[0x28223BE20](v142);
  v141 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v135 = &v105 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C90, &qword_258D5A8A0);
  v150 = *(v140 - 8);
  v18 = MEMORY[0x28223BE20](v140);
  v139 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v134 = &v105 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C98, &qword_258D5A8A8);
  v149 = *(v138 - 8);
  v21 = MEMORY[0x28223BE20](v138);
  v136 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v131 = &v105 - v23;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CA0, &qword_258D5A8B0);
  v108 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v105 = &v105 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CA8, &qword_258D5A8B8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v133 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v128 = &v105 - v28;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CB0, &qword_258D5A8C0);
  v148 = *(v132 - 8);
  v29 = MEMORY[0x28223BE20](v132);
  v130 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v105 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CB8, &qword_258D5A8C8);
  MEMORY[0x28223BE20](v33);
  v35 = &v105 - v34;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CC0, &qword_258D5A8D0);
  v124 = *(v129 - 8);
  v36 = MEMORY[0x28223BE20](v129);
  v127 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v105 - v38;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CC8, &qword_258D5A8D8);
  v121 = *(v123 - 8);
  v40 = MEMORY[0x28223BE20](v123);
  v126 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v105 - v42;
  v155 = a1;
  sub_258D4929C(&v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CD0, &qword_258D5A8E0);
  sub_258D54788();
  v119 = v43;
  sub_258D56B64();
  v154 = a1;
  sub_258D49F10(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CE8, &qword_258D5A8E8);
  sub_258D394F8(&qword_27F984CF0, &qword_27F984CE8, &qword_258D5A8E8, MEMORY[0x277CE14C0]);
  sub_258D54868();
  v120 = v39;
  sub_258D56B94();
  v153 = a1;
  sub_258D4AAFC(&v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847F0, &unk_258D5A900);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984708, &qword_258D58EE8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984700, &qword_258D58EE0);
  v47 = sub_258D56684();
  v48 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  v49 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v156 = v46;
  v157 = v47;
  v111 = v47;
  v158 = v48;
  v159 = v49;
  v110 = v49;
  v50 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156 = v45;
  v157 = MEMORY[0x277D839B0];
  v52 = v128;
  v158 = OpaqueTypeConformance2;
  v159 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_258D554A8(&qword_27F984818, &qword_27F9847F0, &unk_258D5A900, MEMORY[0x277CE1550]);
  v122 = v32;
  v53 = v108;
  v107 = v44;
  sub_258D56B94();
  v163 = *(a1 + 16);
  v164 = *(a1 + 32);
  v160 = *(a1 + 16);
  v161 = *(a1 + 32);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v156);

  v54 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v46) = [v54 generativeModelsAvailable];

  if (v46)
  {
    MEMORY[0x28223BE20](v55);
    v56 = v105;
    sub_258D56B84();
    (*(v53 + 32))(v52, v56, v118);
    v50 = 0;
  }

  v57 = 1;
  v58 = (*(v53 + 56))(v52, v50, 1, v118);
  MEMORY[0x28223BE20](v58);
  sub_258D4E180(&v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D18, &qword_258D5A910);
  v59 = MEMORY[0x277CE14C0];
  sub_258D394F8(&qword_27F984D20, &qword_27F984D18, &qword_258D5A910, MEMORY[0x277CE14C0]);
  v60 = sub_258D56B94();
  MEMORY[0x28223BE20](v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D28, &qword_258D5A918);
  sub_258D394F8(&qword_27F984D30, &qword_27F984D28, &qword_258D5A918, v59);
  v61 = sub_258D56B84();
  MEMORY[0x28223BE20](v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D38, &qword_258D5A920);
  sub_258D394F8(&qword_27F984D40, &qword_27F984D38, &qword_258D5A920, v59);
  v62 = sub_258D56B84();
  MEMORY[0x28223BE20](v62);
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = [objc_opt_self() bundleForClass_];
  v65 = sub_258D56BC4();
  v66 = sub_258D56BC4();
  v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

  v68 = sub_258D56BD4();
  v70 = v69;

  *&v160 = v68;
  *(&v160 + 1) = v70;
  sub_258D39364();
  *&v160 = sub_258D568E4();
  *(&v160 + 1) = v71;
  LOBYTE(v161) = v72 & 1;
  v162 = v73;
  sub_258D53134(&v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D48, &qword_258D5A928);
  sub_258D394F8(&qword_27F984D50, &qword_27F984D48, &qword_258D5A928, v59);
  sub_258D56B74();
  v160 = v163;
  v161 = v164;
  MEMORY[0x259C9B090](&v156, v109);

  v74 = [objc_opt_self() sharedInstance];
  LODWORD(v59) = [v74 shouldShowSatelliteDemoModeButton];

  v75 = v113;
  v76 = v112;
  if (v59)
  {
    sub_258D533F0(&v160);
    sub_258D53518(&v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A48, &qword_258D5A980);
    sub_258D394F8(&qword_27F984D88, &qword_27F984A48, &qword_258D5A980, MEMORY[0x277CDF028]);
    v77 = v106;
    sub_258D56B74();
    v76[4](v147, v77, v75);
    v57 = 0;
  }

  v78 = (v76[7])(v147, v57, 1, v75);
  MEMORY[0x28223BE20](v78);
  sub_258D54174(&v160);
  sub_258D542A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D58, &qword_258D5A930);
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984D60, &qword_258D5A938);
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984D68, &qword_258D5A940);
  v81 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940, MEMORY[0x277CDF068]);
  v156 = v80;
  v157 = v111;
  v158 = v81;
  v159 = v110;
  v82 = swift_getOpaqueTypeConformance2();
  v156 = v79;
  v157 = MEMORY[0x277D839B0];
  v158 = v82;
  v159 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_258D394F8(&qword_27F984D78, &qword_27F984C60, &qword_258D5A870, MEMORY[0x277CDE598]);
  v83 = v125;
  sub_258D56B74();
  v84 = sub_258D56834();
  KeyPath = swift_getKeyPath();
  v86 = (v83 + *(v115 + 36));
  *v86 = KeyPath;
  v86[1] = v84;
  v111 = *(v121 + 16);
  v87 = v123;
  v111(v126, v119, v123);
  v118 = *(v124 + 16);
  v118(v127, v120, v129);
  v116 = *(v148 + 16);
  v116(v130, v122, v132);
  sub_258D39240(v128, v133, &qword_27F984CA8, &qword_258D5A8B8);
  v115 = *(v149 + 16);
  (v115)(v136, v131, v138);
  v114 = *(v150 + 16);
  v114(v139, v134, v140);
  v113 = *(v151 + 16);
  (v113)(v141, v135, v142);
  v112 = *(v152 + 16);
  (v112)(v143, v137, v144);
  sub_258D39240(v147, v145, &qword_27F984C78, &qword_258D5A888);
  sub_258D39240(v83, v146, &qword_27F984C68, &qword_258D5A878);
  v88 = v117;
  v111(v117, v126, v87);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D80, &qword_258D5A978);
  v118((v88 + v89[12]), v127, v129);
  v116((v88 + v89[16]), v130, v132);
  sub_258D39240(v133, v88 + v89[20], &qword_27F984CA8, &qword_258D5A8B8);
  v90 = v138;
  (v115)(v88 + v89[24], v136, v138);
  v91 = v140;
  v114((v88 + v89[28]), v139, v140);
  v92 = v142;
  (v113)(v88 + v89[32], v141, v142);
  v93 = v144;
  (v112)(v88 + v89[36], v143, v144);
  sub_258D39240(v145, v88 + v89[40], &qword_27F984C78, &qword_258D5A888);
  sub_258D39240(v146, v88 + v89[44], &qword_27F984C68, &qword_258D5A878);
  sub_258D392A8(v125, &qword_27F984C68, &qword_258D5A878);
  sub_258D392A8(v147, &qword_27F984C78, &qword_258D5A888);
  v94 = *(v152 + 8);
  v152 += 8;
  v147 = v94;
  (v94)(v137, v93);
  v95 = *(v151 + 8);
  v151 += 8;
  v137 = v95;
  (v95)(v135, v92);
  v96 = *(v150 + 8);
  v150 += 8;
  v96(v134, v91);
  v97 = *(v149 + 8);
  v149 += 8;
  v97(v131, v90);
  sub_258D392A8(v128, &qword_27F984CA8, &qword_258D5A8B8);
  v98 = *(v148 + 8);
  v148 += 8;
  v99 = v132;
  v98(v122, v132);
  v100 = *(v124 + 8);
  v101 = v129;
  v100(v120, v129);
  v102 = *(v121 + 8);
  v103 = v123;
  v102(v119, v123);
  sub_258D392A8(v146, &qword_27F984C68, &qword_258D5A878);
  sub_258D392A8(v145, &qword_27F984C78, &qword_258D5A888);
  (v147)(v143, v144);
  (v137)(v141, v142);
  v96(v139, v140);
  v97(v136, v138);
  sub_258D392A8(v133, &qword_27F984CA8, &qword_258D5A8B8);
  v98(v130, v99);
  v100(v127, v101);
  return (v102)(v126, v103);
}

uint64_t sub_258D490FC(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v6, v1);

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 systemPolicySpecifiers];

  type metadata accessor for CKWrappedPreferencesSpecifier(0);
  v4 = sub_258D56BF4();

  *&v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984FA0, &qword_258D5AE30);
  sub_258D394F8(&qword_27F984FA8, &qword_27F984FA0, &qword_258D5AE30, MEMORY[0x277D83980]);
  sub_258D5480C();
  sub_258D555E4(&qword_27F984FB0, type metadata accessor for CKWrappedPreferencesSpecifier, &protocol conformance descriptor for CKWrappedPreferencesSpecifier);
  return sub_258D56B54();
}

id sub_258D49290@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_258D4929C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D493C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E20, &qword_258D5AB10);
  v73 = *(v71 - 8);
  v3 = MEMORY[0x28223BE20](v71);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v54 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD0, &qword_258D5AA10);
  v72 = *(v70 - 8);
  v6 = MEMORY[0x28223BE20](v70);
  v68 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v54 - v8;
  v59 = sub_258D56684();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v11 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v54 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v67 = *(v66 - 8);
  v14 = MEMORY[0x28223BE20](v66);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v54 - v16;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = ObjCClassFromMetadata;
  v57 = objc_opt_self();
  v18 = [v57 bundleForClass_];
  v19 = sub_258D56BC4();
  v56 = "MPLE_DATA_FOOTER";
  v20 = sub_258D56BC4();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  v22 = sub_258D56BD4();
  v24 = v23;

  *&v80 = v22;
  *(&v80 + 1) = v24;
  v78 = *(a1 + 16);
  v79 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v25 = v76;
  v26 = v77;
  swift_getKeyPath();
  v78 = v25;
  v79 = v26;
  sub_258D56B24();

  v54 = sub_258D39364();
  sub_258D56AE4();
  sub_258D56674();
  sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v27 = v63;
  v28 = v55;
  v29 = v59;
  sub_258D56934();
  (*(v60 + 8))(v10, v29);
  (*(v11 + 8))(v13, v28);
  v76 = *(a1 + 40);
  v80 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  v74 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
  sub_258D54A0C();
  sub_258D54A88();
  v30 = v64;
  sub_258D56584();
  v31 = [v57 bundleForClass_];
  v32 = sub_258D56BC4();
  v33 = sub_258D56BC4();
  v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

  v35 = sub_258D56BD4();
  v37 = v36;

  *&v80 = v35;
  *(&v80 + 1) = v37;
  v75 = v76;
  sub_258D56A64();
  v38 = v69;
  sub_258D56594();
  v39 = *(v67 + 16);
  v40 = v65;
  v41 = v66;
  v39(v65, v27, v66);
  v60 = *(v72 + 16);
  v42 = v68;
  (v60)(v68, v30, v70);
  v43 = *(v73 + 16);
  v44 = v61;
  v43(v61, v38, v71);
  v45 = v62;
  v39(v62, v40, v41);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F98, &qword_258D5AE00);
  v47 = v70;
  (v60)(&v45[*(v46 + 48)], v42, v70);
  v48 = v71;
  v43(&v45[*(v46 + 64)], v44, v71);
  v49 = *(v73 + 8);
  v49(v69, v48);
  v50 = *(v72 + 8);
  v50(v64, v47);
  v51 = *(v67 + 8);
  v52 = v66;
  v51(v63, v66);
  v49(v44, v48);
  v50(v68, v47);
  return (v51)(v65, v52);
}

uint64_t sub_258D49D2C(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v17 = v7;
  v18 = v9;
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v14, v10);
  v11 = v14;
  swift_getKeyPath();
  *&v15 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(a1) = *(v11 + 17);

  *&v15 = sub_258D45640(a1);
  *(&v15 + 1) = v12;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D49F10@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D08, &qword_258D5A8F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-v4];
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_258D56BC4();
  v9 = sub_258D56BC4();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_258D56BD4();
  v13 = v12;

  *v5 = sub_258D566B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F60, &qword_258D5AD88);
  v16 = v11;
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F68, &qword_258D5AD90);
  sub_258D553C4();
  sub_258D56584();

  sub_258D55508(v5, a1);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_258D4A148@<X0>(uint64_t a1@<X8>)
{
  sub_258D4A1B0(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_258D4A1B0@<X0>(uint64_t a3@<X8>)
{
  sub_258D39364();

  v3 = sub_258D568E4();
  v5 = v4;
  v7 = v6;
  sub_258D56834();
  v8 = sub_258D568C4();
  v10 = v9;
  v12 = v11;

  sub_258D39540(v3, v5, v7 & 1);

  v13 = objc_opt_self();
  v14 = [v13 systemGrayColor];
  sub_258D569C4();
  v15 = sub_258D568A4();
  v45 = v16;
  v46 = v15;
  v44 = v17;
  sub_258D39540(v8, v10, v12 & 1);

  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_258D56BC4();
  v21 = sub_258D56BC4();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_258D56BD4();
  v23 = sub_258D568E4();
  v25 = v24;
  LOBYTE(v3) = v26;
  sub_258D56834();
  v27 = sub_258D568C4();
  v29 = v28;
  v31 = v30;

  sub_258D39540(v23, v25, v3 & 1);

  v32 = [v13 systemBlueColor];
  sub_258D569C4();
  v33 = sub_258D568A4();
  v35 = v34;
  LOBYTE(v23) = v36;
  sub_258D39540(v27, v29, v31 & 1);

  v42 = sub_258D568B4();
  v43 = v37;
  v39 = v38;
  LOBYTE(v3) = v40;
  sub_258D39540(v33, v35, v23 & 1);

  sub_258D39540(v46, v45, v44 & 1);

  *a3 = v42;
  *(a3 + 8) = v39;
  *(a3 + 16) = v3 & 1;
  *(a3 + 24) = v43;
  return result;
}

uint64_t sub_258D4A544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v36 = sub_258D56684();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v9;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_258D56BC4();
  v13 = sub_258D56BC4();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_258D56BD4();
  v17 = v16;

  v44[3] = v15;
  v44[4] = v17;
  v45 = *(a1 + 16);
  v46 = *(a1 + 32);
  v41 = *(a1 + 16);
  v42 = *(a1 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v19 = v44[0];
  v20 = v44[1];
  v21 = v44[2];
  swift_getKeyPath();
  *&v41 = v19;
  *(&v41 + 1) = v20;
  v42 = v21;
  sub_258D56B24();

  sub_258D39364();
  sub_258D56AE4();
  sub_258D56674();
  v22 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  v23 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v24 = v33;
  v25 = v34;
  v26 = v36;
  sub_258D56934();
  (*(v37 + 8))(v4, v26);
  (*(v35 + 8))(v6, v25);
  v41 = v45;
  v42 = v46;
  MEMORY[0x259C9B090](v44, v18);
  v27 = v44[0];
  swift_getKeyPath();
  *&v41 = v27;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v15) = *(v27 + 19);

  LOBYTE(v44[0]) = v15;
  v28 = swift_allocObject();
  v29 = *(a1 + 48);
  *(v28 + 48) = *(a1 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a1 + 64);
  v30 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v30;
  sub_258D549BC(a1, &v41);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  v42 = v22;
  v43 = v23;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_258D56984();

  return (*(v39 + 8))(v24, v31);
}

uint64_t sub_258D4AAFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  a1[1] = v8;
  a1[2] = v9 & 1;
  a1[3] = v10;
  return result;
}

uint64_t sub_258D4AC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v36 = sub_258D56684();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v9;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_258D56BC4();
  v13 = sub_258D56BC4();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_258D56BD4();
  v17 = v16;

  v44[3] = v15;
  v44[4] = v17;
  v45 = *(a1 + 16);
  v46 = *(a1 + 32);
  v41 = *(a1 + 16);
  v42 = *(a1 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v19 = v44[0];
  v20 = v44[1];
  v21 = v44[2];
  swift_getKeyPath();
  *&v41 = v19;
  *(&v41 + 1) = v20;
  v42 = v21;
  sub_258D56B24();

  sub_258D39364();
  sub_258D56AE4();
  sub_258D56674();
  v22 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  v23 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v24 = v33;
  v25 = v34;
  v26 = v36;
  sub_258D56934();
  (*(v37 + 8))(v4, v26);
  (*(v35 + 8))(v6, v25);
  v41 = v45;
  v42 = v46;
  MEMORY[0x259C9B090](v44, v18);
  v27 = v44[0];
  swift_getKeyPath();
  *&v41 = v27;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v15) = *(v27 + 20);

  LOBYTE(v44[0]) = v15;
  v28 = swift_allocObject();
  v29 = *(a1 + 48);
  *(v28 + 48) = *(a1 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a1 + 64);
  v30 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v30;
  sub_258D549BC(a1, &v41);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  v42 = v22;
  v43 = v23;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_258D56984();

  return (*(v39 + 8))(v24, v31);
}

id sub_258D4B1DC(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = sub_258D56624();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *a3;
  v14 = *a3;
  v15 = *(a3 + 8);
  if (v15 == 1)
  {
    v13[1] = v10;
  }

  else
  {

    sub_258D56C44();
    v11 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v14, &qword_27F984D90, &qword_258D5A9B0);
    (*(v6 + 8))(v8, v5);
  }

  return [objc_opt_self() setMessageSummarizationUserPreference_];
}

uint64_t sub_258D4B380@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v156 = a1;
  v167 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E98, &qword_258D5AC08);
  MEMORY[0x28223BE20](v155);
  v154 = &v144 - v2;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EA0, &qword_258D5AC10);
  v176 = *(v177 - 1);
  MEMORY[0x28223BE20](v177);
  v153 = &v144 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EA8, &qword_258D5AC18);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v187 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v188 = &v144 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EB0, &qword_258D5AC20);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v152 = &v144 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EB8, &qword_258D5AC28);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v186 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v195 = &v144 - v12;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v158 = &v144 - v13;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v160 = &v144 - v14;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v166 = *(v185 - 8);
  v15 = MEMORY[0x28223BE20](v185);
  v192 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v191 = &v144 - v17;
  *&v172 = sub_258D56684();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v170 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v144 - v19;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D60, &qword_258D5A938);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v144 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D58, &qword_258D5A930);
  v169 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v147 = &v144 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EC0, &qword_258D5AC30);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v184 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v194 = &v144 - v25;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EC8, &qword_258D5AC38);
  v182 = *(v183 - 8);
  v26 = MEMORY[0x28223BE20](v183);
  v190 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v189 = &v144 - v28;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984ED0, &qword_258D5AC40);
  MEMORY[0x28223BE20](v193);
  v157 = &v144 - v29;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984ED8, &qword_258D5AC48);
  v180 = *(v181 - 8);
  v30 = MEMORY[0x28223BE20](v181);
  v179 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v144 - v32;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = objc_opt_self();
  v36 = [v35 bundleForClass_];
  v37 = sub_258D56BC4();
  v38 = sub_258D56BC4();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  v40 = sub_258D56BD4();
  v42 = v41;

  v43 = v194;
  *&v203 = v40;
  *(&v203 + 1) = v42;
  v44 = sub_258D565B4();
  v45 = sub_258D567E4();
  v199 = v44;
  LOBYTE(v200) = v45;
  v174 = v35;
  v175 = ObjCClassFromMetadata;
  v46 = [v35 bundleForClass_];
  v47 = sub_258D56BC4();
  v173 = "MPLE_DATA_FOOTER";
  v48 = sub_258D56BC4();
  v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

  v50 = sub_258D56BD4();
  v52 = v51;

  *v197 = v50;
  *&v197[8] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EE0, &qword_258D5AC50);
  v54 = sub_258D550A4(&qword_27F984EE8, &qword_27F984EE0, &qword_258D5AC50, sub_258D38050);
  v55 = sub_258D39364();
  v56 = MEMORY[0x277D837D0];
  sub_258D56964();

  *v197 = v53;
  *&v197[8] = v56;
  *&v197[16] = v54;
  *&v198 = v55;
  v57 = 1;
  swift_getOpaqueTypeConformance2();
  v178 = v33;
  sub_258D56594();
  v58 = v156;
  v196 = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EF0, &qword_258D5AC58);
  sub_258D54F00();
  sub_258D56884();
  v203 = *(v58 + 16);
  v204 = *(v58 + 32);
  *v197 = *(v58 + 16);
  *&v197[16] = *(v58 + 32);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v199);

  v157 = objc_opt_self();
  v60 = [v157 sharedInstance];
  LODWORD(v50) = [v60 isRaiseGestureSupported];

  v193 = v59;
  if (v50)
  {
    *v197 = v203;
    *&v197[16] = v204;
    sub_258D56B34();
    v61 = v199;
    v62 = v200;
    swift_getKeyPath();
    *v197 = v61;
    *&v197[8] = v62;
    sub_258D56B24();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
    sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8, MEMORY[0x277CE1198]);
    v63 = v145;
    sub_258D56AD4();
    v64 = v170;
    sub_258D56674();
    v65 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940, MEMORY[0x277CDF068]);
    v66 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    v67 = v149;
    v68 = v148;
    v69 = v172;
    sub_258D56934();
    (*(v171 + 8))(v64, v69);
    (*(v146 + 8))(v63, v68);
    *v197 = v203;
    *&v197[16] = v204;
    MEMORY[0x259C9B090](&v199, v193);
    v70 = v199;
    swift_getKeyPath();
    *v197 = v70;
    sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564C4();

    LOBYTE(v63) = *(v70 + 33);

    LOBYTE(v199) = v63;
    v71 = swift_allocObject();
    v72 = *(v58 + 48);
    *(v71 + 48) = *(v58 + 32);
    *(v71 + 64) = v72;
    *(v71 + 80) = *(v58 + 64);
    v73 = *(v58 + 16);
    *(v71 + 16) = *v58;
    *(v71 + 32) = v73;
    sub_258D549BC(v58, v197);
    *v197 = v68;
    *&v197[8] = v69;
    v43 = v194;
    *&v197[16] = v65;
    *&v198 = v66;
    swift_getOpaqueTypeConformance2();
    v74 = v147;
    v75 = v151;
    sub_258D56984();

    (*(v150 + 8))(v67, v75);
    (*(v169 + 32))(v43, v74, v168);
    v57 = 0;
  }

  (*(v169 + 56))(v43, v57, 1, v168);
  v76 = [v174 bundleForClass_];
  v77 = sub_258D56BC4();
  v78 = sub_258D56BC4();
  v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

  v80 = sub_258D56BD4();
  v82 = v81;

  v201 = v80;
  v202 = v82;
  *v197 = v203;
  *&v197[16] = v204;
  sub_258D56B34();
  v83 = v199;
  v84 = v200;
  swift_getKeyPath();
  *v197 = v83;
  *&v197[8] = v84;
  sub_258D56B24();

  v85 = v158;
  v169 = v55;
  sub_258D56AE4();
  v86 = v170;
  sub_258D56674();
  v87 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  v88 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v89 = v160;
  v90 = v161;
  v91 = v172;
  sub_258D56934();
  (*(v171 + 8))(v86, v91);
  (*(v159 + 8))(v85, v90);
  *v197 = v203;
  *&v197[16] = v204;
  MEMORY[0x259C9B090](&v199, v193);
  v92 = v199;
  swift_getKeyPath();
  *v197 = v92;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v80) = *(v92 + 34);

  LOBYTE(v199) = v80;
  v93 = swift_allocObject();
  v94 = *(v58 + 48);
  *(v93 + 48) = *(v58 + 32);
  *(v93 + 64) = v94;
  *(v93 + 80) = *(v58 + 64);
  v95 = *(v58 + 16);
  *(v93 + 16) = *v58;
  *(v93 + 32) = v95;
  sub_258D549BC(v58, v197);
  *v197 = v90;
  *&v197[8] = v91;
  v96 = v193;
  *&v197[16] = v87;
  *&v198 = v88;
  swift_getOpaqueTypeConformance2();
  v97 = v163;
  sub_258D56984();

  (*(v162 + 8))(v89, v97);
  *v197 = v203;
  *&v197[16] = v204;
  MEMORY[0x259C9B090](&v199, v96);

  v98 = v157;
  v99 = [v157 sharedInstance];
  LODWORD(v80) = [v99 shouldShowCheckInLocationHistorySettings];

  v100 = 1;
  v101 = v165;
  v102 = v164;
  if (v80)
  {
    *v197 = v203;
    *&v197[16] = v204;
    sub_258D56B34();
    v103 = v199;
    type metadata accessor for CheckInDataView.Model(0);
    v172 = v200;
    v104 = swift_allocObject();
    sub_258D564D4();
    v199 = v104;
    v105 = sub_258D56A44();
    *&v197[16] = v103;
    v198 = v172;
    MEMORY[0x28223BE20](v105);
    *(&v144 - 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
    sub_258D54A0C();
    sub_258D5518C();
    v106 = v152;
    sub_258D56584();
    (*(v102 + 32))(v195, v106, v101);
    v100 = 0;
  }

  v107 = 1;
  (*(v102 + 56))(v195, v100, 1, v101);
  *v197 = v203;
  *&v197[16] = v204;
  MEMORY[0x259C9B090](&v199, v96);

  v108 = [v98 sharedInstance];
  v109 = [v108 shouldShowSharedWithYouSettings];

  if (v109)
  {
    *v197 = v203;
    *&v197[16] = v204;
    sub_258D56B34();
    v110 = v199;
    v111 = v200;
    v112 = sub_258D565B4();
    v113 = sub_258D567E4();
    *v197 = v110;
    *&v197[8] = v111;
    *&v198 = v112;
    BYTE8(v198) = v113;
    v114 = [v174 bundleForClass_];
    v115 = sub_258D56BC4();
    v116 = sub_258D56BC4();
    v117 = [v114 localizedStringForKey:v115 value:0 table:v116];

    v118 = sub_258D56BD4();
    v120 = v119;

    v199 = v118;
    *&v200 = v120;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F20, &qword_258D5ACA0);
    v122 = sub_258D550A4(&qword_27F984F28, &qword_27F984F20, &qword_258D5ACA0, sub_258D55128);
    v123 = v169;
    sub_258D56964();

    MEMORY[0x28223BE20](v124);
    *(&v144 - 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
    sub_258D54A0C();
    *v197 = v121;
    *&v197[8] = MEMORY[0x277D837D0];
    *&v197[16] = v122;
    *&v198 = v123;
    swift_getOpaqueTypeConformance2();
    v125 = v153;
    sub_258D56584();
    (*(v176 + 32))(v188, v125, v177);
    v107 = 0;
  }

  v126 = v188;
  (*(v176 + 56))(v188, v107, 1, v177);
  v127 = *(v180 + 16);
  v128 = v179;
  v129 = v181;
  v127(v179, v178, v181);
  v193 = *(v182 + 16);
  v193(v190, v189, v183);
  v130 = v184;
  sub_258D39240(v194, v184, &qword_27F984EC0, &qword_258D5AC30);
  v131 = v166;
  v177 = *(v166 + 16);
  v132 = v185;
  v177(v192, v191, v185);
  sub_258D39240(v195, v186, &qword_27F984EB8, &qword_258D5AC28);
  sub_258D39240(v126, v187, &qword_27F984EA8, &qword_258D5AC18);
  v133 = v167;
  v127(v167, v128, v129);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F18, &qword_258D5AC98);
  v135 = v183;
  v193(&v133[v134[12]], v190, v183);
  sub_258D39240(v130, &v133[v134[16]], &qword_27F984EC0, &qword_258D5AC30);
  v177(&v133[v134[20]], v192, v132);
  v136 = v186;
  sub_258D39240(v186, &v133[v134[24]], &qword_27F984EB8, &qword_258D5AC28);
  v137 = v187;
  sub_258D39240(v187, &v133[v134[28]], &qword_27F984EA8, &qword_258D5AC18);
  sub_258D392A8(v188, &qword_27F984EA8, &qword_258D5AC18);
  sub_258D392A8(v195, &qword_27F984EB8, &qword_258D5AC28);
  v138 = *(v131 + 8);
  v138(v191, v132);
  sub_258D392A8(v194, &qword_27F984EC0, &qword_258D5AC30);
  v139 = *(v182 + 8);
  v140 = v135;
  v139(v189, v135);
  v141 = *(v180 + 8);
  v142 = v181;
  v141(v178, v181);
  sub_258D392A8(v137, &qword_27F984EA8, &qword_258D5AC18);
  sub_258D392A8(v136, &qword_27F984EB8, &qword_258D5AC28);
  v138(v192, v185);
  sub_258D392A8(v184, &qword_27F984EC0, &qword_258D5AC30);
  v139(v190, v140);
  return (v141)(v179, v142);
}

uint64_t sub_258D4D040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_258D56734();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F08, &qword_258D5AC68);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v36 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F00, &qword_258D5AC60);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - v6;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_258D56BC4();
  v10 = sub_258D56BC4();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_258D56BD4();
  v14 = v13;

  *&v46 = v12;
  *(&v46 + 1) = v14;
  v55 = sub_258D56BE4();
  v56 = v15;
  v57 = *(a1 + 16);
  v58 = *(a1 + 32);
  v46 = *(a1 + 16);
  v47 = *(a1 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v18 = v52;
  v17 = v53;
  v19 = v54;
  swift_getKeyPath();
  *&v46 = v18;
  *(&v46 + 1) = v17;
  v47 = v19;
  sub_258D56B24();

  v20 = v52;
  v21 = v53;
  v22 = v54;

  v49 = v20;
  v50 = v21;
  v51 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F40, &unk_258D5AD48);
  sub_258D45980();
  sub_258D55224();
  sub_258D39364();
  sub_258D56AC4();
  v46 = v57;
  v47 = v58;
  MEMORY[0x259C9B090](&v52, v16);
  v23 = v52;
  swift_getKeyPath();
  *&v46 = v23;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v20) = *(v23 + 32);

  LOBYTE(v52) = v20;
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(a1 + 64);
  v26 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  sub_258D549BC(a1, &v46);
  v27 = sub_258D394F8(&qword_27F984F10, &qword_27F984F08, &qword_258D5AC68, MEMORY[0x277CDF038]);
  v28 = sub_258D45B58();
  v29 = v37;
  v30 = v38;
  sub_258D56984();

  (*(v39 + 8))(v5, v30);
  v31 = v42;
  sub_258D56724();
  *&v46 = v30;
  *(&v46 + 1) = &type metadata for SettingsModel.AudioExpiration;
  v47 = v27;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v32 = v45;
  v33 = v40;
  v34 = v43;
  sub_258D56924();
  (*(v44 + 8))(v31, v34);
  (*(v41 + 8))(v29, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EF0, &qword_258D5AC58);
  *(v32 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_258D4D69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984BA0, &qword_258D59E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F50, &qword_258D5AD58);
  sub_258D394F8(&qword_27F984F58, &qword_27F984BA0, &qword_258D59E60, MEMORY[0x277D83980]);
  sub_258D45980();
  swift_getOpaqueTypeConformance2();
  sub_258D45B00();
  return sub_258D56B54();
}

uint64_t sub_258D4D7CC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_258D451EC(*a1);
  sub_258D39364();
  result = sub_258D568E4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_258D4D850@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

void sub_258D4DBD8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, SEL *a4)
{
  v7 = sub_258D56624();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *a3;
  v16 = *a3;
  v17 = *(a3 + 8);
  if (v17 == 1)
  {
    v15[1] = v12;
  }

  else
  {

    sub_258D56C44();
    v13 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v16, &qword_27F984D90, &qword_258D5A9B0);
    (*(v8 + 8))(v10, v7);
  }

  v14 = [objc_opt_self() sharedInstance];
  [v14 *a4];
}

uint64_t sub_258D4DD98(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v18 = v7;
  v19 = v9;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v15, v10);
  v11 = v15;
  swift_getKeyPath();
  *&v16 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 35);

  *&v16 = sub_258D45380(v12);
  *(&v16 + 1) = v13;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D4DF80(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v19 = v7;
  v20 = v9;
  v17 = *(a1 + 16);
  v18 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v16, v10);
  v11 = v16;
  swift_getKeyPath();
  *&v17 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 37);

  v13 = 6710863;
  if (v12)
  {
    v13 = 28239;
  }

  v14 = 0xE300000000000000;
  if (v12)
  {
    v14 = 0xE200000000000000;
  }

  *&v17 = v13;
  *(&v17 + 1) = v14;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D4E180@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  a1[1] = v8;
  a1[2] = v9 & 1;
  a1[3] = v10;
  return result;
}

uint64_t sub_258D4E2A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_258D56684();
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DC8, &qword_258D5AA08);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD0, &qword_258D5AA10);
  v79 = *(v75 - 8);
  v17 = MEMORY[0x28223BE20](v75);
  v78 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  v86 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
  sub_258D54A0C();
  sub_258D54A88();
  v76 = v20;
  sub_258D56584();
  v86 = *(a1 + 16);
  v87 = *(a1 + 32);
  v82 = *(a1 + 16);
  v83 = *(a1 + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](v85);

  v22 = [objc_opt_self() sharedInstance];
  v23 = [v22 shouldShowContactPhotoSettings];

  if (v23)
  {
    type metadata accessor for MessagesSettingsUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    v26 = sub_258D56BC4();
    v27 = sub_258D56BC4();
    v67 = v14;
    v66 = v16;
    v28 = v27;
    v29 = v3;
    v30 = [v25 localizedStringForKey:v26 value:0 table:v27];

    v31 = sub_258D56BD4();
    v33 = v32;

    v85[3] = v31;
    v85[4] = v33;
    v82 = v86;
    v83 = v87;
    sub_258D56B34();
    v34 = v85[0];
    v35 = v85[1];
    v36 = v85[2];
    swift_getKeyPath();
    v65 = v6;
    v64 = v8;
    *&v82 = v34;
    *(&v82 + 1) = v35;
    v83 = v36;
    sub_258D56B24();

    v63 = v10;

    sub_258D39364();
    v37 = v68;
    sub_258D56AE4();
    v38 = v70;
    sub_258D56674();
    v39 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
    v40 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    v41 = v73;
    v42 = v72;
    sub_258D56934();
    (*(v71 + 8))(v38, v29);
    (*(v69 + 8))(v37, v42);
    v82 = v86;
    v83 = v87;
    MEMORY[0x259C9B090](v85, v21);
    v43 = v85[0];
    swift_getKeyPath();
    *&v82 = v43;
    sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564C4();

    LOBYTE(v37) = *(v43 + 39);

    LOBYTE(v85[0]) = v37;
    v44 = swift_allocObject();
    v45 = *(a1 + 48);
    *(v44 + 48) = *(a1 + 32);
    *(v44 + 64) = v45;
    *(v44 + 80) = *(a1 + 64);
    v46 = *(a1 + 16);
    *(v44 + 16) = *a1;
    *(v44 + 32) = v46;
    sub_258D549BC(a1, &v82);
    *&v82 = v42;
    *(&v82 + 1) = v29;
    v83 = v39;
    v84 = v40;
    v14 = v67;
    swift_getOpaqueTypeConformance2();
    v47 = v63;
    v48 = v65;
    sub_258D56984();

    (*(v74 + 8))(v41, v48);
    v49 = v77;
    v50 = v66;
    v8 = v64;
    (*(v77 + 32))(v66, v47);
    v51 = 0;
    v52 = v49;
  }

  else
  {
    v51 = 1;
    v50 = v16;
    v52 = v77;
  }

  (*(v52 + 56))(v50, v51, 1, v8);
  v53 = v79;
  v54 = *(v79 + 16);
  v55 = v78;
  v56 = v76;
  v57 = v75;
  v54(v78, v76, v75);
  v58 = v14;
  sub_258D39240(v50, v14, &qword_27F984DC8, &qword_258D5AA08);
  v59 = v80;
  v54(v80, v55, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E90, &qword_258D5ABB0);
  sub_258D39240(v58, &v59[*(v60 + 48)], &qword_27F984DC8, &qword_258D5AA08);
  sub_258D392A8(v50, &qword_27F984DC8, &qword_258D5AA08);
  v61 = *(v53 + 8);
  v61(v56, v57);
  sub_258D392A8(v58, &qword_27F984DC8, &qword_258D5AA08);
  return (v61)(v55, v57);
}

uint64_t sub_258D4ECE8(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v17 = v7;
  v18 = v9;
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v14, v10);
  v11 = v14;
  swift_getKeyPath();
  *&v15 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(a1) = *(v11 + 38);

  *&v15 = sub_258D45528(a1);
  *(&v15 + 1) = v12;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D4EECC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_258D56624();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v15 = *a3;
  v16 = *(a3 + 8);
  LOBYTE(a3) = v16;

  if ((a3 & 1) == 0)
  {
    sub_258D56C44();
    v12 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v15, &qword_27F984D90, &qword_258D5A9B0);
    (*(v8 + 8))(v10, v7);
  }

  a4(v11);
}

uint64_t sub_258D4F050@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E18, &qword_258D5AB08);
  v78 = *(v76 - 8);
  v3 = MEMORY[0x28223BE20](v76);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v74 = &v59 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E20, &qword_258D5AB10);
  v77 = *(v75 - 8);
  v6 = MEMORY[0x28223BE20](v75);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v59 - v8;
  v64 = sub_258D56684();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E28, &qword_258D5AB18);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v59 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E30, &qword_258D5AB20);
  v72 = *(v70 - 8);
  v14 = MEMORY[0x28223BE20](v70);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v59 - v16;
  v87 = *(a1 + 16);
  v88 = *(a1 + 32);
  v81 = *(a1 + 16);
  v82 = *(a1 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v19 = v84;
  v18 = v85;
  v20 = v86;
  swift_getKeyPath();
  *&v81 = v19;
  *(&v81 + 1) = v18;
  v82 = v20;
  sub_258D56B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
  sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8, MEMORY[0x277CE1198]);
  sub_258D56AD4();
  v81 = v87;
  v82 = v88;
  MEMORY[0x259C9B090](&v84, v17);
  v21 = v84;
  swift_getKeyPath();
  *&v81 = v21;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  v22 = *(v21 + 40);

  LOBYTE(v84) = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  sub_258D549BC(a1, &v81);
  v26 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940, MEMORY[0x277CDF068]);
  v27 = MEMORY[0x277D839B0];
  v28 = MEMORY[0x277D839C8];
  v29 = v59;
  sub_258D56984();

  (*(v60 + 8))(v12, v10);
  v30 = v61;
  sub_258D56674();
  *&v81 = v10;
  *(&v81 + 1) = v27;
  v82 = v26;
  v83 = v28;
  swift_getOpaqueTypeConformance2();
  sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v31 = v68;
  v32 = v62;
  v33 = v64;
  sub_258D56934();
  (*(v65 + 8))(v30, v33);
  (*(v63 + 8))(v29, v32);
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass_];
  v36 = sub_258D56BC4();
  v37 = sub_258D56BC4();
  v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

  v39 = sub_258D56BD4();
  v41 = v40;

  v84 = v39;
  v85 = v41;
  v80 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  sub_258D54A88();
  sub_258D39364();
  v42 = v71;
  sub_258D56594();
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E38, &qword_258D5AB50);
  sub_258D54BD0();
  v43 = v74;
  sub_258D56884();
  v44 = *(v72 + 16);
  v45 = v69;
  v46 = v70;
  v44(v69, v31, v70);
  v65 = *(v77 + 16);
  v47 = v73;
  (v65)(v73, v42, v75);
  v48 = *(v78 + 16);
  v49 = v66;
  v48(v66, v43, v76);
  v50 = v67;
  v44(v67, v45, v46);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E60, &qword_258D5AB68);
  v52 = v75;
  (v65)(&v50[*(v51 + 48)], v47, v75);
  v53 = v76;
  v48(&v50[*(v51 + 64)], v49, v76);
  v54 = *(v78 + 8);
  v54(v74, v53);
  v55 = *(v77 + 8);
  v55(v71, v52);
  v56 = *(v72 + 8);
  v57 = v70;
  v56(v68, v70);
  v54(v49, v53);
  v55(v73, v52);
  return (v56)(v69, v57);
}

uint64_t sub_258D4FB7C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

uint64_t sub_258D4FEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v40 = sub_258D56734();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E50, &qword_258D5AB60);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E48, &qword_258D5AB58);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v35 - v6;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_258D56BC4();
  v11 = sub_258D56BC4();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_258D56BD4();
  v15 = v14;

  v52 = v13;
  v53 = v15;
  v54 = *(a1 + 16);
  v55 = *(a1 + 32);
  v43 = *(a1 + 16);
  v44 = *(a1 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v18 = v49;
  v17 = v50;
  v19 = v51;
  swift_getKeyPath();
  *&v43 = v18;
  *(&v43 + 1) = v17;
  v44 = v19;
  sub_258D56B24();

  v20 = v49;
  v21 = v50;
  v22 = v51;

  v46 = v20;
  v47 = v21;
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E68, &unk_258D5AB98);
  sub_258D41408();
  sub_258D54D44();
  sub_258D39364();
  sub_258D56AC4();
  v43 = v54;
  v44 = v55;
  MEMORY[0x259C9B090](&v49, v16);
  v23 = v49;
  swift_getKeyPath();
  *&v43 = v23;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v20) = *(v23 + 42);

  LOBYTE(v49) = v20;
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(a1 + 64);
  v26 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  sub_258D549BC(a1, &v43);
  v27 = sub_258D394F8(&qword_27F984E58, &qword_27F984E50, &qword_258D5AB60, MEMORY[0x277CDF038]);
  v28 = sub_258D4126C();
  v29 = v35;
  sub_258D56984();

  (*(v36 + 8))(v5, v29);
  v30 = v39;
  sub_258D56724();
  *&v43 = v29;
  *(&v43 + 1) = &type metadata for KeepMessagesPreference;
  v44 = v27;
  v45 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v42;
  v32 = v37;
  v33 = v40;
  sub_258D56924();
  (*(v41 + 8))(v30, v33);
  (*(v38 + 8))(v7, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E38, &qword_258D5AB50);
  *(v31 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_258D50524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984AF0, &qword_258D597B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E78, &qword_258D5ABA8);
  sub_258D394F8(&qword_27F984E80, &qword_27F984AF0, &qword_258D597B0, MEMORY[0x277D83980]);
  sub_258D41408();
  swift_getOpaqueTypeConformance2();
  sub_258D54E5C();
  return sub_258D56B54();
}

uint64_t sub_258D50654@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_258D410F8();
  sub_258D39364();
  result = sub_258D568E4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

void sub_258D506CC(uint64_t a1, char *a2)
{
  v2 = *(sub_258D47548() + 56);
  sub_258D54E10();
  v3 = sub_258D56C54();
  [*(v2 + 16) updateKeepMessagesPreference_];
}

uint64_t sub_258D5075C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a2;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DB0, &qword_258D5A9F0);
  MEMORY[0x28223BE20](v194);
  v193 = &v187 - v3;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DB8, &qword_258D5A9F8);
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v192 = &v187 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DC0, &qword_258D5AA00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v223 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v228 = &v187 - v8;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v198 = &v187 - v9;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D60, &qword_258D5A938);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v201 = &v187 - v10;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D58, &qword_258D5A930);
  v206 = *(v207 - 8);
  v11 = MEMORY[0x28223BE20](v207);
  v222 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v233 = &v187 - v13;
  v230 = sub_258D56684();
  v238 = *(v230 - 1);
  MEMORY[0x28223BE20](v230);
  v224 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v229 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v215 = &v187 - v15;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v226 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v225 = &v187 - v16;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v236 = *(v237 - 8);
  v17 = MEMORY[0x28223BE20](v237);
  v232 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v187 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DC8, &qword_258D5AA08);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v231 = &v187 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v221 = &v187 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v234 = &v187 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v187 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD0, &qword_258D5AA10);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v187 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD8, &qword_258D5AA18);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v220 = &v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v187 - v37;
  v247 = *(a1 + 16);
  v248 = *(a1 + 32);
  v240 = *(a1 + 16);
  v241 = *(a1 + 32);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v243);

  v243 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  v212 = a1;
  v239 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
  sub_258D54A0C();
  sub_258D54A88();
  sub_258D56584();
  (*(v31 + 32))(v38, v33, v30);
  v40 = *(v31 + 56);
  v219 = v38;
  v41 = v38;
  v42 = v39;
  v40(v41, 0, 1, v30);
  v240 = v247;
  v241 = v248;
  MEMORY[0x259C9B090](&v243, v39);

  v218 = objc_opt_self();
  v43 = [v218 sharedInstance];
  v44 = [v43 shouldShowMMS];

  v45 = &selRef_areBusinessUpdatesEnabled;
  v46 = &selRef_areBusinessUpdatesEnabled;
  v235 = v20;
  v227 = v29;
  if (v44)
  {
    v47 = v20;
    type metadata accessor for MessagesSettingsUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    v50 = sub_258D56BC4();
    v217 = 0x8000000258D5C330;
    v51 = sub_258D56BC4();
    v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

    v53 = sub_258D56BD4();
    v55 = v54;

    v245 = v53;
    v246 = v55;
    v240 = v247;
    v241 = v248;
    sub_258D56B34();
    v57 = *(&v243 + 1);
    v56 = v243;
    v58 = v225;
    v59 = v244;
    swift_getKeyPath();
    v240 = __PAIR128__(v57, v56);
    v241 = v59;
    sub_258D56B24();

    sub_258D39364();
    v60 = v215;
    sub_258D56AE4();
    v61 = v224;
    sub_258D56674();
    v62 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
    v63 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    v64 = v216;
    v65 = v230;
    sub_258D56934();
    (*(v238 + 8))(v61, v65);
    (*(v229 + 8))(v60, v64);
    v240 = v247;
    v241 = v248;
    MEMORY[0x259C9B090](&v243, v39);
    v66 = v243;
    swift_getKeyPath();
    *&v240 = v66;
    sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
    sub_258D564C4();
    v67 = v217;

    LOBYTE(v53) = *(v66 + 44);

    LOBYTE(v243) = v53;
    v68 = swift_allocObject();
    v69 = v212;
    v70 = *(v212 + 48);
    *(v68 + 48) = *(v212 + 32);
    *(v68 + 64) = v70;
    *(v68 + 80) = *(v69 + 64);
    v71 = *(v69 + 16);
    *(v68 + 16) = *v69;
    *(v68 + 32) = v71;
    sub_258D549BC(v69, &v240);
    *&v240 = v64;
    *(&v240 + 1) = v65;
    v42 = v39;
    v241 = v62;
    v242 = v63;
    v45 = &selRef_areBusinessUpdatesEnabled;
    swift_getOpaqueTypeConformance2();
    v72 = v214;
    sub_258D56984();

    (*(v226 + 8))(v58, v72);
    v73 = v236;
    v74 = v227;
    v75 = v237;
    (*(v236 + 32))(v227, v47, v237);
    v76 = v74;
    v46 = &selRef_areBusinessUpdatesEnabled;
    (*(v73 + 56))(v76, 0, 1, v75);
  }

  else
  {
    (*(v236 + 56))(v29, 1, 1, v237);
    v67 = 0x8000000258D5C330;
  }

  type metadata accessor for MessagesSettingsUtilities();
  v77 = swift_getObjCClassFromMetadata();
  v78 = objc_opt_self();
  v79 = v45[122];
  v196 = v78;
  v197 = v77;
  v80 = [v78 v79];
  v81 = sub_258D56BC4();
  v217 = v67;
  v82 = sub_258D56BC4();
  v83 = [v80 v46[261]];

  v84 = sub_258D56BD4();
  v86 = v85;

  v245 = v84;
  v246 = v86;
  v240 = v247;
  v241 = v248;
  sub_258D56B34();
  v88 = *(&v243 + 1);
  v87 = v243;
  v89 = v42;
  v90 = v244;
  swift_getKeyPath();
  v240 = __PAIR128__(v88, v87);
  v241 = v90;
  sub_258D56B24();

  v91 = sub_258D39364();
  v92 = v215;
  v195 = v91;
  sub_258D56AE4();
  v93 = v224;
  sub_258D56674();
  v94 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0, MEMORY[0x277CDF068]);
  v95 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v96 = v216;
  v97 = v230;
  sub_258D56934();
  v98 = *(v238 + 8);
  v238 += 8;
  v210 = v98;
  v98(v93, v97);
  v99 = *(v229 + 8);
  v229 += 8;
  v190 = v99;
  v99(v92, v96);
  v240 = v247;
  v241 = v248;
  v100 = v89;
  MEMORY[0x259C9B090](&v243, v89);
  v101 = v243;
  swift_getKeyPath();
  *&v240 = v101;
  v209 = sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v84) = *(v101 + 45);

  LOBYTE(v243) = v84;
  v102 = swift_allocObject();
  v103 = v212;
  v104 = *(v212 + 48);
  *(v102 + 48) = *(v212 + 32);
  *(v102 + 64) = v104;
  *(v102 + 80) = *(v103 + 64);
  v105 = *(v103 + 16);
  *(v102 + 16) = *v103;
  *(v102 + 32) = v105;
  sub_258D549BC(v103, &v240);
  *&v240 = v96;
  *(&v240 + 1) = v97;
  v191 = v94;
  v241 = v94;
  v242 = v95;
  v211 = v95;
  v106 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = v214;
  v189 = OpaqueTypeConformance2;
  v109 = v225;
  sub_258D56984();

  v110 = v226 + 8;
  v111 = *(v226 + 8);
  v111(v109, v108);
  v240 = v247;
  v241 = v248;
  v112 = v100;
  MEMORY[0x259C9B090](&v243, v100);

  v113 = [v218 sharedInstance];
  LODWORD(v93) = [v113 shouldShowCharacterCount];

  v114 = v237;
  v115 = v224;
  if (v93)
  {
    v116 = [v196 bundleForClass_];
    v117 = sub_258D56BC4();
    v118 = sub_258D56BC4();
    v119 = [v116 localizedStringForKey:v117 value:0 table:v118];
    v188 = v111;
    v120 = v119;

    v121 = sub_258D56BD4();
    v123 = v122;

    v245 = v121;
    v246 = v123;
    v240 = v247;
    v241 = v248;
    sub_258D56B34();
    v124 = v243;
    v125 = v244;
    swift_getKeyPath();
    v240 = v124;
    v241 = v125;
    sub_258D56B24();

    v226 = v110;

    v126 = v215;
    v114 = v237;
    sub_258D56AE4();
    sub_258D56674();
    v127 = v225;
    v128 = v216;
    v129 = v230;
    sub_258D56934();
    v210(v115, v129);
    v190(v126, v128);
    v240 = v247;
    v241 = v248;
    MEMORY[0x259C9B090](&v243, v112);
    v130 = v243;
    swift_getKeyPath();
    *&v240 = v130;
    sub_258D564C4();

    LOBYTE(v121) = *(v130 + 46);

    LOBYTE(v243) = v121;
    v131 = swift_allocObject();
    v132 = *(v103 + 48);
    *(v131 + 48) = *(v103 + 32);
    *(v131 + 64) = v132;
    *(v131 + 80) = *(v103 + 64);
    v133 = *(v103 + 16);
    *(v131 + 16) = *v103;
    *(v131 + 32) = v133;
    sub_258D549BC(v103, &v240);
    v134 = v235;
    v135 = v214;
    sub_258D56984();

    v188(v127, v135);
    (*(v236 + 32))(v234, v134, v114);
    v106 = 0;
  }

  (*(v236 + 56))(v234, v106, 1, v114);
  v240 = v247;
  v241 = v248;
  sub_258D56B34();
  v136 = v243;
  v137 = v244;
  swift_getKeyPath();
  v213 = v112;
  v240 = v136;
  v241 = v137;
  sub_258D56B24();

  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
  v139 = sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8, MEMORY[0x277CE1198]);
  v140 = v198;
  v229 = v138;
  v226 = v139;
  sub_258D56AD4();
  sub_258D56674();
  v141 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940, MEMORY[0x277CDF068]);
  v142 = v201;
  v143 = v200;
  v144 = v115;
  v145 = v230;
  v146 = v211;
  sub_258D56934();
  v210(v144, v145);
  (*(v199 + 8))(v140, v143);
  v240 = v247;
  v241 = v248;
  MEMORY[0x259C9B090](&v243, v213);
  v147 = v243;
  swift_getKeyPath();
  *&v240 = v147;
  sub_258D564C4();

  v148 = *(v147 + 47);

  LOBYTE(v243) = v148;
  v149 = swift_allocObject();
  v150 = *(v103 + 48);
  *(v149 + 48) = *(v103 + 32);
  *(v149 + 64) = v150;
  *(v149 + 80) = *(v103 + 64);
  v151 = *(v103 + 16);
  *(v149 + 16) = *v103;
  *(v149 + 32) = v151;
  sub_258D549BC(v103, &v240);
  *&v240 = v143;
  *(&v240 + 1) = v145;
  v241 = v141;
  v242 = v146;
  swift_getOpaqueTypeConformance2();
  v152 = v203;
  sub_258D56984();

  (*(v202 + 8))(v142, v152);
  v240 = v247;
  v241 = v248;
  MEMORY[0x259C9B090](&v243, v213);

  v153 = [v218 sharedInstance];
  v154 = [v153 shouldShowSMSRelaySettings];

  v155 = 1;
  v156 = v205;
  v157 = v204;
  if (v154)
  {
    v158 = sub_258D565B4();
    v159 = sub_258D567E4();
    *&v243 = v158;
    BYTE8(v243) = v159;
    v160 = [v196 bundleForClass_];
    v161 = sub_258D56BC4();
    v162 = sub_258D56BC4();
    v163 = [v160 localizedStringForKey:v161 value:0 table:v162];

    v164 = sub_258D56BD4();
    v166 = v165;

    *&v240 = v164;
    *(&v240 + 1) = v166;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E08, &qword_258D5AA88);
    v168 = sub_258D550A4(&qword_27F984E10, &qword_27F984E08, &qword_258D5AA88, sub_258D41690);
    v169 = MEMORY[0x277D837D0];
    v170 = v195;
    sub_258D56964();

    *&v240 = v167;
    *(&v240 + 1) = v169;
    v241 = v168;
    v242 = v170;
    swift_getOpaqueTypeConformance2();
    v171 = v192;
    sub_258D56584();
    (*(v157 + 32))(v228, v171, v156);
    v155 = 0;
  }

  v172 = v228;
  (*(v157 + 56))(v228, v155, 1, v156);
  v173 = v220;
  sub_258D39240(v219, v220, &qword_27F984DD8, &qword_258D5AA18);
  v174 = v221;
  sub_258D39240(v227, v221, &qword_27F984DC8, &qword_258D5AA08);
  v175 = v236;
  v230 = *(v236 + 16);
  v176 = v237;
  (v230)(v235, v232, v237);
  sub_258D39240(v234, v231, &qword_27F984DC8, &qword_258D5AA08);
  v177 = v206;
  v238 = *(v206 + 16);
  v178 = v207;
  (v238)(v222, v233, v207);
  sub_258D39240(v172, v223, &qword_27F984DC0, &qword_258D5AA00);
  v179 = v173;
  v180 = v208;
  sub_258D39240(v179, v208, &qword_27F984DD8, &qword_258D5AA18);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E00, &qword_258D5AA80);
  sub_258D39240(v174, v180 + v181[12], &qword_27F984DC8, &qword_258D5AA08);
  (v230)(v180 + v181[16], v235, v176);
  sub_258D39240(v231, v180 + v181[20], &qword_27F984DC8, &qword_258D5AA08);
  v182 = v222;
  (v238)(v180 + v181[24], v222, v178);
  v183 = v223;
  sub_258D39240(v223, v180 + v181[28], &qword_27F984DC0, &qword_258D5AA00);
  sub_258D392A8(v228, &qword_27F984DC0, &qword_258D5AA00);
  v184 = *(v177 + 8);
  v184(v233, v178);
  sub_258D392A8(v234, &qword_27F984DC8, &qword_258D5AA08);
  v185 = *(v175 + 8);
  v185(v232, v176);
  sub_258D392A8(v227, &qword_27F984DC8, &qword_258D5AA08);
  sub_258D392A8(v219, &qword_27F984DD8, &qword_258D5AA18);
  sub_258D392A8(v183, &qword_27F984DC0, &qword_258D5AA00);
  v184(v182, v178);
  sub_258D392A8(v231, &qword_27F984DC8, &qword_258D5AA08);
  v185(v235, v176);
  sub_258D392A8(v221, &qword_27F984DC8, &qword_258D5AA08);
  return sub_258D392A8(v220, &qword_27F984DD8, &qword_258D5AA18);
}

uint64_t sub_258D52690(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v17 = v7;
  v18 = v9;
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v14, v10);
  v11 = v14;
  swift_getKeyPath();
  *&v15 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  LOBYTE(a1) = *(v11 + 43);

  *&v15 = sub_258D45640(a1);
  *(&v15 + 1) = v12;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D52878(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_258D56624();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *a3;
  v14 = *a3;
  v15 = *(a3 + 8);
  LOBYTE(a3) = v15;

  if ((a3 & 1) == 0)
  {
    sub_258D56C44();
    v11 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v14, &qword_27F984D90, &qword_258D5A9B0);
    (*(v6 + 8))(v8, v5);
    v10 = v13[1];
  }

  [*(*(v10 + 72) + 16) setMMSEnabled_];
}

uint64_t sub_258D52A1C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

uint64_t sub_258D52DB4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

uint64_t sub_258D53134@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D53260()
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258D56BC4();
  v3 = sub_258D56BC4();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_258D56BD4();
  sub_258D39364();
  return sub_258D56A84();
}

void sub_258D53398()
{
  v0 = [objc_allocWithZone(CKSharedSettingsHelper) init];
  [v0 satelliteDemoModeTapped];
}

uint64_t sub_258D533F0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D53518@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D53640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_258D56684();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D60, &qword_258D5A938);
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  MEMORY[0x28223BE20](v9);
  v28 = &v28 - v11;
  v40 = *(a1 + 16);
  v41 = *(a1 + 32);
  v36 = *(a1 + 16);
  v37 = *(a1 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v13 = v39[0];
  v14 = v39[1];
  v15 = v39[2];
  swift_getKeyPath();
  *&v36 = v13;
  *(&v36 + 1) = v14;
  v37 = v15;
  sub_258D56B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
  sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8, MEMORY[0x277CE1198]);
  sub_258D56AD4();
  sub_258D56674();
  v16 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940, MEMORY[0x277CDF068]);
  v17 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v18 = v28;
  v19 = v29;
  v20 = v31;
  sub_258D56934();
  (*(v32 + 8))(v6, v20);
  (*(v30 + 8))(v8, v19);
  v36 = v40;
  v37 = v41;
  MEMORY[0x259C9B090](v39, v12);
  v21 = v39[0];
  swift_getKeyPath();
  *&v36 = v21;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel, &protocol conformance descriptor for SettingsModel);
  sub_258D564C4();

  v22 = *(v21 + 50);

  LOBYTE(v39[0]) = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  sub_258D549BC(a1, &v36);
  *&v36 = v19;
  *(&v36 + 1) = v20;
  v37 = v16;
  v38 = v17;
  swift_getOpaqueTypeConformance2();
  v26 = v33;
  sub_258D56984();

  return (*(v34 + 8))(v18, v26);
}

__n128 sub_258D53B88@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258D566C4();
  a1(v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_258D53C1C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v2 = [v38 bundleForClass_];
  v3 = sub_258D56BC4();
  v4 = sub_258D56BC4();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_258D56BD4();
  sub_258D39364();
  v6 = sub_258D568E4();
  v8 = v7;
  LOBYTE(v4) = v9;
  sub_258D56814();
  v10 = sub_258D568C4();
  v12 = v11;
  v14 = v13;

  sub_258D39540(v6, v8, v4 & 1);

  sub_258D569A4();
  v15 = sub_258D56894();
  v41 = v16;
  v42 = v15;
  v40 = v17;
  v43 = v18;

  sub_258D39540(v10, v12, v14 & 1);

  v19 = [v38 bundleForClass_];
  v20 = sub_258D56BC4();
  v21 = sub_258D56BC4();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_258D56BD4();
  v23 = sub_258D568E4();
  v25 = v24;
  LOBYTE(v21) = v26;
  sub_258D56834();
  v27 = sub_258D568C4();
  v29 = v28;
  LOBYTE(v8) = v30;

  sub_258D39540(v23, v25, v21 & 1);

  sub_258D569B4();
  v31 = sub_258D56894();
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;

  sub_258D39540(v27, v29, v8 & 1);

  *a1 = v42;
  *(a1 + 8) = v41;
  *(a1 + 16) = v40 & 1;
  *(a1 + 24) = v43;
  *(a1 + 32) = v31;
  *(a1 + 40) = v33;
  *(a1 + 48) = v22 & 1;
  *(a1 + 56) = v36;
  sub_258D3802C(v42, v41, v40 & 1);

  sub_258D3802C(v31, v33, v22 & 1);

  sub_258D39540(v31, v33, v22 & 1);

  sub_258D39540(v42, v41, v40 & 1);
}

uint64_t sub_258D53FE8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_258D56624();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *a3;
  v14 = *a3;
  v15 = *(a3 + 8);
  LOBYTE(a3) = v15;

  if ((a3 & 1) == 0)
  {
    sub_258D56C44();
    v11 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v14, &qword_27F984D90, &qword_258D5A9B0);
    (*(v6 + 8))(v8, v5);
    v10 = v13[1];
  }

  [*(*(v10 + 112) + 16) setRCSBusinessMessagesEnabled_];
}

uint64_t sub_258D54174@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D542A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D98, &qword_258D5A9B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_258D56BC4();
  v6 = sub_258D56BC4();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_258D56BD4();
  v10 = v9;

  v14 = v8;
  v15 = v10;
  v14 = sub_258D56BE4();
  v15 = v11;
  sub_258D56464();
  v12 = sub_258D56474();
  result = (*(*(v12 - 8) + 48))(v2, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_258D39364();
    return sub_258D56874();
  }

  return result;
}

uint64_t sub_258D544A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C50, &qword_258D5A868);
  sub_258D394F8(&qword_27F984C58, &qword_27F984C50, &qword_258D5A868, MEMORY[0x277CE14C0]);
  return sub_258D56864();
}

uint64_t sub_258D54560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258D565F4();
  *a1 = result;
  return result;
}

void *sub_258D545B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_258D56A44();
  result = sub_258D56A44();
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v11;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_258D546B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258D546FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258D54788()
{
  result = qword_27F984CD8;
  if (!qword_27F984CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984CD0, &qword_258D5A8E0);
    sub_258D5480C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984CD8);
  }

  return result;
}

unint64_t sub_258D5480C()
{
  result = qword_27F984CE0;
  if (!qword_27F984CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984CE0);
  }

  return result;
}

unint64_t sub_258D54868()
{
  result = qword_27F984CF8;
  if (!qword_27F984CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984CB8, &qword_258D5A8C8);
    sub_258D394F8(&qword_27F984D00, &qword_27F984D08, &qword_258D5A8F0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984CF8);
  }

  return result;
}

uint64_t sub_258D54948@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258D565F4();
  *a1 = result;
  return result;
}

unint64_t sub_258D54A0C()
{
  result = qword_27F984DF0;
  if (!qword_27F984DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984DE8, &qword_258D5AA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984DF0);
  }

  return result;
}

unint64_t sub_258D54A88()
{
  result = qword_27F984DF8;
  if (!qword_27F984DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984DF8);
  }

  return result;
}

unint64_t sub_258D54BD0()
{
  result = qword_27F984E40;
  if (!qword_27F984E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E38, &qword_258D5AB50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E48, &qword_258D5AB58);
    sub_258D56734();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E50, &qword_258D5AB60);
    sub_258D394F8(&qword_27F984E58, &qword_27F984E50, &qword_258D5AB60, MEMORY[0x277CDF038]);
    sub_258D4126C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984E40);
  }

  return result;
}

unint64_t sub_258D54D44()
{
  result = qword_27F984E70;
  if (!qword_27F984E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E68, &unk_258D5AB98);
    sub_258D41408();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984E70);
  }

  return result;
}

unint64_t sub_258D54E10()
{
  result = qword_27F984C48;
  if (!qword_27F984C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F984C48);
  }

  return result;
}

unint64_t sub_258D54E5C()
{
  result = qword_27F984E88;
  if (!qword_27F984E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984E88);
  }

  return result;
}

unint64_t sub_258D54F00()
{
  result = qword_27F984EF8;
  if (!qword_27F984EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984EF0, &qword_258D5AC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F00, &qword_258D5AC60);
    sub_258D56734();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F08, &qword_258D5AC68);
    sub_258D394F8(&qword_27F984F10, &qword_27F984F08, &qword_258D5AC68, MEMORY[0x277CDF038]);
    sub_258D45B58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984EF8);
  }

  return result;
}

uint64_t sub_258D550A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258D55128()
{
  result = qword_27F984F30;
  if (!qword_27F984F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F30);
  }

  return result;
}

unint64_t sub_258D5518C()
{
  result = qword_27F984F38;
  if (!qword_27F984F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F38);
  }

  return result;
}

unint64_t sub_258D55224()
{
  result = qword_27F984F48;
  if (!qword_27F984F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F40, &unk_258D5AD48);
    sub_258D45980();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F48);
  }

  return result;
}

uint64_t sub_258D552E8(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_258D47548();
  sub_258D40D90(v2);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_258D553C4()
{
  result = qword_27F984F70;
  if (!qword_27F984F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F68, &qword_258D5AD90);
    sub_258D554A8(&qword_27F984F78, &qword_27F984F80, &qword_258D5AD98, MEMORY[0x277CE0FB0]);
    sub_258D394F8(&qword_27F984F88, &qword_27F984F90, &qword_258D5ADA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F70);
  }

  return result;
}

uint64_t sub_258D554A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_258D55508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D08, &qword_258D5A8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258D55578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258D565D4();
  *a1 = result;
  return result;
}

uint64_t sub_258D555E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258D556A0(uint64_t a1, int a2)
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

uint64_t sub_258D556E8(uint64_t result, int a2, int a3)
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

id sub_258D5573C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 sharedWithYouViewController];

  return v1;
}

uint64_t sub_258D557AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D5589C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D55810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D5589C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D55874(uint64_t a1)
{
  sub_258D5589C();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D5589C()
{
  result = qword_27F984FC8;
  if (!qword_27F984FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984FC8);
  }

  return result;
}

uint64_t sub_258D558F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v10, v4);
  v5 = v10;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 _sharedWithYouEnabled];

  if (v7 == *(v5 + 37))
  {
    *(v5 + 37) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11 = v5;
    sub_258D55A68();
    sub_258D564B4();
  }
}

unint64_t sub_258D55A68()
{
  result = qword_27F9848D8;
  if (!qword_27F9848D8)
  {
    type metadata accessor for SettingsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9848D8);
  }

  return result;
}

id sub_258D55AE4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F984FD0 = result;
  return result;
}

uint64_t sub_258D55B3C()
{
  v0 = sub_258D56504();
  __swift_allocate_value_buffer(v0, qword_27F987000);
  __swift_project_value_buffer(v0, qword_27F987000);
  if (qword_27F9846A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F984FD0;
  return sub_258D564F4();
}

uint64_t sub_258D55BE4()
{
  v0 = sub_258D56504();
  __swift_allocate_value_buffer(v0, qword_27F987018);
  __swift_project_value_buffer(v0, qword_27F987018);
  if (qword_27F9846A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F984FD0;
  return sub_258D564F4();
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

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27F986FE0 == -1)
  {
    if (qword_27F986FE8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27F986FE8)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F986FD8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27F986FCC > a3)
      {
        return 1;
      }

      if (dword_27F986FCC >= a3)
      {
        return dword_27F986FD0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27F986FE8;
  if (qword_27F986FE8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F986FE8 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C9B610](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F986FCC, &dword_27F986FD0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SpringBoardUIServices))
  {
    return dlopenHelper_SpringBoardUIServices(result);
  }

  return result;
}

double dlopenHelper_SpringBoardUIServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SpringBoardUIServices.framework/SpringBoardUIServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SpringBoardUIServices);
  return a1;
}