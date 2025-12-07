id CECreateErrorWithMessage(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudexperience" code:a1 userInfo:v5];

  return v6;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DE0330;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  return result;
}

id getINDaemonConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass_0;
  v7 = getINDaemonConnectionClass_softClass_0;
  if (!getINDaemonConnectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke_0;
    v3[3] = &unk_278DE0310;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2439E56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DE03E0;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id OUTLINED_FUNCTION_1_1(id a1)
{

  return a1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __83__iCloudStorageController_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _CELogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __83__iCloudStorageController_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_cold_1(a1, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void __47__iCloudStorageController_fetchStorageSummary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _CELogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__iCloudStorageController_fetchStorageSummary___block_invoke_cold_1(a1, v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [[iCloudStorageSummary alloc] initWithStorageSummary:v5];
    (*(*(a1 + 40) + 16))();
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

void __getICQStoragePlanRecommendationClass_block_invoke(uint64_t a1)
{
  iCloudQuotaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICQStoragePlanRecommendation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQStoragePlanRecommendationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getICQStoragePlanRecommendationClass_block_invoke_cold_1();
    iCloudQuotaLibrary();
  }
}

void iCloudQuotaLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __iCloudQuotaLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278DE04C8;
    v3 = 0;
    iCloudQuotaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
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

uint64_t __iCloudQuotaLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getICQCloudStorageDataControllerClass_block_invoke(uint64_t a1)
{
  iCloudQuotaLibrary();
  result = objc_getClass("ICQCloudStorageDataController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQCloudStorageDataControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getICQCloudStorageDataControllerClass_block_invoke_cold_1();
    return __getICSHomeDataControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getICSHomeDataControllerClass_block_invoke(uint64_t a1)
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
    v5 = xmmword_278DE04E0;
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
  result = objc_getClass("ICSHomeDataController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICSHomeDataControllerClass_block_invoke_cold_1();
  }

  getICSHomeDataControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudSettingsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id _CELogSystem(uint64_t a1)
{
  if (_CELogSystem_onceToken != -1)
  {
    _CELogSystem_cold_1();
  }

  v2 = _CELogSystem_log;

  return v2;
}

id _CESignpostLogSystem(uint64_t a1)
{
  if (_CESignpostLogSystem_onceToken != -1)
  {
    _CESignpostLogSystem_cold_1();
  }

  v2 = _CESignpostLogSystem_log;

  return v2;
}

os_signpost_id_t _CESignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

os_signpost_id_t _CESignpostCreateWithObject(NSObject *a1, const void *a2)
{
  v2 = os_signpost_id_make_with_pointer(a1, a2);
  mach_continuous_time();
  return v2;
}

unint64_t _CESignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_CESignpostGetNanoseconds_onceToken[0] != -1)
  {
    _CESignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _CESignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_27ED97E1C;
  return (v4 / v5 * (v3 - a2));
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id sub_2439F0430()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() defaultCenter];
    type metadata accessor for ClientRecommendationsCache();
    v3 = swift_allocObject();
    result = sub_2439F0524(v1, v2);
    qword_27ED98730 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2439F0524(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A08, &qword_243A0F898);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 16) = v5;
  *(v2 + 24) = sub_243A0D4BC();
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 32) = sub_2439F5C28(MEMORY[0x277D84F90]);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return v2;
}

uint64_t sub_2439F05BC()
{
  sub_2439F0D44();

  sub_2439F13C0((v0 + 5));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

void sub_2439F0644(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v30 = a1;
  v33 = *(v3 + 16);
  os_unfair_lock_lock(v33 + 4);
  v5 = sub_2439F5D2C(MEMORY[0x277D84F90]);
  if (a3 >> 62)
  {
LABEL_26:
    v6 = sub_243A0D77C();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_27:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v32 + 32);
    *(v32 + 32) = 0x8000000000000000;
    sub_2439F1538(v5, v30, a2, isUniquelyReferenced_nonNull_native);

    *(v32 + 32) = v38;
    swift_endAccess();
    os_unfair_lock_unlock(v33 + 4);
    return;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_3:
  v7 = 0;
  v35 = a3;
  v36 = a3 & 0xC000000000000001;
  v34 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v36)
    {
      v10 = MEMORY[0x245D44940](v7, a3);
    }

    else
    {
      if (v7 >= *(v34 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(a3 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v37 = v7 + 1;
    v12 = [v10 identifier];
    v13 = sub_243A0D4EC();
    v15 = v14;

    v16 = v11;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    a3 = sub_243A030EC(v13, v15);
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_23;
    }

    v22 = v18;
    if (v5[3] < v21)
    {
      break;
    }

    if (v17)
    {
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_243A03C98();
      if (v22)
      {
LABEL_4:

        v8 = v5[7];
        v9 = *(v8 + 8 * a3);
        *(v8 + 8 * a3) = v16;

        goto LABEL_5;
      }
    }

LABEL_18:
    v5[(a3 >> 6) + 8] |= 1 << a3;
    v25 = (v5[6] + 16 * a3);
    *v25 = v13;
    v25[1] = v15;
    *(v5[7] + 8 * a3) = v16;

    v26 = v5[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v5[2] = v28;
LABEL_5:
    ++v7;
    a3 = v35;
    if (v37 == v6)
    {
      goto LABEL_27;
    }
  }

  sub_243A035D0(v21, v17);
  v23 = sub_243A030EC(v13, v15);
  if ((v22 & 1) == (v24 & 1))
  {
    a3 = v23;
    if (v22)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  sub_243A0D82C();
  __break(1u);
}

void sub_2439F091C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (!*(v6 + 16))
  {
    goto LABEL_19;
  }

  v7 = sub_243A030EC(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_19:
    os_unfair_lock_unlock(v5 + 4);
    return;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = 0;
  v18 = MEMORY[0x277D84F90];
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_12:
    v13 = (v15 - 1) & v15;
    if (v18)
    {
      v17 = *(*(v9 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v15)))));
      MEMORY[0x245D44730]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_243A0D57C();
      }

      sub_243A0D58C();
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      goto LABEL_19;
    }

    v15 = *(v9 + 64 + 8 * v16);
    ++v10;
    if (v15)
    {
      v10 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2439F0AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock(v9 + 4);
  v31 = 0;
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_27;
  }

  v11 = sub_243A030EC(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_27:
    os_unfair_lock_unlock(v9 + 4);
    return;
  }

  v29 = v9;
  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = 0;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v30 = a4;
  while (v17)
  {
LABEL_18:
    v22 = *(*(v13 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
    v23 = [v22 bundleID];
    v24 = sub_243A0D4EC();
    v26 = v25;

    if (v24 == a3 && v26 == v30)
    {
    }

    else
    {
      v28 = sub_243A0D7FC();

      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v19 = v31;
    if (!v31)
    {
      v19 = MEMORY[0x277D84F90];
    }

    v31 = v19;
    v20 = v22;
    MEMORY[0x245D44730]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_243A0D57C();
    }

    sub_243A0D58C();
LABEL_12:
    v17 &= v17 - 1;
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v9 = v29;
      goto LABEL_27;
    }

    v17 = *(v13 + 64 + 8 * v21);
    ++v14;
    if (v17)
    {
      v14 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2439F0D44()
{
  swift_beginAccess();
  sub_2439F1308(v0 + 40, &v4);
  if (v5)
  {
    sub_2439F1498(&v4, &v6);
    v1 = *(v0 + 80);
    __swift_project_boxed_opaque_existential_0(&v6, *(&v7 + 1));
    v2 = v1;
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v6);
  }

  else
  {
    sub_2439F13C0(&v4);
  }

  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_2439F1428(&v6, v0 + 40);
  return swift_endAccess();
}

uint64_t sub_2439F0E54(uint64_t a1, id *a2)
{
  result = sub_243A0D4CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2439F0ECC(uint64_t a1, id *a2)
{
  v3 = sub_243A0D4DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2439F0F4C@<X0>(uint64_t *a1@<X8>)
{
  sub_243A0D4EC();
  v2 = sub_243A0D4BC();

  *a1 = v2;
  return result;
}

uint64_t sub_2439F0F90@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_243A0D4BC();

  *a2 = v3;
  return result;
}

uint64_t sub_2439F0FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243A0D4EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2439F1004(uint64_t a1)
{
  v2 = sub_2439F1104(&qword_27ED979F0, &unk_243A0F800);
  v3 = sub_2439F1104(&qword_27ED979F8, &unk_243A0F7A0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2439F1104(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2439F1148()
{
  v0 = sub_243A0D4EC();
  v1 = MEMORY[0x245D44720](v0);

  return v1;
}

uint64_t sub_2439F1184(uint64_t a1)
{
  sub_243A0D4EC();
  sub_243A0D50C();
}

uint64_t sub_2439F11D8(uint64_t a1)
{
  sub_243A0D4EC();
  sub_243A0D89C();
  sub_243A0D50C();
  v1 = sub_243A0D8BC();

  return v1;
}

uint64_t sub_2439F124C(void *a1, uint64_t *a2)
{
  v2 = sub_243A0D4EC();
  v4 = v3;
  if (v2 == sub_243A0D4EC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_243A0D7FC();
  }

  return v7 & 1;
}

uint64_t sub_2439F1308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A00, &qword_243A0F890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_2439F13C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A00, &qword_243A0F890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2439F1428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A00, &qword_243A0F890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2439F1498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_2439F1538(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243A030EC(a2, a3);
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
      sub_243A03328(v16, a4 & 1);
      v11 = sub_243A030EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_243A0D82C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243A03B28();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2439F16B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243A030EC(a2, a3);
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
      sub_243A035E4(v16, a4 & 1);
      v11 = sub_243A030EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_243A0D82C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243A03CAC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_2439F1830(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2439F1888(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2439F18A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2439F18E4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t CERecommendation.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_243A0D4EC();

  return v2;
}

Swift::Bool __swiftcall CERecommendation.hasDataclassAction()()
{
  v1 = [v0 actions];
  sub_2439F1AC0();
  v2 = sub_243A0D55C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243A0D77C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D44940](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      v9 = v8 != 0;

      ++v4;
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7 == i;
      }

      if (v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

unint64_t sub_2439F1AC0()
{
  result = qword_27ED97A18;
  if (!qword_27ED97A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED97A18);
  }

  return result;
}

void sub_2439F1B18(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_243A0D4EC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_2439F1B70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  sub_2439F5390(v10, v11);
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v12 = sub_243A0D41C();
  __swift_project_value_buffer(v12, qword_27ED98738);

  v13 = sub_243A0D3FC();
  v14 = sub_243A0D62C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v15 = 136315906;
    *(v15 + 4) = sub_243A08B04(0xD000000000000076, 0x8000000243A10F10, &v25);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_243A08B04(0xD000000000000032, 0x8000000243A10F90, &v25);
    *(v15 + 22) = 2080;
    if (a2)
    {
      v16 = 561210745;
    }

    else
    {
      v16 = 2191214;
    }

    if (a2)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_243A08B04(v16, v17, &v25);

    *(v15 + 24) = v18;
    *(v15 + 32) = 2080;
    v19 = sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
    v20 = MEMORY[0x245D44760](a1, v19);
    v22 = sub_243A08B04(v20, v21, &v25);

    *(v15 + 34) = v22;
    _os_log_impl(&dword_2439E1000, v13, v14, "%s%s Donated recommendations (didTimeout? %s) %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D45310](v24, -1, -1);
    MEMORY[0x245D45310](v15, -1, -1);
  }

  return a5(a1, a3);
}

uint64_t sub_2439F1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_243A0D89C();
  sub_243A0D50C();
  v6 = sub_243A0D8BC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_243A0D7FC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2439F1EF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AD8, &qword_243A0F9E0);
    v2 = sub_243A0D7AC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_2439F5784(0, &qword_27ED97AA8, 0x277CCABB0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2439F1498(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2439F1498(v31, v32);
    result = sub_243A0D6FC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2439F1498(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2439F21C0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v82 = a6;
  v83 = a3;
  v9 = sub_243A0D3BC();
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v77 - v13;
  v15 = sub_243A0D38C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  v81 = v19;
  if (a2)
  {
    v78 = a5;
    v79 = v14;
    v24 = a2;
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v25 = sub_243A0D41C();
    __swift_project_value_buffer(v25, qword_27ED98738);
    (*(v16 + 16))(v23, v83, v15);
    v26 = a2;
    v27 = sub_243A0D3FC();
    v28 = v15;
    v29 = sub_243A0D63C();

    if (os_log_type_enabled(v27, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77 = v16;
      v32 = v31;
      v33 = swift_slowAlloc();
      v86[0] = v33;
      *v30 = 136315394;
      sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v34 = sub_243A0D7CC();
      v36 = v35;
      (*(v77 + 8))(v23, v28);
      v37 = sub_243A08B04(v34, v36, v86);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2112;
      v38 = a2;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v39;
      *v32 = v39;
      _os_log_impl(&dword_2439E1000, v27, v29, "Could not fetch recommendations from %s due to %@", v30, 0x16u);
      sub_2439F5714(v32, &qword_27ED97AC0, &unk_243A0F9D0);
      v40 = v32;
      v16 = v77;
      MEMORY[0x245D45310](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D45310](v33, -1, -1);
      MEMORY[0x245D45310](v30, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v23, v15);
    }

    v15 = v28;
    a5 = v78;
    v14 = v79;
  }

  else
  {
    if (a1 >> 62)
    {
      v75 = v21;
      v76 = sub_243A0D77C();
      v21 = v75;
      if (!v76)
      {
        goto LABEL_19;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v41 = v21;
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v42 = sub_243A0D41C();
    __swift_project_value_buffer(v42, qword_27ED98738);
    (*(v16 + 16))(v41, v83, v15);

    v43 = v15;
    v44 = sub_243A0D3FC();
    LODWORD(v77) = sub_243A0D62C();
    if (os_log_type_enabled(v44, v77))
    {
      v78 = a5;
      v79 = v14;
      v45 = v16;
      v46 = v43;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v86[0] = v48;
      *v47 = 134218242;
      if (a1 >> 62)
      {
        v49 = sub_243A0D77C();
      }

      else
      {
        v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v47 + 4) = v49;

      *(v47 + 12) = 2080;
      sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v50 = sub_243A0D7CC();
      v52 = v51;
      (*(v45 + 8))(v41, v46);
      v53 = sub_243A08B04(v50, v52, v86);

      *(v47 + 14) = v53;
      _os_log_impl(&dword_2439E1000, v44, v77, "Loading %ld recommendations from %s", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v54 = v46;
      v16 = v45;
      MEMORY[0x245D45310](v48, -1, -1);
      MEMORY[0x245D45310](v47, -1, -1);

      v15 = v54;
      a5 = v78;
      v14 = v79;
    }

    else
    {

      (*(v16 + 8))(v41, v43);
      v15 = v43;
    }

    swift_beginAccess();

    sub_2439F2AA4(v55);
    swift_endAccess();
  }

LABEL_19:
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v56 = sub_243A0D41C();
  __swift_project_value_buffer(v56, qword_27ED98738);
  (*(v85 + 16))(v14, a5, v84);
  v57 = v81;
  (*(v16 + 16))(v81, v83, v15);
  v58 = sub_243A0D3FC();
  v59 = sub_243A0D64C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v83 = v15;
    v61 = v60;
    v62 = swift_slowAlloc();
    v86[0] = v62;
    *v61 = 134218242;
    v63 = v80;
    sub_243A0D3AC();
    sub_243A0D39C();
    v65 = v64;
    v66 = *(v85 + 8);
    v67 = v63;
    v68 = v16;
    v69 = v84;
    v66(v67, v84);
    v66(v14, v69);
    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v70 = v83;
    v71 = sub_243A0D7CC();
    v73 = v72;
    (*(v68 + 8))(v57, v70);
    v74 = sub_243A08B04(v71, v73, v86);

    *(v61 + 14) = v74;
    _os_log_impl(&dword_2439E1000, v58, v59, "It took %f seconds to check recommendations at %s", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x245D45310](v62, -1, -1);
    MEMORY[0x245D45310](v61, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v57, v15);
    (*(v85 + 8))(v14, v84);
  }

  dispatch_group_leave(v82);
}

uint64_t sub_2439F2AA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_243A0D77C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_243A0D77C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2439F30E0(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2439F3180(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2439F2B94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v5 = sub_243A0D55C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_2439F2C44(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    swift_beginAccess();
    sub_2439F5774(v6, v7);

    v6(v8, a3 & 1, 0);
    sub_2439F5390(v6, v7);
  }

  return result;
}

uint64_t sub_2439F2CF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2439F2D3C()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2439F2DA8()
{
  v9 = sub_243A0D68C();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_243A0D66C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_243A0D46C();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = 0xD000000000000014;
  *(v0 + 24) = 0x8000000243A10FD0;
  strcpy((v0 + 32), "ClientSources");
  *(v0 + 46) = -4864;
  *(v0 + 48) = 5;
  v6 = sub_2439F5784(0, &qword_27ED97AE0, 0x277D85C78);
  v8[0] = "CloudRecommendations";
  v8[1] = v6;
  sub_243A0D44C();
  v10 = MEMORY[0x277D84F90];
  sub_2439F57CC(&qword_27ED97AE8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AF0, &qword_243A0F9E8);
  sub_2439F5814(&qword_27ED97AF8, &qword_27ED97AF0, &qword_243A0F9E8, MEMORY[0x277D83970]);
  sub_243A0D6DC();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 56) = sub_243A0D6AC();
  return v0;
}

void sub_2439F306C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2439F30E0(uint64_t a1, char a2)
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

  sub_243A0D77C();
LABEL_9:
  result = sub_243A0D75C();
  *v2 = result;
  return result;
}

uint64_t sub_2439F3180(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_243A0D77C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_243A0D77C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2439F5814(&qword_27ED97AD0, &qword_27ED97AC8, &qword_243A0FF30, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
            v9 = sub_243A03F78(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2439F3334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v261 = a4;
  v221 = a3;
  v220 = a2;
  v227 = a1;
  v235 = sub_243A0D3BC();
  v229 = *(v235 - 8);
  v13 = MEMORY[0x28223BE20](v235);
  v234 = v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = v14;
  MEMORY[0x28223BE20](v13);
  v249 = v206 - v15;
  v218 = sub_243A0D33C();
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v262 = v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_243A0D43C();
  v239 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v232 = v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_243A0D46C();
  v238 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v230 = v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_243A0D42C();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v216 = (v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v253 = sub_243A0D48C();
  v242 = *(v253 - 1);
  v20 = MEMORY[0x28223BE20](v253);
  v215 = v206 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v226 = (v206 - v22);
  v259 = sub_243A0D34C();
  v23 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v260 = v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_243A0D38C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v244 = v206 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v219 = v206 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v248 = v206 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v257 = v206 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v255 = v206 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  *&v250 = v206 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v246 = v206 - v40;
  v213 = v41;
  MEMORY[0x28223BE20](v39);
  v241 = v206 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A20, &unk_243A0F9C0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v254 = v206 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v245 = v206 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = v206 - v48;
  v50 = swift_allocObject();
  v50[2] = a5;
  v50[3] = a6;
  v236 = a6;
  v50[4] = a7;
  v50[5] = a8;
  v222 = a8;
  v237 = v50;
  v50[6] = a9;
  v51 = objc_opt_self();

  v223 = a7;

  v212 = a9;

  v251 = v51;
  v52 = [v51 defaultManager];
  v53 = [v52 URLsForDirectory:5 inDomains:8];

  v240 = v25;
  v54 = sub_243A0D55C();

  v55 = *(v54 + 16);
  v247 = v26;
  if (v55)
  {
    v56 = v240;
    (*(v26 + 16))(v49, v54 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v240);

    v57 = *(v26 + 56);
    v58 = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v59 = v49;
    v60 = 0;
    v61 = v56;
  }

  else
  {

    v57 = *(v26 + 56);
    v58 = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v59 = v49;
    v60 = 1;
    v61 = v240;
  }

  v252 = v57;
  v57(v59, v60, 1, v61);
  v63 = v260;
  v62 = v261;
  v258 = *(v261 + 16);
  v64 = *MEMORY[0x277CC91C0];
  v65 = *(v23 + 104);
  v66 = v259;
  v65(v260, v64, v259);
  v228 = v49;
  v67 = v245;
  sub_2439F5224(v49, v245);

  v68 = v241;
  sub_243A0D37C();
  v243 = *(v62 + 32);
  v65(v63, v64, v66);
  v69 = v247;
  v71 = v247 + 16;
  v70 = *(v247 + 16);
  v72 = v240;
  v70(v67, v68, v240);
  v256 = v58;
  v252(v67, 0, 1, v72);

  v73 = v246;
  sub_243A0D37C();
  v74 = v69;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v75 = sub_243A0D41C();
  v76 = __swift_project_value_buffer(v75, qword_27ED98738);
  v77 = v250;
  v259 = v71;
  v70(v250, v73, v72);
  v260 = v76;
  v78 = sub_243A0D3FC();
  v79 = sub_243A0D64C();
  v80 = os_log_type_enabled(v78, v79);
  v258 = v70;
  if (v80)
  {
    v81 = v77;
    v82 = swift_slowAlloc();
    v83 = v74;
    v84 = swift_slowAlloc();
    aBlock = v84;
    *v82 = 136315138;
    v85 = sub_243A0D35C();
    v87 = v86;
    v88 = *(v83 + 8);
    v88(v81, v72);
    v89 = sub_243A08B04(v85, v87, &aBlock);

    *(v82 + 4) = v89;
    _os_log_impl(&dword_2439E1000, v78, v79, "Preparing to fetch client donated recommendations from %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x245D45310](v84, -1, -1);
    MEMORY[0x245D45310](v82, -1, -1);
  }

  else
  {

    v88 = *(v74 + 8);
    v88(v77, v72);
  }

  v90 = swift_allocObject();
  v91 = MEMORY[0x277D84F90];
  *(v90 + 16) = MEMORY[0x277D84F90];
  v92 = [v251 defaultManager];
  v93 = sub_243A0D61C();

  if (v93)
  {
    v236 = dispatch_group_create();
    v94 = swift_allocObject();
    *(v94 + 24) = 0;
    *(v94 + 16) = 0;
    v95 = swift_allocObject();
    v95[2] = v94;
    v95[3] = sub_2439F5214;
    v223 = v93;
    v95[4] = v237;
    swift_beginAccess();
    v96 = v91;
    v97 = *(v94 + 16);
    v98 = *(v94 + 24);
    *(v94 + 16) = sub_2439F5384;
    *(v94 + 24) = v95;

    sub_2439F5390(v97, v98);
    v222 = *(v261 + 56);
    v99 = v215;
    sub_243A0D47C();
    v100 = v216;
    *v216 = 5;
    v101 = v224;
    v102 = v225;
    (v224[13])(v100, *MEMORY[0x277D85188], v225);
    v103 = v226;
    MEMORY[0x245D44690](v99, v100);
    (v101[1])(v100, v102);
    v261 = *(v242 + 1);
    (v261)(v99, v253);
    v104 = swift_allocObject();
    *(v104 + 16) = v94;
    *(v104 + 24) = v90;
    v270 = sub_2439F53A4;
    v271 = v104;
    aBlock = MEMORY[0x277D85DD0];
    v267 = 1107296256;
    v224 = &v268;
    v268 = sub_2439F2CF8;
    v269 = &block_descriptor;
    v105 = _Block_copy(&aBlock);
    v212 = v94;

    v225 = v90;

    v106 = v230;
    sub_243A0D44C();
    v264 = v96;
    v107 = sub_2439F57CC(&qword_27ED97A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
    v109 = sub_2439F5814(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40, MEMORY[0x277D83970]);
    v110 = v232;
    v210 = v108;
    v208 = v109;
    v111 = v233;
    v211 = v107;
    sub_243A0D6DC();
    MEMORY[0x245D44870](v103, v106, v110, v105);
    _Block_release(v105);
    v112 = *(v239 + 8);
    v239 += 8;
    v209 = v112;
    v112(v110, v111);
    v113 = *(v238 + 8);
    v238 += 8;
    v207 = v113;
    v113(v106, v231);
    (v261)(v103, v253);

    sub_243A0D60C();
    sub_243A0D32C();
    v115 = v248;
    v116 = v257;
    v117 = v255;
    v118 = v254;
    v119 = v252;
    if (v265)
    {
      v253 = (v247 + 32);
      v261 = v247 + 8;
      v206[2] = v229 + 16;
      v213 += 7;
      v214 += 7;
      v206[1] = v229 + 32;
      v226 = (v229 + 8);
      *&v114 = 136315138;
      v250 = v114;
      do
      {
        if (swift_dynamicCast())
        {
          v120 = v115;
          v119(v118, 0, 1, v72);
          v251 = *v253;
          (v251)(v117, v118, v72);
          v258(v116, v117, v72);
          v121 = sub_243A0D3FC();
          v122 = sub_243A0D62C();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            aBlock = v124;
            *v123 = v250;
            sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v125 = sub_243A0D7CC();
            v127 = v126;
            v128 = *v261;
            (*v261)(v257, v72);
            v129 = sub_243A08B04(v125, v127, &aBlock);
            v116 = v257;

            *(v123 + 4) = v129;
            _os_log_impl(&dword_2439E1000, v121, v122, "Visiting %s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v124);
            v130 = v124;
            v117 = v255;
            MEMORY[0x245D45310](v130, -1, -1);
            MEMORY[0x245D45310](v123, -1, -1);
          }

          else
          {

            v128 = *v261;
            (*v261)(v116, v72);
          }

          v115 = v120;
          v131 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v132 = sub_243A0D36C();
          v133 = [v131 initWithURL_];

          if (v133)
          {
            if ([v133 principalClass] && (swift_getObjCClassMetadata(), sub_2439F5784(0, &qword_27ED97A40, 0x277D82BB8), swift_dynamicCastMetatype()))
            {
              sub_243A0D3AC();
              v134 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v263 = &unk_2856BA3A0;
              v242 = v134;
              v245 = swift_dynamicCastObjCProtocolConditional();
              v243 = v128;
              if (v245)
              {
                v135 = v227;
                if (*(v227 + 16) && (v136 = [v245 bundleID], v137 = sub_243A0D4EC(), v139 = v138, v136, LOBYTE(v136) = sub_2439F1DF8(v137, v139, v135), , (v136 & 1) == 0))
                {
                  v174 = v235;
                  v116 = v257;
                  v175 = v249;
                  v115 = v120;
                  v173 = v242;
                }

                else
                {
                  dispatch_group_enter(v236);
                  sub_2439F5784(0, &qword_27ED97AA8, 0x277CCABB0);
                  v140 = sub_243A0D6BC();
                  v141 = [v245 bundleID];
                  v142 = sub_243A0D4EC();
                  v144 = v143;

                  if (*(v221 + 16))
                  {
                    v145 = v142;
                    v146 = v221;
                    v147 = sub_243A030EC(v145, v144);
                    v149 = v148;

                    if (v149)
                    {
                      v150 = *(*(v146 + 56) + 8 * v147);

                      v216 = v150;
                    }

                    else
                    {
                      v216 = v140;
                    }

                    v176 = v255;
                  }

                  else
                  {
                    v216 = v140;

                    v176 = v255;
                  }

                  v177 = v249;
                  sub_2439F1EF0(v220);
                  v215 = sub_243A0D4AC();

                  v178 = v219;
                  v258(v219, v176, v72);
                  v179 = v229;
                  v180 = v235;
                  (*(v229 + 16))(v234, v177, v235);
                  v181 = (*(v247 + 80) + 16) & ~*(v247 + 80);
                  v182 = (v213 + v181) & 0xFFFFFFFFFFFFFFF8;
                  v183 = (*(v179 + 80) + v182 + 8) & ~*(v179 + 80);
                  v184 = (v214 + v183) & 0xFFFFFFFFFFFFFFF8;
                  v185 = swift_allocObject();
                  (v251)(v185 + v181, v178, v72);
                  *(v185 + v182) = v225;
                  v174 = v180;
                  v175 = v249;
                  (*(v179 + 32))(v185 + v183, v234, v174);
                  v186 = v236;
                  *(v185 + v184) = v236;
                  v270 = sub_2439F55F4;
                  v271 = v185;
                  aBlock = MEMORY[0x277D85DD0];
                  v267 = 1107296256;
                  v268 = sub_2439F2B94;
                  v269 = &block_descriptor_26;
                  v187 = _Block_copy(&aBlock);

                  v188 = v186;
                  v117 = v255;

                  v189 = v215;
                  v173 = v216;
                  [v245 recommendationsForThresholds:v215 afterTimestamp:v216 completion:v187];

                  _Block_release(v187);
                  v133 = v189;
                  v115 = v248;
                  v116 = v257;
                  v119 = v252;
                }
              }

              else
              {
                v173 = v133;
                v174 = v235;
                v175 = v249;
                v133 = v242;
              }

              (*v226)(v175, v174);
              v243(v117, v72);
              v118 = v254;
            }

            else
            {
              v151 = v128;
              v152 = v244;
              v258(v244, v117, v72);
              v153 = sub_243A0D3FC();
              v154 = sub_243A0D63C();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                aBlock = v156;
                *v155 = v250;
                v157 = sub_243A0D35C();
                v159 = v158;
                v151(v152, v72);
                v160 = sub_243A08B04(v157, v159, &aBlock);

                *(v155 + 4) = v160;
                _os_log_impl(&dword_2439E1000, v153, v154, "Principal Class not found for bundle at %s", v155, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v156);
                v161 = v156;
                v117 = v255;
                MEMORY[0x245D45310](v161, -1, -1);
                v162 = v155;
                v116 = v257;
                MEMORY[0x245D45310](v162, -1, -1);
              }

              else
              {

                v151(v152, v72);
              }

              v151(v117, v72);
              v115 = v248;
              v118 = v254;
              v119 = v252;
            }
          }

          else
          {
            v258(v120, v117, v72);
            v163 = sub_243A0D3FC();
            v164 = sub_243A0D63C();
            if (os_log_type_enabled(v163, v164))
            {
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              aBlock = v166;
              *v165 = v250;
              v167 = sub_243A0D35C();
              v169 = v168;
              v128(v120, v72);
              v170 = sub_243A08B04(v167, v169, &aBlock);
              v117 = v255;

              *(v165 + 4) = v170;
              _os_log_impl(&dword_2439E1000, v163, v164, "Unable to load source bundle at %s", v165, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v166);
              v171 = v166;
              v116 = v257;
              MEMORY[0x245D45310](v171, -1, -1);
              v172 = v165;
              v115 = v120;
              MEMORY[0x245D45310](v172, -1, -1);

              v128(v117, v72);
              v119 = v252;
            }

            else
            {

              v128(v120, v72);
              v128(v117, v72);
            }

            v118 = v254;
          }
        }

        else
        {
          v119(v118, 1, 1, v72);
          sub_2439F5714(v118, &qword_27ED97A20, &unk_243A0F9C0);
        }

        sub_243A0D32C();
      }

      while (v265);
    }

    (*(v217 + 8))(v262, v218);
    v190 = swift_allocObject();
    v191 = v225;
    *(v190 + 16) = v212;
    *(v190 + 24) = v191;
    v270 = sub_2439F5464;
    v271 = v190;
    aBlock = MEMORY[0x277D85DD0];
    v267 = 1107296256;
    v268 = sub_2439F2CF8;
    v269 = &block_descriptor_20;
    v192 = _Block_copy(&aBlock);

    v193 = v230;
    sub_243A0D44C();
    v264 = MEMORY[0x277D84F90];
    v194 = v232;
    v195 = v233;
    sub_243A0D6DC();
    v196 = v236;
    sub_243A0D65C();
    _Block_release(v192);

    v209(v194, v195);
    v207(v193, v231);
    v197 = *(v247 + 8);
    v197(v246, v72);
    v197(v241, v72);
    sub_2439F5714(v228, &qword_27ED97A20, &unk_243A0F9C0);
  }

  else
  {
    v198 = sub_243A0D3FC();
    v199 = sub_243A0D63C();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&dword_2439E1000, v198, v199, "Unable to initialize bundles enumerator", v200, 2u);
      MEMORY[0x245D45310](v200, -1, -1);
    }

    v201 = sub_243A0D3FC();
    v202 = sub_243A0D62C();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&dword_2439E1000, v201, v202, "Request to fetch recommendations from client donors has been completed.", v203, 2u);
      MEMORY[0x245D45310](v203, -1, -1);
    }

    v204 = v246;
    if (v91 >> 62 && sub_243A0D77C())
    {
      if (qword_27ED979B0 != -1)
      {
        swift_once();
      }

      sub_2439F0644(v222, v212, MEMORY[0x277D84F90]);
    }

    (v236)(MEMORY[0x277D84F90], 0);
    v88(v204, v72);
    v88(v241, v72);
    sub_2439F5714(v228, &qword_27ED97A20, &unk_243A0F9C0);
  }
}

uint64_t sub_2439F51CC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2439F5224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A20, &unk_243A0F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t sub_2439F52CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2439F5304()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2439F5344()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2439F5390(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2439F5484()
{
  v1 = sub_243A0D38C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_243A0D3BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

void sub_2439F55F4(unint64_t a1, void *a2)
{
  v5 = *(sub_243A0D38C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_243A0D3BC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2439F21C0(a1, a2, v2 + v6, v10, v2 + v9, v11);
}

uint64_t sub_2439F5714(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2439F5774(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2439F5784(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2439F57CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2439F5814(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t RecommendationsError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B60, &unk_243A0FA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243A0F9F0;
  *(inited + 32) = sub_243A0D4EC();
  v4 = 0xD00000000000001FLL;
  v5 = "CloudRecommendationsErrorDomain";
  if (v1)
  {
    v4 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = "commendations from client donor";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_2439F5D40(inited);
  swift_setDeallocating();
  sub_2439F5E50(inited + 32);
  return v6;
}

CloudRecommendation::RecommendationsError_optional __swiftcall RecommendationsError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2439F59A4()
{
  v1 = *v0;
  sub_243A0D89C();
  MEMORY[0x245D44AA0](v1);
  return sub_243A0D8BC();
}

uint64_t sub_2439F5A18(uint64_t a1)
{
  v2 = *v1;
  sub_243A0D89C();
  MEMORY[0x245D44AA0](v2);
  return sub_243A0D8BC();
}

void *sub_2439F5A5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
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

unint64_t sub_2439F5AAC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B60, &unk_243A0FA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243A0F9F0;
  *(inited + 32) = sub_243A0D4EC();
  v4 = 0xD00000000000001FLL;
  v5 = "CloudRecommendationsErrorDomain";
  if (v1)
  {
    v4 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = "commendations from client donor";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_2439F5D40(inited);
  swift_setDeallocating();
  sub_2439F5E50(inited + 32);
  return v6;
}

uint64_t sub_2439F5B88(uint64_t a1)
{
  v2 = sub_2439F61F4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2439F5BC4(uint64_t a1)
{
  v2 = sub_2439F61F4();
  v3 = sub_2439F6248();
  v4 = sub_2439F629C();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

unint64_t sub_2439F5C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BA8, &qword_243A0FB90);
    v3 = sub_243A0D7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243A030EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2439F5D40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BC0, qword_243A0FBA8);
    v3 = sub_243A0D7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2439F6400(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_243A030EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2439F1498(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2439F5E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B68, &unk_243A101B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2439F5EBC()
{
  result = qword_27ED97B70;
  if (!qword_27ED97B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B70);
  }

  return result;
}

unint64_t sub_2439F5F14()
{
  result = qword_27ED97B78;
  if (!qword_27ED97B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendationsError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecommendationsError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2439F60DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BB0, &qword_243A0FB98);
    v3 = sub_243A0D7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243A030EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2439F61F4()
{
  result = qword_27ED97B90;
  if (!qword_27ED97B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B90);
  }

  return result;
}

unint64_t sub_2439F6248()
{
  result = qword_27ED97B98;
  if (!qword_27ED97B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B98);
  }

  return result;
}

unint64_t sub_2439F629C()
{
  result = qword_27ED97BA0;
  if (!qword_27ED97BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97BA0);
  }

  return result;
}

unint64_t sub_2439F6304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_243A0D7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_243A030EC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_2439F6400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B68, &unk_243A101B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CERecommendationAction.id.getter()
{
  v1 = [v0 actionIdentifier];
  v2 = sub_243A0D4EC();

  return v2;
}

void sub_2439F64CC(uint64_t *a1@<X8>)
{
  v3 = [*v1 actionIdentifier];
  v4 = sub_243A0D4EC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_2439F6524()
{
  v0 = sub_243A0D41C();
  __swift_allocate_value_buffer(v0, qword_27ED98738);
  __swift_project_value_buffer(v0, qword_27ED98738);

  return sub_243A0D40C();
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

uint64_t sub_2439F661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2439F16B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_243A030EC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_243A03CAC();
        v14 = v16;
      }

      result = sub_243A0939C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t RecommendationsFetcher.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_243A0D89C();
  MEMORY[0x245D44AA0](v1);
  return sub_243A0D8BC();
}

id sub_2439F67A8()
{
  result = [objc_allocWithZone(type metadata accessor for RecommendationsFetcher()) init];
  qword_27ED97BD8 = result;
  return result;
}

id RecommendationsFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static RecommendationsFetcher.shared.getter()
{
  if (qword_27ED979C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27ED97BD8;

  return v1;
}

uint64_t sub_2439F6940(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v11 = sub_243A0D41C();
  __swift_project_value_buffer(v11, qword_27ED98738);
  v12 = sub_243A0D3FC();
  v13 = sub_243A0D62C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2439E1000, v12, v13, "Clearing recommendations cache", v14, 2u);
    MEMORY[0x245D45310](v14, -1, -1);
  }

  v15 = sub_243A0D5DC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v17 = v4;
  v18 = a1;
  sub_2439F5774(a2, a3);
  sub_2439F8390(0, 0, v10, &unk_243A0FC20, v16);
}

uint64_t sub_2439F6B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[334] = a7;
  v7[333] = a6;
  v7[332] = a5;
  v7[331] = a4;
  return MEMORY[0x2822009F8](sub_2439F6B58, 0, 0);
}

uint64_t sub_2439F6B58()
{
  v1 = *(*(v0 + 2648) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 2680) = v1;
  return MEMORY[0x2822009F8](sub_2439F6B84, v1, 0);
}

uint64_t sub_2439F6B84()
{
  v1 = [*(v0 + 2656) aa_altDSID];
  if (v1 || (v1 = [*(v0 + 2656) aa_personID]) != 0)
  {
    v4 = v1;
    v5 = sub_243A0D4EC();
    v7 = v6;

    swift_beginAccess();
    sub_2439F661C(0, v5, v7);
    swift_endAccess();
    v1 = sub_2439F6C70;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2439F6C70()
{
  v1 = v0[333];
  v2 = v0[332];
  v3 = v0[331];
  v4 = swift_allocObject();
  v0[336] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  v6 = v2;
  sub_2439F5784(0, &qword_27ED97D48, off_278DE00A8);
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v0[337] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = v5;
  v9 = v6;
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  v0[338] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = v8;
  v12 = v9;
  sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  v0[339] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
  swift_asyncLet_begin();
  if (v1)
  {

    return MEMORY[0x282200930](v0 + 2, v0 + 327, sub_2439F6EE8, v0 + 322);
  }

  else
  {

    return MEMORY[0x282200920](v0 + 242, v0 + 330, sub_2439F7078, v0 + 322);
  }
}

uint64_t sub_2439F6EE8()
{
  v1[340] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 242, v1 + 330, sub_2439F71D4, v1 + 322);
  }

  else
  {
    v2 = v1[327];
    v1[341] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 162, v1 + 329, sub_2439F6F9C, v1 + 322);
  }
}

uint64_t sub_2439F6F9C()
{
  *(v1 + 2736) = v0;
  if (v0)
  {
    v2 = sub_2439F737C;
  }

  else
  {
    v2 = sub_2439F6FD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2439F6FD0()
{
  v1 = v0[341];
  v2 = v0[333];
  v3 = v0[329];
  v4 = v3;
  v2(v1, v3, 0);

  return MEMORY[0x282200920](v0 + 242, v0 + 330, sub_2439F7078, v0 + 322);
}

uint64_t sub_2439F7148()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2439F72A4()
{
  v1 = v0[340];
  v2 = v0[333];
  v3 = v1;
  v2(0, 0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2439F737C()
{

  return MEMORY[0x282200920](v0 + 1936, v0 + 2640, sub_2439F73E8, v0 + 2576);
}

uint64_t sub_2439F74B8()
{
  v1 = v0[342];
  v2 = v0[333];
  v3 = v1;
  v2(0, 0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2439F7590()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2439F75E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A069D0;

  return sub_2439F6B2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2439F76BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2439F76E0, 0, 0);
}

uint64_t sub_2439F76E0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F770C, v1, 0);
}

uint64_t sub_2439F770C()
{
  *(v0 + 48) = sub_2439FDA08(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2439F77AC;

  return sub_2439FDBC4(0);
}

uint64_t sub_2439F77AC(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_243A06A1C;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_2439F78E8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439F78E8()
{

  return MEMORY[0x2822009F8](sub_243A069E0, 0, 0);
}

uint64_t sub_2439F7950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2439F7974, 0, 0);
}

uint64_t sub_2439F7974()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F79A0, v1, 0);
}

uint64_t sub_2439F79A0()
{
  *(v0 + 48) = sub_2439FDA08(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2439F7A40;

  return sub_2439FEA38(0);
}

uint64_t sub_2439F7A40(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_2439F7C08;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_2439F7B7C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439F7B7C()
{

  return MEMORY[0x2822009F8](sub_2439F7BE4, 0, 0);
}

uint64_t sub_2439F7C08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2439F7C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2439F7C90, 0, 0);
}

uint64_t sub_2439F7C90()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439F7CBC, v1, 0);
}

uint64_t sub_2439F7CBC()
{
  v1 = sub_2439FDA08(*(v0 + 40));
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_2439F7D28, v1, 0);
}

uint64_t sub_2439F7D28()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439F7E04, v2, v1);
}

uint64_t sub_2439F7E04()
{
  v1 = *(v0 + 56);
  *(v0 + 72) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439F7E98, v1, 0);
}

uint64_t sub_2439F7E98()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v6 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v3 = v0;
  v3[1] = sub_2439F7FE8;

  return v6(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A10118, v2, v4);
}

uint64_t sub_2439F7FE8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_2439F81C8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2439F8118;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439F8118()
{
  v1 = v0[6];
  v0[13] = v0[2];
  return MEMORY[0x2822009F8](sub_2439F813C, v1, 0);
}

uint64_t sub_2439F813C()
{

  return MEMORY[0x2822009F8](sub_2439F81A4, 0, 0);
}

uint64_t sub_2439F81C8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439F823C, v1, 0);
}

uint64_t sub_2439F823C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2439F82A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2439F82C4, 0, 0);
}

uint64_t sub_2439F82C4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F82F0, v1, 0);
}

uint64_t sub_2439F82F0()
{
  *(v0 + 48) = sub_2439FDA08(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2439F77AC;

  return sub_2439FEE68(0);
}

uint64_t sub_2439F8390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243A05B00(a3, v25 - v10, &qword_27ED97BE0, &qword_243A0FC10);
  v12 = sub_243A0D5DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2439F5714(v11, &qword_27ED97BE0, &qword_243A0FC10);
  }

  else
  {
    sub_243A0D5CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_243A0D59C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_243A0D4FC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);

      return v23;
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

  sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2439F8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_243A0D31C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_2439F8814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2439F883C, 0, 0);
}

uint64_t sub_2439F883C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439F8868, v1, 0);
}

