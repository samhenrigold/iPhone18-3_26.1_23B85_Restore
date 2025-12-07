uint64_t sub_21BAF6E40()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21BAF6E78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21BAF6EB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21BAF6EF4()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21BAF6F30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2478, &qword_21BB25208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2480, &qword_21BB25210);
  sub_21BB0AE64();
  sub_21BB0AF30();
  return swift_getOpaqueTypeConformance2();
}

void sub_21BAF6FC8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21BB0B300(v1);
}

uint64_t sub_21BAF7028()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21BAF7064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 slotID];
  *a2 = result;
  return result;
}

uint64_t sub_21BAF7098()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26C8, &qword_21BB25458);
  type metadata accessor for MessagingSettingsProvider(255);
  sub_21BB13B1C();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider, MEMORY[0x277D85380]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BAF71A0()
{
  MEMORY[0x21CF007F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21BAF7208()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2750, &qword_21BB25678);
  type metadata accessor for MessagingSettingsProvider(255);
  sub_21BB175A8();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider, MEMORY[0x277D85380]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BAF72F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2880, qword_21BB258E0);
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

uint64_t sub_21BAF73C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2880, qword_21BB258E0);
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

uint64_t sub_21BAF7520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B50, &qword_21BB25D70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B58, qword_21BB25D78);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21BAF7644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B50, &qword_21BB25D70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2B58, qword_21BB25D78);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21BAF7770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BB22C9C();
  *a1 = result & 1;
  return result;
}

id sub_21BAF77EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 au_BOOLValue];
  *a2 = result;
  return result;
}

void sub_21BAF812C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21BAF8C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(a15 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void sub_21BAF8C6C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x21BAF8C44);
}

void sub_21BAF9DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BAFB090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21BAFBB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BAFDD90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_21BAFE0B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void AUGetAuthorizationStatesForService(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = tcc_server_singleton_default();
  v9 = tcc_service_singleton_for_CF_name();
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = _AULoggingFacility(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = a1;
    _os_log_impl(&dword_21BAF4000, v13, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", buf, 0xCu);
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  tcc_server_message_get_authorization_records_by_service();
  if (a2)
  {
    v17 = v14;
    *a2 = v14;
  }

  if (a3)
  {
    v18 = v15;
    *a3 = v15;
  }

  if (a4)
  {
    v19 = v16;
    *a4 = v16;
  }
}

void AUSetTCCLevelForService(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _AULoggingFacility(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v11 = 138412802;
    v12 = a1;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_21BAF4000, v6, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%@", &v11, 0x20u);
  }

  v8 = tcc_server_singleton_default();
  [v5 cStringUsingEncoding:4];
  v9 = tcc_identity_create();
  v10 = tcc_service_singleton_for_CF_name();
  tcc_server_message_set_authorization_value();
}

void sub_21BAFF180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BB004D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB0099C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __AUGetAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_14;
        case 2:
          v9 = 32;
          goto LABEL_14;
        case 3:
          v9 = 40;
LABEL_14:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_16;
  }

  v10 = _AULoggingFacility(0);
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __AUGetAuthorizationStatesForService_block_invoke_cold_1(a1, a3, v6);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_21BAF4000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v12, 0xCu);
  }

LABEL_16:
}

void sub_21BB024CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21BB02CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PSCalendarAuthorizationStates(void *a1, void *a2, void *a3)
{
  v6 = tcc_server_create();
  v7 = tcc_service_singleton_for_CF_name();
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = _AULoggingFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BAF4000, v11, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service kTCCServiceCalendar", buf, 2u);
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  tcc_server_message_get_authorization_records_by_service();
  if (a1)
  {
    *a1 = [v12 copy];
  }

  if (a2)
  {
    *a2 = [v13 copy];
  }

  if (a3)
  {
    *a3 = [v14 copy];
  }
}

void __PSCalendarAuthorizationStates_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_15;
        case 2:
          v9 = 32;
          goto LABEL_15;
        case 4:
          v9 = 40;
LABEL_15:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_17;
  }

  v10 = _AULoggingFacility(0);
  v11 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PSCalendarAuthorizationStates_block_invoke_cold_1(a3, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21BAF4000, v11, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for kTCCServiceCalendar", v12, 2u);
  }

LABEL_17:
}

id _AULoggingFacility(uint64_t a1)
{
  if (_AULoggingFacility_onceToken != -1)
  {
    _AULoggingFacility_cold_1();
  }

  v2 = _AULoggingFacility_oslog;

  return v2;
}

uint64_t sub_21BB05AAC()
{
  v1 = v0;
  v2 = [v0 applicationBundleIdentifier];
  v3 = sub_21BB22FCC();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v7 = sub_21BB08774(v3, v5, 0);
  result = MEMORY[0x277D84F90];
  if (!v7)
  {
    return result;
  }

  v9 = MEMORY[0x277D84F90];
  sub_21BB22ABC();
  v10 = [v1 applicationBundleIdentifier];
  sub_21BB22FCC();

  v11 = sub_21BB22AAC();

  v27 = v9;
  v12 = *(v11 + 16);
  if (v12)
  {
    v23 = v7;
    sub_21BB230CC();
    v7 = 0;
    v13 = v11 + 32;
    v24 = MEMORY[0x277D84F90];
    while (v7 < *(v11 + 16))
    {
      sub_21BB094F8(v13, v26);
      sub_21BB230BC();
      sub_21BB230AC();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v15 = MEMORY[0x28223BE20](isCurrentExecutor);
      MEMORY[0x28223BE20](v15);
      sub_21BB2294C();
      __swift_project_boxed_opaque_existential_0Tm(v26, v26[3]);
      if (sub_21BB22A4C())
      {
        sub_21BB094F8(v26, v25);
        v16 = objc_allocWithZone(type metadata accessor for DefaultAppsSpecifier());
        v17 = v1;
        if (!sub_21BB09A50(v25, v1))
        {
          goto LABEL_28;
        }

        v18 = __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x21CEFFA70](v18);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21BB2307C();
        }

        sub_21BB2308C();
        v24 = v27;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      ++v7;
      v13 += 40;
      if (v12 == v7)
      {

        v7 = v23;
        v19 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_16:
  v26[0] = v19;
  v1 = (v19 >> 62);
  if (v19 >> 62)
  {
LABEL_25:
    if (!sub_21BB2325C())
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:

    return v26[0];
  }

LABEL_18:
  v20 = objc_opt_self();
  v21 = sub_21BB22FAC();
  v22 = [v20 groupSpecifierWithID_];

  if (!v22)
  {
    goto LABEL_22;
  }

  if (!v1 || (sub_21BB2325C() & 0x8000000000000000) == 0)
  {
    sub_21BB09360(0, 0, v22);

    v7 = v22;
    goto LABEL_22;
  }

  __break(1u);
LABEL_28:
  result = sub_21BB2324C();
  __break(1u);
  return result;
}

uint64_t sub_21BB05F20(void *a1)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21BB22A4C();
}

void sub_21BB05FE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2430, &qword_21BB25070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_21BB230EC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_21BB230CC();
    v7 = v5;
    v8 = sub_21BB230BC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_21BB06278(0, 0, v3, &unk_21BB25080, v9);
  }
}

uint64_t sub_21BB06134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21BB230CC();
  v4[4] = sub_21BB230BC();
  v6 = sub_21BB230AC();

  return MEMORY[0x2822009F8](sub_21BB061CC, v6, v5);
}

