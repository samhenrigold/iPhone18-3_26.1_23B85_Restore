id SYDGetConnectionLog(uint64_t a1)
{
  if (SYDGetConnectionLog_onceToken != -1)
  {
    SYDGetConnectionLog_cold_1();
  }

  v2 = SYDGetConnectionLog_log;

  return v2;
}

uint64_t __SYDGetConnectionLog_block_invoke()
{
  SYDGetConnectionLog_log = os_log_create("com.apple.kvs", "Connection");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SYDIsDataSeparatedPersona()
{
  v0 = [MEMORY[0x1E69DF078] currentPersona];
  v1 = [v0 isDataSeparatedPersona];

  return v1;
}

id SYDContainerID(unint64_t a1, uint64_t a2)
{
  if (a1 <= 3)
  {
    a1 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:off_1E831A5B0[a1] environment:a2];
  }

  return a1;
}

id SYDGetAccessorSignpostsLog()
{
  if (SYDGetAccessorSignpostsLog_onceToken != -1)
  {
    SYDGetAccessorSignpostsLog_cold_1();
  }

  v1 = SYDGetAccessorSignpostsLog_log;

  return v1;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = 1752392040;
  *(a3 + 12) = 2113;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x20u);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *SYDStringForStoreType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E831A590[a1];
  }
}

void sub_1C8628110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8628454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

uint64_t __SYDGetAccessorSignpostsLog_block_invoke()
{
  SYDGetAccessorSignpostsLog_log = os_log_create("com.apple.kvs", "AccessorSignposts");

  return MEMORY[0x1EEE66BB8]();
}

id SYDErrorUserInfoClasses()
{
  if (SYDErrorUserInfoClasses_onceToken != -1)
  {
    SYDErrorUserInfoClasses_cold_1();
  }

  v1 = SYDErrorUserInfoClasses_sAcceptableClasses;

  return v1;
}

uint64_t __SYDErrorUserInfoClasses_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  SYDErrorUserInfoClasses_sAcceptableClasses = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C8628E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v20 - 112));
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

CFTypeRef sub_1C8629318()
{
  v1 = *v0;
  v2 = sub_1C86395CC();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  return v3;
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

id sub_1C86294F0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C86395FC();

  return v5;
}

void *SYDEntitlements.additionalStoreIdentifiers.getter()
{
  v1 = sub_1C86395CC();
  v2 = [v0 valueForEntitlement_];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C863964C();
  swift_unknownObjectRelease();
  sub_1C862977C(&v8, v10);
  sub_1C8629720(v10, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC830, &qword_1C863AD78);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v9;
  }

  sub_1C8629720(v10, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC838, &qword_1C863AD80);
  if (!swift_dynamicCast())
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v10);
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v9;
  v5 = *(v9 + 16);
  if (v5)
  {
    v6 = sub_1C86365EC(*(v9 + 16), 0);
    v7 = sub_1C8637064(&v8, v6 + 4, v5, v4);
    sub_1C8629718(v8);
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v6;
}

uint64_t sub_1C8629720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C862977C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SYDObjectsAreBothNilOrEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  return v6;
}