uint64_t sub_2439F8868()
{
  *(v0 + 56) = sub_2439FDA08(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2439F8910;
  v2 = *(v0 + 88);

  return sub_2439FDBC4(v2);
}

uint64_t sub_2439F8910(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_2439F8B3C;
  }

  else
  {
    v6 = sub_2439F8A44;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439F8A44()
{

  return MEMORY[0x2822009F8](sub_2439F8AAC, 0, 0);
}

uint64_t sub_2439F8AAC()
{
  v1 = v0[4];
  v2 = v0[9];
  if (v1)
  {
    v3 = v2;
    v1(v2, 0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2439F8B3C()
{

  return MEMORY[0x2822009F8](sub_2439F8BA4, 0, 0);
}

uint64_t sub_2439F8BA4()
{
  v1 = v0[4];
  v2 = v0[10];
  if (v1)
  {
    v3 = v2;
    v1(0, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2439F8DB4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2439F8DD8, 0, 0);
}

uint64_t sub_2439F8DD8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2439F8E04, v1, 0);
}

uint64_t sub_2439F8E04()
{
  *(v0 + 40) = sub_2439FDA08(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2439F8EAC;
  v2 = *(v0 + 72);

  return sub_2439FDBC4(v2);
}

uint64_t sub_2439F8EAC(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_2439F9104;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_2439F8FE8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439F8FE8()
{

  return MEMORY[0x2822009F8](sub_2439F9050, 0, 0);
}

uint64_t sub_2439F9050()
{
  v1 = *(v0 + 64);
  v2 = [v1 recommendations];
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v3 = sub_243A0D55C();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2439F9104()
{

  return MEMORY[0x2822009F8](sub_243A06A20, 0, 0);
}

uint64_t sub_2439F92FC(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_2439F93C8;

  return sub_2439F8DB4(v8, a2);
}

uint64_t sub_2439F93C8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v5 = sub_243A0D54C();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2439F959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 120) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  return MEMORY[0x2822009F8](sub_2439F95C4, 0, 0);
}

uint64_t sub_2439F95C4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2439F95F0, v1, 0);
}

uint64_t sub_2439F95F0()
{
  v1 = sub_2439FDA08(*(v0 + 32));
  *(v0 + 64) = v1;

  return MEMORY[0x2822009F8](sub_2439F9660, v1, 0);
}

uint64_t sub_2439F9660()
{
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439F973C, v2, v1);
}

uint64_t sub_2439F973C()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439F97D0, v1, 0);
}