uint64_t sub_21BB061CC()
{
  v1 = *(v0 + 24);

  v2 = [v1 delegate];
  v3 = v2;
  if (v2)
  {
    [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers_];
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21BB06278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2430, &qword_21BB25070);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BB09800(a3, v25 - v10);
  v12 = sub_21BB230EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BB09870(v11, &qword_27CDB2430, &qword_21BB25070);
  }

  else
  {
    sub_21BB230DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BB230AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BB22FFC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2438, &qword_21BB25098);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21BB09870(a3, &qword_27CDB2430, &qword_21BB25070);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21BB09870(a3, &qword_27CDB2430, &qword_21BB25070);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2438, &qword_21BB25098);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_21BB0657C()
{
  v45[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BB2293C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = [objc_opt_self() defaultWorkspace];
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = v5;
  v45[0] = 0;
  v7 = [v5 defaultApplicationForCategory:10 error:v45];
  if (!v7)
  {
    v20 = v45[0];
    v21 = sub_21BB2289C();

    swift_willThrow();
LABEL_16:

    return;
  }

  v8 = v7;
  v9 = v45[0];
  v10 = [v0 applicationBundleIdentifier];
  v11 = sub_21BB22FCC();
  v13 = v12;

  v14 = v8;
  v15 = [v14 bundleIdentifier];
  if (!v15)
  {

    goto LABEL_14;
  }

  v44[1] = v3;
  v16 = v15;
  v17 = sub_21BB22FCC();
  v19 = v18;

  if (v11 == v17 && v13 == v19)
  {

    goto LABEL_10;
  }

  v22 = sub_21BB232AC();

  if ((v22 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_10:
  v23 = [v14 bundleIdentifier];

  if (v23)
  {
    v24 = sub_21BB22FCC();
    v26 = v25;

    if (v24 == 0xD000000000000013 && 0x800000021BB27E60 == v26)
    {

LABEL_15:

      goto LABEL_16;
    }

    v27 = sub_21BB232AC();

    if (v27)
    {
      goto LABEL_15;
    }
  }

  v28 = [objc_allocWithZone(type metadata accessor for MessagingSettingsProvider(0)) init];
  v29 = MEMORY[0x277D84F90];
  v45[0] = MEMORY[0x277D84F90];
  objc_allocWithZone(type metadata accessor for RCSMessagingSpecifier());
  v30 = v28;
  v31 = v0;
  v32 = sub_21BB13E58(v30, v0);
  if (v32)
  {
    v33 = v32;
    MEMORY[0x21CEFFA70]();
    if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21BB2307C();
    }

    sub_21BB2308C();

    v29 = v45[0];
  }

  v34 = objc_allocWithZone(type metadata accessor for MMSMessagingSpecifier());
  v35 = v30;
  v36 = v31;
  sub_21BB11A08(v35, v0);
  if (v37)
  {
    v38 = v37;
    MEMORY[0x21CEFFA70]();
    if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21BB2307C();
    }

    sub_21BB2308C();

    v29 = v45[0];
  }

  if (v29 >> 62)
  {
    if (!sub_21BB2325C())
    {
      goto LABEL_34;
    }
  }

  else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:

    return;
  }

  v39 = objc_opt_self();
  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v40 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  v41 = sub_21BB22FAC();

  v42 = [v39 groupSpecifierWithName_];

  if (v42)
  {
    if (!(v29 >> 62) || (sub_21BB2325C() & 0x8000000000000000) == 0)
    {
      v43 = v42;
      sub_21BB09360(0, 0, v43);

      v6 = v14;
      v35 = v43;
      v14 = v43;
      goto LABEL_34;
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

id sub_21BB06B2C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();

  sub_21BB094B0(0, &qword_27CDB2428, 0x277D3FAD8);
  v7 = sub_21BB2305C();

  return v7;
}

void sub_21BB06C24()
{
  v0 = [objc_opt_self() sharedInputModeController];
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = [v0 extensionInputModes];
  if (!v2 || (v3 = v2, v4 = sub_21BB2306C(), v3, v5 = sub_21BB0723C(v4), , !v5))
  {

    return;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_37:
    v7 = sub_21BB2325C();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_38:

LABEL_39:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_6:
  v38 = v1;
  v39 = v7;
  v8 = 0;
  v40 = v6;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEFFBF0](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_36;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_21BB230CC();
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = [v10 containingBundle];
    if (v12 && (v13 = v12, v14 = [v12 bundleIdentifier], v13, v14))
    {
      v15 = sub_21BB22FCC();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v1 = [v41 applicationBundleIdentifier];
    v18 = sub_21BB22FCC();
    v20 = v19;

    if (!v17)
    {

      goto LABEL_8;
    }

    if (v15 == v18 && v17 == v20)
    {
      break;
    }

    v21 = sub_21BB232AC();

    if (v21)
    {
      goto LABEL_27;
    }

LABEL_8:
    ++v8;
    v6 = v40;
    if (v11 == v39)
    {
      goto LABEL_34;
    }
  }

LABEL_27:
  sub_21BB094B0(0, &qword_27CDB2410, &off_2782EED48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_21BB2288C();

  v24 = sub_21BB22FAC();

  v25 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v24 target:0 set:0 get:0 detail:0 cell:2 edit:0];

  if (!v25)
  {
LABEL_34:

    goto LABEL_39;
  }

  v26 = v25;
  v27 = sub_21BB22FAC();
  v28 = v26;
  [v26 setProperty:v27 forKey:*MEMORY[0x277D3FF08]];

  v29 = sub_21BB22FAC();
  v30 = PSBundlePathForPreferenceBundle();

  if (v30)
  {

    v31 = v30;

    if (!v31)
    {
      sub_21BB22FCC();
      v31 = sub_21BB22FAC();
    }

    [v28 setProperty:v31 forKey:*MEMORY[0x277D40000]];

    v32 = sub_21BB2309C();
    [v28 setProperty:v32 forKey:*MEMORY[0x277D3FE00]];

    v33 = sub_21BB2309C();
    [v28 setProperty:v33 forKey:*MEMORY[0x277D3FDF8]];

    v34 = sub_21BB2309C();
    [v28 setProperty:v34 forKey:*MEMORY[0x277D40020]];

    v35 = sub_21BB22FAC();
    [v28 setProperty:v35 forKey:*MEMORY[0x277D3FFD8]];

    v36 = [v41 applicationBundleIdentifier];
    if (!v36)
    {
      sub_21BB22FCC();
      v36 = sub_21BB22FAC();
    }

    [v28 setProperty:v36 forKey:*MEMORY[0x277D3FD90]];

    v37 = sub_21BB22FAC();
    [v28 setIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB0723C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_21BB2321C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_21BB09454(i, v5);
    sub_21BB094B0(0, &qword_27CDB2420, 0x277D75680);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_21BB231FC();
    sub_21BB2322C();
    sub_21BB2323C();
    sub_21BB2320C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_21BB07364(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21BB229FC();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v11 = &v52 - v10;
  v12 = *MEMORY[0x277D6C178];
  if (!*MEMORY[0x277D6C178])
  {
    __break(1u);
    goto LABEL_25;
  }

  v52 = v9;
  v53 = result;
  v13 = *MEMORY[0x277D6C1C0];
  if (!*MEMORY[0x277D6C1C0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = v12;
  v15 = sub_21BB22FCC();
  v17 = v16;

  if (*(a1 + 16))
  {
    sub_21BB10978(v15, v17);
    v19 = v18;

    if (v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v13;
  v21 = sub_21BB22FCC();
  v23 = v22;

  if (!*(a1 + 16))
  {

    return 0;
  }

  sub_21BB10978(v21, v23);
  v25 = v24;

  if ((v25 & 1) == 0)
  {

    return 0;
  }

LABEL_13:

  v26 = sub_21BB094B0(0, &qword_27CDB2410, &off_2782EED48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  sub_21BB2288C();

  v55 = v26;
  v54[0] = v2;
  v29 = v2;
  v30 = sub_21BB22FAC();

  if (v26)
  {
    v31 = __swift_project_boxed_opaque_existential_0Tm(v54, v26);
    v32 = *(v26 - 8);
    MEMORY[0x28223BE20](v31);
    v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v34);
    v35 = sub_21BB2329C();
    (*(v32 + 8))(v34, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {
    v35 = 0;
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v30 target:v35 set:0 get:0 detail:0 cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v36)
  {
    v37 = sub_21BB2309C();
    [v36 setProperty:v37 forKey:*MEMORY[0x277D40020]];

    v38 = [objc_opt_self() currentDevice];
    v39 = [v38 userInterfaceIdiom];

    v40 = 0xD000000000000012;
    if (v39)
    {
      v40 = 0xD000000000000016;
      v41 = "Primary Text, Button";
    }

    else
    {
      v41 = "WalletPrivacySettings";
    }

    v55 = MEMORY[0x277D837D0];
    v54[0] = v40;
    v54[1] = v41 | 0x8000000000000000;
    __swift_project_boxed_opaque_existential_0Tm(v54, MEMORY[0x277D837D0]);
    v42 = sub_21BB2329C();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    [v36 setProperty:v42 forKey:*MEMORY[0x277D40008]];
    swift_unknownObjectRelease();
    v43 = [v29 applicationBundleIdentifier];
    sub_21BB22FCC();

    sub_21BB229EC();
    v45 = v52;
    v44 = v53;
    (*(v52 + 16))(v7, v11, v53);
    v46 = sub_21BB232BC();
    v47 = sub_21BB22FAC();
    [v36 setProperty:v46 forKey:v47];
    swift_unknownObjectRelease();

    v48 = sub_21BB22FAC();
    v49 = sub_21BB22FAC();
    [v36 setProperty:v48 forKey:v49];

    v50 = sub_21BB22FAC();
    v51 = sub_21BB22FAC();
    [v36 setProperty:v50 forKey:v51];

    (*(v45 + 8))(v11, v44);
    return v36;
  }

LABEL_26:
  __break(1u);
  return result;
}

id sub_21BB07B54()
{
  v1 = sub_21BB229FC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v52 - v5;
  v6 = sub_21BB22EEC();
  v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2408, &qword_21BB25058);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_21BB22F0C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BB08350();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v56 = v2;
  v57 = v1;
  v58 = v0;
  v18 = [v0 applicationBundleIdentifier];
  sub_21BB22FCC();

  sub_21BB22EDC();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_21BB09870(v11, &qword_27CDB2408, &qword_21BB25058);
    return 0;
  }

  v21 = v12;
  v55 = v17;
  result = (*(v13 + 32))(v15, v11, v12);
  v22 = *MEMORY[0x277D6C128];
  if (*MEMORY[0x277D6C128])
  {
    type metadata accessor for AUHelperFunctions();
    sub_21BB20B5C(v22);
    v24 = v23;
    sub_21BB22EFC();
    v25 = v61;
    v26 = (v61)[11](v8, v6);
    v27 = v15;
    v28 = v58;
    if (v26 != *MEMORY[0x277D49308])
    {
      v32 = *MEMORY[0x277D49300];
      (*(v13 + 8))(v27, v21);

      if (v26 != v32)
      {
        (v61)[1](v8, v6);
      }

      return 0;
    }

    v53 = v27;
    (v25)[12](v8, v6);
    v52 = *v8;
    v29 = sub_21BB094B0(0, &qword_27CDB2410, &off_2782EED48);
    v62[3] = v29;
    v62[0] = v28;
    v30 = v28;
    if (v24)
    {

      v31 = sub_21BB22FAC();
    }

    else
    {
      v31 = 0;
    }

    v61 = v22;
    v54 = v21;
    if (v29)
    {
      v33 = __swift_project_boxed_opaque_existential_0Tm(v62, v29);
      v34 = *(v29 - 8);
      MEMORY[0x28223BE20](v33);
      v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v36);
      v37 = sub_21BB2329C();
      (*(v34 + 8))(v36, v29);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
    }

    else
    {
      v37 = 0;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v31 target:v37 set:0 get:0 detail:0 cell:2 edit:0];

    result = swift_unknownObjectRelease();
    if (v19)
    {

      v38 = sub_21BB22FAC();

      [v19 setProperty:v38 forKey:*MEMORY[0x277D401A8]];

      v39 = sub_21BB2309C();
      [v19 setProperty:v39 forKey:*MEMORY[0x277D40020]];

      sub_21BB21ACC(v61);
      if (v40)
      {
        v41 = sub_21BB22FAC();
      }

      else
      {
        v41 = 0;
      }

      [v19 setProperty:v41 forKey:*MEMORY[0x277D3FFD8]];
      swift_unknownObjectRelease();
      v42 = [v28 applicationBundleIdentifier];
      sub_21BB22FCC();

      v43 = v60;
      sub_21BB229EC();
      v45 = v56;
      v44 = v57;
      (*(v56 + 16))(v59, v43, v57);
      v46 = sub_21BB232BC();
      v47 = sub_21BB22FAC();
      [v19 setProperty:v46 forKey:v47];
      swift_unknownObjectRelease();

      v48 = sub_21BB22FAC();
      v49 = sub_21BB22FAC();
      [v19 setProperty:v48 forKey:v49];

      v50 = sub_21BB22FAC();
      v51 = sub_21BB22FAC();
      [v19 setProperty:v50 forKey:v51];

      (*(v45 + 8))(v43, v44);
      (*(v13 + 8))(v53, v54);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21BB08350()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_27CDB23C0);
  swift_endAccess();
  if (v2)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_21BB22F1C();
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_21BB09870(v8, &qword_27CDB25D0, &qword_21BB25060);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BB22F1C();
  swift_allocObject();

  v4 = sub_21BB22F2C();

  swift_beginAccess();

  objc_setAssociatedObject(v1, &unk_27CDB23C0, v4, 1);
  swift_endAccess();

  return v4;
}

id sub_21BB08530(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7;
}

void sub_21BB08620(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_21BB0866C(uint64_t a1)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong delegate];
    if (v3)
    {
      [v3 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

id sub_21BB08774(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21BB22FAC();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21BB2289C();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_21BB0886C(void *a1, uint64_t *a2)
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

uint64_t sub_21BB088C4()
{
  v1 = *v0;
  sub_21BB232DC();
  MEMORY[0x21CEFFD10](v1);
  return sub_21BB232FC();
}

uint64_t sub_21BB08938(uint64_t a1)
{
  v2 = *v1;
  sub_21BB232DC();
  MEMORY[0x21CEFFD10](v2);
  return sub_21BB232FC();
}

void *sub_21BB0897C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21BB0898C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21BB229BC();
}

uint64_t sub_21BB08AF0(uint64_t a1, uint64_t a2)
{
  sub_21BB232DC();
  swift_getWitnessTable();
  sub_21BB229CC();
  return sub_21BB232FC();
}

uint64_t sub_21BB08BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_21BB08C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2440, &qword_21BB250A8);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_21BB08D84(unint64_t result, int64_t a2, void *a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_21BB08C78(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_21BB08F00(result, a2, 1, a3, a4);
  *v4 = v6;
}

uint64_t sub_21BB08E60(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21BB2325C();
LABEL_9:
  result = sub_21BB231DC();
  *v2 = result;
  return result;
}

void sub_21BB08F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = *v5;
  v11 = (v10 + 32 + 16 * a1);
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v6);
  v13 = a3 - v6;
  if (v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_21;
  }

  a1 = &v11[2 * a3];
  v16 = (v10 + 32 + 16 * a2);
  if (a1 != v16 || a1 >= v16 + 16 * v15)
  {
    a1 = memmove(a1, v16, 16 * v15);
  }

  v18 = *(v10 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v19;
LABEL_13:
  if (a3 > 0)
  {
    a1 = a4;
    *v11 = a4;
    v11[1] = a5;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    v20 = a1;

    __break(1u);
    return;
  }
}

uint64_t sub_21BB0902C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21BB09120;

  return v5(v2 + 32);
}

uint64_t sub_21BB09120()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_21BB09234(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_21BB094B0(0, &qword_27CDB2428, 0x277D3FAD8);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21BB2325C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_21BB2325C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21BB09360(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21BB2325C();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_21BB2325C();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_21BB08E60(result, 1);

  return sub_21BB09234(v7, v6, 1, v4);
}

uint64_t sub_21BB09454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21BB094B0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21BB094F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void (*sub_21BB09564())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_21BB09650;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_21BB09658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BB0970C;

  return sub_21BB06134(a1, v4, v5, v6);
}

uint64_t sub_21BB0970C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21BB09800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2430, &qword_21BB25070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB09870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21BB098D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BB09A4C;

  return sub_21BB0902C(a1, v4);
}

uint64_t sub_21BB09988(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BB0970C;

  return sub_21BB0902C(a1, v4);
}

void *sub_21BB09A50(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  sub_21BB094F8(a1, v2 + OBJC_IVAR____TtC19AppSystemSettingsUI20DefaultAppsSpecifier_provider);
  swift_unknownObjectWeakAssign();
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21BB22A1C();
  if (v7)
  {
    v8 = sub_21BB22FAC();
  }

  else
  {
    v8 = 0;
  }

  type metadata accessor for DefaultAppsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, sel_initWithName_target_set_get_detail_cell_edit_, v8, 0, 0, sel_getLocalizedDetailText, ObjCClassFromMetadata, 2, 0);

  if (v10)
  {

    v11 = v10;
    [v11 setTarget_];
    __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    sub_21BB22A2C();
    v12 = sub_21BB22FAC();

    [v11 setIdentifier_];

    __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    [v11 setUserInfo_];

    swift_unknownObjectRelease();
    a2 = v11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

id sub_21BB09DBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BB09E64()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  result = [v0 specifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = result;
  v4 = [result userInfo];

  if (v4)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v27 = v20;
  v28 = v21;
  if (!*(&v21 + 1))
  {
    sub_21BB09870(&v27, &qword_27CDB25D0, &qword_21BB25060);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    return sub_21BB09870(&v22, &qword_27CDB2458, &qword_21BB25148);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2460, &qword_21BB25150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return sub_21BB09870(&v22, &qword_27CDB2458, &qword_21BB25148);
  }

  if (!*(&v23 + 1))
  {
    return sub_21BB09870(&v22, &qword_27CDB2458, &qword_21BB25148);
  }

  sub_21BB0A83C(&v22, &v27);
  result = [v1 specifier];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_0Tm(&v27, *(&v28 + 1));
  sub_21BB22A0C();
  if (v6)
  {
    v7 = sub_21BB22FAC();
  }

  else
  {
    v7 = 0;
  }

  [v5 setProperty:v7 forKey:*MEMORY[0x277D401A8]];

  swift_unknownObjectRelease();
  sub_21BB094F8(&v27, &v20);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BB094F8(&v20, v19);

  sub_21BB22E0C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v20);

  v25 = sub_21BB0A854;
  v26 = v8;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2468, &qword_21BB25158));
  v10 = sub_21BB22CEC();
  v11 = [v10 view];
  if (!v11)
  {

    return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
  }

  v12 = v11;
  result = [v1 view];
  if (!result)
  {
    goto LABEL_23;
  }

  v13 = result;
  [result addSubview_];

  result = [v1 view];
  if (result)
  {
    v14 = result;
    [result bounds];
    v16 = v15;
    v18 = v17;

    [v12 setFrame_];
    [v12 setAutoresizingMask_];
    [v1 addChildViewController_];
    [v10 didMoveToParentViewController_];

    return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_21BB0A208(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong specifier];

    if (v3)
    {
      type metadata accessor for DefaultAppsSpecifier();
      if (swift_dynamicCastClass())
      {
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4)
        {
          v5 = v4;
          v6 = [v4 delegate];
          if (v6)
          {
            [v6 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_21BB0A3AC(void *a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_setSpecifier_, a1);
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v12 = v7;
  v13 = v8;
  if (!*(&v8 + 1))
  {
    sub_21BB09870(&v12, &qword_27CDB25D0, &qword_21BB25060);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    return sub_21BB09870(&v9, &qword_27CDB2458, &qword_21BB25148);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2460, &qword_21BB25150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_21BB09870(&v9, &qword_27CDB2458, &qword_21BB25148);
  }

  if (!*(&v10 + 1))
  {
    return sub_21BB09870(&v9, &qword_27CDB2458, &qword_21BB25148);
  }

  sub_21BB0A83C(&v9, &v12);
  __swift_project_boxed_opaque_existential_0Tm(&v12, *(&v13 + 1));
  sub_21BB22A1C();
  if (v4)
  {
    v5 = sub_21BB22FAC();
  }

  else
  {
    v5 = 0;
  }

  [v2 setTitle_];

  return __swift_destroy_boxed_opaque_existential_0Tm(&v12);
}

uint64_t sub_21BB0A83C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21BB0A85C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2470, &qword_21BB25200);
  sub_21BB22E1C();
  __swift_project_boxed_opaque_existential_0Tm(v20, v21);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v3 = sub_21BB22A3C();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(v15 - v4, boxed_opaque_existential_1, AssociatedTypeWitness);
  v6 = sub_21BB22E4C();
  sub_21BB0ADD4(v0, &v16);
  v7 = swift_allocObject();
  v8 = v17;
  v7[1] = v16;
  v7[2] = v8;
  v9 = v19;
  v7[3] = v18;
  v7[4] = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  v22[0] = v6;
  v22[1] = sub_21BB0AE0C;
  v22[2] = v7;
  v23 = 0;
  AssociatedConformanceWitness = 0;
  sub_21BB22E1C();
  __swift_project_boxed_opaque_existential_0Tm(v20, v21);
  v15[0] = sub_21BB22A0C();
  v15[1] = v10;
  sub_21BB0ADD4(v0, &v16);
  v11 = swift_allocObject();
  v12 = v17;
  v11[1] = v16;
  v11[2] = v12;
  v13 = v19;
  v11[3] = v18;
  v11[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2478, &qword_21BB25208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2480, &qword_21BB25210);
  sub_21BB0AE64();
  sub_21BB0AF30();
  sub_21BB22DBC();

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_21BB0AB4C(uint64_t a1)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 48))(isCurrentExecutor);
}

uint64_t sub_21BB0ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a3 + 48))(isCurrentExecutor);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BB0ACAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21BB0ACF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_21BB0AE64()
{
  result = qword_27CDB2488;
  if (!qword_27CDB2488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2478, &qword_21BB25208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2488);
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

unint64_t sub_21BB0AF30()
{
  result = qword_27CDB2490;
  if (!qword_27CDB2490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2480, &qword_21BB25210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2490);
  }

  return result;
}

uint64_t sub_21BB0AFAC()
{
  v0 = sub_21BB22B0C();
  __swift_allocate_value_buffer(v0, qword_27CDB3700);
  __swift_project_value_buffer(v0, qword_27CDB3700);
  return sub_21BB22AFC();
}

uint64_t sub_21BB0B028()
{
  v0 = sub_21BB22B0C();
  __swift_allocate_value_buffer(v0, qword_27CDB24A0);
  v1 = __swift_project_value_buffer(v0, qword_27CDB24A0);
  if (qword_27CDB23C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CDB3700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21BB0B0F0()
{
  sub_21BB094B0(0, &qword_27CDB25C0, 0x277CFB9C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CDB24B8 = result;
  return result;
}

uint64_t sub_21BB0B158()
{
  result = sub_21BB22FAC();
  qword_27CDB24C0 = result;
  return result;
}

void *sub_21BB0B190()
{
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v1 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  v2 = v1;
  return v1;
}

id sub_21BB0B240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v4 = *(v3 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  *a2 = v4;

  return v4;
}

void sub_21BB0B300(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
  v5 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
    sub_21BB2295C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB094B0(0, &qword_27CDB25F8, 0x277CC37A8);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BB2316C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_21BB0B498()
{
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  swift_beginAccess();
}

uint64_t sub_21BB0B558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BB0B620(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();

  sub_21BB111D8(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
    sub_21BB2295C();
  }
}

uint64_t sub_21BB0B770(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

char *sub_21BB0B7E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
  sub_21BB094B0(0, &qword_27CDB2628, 0x277D85C78);
  v4 = sub_21BB2312C();
  v5 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo] = 0;
  *&v1[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID] = MEMORY[0x277D84F98];
  sub_21BB2299C();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  [*&v6[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient] setDelegate_];
  return v6;
}

void *sub_21BB0B900(void *a1)
{
  v2 = v1;
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a1 slotID];
  swift_getKeyPath();
  v20 = v1;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v5 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (*(v6 + 16) && (v7 = sub_21BB1090C(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v11 = *&v2[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient];
    v19[0] = 0;
    v12 = [v11 getSystemConfiguration:a1 withError:v19];
    v13 = v19[0];
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v14 = v13;
      v15 = sub_21BB2289C();

      swift_willThrow();
      v9 = 0;
    }

    v16 = [a1 slotID];
    swift_getKeyPath();
    v19[0] = v2;
    v17 = v12;
    sub_21BB2296C();

    v19[0] = v2;
    swift_getKeyPath();
    sub_21BB2298C();

    swift_beginAccess();
    sub_21BB0BB74(v9, v16);
    swift_endAccess();
    v19[0] = v2;
    swift_getKeyPath();
    sub_21BB2297C();
  }

  return v9;
}

uint64_t sub_21BB0BB74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_21BB10F34(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_21BB1090C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_21BB1107C();
        v11 = v13;
      }

      result = sub_21BB10DA0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_21BB0BC34()
{
  v1 = v0;
  v40 = *MEMORY[0x277D85DE8];
  v2 = sub_21BB11330();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = [v2 subscriptionsInUse];
    if (v4)
    {
      v5 = v4;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v6 = sub_21BB2306C();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v38 = v3;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v32 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
  v37 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  if (v7)
  {
    v8 = 0;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v36 = v6 & 0xC000000000000001;
    v33 = v6;
    v34 = v7;
    while (1)
    {
      if (v36)
      {
        v9 = MEMORY[0x21CEFFBF0](v8, v6);
      }

      else
      {
        if (v8 >= *(v35 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v7 = sub_21BB2325C();
        goto LABEL_8;
      }

      v12 = [v9 slotID];
      swift_getKeyPath();
      v39[0] = v1;
      sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
      sub_21BB2296C();

      v13 = *&v1[v37];
      if (*(v13 + 16) && (v14 = sub_21BB1090C(v12), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        v17 = *&v1[v32];
        v39[0] = 0;
        v18 = [v17 getSystemConfiguration:v10 withError:{v39, v32}];
        v19 = v39[0];
        if (!v18)
        {
          v20 = v19;
          v21 = sub_21BB2289C();

          swift_willThrow();
          v18 = 0;
        }

        v22 = [v10 slotID];
        swift_getKeyPath();
        v39[0] = v1;
        v16 = v18;
        sub_21BB2296C();

        v39[0] = v1;
        swift_getKeyPath();
        sub_21BB2298C();

        swift_beginAccess();
        sub_21BB0BB74(v18, v22);
        swift_endAccess();
        v39[0] = v1;
        swift_getKeyPath();
        sub_21BB2297C();

        v6 = v33;
        v11 = v8 + 1;
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      v23 = [v16 featureDisabledByProfile];

      if (v23)
      {
        goto LABEL_27;
      }

LABEL_24:
      v24 = [v10 phoneNumber];
      if (v24)
      {
        v25 = v24;
        v26 = [v10 labelID];
        if (v26)
        {
          v27 = v26;
          v28 = [objc_opt_self() sharedManager];
          v29 = [v28 supportedForPhoneNumber:v25 simID:v27];

          v6 = v33;
          if (v29)
          {
LABEL_27:
            sub_21BB231FC();
            sub_21BB2322C();
            sub_21BB2323C();
            sub_21BB2320C();
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

LABEL_12:
      ++v8;
      if (v11 == v34)
      {
        v30 = v38;
        goto LABEL_31;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_31:

  return v30;
}

uint64_t sub_21BB0C0F0()
{
  result = sub_21BB11330();
  if (result)
  {
    result = [result subscriptions];
    if (result)
    {
      v1 = result;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v2 = sub_21BB2306C();

      if (v2 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v4 = 0;
        v5 = &off_2782EF000;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CEFFBF0](v4, v2);
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v7 = *(v2 + 8 * v4 + 32);
          }

          v8 = v7;
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          v10 = sub_21BB0B900(v7);
          if (!v10)
          {
            v13 = v8;
            goto LABEL_18;
          }

          v11 = v10;
          v12 = [v10 operationStatus];
          if (v12)
          {
            v13 = v12;
            if ([v12 v5[397]] == -1)
            {
              v14 = [v11 featureEnabledByDefault];

              if (v14)
              {
                goto LABEL_25;
              }
            }

            else
            {
              if ([v11 featureDisabledByProfile])
              {

LABEL_18:
                goto LABEL_7;
              }

              if (![v13 v5[397]])
              {

                return 1;
              }

              v15 = [v13 v5[397]];

              if (v15 == 1)
              {
LABEL_25:

                return 1;
              }
            }
          }

          else
          {
            v6 = [v11 featureEnabledByDefault];

            if (v6)
            {
              goto LABEL_25;
            }
          }

LABEL_7:
          ++v4;
          v5 = &off_2782EF000;
          if (v9 == i)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:

      return 0;
    }
  }

  return result;
}

uint64_t sub_21BB0C33C()
{
  v1 = [v0 operationStatus];
  if (!v1)
  {
    return [v0 featureEnabledByDefault];
  }

  v2 = v1;
  if ([v1 switchState] == -1)
  {
    v4 = [v0 featureEnabledByDefault];

    return v4;
  }

  else if ([v0 featureDisabledByProfile])
  {

    return 0;
  }

  else if ([v2 switchState])
  {
    v5 = [v2 switchState];

    return v5 == 1;
  }

  else
  {

    return 1;
  }
}

void sub_21BB0C420(char a1, void *a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x277D85DE8];
  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v6 = sub_21BB22B0C();
  __swift_project_value_buffer(v6, qword_27CDB24A0);
  v7 = a2;
  v8 = sub_21BB22AEC();
  v9 = sub_21BB230FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2112;
    *(v10 + 10) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_21BAF4000, v8, v9, "Setting RCS enabled: %{BOOL}d for: %@", v10, 0x12u);
    sub_21BB09870(v11, &qword_27CDB25E8, &qword_21BB252C8);
    MEMORY[0x21CF00730](v11, -1, -1);
    MEMORY[0x21CF00730](v10, -1, -1);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v19[0] = 0;
  if (a1)
  {
    v14 = [v13 enableLazuli:v7 withError:v19];
  }

  else
  {
    v14 = [v13 disableLazuli:v7 withError:v19];
  }

  v15 = v19[0];
  if (v14)
  {

    v16 = v15;
  }

  else
  {
    v17 = v19[0];
    v18 = sub_21BB2289C();

    swift_willThrow();
  }
}

id sub_21BB0C668()
{
  v0 = sub_21BB11330();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = [v0 subscriptionsInUse];
    if (v2)
    {
      v3 = v2;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v4 = sub_21BB2306C();
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v16 = v1;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_23:
    v15 = MEMORY[0x277D84F90];
LABEL_24:

    return v15;
  }

LABEL_22:
  v5 = sub_21BB2325C();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_8:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEFFBF0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    result = [objc_opt_self() sharedManager];
    if (!result)
    {
      break;
    }

    v11 = result;
    v12 = [v8 phoneNumber];
    v13 = [v8 labelID];
    v14 = [v11 mmsSupportedAndConfiguredForPhoneNumber:v12 simID:v13];

    if (v14)
    {
      sub_21BB231FC();
      sub_21BB2322C();
      sub_21BB2323C();
      sub_21BB2320C();
    }

    else
    {
    }

    ++v6;
    if (v9 == v5)
    {
      v15 = v16;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BB0C894(void *a1)
{
  [a1 slotID];
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_21BB22FAC();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {

    v12 = 0u;
    v13 = 0u;
LABEL_9:
    sub_21BB09870(&v12, &qword_27CDB25D0, &qword_21BB25060);
LABEL_11:
    v8 = sub_21BB0CAA4(a1);
    return v8 & 1;
  }

  v5 = sub_21BB22FAC();

  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v10 = 0u;
    v11 = 0u;
  }

  v12 = *v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    goto LABEL_9;
  }

  sub_21BB118AC(&v12, v14);
  sub_21BB09454(v14, &v12);
  sub_21BB094B0(0, &qword_27CDB25D8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    goto LABEL_11;
  }

  v7 = [v10[0] BOOLValue];

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  v8 = v7;
  return v8 & 1;
}

uint64_t sub_21BB0CAA4(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v4 = sub_21BB22FAC();
  v5 = [objc_allocWithZone(MEMORY[0x277CC3620]) initWithBundleType_];
  v18[0] = 0;
  v6 = [v3 copyCarrierBundleValueWithDefault:a1 key:v4 bundleType:v5 error:v18];

  v7 = v18[0];
  if (!v6)
  {
    v14 = v18[0];
    v15 = sub_21BB2289C();

    swift_willThrow();
    return 0;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v16 = v7;
    goto LABEL_10;
  }

  v18[0] = 0;
  v8 = v7;
  v6 = v6;
  sub_21BB22F4C();

  v9 = v18[0];
  if (!v18[0])
  {
LABEL_10:

    return 0;
  }

  if (*(v18[0] + 2) && (v10 = sub_21BB10978(0xD000000000000011, 0x800000021BB281B0), (v11 & 1) != 0))
  {
    sub_21BB09454(v9[7] + 32 * v10, v18);

    sub_21BB094B0(0, &qword_27CDB25D8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v12 = [v17 BOOLValue];

      return v12;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_21BB0CCC8()
{
  v0 = sub_21BB11330();
  if (!v0)
  {
    return 0;
  }

  v1 = [v0 subscriptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
  v3 = sub_21BB2306C();

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
  {
    v5 = 0;
    v18 = v3 & 0xC000000000000001;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v7 = MEMORY[0x21CEFFBF0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = sub_21BB0B900(v7);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = v10;
      v12 = v3;
      v13 = [v10 businessMessagingCapabilities];
      if (!v13)
      {
        goto LABEL_7;
      }

      v14 = v13;
      if (([v11 featureSupported] & 1) == 0)
      {

LABEL_7:
        v3 = v12;
LABEL_8:

        goto LABEL_9;
      }

      v15 = [v14 supported];

      v3 = v12;
      if (v15)
      {
        v16 = 1;
        goto LABEL_25;
      }

LABEL_9:
      ++v5;
      if (v9 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v16 = 0;
LABEL_25:

  return v16;
}

uint64_t sub_21BB0CE8C()
{
  v1 = v0;
  v148 = *MEMORY[0x277D85DE8];
  result = sub_21BB11330();
  if (result)
  {
    result = [result subscriptions];
    if (result)
    {
      v3 = result;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v4 = sub_21BB2306C();

      v124 = v4;
      if (v4 >> 62)
      {
        goto LABEL_147;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v6 = 0;
        v7 = 0;
        v134 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
        v8 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
        v123 = i;
        v9 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
        v141 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
        v135 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
        while (1)
        {
          if ((v124 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CEFFBF0](v6, v124);
          }

          else
          {
            if (v6 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_139;
            }

            v13 = *(v124 + 32 + 8 * v6);
          }

          v10 = v13;
          v14 = __OFADD__(v6++, 1);
          if (v14)
          {
            break;
          }

          v15 = sub_21BB0B900(v13);
          if (!v15)
          {
            goto LABEL_11;
          }

          v11 = v15;
          v16 = [v15 businessMessagingCapabilities];
          if (v16)
          {
            v136 = v16;
            v17 = [v16 userPreferenceForSwitch];
            if (v17 != -1)
            {
              if (v17 == 1)
              {
                v126 = v11;
                v125 = v10;
                swift_getKeyPath();
                v147[0] = v1;
                sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
                sub_21BB2296C();

                if (!*&v1[v8])
                {
                  v18 = v6;
                  v19 = *&v1[v134];
                  v147[0] = 0;
                  v20 = [v19 getSubscriptionInfoWithError_];
                  if (v20)
                  {
                    v21 = i;
                    v22 = v7;
                    v23 = *&v1[v135];
                    v24 = v147[0];
                    if (v23)
                    {
                      sub_21BB094B0(0, &qword_27CDB25F8, 0x277CC37A8);
                      v25 = v23;
                      v26 = v20;
                      v27 = sub_21BB2316C();

                      if (v27)
                      {
                        v28 = v135;
                        v29 = *&v1[v135];
                        v7 = v22;
                        i = v21;
                        goto LABEL_79;
                      }
                    }

                    v75 = v22;
LABEL_76:
                    KeyPath = swift_getKeyPath();
                    MEMORY[0x28223BE20](KeyPath);
                    v147[0] = v1;
                    sub_21BB2295C();
                    v7 = v75;

                    v6 = v18;
                    v8 = v135;
                    i = v21;
                  }

                  else
                  {
                    v76 = v147[0];
                    v77 = sub_21BB2289C();

                    swift_willThrow();
                    v29 = *&v1[v135];
                    if (v29)
                    {
                      v21 = i;
                      v75 = 0;
                      goto LABEL_76;
                    }

                    v20 = 0;
                    v7 = 0;
                    v28 = v135;
LABEL_79:
                    *&v1[v28] = v20;

                    v6 = v18;
                    v8 = v28;
                  }
                }

                swift_getKeyPath();
                v147[0] = v1;
                sub_21BB2296C();

                v79 = *&v1[v8];
                if (v79)
                {
                  v80 = [v79 subscriptions];
                  v10 = v125;
                  if (v80)
                  {
                    v81 = v80;
                    v82 = sub_21BB2306C();

                    v128 = v6;
                    if (v82 >> 62)
                    {
                      v83 = sub_21BB2325C();
                    }

                    else
                    {
                      v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    swift_beginAccess();
                    if (v83)
                    {
                      v84 = 0;
                      v133 = v82 & 0xC000000000000001;
                      v131 = v82 & 0xFFFFFFFFFFFFFF8;
                      v129 = v83;
                      v138 = v82;
                      while (1)
                      {
                        if (v133)
                        {
                          v86 = MEMORY[0x21CEFFBF0](v84, v82);
                          v87 = v84 + 1;
                          if (__OFADD__(v84, 1))
                          {
                            goto LABEL_140;
                          }
                        }

                        else
                        {
                          if (v84 >= *(v131 + 16))
                          {
                            goto LABEL_141;
                          }

                          v86 = *(v82 + 8 * v84 + 32);
                          v87 = v84 + 1;
                          if (__OFADD__(v84, 1))
                          {
                            goto LABEL_140;
                          }
                        }

                        v140 = v87;
                        v143 = v7;
                        v146 = v86;
                        v88 = [v86 slotID];
                        swift_getKeyPath();
                        v147[0] = v1;
                        sub_21BB2296C();

                        v89 = *&v1[v9];
                        if (*(v89 + 16))
                        {
                          v90 = sub_21BB1090C(v88);
                          if (v91)
                          {
                            v92 = *(*(v89 + 56) + 8 * v90);
                            goto LABEL_117;
                          }
                        }

                        v93 = *&v1[v134];
                        v147[0] = 0;
                        v94 = v146;
                        v95 = [v93 getSystemConfiguration:v146 withError:v147];
                        v96 = v147[0];
                        if (!v95)
                        {
                          v97 = v96;
                          v98 = sub_21BB2289C();

                          v94 = v146;
                          swift_willThrow();

                          v143 = 0;
                        }

                        v99 = [v94 slotID];
                        swift_getKeyPath();
                        v147[0] = v1;
                        v92 = v95;
                        sub_21BB2296C();

                        v147[0] = v1;
                        swift_getKeyPath();
                        sub_21BB2298C();

                        v9 = v141;
                        swift_beginAccess();
                        if (v95)
                        {
                          break;
                        }

                        v110 = sub_21BB1090C(v99);
                        v8 = v135;
                        v83 = v129;
                        if (v111)
                        {
                          v112 = v110;
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v114 = *&v1[v141];
                          if (!isUniquelyReferenced_nonNull_native)
                          {
                            sub_21BB1107C();
                          }

                          sub_21BB10DA0(v112, v114);
                          *&v1[v141] = v114;
                        }

LABEL_116:
                        swift_endAccess();
                        v147[0] = v1;
                        swift_getKeyPath();
                        sub_21BB2297C();

                        if (!v95)
                        {
                          v120 = v146;
                          v82 = v138;
                          goto LABEL_122;
                        }

LABEL_117:
                        v119 = [v92 operationStatus];
                        if (!v119)
                        {
                          v85 = [v92 featureEnabledByDefault];

                          v7 = v143;
                          v82 = v138;
                          if (v85)
                          {
                            goto LABEL_137;
                          }

                          goto LABEL_87;
                        }

                        v120 = v119;
                        v82 = v138;
                        if ([v119 switchState] == -1)
                        {
                          v121 = [v92 featureEnabledByDefault];

                          v7 = v143;
                          if (v121)
                          {
                            goto LABEL_137;
                          }

                          goto LABEL_87;
                        }

                        if ([v92 featureDisabledByProfile])
                        {

LABEL_122:
                          v7 = v143;
                          goto LABEL_87;
                        }

                        if (![v120 switchState])
                        {

                          goto LABEL_137;
                        }

                        v122 = [v120 switchState];

                        v7 = v143;
                        if (v122 == 1)
                        {
                          goto LABEL_137;
                        }

LABEL_87:
                        ++v84;
                        if (v140 == v83)
                        {
                          v10 = v125;
                          goto LABEL_129;
                        }
                      }

                      v100 = swift_isUniquelyReferenced_nonNull_native();
                      v101 = *&v1[v141];
                      v103 = sub_21BB1090C(v99);
                      v104 = v101[2];
                      v105 = (v102 & 1) == 0;
                      v106 = v104 + v105;
                      if (__OFADD__(v104, v105))
                      {
                        goto LABEL_144;
                      }

                      v107 = v102;
                      if (v101[3] < v106)
                      {
                        sub_21BB10B14(v106, v100);
                        v108 = sub_21BB1090C(v99);
                        if ((v107 & 1) != (v109 & 1))
                        {
                          goto LABEL_151;
                        }

                        v103 = v108;
                        if ((v107 & 1) == 0)
                        {
                          goto LABEL_113;
                        }

LABEL_108:
                        v115 = v101[7];
                        v116 = *(v115 + 8 * v103);
                        *(v115 + 8 * v103) = v92;

LABEL_115:
                        v9 = v141;
                        *&v1[v141] = v101;
                        v8 = v135;
                        v83 = v129;
                        goto LABEL_116;
                      }

                      if (v100)
                      {
                        if (v102)
                        {
                          goto LABEL_108;
                        }
                      }

                      else
                      {
                        sub_21BB1107C();
                        if (v107)
                        {
                          goto LABEL_108;
                        }
                      }

LABEL_113:
                      v101[(v103 >> 6) + 8] |= 1 << v103;
                      *(v101[6] + 8 * v103) = v99;
                      *(v101[7] + 8 * v103) = v92;
                      v117 = v101[2];
                      v14 = __OFADD__(v117, 1);
                      v118 = v117 + 1;
                      if (v14)
                      {
                        goto LABEL_146;
                      }

                      v101[2] = v118;
                      goto LABEL_115;
                    }

LABEL_129:
                    v6 = v128;
LABEL_130:

                    v11 = v126;
                    v12 = v136;
                    i = v123;
LABEL_9:

                    goto LABEL_10;
                  }
                }

                else
                {
                  v10 = v125;
                }

LABEL_7:
                v11 = v126;
              }

LABEL_8:
              v12 = v136;
              goto LABEL_9;
            }

            if (([v136 enabledByDefault] & 1) == 0)
            {
              goto LABEL_8;
            }

            v126 = v11;
            v30 = sub_21BB11330();
            if (!v30)
            {
              goto LABEL_7;
            }

            v31 = [v30 subscriptions];
            if (!v31)
            {
              goto LABEL_7;
            }

            v32 = v31;
            v33 = sub_21BB2306C();

            if (v33 >> 62)
            {
              v34 = sub_21BB2325C();
            }

            else
            {
              v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_beginAccess();
            if (!v34)
            {
              goto LABEL_130;
            }

            v125 = v10;
            v35 = 0;
            v139 = v33 & 0xC000000000000001;
            v132 = v33 & 0xFFFFFFFFFFFFFF8;
            v127 = v6;
            v137 = v33;
            v130 = v34;
            while (2)
            {
              if (v139)
              {
                v37 = MEMORY[0x21CEFFBF0](v35, v33);
              }

              else
              {
                if (v35 >= *(v132 + 16))
                {
                  goto LABEL_143;
                }

                v37 = *(v33 + 8 * v35 + 32);
              }

              v38 = v37;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_142;
              }

              v144 = v35 + 1;
              v39 = [v37 slotID];
              swift_getKeyPath();
              v147[0] = v1;
              sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
              sub_21BB2296C();

              v40 = *&v1[v9];
              v145 = v38;
              if (*(v40 + 16))
              {
                v41 = sub_21BB1090C(v39);
                if (v42)
                {
                  v43 = *(*(v40 + 56) + 8 * v41);
LABEL_63:
                  v70 = [v43 operationStatus];
                  v6 = v127;
                  if (v70)
                  {
                    v71 = v70;
                    v33 = v137;
                    if ([v70 switchState] == -1)
                    {
                      v73 = [v43 featureEnabledByDefault];

                      v8 = v135;
                      v9 = v141;
                      if (v73)
                      {
                        goto LABEL_137;
                      }
                    }

                    else if ([v43 featureDisabledByProfile])
                    {

                      v8 = v135;
                      v9 = v141;
                    }

                    else
                    {
                      if (![v71 switchState])
                      {

                        goto LABEL_137;
                      }

                      v74 = [v71 switchState];

                      v8 = v135;
                      v9 = v141;
                      if (v74 == 1)
                      {
LABEL_137:

                        return 1;
                      }
                    }
                  }

                  else
                  {
                    v36 = [v43 featureEnabledByDefault];

                    v8 = v135;
                    v33 = v137;
                    if (v36)
                    {
                      goto LABEL_137;
                    }
                  }

                  goto LABEL_33;
                }
              }

              v44 = *&v1[v134];
              v147[0] = 0;
              v45 = [v44 getSystemConfiguration:v38 withError:v147];
              v46 = v147[0];
              if (v45)
              {
                v47 = v7;
              }

              else
              {
                v48 = v46;
                v49 = sub_21BB2289C();

                swift_willThrow();
                v47 = 0;
              }

              v50 = [v145 slotID];
              swift_getKeyPath();
              v147[0] = v1;
              v142 = v45;
              sub_21BB2296C();

              v147[0] = v1;
              swift_getKeyPath();
              sub_21BB2298C();

              swift_beginAccess();
              if (v45)
              {
                v51 = swift_isUniquelyReferenced_nonNull_native();
                v52 = *&v1[v141];
                v54 = sub_21BB1090C(v50);
                v55 = v52[2];
                v56 = (v53 & 1) == 0;
                v57 = v55 + v56;
                if (__OFADD__(v55, v56))
                {
                  goto LABEL_145;
                }

                v58 = v53;
                if (v52[3] >= v57)
                {
                  if (v51)
                  {
                    if ((v53 & 1) == 0)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    sub_21BB1107C();
                    if ((v58 & 1) == 0)
                    {
                      goto LABEL_59;
                    }
                  }
                }

                else
                {
                  sub_21BB10B14(v57, v51);
                  v59 = sub_21BB1090C(v50);
                  if ((v58 & 1) != (v60 & 1))
                  {
LABEL_151:
                    type metadata accessor for CTSubscriptionSlot(0);
                    result = sub_21BB232CC();
                    __break(1u);
                    return result;
                  }

                  v54 = v59;
                  if ((v58 & 1) == 0)
                  {
LABEL_59:
                    v52[(v54 >> 6) + 8] |= 1 << v54;
                    *(v52[6] + 8 * v54) = v50;
                    *(v52[7] + 8 * v54) = v142;
                    v68 = v52[2];
                    v14 = __OFADD__(v68, 1);
                    v69 = v68 + 1;
                    if (v14)
                    {
                      __break(1u);
                    }

                    v52[2] = v69;
LABEL_61:
                    v9 = v141;
                    *&v1[v141] = v52;
                    v7 = v47;
                    v38 = v145;
LABEL_62:
                    swift_endAccess();
                    v147[0] = v1;
                    swift_getKeyPath();
                    sub_21BB2297C();

                    v43 = v142;
                    if (v45)
                    {
                      goto LABEL_63;
                    }

                    v72 = v38;
                    v6 = v127;
                    v8 = v135;
                    v33 = v137;

LABEL_33:
                    ++v35;
                    if (v144 == v130)
                    {
                      v10 = v125;
                      goto LABEL_130;
                    }

                    continue;
                  }
                }

                v66 = v52[7];
                v67 = *(v66 + 8 * v54);
                *(v66 + 8 * v54) = v142;

                goto LABEL_61;
              }

              break;
            }

            v61 = sub_21BB1090C(v50);
            v9 = v141;
            v7 = v47;
            v38 = v145;
            if (v62)
            {
              v63 = v61;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v65 = *&v1[v141];
              if (!v64)
              {
                sub_21BB1107C();
              }

              sub_21BB10DA0(v63, v65);
              *&v1[v141] = v65;
            }

            goto LABEL_62;
          }

LABEL_10:

LABEL_11:
          if (v6 == i)
          {
            goto LABEL_148;
          }
        }

        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        ;
      }

LABEL_148:

      return 0;
    }
  }

  return result;
}

void *sub_21BB0DF64()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2630, &qword_21BB25328);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v21[0] = 0;
  v5 = [v4 getCurrentDataSubscriptionContextSync_];
  if (v5)
  {
    v6 = v5;
    v7 = v21[0];
    v8 = [v6 uuid];

    sub_21BB228DC();
    v9 = 0;
  }

  else
  {
    v10 = v21[0];
    v11 = sub_21BB2289C();

    swift_willThrow();
    v9 = 1;
  }

  v12 = sub_21BB228EC();
  (*(*(v12 - 8) + 56))(v3, v9, 1, v12);
  v13 = sub_21BB11330();
  if (v13 && (v14 = [v13 subscriptions]) != 0)
  {
    v15 = v14;
    sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
    v16 = sub_21BB2306C();

    MEMORY[0x28223BE20](v17);
    *&v20[-16] = v0;
    *&v20[-8] = v3;
    v18 = sub_21BB0E8AC(sub_21BB11918, &v20[-32], v16);
  }

  else
  {
    v18 = 0;
  }

  sub_21BB09870(v3, &qword_27CDB2630, &qword_21BB25328);
  return v18;
}

void *sub_21BB0E1BC(void **a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v65[1] = *MEMORY[0x277D85DE8];
  v6 = sub_21BB228EC();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2638, &qword_21BB25330);
  MEMORY[0x28223BE20](v60);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2630, &qword_21BB25328);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v54[-v13];
  v15 = sub_21BB2291C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  result = sub_21BB0B900(v19);
  v64 = result;
  if (result)
  {
    v57 = v9;
    v58 = v6;
    v21 = *(a2 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
    v65[0] = 0;
    v22 = [v21 copyMobileSubscriberCountryCode:v19 error:v65];
    v23 = v65[0];
    if (!v22)
    {
      v32 = v65[0];
      v33 = sub_21BB2289C();

      swift_willThrow();
      return 0;
    }

    v24 = v22;
    v65[0] = 0;
    v25 = v23;
    v26 = [v21 copyMobileSubscriberIsoCountryCode:v24 error:v65];

    v27 = v65[0];
    if (v26)
    {
      v56 = v3;
      sub_21BB22FCC();
      v28 = v27;

      v29 = sub_21BB22FEC();
      v31 = v30;
    }

    else
    {
      v34 = v65[0];
      v35 = sub_21BB2289C();

      swift_willThrow();
      v29 = 0;
      v31 = 0;
      v56 = 0;
    }

    sub_21BB2290C();
    sub_21BB228FC();
    (*(v16 + 8))(v18, v15);
    v36 = sub_21BB22FEC();
    v38 = v37;

    if (v31)
    {
      v39 = v62;
      if (v29 == v36 && v31 == v38)
      {
        v55 = 1;
      }

      else
      {
        v55 = sub_21BB232AC();
      }
    }

    else
    {
      v55 = 0;
      v39 = v62;
    }

    v40 = v64;
    LODWORD(v56) = sub_21BB0C33C();
    v41 = [v40 messagingCapabilities];
    v42 = v41;
    v44 = v57;
    v43 = v58;
    v45 = v63;
    if (v41)
    {
    }

    v62 = v42;
    v46 = [v19 uuid];
    sub_21BB228DC();

    (*(v45 + 56))(v14, 0, 1, v43);
    v47 = *(v60 + 48);
    sub_21BB11938(v61, v44);
    sub_21BB11938(v14, v44 + v47);
    v48 = *(v45 + 48);
    if (v48(v44, 1, v43) == 1)
    {
      sub_21BB09870(v14, &qword_27CDB2630, &qword_21BB25328);

      v49 = v48(v44 + v47, 1, v43);
      v50 = v62;
      if (v49 == 1)
      {
        sub_21BB09870(v44, &qword_27CDB2630, &qword_21BB25328);
        v51 = 0;
        if ((v55 & 1) == 0)
        {
          return 0;
        }

        return ((v56 & (v50 == 0)) & v51);
      }
    }

    else
    {
      sub_21BB11938(v44, v39);
      if (v48(v44 + v47, 1, v43) != 1)
      {
        v52 = v59;
        (*(v45 + 32))(v59, v44 + v47, v43);
        sub_21BB119A8(&qword_27CDB2640, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v61) = sub_21BB22F7C();

        v53 = *(v45 + 8);
        v53(v52, v43);
        sub_21BB09870(v14, &qword_27CDB2630, &qword_21BB25328);
        v53(v39, v43);
        sub_21BB09870(v44, &qword_27CDB2630, &qword_21BB25328);
        v51 = v61 ^ 1;
        v50 = v62;
        if (v55)
        {
          return ((v56 & (v50 == 0)) & v51);
        }

        return 0;
      }

      sub_21BB09870(v14, &qword_27CDB2630, &qword_21BB25328);

      (*(v45 + 8))(v39, v43);
      v50 = v62;
    }

    sub_21BB09870(v44, &qword_27CDB2638, &qword_21BB25330);
    v51 = 1;
    if (v55)
    {
      return ((v56 & (v50 == 0)) & v51);
    }

    return 0;
  }

  return result;
}

void *sub_21BB0E8AC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CEFFBF0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_21BB0E9C0(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = sub_21BB11330();
  if (v3)
  {
    v4 = [v3 subscriptions];
    if (v4)
    {
      v5 = v4;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v6 = sub_21BB2306C();

      v40[0] = MEMORY[0x277D84F90];
      if (v6 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v8 = 0;
        v9 = v6 & 0xC000000000000001;
        v10 = v6 & 0xFFFFFFFFFFFFFF8;
        v37 = v2;
        while (1)
        {
          if (v9)
          {
            v11 = MEMORY[0x21CEFFBF0](v8, v6);
          }

          else
          {
            if (v8 >= *(v10 + 16))
            {
              goto LABEL_22;
            }

            v11 = *(v6 + 8 * v8 + 32);
          }

          v12 = v11;
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v14 = sub_21BB0B900(v11);
          if (v14)
          {
            v15 = v14;
            v16 = [v14 businessMessagingCapabilities];
            if (v16)
            {
              v17 = v10;
              v18 = v9;
              v19 = v6;
              v20 = v16;
              v21 = [v16 supported];

              if (v21)
              {
                sub_21BB231FC();
                sub_21BB2322C();
                sub_21BB2323C();
                sub_21BB2320C();
              }

              else
              {
              }

              v6 = v19;
              v9 = v18;
              v10 = v17;
              v2 = v37;
              goto LABEL_8;
            }
          }

LABEL_8:
          ++v8;
          if (v13 == i)
          {
            v22 = v40[0];
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

      v22 = MEMORY[0x277D84F90];
LABEL_25:

      if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
      {
        goto LABEL_43;
      }

      for (j = *(v22 + 16); j; j = sub_21BB2325C())
      {
        v24 = 0;
        v25 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
        v38 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x21CEFFBF0](v24, v22);
          }

          else
          {
            if (v24 >= *(v22 + 16))
            {
              goto LABEL_42;
            }

            v28 = *(v22 + 8 * v24 + 32);
          }

          v29 = v28;
          v30 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v31 = *&v2[v25];
          v40[0] = 0;
          if (v39)
          {
            v32 = [v31 enableBusinessMessaging:v29 withError:v40];
          }

          else
          {
            v32 = [v31 disableBusinessMessaging:v29 withError:v40];
          }

          if (v32)
          {
            v33 = v40[0];
          }

          else
          {
            v26 = v40[0];
            v27 = sub_21BB2289C();

            v25 = v38;
            swift_willThrow();
          }

          ++v24;
          if (v30 == j)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        ;
      }

LABEL_44:
    }
  }

  swift_getKeyPath();
  v40[0] = v2;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v40[0] = v2;
  swift_getKeyPath();
  sub_21BB2298C();

  v34 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();
  *&v2[v34] = MEMORY[0x277D84F98];

  swift_getKeyPath();
  sub_21BB2297C();

  v35 = CFNotificationCenterGetDarwinNotifyCenter();
  v36 = sub_21BB22FAC();
  CFNotificationCenterPostNotification(v35, v36, 0, 0, 1u);
}

uint64_t sub_21BB0EE38(uint64_t a1)
{
  result = sub_21BB11330();
  if (result)
  {
    result = [result subscriptions];
    if (result)
    {
      v3 = result;
      sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
      v4 = sub_21BB2306C();

      if (v4 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BB2325C())
      {
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CEFFBF0](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v11 = v7;
          v10 = sub_21BB0EF90(&v11, v1);

          if (v10)
          {

            return 1;
          }

          ++v6;
          if (v9 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      return 0;
    }
  }

  return result;
}

id sub_21BB0EF90(uint64_t *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2648, qword_21BB25338);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BB25230;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 32) = 5456722;
  *(v4 + 40) = 0xE300000000000000;
  *(v4 + 88) = v5;
  *(v4 + 56) = v5;
  *(v4 + 64) = 0xD000000000000023;
  *(v4 + 72) = 0x800000021BB281D0;
  v6 = sub_21BB2305C();

  v7 = [objc_allocWithZone(MEMORY[0x277CC3620]) initWithBundleType_];
  v16[0] = 0;
  v8 = [v3 copyCarrierBundleValue:v2 keyHierarchy:v6 bundleType:v7 error:v16];

  v9 = v16[0];
  if (v8)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v9;
    if (v10)
    {
      v12 = [v10 BOOLValue];

      return v12;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v14 = v16[0];
    v15 = sub_21BB2289C();

    swift_willThrow();
    return 0;
  }
}

uint64_t type metadata accessor for MessagingSettingsProvider(uint64_t a1)
{
  result = qword_27CDB24F0;
  if (!qword_27CDB24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BB0F258(uint64_t a1)
{
  result = sub_21BB229AC();
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

void sub_21BB0F310(void *a1, void *a2)
{
  swift_getKeyPath();
  v61 = v2;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v5 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider__rcsConfigurationBySlotID;
  swift_beginAccess();

  v6 = [a1 slotID];
  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21BB10F34(v7, v6, isUniquelyReferenced_nonNull_native);
  v9 = [a1 slotID];
  swift_getKeyPath();
  v60 = v2;
  sub_21BB2296C();

  v10 = *(v2 + v5);
  if (*(v10 + 16))
  {
    v11 = sub_21BB1090C(v9);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      v14 = sub_21BB0C33C();
      v15 = v14 ^ sub_21BB0C33C();
      if (v15)
      {
        if (qword_27CDB23D0 != -1)
        {
          swift_once();
        }

        v16 = sub_21BB22B0C();
        __swift_project_value_buffer(v16, qword_27CDB24A0);
        v17 = v7;
        v18 = v13;
        v19 = sub_21BB22AEC();
        v20 = sub_21BB230FC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = v13;
          v22 = swift_slowAlloc();
          *v22 = 67109376;
          *(v22 + 4) = sub_21BB0C33C() & 1;

          *(v22 + 8) = 1024;
          *(v22 + 10) = sub_21BB0C33C() & 1;

          _os_log_impl(&dword_21BAF4000, v19, v20, "RCS enabled changing %{BOOL}d -> %{BOOL}d", v22, 0xEu);
          v23 = v22;
          v13 = v21;
          MEMORY[0x21CF00730](v23, -1, -1);
        }

        else
        {

          v19 = v17;
        }
      }

      v34 = [v13 messagingCapabilities];
      v35 = [v7 messagingCapabilities];
      v36 = v35;
      if (v34)
      {
        if (v35)
        {
          sub_21BB094B0(0, &qword_27CDB2618, 0x277CC36A8);
          v37 = sub_21BB2316C();

          if (v37)
          {
            goto LABEL_28;
          }

          goto LABEL_23;
        }

        v36 = v34;
      }

      else if (!v35)
      {
        goto LABEL_28;
      }

LABEL_23:
      if (qword_27CDB23D0 != -1)
      {
        swift_once();
      }

      v38 = sub_21BB22B0C();
      __swift_project_value_buffer(v38, qword_27CDB24A0);
      v39 = sub_21BB22AEC();
      v40 = sub_21BB230FC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_21BAF4000, v39, v40, "RCS messaging capabilities have changed", v41, 2u);
        MEMORY[0x21CF00730](v41, -1, -1);
      }

      v15 = 1;
LABEL_28:
      v42 = [v13 businessMessagingCapabilities];
      v43 = [v7 businessMessagingCapabilities];
      v44 = v43;
      if (v42)
      {
        if (v43)
        {
          sub_21BB094B0(0, &qword_27CDB2610, 0x277CC3678);
          v45 = sub_21BB2316C();

          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_33:
          if ((v15 & 1) == 0)
          {
LABEL_47:

            return;
          }

LABEL_42:
          if (qword_27CDB23D0 != -1)
          {
            swift_once();
          }

          v50 = sub_21BB22B0C();
          __swift_project_value_buffer(v50, qword_27CDB24A0);
          v51 = sub_21BB22AEC();
          v52 = sub_21BB2310C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v60 = v54;
            *v53 = 136315138;
            type metadata accessor for CTSubscriptionSlot(0);
            sub_21BB094B0(0, &qword_27CDB2600, 0x277CC36B8);
            sub_21BB119A8(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot, "-Pqf(I");

            v55 = sub_21BB22F6C();
            v57 = v56;

            v58 = sub_21BB10364(v55, v57, &v60);

            *(v53 + 4) = v58;
            _os_log_impl(&dword_21BAF4000, v51, v52, "RCS system configuration has changed to: %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v54);
            MEMORY[0x21CF00730](v54, -1, -1);
            MEMORY[0x21CF00730](v53, -1, -1);
          }

          sub_21BB0B620(v59);
          goto LABEL_47;
        }

        v44 = v42;
      }

      else if (!v43)
      {
        goto LABEL_33;
      }

LABEL_37:
      if (qword_27CDB23D0 != -1)
      {
        swift_once();
      }

      v46 = sub_21BB22B0C();
      __swift_project_value_buffer(v46, qword_27CDB24A0);
      v47 = sub_21BB22AEC();
      v48 = sub_21BB230FC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_21BAF4000, v47, v48, "RCS business messaging capabilities have changed", v49, 2u);
        MEMORY[0x21CF00730](v49, -1, -1);
      }

      goto LABEL_42;
    }
  }

  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v24 = sub_21BB22B0C();
  __swift_project_value_buffer(v24, qword_27CDB24A0);
  v25 = sub_21BB22AEC();
  v26 = sub_21BB2310C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60 = v28;
    *v27 = 136315138;
    type metadata accessor for CTSubscriptionSlot(0);
    sub_21BB094B0(0, &qword_27CDB2600, 0x277CC36B8);
    sub_21BB119A8(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot, "-Pqf(I");

    v29 = sub_21BB22F6C();
    v31 = v30;

    v32 = sub_21BB10364(v29, v31, &v60);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_21BAF4000, v25, v26, "RCS system configuration has changed to: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x21CF00730](v28, -1, -1);
    MEMORY[0x21CF00730](v27, -1, -1);
  }

  sub_21BB0B620(v33);
}

void sub_21BB0FC30()
{
  v67[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient);
  v67[0] = 0;
  v2 = [v1 getSubscriptionInfoWithError_];
  v3 = v67[0];
  if (!v2)
  {
    v19 = v67[0];
    v20 = sub_21BB2289C();

    swift_willThrow();
    return;
  }

  v4 = v2;
  v5 = v2;
  v6 = v3;
  sub_21BB0B300(v4);
  v7 = sub_21BB11330();
  if (!v7 || (v8 = &off_2782EF000, (v9 = [v7 subscriptionsInUse]) == 0))
  {
LABEL_76:

    return;
  }

  v10 = v9;
  sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
  v11 = sub_21BB2306C();

  v12 = v11 >> 62;
  if (v11 >> 62)
  {
LABEL_82:
    v13 = sub_21BB2325C();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = [v5 *(v8 + 3120)];
  if (!v14)
  {
    goto LABEL_68;
  }

  v15 = v14;
  v16 = sub_21BB2306C();

  v62 = v5;
  if (v16 >> 62)
  {
LABEL_84:
    v17 = sub_21BB2325C();
    v5 = v62;
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 != v17)
  {
    goto LABEL_68;
  }

  if (!v12)
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_68;
    }

    goto LABEL_15;
  }

  v18 = sub_21BB2325C();
  if (!v18)
  {
LABEL_68:

    return;
  }

LABEL_15:
  v21 = 0;
  v64 = v11;
  v65 = v11 & 0xC000000000000001;
  v61 = v11 & 0xFFFFFFFFFFFFFF8;
  v59 = v4;
  v60 = v11 + 32;
  v63 = v18;
  while (1)
  {
    if (v65)
    {
      v22 = MEMORY[0x21CEFFBF0](v21, v11);
    }

    else
    {
      if (v21 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_84;
      }

      v22 = *(v60 + 8 * v21);
    }

    v23 = v22;
    v24 = __OFADD__(v21, 1);
    v25 = v21 + 1;
    if (v24)
    {
      goto LABEL_81;
    }

    v26 = [v5 *(v8 + 3120)];
    v66 = v25;
    if (v26)
    {
      v27 = v26;
      v8 = sub_21BB2306C();

      if (v8 >> 62)
      {
        v28 = sub_21BB2325C();
        if (v28)
        {
LABEL_26:
          v29 = 0;
          v5 = (v8 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x21CEFFBF0](v29, v8);
            }

            else
            {
              if (v29 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_80;
              }

              v30 = *(v8 + 8 * v29 + 32);
            }

            v11 = v30;
            v12 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            v4 = &off_2782EF000;
            v31 = [v30 slotID];
            if (v31 == [v23 slotID])
            {

              goto LABEL_39;
            }

            ++v29;
            if (v12 == v28)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      else
      {
        v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_26;
        }
      }

LABEL_38:

      v11 = 0;
LABEL_39:
      v5 = v62;
    }

    else
    {
      v11 = 0;
    }

    v32 = [v23 label];
    if (v32)
    {
      v33 = v32;
      v34 = sub_21BB22FCC();
      v36 = v35;

      if (!v11)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = 0;
      v36 = 0;
      if (!v11)
      {
        goto LABEL_48;
      }
    }

    v37 = [v11 label];
    if (v37)
    {
      v38 = v37;
      v39 = sub_21BB22FCC();
      v41 = v40;

      if (!v36)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_48:
    v39 = 0;
    v41 = 0;
    if (!v36)
    {
LABEL_46:
      if (v41)
      {
        goto LABEL_47;
      }

      goto LABEL_54;
    }

LABEL_49:
    if (!v41)
    {
      goto LABEL_47;
    }

    if (v34 == v39 && v36 == v41)
    {

      goto LABEL_54;
    }

    v42 = sub_21BB232AC();

    if ((v42 & 1) == 0)
    {
      break;
    }

LABEL_54:
    v43 = [v23 phoneNumber];
    if (v43)
    {
      v44 = v43;
      v45 = sub_21BB22FCC();
      v47 = v46;

      if (!v11)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v45 = 0;
      v47 = 0;
      if (!v11)
      {
        goto LABEL_61;
      }
    }

    v48 = [v11 label];
    if (v48)
    {
      v49 = v48;
      v50 = sub_21BB22FCC();
      v13 = v51;

      if (v47)
      {
        goto LABEL_62;
      }

      goto LABEL_16;
    }

LABEL_61:
    v50 = 0;
    v13 = 0;
    if (v47)
    {
LABEL_62:
      if (!v13)
      {
LABEL_47:

LABEL_71:

        goto LABEL_72;
      }

      if (v45 == v50 && v47 == v13)
      {
      }

      else
      {
        v52 = sub_21BB232AC();

        if ((v52 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_17;
    }

LABEL_16:

    if (v13)
    {

      goto LABEL_71;
    }

LABEL_17:
    v11 = v64;
    v21 = v66;
    v8 = &off_2782EF000;
    if (v66 == v63)
    {
      goto LABEL_68;
    }
  }

LABEL_72:
  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v53 = sub_21BB22B0C();
  __swift_project_value_buffer(v53, qword_27CDB24A0);
  v54 = v5;
  v55 = sub_21BB22AEC();
  v56 = sub_21BB2310C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v58 = v59;
    v5 = v54;
    _os_log_impl(&dword_21BAF4000, v55, v56, "Subscription info has changed to: %@", v57, 0xCu);
    sub_21BB09870(v58, &qword_27CDB25E8, &qword_21BB252C8);
    MEMORY[0x21CF00730](v58, -1, -1);
    MEMORY[0x21CF00730](v57, -1, -1);

    goto LABEL_76;
  }
}

unint64_t sub_21BB10364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21BB10430(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21BB09454(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21BB10430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21BB1053C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21BB231EC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21BB1053C(uint64_t a1, unint64_t a2)
{
  v3 = sub_21BB10588(a1, a2);
  sub_21BB106B8(&unk_282D7BD70);
  return v3;
}

void *sub_21BB10588(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21BB107A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21BB231EC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21BB2302C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21BB107A4(v10, 0);
        result = sub_21BB231BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21BB106B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21BB10818(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21BB107A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB25C8, &unk_21BB252B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21BB10818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB25C8, &unk_21BB252B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_21BB1090C(uint64_t a1)
{
  sub_21BB232DC();
  MEMORY[0x21CEFFD10](a1);
  v2 = sub_21BB232FC();

  return sub_21BB109F0(a1, v2);
}

unint64_t sub_21BB10978(uint64_t a1, uint64_t a2)
{
  sub_21BB232DC();
  sub_21BB2300C();
  v4 = sub_21BB232FC();

  return sub_21BB10A5C(a1, a2, v4);
}

unint64_t sub_21BB109F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21BB10A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21BB232AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21BB10B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2620, &qword_21BB25320);
  v31 = v4;
  result = sub_21BB2327C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_21BB232DC();
      MEMORY[0x21CEFFD10](v20);
      result = sub_21BB232FC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21BB10DA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BB231AC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_21BB232DC();
      MEMORY[0x21CEFFD10](v9);
      result = sub_21BB232FC();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21BB10F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21BB1090C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21BB1107C();
    result = v17;
    goto LABEL_8;
  }

  sub_21BB10B14(v14, a3 & 1);
  result = sub_21BB1090C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for CTSubscriptionSlot(0);
  sub_21BB232CC();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

id sub_21BB1107C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2620, &qword_21BB25320);
  v2 = *v0;
  v3 = sub_21BB2326C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void sub_21BB111D8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = sub_21BB1090C(*(*(a1 + 48) + 8 * v12));
      if (v15)
      {
        v16 = v14;
        sub_21BB094B0(0, &qword_27CDB2600, 0x277CC36B8);
        v17 = *(*(a2 + 56) + 8 * v16);
        v18 = v13;
        v19 = v17;
        LOBYTE(v17) = sub_21BB2316C();

        if (v17)
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21BB11330()
{
  v1 = v0;
  v9[1] = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  v9[0] = v0;
  sub_21BB119A8(&qword_27CDB25F0, type metadata accessor for MessagingSettingsProvider, &unk_21BB25298);
  sub_21BB2296C();

  v2 = OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo;
  if (!*&v0[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo])
  {
    v3 = *&v0[OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider_coreTelephonyClient];
    v9[0] = 0;
    v4 = [v3 getSubscriptionInfoWithError_];
    v5 = v9[0];
    if (!v4)
    {
      v6 = v5;
      v7 = sub_21BB2289C();

      swift_willThrow();
      v4 = 0;
    }

    sub_21BB0B300(v4);
  }

  swift_getKeyPath();
  v9[0] = v1;
  sub_21BB2296C();

  return *&v1[v2];
}

void sub_21BB114B8(char a1, id a2)
{
  v3 = [a2 slotID];
  if (v3 == 2)
  {
    v4 = 0x62616E4532534D4DLL;
  }

  else
  {
    v4 = 0x6C62616E45534D4DLL;
  }

  if (v3 == 2)
  {
    v5 = 0xEB0000000064656CLL;
  }

  else
  {
    v5 = 0xEA00000000006465;
  }

  if (qword_27CDB23D0 != -1)
  {
    swift_once();
  }

  v6 = sub_21BB22B0C();
  __swift_project_value_buffer(v6, qword_27CDB24A0);

  v7 = sub_21BB22AEC();
  v8 = sub_21BB230FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    *(v9 + 10) = sub_21BB10364(v4, v5, &v22);
    _os_log_impl(&dword_21BAF4000, v7, v8, "Setting MMS enabled: %{BOOL}d for key: %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF00730](v10, -1, -1);
    MEMORY[0x21CF00730](v9, -1, -1);
  }

  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_21BB22FAC();
  v21 = [v11 initWithSuiteName_];

  if (v21)
  {
    v13 = sub_21BB22FAC();

    [v21 setBool:a1 & 1 forKey:v13];

    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v14)
    {
      v15 = v14;
      v16 = sub_21BB22AEC();
      v17 = sub_21BB230FC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21BAF4000, v16, v17, "Notifying observers of MMS enabled change", v18, 2u);
        MEMORY[0x21CF00730](v18, -1, -1);
      }

      v19 = qword_27CDB23E0;
      v20 = v15;
      if (v19 != -1)
      {
        swift_once();
      }

      CFNotificationCenterPostNotification(v20, qword_27CDB24C0, 0, 0, 1u);
    }
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

_OWORD *sub_21BB118AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_21BB118BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo);
  *(v1 + OBJC_IVAR____TtC19AppSystemSettingsUI25MessagingSettingsProvider___cachedSubscriptionInfo) = v2;
  v4 = v2;
}

uint64_t sub_21BB11938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2630, &qword_21BB25328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB119A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21BB11A08(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21BB2293C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = OBJC_IVAR____TtC19AppSystemSettingsUI21MMSMessagingSpecifier_specifiersProvider;
  swift_unknownObjectWeakInit();
  v10 = sub_21BB0C668();
  v11 = v10;
  v12 = v10 >> 62;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:

    MEMORY[0x21CF007F0](&v3[v9]);
    swift_deallocPartialClassInstance();
    return;
  }

  if (!sub_21BB2325C())
  {
    goto LABEL_23;
  }

LABEL_3:
  *&v3[OBJC_IVAR____TtC19AppSystemSettingsUI21MMSMessagingSpecifier_provider] = a1;
  swift_unknownObjectWeakAssign();
  if (v12)
  {
    v13 = sub_21BB2325C();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = a1;
  if (v13 == 1)
  {
    sub_21BB22F9C();
    if (qword_27CDB23D8 != -1)
    {
      swift_once();
    }

    v15 = qword_27CDB24B8;
    sub_21BB2292C();
    sub_21BB22FDC();
    v16 = sub_21BB22FAC();

    v28.receiver = v3;
    v28.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v28, sel_initWithName_target_set_get_detail_cell_edit_, v16, 0, sel_setMMSEnabled_specifier_, sel_isMMSEnabledFor_, 0, 6, 0);

    v18 = a2;
    if (!v17)
    {

      goto LABEL_20;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v27 = v17;
      v21 = MEMORY[0x21CEFFBF0](0, v11);
      goto LABEL_13;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v11 + 32);
      v20 = v17;
      v21 = v19;
LABEL_13:
      v22 = v21;

      [v17 setUserInfo_];

LABEL_18:
      [v17 setTarget_];

LABEL_20:
      return;
    }

    __break(1u);
  }

  else
  {

    sub_21BB22F9C();
    if (qword_27CDB23D8 != -1)
    {
      swift_once();
    }

    v23 = qword_27CDB24B8;
    sub_21BB2292C();
    sub_21BB22FDC();
    v24 = sub_21BB22FAC();

    type metadata accessor for MMSMessagingViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29.receiver = v3;
    v29.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v29, sel_initWithName_target_set_get_detail_cell_edit_, v24, 0, 0, 0, ObjCClassFromMetadata, 2, 0);

    v18 = a2;
    if (v26)
    {

      v17 = v26;
      [v17 setUserInfo_];
      goto LABEL_18;
    }
  }
}

uint64_t sub_21BB11E70(void *a1)
{
  if ([a1 userInfo])
  {
    sub_21BB2319C();
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
    sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
    if (swift_dynamicCast())
    {
      sub_21BB0C894(v3);
      v1 = sub_21BB2309C();

      return v1;
    }
  }

  else
  {
    sub_21BB122FC(v6);
  }

  sub_21BB094B0(0, &qword_27CDB25D8, 0x277CCABB0);
  return sub_21BB2315C();
}

void sub_21BB1221C(void *a1, id a2)
{
  if ([a2 userInfo])
  {
    sub_21BB2319C();
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
    sub_21BB094B0(0, &qword_27CDB25E0, 0x277CC3798);
    if (swift_dynamicCast())
    {
      sub_21BB114B8([a1 BOOLValue], v3);
    }
  }

  else
  {
    sub_21BB122FC(v6);
  }
}

uint64_t sub_21BB122FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB25D0, &qword_21BB25060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BB12364()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = [v0 specifier];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 userInfo];

  if (v4)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_21BB09870(&v22, &qword_27CDB25D0, &qword_21BB25060);
    return;
  }

  type metadata accessor for MessagingSettingsProvider(0);
  if (swift_dynamicCast())
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(&v22 + 1) = sub_21BB12CC8;
    *&v23 = v5;
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26C0, &qword_21BB253C8));
    v7 = v19;
    v8 = sub_21BB22CEC();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 addSubview_];

        v13 = [v1 view];
        if (v13)
        {
          v14 = v13;
          [v13 bounds];
          v16 = v15;
          v18 = v17;

          [v10 setFrame_];
          [v10 setAutoresizingMask_];
          [v1 addChildViewController_];
          [v8 didMoveToParentViewController_];

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }
}

void sub_21BB125E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong specifier];

    if (v3)
    {
      type metadata accessor for MMSMessagingSpecifier();
      if (swift_dynamicCastClass())
      {
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4)
        {
          v5 = v4;
          v6 = [v4 delegate];
          if (v6)
          {
            [v6 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_21BB1278C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_21BB2293C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v5 - 8);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_setSpecifier_, a1);
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for MessagingSettingsProvider(0);
    if (swift_dynamicCast())
    {

      sub_21BB22F9C();
      if (qword_27CDB23D8 != -1)
      {
        swift_once();
      }

      v6 = qword_27CDB24B8;
      sub_21BB2292C();
      sub_21BB22FDC();
      v7 = sub_21BB22FAC();

      [v1 setTitle_];
    }
  }

  else
  {
    sub_21BB09870(v11, &qword_27CDB25D0, &qword_21BB25060);
  }
}

uint64_t sub_21BB12CD0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26C8, &qword_21BB25458);
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26D0, &qword_21BB25460);
  sub_21BB13964();
  sub_21BB22D3C();
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  v10 = &v8[*(v6 + 36)];
  *v10 = sub_21BB13AD4;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  v19 = a1;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  type metadata accessor for MessagingSettingsProvider(0);
  sub_21BB13B1C();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider, MEMORY[0x277D85380]);
  v12 = a1;
  swift_retain_n();
  v13 = v12;
  sub_21BB22DCC();

  return sub_21BB09870(v8, &qword_27CDB26C8, &qword_21BB25458);
}

uint64_t sub_21BB12EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_21BB1330C(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB26E8, &qword_21BB25468);
  sub_21BB139FC();
  sub_21BB22E8C();
}

uint64_t sub_21BB13020(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_21BB0C668();
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = a1;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2720, &qword_21BB254A8);
  v10 = sub_21BB13E04(&qword_27CDB2728, &qword_27CDB2720, &qword_21BB254A8, MEMORY[0x277D83980]);
  v11 = sub_21BB13C8C(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot, "-Pqf(I");
  v12 = sub_21BB13A80();
  sub_21BB22E7C(&v14, KeyPath, sub_21BB13C80, v7, v9, &type metadata for MMSToggleView, v10, v11, v12);
}

id sub_21BB131E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 slotID];
  *a2 = result;
  return result;
}

void sub_21BB13214(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2;
  v7 = v5;
  v8 = [v7 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BB22FCC();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *a3 = v10;
  a3[1] = v12;
  a3[2] = v6;
  a3[3] = v7;
}

uint64_t sub_21BB1330C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v5 = sub_21BB22D6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_21BB134FC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_21BB135BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_21BB230CC();
  swift_bridgeObjectRetain_n();
  v8 = a3;
  v9 = a4;
  v10 = sub_21BB230BC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v8;
  v11[7] = v9;

  v13 = v8;
  v14 = v9;
  v15 = sub_21BB230BC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v12;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v13;
  v16[7] = v14;
  sub_21BB22E6C();
  sub_21BB13BE0();
  return sub_21BB22E3C();
}

uint64_t sub_21BB13724@<X0>(void *a1@<X5>, _BYTE *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_21BB0C894(a1);

  *a2 = v4 & 1;
  return result;
}

uint64_t sub_21BB137D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB114B8(v9, a8);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21BB138A4(uint64_t *a1, int a2)
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

uint64_t sub_21BB138EC(uint64_t result, int a2, int a3)
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

unint64_t sub_21BB13964()
{
  result = qword_27CDB26D8;
  if (!qword_27CDB26D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26D0, &qword_21BB25460);
    sub_21BB139FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26D8);
  }

  return result;
}