uint64_t __SYDGetSyncSignpostsLog_block_invoke()
{
  SYDGetSyncSignpostsLog_log = os_log_create("com.apple.kvs", "SyncSignposts");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

id SYDGetSyncSignpostsLog()
{
  if (SYDGetSyncSignpostsLog_onceToken != -1)
  {
    SYDGetSyncSignpostsLog_cold_1();
  }

  v1 = SYDGetSyncSignpostsLog_log;

  return v1;
}

id SYDGetMiscLog(uint64_t a1)
{
  if (SYDGetMiscLog_onceToken != -1)
  {
    SYDGetMiscLog_cold_1();
  }

  v2 = SYDGetMiscLog_log;

  return v2;
}

uint64_t __SYDGetMiscLog_block_invoke()
{
  SYDGetMiscLog_log = os_log_create("com.apple.kvs", "Misc");

  return MEMORY[0x1EEE66BB8]();
}

id SYDGetCloudKitLog(uint64_t a1)
{
  if (SYDGetCloudKitLog_onceToken != -1)
  {
    SYDGetCloudKitLog_cold_1();
  }

  v2 = SYDGetCloudKitLog_log;

  return v2;
}

uint64_t __SYDGetCloudKitLog_block_invoke()
{
  SYDGetCloudKitLog_log = os_log_create("com.apple.kvs", "CloudKit");

  return MEMORY[0x1EEE66BB8]();
}

id SYDGetCoreDataLog(uint64_t a1)
{
  if (SYDGetCoreDataLog_onceToken != -1)
  {
    SYDGetCoreDataLog_cold_1();
  }

  v2 = SYDGetCoreDataLog_log;

  return v2;
}

uint64_t __SYDGetCoreDataLog_block_invoke()
{
  SYDGetCoreDataLog_log = os_log_create("com.apple.kvs", "CoreData");

  return MEMORY[0x1EEE66BB8]();
}

id SYDGetAnalyticsLog(uint64_t a1)
{
  if (SYDGetAnalyticsLog_onceToken != -1)
  {
    SYDGetAnalyticsLog_cold_1();
  }

  v2 = SYDGetAnalyticsLog_log;

  return v2;
}

uint64_t __SYDGetAnalyticsLog_block_invoke()
{
  SYDGetAnalyticsLog_log = os_log_create("com.apple.kvs", "Analytics");

  return MEMORY[0x1EEE66BB8]();
}

id SYDGetAccountsLog(uint64_t a1)
{
  if (SYDGetAccountsLog_onceToken != -1)
  {
    SYDGetAccountsLog_cold_1();
  }

  v2 = SYDGetAccountsLog_log;

  return v2;
}

uint64_t __SYDGetAccountsLog_block_invoke()
{
  SYDGetAccountsLog_log = os_log_create("com.apple.kvs", "Accounts");

  return MEMORY[0x1EEE66BB8]();
}

id SYDGetMigrationLog(uint64_t a1)
{
  if (SYDGetMigrationLog_onceToken != -1)
  {
    SYDGetMigrationLog_cold_1();
  }

  v2 = SYDGetMigrationLog_log;

  return v2;
}

uint64_t __SYDGetMigrationLog_block_invoke()
{
  SYDGetMigrationLog_log = os_log_create("com.apple.kvs", "Migration");

  return MEMORY[0x1EEE66BB8]();
}

id SYDGetTCCLog(uint64_t a1)
{
  if (SYDGetTCCLog_onceToken != -1)
  {
    SYDGetTCCLog_cold_1();
  }

  v2 = SYDGetTCCLog_log;

  return v2;
}

uint64_t __SYDGetTCCLog_block_invoke()
{
  SYDGetTCCLog_log = os_log_create("com.apple.kvs", "TCC");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C862C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  os_activity_scope_leave((v15 - 80));
  _Unwind_Resume(a1);
}

void sub_1C862D2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  _Block_object_dispose((v29 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C862DC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C862E608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v47 - 240));
  _Unwind_Resume(a1);
}

void sub_1C862F41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v27 - 160), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C862F864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v20 - 48));
  _Unwind_Resume(a1);
}

void sub_1C862FC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  os_activity_scope_leave((v16 - 64));
  _Unwind_Resume(a1);
}

void sub_1C862FF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8631550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v13 - 64));
  _Unwind_Resume(a1);
}

void sub_1C8632A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave((v16 - 80));
  _Unwind_Resume(a1);
}

void sub_1C8633494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8633634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C86338C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C8633EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id SYDClientToDaemonConnection.object<A>(forKey:)@<X0>(uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1C863963C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - v11;
  v13 = sub_1C86395CC();
  v34 = 0;
  v35[0] = 0;
  v14 = [v5 getObject:v35 forKey:v13 error:&v34];

  v16 = v34;
  v15 = v35[0];
  if (v14)
  {
    if (!v35[0])
    {
      (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
      return v16;
    }

    swift_unknownObjectRetain_n();
    v17 = v16;
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      v18 = *(a3 - 8);
      v19 = *(v18 + 56);
      v19(v12, 0, 1, a3);
      (*(v18 + 32))(a4, v12, a3);
      v19(a4, 0, 1, a3);
      return swift_unknownObjectRelease();
    }

    (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    sub_1C86356A4();
    v22 = swift_allocError();
    v24 = v23;
    v23[3] = swift_getObjectType();
    *v24 = v15;
  }

  else
  {
    v21 = v34;
    swift_unknownObjectRetain();
    v22 = sub_1C863958C();
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  if (qword_1EC2AC7D0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C86395BC();
  __swift_project_value_buffer(v25, static Logger.client);
  v26 = v22;
  v27 = sub_1C863959C();
  v28 = sub_1C863962C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_1C8626000, v27, v28, "Error getting object for key: %@", v29, 0xCu);
    sub_1C86355F4(v30);
    MEMORY[0x1CCA79310](v30, -1, -1);
    MEMORY[0x1CCA79310](v29, -1, -1);
  }

  return swift_willThrow();
}

id SYDClientToDaemonConnection.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1C86356F8(a1, v15);
  v4 = v16;
  if (v16)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5, v5);
    v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1C863967C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1C86395CC();
  v15[0] = 0;
  v11 = [v3 setObject:v9 forKey:v10 error:v15];
  swift_unknownObjectRelease();

  if (v11)
  {
    return v15[0];
  }

  v13 = v15[0];
  sub_1C863958C();

  return swift_willThrow();
}