uint64_t sub_2439F97D0()
{
  v1 = *(v0 + 120);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v4 = v0;
  v4[1] = sub_2439F9928;

  return v7(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A100A0, v3, v5);
}

uint64_t sub_2439F9928()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_2439F9B74;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2439F9A58;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439F9A58()
{
  v1 = v0[7];
  v0[14] = v0[2];
  return MEMORY[0x2822009F8](sub_2439F9A7C, v1, 0);
}

uint64_t sub_2439F9A7C()
{

  return MEMORY[0x2822009F8](sub_2439F9AE4, 0, 0);
}

uint64_t sub_2439F9AE4()
{
  v1 = v0[5];
  v2 = v0[14];
  if (v1)
  {
    v3 = v2;
    v1(v2, 0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2439F9B74()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439F9BE8, v1, 0);
}

uint64_t sub_2439F9BE8()
{

  return MEMORY[0x2822009F8](sub_2439F9C50, 0, 0);
}

uint64_t sub_2439F9C50()
{
  v1 = v0[5];
  v2 = v0[13];
  if (v1)
  {
    v3 = v2;
    v1(0, v2);
  }

  v4 = v0[1];

  return v4();
}

void sub_2439F9E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_243A0D31C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2439F9ED0(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2439F9EF4, 0, 0);
}