unint64_t sub_21BB139FC()
{
  result = qword_27CDB26E0;
  if (!qword_27CDB26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26E8, &qword_21BB25468);
    sub_21BB13A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26E0);
  }

  return result;
}

unint64_t sub_21BB13A80()
{
  result = qword_27CDB26F0;
  if (!qword_27CDB26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26F0);
  }

  return result;
}

unint64_t sub_21BB13B1C()
{
  result = qword_27CDB26F8;
  if (!qword_27CDB26F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB26C8, &qword_21BB25458);
    sub_21BB13E04(&qword_27CDB2700, &qword_27CDB2708, &unk_21BB25470, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB26F8);
  }

  return result;
}

unint64_t sub_21BB13BE0()
{
  result = qword_27CDB2718;
  if (!qword_27CDB2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2718);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21BB13C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BB13CE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21BB13D28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21BB13E04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id sub_21BB13E58(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21BB2293C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = OBJC_IVAR____TtC19AppSystemSettingsUI21RCSMessagingSpecifier_specifiersProvider;
  swift_unknownObjectWeakInit();
  v10 = sub_21BB0BC34();
  if (v10 >> 62)
  {
    v17 = sub_21BB2325C();

    if (v17)
    {
      goto LABEL_3;
    }

LABEL_9:

    MEMORY[0x21CF007F0](&v3[v9]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_unknownObjectWeakAssign();
  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v12 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  v13 = sub_21BB22FAC();

  type metadata accessor for RCSMessagingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, sel_initWithName_target_set_get_detail_cell_edit_, v13, 0, 0, 0, ObjCClassFromMetadata, 2, 0);

  if (v15)
  {

    v16 = v15;
    [v16 setTarget_];
    [v16 setUserInfo_];
  }

  return v15;
}

void sub_21BB141C8()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = [v0 specifier];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v2 userInfo];

  if (v4)
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_21BB09870(&v22, &qword_27CDB25D0, &qword_21BB25060);
    return;
  }

  type metadata accessor for MessagingSettingsProvider(0);
  if (swift_dynamicCast())
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(&v22 + 1) = sub_21BB14B2C;
    *&v23 = v5;
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2748, "HM"));
    v7 = v19;
    v8 = sub_21BB22CEC();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 addSubview_];

        v13 = [v1 view];
        if (v13)
        {
          v14 = v13;
          [v13 bounds];
          v16 = v15;
          v18 = v17;

          [v10 setFrame_];
          [v10 setAutoresizingMask_];
          [v1 addChildViewController_];
          [v8 didMoveToParentViewController_];

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }
}