uint64_t sub_1C8635008()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1C863511C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC7F8, &qword_1C863ABF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C8635510;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 synchronizationWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C863511C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1C8635244;
  }

  else
  {
    v2 = sub_1C863522C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C8635244()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  *(v0 + 80) = v1;
  v2 = (v0 + 80);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC800, &qword_1C863AC00);
  sub_1C8635780();
  if (!swift_dynamicCast())
  {

    swift_willThrow();
    goto LABEL_22;
  }

  v4 = *(v0 + 144);
  v5 = [v4 domain];
  v6 = sub_1C86395DC();
  v8 = v7;

  if (v6 == 0x65446465636E7953 && v8 == 0xEE0073746C756166)
  {
  }

  else
  {
    v10 = sub_1C863968C();

    if ((v10 & 1) == 0)
    {
      swift_willThrow();

      goto LABEL_22;
    }
  }

  v11 = [v4 code];
  if (v11 > 7776)
  {
    switch(v11)
    {
      case 7777:
        sub_1C86357CC();
        swift_allocError();
        v13 = 1;
        goto LABEL_20;
      case 121212:
        sub_1C86357CC();
        swift_allocError();
        v13 = 4;
        goto LABEL_20;
      case 8888:
        sub_1C86357CC();
        swift_allocError();
        v13 = 2;
        goto LABEL_20;
    }
  }

  else if (v11 == 6666)
  {
    sub_1C86357CC();
    swift_allocError();
    v13 = 3;
LABEL_20:
    *v12 = v13;
    goto LABEL_21;
  }

  sub_1C86357CC();
  swift_allocError();
  *v14 = 0;
LABEL_21:
  swift_willThrow();

LABEL_22:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C8635510(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC800, &qword_1C863AC00);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C86355F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC7E0, &unk_1C863ABE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_1C86356A4()
{
  result = qword_1EC2AC7E8;
  if (!qword_1EC2AC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AC7E8);
  }

  return result;
}

uint64_t sub_1C86356F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC7F0, "$9");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8635780()
{
  result = qword_1EC2AC808;
  if (!qword_1EC2AC808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC2AC808);
  }

  return result;
}

unint64_t sub_1C86357CC()
{
  result = qword_1EC2AC810;
  if (!qword_1EC2AC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AC810);
  }

  return result;
}

void type metadata accessor for SecTask()
{
  if (!qword_1EC2AC818)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC2AC818);
    }
  }
}

uint64_t SyncError.hashValue.getter(unsigned __int8 a1)
{
  sub_1C86396EC();
  MEMORY[0x1CCA78B30](a1);
  return sub_1C863970C();
}

uint64_t sub_1C8635914()
{
  v1 = *v0;
  sub_1C86396EC();
  MEMORY[0x1CCA78B30](v1);
  return sub_1C863970C();
}

uint64_t sub_1C8635988(uint64_t a1)
{
  v2 = *v1;
  sub_1C86396EC();
  MEMORY[0x1CCA78B30](v2);
  return sub_1C863970C();
}