uint64_t sub_2439F9EF4()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F9F20, v1, 0);
}

uint64_t sub_2439F9F20()
{
  v1 = sub_2439FDA08(*(v0 + 24));
  *(v0 + 48) = v1;

  return MEMORY[0x2822009F8](sub_2439F9F90, v1, 0);
}

uint64_t sub_2439F9F90()
{
  *(v0 + 56) = *(*(v0 + 48) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FA06C, v2, v1);
}

uint64_t sub_2439FA06C()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FA100, v1, 0);
}

uint64_t sub_2439FA100()
{
  v1 = *(v0 + 104);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v4 = v0;
  v4[1] = sub_2439FA258;

  return v7(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A0FC68, v3, v5);
}

uint64_t sub_2439FA258()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_2439FA414;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2439FA388;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439FA388()
{
  v1 = v0[5];
  v0[12] = v0[2];
  return MEMORY[0x2822009F8](sub_2439FA3AC, v1, 0);
}

uint64_t sub_2439FA3AC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2439FA414()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2439FA488, v1, 0);
}

uint64_t sub_2439FA488()
{

  return MEMORY[0x2822009F8](sub_2439FA4F0, 0, 0);
}

uint64_t sub_2439FA4F0()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2439FA6E4(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2439FA774, 0, 0);
}

uint64_t sub_2439FA774()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439FA7A0, v1, 0);
}