void sub_21BB1444C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong specifier];

    if (v3)
    {
      type metadata accessor for RCSMessagingSpecifier();
      if (swift_dynamicCastClass())
      {
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4)
        {
          v5 = v4;
          v6 = [v4 delegate];
          if (v6)
          {
            [v6 systemSettingsSpecifiersProviderDidReloadSpecifiers_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_21BB145F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_21BB2293C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v5 - 8);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_setSpecifier_, a1);
  if ([a1 userInfo])
  {
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for MessagingSettingsProvider(0);
    if (swift_dynamicCast())
    {

      sub_21BB22F9C();
      if (qword_27CDB23D8 != -1)
      {
        swift_once();
      }

      v6 = qword_27CDB24B8;
      sub_21BB2292C();
      sub_21BB22FDC();
      v7 = sub_21BB22FAC();

      [v1 setTitle_];
    }
  }

  else
  {
    sub_21BB09870(v11, &qword_27CDB25D0, &qword_21BB25060);
  }
}

uint64_t sub_21BB14B34(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2750, &qword_21BB25678);
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2758, &qword_21BB25680);
  sub_21BB13E04(&qword_27CDB2760, &qword_27CDB2758, &qword_21BB25680, MEMORY[0x277CE14C0]);
  sub_21BB22D3C();
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  v10 = &v8[*(v6 + 36)];
  *v10 = sub_21BB17560;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  v19 = a1;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  type metadata accessor for MessagingSettingsProvider(0);
  sub_21BB175A8();
  sub_21BB13C8C(&qword_27CDB2710, type metadata accessor for MessagingSettingsProvider, MEMORY[0x277D85380]);
  v12 = a1;
  swift_retain_n();
  v13 = v12;
  sub_21BB22DCC();

  return sub_21BB09870(v8, &qword_27CDB2750, &qword_21BB25678);
}