unint64_t sub_1C86359D0()
{
  result = qword_1EC2AC820;
  if (!qword_1EC2AC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AC820);
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

uint64_t sub_1C8635A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C8635A78(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SyncError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SyncError(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1C8635C4C(uint64_t a1, uint64_t a2)
{
  v3 = [*v2 entitlements];
  v4 = sub_1C86395CC();
  sub_1C86373F0(0, &qword_1EC2AC588, 0x1E69E58C0);
  v5 = [v3 objectForKey:v4 ofClass:swift_getObjCClassFromMetadata()];

  return v5;
}

void __swiftcall SYDEntitlements.init()(SYDEntitlements *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SYDEntitlements.init()()
{
  v1 = SecTaskCreateFromSelf(0);
  v2 = &v0[OBJC_IVAR___SYDEntitlements_entitlements];
  if (v1)
  {
    v2[3] = &_s22SYDSecTaskEntitlementsVN;
    v2[4] = &off_1F4842730;
    *v2 = v1;
  }

  else
  {
    v2[3] = &_s17SYDNoEntitlementsVN;
    v2[4] = &off_1F4842740;
  }

  v4.receiver = v0;
  v4.super_class = SYDEntitlements;
  return objc_msgSendSuper2(&v4, sel_init);
}

void __swiftcall SYDEntitlements.init(auditToken:)(SYDEntitlements *__return_ptr retstr, audit_token_t *auditToken)
{
  v5 = auditToken;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuditToken_];
}

id SYDEntitlements.init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  v6 = &v4[OBJC_IVAR___SYDEntitlements_entitlements];
  if (v5)
  {
    v6[3] = &_s22SYDSecTaskEntitlementsVN;
    v6[4] = &off_1F4842730;
    *v6 = v5;
  }

  else
  {
    v6[3] = &_s17SYDNoEntitlementsVN;
    v6[4] = &off_1F4842740;
  }

  v8.receiver = v4;
  v8.super_class = SYDEntitlements;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SYDEntitlements.init(bundleRecord:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBundleRecord_];

  return v2;
}

id SYDEntitlements.init(bundleRecord:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___SYDEntitlements_entitlements);
  v2[3] = &_s27SYDBundleRecordEntitlementsVN;
  v2[4] = &off_1F4842720;
  *v2 = a1;
  v4.super_class = SYDEntitlements;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t SYDEntitlements.storeIdentifier.getter()
{
  v1 = sub_1C86395CC();
  v2 = [v0 valueForEntitlement_];

  if (v2)
  {
    sub_1C863964C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C86361DC(v7);
    return 0;
  }
}

uint64_t sub_1C86361DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC7F0, "$9");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SYDEntitlements.storeIdentifiers.getter()
{
  v1 = [v0 additionalStoreIdentifiers];
  v2 = sub_1C863960C();

  v3 = sub_1C8637314(v2);

  v14 = v3;
  v4 = [v0 storeIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C86395DC();
    v8 = v7;

    sub_1C8636670(&v13, v6, v8);

    v3 = v14;
  }

  v9 = *(v3 + 16);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = sub_1C86365EC(*(v3 + 16), 0);
  v11 = sub_1C86371BC(&v13, v10 + 4, v9, v3);
  sub_1C8629718(v13);
  if (v11 != v9)
  {
    __break(1u);
LABEL_6:

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

uint64_t SYDEntitlements.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR___SYDEntitlements_entitlements + 24);
  v8 = *(v3 + OBJC_IVAR___SYDEntitlements_entitlements + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR___SYDEntitlements_entitlements), v7);
  result = (*(v8 + 8))(a1, a2, v7, v8);
  v10 = result;
  if (result)
  {
    result = swift_getObjectType();
  }

  else
  {
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v10;
  a3[3] = result;
  return result;
}

uint64_t SYDEntitlements.relatedApplications(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C86395CC();
  v7 = [v3 valueForEntitlement_];

  if (v7)
  {
    sub_1C863964C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC840, &qword_1C863AD88);
    if (swift_dynamicCast())
    {
      if (*(v12 + 16))
      {
        v8 = sub_1C8636F34(a1, a2);
        if (v9)
        {
          v10 = *(*(v12 + 56) + 8 * v8);

          return v10;
        }
      }
    }
  }

  else
  {
    sub_1C86361DC(v15);
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1C86365EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC858, &qword_1C863AE90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1C8636670(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C86396EC();
  sub_1C86395EC();
  v8 = sub_1C863970C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C863968C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C8636A20(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C86367C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC850, &qword_1C863AE88);
  result = sub_1C863966C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C86396EC();
      sub_1C86395EC();
      result = sub_1C863970C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C8636A20(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C86367C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C8636BA0();
      goto LABEL_16;
    }

    sub_1C8636CFC(v8 + 1);
  }

  v10 = *v4;
  sub_1C86396EC();
  sub_1C86395EC();
  result = sub_1C863970C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C863968C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C863969C();
  __break(1u);
  return result;
}

void *sub_1C8636BA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC850, &qword_1C863AE88);
  v2 = *v0;
  v3 = sub_1C863965C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1C8636CFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AC850, &qword_1C863AE88);
  result = sub_1C863966C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C86396EC();

      sub_1C86395EC();
      result = sub_1C863970C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1C8636F34(uint64_t a1, uint64_t a2)
{
  sub_1C86396EC();
  sub_1C86395EC();
  v4 = sub_1C863970C();

  return sub_1C8636FAC(a1, a2, v4);
}

unint64_t sub_1C8636FAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C863968C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1C8637064(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C86371BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C8637314(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA78A50](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C8636670(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C86373F0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1C86374E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C86395BC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1C86395AC();
}

uint64_t sub_1C8637590(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1C86395BC();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1C8637608@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C86395BC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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