uint64_t sub_2439FA7A0()
{
  *(v0 + 48) = sub_2439FDA08(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2439FA848;
  v2 = *(v0 + 80);

  return sub_2439FE24C(v2);
}

uint64_t sub_2439FA848(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_2439FAA78;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_2439FA984;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439FA984()
{

  return MEMORY[0x2822009F8](sub_2439FA9EC, 0, 0);
}

uint64_t sub_2439FA9EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  (v3)[2](v3, v2);
  _Block_release(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2439FAA78()
{

  return MEMORY[0x2822009F8](sub_2439FAAE0, 0, 0);
}

uint64_t sub_2439FAAE0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2439FAB70(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2439FAB94, 0, 0);
}

uint64_t sub_2439FAB94()
{
  v1 = v0[4];
  v0[5] = sub_2439F62F0(MEMORY[0x277D84F90]);
  v2 = *(v1 + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  v0[6] = v2;

  return MEMORY[0x2822009F8](sub_2439FAC14, v2, 0);
}

uint64_t sub_2439FAC14()
{
  v1 = sub_2439FDA08(*(v0 + 24));
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_2439FAC84, v1, 0);
}

uint64_t sub_2439FAC84()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FAD60, v2, v1);
}

uint64_t sub_2439FAD60()
{
  v1 = *(v0 + 56);
  *(v0 + 72) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FADF4, v1, 0);
}

uint64_t sub_2439FADF4()
{
  v1 = *(v0 + 112);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v4 = v0;
  v4[1] = sub_2439FAF4C;

  return v7(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A0FC78, v3, v5);
}

uint64_t sub_2439FAF4C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_2439FB448;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2439FB07C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439FB07C()
{
  v1 = v0[6];
  v0[13] = v0[2];
  return MEMORY[0x2822009F8](sub_2439FB0A0, v1, 0);
}

uint64_t sub_2439FB0A0()
{

  return MEMORY[0x2822009F8](sub_2439FB108, 0, 0);
}

uint64_t sub_2439FB108()
{
  v1 = [*(v0 + 104) ruleset];
  sub_2439F5784(0, &qword_27ED97C08, off_278DE00A0);
  v2 = sub_243A0D55C();

  v3 = sub_2439FB5A8(v2);

  if (v3 >> 62)
  {
LABEL_30:
    v4 = sub_243A0D77C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v36 = v3;
      v37 = v3 & 0xC000000000000001;
      v34 = v0;
      v35 = v3 & 0xFFFFFFFFFFFFFF8;
      v6 = *(v0 + 40);
      while (1)
      {
        if (v37)
        {
          v10 = MEMORY[0x245D44940](v5, v3);
        }

        else
        {
          if (v5 >= *(v35 + 16))
          {
            goto LABEL_29;
          }

          v10 = *(v3 + 8 * v5 + 32);
        }

        v11 = v10;
        v0 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v3 = v4;
        v12 = [v10 recommendationID];
        v13 = sub_243A0D4EC();
        v15 = v14;

        v16 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = sub_243A030EC(v13, v15);
        v20 = v6[2];
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_27;
        }

        v23 = v18;
        if (v6[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_243A03E1C(&qword_27ED97BB8, &qword_243A0FBA0);
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_243A0388C(v22, isUniquelyReferenced_nonNull_native, &qword_27ED97BB8, &qword_243A0FBA0);
          v24 = sub_243A030EC(v13, v15);
          if ((v23 & 1) != (v25 & 1))
          {

            return sub_243A0D82C();
          }

          v19 = v24;
          if (v23)
          {
LABEL_4:

            v7 = v6[7];
            v8 = *(v7 + 8 * v19);
            *(v7 + 8 * v19) = v16;

            goto LABEL_5;
          }
        }

        v6[(v19 >> 6) + 8] |= 1 << v19;
        v26 = (v6[6] + 16 * v19);
        *v26 = v13;
        v26[1] = v15;
        *(v6[7] + 8 * v19) = v16;

        v27 = v6[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_28;
        }

        v6[2] = v29;
LABEL_5:
        ++v5;
        v4 = v3;
        v9 = v0 == v3;
        v3 = v36;
        if (v9)
        {
          v0 = v34;
          v30 = *(v34 + 104);

          goto LABEL_32;
        }
      }
    }
  }

  v32 = *(v0 + 104);

  v6 = *(v0 + 40);
LABEL_32:
  v33 = *(v0 + 8);

  return v33(v6);
}

uint64_t sub_2439FB448()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439FB4BC, v1, 0);
}

uint64_t sub_2439FB4BC()
{

  return MEMORY[0x2822009F8](sub_2439FB530, 0, 0);
}

uint64_t sub_2439FB530()
{
  v1 = *(v0 + 96);
  v2 = sub_2439F62F0(MEMORY[0x277D84F90]);

  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_2439FB5A8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D44940](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject recommendationRules];
      sub_2439F5784(0, &qword_27ED97D40, off_278DE0078);
      v8 = sub_243A0D55C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_243A0D77C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243A0D77C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_243A0D77C();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243A0D75C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243A0D77C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2439F5814(&qword_27ED97D58, &qword_27ED97D50, &qword_243A10090, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D50, &qword_243A10090);
              v19 = sub_243A04000(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243A0D77C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2439FBACC(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_2439FBB98;

  return sub_2439FAB70(v8, a2);
}

uint64_t sub_2439FBB98(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  sub_2439F5784(0, &qword_27ED97D40, off_278DE0078);
  v5 = sub_243A0D4AC();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2439FBD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2439FBDA4, 0, 0);
}

uint64_t sub_2439FBDA4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439FBDD0, v1, 0);
}

uint64_t sub_2439FBDD0()
{
  *(v0 + 56) = sub_2439FDA08(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2439FBE78;
  v2 = *(v0 + 88);

  return sub_2439FEA38(v2);
}

uint64_t sub_2439FBE78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_2439FC014;
  }

  else
  {
    v6 = sub_2439FBFAC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439FBFAC()
{

  return MEMORY[0x2822009F8](sub_243A069F4, 0, 0);
}

uint64_t sub_2439FC014()
{

  return MEMORY[0x2822009F8](sub_243A069F8, 0, 0);
}

uint64_t sub_2439FC1F4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2439FC218, 0, 0);
}

uint64_t sub_2439FC218()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2439FC244, v1, 0);
}

uint64_t sub_2439FC244()
{
  *(v0 + 40) = sub_2439FDA08(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2439FC2EC;
  v2 = *(v0 + 72);

  return sub_2439FEA38(v2);
}

uint64_t sub_2439FC2EC(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_2439F9104;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_2439FC428;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439FC428()
{

  return MEMORY[0x2822009F8](sub_243A06A00, 0, 0);
}

uint64_t sub_2439FC620(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_243A06A14;

  return sub_2439FC1F4(v8, a2);
}

uint64_t sub_2439FC720(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_243A0D5DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v7;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  v19 = v7;
  v20 = a1;
  a6(a3, a4);
  sub_2439F8390(0, 0, v16, a7, v18);
}

uint64_t sub_2439FC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2439FC888, 0, 0);
}

uint64_t sub_2439FC888()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439FC8B4, v1, 0);
}

uint64_t sub_2439FC8B4()
{
  *(v0 + 56) = sub_2439FDA08(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2439FC95C;
  v2 = *(v0 + 88);

  return sub_2439FEE68(v2);
}

uint64_t sub_2439FC95C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_2439FCB78;
  }

  else
  {
    v6 = sub_2439FCA90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439FCA90()
{

  return MEMORY[0x2822009F8](sub_2439FCAF8, 0, 0);
}

uint64_t sub_2439FCAF8()
{
  v1 = v0[4];
  if (v1)
  {
    v1(v0[9], 0);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_2439FCB78()
{

  return MEMORY[0x2822009F8](sub_2439FCBE0, 0, 0);
}

uint64_t sub_2439FCBE0()
{
  v1 = v0[4];
  v2 = v0[10];
  if (v1)
  {
    v3 = v2;
    v1(0, v2);
  }

  v4 = v0[1];

  return v4();
}

void sub_2439FCDF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
    v5 = sub_243A0D54C();
  }

  if (a2)
  {
    v6 = sub_243A0D31C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_2439FCE9C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2439FCEC0, 0, 0);
}

uint64_t sub_2439FCEC0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2439FCEEC, v1, 0);
}

uint64_t sub_2439FCEEC()
{
  *(v0 + 40) = sub_2439FDA08(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2439FCF94;
  v2 = *(v0 + 72);

  return sub_2439FEE68(v2);
}

uint64_t sub_2439FCF94(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_2439FD134;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_2439FD0D0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439FD0D0()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2439FD134()
{

  return MEMORY[0x2822009F8](sub_2439FD19C, 0, 0);
}

uint64_t sub_2439FD19C()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_2439FD394(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2439FD424, 0, 0);
}

uint64_t sub_2439FD424()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439FD450, v1, 0);
}

uint64_t sub_2439FD450()
{
  *(v0 + 48) = sub_2439FDA08(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2439FD4F8;
  v2 = *(v0 + 80);

  return sub_2439FEE68(v2);
}

uint64_t sub_2439FD4F8(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_2439FD760;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_2439FD634;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2439FD634()
{

  return MEMORY[0x2822009F8](sub_2439FD69C, 0, 0);
}

uint64_t sub_2439FD69C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v3 = sub_243A0D54C();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2439FD760()
{

  return MEMORY[0x2822009F8](sub_2439FD7C8, 0, 0);
}

uint64_t sub_2439FD7C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v4 = sub_243A0D54C();

  (v3)[2](v3, v4);

  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

id RecommendationsFetcher.init()()
{
  v1 = OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers;
  type metadata accessor for DataFetchers();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_2439F60DC(MEMORY[0x277D84F90]);
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RecommendationsFetcher();
  return objc_msgSendSuper2(&v4, sel_init);
}

id RecommendationsFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationsFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2439FDA08(void *a1)
{
  v2 = v1;
  result = [a1 aa_altDSID];
  if (result || (result = [a1 aa_personID]) != 0)
  {
    v5 = result;
    v6 = sub_243A0D4EC();
    v8 = v7;

    swift_beginAccess();
    v9 = *(v2 + 112);
    if (*(v9 + 16))
    {

      v10 = sub_243A030EC(v6, v8);
      if (v11)
      {
        v12 = v10;

        v13 = *(*(v9 + 56) + 8 * v12);

        return v13;
      }
    }

    type metadata accessor for DataFetcher(0);
    swift_allocObject();
    v14 = a1;
    v13 = sub_243A0639C(v14);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_2439F16B4(v13, v6, v8, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v16;
    swift_endAccess();
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2439FDB8C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2439FDBC4(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FDBE8, v1, 0);
}

uint64_t sub_2439FDBE8()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FDCC4, v2, v1);
}

uint64_t sub_2439FDCC4()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FDD54, v1, 0);
}

uint64_t sub_2439FDD54()
{
  v1 = *(v0 + 72);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_2439F5784(0, &qword_27ED97D48, off_278DE00A8);
  *v4 = v0;
  v4[1] = sub_2439FDEA8;

  return v7(v0 + 16, 0xD000000000000014, 0x8000000243A11490, &unk_243A100B0, v3, v5);
}

uint64_t sub_2439FDEA8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_243A069E4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_243A06A24;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439FDFD8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FDFFC, 0, 0);
}

uint64_t sub_2439FDFFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2439FE124;
    v3 = *(v0 + 88);

    return sub_2439FF294(v3);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2439FE124(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_243A069F0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_243A069EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2439FE24C(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FE270, v1, 0);
}

uint64_t sub_2439FE270()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FE34C, v2, v1);
}

uint64_t sub_2439FE34C()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FE3E0, v1, 0);
}

uint64_t sub_2439FE3E0()
{
  v1 = *(v0 + 72);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v4 = v0;
  v4[1] = sub_2439FE538;

  return v7(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A10098, v3, v5);
}

uint64_t sub_2439FE538()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_2439FE684;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2439FE668;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439FE684()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2439FE6F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FE714, 0, 0);
}

uint64_t sub_2439FE714()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2439FE83C;
    v3 = *(v0 + 88);

    return sub_2439FFB64(v3);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2439FE83C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2439FE9D4;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_2439FE964;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2439FE964()
{
  v1 = v0[10];
  v2 = v0[5];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2439FE9D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2439FEA38(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FEA5C, v1, 0);
}

uint64_t sub_2439FEA5C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FEB38, v2, v1);
}

uint64_t sub_2439FEB38()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FEBC8, v1, 0);
}