uint64_t sub_21BB14D7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2780, &qword_21BB25690);
  v42 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v41 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2788, &qword_21BB25698);
  MEMORY[0x28223BE20](v47);
  v7 = &v40 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2790, &qword_21BB256A0);
  v8 = MEMORY[0x28223BE20](v44);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2798, &qword_21BB256A8);
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27A0, &qword_21BB256B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  sub_21BB230CC();
  v46 = sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a1;
  v22 = sub_21BB0BC34();
  if (v22 >> 62)
  {
    v23 = sub_21BB2325C();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = &v40;
  MEMORY[0x28223BE20](v24);
  v25 = v50;
  v26 = v51;
  *(&v40 - 4) = v21;
  *(&v40 - 3) = v25;
  v38 = v26;
  if (v23 == 1)
  {
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_21BB15628(v12);

    sub_21BB176F0();
    sub_21BB17744();
    sub_21BB22EAC();
    v27 = v40;
    v28 = v45;
    (*(v40 + 16))(v7, v14, v45);
    swift_storeEnumTagMultiPayload();
    sub_21BB177FC();
    sub_21BB17894();
    sub_21BB22CFC();
    (*(v27 + 8))(v14, v28);
  }

  else
  {
    sub_21BB16094(v52);
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_21BB15628(v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27A8, &qword_21BB256B8);
    v29 = sub_21BB1766C();
    v30 = sub_21BB17744();
    v38 = v29;
    v39 = v30;
    v31 = v41;
    sub_21BB22E9C();
    v32 = v42;
    v33 = v48;
    (*(v42 + 16))(v7, v31, v48);
    swift_storeEnumTagMultiPayload();
    sub_21BB177FC();
    sub_21BB17894();
    sub_21BB22CFC();
    (*(v32 + 8))(v31, v33);
  }

  sub_21BB17ABC(v20, v18, &qword_27CDB27A0, &qword_21BB256B0);
  v34 = v49;
  sub_21BB17ABC(v18, v49, &qword_27CDB27A0, &qword_21BB256B0);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27E8, &qword_21BB256C8) + 48);
  v36 = v21;
  sub_21BB09870(v20, &qword_27CDB27A0, &qword_21BB256B0);
  *(v34 + v35) = v36;

  sub_21BB09870(v18, &qword_27CDB27A0, &qword_21BB256B0);
}

uint64_t sub_21BB15400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21BB2293C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CDB24B8;
  sub_21BB2292C();
  v7 = sub_21BB22FDC();
  v9 = v8;
  v10 = a1;
  result = sub_21BB0BC34();
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x21CEFFBF0](0, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v13 = v12;

    *a2 = v7;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BB15628@<X0>(uint64_t a2@<X8>)
{
  v2 = sub_21BB2293C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDB24B8;
  sub_21BB2292C();
  v5 = v4;
  v48 = sub_21BB22FDC();
  v49 = v6;
  sub_21BB22F9C();
  sub_21BB2292C();
  v47 = sub_21BB22FDC();
  v8 = v7;
  sub_21BB22F9C();
  sub_21BB2292C();
  v9 = sub_21BB22FDC();
  v11 = v10;
  v46 = v5;
  if (sub_21BB0EE38(v9))
  {
    sub_21BB22F9C();
    v12 = v5;
    sub_21BB2292C();
    v13 = v12;
    sub_21BB22FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27F0, &qword_21BB256D0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21BB25590;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v16 = sub_21BB17938();
    *(v14 + 64) = v16;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
    sub_21BB22F9C();
    sub_21BB2292C();
    v17 = sub_21BB22FDC();
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v17;
    *(v14 + 80) = v18;
    MEMORY[0x21CEFFA40](v47, v8);

    MEMORY[0x21CEFFA40](10333, 0xE200000000000000);
    MEMORY[0x21CEFFA40](v48, v49);

    MEMORY[0x21CEFFA40](41, 0xE100000000000000);
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 112) = 91;
    *(v14 + 120) = 0xE100000000000000;
  }

  else
  {
    sub_21BB22F9C();
    v19 = v5;
    sub_21BB2292C();
    sub_21BB22FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27F0, &qword_21BB256D0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21BB25230;
    *(v20 + 56) = MEMORY[0x277D837D0];
    v21 = sub_21BB17938();
    *(v20 + 64) = v21;
    *(v20 + 32) = v9;
    *(v20 + 40) = v11;
    MEMORY[0x21CEFFA40](v47, v8);

    MEMORY[0x21CEFFA40](10333, 0xE200000000000000);
    MEMORY[0x21CEFFA40](v48, v49);

    MEMORY[0x21CEFFA40](41, 0xE100000000000000);
    *(v20 + 96) = MEMORY[0x277D837D0];
    *(v20 + 104) = v21;
    *(v20 + 72) = 91;
    *(v20 + 80) = 0xE100000000000000;
  }

  sub_21BB22FBC();

  v22 = sub_21BB0DF64();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 label];

    if (v24)
    {
      v50 = sub_21BB22FCC();
      v26 = v25;

      sub_21BB22F9C();
      v27 = v46;
      sub_21BB2292C();
      v28 = v27;
      v29 = sub_21BB22FDC();
      MEMORY[0x21CEFFA40](v29);

      MEMORY[0x21CEFFA40](10333, 0xE200000000000000);
      MEMORY[0x21CEFFA40](0xD000000000000031, 0x800000021BB284F0);
      MEMORY[0x21CEFFA40](41, 0xE100000000000000);
      sub_21BB22F9C();
      sub_21BB2292C();
      sub_21BB22FDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27F0, &qword_21BB256D0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21BB25230;
      v31 = MEMORY[0x277D837D0];
      *(v30 + 56) = MEMORY[0x277D837D0];
      v32 = sub_21BB17938();
      *(v30 + 32) = v50;
      *(v30 + 40) = v26;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 64) = v32;
      *(v30 + 72) = 91;
      *(v30 + 80) = 0xE100000000000000;
      v33 = sub_21BB22FBC();
      v35 = v34;

      MEMORY[0x21CEFFA40](v33, v35);

      MEMORY[0x21CEFFA40](2570, 0xE200000000000000);
    }
  }

  sub_21BB22CDC();
  v36 = sub_21BB22D5C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  KeyPath = swift_getKeyPath();
  v44 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2790, &qword_21BB256A0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB27D0, &qword_21BB256C0);
  result = sub_21BB22BAC();
  *v44 = KeyPath;
  *a2 = v36;
  *(a2 + 8) = v38;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  return result;
}