uint64_t sub_2439FEBC8()
{
  v1 = *(v0 + 72);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_2439F5784(0, &qword_27ED97D48, off_278DE00A8);
  *v4 = v0;
  v4[1] = sub_2439FDEA8;

  return v7(v0 + 16, 0xD00000000000001DLL, 0x8000000243A11470, &unk_243A10080, v3, v5);
}

uint64_t sub_2439FED1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FED40, 0, 0);
}

uint64_t sub_2439FED40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2439FE124;
    v3 = *(v0 + 88);

    return sub_243A005C0(v3);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2439FEE68(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FEE8C, v1, 0);
}

uint64_t sub_2439FEE8C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FEF68, v2, v1);
}

uint64_t sub_2439FEF68()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FEFF8, v1, 0);
}

uint64_t sub_2439FEFF8()
{
  v1 = *(v0 + 72);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
  *v4 = v0;
  v4[1] = sub_2439FDEA8;

  return v7(v0 + 16, 0xD00000000000001ALL, 0x8000000243A11450, &unk_243A10070, v3, v5);
}

uint64_t sub_2439FF148(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FF16C, 0, 0);
}

uint64_t sub_2439FF16C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2439FE124;
    v3 = *(v0 + 88);

    return sub_243A013F8(v3);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2439FF294(char a1)
{
  *(v2 + 200) = v1;
  *(v2 + 296) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 208) = v3;
  *(v2 + 216) = *(v3 - 8);
  *(v2 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D18, &qword_243A0FF50);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C50, &qword_243A0FEA0);
  *(v2 + 248) = v4;
  *(v2 + 256) = *(v4 - 8);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2439FF410, v1, 0);
}

uint64_t sub_2439FF410()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations;
  *(v0 + 280) = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97D18, &qword_243A0FF50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 240);
    v7 = &qword_27ED97D18;
    v8 = &qword_243A0FF50;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v15 = sub_243A0D41C();
    __swift_project_value_buffer(v15, qword_27ED98738);
    v16 = sub_243A0D3FC();
    v17 = sub_243A0D62C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2439E1000, v16, v17, "Fetching fresh recommendations", v18, 2u);
      MEMORY[0x245D45310](v18, -1, -1);
    }

    v19 = *(v0 + 200);

    v20 = *(v19 + 112);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_2439FF90C;
    v21 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D20, &qword_243A0FF60);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_243A06A18;
    *(v0 + 104) = &block_descriptor_101;
    *(v0 + 112) = v21;
    [v20 fetchRecommendationsWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v9 = *(v0 + 272);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  sub_243A05838(*(v0 + 240), v9, &qword_27ED97C50, &qword_243A0FEA0);
  sub_243A0D3AC();
  sub_243A0D39C();
  v14 = v13;
  (*(v11 + 8))(v10, v12);
  if (v14 >= *v9 || (*(v0 + 296) & 1) != 0)
  {
    v6 = *(v0 + 272);
    v7 = &qword_27ED97C50;
    v8 = &qword_243A0FEA0;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v24 = sub_243A0D41C();
  __swift_project_value_buffer(v24, qword_27ED98738);
  sub_243A05B00(v23, v22, &qword_27ED97C50, &qword_243A0FEA0);
  v25 = sub_243A0D3FC();
  v26 = sub_243A0D62C();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 264);
  if (v27)
  {
    v29 = *(v0 + 248);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = *(v28 + *(v29 + 32));
    sub_2439F5714(v28, &qword_27ED97C50, &qword_243A0FEA0);
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&dword_2439E1000, v25, v26, "Reusing cached recommendations %@", v30, 0xCu);
    sub_2439F5714(v31, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v31, -1, -1);
    MEMORY[0x245D45310](v30, -1, -1);
  }

  else
  {

    sub_2439F5714(v28, &qword_27ED97C50, &qword_243A0FEA0);
  }

  v33 = *(v0 + 272);
  v34 = *(v33 + *(*(v0 + 248) + 32));
  sub_2439F5714(v33, &qword_27ED97C50, &qword_243A0FEA0);

  v35 = *(v0 + 8);

  return v35(v34);
}

uint64_t sub_2439FF90C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_243A069DC;
  }

  else
  {
    v4 = sub_2439FFA2C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2439FFA2C()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  *(v4 + *(v2 + 32)) = v5;
  *v4 = 0x40F5180000000000;
  v7 = v5;
  sub_243A0D3AC();
  (*(v3 + 56))(v4, 0, 1, v2);
  swift_beginAccess();
  sub_243A057D0(v4, v6 + v1, &qword_27ED97D18, &qword_243A0FF50);
  swift_endAccess();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2439FFB64(char a1)
{
  *(v2 + 200) = v1;
  *(v2 + 296) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 208) = v3;
  *(v2 + 216) = *(v3 - 8);
  *(v2 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D30, &qword_243A0FF70);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED97C70, &qword_243A0FEB0);
  *(v2 + 248) = v4;
  *(v2 + 256) = *(v4 - 8);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2439FFCE0, v1, 0);
}

uint64_t sub_2439FFCE0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset;
  *(v0 + 280) = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97D30, &qword_243A0FF70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 240);
    v7 = &qword_27ED97D30;
    v8 = &qword_243A0FF70;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v15 = sub_243A0D41C();
    __swift_project_value_buffer(v15, qword_27ED98738);
    v16 = sub_243A0D3FC();
    v17 = sub_243A0D62C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2439E1000, v16, v17, "Fetching fresh rulesets", v18, 2u);
      MEMORY[0x245D45310](v18, -1, -1);
    }

    v19 = *(v0 + 200);

    v20 = *(v19 + 112);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_243A001DC;
    v21 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D38, &qword_243A0FF78);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_243A06A18;
    *(v0 + 104) = &block_descriptor_97;
    *(v0 + 112) = v21;
    [v20 fetchRecommendationsRulesetWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v9 = *(v0 + 272);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  sub_243A05838(*(v0 + 240), v9, qword_27ED97C70, &qword_243A0FEB0);
  sub_243A0D3AC();
  sub_243A0D39C();
  v14 = v13;
  (*(v11 + 8))(v10, v12);
  if (v14 >= *v9 || (*(v0 + 296) & 1) != 0)
  {
    v6 = *(v0 + 272);
    v7 = qword_27ED97C70;
    v8 = &qword_243A0FEB0;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v24 = sub_243A0D41C();
  __swift_project_value_buffer(v24, qword_27ED98738);
  sub_243A05B00(v23, v22, qword_27ED97C70, &qword_243A0FEB0);
  v25 = sub_243A0D3FC();
  v26 = sub_243A0D62C();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 264);
  if (v27)
  {
    v29 = *(v0 + 248);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = *(v28 + *(v29 + 32));
    sub_2439F5714(v28, qword_27ED97C70, &qword_243A0FEB0);
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&dword_2439E1000, v25, v26, "Reusing cached rulesets %@", v30, 0xCu);
    sub_2439F5714(v31, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v31, -1, -1);
    MEMORY[0x245D45310](v30, -1, -1);
  }

  else
  {

    sub_2439F5714(v28, qword_27ED97C70, &qword_243A0FEB0);
  }

  v33 = *(v0 + 272);
  v34 = *(v33 + *(*(v0 + 248) + 32));
  sub_2439F5714(v33, qword_27ED97C70, &qword_243A0FEB0);

  v35 = *(v0 + 8);

  return v35(v34);
}

uint64_t sub_243A001DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_243A00434;
  }

  else
  {
    v4 = sub_243A002FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_243A002FC()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  *(v4 + *(v2 + 32)) = v5;
  *v4 = 0x40F5180000000000;
  v7 = v5;
  sub_243A0D3AC();
  (*(v3 + 56))(v4, 0, 1, v2);
  swift_beginAccess();
  sub_243A057D0(v4, v6 + v1, &qword_27ED97D30, &qword_243A0FF70);
  swift_endAccess();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_243A00434()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A004E8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D28, &qword_243A0FF68);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_243A005C0(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 352) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 216) = v3;
  *(v2 + 224) = *(v3 - 8);
  *(v2 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D18, &qword_243A0FF50);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C50, &qword_243A0FEA0);
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A0073C, v1, 0);
}

uint64_t sub_243A0073C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations;
  *(v0 + 288) = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97D18, &qword_243A0FF50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 248);
    v7 = &qword_27ED97D18;
    v8 = &qword_243A0FF50;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    *(v0 + 296) = *(*(v0 + 208) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
    sub_243A0D3EC();
    sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8], MEMORY[0x277CE47F0]);

    v16 = sub_243A0D59C();

    return MEMORY[0x2822009F8](sub_243A00B44, v16, v15);
  }

  v9 = *(v0 + 280);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  sub_243A05838(*(v0 + 248), v9, &qword_27ED97C50, &qword_243A0FEA0);
  sub_243A0D3AC();
  sub_243A0D39C();
  v14 = v13;
  (*(v11 + 8))(v10, v12);
  if (v14 >= *v9 || (*(v0 + 352) & 1) != 0)
  {
    v6 = *(v0 + 280);
    v7 = &qword_27ED97C50;
    v8 = &qword_243A0FEA0;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v19 = sub_243A0D41C();
  __swift_project_value_buffer(v19, qword_27ED98738);
  sub_243A05B00(v18, v17, &qword_27ED97C50, &qword_243A0FEA0);
  v20 = sub_243A0D3FC();
  v21 = sub_243A0D62C();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 272);
  if (v22)
  {
    v24 = *(v0 + 256);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = *(v23 + *(v24 + 32));
    sub_2439F5714(v23, &qword_27ED97C50, &qword_243A0FEA0);
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&dword_2439E1000, v20, v21, "Reusing cached completed recommendations %@", v25, 0xCu);
    sub_2439F5714(v26, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v26, -1, -1);
    MEMORY[0x245D45310](v25, -1, -1);
  }

  else
  {

    sub_2439F5714(v23, &qword_27ED97C50, &qword_243A0FEA0);
  }

  v28 = *(v0 + 280);
  v29 = *(v28 + *(*(v0 + 256) + 32));
  sub_2439F5714(v28, &qword_27ED97C50, &qword_243A0FEA0);

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_243A00B44()
{
  v1 = *(v0 + 208);
  *(v0 + 304) = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_243A00BDC, v1, 0);
}

uint64_t sub_243A00BDC()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v0 + 312) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v6 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  v4 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v3 = v0;
  v3[1] = sub_243A00D2C;

  return v6(v0 + 192, 0x6C75526863746566, 0xEC00000074657365, &unk_243A0FF58, v2, v4);
}

uint64_t sub_243A00D2C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = sub_243A01044;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_243A00E5C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_243A00E5C()
{
  v1 = v0;
  v2 = v0[24];
  v1[42] = v2;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v3 = sub_243A0D41C();
  __swift_project_value_buffer(v3, qword_27ED98738);
  v4 = sub_243A0D3FC();
  v5 = sub_243A0D62C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2439E1000, v4, v5, "Fetching fresh completed recommendations", v6, 2u);
    MEMORY[0x245D45310](v6, -1, -1);
  }

  v7 = v1[26];

  v8 = *(v7 + 112);
  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_243A010F0;
  v9 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D20, &qword_243A0FF60);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_243A06A18;
  v1[13] = &block_descriptor_93;
  v1[14] = v9;
  [v8 fetchCompletedRecommendations:v2 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_243A01044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A010F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 208);
  if (v2)
  {
    v4 = sub_243A01350;
  }

  else
  {
    v4 = sub_243A01210;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_243A01210()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[26];
  *(v5 + *(v3 + 32)) = v6;
  *v5 = 0x40F5180000000000;
  v8 = v6;
  sub_243A0D3AC();

  (*(v4 + 56))(v5, 0, 1, v3);
  swift_beginAccess();
  sub_243A057D0(v5, v7 + v2, &qword_27ED97D18, &qword_243A0FF50);
  swift_endAccess();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_243A01350()
{
  v1 = *(v0 + 336);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243A013F8(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97CF8, &qword_243A0FF28);
  *(v2 + 80) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C60, &qword_243A0FEA8);
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A01568, v1, 0);
}

uint64_t sub_243A01568()
{
  v41 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97CF8, &qword_243A0FF28);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 80);
    v7 = &qword_27ED97CF8;
    v8 = &qword_243A0FF28;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    v15 = *(v0 + 48);
    v16 = sub_243A056C8(&qword_27ED97D00, type metadata accessor for DataFetcher, &unk_243A0FED8);
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
    *v17 = v0;
    v17[1] = sub_243A019EC;
    v19 = *(v0 + 48);

    return MEMORY[0x2822008A0](v0 + 40, v15, v16, 0xD000000000000037, 0x8000000243A113B0, sub_243A054E0, v19, v18);
  }

  v9 = *(v0 + 112);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);
  sub_243A05838(*(v0 + 80), v9, &qword_27ED97C60, &qword_243A0FEA8);
  sub_243A0D3AC();
  sub_243A0D39C();
  v14 = v13;
  (*(v11 + 8))(v10, v12);
  if (v14 >= *v9 || (*(v0 + 136) & 1) != 0)
  {
    v6 = *(v0 + 112);
    v7 = &qword_27ED97C60;
    v8 = &qword_243A0FEA8;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = sub_243A0D41C();
  __swift_project_value_buffer(v22, qword_27ED98738);
  sub_243A05B00(v21, v20, &qword_27ED97C60, &qword_243A0FEA8);
  v23 = sub_243A0D3FC();
  v24 = sub_243A0D62C();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 104);
  if (v25)
  {
    v27 = *(v0 + 88);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315138;
    v30 = *(v26 + *(v27 + 32));
    v31 = sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
    v32 = MEMORY[0x245D44760](v30, v31);
    v34 = v33;
    sub_2439F5714(v26, &qword_27ED97C60, &qword_243A0FEA8);
    v35 = sub_243A08B04(v32, v34, &v40);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_2439E1000, v23, v24, "Reusing cached client recommendations %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245D45310](v29, -1, -1);
    MEMORY[0x245D45310](v28, -1, -1);
  }

  else
  {

    sub_2439F5714(v26, &qword_27ED97C60, &qword_243A0FEA8);
  }

  v36 = *(v0 + 112);
  v37 = *(v36 + *(*(v0 + 88) + 32));

  sub_2439F5714(v36, &qword_27ED97C60, &qword_243A0FEA8);

  v38 = *(v0 + 8);

  return v38(v37);
}

uint64_t sub_243A019EC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_243A01BA8;
  }

  else
  {
    v4 = sub_243A01B18;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_243A01B18()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_243A01BA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A01C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A0D43C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_243A0D46C();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v12 = sub_243A0D41C();
  __swift_project_value_buffer(v12, qword_27ED98738);
  v13 = sub_243A0D3FC();
  v14 = sub_243A0D62C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2439E1000, v13, v14, "Fetching fresh client recommendations", v15, 2u);
    MEMORY[0x245D45310](v15, -1, -1);
  }

  v16 = *(a2 + 120);
  v17 = MEMORY[0x277D84F90];
  v18 = sub_2439F61E0(MEMORY[0x277D84F90]);
  v19 = sub_2439F61E0(v17);
  (*(v8 + 16))(v11, a1, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v11, v7);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v22 = qword_27ED979C8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v24 = MEMORY[0x277D84FA0];
  v23[2] = v16;
  v23[3] = v24;
  v23[4] = v18;
  v23[5] = v19;
  v23[6] = sub_243A05590;
  v23[7] = v21;
  aBlock[4] = sub_243A056A0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2439F2CF8;
  aBlock[3] = &block_descriptor_0;
  v25 = _Block_copy(aBlock);
  v26 = v16;

  v27 = v32;
  sub_243A0D44C();
  v38 = MEMORY[0x277D84F90];
  sub_243A056C8(&qword_27ED97A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
  sub_2439F5814(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40, MEMORY[0x277D83970]);
  v28 = v34;
  v29 = v37;
  sub_243A0D6DC();
  MEMORY[0x245D44890](0, v27, v28, v25);
  _Block_release(v25);

  (*(v36 + 8))(v28, v29);
  (*(v33 + 8))(v27, v35);
}

uint64_t sub_243A0214C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97CF8, &qword_243A0FF28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v23 - v8);
  if (a2)
  {
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v10 = sub_243A0D41C();
    __swift_project_value_buffer(v10, qword_27ED98738);
    v11 = a2;
    v12 = sub_243A0D3FC();
    v13 = sub_243A0D63C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2439E1000, v12, v13, "Error fetching client recommendations: %@", v14, 0xCu);
      sub_2439F5714(v15, &qword_27ED97AC0, &unk_243A0F9D0);
      MEMORY[0x245D45310](v15, -1, -1);
      MEMORY[0x245D45310](v14, -1, -1);
    }

    sub_243A05710();
    v18 = swift_allocError();
    *v19 = 1;
    v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
    return sub_243A0D5AC();
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C60, &qword_243A0FEA8);
    *(v9 + *(v21 + 32)) = a1;
    *v9 = 0x40F5180000000000;

    sub_243A0D3AC();
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    v22 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations;
    swift_beginAccess();
    sub_243A057D0(v9, a4 + v22, &qword_27ED97CF8, &qword_243A0FF28);
    swift_endAccess();
    v24 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
    return sub_243A0D5BC();
  }
}

uint64_t sub_243A02434()
{
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations, &qword_27ED97D18, &qword_243A0FF50);
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations, &qword_27ED97CF8, &qword_243A0FF28);
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations, &qword_27ED97D18, &qword_243A0FF50);
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset, &qword_27ED97D30, &qword_243A0FF70);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_243A02520(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_243A0256C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439F8814(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A02648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439F959C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A02724()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A0275C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_243A02794(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FE6F0(a1, v4, v5);
}

uint64_t sub_243A02844(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243A0293C;

  return v6(a1);
}

uint64_t sub_243A0293C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243A02A34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_243A069D0;

  return v6();
}

uint64_t sub_243A02B1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_243A02C04;

  return v7();
}

uint64_t sub_243A02C04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243A02CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_243A05B00(a3, v23 - v10, &qword_27ED97BE0, &qword_243A0FC10);
  v12 = sub_243A0D5DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2439F5714(v11, &qword_27ED97BE0, &qword_243A0FC10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_243A0D5CC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_243A0D59C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_243A0D4FC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);

    return v21;
  }

LABEL_8:
  sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_243A02FF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243A069D4;

  return v6(a1);
}

unint64_t sub_243A030EC(uint64_t a1, uint64_t a2)
{
  sub_243A0D89C();
  sub_243A0D50C();
  v4 = sub_243A0D8BC();

  return sub_243A031A8(a1, a2, v4);
}

unint64_t sub_243A03164(uint64_t a1)
{
  v2 = sub_243A0D6FC();

  return sub_243A03260(a1, v2);
}

unint64_t sub_243A031A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_243A0D7FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243A03260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_243A05430(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D44900](v9, a1);
      sub_243A0548C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_243A03328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BA8, &qword_243A0FB90);
  v34 = v4;
  result = sub_243A0D79C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_243A0D89C();
      sub_243A0D50C();
      result = sub_243A0D8BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_243A035E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BB0, &qword_243A0FB98);
  v34 = v4;
  result = sub_243A0D79C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_243A0D89C();
      sub_243A0D50C();
      result = sub_243A0D8BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_243A0388C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_243A0D79C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_243A0D89C();
      sub_243A0D50C();
      result = sub_243A0D8BC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *sub_243A03B28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BA8, &qword_243A0FB90);
  v2 = *v0;
  v3 = sub_243A0D78C();
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

void *sub_243A03CAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BB0, &qword_243A0FB98);
  v2 = *v0;
  v3 = sub_243A0D78C();
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

id sub_243A03E1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_243A0D78C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void (*sub_243A03F78(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D44940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243A03FF8;
  }

  __break(1u);
  return result;
}

void (*sub_243A04000(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D44940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243A069FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_243A04080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A02C04;

  return sub_2439FE6F0(a1, v4, v5);
}

uint64_t sub_243A04130(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439FBD7C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A0420C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439FC860(a1, v4, v5, v6, v7, v8, v10, v9);
}

unint64_t sub_243A04334()
{
  result = qword_27ED97C10;
  if (!qword_27ED97C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97C10);
  }

  return result;
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchServerRecommendationsAsync(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A06A04;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchRules(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x80);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A06A04;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchRulesetsAsync(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A06A04;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchCompletedRecommendations(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A06A04;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchClientRecommendationsAsync(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A04B04;

  return v9(a1, a2);
}

uint64_t sub_243A04B04(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata accessor for DataFetcher(uint64_t a1)
{
  result = qword_27ED97C38;
  if (!qword_27ED97C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A04C64(uint64_t a1)
{
  sub_243A04DD8(319, &qword_27ED97C48, &qword_27ED97C50, &qword_243A0FEA0);
  if (v1 <= 0x3F)
  {
    sub_243A04DD8(319, &qword_27ED97C58, &qword_27ED97C60, &qword_243A0FEA8);
    if (v2 <= 0x3F)
    {
      sub_243A04DD8(319, &qword_27ED97C68, qword_27ED97C70, &qword_243A0FEB0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243A04DD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243A0D6CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243A04E34(uint64_t a1)
{
  result = sub_243A0D3BC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_243A04ECC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_243A0D3BC() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_26;
  }

  v14 = ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_25:
      if (v13)
      {
LABEL_26:
        if (v7 >= v9)
        {
          v21 = *(v6 + 48);

          return v21((a1 + v10 + 8) & ~v10);
        }

        else
        {
          v19 = *(v8 + 48);

          return v19((((a1 + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v13 + (v14 | v18) + 1;
}

void sub_243A05128(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_243A0D3BC() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  v16 = ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + *(v10 + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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

      goto LABEL_31;
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

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(&a1[v12 + 8] & ~v12, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(((&a1[v12 + 8] & ~v12) + v13 + v14) & ~v14, a2, v11);
  }
}

uint64_t sub_243A054E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_243A05590(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243A0214C(a1, a2, v2 + v6, v7);
}

uint64_t sub_243A05648()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A056C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243A05710()
{
  result = qword_27ED97D10;
  if (!qword_27ED97D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97D10);
  }

  return result;
}

uint64_t sub_243A05774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243A057D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A05838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A058AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FD394(v2, v3, v5, v4);
}

uint64_t sub_243A05974()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243A069D0;

  return sub_243A02A34(v2, v3, v4);
}

uint64_t sub_243A05A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A069D0;

  return sub_243A02B1C(a1, v4, v5, v6);
}

uint64_t sub_243A05B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A05B68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A05BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A069D0;

  return sub_243A02FF4(a1, v4);
}

uint64_t sub_243A05C5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A02C04;

  return sub_2439FC860(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A05D38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A05D78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FC620(v2, v3, v5, v4);
}

uint64_t sub_243A05E3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FBACC(v2, v3, v5, v4);
}

uint64_t sub_243A05F00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FA6E4(v2, v3, v5, v4);
}

uint64_t objectdestroy_104Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243A06028()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439F92FC(v2, v3, v5, v4);
}

uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A0618C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FF148(a1, v4, v5);
}

uint64_t sub_243A0623C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FED1C(a1, v4, v5);
}

uint64_t sub_243A062EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FDFD8(a1, v4, v5);
}

uint64_t sub_243A0639C(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C50, &qword_243A0FEA0);
  v6 = *(*(v5 - 8) + 56);
  v6(v2 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C60, &qword_243A0FEA8);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v6(v2 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations, 1, 1, v5);
  v9 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED97C70, &qword_243A0FEB0);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters;
  sub_243A0D3EC();
  *(v2 + v11) = sub_243A0D3DC();
  *(v2 + 112) = [objc_allocWithZone(CERecommendationDataController) initWithAccount_];
  v12 = objc_allocWithZone(type metadata accessor for ClientRecommendationsRepository());
  *(v2 + 120) = sub_243A09FB0(a1);
  return v2;
}

uint64_t sub_243A06558(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A069D0;

  return sub_243A02844(a1, v4);
}

uint64_t sub_243A06610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A06650(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F76BC(a1, v5, v4);
}

uint64_t sub_243A066FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F7950(a1, v5, v4);
}

uint64_t sub_243A067A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F7C6C(a1, v5, v4);
}

uint64_t sub_243A06854(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F82A0(a1, v5, v4);
}

uint64_t (*sub_243A06A28(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_243A093A0(v6, a2, a3);
  return sub_243A06AB0;
}

void sub_243A06AB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_243A06AFC(char a1)
{
  v17 = a1 & 1;
  sub_2439F5F14();
  v1 = sub_243A0D7DC();
  if (!v1)
  {
    v1 = swift_allocError();
    *v2 = v17;
  }

  v3 = v1;
  v4 = sub_243A0D31C();

  v5 = [v4 domain];
  if (!v5)
  {
    sub_243A0D4EC();
    v5 = sub_243A0D4BC();
  }

  v6 = [v4 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B60, &unk_243A0FA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243A0F9F0;
  *(inited + 32) = sub_243A0D4EC();
  *(inited + 40) = v8;
  v9 = [v4 localizedDescription];
  v10 = sub_243A0D4EC();
  v12 = v11;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  sub_2439F5D40(inited);
  swift_setDeallocating();
  sub_2439F5714(inited + 32, &qword_27ED97B68, &unk_243A101B0);
  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v14 = sub_243A0D4AC();

  v15 = [v13 initWithDomain:v5 code:v6 userInfo:v14];

  return v15;
}

id ClientRecommendationsRepository.__allocating_init(account:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_243A09FB0(a1);

  return v4;
}

uint64_t sub_243A06D3C()
{
  v1 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243A06D80(char a1)
{
  v3 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243A06E30()
{
  v7 = sub_243A0D68C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_243A0D66C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_243A0D46C();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2439F5784(0, &qword_27ED97AE0, 0x277D85C78);
  sub_243A0D45C();
  v8 = MEMORY[0x277D84F90];
  sub_243A0A588(&qword_27ED97AE8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AF0, &qword_243A0F9E8);
  sub_243A0A5D0(&qword_27ED97AF8, &qword_27ED97AF0, &qword_243A0F9E8);
  sub_243A0D6DC();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_243A0D6AC();
  qword_27ED97D60 = result;
  return result;
}

id ClientRecommendationsRepository.init(account:)(void *a1)
{
  v2 = sub_243A09FB0(a1);

  return v2;
}

uint64_t sub_243A070C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_243A0D43C();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_243A0D46C();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED979C8 != -1)
  {
    swift_once();
  }

  v21 = qword_27ED97D60;
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  aBlock[4] = sub_243A0A12C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2439F2CF8;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);
  v19 = v5;

  sub_243A0D44C();
  v24 = MEMORY[0x277D84F90];
  sub_243A0A588(&qword_27ED97A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
  sub_243A0A5D0(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40);
  sub_243A0D6DC();
  MEMORY[0x245D44890](0, v16, v13, v18);
  _Block_release(v18);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);
}

void sub_243A07420(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void *a5)
{
  v11 = [*&v5[OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_account] aa_altDSID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_243A0D4EC();
    v15 = v14;

    v16 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
    swift_beginAccess();
    if ((v5[v16] & 1) == 0)
    {
      v34 = v5;
      if (qword_27ED979B0 != -1)
      {
        swift_once();
      }

      sub_2439F091C(v13, v15);
      if (v17)
      {
        v18 = v17;
        if (qword_27ED979B8 != -1)
        {
          swift_once();
        }

        v19 = sub_243A0D41C();
        __swift_project_value_buffer(v19, qword_27ED98738);

        v20 = sub_243A0D3FC();
        v21 = sub_243A0D62C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v36 = v23;
          *v22 = 136315138;
          v24 = sub_243A08B04(v13, v15, &v36);

          *(v22 + 4) = v24;
          _os_log_impl(&dword_2439E1000, v20, v21, "Returning cached recommendations for altDSID:%s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x245D45310](v23, -1, -1);
          MEMORY[0x245D45310](v22, -1, -1);
        }

        else
        {
        }

        (a4)(v18, 0);

        return;
      }

      if (qword_27ED979B8 != -1)
      {
        swift_once();
      }

      v29 = sub_243A0D41C();
      __swift_project_value_buffer(v29, qword_27ED98738);
      v30 = sub_243A0D3FC();
      v31 = sub_243A0D62C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2439E1000, v30, v31, "No cache found, reaching out to client donors.", v32, 2u);
        MEMORY[0x245D45310](v32, -1, -1);
      }

      v5 = v34;
    }

    v33 = *&v5[OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_pluginsLoader];

    sub_2439F3334(a1, a2, a3, v33, a1, a4, a5, v13, v15);

    swift_bridgeObjectRelease_n();
    return;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v25 = sub_243A0D41C();
  __swift_project_value_buffer(v25, qword_27ED98738);
  v26 = sub_243A0D3FC();
  v27 = sub_243A0D63C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2439E1000, v26, v27, "Invalid account. No altDSID found.", v28, 2u);
    MEMORY[0x245D45310](v28, -1, -1);
  }

  v35 = sub_243A06AFC(0);
  (a4)(MEMORY[0x277D84F90], v35);
}