uint64_t sub_21BB15DDC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_21BB0BC34();
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = a1;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2720, &qword_21BB254A8);
  v10 = sub_21BB13E04(&qword_27CDB2728, &qword_27CDB2720, &qword_21BB254A8, MEMORY[0x277D83980]);
  v11 = sub_21BB13C8C(&qword_27CDB2608, type metadata accessor for CTSubscriptionSlot, "-Pqf(I");
  v12 = sub_21BB176F0();
  sub_21BB22E7C(&v14, KeyPath, sub_21BB17B24, v7, v9, &type metadata for RCSToggleView, v10, v11, v12);
}

void sub_21BB15F9C(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2;
  v7 = v5;
  v8 = [v7 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BB22FCC();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *a3 = v10;
  a3[1] = v12;
  a3[2] = v6;
  a3[3] = v7;
}

uint64_t sub_21BB16094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v5 = sub_21BB22D6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_21BB16284(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_21BB16338(uint64_t a1)
{
  v2 = sub_21BB22BBC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BB22C8C();
}

id sub_21BB16400()
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_21BB228CC();
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v0 != 0xD000000000000013 || v1 != 0x800000021BB285E0)
  {
    v2 = sub_21BB232AC();

    if (v2)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_21BB22B8C();
    goto LABEL_11;
  }

LABEL_8:
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_21BB228BC();
  sub_21BB1798C(MEMORY[0x277D84F90]);
  v6 = sub_21BB22F3C();

  [v4 openSensitiveURL:v5 withOptions:v6];

  sub_21BB22B9C();
LABEL_11:
}

uint64_t sub_21BB165C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2810, &qword_21BB25870);
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v29 - v10;
  sub_21BB230CC();

  v12 = a3;
  v13 = a4;
  v14 = sub_21BB230BC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v12;
  v15[7] = v13;

  v17 = v12;
  v18 = v13;
  v19 = sub_21BB230BC();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v16;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = v17;
  v20[7] = v18;
  sub_21BB22E6C();
  v31 = a1;
  v32 = a2;
  v33 = v17;
  v34 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2818, &qword_21BB25878);
  sub_21BB13E04(&qword_27CDB2820, &qword_27CDB2818, &qword_21BB25878, MEMORY[0x277CE14C0]);
  sub_21BB22E2C();
  v21 = sub_21BB0B900(v18);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 featureDisabledByProfile];
  }

  else
  {
    v23 = 0;
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v30;
  (*(v9 + 32))(v30, v11, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2828, &qword_21BB258B0);
  v28 = (v26 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_21BB17BB4;
  v28[2] = v25;
  return result;
}

void sub_21BB168A8(void *a1@<X5>, _BYTE *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_21BB0B900(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BB0C33C();

    v7 = v6 & 1;
  }

  else
  {

    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_21BB1697C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB0C420(v9, a8);
}

uint64_t sub_21BB16A34@<X0>(uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB13BE0();

  v8 = sub_21BB22D6C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21BB17BBC(a3, a4);
  if (v15)
  {
    v16 = sub_21BB22D6C();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    sub_21BB17DD4(v16, v17, v21 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v22 = 0;
    v20 = 0;
  }

  v23 = v12 & 1;
  sub_21BB17DD4(v8, v10, v23);

  sub_21BB17DE4(v16, v18, v22, v20);
  sub_21BB17E28(v16, v18, v22, v20);
  *a5 = v8;
  *(a5 + 8) = v10;
  *(a5 + 16) = v23;
  *(a5 + 24) = v14;
  *(a5 + 32) = v16;
  *(a5 + 40) = v18;
  *(a5 + 48) = v22;
  *(a5 + 56) = v20;
  sub_21BB17E28(v16, v18, v22, v20);
  sub_21BB17E6C(v8, v10, v23);
}

uint64_t sub_21BB16C14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  v4 = MEMORY[0x277D85700];
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  v6 = sub_21BB230BC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v8 = v5;
  v9 = sub_21BB230BC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v8;
  sub_21BB22E6C();
  sub_21BB22E2C();
  LOBYTE(v9) = sub_21BB0C0F0();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = (v9 & 1) == 0;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2838, &unk_21BB258C0);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_21BB181C0;
  v14[2] = v12;
  return result;
}

uint64_t sub_21BB16E10@<X0>(_BYTE *a1@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_21BB0CE8C();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_21BB16EBC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB0E9C0(v1);
}

uint64_t sub_21BB16F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v5 = sub_21BB22D6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_21BB1715C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BB2293C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21BB22F9C();
  if (qword_27CDB23D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDB24B8;
  sub_21BB2292C();
  sub_21BB22FDC();
  sub_21BB13BE0();
  v5 = sub_21BB22D6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_21BB1734C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2830, &qword_21BB258B8);
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = *v1;
  v7 = sub_21BB0CCC8();
  if (v7)
  {
    MEMORY[0x28223BE20](v7);
    *(&v10 - 2) = v6;
    sub_21BB1715C(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2838, &unk_21BB258C0);
    sub_21BB17E84();
    sub_21BB22EAC();
    (*(v11 + 32))(a1, v5, v3);
    return (*(v11 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v9 = *(v11 + 56);

    return v9(a1, 1, 1, v3);
  }
}

unint64_t sub_21BB175A8()
{
  result = qword_27CDB2768;
  if (!qword_27CDB2768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2750, &qword_21BB25678);
    sub_21BB13E04(&qword_27CDB2770, &qword_27CDB2778, &qword_21BB25688, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2768);
  }

  return result;
}

unint64_t sub_21BB1766C()
{
  result = qword_27CDB27B0;
  if (!qword_27CDB27B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB27A8, &qword_21BB256B8);
    sub_21BB176F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27B0);
  }

  return result;
}

unint64_t sub_21BB176F0()
{
  result = qword_27CDB27B8;
  if (!qword_27CDB27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27B8);
  }

  return result;
}

unint64_t sub_21BB17744()
{
  result = qword_27CDB27C0;
  if (!qword_27CDB27C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2790, &qword_21BB256A0);
    sub_21BB13E04(&qword_27CDB27C8, &qword_27CDB27D0, &qword_21BB256C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27C0);
  }

  return result;
}

unint64_t sub_21BB177FC()
{
  result = qword_27CDB27D8;
  if (!qword_27CDB27D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2798, &qword_21BB256A8);
    sub_21BB176F0();
    sub_21BB17744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27D8);
  }

  return result;
}

unint64_t sub_21BB17894()
{
  result = qword_27CDB27E0;
  if (!qword_27CDB27E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2780, &qword_21BB25690);
    sub_21BB1766C();
    sub_21BB17744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27E0);
  }

  return result;
}