void sub_243A078A4(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v12 = sub_243A0D41C();
  __swift_project_value_buffer(v12, qword_27ED98738);
  v13 = sub_243A0D3FC();
  v14 = sub_243A0D62C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a4;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2439E1000, v13, v14, "Request to fetch recommendations from client donors has been completed.", v16, 2u);
    v17 = v16;
    a4 = v15;
    MEMORY[0x245D45310](v17, -1, -1);
  }

  if (!a2)
  {
    if (a1 >> 62)
    {
      if (sub_243A0D77C())
      {
        goto LABEL_13;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if (qword_27ED979B0 != -1)
      {
        swift_once();
      }

      sub_2439F0644(a6, a7, a1);
    }

    a4(a1, 0);
    return;
  }

  v18 = a2;
  v19 = sub_243A0D3FC();
  v20 = sub_243A0D63C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 136315394;
    v24 = sub_243A0D5EC();
    v26 = sub_243A08B04(v24, v25, &v30);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v22 = v28;
    _os_log_impl(&dword_2439E1000, v19, v20, "Unable to fetch recommendations from client donors for bundles:%s error: %@", v21, 0x16u);
    sub_2439F5714(v22, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x245D45310](v23, -1, -1);
    MEMORY[0x245D45310](v21, -1, -1);
  }

  v29 = sub_243A06AFC(1);
  a4(MEMORY[0x277D84F90], v29);
}

void sub_243A07C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v54 = a3;
  v55 = a4;
  v11 = sub_243A0D43C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243A0D46C();
  v56 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*&v6[OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_account] aa_altDSID];
  if (v18)
  {
    v51 = v15;
    v52 = v12;
    v53 = a5;
    v19 = v18;
    v20 = sub_243A0D4EC();
    v22 = v21;

    v23 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
    swift_beginAccess();
    if (v6[v23])
    {

LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D78, qword_243A10138);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_243A0F9F0;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v43 = sub_243A0A148(inited);
      swift_setDeallocating();
      sub_243A0A1E0(inited + 32);
      v44 = swift_allocObject();
      *(v44 + 16) = v53;
      *(v44 + 24) = a6;
      v45 = qword_27ED979C8;

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = swift_allocObject();
      v46[2] = v6;
      v46[3] = v43;
      v47 = v55;
      v46[4] = v54;
      v46[5] = v47;
      v46[6] = sub_243A0A26C;
      v46[7] = v44;
      aBlock[4] = sub_243A0A62C;
      aBlock[5] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2439F2CF8;
      aBlock[3] = &block_descriptor_10;
      v48 = _Block_copy(aBlock);
      v49 = v6;

      sub_243A0D44C();
      v57 = MEMORY[0x277D84F90];
      sub_243A0A588(&qword_27ED97A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
      sub_243A0A5D0(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40);
      sub_243A0D6DC();
      MEMORY[0x245D44890](0, v17, v14, v48);
      _Block_release(v48);

      (*(v52 + 8))(v14, v11);
      v56[1](v17, v51);

      return;
    }

    v50 = a6;
    v29 = v6;
    if (qword_27ED979B0 != -1)
    {
      swift_once();
    }

    sub_2439F0AF0(v20, v22, a1, a2);
    if (!v30)
    {

      if (qword_27ED979B8 != -1)
      {
        swift_once();
      }

      v38 = sub_243A0D41C();
      __swift_project_value_buffer(v38, qword_27ED98738);
      v39 = sub_243A0D3FC();
      v40 = sub_243A0D62C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2439E1000, v39, v40, "No cache found, reaching out to client donors.", v41, 2u);
        MEMORY[0x245D45310](v41, -1, -1);
      }

      v6 = v29;
      a6 = v50;
      goto LABEL_23;
    }

    v31 = v30;
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v32 = sub_243A0D41C();
    __swift_project_value_buffer(v32, qword_27ED98738);

    v33 = sub_243A0D3FC();
    v34 = sub_243A0D62C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = sub_243A08B04(v20, v22, aBlock);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_2439E1000, v33, v34, "Returning cached recommendations for altDSID:%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x245D45310](v36, -1, -1);
      MEMORY[0x245D45310](v35, -1, -1);
    }

    else
    {
    }

    v53(v31, 0);
  }

  else
  {
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v24 = sub_243A0D41C();
    __swift_project_value_buffer(v24, qword_27ED98738);
    v25 = sub_243A0D3FC();
    v26 = sub_243A0D63C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2439E1000, v25, v26, "Invalid account. No altDSID found.", v27, 2u);
      MEMORY[0x245D45310](v27, -1, -1);
    }

    v56 = sub_243A06AFC(0);
    a5(MEMORY[0x277D84F90], v56);
    v28 = v56;
  }
}

void sub_243A083E8()
{
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v1 = sub_243A0D41C();
  __swift_project_value_buffer(v1, qword_27ED98738);
  v2 = sub_243A0D3FC();
  v3 = sub_243A0D62C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2439E1000, v2, v3, "Clear recommendations cache.", v4, 2u);
    MEMORY[0x245D45310](v4, -1, -1);
  }

  v5 = [*(v0 + OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_account) aa_altDSID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_243A0D4EC();
    v9 = v8;

    if (qword_27ED979B0 != -1)
    {
      swift_once();
    }

    v10 = qword_27ED98730;
    os_unfair_lock_lock((*(qword_27ED98730 + 16) + 16));
    swift_beginAccess();
    sub_243A090BC(v7, v9);
    swift_endAccess();

    os_unfair_lock_unlock((*(v10 + 16) + 16));
  }

  else
  {
    oslog = sub_243A0D3FC();
    v11 = sub_243A0D63C();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2439E1000, oslog, v11, "Invalid account. No altDSID found.", v12, 2u);
      MEMORY[0x245D45310](v12, -1, -1);
    }
  }
}

void sub_243A08630(uint64_t a1, unint64_t a2)
{
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v5 = sub_243A0D41C();
  __swift_project_value_buffer(v5, qword_27ED98738);

  v6 = sub_243A0D3FC();
  v7 = sub_243A0D62C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_243A08B04(a1, a2, v23);
    _os_log_impl(&dword_2439E1000, v6, v7, "Remove recommendations %s from client cache.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D45310](v9, -1, -1);
    MEMORY[0x245D45310](v8, -1, -1);
  }

  v10 = [*(v2 + OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_account) aa_altDSID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_243A0D4EC();
    v14 = v13;

    if (qword_27ED979B0 != -1)
    {
      swift_once();
    }

    v15 = qword_27ED98730;
    os_unfair_lock_lock((*(qword_27ED98730 + 16) + 16));
    v16 = sub_2439F04D0(v23);
    v17 = sub_243A06A28(v22, v12, v14);
    if (*v18)
    {
    }

    (v17)(v22, 0);

    (v16)(v23, 0);
    os_unfair_lock_unlock((*(v15 + 16) + 16));
  }

  else
  {
    oslog = sub_243A0D3FC();
    v19 = sub_243A0D63C();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2439E1000, oslog, v19, "Invalid account. No altDSID found.", v20, 2u);
      MEMORY[0x245D45310](v20, -1, -1);
    }
  }
}

id ClientRecommendationsRepository.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientRecommendationsRepository.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClientRecommendationsRepository();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_243A08A50(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_243A08AA8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_243A08B04(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_243A08B04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243A08BD0(v11, 0, 0, 1, a1, a2);
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
    sub_243A05774(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_243A08BD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243A08CDC(a5, a6);
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
    result = sub_243A0D76C();
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

void *sub_243A08CDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_243A08D28(a1, a2);
  sub_243A08E58(&unk_2856B2148);
  return v3;
}

void *sub_243A08D28(uint64_t a1, unint64_t a2)
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

  v6 = sub_243A08F44(v5, 0);
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

  result = sub_243A0D76C();
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
        v10 = sub_243A0D51C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243A08F44(v10, 0);
        result = sub_243A0D73C();
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

uint64_t sub_243A08E58(uint64_t result)
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

  result = sub_243A08FB8(result, v11, 1, v3);
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