unint64_t sub_21BB17938()
{
  result = qword_27CDB27F8;
  if (!qword_27CDB27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB27F8);
  }

  return result;
}

unint64_t sub_21BB1798C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2800, &qword_21BB25708);
    v3 = sub_21BB2328C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BB17ABC(v4, &v13, &qword_27CDB2808, &unk_21BB25710);
      v5 = v13;
      v6 = v14;
      result = sub_21BB10978(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21BB118AC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21BB17ABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_21BB17BBC(uint64_t a1, void *a2)
{
  v3 = sub_21BB2293C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_21BB22F8C();
  MEMORY[0x28223BE20](v4 - 8);
  result = sub_21BB0B900(a2);
  if (result)
  {
    v6 = result;
    v7 = sub_21BB0B900(a2);
    if (!v7 || (v8 = v7, v9 = [v7 featureDisabledByProfile], v8, (v9 & 1) == 0))
    {
      if ((sub_21BB0C33C() & 1) == 0)
      {

        return 0;
      }

      v10 = [v6 messagingCapabilities];
      if (v10)
      {
        v11 = v10;

        return 0;
      }
    }

    sub_21BB22F9C();
    if (qword_27CDB23D8 != -1)
    {
      swift_once();
    }

    v12 = qword_27CDB24B8;
    sub_21BB2292C();
    v13 = sub_21BB22FDC();

    return v13;
  }

  return result;
}

uint64_t sub_21BB17DD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21BB17DE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BB17DD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BB17E28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BB17E6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BB17E6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21BB17E84()
{
  result = qword_27CDB2840;
  if (!qword_27CDB2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2838, &unk_21BB258C0);
    sub_21BB13E04(&qword_27CDB2730, &qword_27CDB2738, qword_21BB25540, MEMORY[0x277CDF068]);
    sub_21BB13E04(&qword_27CDB2848, &qword_27CDB2850, &qword_21BB258D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2840);
  }

  return result;
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_21BB17FC0()
{
  result = qword_27CDB2858;
  if (!qword_27CDB2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2828, &qword_21BB258B0);
    sub_21BB13E04(&qword_27CDB2860, &qword_27CDB2810, &qword_21BB25870, MEMORY[0x277CDF068]);
    sub_21BB13E04(&qword_27CDB2848, &qword_27CDB2850, &qword_21BB258D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2858);
  }

  return result;
}

unint64_t sub_21BB180A4()
{
  result = qword_27CDB2868;
  if (!qword_27CDB2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2870, &qword_21BB258D8);
    sub_21BB18128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2868);
  }

  return result;
}

unint64_t sub_21BB18128()
{
  result = qword_27CDB2878;
  if (!qword_27CDB2878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2830, &qword_21BB258B8);
    sub_21BB17E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2878);
  }

  return result;
}

uint64_t type metadata accessor for AULinkSpecifierView_v1(uint64_t a1)
{
  result = qword_27CDB2888;
  if (!qword_27CDB2888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB18238(uint64_t a1)
{
  sub_21BB182BC(319);
  if (v1 <= 0x3F)
  {
    sub_21BB18314(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BB182BC(uint64_t a1)
{
  if (!qword_27CDB2898)
  {
    sub_21BB22CCC();
    v1 = sub_21BB22B7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB2898);
    }
  }
}

void sub_21BB18314(uint64_t a1)
{
  if (!qword_27CDB28A0)
  {
    type metadata accessor for AUSpecifier();
    sub_21BB1A65C(&qword_27CDB28A8, type metadata accessor for AUSpecifier, &unk_21BB25A78);
    v1 = sub_21BB22C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB28A0);
    }
  }
}

uint64_t sub_21BB183C4@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28B0, &qword_21BB25978);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v56 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28B8, &qword_21BB25980);
  MEMORY[0x28223BE20](v68);
  v71 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28C0, &qword_21BB25988);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28C8, &qword_21BB25990);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v10;
  v11 = sub_21BB22ECC();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28D0, &qword_21BB25998);
  MEMORY[0x28223BE20](v77);
  v69 = &v56 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28D8, &qword_21BB259A0);
  MEMORY[0x28223BE20](v75);
  v76 = &v56 - v14;
  v57 = sub_21BB22A8C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21BB22A6C();
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28E0, &qword_21BB259A8);
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v18 = &v56 - v17;
  v19 = sub_21BB22A9C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v26 = sub_21BB22CCC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  sub_21BB1A144(v29);
  sub_21BB22C5C();
  (*(v27 + 8))(v29, v26);
  (*(v20 + 104))(v23, *MEMORY[0x277D40280], v19);
  sub_21BB1A65C(&qword_27CDB28E8, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_21BB2303C();
  sub_21BB2303C();
  v31 = *(v20 + 8);
  v31(v23, v19);
  v32 = (v31)(v25, v19);
  if (v79 == v80)
  {
    MEMORY[0x28223BE20](v32);
    *(&v56 - 2) = v1;
    sub_21BB230CC();
    sub_21BB230BC();
    sub_21BB230AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v33 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1(0) + 20) + 8);
    swift_beginAccess();
    v34 = *(v33 + 16);
    sub_21BB22A7C();
    sub_21BB22A5C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28F0, &qword_21BB259B0);
    sub_21BB1A358();
    sub_21BB1A65C(&qword_27CDB2968, MEMORY[0x277D40248], MEMORY[0x277D40240]);
    sub_21BB22BDC();
    v35 = v65;
    v36 = v74;
    (*(v65 + 16))(v76, v18, v74);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2950, &qword_27CDB28E0, &qword_21BB259A8, MEMORY[0x277CDD938]);
    sub_21BB1A544();
    sub_21BB22CFC();
    return (*(v35 + 8))(v18, v36);
  }

  else
  {
    v38 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1(0) + 20) + 8);
    v39 = v64;
    sub_21BB1AA18(v64);
    v41 = v66;
    v40 = v67;
    v42 = v30;
    if ((*(v66 + 48))(v39, 1, v67) == 1)
    {
      sub_21BB09870(v39, &qword_27CDB28C8, &qword_21BB25990);
      swift_beginAccess();
      v43 = *(v38 + 16);
      v44 = v60;
      sub_21BB22A7C();
      v45 = (*(v56 + 56))(v44, 0, 1, v57);
      MEMORY[0x28223BE20](v45);
      *(&v56 - 2) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28F0, &qword_21BB259B0);
      sub_21BB1A358();
      sub_21BB1A65C(&qword_27CDB2940, MEMORY[0x277D40250], MEMORY[0x277D40258]);
      v46 = v70;
      sub_21BB22BEC();
      v47 = v72;
      v48 = v73;
      (*(v72 + 16))(v71, v46, v73);
      swift_storeEnumTagMultiPayload();
      sub_21BB13E04(&qword_27CDB2948, &qword_27CDB28C0, &qword_21BB25988, MEMORY[0x277CDD938]);
      v49 = v69;
      sub_21BB22CFC();
      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v50 = v59;
      (*(v41 + 32))(v59, v39, v40);
      v51 = v58;
      (*(v41 + 16))(v58, v50, v40);
      v52 = (*(v41 + 56))(v51, 0, 1, v40);
      MEMORY[0x28223BE20](v52);
      *(&v56 - 2) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB28F0, &qword_21BB259B0);
      sub_21BB1A358();
      sub_21BB1A65C(&qword_27CDB2960, MEMORY[0x277D4D798], MEMORY[0x277D4D7A0]);
      v53 = v70;
      sub_21BB22BEC();
      v54 = v72;
      v55 = v73;
      (*(v72 + 16))(v71, v53, v73);
      swift_storeEnumTagMultiPayload();
      sub_21BB13E04(&qword_27CDB2948, &qword_27CDB28C0, &qword_21BB25988, MEMORY[0x277CDD938]);
      v49 = v69;
      sub_21BB22CFC();
      (*(v54 + 8))(v53, v55);
      (*(v41 + 8))(v50, v40);
    }

    sub_21BB17ABC(v49, v76, &qword_27CDB28D0, &qword_21BB25998);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2950, &qword_27CDB28E0, &qword_21BB259A8, MEMORY[0x277CDD938]);
    sub_21BB1A544();
    sub_21BB22CFC();
    return sub_21BB09870(v49, &qword_27CDB28D0, &qword_21BB25998);
  }
}

uint64_t sub_21BB190E8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2918, &unk_21BB259C0);
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2970, &qword_21BB259D8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2908, &qword_21BB259B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1(0) + 20) + 8);
  swift_beginAccess();
  v12 = [*(v11 + 16) au_prefersSubtitleAppearance];
  v21 = v1;
  v20 = v1;
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2978, &unk_21BB259E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2980, &unk_21BB260B0);
    sub_21BB13E04(&qword_27CDB2988, &qword_27CDB2978, &unk_21BB259E0, MEMORY[0x277CE14C0]);
    sub_21BB1A710();
    sub_21BB22DFC();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2900, &qword_27CDB2908, &qword_21BB259B8, MEMORY[0x277CDEFF0]);
    sub_21BB1A410();
    sub_21BB22CFC();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2928, &unk_21BB260A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2938, &qword_21BB259D0);
    v14 = MEMORY[0x277CDEFF0];
    sub_21BB13E04(&qword_27CDB2920, &qword_27CDB2928, &unk_21BB260A0, MEMORY[0x277CDEFF0]);
    sub_21BB1A4C8();
    sub_21BB22BCC();
    v15 = v19;
    (*(v2 + 16))(v6, v4, v19);
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB2900, &qword_27CDB2908, &qword_21BB259B8, v14);
    sub_21BB1A410();
    sub_21BB22CFC();
    return (*(v2 + 8))(v4, v15);
  }
}

uint64_t sub_21BB19564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for AULinkSpecifierView_v1(0) + 20) + 8);
  swift_beginAccess();
  v5 = [*(v4 + 16) au_titleString];
  if (v5)
  {
    v6 = v5;
    sub_21BB22FCC();

    sub_21BB13BE0();
    v7 = sub_21BB22D6C();
    v9 = v8;
    v11 = v10;
    v13 = v12 & 1;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v13 = 0;
    v11 = 0;
  }

  v14 = [*(v4 + 16) au_detailString];
  if (v14)
  {
    v15 = v14;
    sub_21BB22FCC();

    sub_21BB13BE0();
    v14 = sub_21BB22D6C();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v11;
  a2[4] = v14;
  a2[5] = v17;
  a2[6] = v21;
  a2[7] = v19;
  v22 = v14;
  sub_21BB17DE4(v7, v9, v13, v11);
  sub_21BB17DE4(v22, v17, v21, v19);
  sub_21BB17E28(v22, v17, v21, v19);
  sub_21BB17E28(v7, v9, v13, v11);
}

uint64_t sub_21BB19774@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29C0, &unk_21BB25A00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29C8, &unk_21BB260D0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29D0, &unk_21BB25A10);
  MEMORY[0x28223BE20](v9);
  v11 = (v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29B0, &unk_21BB260C0);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v15 = *(v1 + *(type metadata accessor for AULinkSpecifierView_v1(0) + 20) + 8);
  swift_beginAccess();
  if ([*(v15 + 16) au_image])
  {
    *v11 = sub_21BB22DEC();
    swift_storeEnumTagMultiPayload();
    sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);

    sub_21BB22CFC();
    sub_21BB17ABC(v14, v8, &qword_27CDB29B0, &unk_21BB260C0);
    swift_storeEnumTagMultiPayload();
    sub_21BB1A84C();
    v16 = v34;
    sub_21BB22CFC();

    sub_21BB09870(v14, &qword_27CDB29B0, &unk_21BB260C0);
  }

  else
  {
    v31[1] = v12;
    v32 = v5;
    v33 = v3;
    sub_21BB1B088();
    if (v17)
    {
      v18 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v19 = sub_21BB22FAC();

      [v18 initWithType_];

      v20 = v2;
      if (qword_27CDB23E8 != -1)
      {
        swift_once();
      }

      v21 = qword_27CDB3718;
      v22 = v32;
      sub_21BB22ACC();
      v23 = v33;
      (*(v33 + 16))(v11, v22, v2);
      swift_storeEnumTagMultiPayload();
      sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);
      sub_21BB22CFC();
      sub_21BB17ABC(v14, v8, &qword_27CDB29B0, &unk_21BB260C0);
      swift_storeEnumTagMultiPayload();
      sub_21BB1A84C();
      v16 = v34;
      sub_21BB22CFC();
      sub_21BB09870(v14, &qword_27CDB29B0, &unk_21BB260C0);
    }

    else
    {
      sub_21BB1B094();
      if (!v24)
      {
        v28 = 1;
        v16 = v34;
        goto LABEL_13;
      }

      v20 = v2;
      v25 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v26 = sub_21BB22FAC();

      [v25 initWithBundleIdentifier_];

      if (qword_27CDB23E8 != -1)
      {
        swift_once();
      }

      v27 = qword_27CDB3718;
      v22 = v32;
      sub_21BB22ACC();
      v23 = v33;
      (*(v33 + 16))(v8, v22, v2);
      swift_storeEnumTagMultiPayload();
      sub_21BB1A84C();
      sub_21BB13E04(&qword_27CDB29B8, &qword_27CDB29C0, &unk_21BB25A00, MEMORY[0x277D7EA70]);
      v16 = v34;
      sub_21BB22CFC();
    }

    (*(v23 + 8))(v22, v20);
  }

  v28 = 0;
LABEL_13:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29A0, &unk_21BB259F0);
  return (*(*(v29 - 8) + 56))(v16, v28, 1, v29);
}

uint64_t sub_21BB19DBC(uint64_t a1)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v2 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2938, &qword_21BB259D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2980, &unk_21BB260B0);
  sub_21BB1A4C8();
  sub_21BB1A710();
  sub_21BB22DFC();
}

uint64_t sub_21BB19F28@<X0>(uint64_t a1@<X0>, SEL *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + *(type metadata accessor for AULinkSpecifierView_v1(0) + 20) + 8);
  swift_beginAccess();
  v8 = [*(v7 + 16) *a3];
  if (v8)
  {
    v9 = v8;
    sub_21BB22FCC();

    sub_21BB13BE0();
    v10 = sub_21BB22D6C();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v18 = v14 & 1;
  }

  else
  {

    v10 = 0;
    v12 = 0;
    v18 = 0;
    v16 = 0;
  }

  *a4 = v10;
  a4[1] = v12;
  a4[2] = v18;
  a4[3] = v16;
  return result;
}

uint64_t sub_21BB1A07C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_21BB1A144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BB22CCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB29D8, qword_21BB25E90);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21BB17ABC(v2, &v13 - v9, &qword_27CDB29D8, qword_21BB25E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_21BB2311C();
  v12 = sub_21BB22D2C();
  sub_21BB22ADC();

  sub_21BB22CBC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21BB1A358()
{
  result = qword_27CDB28F8;
  if (!qword_27CDB28F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB28F0, &qword_21BB259B0);
    sub_21BB13E04(&qword_27CDB2900, &qword_27CDB2908, &qword_21BB259B8, MEMORY[0x277CDEFF0]);
    sub_21BB1A410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB28F8);
  }

  return result;
}

unint64_t sub_21BB1A410()
{
  result = qword_27CDB2910;
  if (!qword_27CDB2910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB2918, &unk_21BB259C0);
    sub_21BB13E04(&qword_27CDB2920, &qword_27CDB2928, &unk_21BB260A0, MEMORY[0x277CDEFF0]);
    sub_21BB1A4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB2910);
  }

  return result;
}