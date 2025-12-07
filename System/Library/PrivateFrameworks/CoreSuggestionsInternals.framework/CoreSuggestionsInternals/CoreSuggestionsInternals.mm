uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{

  return sub_2320EE020();
}

unint64_t SGRecordMeasurementState(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = a1[2];
  if (!result)
  {
    v3 = mach_absolute_time() - a1[1];
    if (SGMachTimeToNanoseconds_onceToken != -1)
    {
      dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
    }

    v4 = v3 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734;
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a1;
      v6 = v4;
      v9 = 138412546;
      v10 = v8;
      v11 = 2048;
      v12 = v4 * 0.000000001;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGScales: %@ took %f seconds", &v9, 0x16u);
    }

    else
    {
      v6 = v4;
    }

    v7 = *a1;
    [SGAggregateLogging pushValue:@"timing" toDistKeyWithDomain:*a1 suffix:v6 / 1000000.0];

    *a1 = 0;
    if (v4 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v4;
    }

    a1[2] = result;
  }

  return result;
}

id aggdKeyForComponents(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v16 = v17;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  appendStringToBuf(&v16, v18, @"com.apple.suggestions", 0);
  appendStringToBuf(&v16, v18, v13, 1);

  appendStringToBuf(&v16, v18, v9, 1);
  appendStringToBuf(&v16, v18, v12, 1);

  appendStringToBuf(&v16, v18, v11, 1);
  appendStringToBuf(&v16, v18, v10, 1);

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17];

  return v14;
}

void appendStringToBuf(char **a1, unint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = *a1;
  v13 = v7;
  if (v7 && v8 < a2)
  {
    if (a4)
    {
      *v8 = 46;
      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 >= a2)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void appendStringToBuf(char **, const char *, NSString *__strong, BOOL)"}];
        [v11 handleFailureInFunction:v12 file:@"SGAggregateLogging+PET.m" lineNumber:26 description:@"Logging string too long"];

        v8 = *a1;
      }
    }

    v8 = &(*a1)[strlcpy(v8, [v13 UTF8String], a2 - *a1)];
    *a1 = v8;
  }

  if (v8 >= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void appendStringToBuf(char **, const char *, NSString *__strong, BOOL)"}];
    [v9 handleFailureInFunction:v10 file:@"SGAggregateLogging+PET.m" lineNumber:30 description:@"Logging string too long"];
  }
}

void ___registerEnableDisablePreferenceChangeListener_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D02480] object:0 userInfo:0 deliverImmediately:1];

  if (*(a1 + 32) == 1)
  {
    v3 = *MEMORY[0x277D021A0];
    v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    LOBYTE(v3) = [v4 containsObject:v3];

    v5 = [MEMORY[0x277CC5A40] sg_newStore];
    v6 = v5;
    if (v3)
    {
      [v5 removeSuggestedEventCalendar];
    }

    else
    {
      [v5 insertSuggestedEventCalendar];
    }
  }
}

void sub_231E650CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 144), 8);
  _Unwind_Resume(a1);
}

void SGNotUserInitiated(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (SGNotUserInitiated__pasOnceToken3 != -1)
  {
    dispatch_once(&SGNotUserInitiated__pasOnceToken3, &__block_literal_global_4957);
  }

  v8 = SGNotUserInitiated__pasExprOnceResult;
  if (SGNotUserInitiated__pasOnceToken4 != -1)
  {
    dispatch_once(&SGNotUserInitiated__pasOnceToken4, &__block_literal_global_7);
  }

  v9 = SGNotUserInitiated__pasExprOnceResult_5;
  v10 = qos_class_self();
  if (v10 >= QOS_CLASS_UTILITY)
  {
    v11 = 17;
  }

  else
  {
    v11 = v10;
  }

  pthread_mutex_lock(&SGNotUserInitiated_queueCacheLock);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v13 = [v8 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = objc_opt_new();
    [v13 setQualityOfService:v11];
    [v13 setMaxConcurrentOperationCount:2];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
    [v8 setObject:v13 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v6];
  [v15 setName:v5];
  if (a2 == 2)
  {
    v16 = [v9 objectForKeyedSubscript:v5];
    if (v16)
    {
      [v15 addDependency:v16];
      objc_initWeak(&location, v15);
      objc_initWeak(&from, v16);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __SGNotUserInitiated_block_invoke_3;
      v22[3] = &unk_27894BF30;
      objc_copyWeak(&v23, &location);
      objc_copyWeak(&v24, &from);
      [v16 setCompletionBlock:v22];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    [v9 setObject:v15 forKeyedSubscript:v5];

    objc_initWeak(&location, v15);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __SGNotUserInitiated_block_invoke_4;
    v18[3] = &unk_27894BF58;
    v19 = v9;
    v20 = v5;
    objc_copyWeak(&v21, &location);
    [v15 setCompletionBlock:v18];
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  else
  {
    [v15 setCompletionBlock:&__block_literal_global_12];
  }

  pthread_mutex_unlock(&SGNotUserInitiated_queueCacheLock);
  v17 = waitGroup();
  dispatch_group_enter(v17);

  [v13 addOperation:v15];
  objc_autoreleasePoolPop(v7);
}

void sub_231E65A0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id waitGroup()
{
  if (waitGroup__pasOnceToken2 != -1)
  {
    dispatch_once(&waitGroup__pasOnceToken2, &__block_literal_global_14);
  }

  v1 = waitGroup__pasExprOnceResult;

  return v1;
}

void sub_231E65F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SGJSGarbageCollect(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getJSGarbageCollectSymbolLoc_ptr;
  v9 = getJSGarbageCollectSymbolLoc_ptr;
  if (!getJSGarbageCollectSymbolLoc_ptr)
  {
    v3 = JavaScriptCoreLibrary();
    v7[3] = dlsym(v3, "JSGarbageCollect");
    getJSGarbageCollectSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void SGJSGarbageCollect(JSContextRef)"];
    [v4 handleFailureInFunction:v5 file:@"SGReverseTemplateJS.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231E661B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SGNotUserInitiated_block_invoke_4(uint64_t a1)
{
  pthread_mutex_lock(&SGNotUserInitiated_queueCacheLock);
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (v2 == WeakRetained)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  pthread_mutex_unlock(&SGNotUserInitiated_queueCacheLock);
  v4 = waitGroup();
  dispatch_group_leave(v4);
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = 0xD000000000000018;
  *(result + 56) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1)
{

  return swift_once();
}

uint64_t getScannerRefAndAcquire()
{
  if (getScannerRefAndAcquire_sharedScannerSemaphoreOnce != -1)
  {
    dispatch_once(&getScannerRefAndAcquire_sharedScannerSemaphoreOnce, &__block_literal_global_251);
  }

  dispatch_semaphore_wait(sharedScannerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  pthread_mutex_lock(&scannerPoolLock);
  if (scannerInUse[0] == 1)
  {
    if (byte_280D93FC9)
    {
LABEL_5:
      v0 = [MEMORY[0x277CCA890] currentHandler];
      v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"DDScannerRef getScannerRefAndAcquire(void)"];
      [v0 handleFailureInFunction:v1 file:@"SGDataDetectorMatch.m" lineNumber:311 description:@"Could not get data detector from pool"];

      v2 = 0;
      goto LABEL_11;
    }

    v3 = 1u;
  }

  else
  {
    v3 = 0;
  }

  scannerInUse[v3] = 1;
  v4 = sharedScanners[v3];
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_255 idleTimeout:1.0];
    v6 = sharedScanners[v3];
    sharedScanners[v3] = v5;

    v4 = sharedScanners[v3];
  }

  v2 = [v4 result];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_11:
  pthread_mutex_unlock(&scannerPoolLock);
  return v2;
}

id __getScannerRefAndAcquire_block_invoke_2()
{
  ScannerOrFail = SGDataDetectorsCreateScannerOrFail();

  return ScannerOrFail;
}

uint64_t SGDataDetectorsCreateScannerOrFail()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = DDScannerCreate();
  if (v0)
  {
    DDScannerEnableOptionalSource();
  }

  return v0;
}

intptr_t releaseScannerRef(const void *a1)
{
  pthread_mutex_lock(&scannerPoolLock);
  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = [sharedScanners[v2] resultIfAvailable];

    if (v5 == a1)
    {
      break;
    }

    v3 = 0;
    v2 = 1u;
    if ((v4 & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void releaseScannerRef(DDScannerRef)"];
      [v6 handleFailureInFunction:v7 file:@"SGDataDetectorMatch.m" lineNumber:325 description:{@"Could not return scanner %@ to pool", a1}];

      goto LABEL_6;
    }
  }

  scannerInUse[v2] = 0;
  CFRelease(a1);
LABEL_6:
  pthread_mutex_unlock(&scannerPoolLock);
  v8 = sharedScannerSemaphore;

  return dispatch_semaphore_signal(v8);
}

void SGDataDetectorsScanRange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a6;
  if (DDScannerScanStringWithRange())
  {
    v9 = DDScannerCopyResultsWithOptions();
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);
      v12 = Count - 1;
      if (Count >= 1)
      {
        v13 = 0;
        do
        {
          v14 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          v16 = sgLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v20 = ValueAtIndex;
            _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "SGDataDetectors: data detection: %@", buf, 0xCu);
          }

          v17 = v8[2](v8, ValueAtIndex);
          objc_autoreleasePoolPop(v14);
          if (!v17)
          {
            break;
          }
        }

        while (v12 != v13++);
      }

      CFRelease(v10);
    }
  }

  DDScannerReset();
}

void sub_231E67164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_231E67860()
{
  sub_2320EDA70();
  OUTLINED_FUNCTION_101();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231E678F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231E67990()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231E67AB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231E67AE8()
{

  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231E67B1C()
{

  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231E67B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_231E67BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

id sub_231E67FF8(uint64_t a1)
{
  sub_2320EDC40();
  if (v2)
  {
    v3 = sub_2320EDDA0();
  }

  else
  {
    v3 = 0;
  }

  sub_2320EDC50();
  v4 = sub_2320EDE10();

  sub_2320EDC30();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_2320EDDA0();

  v7 = [v5 initWithDisplayName:v3 handles:v4 handleIdentifier:v6];

  v8 = sub_2320EDC60();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_231E68114()
{
  v1125 = sub_2320EDA70();
  OUTLINED_FUNCTION_13();
  v1124 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_57(&v1120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1122 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v6);
  v1129 = sub_2320EDD40();
  OUTLINED_FUNCTION_13();
  v1128 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D298, &qword_232106478);
  v12 = OUTLINED_FUNCTION_100(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v19);
  v1152 = sub_2320EDC00();
  OUTLINED_FUNCTION_13();
  v1150 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v28);
  v1170 = sub_2320ED8C0();
  OUTLINED_FUNCTION_13();
  v1161 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  v1165.n128_u64[0] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A0, &qword_232106480);
  v39 = OUTLINED_FUNCTION_100(v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v1120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A8, &qword_232106488);
  v47 = OUTLINED_FUNCTION_100(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v65 = OUTLINED_FUNCTION_100(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v77);
  sub_2320ED5F0();
  OUTLINED_FUNCTION_13();
  v1163 = v79;
  v1164 = v78;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B8, &qword_232106490);
  v93 = OUTLINED_FUNCTION_100(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v95);
  v1159.n128_u64[0] = sub_2320ED550();
  OUTLINED_FUNCTION_13();
  v1155 = v96;
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v99);
  v1166 = sub_2320EDA20();
  OUTLINED_FUNCTION_13();
  v1168.n128_u64[0] = v100;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v118 = MEMORY[0x28223BE20](v117);
  v120 = (&v1120 - v119);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v123 = MEMORY[0x28223BE20](v122);
  v125 = &v1120 - v124;
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v128 = MEMORY[0x28223BE20](v127);
  v130 = &v1120 - v129;
  v131 = MEMORY[0x28223BE20](v128);
  v133 = (&v1120 - v132);
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v143 = MEMORY[0x28223BE20](v142);
  v145 = &v1120 - v144;
  MEMORY[0x28223BE20](v143);
  v147 = &v1120 - v146;
  v1160 = sub_231E6E194();
  v1169 = v148;
  v1167 = v0;
  v150 = sub_2320EDA30();
  v151 = v149;
  v152 = v150 == 0x746867696C66 && v149 == 0xE600000000000000;
  if (v152 || (OUTLINED_FUNCTION_52(0x746867696C66, 0xE600000000000000) & 1) != 0)
  {

    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
    v154 = OUTLINED_FUNCTION_107(v153);
    v1165 = xmmword_232106450;
    v155 = OUTLINED_FUNCTION_3(v154, xmmword_232106450);
    OUTLINED_FUNCTION_16(v155, "http://schema.org");
    v1154 = v156;
    v157 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_31();
    *(v158 + 72) = v157;
    *(v158 + 80) = v159;
    OUTLINED_FUNCTION_97();
    v160[15] = v157;
    OUTLINED_FUNCTION_109(v160, v161);
    v1176 = sub_2320EDD60();
    v162 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
    v163 = v1169;
    MEMORY[0x23837EBB0](v162, v1169);

    v1175 = v157;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_73(v164, v165, v166, v167);
    OUTLINED_FUNCTION_36();
    sub_2320EDA50();
    sub_2320ED980();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_123(v1168.n128_u64[0] + 8);
    v168();
    if ("http://schema.org/EventReservation" != -16)
    {
      v1175 = v157;
      *&v1174 = v147;
      *(&v1174 + 1) = "g/EventReservation";
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_32();
      sub_231E6EE40(v170, v169 & 0xFFFFFFFFFFFFLL | 0x7461000000000000, v171, v172);
      OUTLINED_FUNCTION_36();
    }

    sub_2320EDA50();
    sub_2320ED9C0();
    OUTLINED_FUNCTION_46();
    (v1169)(v145, v163);
    if ("http://schema.org/EventReservation" != -16)
    {
      v1175 = v157;
      *&v1174 = v145;
      *(&v1174 + 1) = "g/EventReservation";
      sub_231E6EBF4(&v1174, &v1173);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_85();
      v173 = OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_102(v173, v174, v175, v176);
      OUTLINED_FUNCTION_36();
    }

    v1160 = v42;
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_82();
    v177 = v1167;
    sub_2320EDA50();
    v178 = sub_2320ED8F0();
    v179 = OUTLINED_FUNCTION_81();
    v180 = v1169;
    (v1169)(v179);
    v181 = sub_231E831C4(v178);

    if (v181)
    {
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v183 = OUTLINED_FUNCTION_94(v182);
      v184 = OUTLINED_FUNCTION_0(v183, v1165);
      v185 = OUTLINED_FUNCTION_2(v184, "http://schema.org/Person");
      *(v185 + 64) = v42;
      *(v185 + 72) = v186;
      sub_2320EDA50();
      v187 = sub_2320ED8F0();
      v188 = OUTLINED_FUNCTION_81();
      (v1169)(v188);
      *&v1174 = v187;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      sub_2320EDD80();
      OUTLINED_FUNCTION_49();
      v180 = v1169;

      v183[5].n128_u64[0] = v157;
      v183[5].n128_u64[1] = v189;
      v163 = v1166;
      sub_2320EDD60();
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_37(v190);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v191, v192, v193, v194);
      OUTLINED_FUNCTION_36();
    }

    sub_2320EDA50();
    v195 = sub_2320ED8D0();
    v196 = OUTLINED_FUNCTION_81();
    (v180)(v196);
    v197 = sub_231E831C4(v195);

    if (v197)
    {
      v198 = OUTLINED_FUNCTION_107(v153);
      OUTLINED_FUNCTION_55(v198);
      OUTLINED_FUNCTION_31();
      v42 = "http://schema.org/Organization";
      v200 = v199;
      *(v201 + 32) = v199;
      *(v201 + 40) = 0xE500000000000000;
      OUTLINED_FUNCTION_29();
      *(v202 + 48) = 0xD000000000000018;
      *(v202 + 56) = v203;
      v1153 = v153;
      v204 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_77();
      *(v205 + 72) = v204;
      *(v205 + 80) = v206;
      OUTLINED_FUNCTION_76(v205);
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v208 = OUTLINED_FUNCTION_94(v207);
      OUTLINED_FUNCTION_55(v208);
      *(v209 + 32) = v200;
      *(v209 + 40) = 0xE500000000000000;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_20(v210, v211);
      sub_2320EDA50();
      v212 = sub_2320ED8D0();
      v213 = OUTLINED_FUNCTION_118();
      (v1169)(v213);
      *&v1174 = v212;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      v214 = sub_2320EDD80();
      v157 = v215;
      v163 = v1166;

      v208[5].n128_u64[0] = v214;
      v208[5].n128_u64[1] = v157;
      v216 = sub_2320EDD60();
      v198[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v198[6].n128_u64[0] = v216;
      v180 = v1169;
      v195 = sub_2320EDD60();
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
      OUTLINED_FUNCTION_37(v217);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_24();
      v218 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v218, v219, v220, v221);
      OUTLINED_FUNCTION_36();
    }

    OUTLINED_FUNCTION_82();
    sub_2320EDA50();
    sub_2320ED940();
    OUTLINED_FUNCTION_89();
    v222 = OUTLINED_FUNCTION_81();
    (v180)(v222);
    OUTLINED_FUNCTION_70();
    if (v157)
    {
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v224 = OUTLINED_FUNCTION_94(v223);
      OUTLINED_FUNCTION_22(v224);
      *(v225 + 32) = v42;
      *(v225 + 40) = v226;
      v227 = OUTLINED_FUNCTION_1(v225, "http://schema.org/Place");
      v227[8] = 1701667182;
      v227[9] = v228;
      v227[10] = v195;
      v227[11] = v157;
      v195 = sub_2320EDD60();
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_37(v229);
      OUTLINED_FUNCTION_85();
      v230 = OUTLINED_FUNCTION_38();
      sub_231E6EE40(v230, v231, 0xE600000000000000, v232);
      OUTLINED_FUNCTION_36();
    }

    OUTLINED_FUNCTION_90();
    sub_2320EDA50();
    OUTLINED_FUNCTION_45();
    sub_2320ED950();
    (v180)("http://schema.org/Organization", v163);
    v233 = OUTLINED_FUNCTION_51();
    v234 = v1159.n128_u64[0];
    OUTLINED_FUNCTION_40(v233, v235);
    if (v152)
    {
      sub_231E6F05C(v195, &qword_27DD8D2B8, &qword_232106490);
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_87();
      v236();
      v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v238 = OUTLINED_FUNCTION_107(v237);
      v239 = OUTLINED_FUNCTION_0(v238, xmmword_232106440);
      strcpy(&v239[3], "CheckInAction");
      v239[3].n128_u16[7] = -4864;
      v239[4].n128_u64[0] = 0x747865746E6F6340;
      v239[4].n128_u64[1] = 0xE800000000000000;
      OUTLINED_FUNCTION_88();
      v240 = v1154;
      v241[10] = v177;
      v241[11] = v240;
      v241[12] = 0x746567726174;
      v241[13] = 0xE600000000000000;
      v238[7].n128_u64[0] = sub_2320ED530();
      v238[7].n128_u64[1] = v242;
      sub_2320EDD60();
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_37(v243);
      OUTLINED_FUNCTION_85();
      v244 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v244, v245, v246, v247);
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_70();
      v248();
    }

    v249 = swift_allocObject();
    v1162 = xmmword_232106460;
    v250 = OUTLINED_FUNCTION_35(v249, xmmword_232106460);
    v250[2].n128_u64[0] = v42;
    v250[2].n128_u64[1] = v251;
    OUTLINED_FUNCTION_29();
    v252[9] = MEMORY[0x277D837D0];
    v252[6] = v177 + 7;
    v252[7] = v253;
    v1172 = sub_2320EDD60();
    OUTLINED_FUNCTION_56();
    sub_2320EDA50();
    v254 = sub_2320ED970();
    v256 = v255;
    v257 = v234;
    v258 = v1169;
    (v1169)(v257, v163);
    if (v256)
    {
      OUTLINED_FUNCTION_125();
      sub_2320EDA50();
      v259 = sub_2320ED8E0();
      v260 = v163;
      v262 = v261;
      (v258)(v42, v260);
      if (v262)
      {
        *&v1174 = v254;
        *(&v1174 + 1) = v256;

        MEMORY[0x23837EBB0](v259, v262);

        v1175 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_103();
        sub_231E6EE40(&v1173, v177 - 1, 0x800000023210E8F0, v263);
        OUTLINED_FUNCTION_84();
      }

      else
      {
      }

      v163 = v1166;
      v258 = v1169;
    }

    OUTLINED_FUNCTION_83();
    sub_2320EDA50();
    sub_2320ED8E0();
    OUTLINED_FUNCTION_89();
    v321 = OUTLINED_FUNCTION_79();
    (v258)(v321);
    if (v254)
    {
      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      v322 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v322, v323, v324, v325);
      OUTLINED_FUNCTION_84();
    }

    OUTLINED_FUNCTION_83();
    sub_2320EDA50();
    v326 = v254;
    sub_2320ED970();
    OUTLINED_FUNCTION_89();
    v327 = OUTLINED_FUNCTION_79();
    (v258)(v327);
    v328 = v1164;
    v329 = v1157;
    if (v326)
    {
      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v331 = OUTLINED_FUNCTION_94(v330);
      OUTLINED_FUNCTION_22(v331);
      *(v332 + 32) = v42;
      *(v332 + 40) = v333;
      v334 = OUTLINED_FUNCTION_106(v332, "departureAirport");
      v334[8] = 0x65646F4361746169;
      v334[9] = 0xE800000000000000;
      v334[10] = v256;
      v334[11] = v326;
      v256 = sub_2320EDD60();
      v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_64(v335);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_67();
      v336 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v336, v337, 0xE800000000000000, v338);
      OUTLINED_FUNCTION_84();
    }

    OUTLINED_FUNCTION_27();
    sub_2320EDA60();
    OUTLINED_FUNCTION_23();
    if (v152)
    {
      sub_231E6F05C(v256, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v339 = v1163;
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_87();
      v340();
      v256 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v341 = sub_2320ED5B0();
      v342 = OUTLINED_FUNCTION_122();
      v344 = [v342 v343];

      sub_2320EDDB0();
      OUTLINED_FUNCTION_89();

      v328 = v1164;
      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_80(v345, v346, v347, v348);
      OUTLINED_FUNCTION_84();
      v349 = *(v339 + 8);
      v42 = (v339 + 8);
      v349(v177, v328);
    }

    OUTLINED_FUNCTION_27();
    sub_2320ED840();
    OUTLINED_FUNCTION_23();
    if (v152)
    {
      sub_231E6F05C(v256, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v42 = v1163;
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_87();
      v350();
      v351 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v352 = sub_2320ED5B0();
      v353 = OUTLINED_FUNCTION_122();
      v355 = [v353 v354];

      sub_2320EDDB0();
      OUTLINED_FUNCTION_89();

      v328 = v1164;
      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_74();
      v356 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v356, v357, v358, v359);
      OUTLINED_FUNCTION_84();
      (*(v42 + 1))(v177, v328);
    }

    v360 = v1156;
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_125();
    sub_2320EDA50();
    sub_2320ED990();
    (v1169)(v42, v163);
    OUTLINED_FUNCTION_23();
    if (v152)
    {
      sub_231E6F05C(v360, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v361 = v1163;
      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_87();
      v362();
      v360 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v363 = sub_2320ED5B0();
      v364 = OUTLINED_FUNCTION_122();
      v163 = v328;
      v366 = [v364 v365];

      sub_2320EDDB0();
      OUTLINED_FUNCTION_89();

      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      v367 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v367, v368, v369, v370);
      OUTLINED_FUNCTION_84();
      (*(v361 + 8))(v42, v163);
    }

    v371 = v1158;
    sub_2320ED7D0();
    if (__swift_getEnumTagSinglePayload(v329, 1, v1170) == 1)
    {
      sub_231E6F05C(v329, &qword_27DD8D2A8, &qword_232106488);
    }

    else
    {
      sub_2320ED890();
      v360 = v372;
      OUTLINED_FUNCTION_124();
      (v163)(v329, v1170);
      if (v360)
      {
        goto LABEL_64;
      }
    }

    sub_2320ED7D0();
    OUTLINED_FUNCTION_28(v371);
    if (v152)
    {
      v373 = &qword_27DD8D2A8;
      v374 = &qword_232106488;
      v375 = v371;
    }

    else
    {
      OUTLINED_FUNCTION_45();
      sub_2320ED8B0();
      OUTLINED_FUNCTION_124();
      (v163)(v371, v1170);
      v371 = sub_2320EDC20();
      OUTLINED_FUNCTION_23();
      if (!v376)
      {
        sub_2320EDC10();
        v360 = v377;
        OUTLINED_FUNCTION_101();
        (*(v378 + 8))();
        if (!v360)
        {
LABEL_77:
          OUTLINED_FUNCTION_27();
          sub_2320ED7C0();
          OUTLINED_FUNCTION_28(v360);
          if (v152)
          {
            sub_231E6F05C(v360, &qword_27DD8D2A8, &qword_232106488);
          }

          else
          {
            sub_2320ED890();
            v360 = v393;
            OUTLINED_FUNCTION_124();
            v163();
            if (v360)
            {
              goto LABEL_89;
            }
          }

          OUTLINED_FUNCTION_56();
          sub_2320ED7C0();
          OUTLINED_FUNCTION_28(v371);
          if (v152)
          {
            v394 = &qword_27DD8D2A8;
            v395 = &qword_232106488;
            v396 = v371;
          }

          else
          {
            OUTLINED_FUNCTION_45();
            sub_2320ED8B0();
            OUTLINED_FUNCTION_124();
            (v163)(v371, v1170);
            v371 = sub_2320EDC20();
            OUTLINED_FUNCTION_23();
            if (!v397)
            {
              sub_2320EDC10();
              v360 = v398;
              OUTLINED_FUNCTION_101();
              (*(v399 + 8))();
              if (!v360)
              {
                goto LABEL_102;
              }

LABEL_89:

              v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
              v401 = OUTLINED_FUNCTION_113(v400);
              v402 = OUTLINED_FUNCTION_0(v401, v1162);
              OUTLINED_FUNCTION_106(v402, "http://schema.org/Flight");
              *&v1173 = sub_2320EDD60();
              OUTLINED_FUNCTION_90();
              sub_2320ED7C0();
              OUTLINED_FUNCTION_28("http://schema.org/Airport");
              if (v152)
              {
                sub_231E6F05C("http://schema.org/Airport", &qword_27DD8D2A8, &qword_232106488);
                v403 = v1160;
              }

              else
              {
                v360 = sub_2320ED890();
                v371 = v404;
                (v163)("http://schema.org/Airport", v1170);
                v403 = v1160;
                if (v371)
                {
                  OUTLINED_FUNCTION_53(v360, v371);
                }
              }

              OUTLINED_FUNCTION_27();
              sub_2320ED7C0();
              OUTLINED_FUNCTION_28(v360);
              if (v152)
              {
                v405 = &qword_27DD8D2A8;
                v406 = &qword_232106488;
                v407 = v360;
              }

              else
              {
                sub_2320ED8B0();
                (v163)(v360, v1170);
                v408 = sub_2320EDC20();
                OUTLINED_FUNCTION_42(v403, 1, v408);
                if (!v409)
                {
                  v371 = sub_2320EDC10();
                  v466 = v465;
                  OUTLINED_FUNCTION_101();
                  (*(v467 + 8))(v403, v408);
                  if (v466)
                  {
                    OUTLINED_FUNCTION_95();
                  }

                  goto LABEL_101;
                }

                v405 = &qword_27DD8D2A0;
                v406 = &qword_232106480;
                v407 = v403;
              }

              sub_231E6F05C(v407, v405, v406);
LABEL_101:
              v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
              OUTLINED_FUNCTION_64(v410);
              OUTLINED_FUNCTION_50();
              v411 = OUTLINED_FUNCTION_126();
              sub_231E6E288(v411, v412, v413);
              goto LABEL_102;
            }

            v394 = &qword_27DD8D2A0;
            v395 = &qword_232106480;
            v396 = v360;
          }

          sub_231E6F05C(v396, v394, v395);
LABEL_102:
          OUTLINED_FUNCTION_56();
          sub_2320EDA50();
          sub_2320ED9D0();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_108();
          v414();
          if (v371)
          {
            OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
            v415 = OUTLINED_FUNCTION_126();
            sub_231E6E288(v415, v416, 0xE800000000000000);
          }

          v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
          OUTLINED_FUNCTION_64(v417);
          OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_63();
          OUTLINED_FUNCTION_32();
          v421 = v420 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
          goto LABEL_105;
        }

LABEL_64:

        v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v380 = OUTLINED_FUNCTION_113(v379);
        v381 = OUTLINED_FUNCTION_0(v380, v1162);
        OUTLINED_FUNCTION_106(v381, "http://schema.org/Flight");
        *&v1173 = sub_2320EDD60();
        OUTLINED_FUNCTION_27();
        sub_2320ED7D0();
        OUTLINED_FUNCTION_28(v360);
        if (v152)
        {
          sub_231E6F05C(v360, &qword_27DD8D2A8, &qword_232106488);
        }

        else
        {
          v382 = sub_2320ED890();
          v383 = v360;
          v360 = v382;
          v371 = v384;
          (v163)(v383, v1170);
          if (v371)
          {
            OUTLINED_FUNCTION_53(v360, v371);
          }
        }

        OUTLINED_FUNCTION_27();
        sub_2320ED7D0();
        OUTLINED_FUNCTION_28(v360);
        if (v152)
        {
          v385 = &qword_27DD8D2A8;
          v386 = &qword_232106488;
          v387 = v360;
        }

        else
        {
          OUTLINED_FUNCTION_56();
          sub_2320ED8B0();
          (v163)(v360, v1170);
          v388 = sub_2320EDC20();
          v389 = OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_42(v389, v390, v388);
          if (!v391)
          {
            v371 = sub_2320EDC10();
            v163 = v462;
            OUTLINED_FUNCTION_101();
            (*(v463 + 8))(v464, v388);
            if (v163)
            {
              OUTLINED_FUNCTION_95();
            }

            goto LABEL_76;
          }

          v385 = &qword_27DD8D2A0;
          v386 = &qword_232106480;
          v387 = v371;
        }

        sub_231E6F05C(v387, v385, v386);
LABEL_76:
        v360 = "http://schema.org/Airport";
        v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v392);
        sub_231E6E288(&v1174, v177 - 1, 0x800000023210E8B0);
        goto LABEL_77;
      }

      v373 = &qword_27DD8D2A0;
      v374 = &qword_232106480;
      v375 = v360;
    }

    sub_231E6F05C(v375, v373, v374);
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_66();
  v266 = v265 - 1;
  v267 = v150 == v265 - 1 && v264 == v151;
  if (v267 || (OUTLINED_FUNCTION_52(v265 - 1, v264) & 1) != 0)
  {

    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
    v269 = OUTLINED_FUNCTION_107(v268);
    v1159 = xmmword_232106450;
    v270 = OUTLINED_FUNCTION_3(v269, xmmword_232106450);
    OUTLINED_FUNCTION_16(v270, "http://schema.org");
    v271 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_31();
    *(v272 + 72) = v271;
    *(v272 + 80) = v273;
    OUTLINED_FUNCTION_97();
    v274[15] = v271;
    OUTLINED_FUNCTION_109(v274, v275);
    sub_2320EDD60();
    v276 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
    MEMORY[0x23837EBB0](v276, v1169);

    v1175 = v271;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_54();
    sub_231E6EE40(&v1173, 0xD000000000000011, 0x800000023210E550, v277);
    v278 = v1176;
    sub_2320EDA50();
    v279 = sub_2320ED980();
    v281 = v280;
    v282 = *(v1168.n128_u64[0] + 8);
    v283 = v1168.n128_u64[0] + 8;
    v282(v133, v1166);
    if (v281)
    {
      v1175 = v271;
      *&v1174 = v279;
      *(&v1174 + 1) = v281;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v284 = OUTLINED_FUNCTION_10();
      sub_231E6EE40(v284, 0x7461767265736572, v285, v286);
      v278 = v1176;
    }

    sub_2320EDA50();
    sub_2320ED9C0();
    OUTLINED_FUNCTION_46();
    v287 = OUTLINED_FUNCTION_81();
    v288 = v283;
    (v282)(v287);
    if (v133)
    {
      OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v289 = OUTLINED_FUNCTION_17();
      sub_231E6EE40(v289, v290, 0xEA00000000006563, v291);
      v278 = v1176;
    }

    OUTLINED_FUNCTION_111();
    v292 = v1167;
    sub_2320EDA50();
    sub_2320ED8F0();
    v293 = OUTLINED_FUNCTION_92();
    v294 = v1166;
    v282(v293, v1166);
    sub_231E831C4(v130);
    OUTLINED_FUNCTION_114();
    if (v133)
    {
      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v133 = OUTLINED_FUNCTION_94(v295);
      v296 = OUTLINED_FUNCTION_0(v133, v1159);
      v297 = OUTLINED_FUNCTION_2(v296, "http://schema.org/Person");
      *(v297 + 64) = 1701667182;
      *(v297 + 72) = v298;
      sub_2320EDA50();
      v299 = v130;
      v300 = sub_2320ED8F0();
      v301 = OUTLINED_FUNCTION_119();
      (v282)(v301);
      *&v1174 = v300;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      sub_2320EDD80();
      OUTLINED_FUNCTION_72();
      v288 = v283;

      v133[5].n128_u64[0] = v299;
      v133[5].n128_u64[1] = v130;
      sub_2320EDD60();
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v303 = OUTLINED_FUNCTION_14(v302);
      OUTLINED_FUNCTION_47(v303);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v304, v305, v306, v307);
      v278 = v1176;
    }

    OUTLINED_FUNCTION_82();
    sub_2320EDA50();
    sub_2320ED940();
    OUTLINED_FUNCTION_46();
    v308 = OUTLINED_FUNCTION_119();
    (v282)(v308);
    if (v133)
    {
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v310 = OUTLINED_FUNCTION_94(v309);
      v311 = OUTLINED_FUNCTION_0(v310, v1159);
      v312 = OUTLINED_FUNCTION_1(v311, "http://schema.org/Place");
      v312[8] = 1701667182;
      v312[9] = v313;
      v312[10] = v130;
      v312[11] = v133;
      sub_2320EDD60();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v315 = OUTLINED_FUNCTION_14(v314);
      OUTLINED_FUNCTION_47(v315);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_67();
      v316 = OUTLINED_FUNCTION_59();
      sub_231E6EE40(v316, v317, 0xE800000000000000, v318);
      v278 = v1176;
    }

    v319 = v1165.n128_u64[0];
    OUTLINED_FUNCTION_90();
    sub_2320EDA60();
    v320 = v1164;
    OUTLINED_FUNCTION_40(v288, 1);
    if (v152)
    {
      sub_231E6F05C(v288, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v292 = v1163;
      v130 = v1151;
      (*(v1163 + 32))(v1151, v288, v320);
      v423 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v424 = sub_2320ED5B0();
      v425 = OUTLINED_FUNCTION_127(v424, sel_stringFromDate_);

      sub_2320EDDB0();
      OUTLINED_FUNCTION_46();

      OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
      v320 = v1164;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_74();
      v426 = OUTLINED_FUNCTION_59();
      sub_231E6EE40(v426, v427, v428, v429);
      v278 = v1176;
      v430 = OUTLINED_FUNCTION_117();
      v431(v430);
    }

    OUTLINED_FUNCTION_26();
    sub_2320ED840();
    v432 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_40(v432, v433);
    if (v152)
    {
      sub_231E6F05C(v292, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      OUTLINED_FUNCTION_48();
      v434 = OUTLINED_FUNCTION_96();
      v435(v434, v292, v320);
      v292 = v320;
      v436 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v437 = sub_2320ED5B0();
      v438 = OUTLINED_FUNCTION_127(v437, sel_stringFromDate_);

      sub_2320EDDB0();
      OUTLINED_FUNCTION_46();

      OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v439 = OUTLINED_FUNCTION_59();
      sub_231E6EE40(v439, v440, v441, v442);
      v278 = v1176;
      v443 = *(v130 + 1);
      v130 += 8;
      v443(v294, v292);
    }

    OUTLINED_FUNCTION_111();
    v444 = v1154;
    OUTLINED_FUNCTION_26();
    sub_2320ED7D0();
    v445 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_42(v445, v446, v1170);
    if (!v152)
    {
      v448 = OUTLINED_FUNCTION_79();
      v449(v448);
      v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v451 = OUTLINED_FUNCTION_113(v450);
      v452 = OUTLINED_FUNCTION_35(v451, xmmword_232106460);
      v452[2].n128_u64[0] = 0x6570797440;
      v452[2].n128_u64[1] = v453;
      OUTLINED_FUNCTION_11();
      *(v455 + 48) = v454 + 16;
      *(v455 + 56) = v456;
      v1176 = sub_2320EDD60();
      v457 = sub_2320ED890();
      if (v458)
      {
        OUTLINED_FUNCTION_53(v457, v458);
      }

      sub_2320ED8A0();
      v459 = OUTLINED_FUNCTION_65();
      v460 = v1152;
      OUTLINED_FUNCTION_42(v459, v461, v1152);
      if (v152)
      {
        sub_231E6F05C(v444, &qword_27DD8D298, &qword_232106478);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        v515 = OUTLINED_FUNCTION_96();
        v516(v515, v444, v460);
        v444 = v460;
        sub_2320EDBF0();
        OUTLINED_FUNCTION_15();
        sub_231E6E35C(v517, v518, v519, 0xE700000000000000);
        (*(v292 + 8))(v294, v460);
      }

      sub_2320ED870();
      if (v520)
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_129(v521, v522, v523);
      }

      sub_2320EDA50();
      sub_2320ED960();
      v524 = OUTLINED_FUNCTION_92();
      v525 = v1166;
      v282(v524, v1166);
      sub_231E831C4(v130);
      OUTLINED_FUNCTION_114();
      if (v444)
      {
        sub_2320EDA50();
        v444 = sub_2320ED960();
        v526 = OUTLINED_FUNCTION_119();
        (v282)(v526);
        *&v1174 = v444;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        v527 = sub_2320EDD80();
        v529 = v528;

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_62();
        v319 = v1165.n128_u64[0];
        sub_231E6ECEC(v527, v529, 0xD000000000000013, 0x800000023210E820, v530);
        v1176 = v1174;
      }

      OUTLINED_FUNCTION_56();
      sub_2320EDA50();
      v531 = sub_2320ED930();
      v282(v444, v525);
      if ((v531 & 0x100000000) == 0)
      {
        LODWORD(v1174) = v531;
        v532 = sub_2320EE010();
        v534 = v533;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_62();
        sub_231E6ECEC(v532, v534, 0x664F7265626D756ELL, 0xED0000736D6F6F52, v535);
        v1176 = v1174;
      }

      v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v537 = OUTLINED_FUNCTION_14(v536);
      OUTLINED_FUNCTION_47(v537);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_19_0();
      v538 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v538, 0x7461767265736572, v539, v540);
      v278 = v1172;
      OUTLINED_FUNCTION_98();
      v542 = v319;
      v543 = v1170;
LABEL_142:
      v541(v542, v543);
      return v278;
    }

    v447 = v292;
    goto LABEL_114;
  }

  OUTLINED_FUNCTION_66();
  v470 = v150 == v469 + 4 && v468 == v151;
  v471 = 0x6570797440;
  if (v470 || (OUTLINED_FUNCTION_52(v469 + 4, v468) & 1) != 0)
  {
    v472 = 0x7461767265736572;

    v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
    v474 = OUTLINED_FUNCTION_107(v473);
    v1165 = xmmword_232106450;
    v475 = OUTLINED_FUNCTION_3(v474, xmmword_232106450);
    v476 = OUTLINED_FUNCTION_16(v475, "http://schema.org");
    v477 = MEMORY[0x277D837D0];
    *(v476 + 72) = MEMORY[0x277D837D0];
    *(v476 + 80) = 0x6570797440;
    OUTLINED_FUNCTION_97();
    v478[15] = v477;
    OUTLINED_FUNCTION_109(v478, v479);
    sub_2320EDD60();
    v480 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
    MEMORY[0x23837EBB0](v480, v1169);

    v1175 = v477;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_54();
    sub_231E6EE40(&v1173, 0xD000000000000011, 0x800000023210E550, v481);
    v278 = v1176;
    sub_2320EDA50();
    sub_2320ED980();
    OUTLINED_FUNCTION_49();
    v482 = v1168.n128_u64[0] + 8;
    v483 = *(v1168.n128_u64[0] + 8);
    v483(v125, v1166);
    if ("http://schema.org/EventReservation" != -16)
    {
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v484 = OUTLINED_FUNCTION_10();
      sub_231E6EE40(v484, 0x7461767265736572, v485, v486);
      v278 = v1176;
    }

    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_83();
    sub_2320EDA50();
    v487 = sub_2320ED8F0();
    v488 = v1166;
    v483(v125, v1166);
    v489 = sub_231E831C4(v487);

    if (v489)
    {
      v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v489 = OUTLINED_FUNCTION_94(v490);
      OUTLINED_FUNCTION_22(v489);
      *(v491 + 32) = 0x6570797440;
      *(v491 + 40) = v492;
      v493 = OUTLINED_FUNCTION_2(v491, "http://schema.org/Person");
      *(v493 + 64) = 0x7461767265736572;
      *(v493 + 72) = v494;
      sub_2320EDA50();
      v472 = v482;
      v495 = sub_2320ED8F0();
      v483(v125, v488);
      *&v1174 = v495;
      v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      sub_2320EDD80();
      OUTLINED_FUNCTION_72();

      v489[5].n128_u64[0] = v125;
      v489[5].n128_u64[1] = v471;
      sub_2320EDD60();
      v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v497 = OUTLINED_FUNCTION_14(v496);
      OUTLINED_FUNCTION_47(v497);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v498, v499, v500, v501);
      v278 = v1176;
    }

    OUTLINED_FUNCTION_82();
    sub_2320EDA50();
    sub_2320ED940();
    OUTLINED_FUNCTION_49();
    v502 = OUTLINED_FUNCTION_119();
    (v483)(v502);
    if (v489)
    {
      v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v504 = OUTLINED_FUNCTION_94(v503);
      OUTLINED_FUNCTION_22(v504);
      OUTLINED_FUNCTION_70();
      *(v505 + 32) = v472;
      *(v505 + 40) = v506;
      v507 = OUTLINED_FUNCTION_1(v505, "http://schema.org/Place");
      v507[8] = 1701667182;
      v507[9] = v508;
      v507[10] = v471;
      v507[11] = v489;
      sub_2320EDD60();
      v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v510 = OUTLINED_FUNCTION_14(v509);
      OUTLINED_FUNCTION_47(v510);
      OUTLINED_FUNCTION_54();
      v511 = OUTLINED_FUNCTION_38();
      sub_231E6EE40(v511, v512, 0xE600000000000000, v513);
      v278 = v1176;
      v514 = v1164;
    }

    else
    {
      v514 = v1164;
      OUTLINED_FUNCTION_70();
    }

    OUTLINED_FUNCTION_26();
    sub_2320EDA60();
    v544 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_42(v544, v545, v514);
    if (v152)
    {
      sub_231E6F05C(v489, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v546 = v1163;
      v547 = OUTLINED_FUNCTION_96();
      v548(v547, v489, v514);
      v489 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v549 = sub_2320ED5B0();
      v550 = OUTLINED_FUNCTION_115(v549, sel_stringFromDate_);

      sub_2320EDDB0();
      OUTLINED_FUNCTION_49();

      v1175 = MEMORY[0x277D837D0];
      *&v1174 = v549;
      *(&v1174 + 1) = v489;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v551, v552, v553, v554);
      v278 = v1176;
      (*(v546 + 8))(v488, v514);
    }

    v555 = v1166;
    v556 = v1170;
    OUTLINED_FUNCTION_44();
    sub_2320EDA50();
    v557 = sub_2320ED9A0();
    v483(v489, v555);
    if ((v557 & 0x100000000) == 0)
    {
      LODWORD(v1174) = v557;
      v558 = sub_2320EE010();
      v1175 = MEMORY[0x277D837D0];
      *&v1174 = v558;
      *(&v1174 + 1) = v559;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v560, v561, v562, v563);
      v278 = v1176;
    }

    v564 = v1149;
    OUTLINED_FUNCTION_56();
    sub_2320ED7D0();
    v565 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_42(v565, v566, v556);
    if (!v152)
    {
      (*(v1161 + 32))(v564, v555, v556);
      v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v568 = OUTLINED_FUNCTION_113(v567);
      v569 = OUTLINED_FUNCTION_35(v568, xmmword_232106460);
      v569[2].n128_u64[0] = v472;
      v569[2].n128_u64[1] = v570;
      OUTLINED_FUNCTION_11();
      *(v572 + 48) = v571 + 18;
      *(v572 + 56) = v573;
      v1176 = sub_2320EDD60();
      v574 = sub_2320ED890();
      if (v575)
      {
        OUTLINED_FUNCTION_53(v574, v575);
      }

      OUTLINED_FUNCTION_56();
      sub_2320ED8A0();
      v576 = OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_42(v576, v577, v1152);
      if (v152)
      {
        sub_231E6F05C(v555, &qword_27DD8D298, &qword_232106478);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        v587 = OUTLINED_FUNCTION_117();
        v588(v587);
        sub_2320EDBF0();
        OUTLINED_FUNCTION_15();
        sub_231E6E35C(v589, v590, v591, 0xE700000000000000);
        v592 = OUTLINED_FUNCTION_117();
        v593(v592);
      }

      sub_2320ED870();
      if (v594)
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_129(v595, v596, v597);
      }

      v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v599 = OUTLINED_FUNCTION_14(v598);
      OUTLINED_FUNCTION_47(v599);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_19_0();
      v600 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v600, 0x7461767265736572, v601, v602);
      v278 = v1172;
      OUTLINED_FUNCTION_98();
      v542 = v564;
      v543 = v556;
      goto LABEL_142;
    }

    v447 = v555;
LABEL_114:
    sub_231E6F05C(v447, &qword_27DD8D2A8, &qword_232106488);
    return v278;
  }

  OUTLINED_FUNCTION_66();
  v580 = v150 == v579 && v578 == v151;
  if (!v580 && (OUTLINED_FUNCTION_52(0xD000000000000011, v578) & 1) == 0)
  {
    v719 = v150 == 0x61746E6552726163 && v151 == 0xE90000000000006CLL;
    v720 = v1162.n128_u64[0];
    if (v719)
    {

      v722 = v1166;
      v723 = v1168.n128_u64[0];
      goto LABEL_204;
    }

    v721 = OUTLINED_FUNCTION_52(0x61746E6552726163, 0xE90000000000006CLL);
    v722 = v1166;
    v723 = v1168.n128_u64[0];
    if (v721)
    {

LABEL_204:
      OUTLINED_FUNCTION_69();
      v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
      v726 = OUTLINED_FUNCTION_107(v725);
      v1168 = xmmword_232106450;
      v727 = OUTLINED_FUNCTION_3(v726, xmmword_232106450);
      OUTLINED_FUNCTION_16(v727, "http://schema.org");
      v728 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_31();
      *(v729 + 72) = v728;
      *(v729 + 80) = v730;
      OUTLINED_FUNCTION_97();
      v731[15] = v728;
      OUTLINED_FUNCTION_109(v731, v732);
      v1176 = sub_2320EDD60();
      v733 = "g/EventReservation";
      v734 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
      MEMORY[0x23837EBB0](v734, v1169);

      v1175 = v728;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_73(v735, v736, v737, v738);
      OUTLINED_FUNCTION_36();
      v739 = v1140;
      sub_2320EDA50();
      sub_2320ED980();
      OUTLINED_FUNCTION_46();
      v742 = *(v723 + 8);
      v740 = v723 + 8;
      v741 = v742;
      (v742)(v739, v722);
      if ("http://schema.org/EventReservation" != -16)
      {
        v1175 = v728;
        *&v1174 = v739;
        *(&v1174 + 1) = "g/EventReservation";
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v743 = OUTLINED_FUNCTION_10();
        sub_231E6EE40(v743, v125, v744, v745);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_83();
      sub_2320EDA50();
      v746 = sub_2320ED8F0();
      v747 = OUTLINED_FUNCTION_79();
      v741(v747);
      sub_231E831C4(v746);
      OUTLINED_FUNCTION_114();
      v748 = v740;
      if ("http://schema.org/EventReservation" != -16)
      {
        v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v733 = OUTLINED_FUNCTION_94(v749);
        v750 = OUTLINED_FUNCTION_0(v733, v1168);
        v751 = OUTLINED_FUNCTION_2(v750, "http://schema.org/Person");
        *(v751 + 64) = 1701667182;
        *(v751 + 72) = v752;
        sub_2320EDA50();
        v753 = sub_2320ED8F0();
        (v741)(v125, v1166);
        *&v1174 = v753;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        v754 = sub_2320EDD80();
        v756 = v755;
        v722 = v1166;

        v733[5].n128_u64[0] = v754;
        v733[5].n128_u64[1] = v756;
        sub_2320EDD60();
        v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v757);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_61();
        sub_231E6EE40(v758, v759, v760, v761);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_83();
      sub_2320EDA50();
      sub_2320ED9C0();
      OUTLINED_FUNCTION_46();
      v762 = OUTLINED_FUNCTION_79();
      v763 = v748;
      v741(v762);
      if (v733)
      {
        OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v764 = OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_102(v764, v765, v766, v767);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_26();
      sub_2320EDA60();
      v768 = OUTLINED_FUNCTION_60();
      v769 = v1164;
      OUTLINED_FUNCTION_40(v768, v770);
      if (v152)
      {
        sub_231E6F05C(v722, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        v822 = v1163;
        v823 = v1136;
        v824 = OUTLINED_FUNCTION_79();
        v825(v824);
        v826 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v827 = sub_2320ED5B0();
        v722 = OUTLINED_FUNCTION_127(v827, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_46();

        OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
        v769 = v1164;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        sub_231E6EE40(&v1173, 0x695470756B636970, 0xEA0000000000656DLL, v828);
        OUTLINED_FUNCTION_36();
        (*(v822 + 8))(v823, v769);
      }

      OUTLINED_FUNCTION_45();
      sub_2320ED840();
      OUTLINED_FUNCTION_23();
      if (v152)
      {
        sub_231E6F05C(v763, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        v829 = v1163;
        v830 = v1137;
        OUTLINED_FUNCTION_87();
        v831();
        v832 = v769;
        v769 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v833 = sub_2320ED5B0();
        v722 = OUTLINED_FUNCTION_127(v833, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_46();

        OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_74();
        v834 = OUTLINED_FUNCTION_41();
        sub_231E6EE40(v834, v835, v836, v837);
        OUTLINED_FUNCTION_36();
        (*(v829 + 8))(v830, v832);
      }

      v838 = v1166;
      v839 = v1161;
      v840 = v1170;
      OUTLINED_FUNCTION_44();
      sub_2320EDA50();
      sub_2320ED940();
      OUTLINED_FUNCTION_46();
      (v741)(v722, v838);
      if (v769)
      {
        v841 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v842 = OUTLINED_FUNCTION_94(v841);
        v843 = OUTLINED_FUNCTION_0(v842, v1168);
        v844 = OUTLINED_FUNCTION_1(v843, "http://schema.org/Place");
        v844[8] = 1701667182;
        v844[9] = v845;
        v844[10] = v722;
        v844[11] = v769;
        sub_2320EDD60();
        v846 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v846);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v847 = OUTLINED_FUNCTION_38();
        sub_231E6EE40(v847, v848, 0xE600000000000000, v849);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_26();
      sub_2320EDA50();
      sub_2320ED900();
      OUTLINED_FUNCTION_46();
      (v741)(v722, v838);
      if (v769)
      {
        v850 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v851 = OUTLINED_FUNCTION_94(v850);
        v852 = OUTLINED_FUNCTION_0(v851, v1168);
        v853 = OUTLINED_FUNCTION_1(v852, "http://schema.org/Place");
        v853[8] = 1701667182;
        v853[9] = v854;
        v853[10] = v722;
        v853[11] = v769;
        sub_2320EDD60();
        v855 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v855);
        OUTLINED_FUNCTION_67();
        v856 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v856, v857, 0xE800000000000000);
      }

      OUTLINED_FUNCTION_45();
      v858 = v1167;
      sub_2320EDA50();
      v859 = v838;
      sub_2320ED9B0();
      OUTLINED_FUNCTION_46();
      (v741)(v838, v1166);
      v860 = v1143;
      if (v769)
      {
        v861 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v862 = OUTLINED_FUNCTION_94(v861);
        OUTLINED_FUNCTION_0(v862, v1168);
        OUTLINED_FUNCTION_97();
        v863[6] = 0xD000000000000015;
        v863[7] = v864;
        v863[8] = 0x6C65646F6DLL;
        v863[9] = v865;
        v863[10] = v859;
        v863[11] = v769;
        sub_2320EDD60();
        v866 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v866);
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_32();
        sub_231E6E288(v868, v867 & 0xFFFFFFFFFFFFLL | 0x7461000000000000, v869);
      }

      sub_2320ED7D0();
      v870 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_42(v870, v871, v840);
      v872 = v1146;
      v873 = v1145;
      if (v152)
      {
        sub_231E6F05C(v860, &qword_27DD8D2A8, &qword_232106488);
        v874 = v1144;
      }

      else
      {
        (*(v839 + 32))(v1145, v860, v840);
        v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v876 = OUTLINED_FUNCTION_113(v875);
        OUTLINED_FUNCTION_0(v876, xmmword_232106460);
        OUTLINED_FUNCTION_11();
        *(v878 + 48) = v877 + 6;
        *(v878 + 56) = v879;
        *&v1173 = sub_2320EDD60();
        v880 = sub_2320ED890();
        if (v881)
        {
          OUTLINED_FUNCTION_53(v880, v881);
        }

        OUTLINED_FUNCTION_56();
        sub_2320ED8A0();
        v882 = OUTLINED_FUNCTION_65();
        v883 = v1152;
        OUTLINED_FUNCTION_42(v882, v884, v1152);
        if (v152)
        {
          sub_231E6F05C(v769, &qword_27DD8D298, &qword_232106478);
        }

        else
        {
          OUTLINED_FUNCTION_56();
          v935 = OUTLINED_FUNCTION_96();
          v936(v935);
          sub_2320EDBF0();
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_128(v937, v938, v939);
          (*(v769 + 1))(1701667182, v883);
        }

        sub_2320ED870();
        v874 = v1144;
        if (v940)
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_129(v941, v942, v943);
        }

        v944 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_64(v944);
        v945 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v945, v946, v947);
        (*(v839 + 8))(v873, v840);
      }

      sub_2320ED7C0();
      v948 = OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_42(v948, v949, v840);
      if (v152)
      {
        sub_231E6F05C(v874, &qword_27DD8D2A8, &qword_232106488);
      }

      else
      {
        (*(v839 + 32))(v872, v874, v840);
        v950 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v951 = OUTLINED_FUNCTION_113(v950);
        OUTLINED_FUNCTION_0(v951, xmmword_232106460);
        OUTLINED_FUNCTION_11();
        *(v953 + 48) = v952 + 6;
        *(v953 + 56) = v954;
        *&v1173 = sub_2320EDD60();
        v955 = sub_2320ED890();
        if (v956)
        {
          OUTLINED_FUNCTION_53(v955, v956);
        }

        OUTLINED_FUNCTION_44();
        sub_2320ED8A0();
        v957 = OUTLINED_FUNCTION_60();
        v958 = v1152;
        OUTLINED_FUNCTION_42(v957, v959, v1152);
        if (v152)
        {
          sub_231E6F05C(v858, &qword_27DD8D298, &qword_232106478);
        }

        else
        {
          OUTLINED_FUNCTION_56();
          v960 = v1134;
          v961 = OUTLINED_FUNCTION_81();
          v962(v961);
          sub_2320EDBF0();
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_128(v963, v964, v965);
          (*(v874 + 8))(v960, v958);
        }

        sub_2320ED870();
        if (v966)
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_129(v967, v968, v969);
        }

        v970 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_64(v970);
        v971 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v971, v972, v973);
        (*(v839 + 8))(v872, v840);
      }

      return v1176;
    }

    v885 = v150 == 0x6D746E696F707061 && v151 == 0xEB00000000746E65;
    if (v885 || (OUTLINED_FUNCTION_52(0x6D746E696F707061, 0xEB00000000746E65) & 1) != 0 || (v150 == 0x7974726170 ? (v886 = v151 == 0xE500000000000000) : (v886 = 0), v886 || (OUTLINED_FUNCTION_52(0x7974726170, 0xE500000000000000) & 1) != 0))
    {

LABEL_268:
      OUTLINED_FUNCTION_69();
      v887 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
      v888 = OUTLINED_FUNCTION_107(v887);
      v1165 = xmmword_232106450;
      v889 = OUTLINED_FUNCTION_3(v888, xmmword_232106450);
      OUTLINED_FUNCTION_16(v889, "http://schema.org");
      v890 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_31();
      *(v891 + 72) = v890;
      *(v891 + 80) = v892;
      OUTLINED_FUNCTION_97();
      v893[15] = v890;
      OUTLINED_FUNCTION_109(v893, v894);
      v1176 = sub_2320EDD60();
      v895 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
      MEMORY[0x23837EBB0](v895, v1169);

      v1175 = v890;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_43();
      sub_231E6EE40(&v1173, 0xD000000000000011, 0x800000023210E550, v896);
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_125();
      sub_2320EDA50();
      sub_2320ED980();
      OUTLINED_FUNCTION_49();
      v899 = *(v723 + 8);
      v897 = v723 + 8;
      v898 = v899;
      v899("http://schema.org/Place", v1166);
      if ("http://schema.org/EventReservation" != -16)
      {
        v1175 = v890;
        *&v1174 = "http://schema.org/Place";
        *(&v1174 + 1) = "g/EventReservation";
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v900 = OUTLINED_FUNCTION_10();
        sub_231E6EE40(v900, v125, v901, v902);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_120();
      v903 = v1167;
      sub_2320EDA50();
      sub_2320ED8F0();
      v904 = OUTLINED_FUNCTION_92();
      v905 = v1166;
      v898(v904, v1166);
      v906 = sub_231E831C4(v720);

      v907 = v897;
      if (v906)
      {
        v908 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v906 = OUTLINED_FUNCTION_94(v908);
        v909 = OUTLINED_FUNCTION_0(v906, v1165);
        v910 = OUTLINED_FUNCTION_2(v909, "http://schema.org/Person");
        *(v910 + 64) = "http://schema.org/Place";
        *(v910 + 72) = v911;
        sub_2320EDA50();
        v912 = v720;
        v897 = sub_2320ED8F0();
        v898(v720, v905);
        *&v1174 = v897;
        v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        sub_2320EDD80();
        OUTLINED_FUNCTION_72();

        v906[5].n128_u64[0] = v912;
        v906[5].n128_u64[1] = v720;
        OUTLINED_FUNCTION_111();
        sub_2320EDD60();
        v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v913);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_61();
        sub_231E6EE40(v914, v915, v916, v917);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_90();
      sub_2320EDA50();
      sub_2320ED9C0();
      OUTLINED_FUNCTION_49();
      v1168.n128_u64[0] = v907;
      v898(v897, v905);
      if (v906)
      {
        v1175 = MEMORY[0x277D837D0];
        *&v1174 = v897;
        *(&v1174 + 1) = v906;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v918 = OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_102(v918, v919, v920, v921);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_45();
      sub_2320EDA50();
      OUTLINED_FUNCTION_83();
      sub_2320ED9E0();
      v898(v903, v1166);
      v922 = v1159.n128_u64[0];
      OUTLINED_FUNCTION_42(v905, 1, v1159.n128_i64[0]);
      if (v152)
      {
        sub_231E6F05C(v905, &qword_27DD8D2B8, &qword_232106490);
      }

      else
      {
        OUTLINED_FUNCTION_90();
        v974 = OUTLINED_FUNCTION_110();
        v975(v974, v905, v922);
        v976 = sub_2320ED530();
        v1175 = MEMORY[0x277D837D0];
        *&v1174 = v976;
        *(&v1174 + 1) = v977;
        v978 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v978, 7107189, 0xE300000000000000);
        v897 += 8;
        OUTLINED_FUNCTION_120();
        v979();
      }

      OUTLINED_FUNCTION_90();
      sub_2320EDA50();
      sub_2320ED940();
      OUTLINED_FUNCTION_49();
      v898(v897, v1166);
      if (v922)
      {
        v980 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v981 = OUTLINED_FUNCTION_94(v980);
        v982 = OUTLINED_FUNCTION_0(v981, v1165);
        v983 = OUTLINED_FUNCTION_1(v982, "http://schema.org/Place");
        v983[8] = "http://schema.org/Place";
        v983[9] = v984;
        v983[10] = v897;
        v983[11] = v922;
        sub_2320EDD60();
        v985 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v985);
        v986 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v986, v987, 0xE600000000000000);
      }

      v988 = v1167;
      sub_2320EDA50();
      sub_2320ED8D0();
      v989 = OUTLINED_FUNCTION_92();
      v990 = v1166;
      v898(v989, v1166);
      v991 = sub_231E831C4(v720);

      OUTLINED_FUNCTION_105();
      if (v991)
      {
        v992 = OUTLINED_FUNCTION_107(v887);
        OUTLINED_FUNCTION_55(v992);
        *(v993 + 32) = v897;
        *(v993 + 40) = 0xE500000000000000;
        OUTLINED_FUNCTION_29();
        *(v994 + 48) = 0xD000000000000018;
        *(v994 + 56) = v995;
        v996 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_77();
        *(v997 + 72) = v996;
        *(v997 + 80) = v998;
        OUTLINED_FUNCTION_76(v997);
        v999 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v1000 = OUTLINED_FUNCTION_94(v999);
        OUTLINED_FUNCTION_55(v1000);
        OUTLINED_FUNCTION_31();
        *(v1001 + 32) = v1002;
        *(v1001 + 40) = 0xE500000000000000;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_20(v1003, v1004);
        sub_2320EDA50();
        v1005 = v720;
        v897 = sub_2320ED8D0();
        v898(v720, v990);
        *&v1174 = v897;
        v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        sub_2320EDD80();
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_105();

        v1000[5].n128_u64[0] = v1005;
        v1000[5].n128_u64[1] = v720;
        v991 = sub_2320EDD60();
        v992[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        v992[6].n128_u64[0] = v991;
        sub_2320EDD60();
        v1006 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
        OUTLINED_FUNCTION_30(v1006);
        OUTLINED_FUNCTION_24();
        v1007 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v1007, v1008, v1009);
      }

      *&v1173 = sub_2320EDD60();
      sub_231E6E8E4(&v1174);
      v1010 = OUTLINED_FUNCTION_86();
      sub_231E6E288(v1010, v897, 0xE500000000000000);
      OUTLINED_FUNCTION_90();
      sub_2320EDA50();
      sub_2320ED9F0();
      OUTLINED_FUNCTION_49();
      v898(v897, v990);
      if (v991)
      {
        OUTLINED_FUNCTION_75();
        v1011 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v1011, 1701667182, 0xE400000000000000);
      }

      else
      {
        OUTLINED_FUNCTION_45();
        sub_2320EDA50();
        sub_2320EDA10();
        OUTLINED_FUNCTION_49();
        v898(v990, v1166);
      }

      v1012 = v1161;
      v1013 = v1170;
      OUTLINED_FUNCTION_26();
      sub_2320EDA60();
      v1014 = OUTLINED_FUNCTION_60();
      v1015 = v1164;
      OUTLINED_FUNCTION_42(v1014, v1016, v1164);
      if (v152)
      {
        sub_231E6F05C(v991, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        OUTLINED_FUNCTION_48();
        v988 = v1131;
        v1017 = OUTLINED_FUNCTION_79();
        v1018(v1017);
        v991 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v1019 = sub_2320ED5B0();
        v1020 = OUTLINED_FUNCTION_115(v1019, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_49();

        OUTLINED_FUNCTION_75();
        OUTLINED_FUNCTION_86();
        OUTLINED_FUNCTION_61();
        sub_231E6E288(v1021, v1022, v1023);
        OUTLINED_FUNCTION_99();
        v1024(v988, v1015);
      }

      OUTLINED_FUNCTION_26();
      sub_2320ED840();
      v1025 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_42(v1025, v1026, v1015);
      if (v152)
      {
        sub_231E6F05C(v991, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        OUTLINED_FUNCTION_48();
        v988 = v1132;
        v1027 = OUTLINED_FUNCTION_79();
        v1028(v1027);
        v991 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v1029 = sub_2320ED5B0();
        v1030 = OUTLINED_FUNCTION_115(v1029, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_49();

        OUTLINED_FUNCTION_75();
        v1031 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v1031, v1032, 0xE700000000000000);
        (*(v720 + 8))(v988, v1015);
      }

      v1033 = v1135;
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_82();
      sub_2320EDA50();
      sub_2320ED9D0();
      OUTLINED_FUNCTION_49();
      v1034 = OUTLINED_FUNCTION_118();
      (v898)(v1034);
      if (v991)
      {
        OUTLINED_FUNCTION_75();
        v1035 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v1035, v1036, 0xE800000000000000);
      }

      sub_2320ED7D0();
      OUTLINED_FUNCTION_42(v1033, 1, v1013);
      if (v152)
      {
        sub_231E6F05C(v1033, &qword_27DD8D2A8, &qword_232106488);
      }

      else
      {
        sub_2320ED870();
        OUTLINED_FUNCTION_49();
        (*(v1012 + 8))(v1033, v1013);
        if (v991)
        {
          OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_86();
          OUTLINED_FUNCTION_61();
          sub_231E6E288(v1037, v1038, v1039);
        }
      }

      OUTLINED_FUNCTION_44();
      sub_2320ED7D0();
      v1040 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_42(v1040, v1041, v1013);
      if (v152)
      {
        sub_231E6F05C(v991, &qword_27DD8D2A8, &qword_232106488);
      }

      else
      {
        v1042 = v1133;
        (*(v1012 + 32))(v1133, v991, v1013);
        v1043 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v1044 = OUTLINED_FUNCTION_113(v1043);
        OUTLINED_FUNCTION_0(v1044, xmmword_232106460);
        OUTLINED_FUNCTION_4();
        *(v1046 + 48) = v1045 + 6;
        *(v1046 + 56) = v1047;
        v1172 = sub_2320EDD60();
        v1048 = sub_2320ED890();
        if (v1049)
        {
          OUTLINED_FUNCTION_53(v1048, v1049);
        }

        OUTLINED_FUNCTION_44();
        sub_2320ED8A0();
        v1050 = OUTLINED_FUNCTION_60();
        v1051 = v1152;
        OUTLINED_FUNCTION_42(v1050, v1052, v1152);
        if (v152)
        {
          sub_231E6F05C(v991, &qword_27DD8D298, &qword_232106478);
        }

        else
        {
          OUTLINED_FUNCTION_56();
          v1054 = v1130;
          (*(v1053 + 32))(v1130, v991, v1051);
          sub_2320EDBF0();
          OUTLINED_FUNCTION_15();
          sub_231E6E35C(v1055, v1056, v1057, 0xE700000000000000);
          (*(v1042 + 8))(v1054, v1051);
          v1042 = v1133;
        }

        v1058 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v1058);
        v1059 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v1059, v1060, 0xE800000000000000);
        (*(v1012 + 8))(v1042, v1013);
      }

      v1061 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
      OUTLINED_FUNCTION_30(v1061);
      OUTLINED_FUNCTION_19_0();
      v418 = OUTLINED_FUNCTION_63();
      v421 = v988;
      goto LABEL_105;
    }

    v1087 = v150 == 2003789939 && v151 == 0xE400000000000000;
    if (v1087 || (OUTLINED_FUNCTION_52(2003789939, 0xE400000000000000) & 1) != 0)
    {

      v723 = v1168.n128_u64[0];
      OUTLINED_FUNCTION_111();
      goto LABEL_268;
    }

    if (v150 == 0x6361747441736369 && v151 == 0xED0000746E656D68)
    {
    }

    else
    {
      v1089 = OUTLINED_FUNCTION_52(0x6361747441736369, 0xED0000746E656D68);

      if ((v1089 & 1) == 0)
      {
        if (qword_280D93948 != -1)
        {
          OUTLINED_FUNCTION_78(&qword_280D93948);
        }

        __swift_project_value_buffer(v1129, qword_280D9DA90);
        OUTLINED_FUNCTION_121();
        v1090(v1126);
        v1091 = v1124;
        v1092 = *(v1124 + 16);
        v1093 = v1121;
        v1094 = v1125;
        v1092(v1121, v1167, v1125);
        v1092(v1123, v1093, v1094);
        v1095 = (*(v1091 + 80) + 16) & ~*(v1091 + 80);
        v1096 = swift_allocObject();
        OUTLINED_FUNCTION_68();
        v1098(v1097 + v1095, v1093, v1094);
        v1099 = sub_2320EDD20();
        v1100 = sub_2320EDE80();
        v1101 = swift_allocObject();
        *(v1101 + 16) = 32;
        v1102 = swift_allocObject();
        *(v1102 + 16) = 8;
        v1103 = swift_allocObject();
        *(v1103 + 16) = sub_231E6EB38;
        *(v1103 + 24) = v1096;
        v1104 = swift_allocObject();
        *(v1104 + 16) = sub_231E6EB98;
        *(v1104 + 24) = v1103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C0, &qword_232106498);
        v1105 = swift_allocObject();
        *(v1105 + 16) = xmmword_232106440;
        *(v1105 + 32) = sub_231E6EB90;
        *(v1105 + 40) = v1101;
        *(v1105 + 48) = sub_231E6F3D8;
        *(v1105 + 56) = v1102;
        *(v1105 + 64) = sub_231E6EBA0;
        *(v1105 + 72) = v1104;

        if (os_log_type_enabled(v1099, v1100))
        {
          v1106 = sub_231E75FF4(12);
          v1107 = swift_slowAlloc();
          *&v1174 = v1107;
          *v1106 = 136315138;
          v1108 = v1123;
          v1109 = sub_2320EDA30();
          v1111 = v1110;
          OUTLINED_FUNCTION_98();
          v1112(v1108, v1125);
          sub_231E83810(v1109, v1111, &v1174);
          OUTLINED_FUNCTION_92();

          *(v1106 + 4) = v1109;
          _os_log_impl(&dword_231E60000, v1099, v1100, "SGTextUnderstandingImporter: schema creation is not supported for %s", v1106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v1107);
          MEMORY[0x2383814F0](v1107, -1, -1);
          MEMORY[0x2383814F0](v1106, -1, -1);
        }

        else
        {

          OUTLINED_FUNCTION_98();
          v1119(v1123, v1125);
        }

        OUTLINED_FUNCTION_98();
        v1118 = &v1141;
LABEL_373:
        v1117(*(v1118 - 32), v1129);
        return 0;
      }
    }

    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78(&qword_280D93948);
    }

    __swift_project_value_buffer(v1129, qword_280D9DA90);
    OUTLINED_FUNCTION_121();
    v1113(v1127);
    v1114 = sub_2320EDD20();
    v1115 = sub_2320EDEA0();
    if (os_log_type_enabled(v1114, v1115))
    {
      v1116 = sub_231E75FF4(2);
      *v1116 = 0;
      _os_log_impl(&dword_231E60000, v1114, v1115, "SGTextUnderstandingImporter: calendar attachment doesn't vend schemaOrg", v1116, 2u);
      MEMORY[0x2383814F0](v1116, -1, -1);
    }

    OUTLINED_FUNCTION_98();
    v1118 = &v1142;
    goto LABEL_373;
  }

  OUTLINED_FUNCTION_105();

  v1165.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
  v581 = swift_allocObject();
  OUTLINED_FUNCTION_3(v581, xmmword_232106460);
  OUTLINED_FUNCTION_29();
  v582[9] = MEMORY[0x277D837D0];
  v582[6] = 0xD000000000000011;
  v582[7] = v583;
  v1176 = sub_2320EDD60();
  sub_231E6E4C0(&v1174);
  v584 = v1162.n128_u64[0];
  if (v1175)
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_85();
    v585 = OUTLINED_FUNCTION_41();
    sub_231E6EE40(v585, "http://schema.org/Organization", 0xE500000000000000, v586);
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    sub_231E6F05C(v603, v604, v605);
    sub_231E6EC04("http://schema.org/Organization", 0xE500000000000000, &v1173);
    OUTLINED_FUNCTION_87();
    sub_231E6F05C(v606, v607, v608);
  }

  v609 = "g/EventReservation";
  OUTLINED_FUNCTION_4();
  *&v1174 = v611 + 12;
  *(&v1174 + 1) = v610;
  MEMORY[0x23837EBB0](v1160, v1169);

  v612 = MEMORY[0x277D837D0];
  v1175 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_73(v613, v614, v615, v616);
  OUTLINED_FUNCTION_36();
  sub_2320EDA50();
  sub_2320ED980();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_123(v1168.n128_u64[0] + 8);
  v617();
  if ("http://schema.org/EventReservation" != -16)
  {
    v1175 = v612;
    *&v1174 = v120;
    *(&v1174 + 1) = "g/EventReservation";
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    v618 = OUTLINED_FUNCTION_10();
    sub_231E6EE40(v618, 0x7461767265736572, v619, v620);
    OUTLINED_FUNCTION_36();
  }

  sub_2320EDA50();
  v621 = sub_2320ED8F0();
  v622 = OUTLINED_FUNCTION_81();
  v623 = v1168.n128_u64[0];
  v624 = v1169;
  (v1169)(v622);
  sub_231E831C4(v621);
  OUTLINED_FUNCTION_114();
  if ("http://schema.org/EventReservation" != -16)
  {
    v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
    v609 = OUTLINED_FUNCTION_94(v625);
    v626 = OUTLINED_FUNCTION_35(v609, xmmword_232106450);
    v626[2].n128_u64[0] = "http://schema.org/Organization";
    v626[2].n128_u64[1] = v627;
    v628 = OUTLINED_FUNCTION_2(v626, "http://schema.org/Person");
    *(v628 + 64) = 1701667182;
    *(v628 + 72) = v629;
    sub_2320EDA50();
    v630 = sub_2320ED8F0();
    v631 = OUTLINED_FUNCTION_118();
    (v624)(v631);
    *&v1174 = v630;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
    sub_231E6EF88();
    OUTLINED_FUNCTION_7();
    v632 = sub_2320EDD80();
    v634 = v633;
    v120 = v1166;

    v609[5].n128_u64[0] = v632;
    v609[5].n128_u64[1] = v634;
    v624 = v1169;
    sub_2320EDD60();
    v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
    OUTLINED_FUNCTION_30(v635);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_61();
    sub_231E6EE40(v636, v637, v638, v639);
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_83();
  sub_2320EDA50();
  sub_2320ED9C0();
  OUTLINED_FUNCTION_46();
  v640 = OUTLINED_FUNCTION_79();
  (v624)(v640);
  if (v609)
  {
    OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    v641 = OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_102(v641, v642, v643, v644);
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_45();
  sub_2320EDA50();
  sub_2320ED940();
  OUTLINED_FUNCTION_46();
  (v624)(v623, v120);
  if (v609)
  {
    v645 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
    v646 = OUTLINED_FUNCTION_94(v645);
    v647 = OUTLINED_FUNCTION_0(v646, xmmword_232106450);
    v648 = OUTLINED_FUNCTION_1(v647, "http://schema.org/Place");
    v648[8] = 1701667182;
    v648[9] = v649;
    v648[10] = v623;
    v648[11] = v609;
    sub_2320EDD60();
    v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
    OUTLINED_FUNCTION_30(v650);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    v651 = OUTLINED_FUNCTION_38();
    sub_231E6EE40(v651, v652, 0xE600000000000000, v653);
    OUTLINED_FUNCTION_36();
  }

  sub_2320EDA50();
  v654 = sub_2320ED8D0();
  v655 = OUTLINED_FUNCTION_81();
  v656 = v1169;
  (v1169)(v655);
  sub_231E831C4(v654);
  OUTLINED_FUNCTION_114();
  if (v609)
  {
    v657 = OUTLINED_FUNCTION_107(v1165.n128_i64[0]);
    v1165 = xmmword_232106450;
    *(v657 + 16) = xmmword_232106450;
    *(v657 + 32) = 0x6570797440;
    *(v657 + 40) = 0xE500000000000000;
    OUTLINED_FUNCTION_29();
    *(v658 + 48) = 0xD000000000000018;
    *(v658 + 56) = v659;
    v660 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_77();
    *(v661 + 72) = v660;
    *(v661 + 80) = v662;
    OUTLINED_FUNCTION_76(v661);
    v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
    v664 = OUTLINED_FUNCTION_94(v663);
    OUTLINED_FUNCTION_22(v664);
    *(v665 + 32) = 0x6570797440;
    *(v665 + 40) = v666;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_20(v667, v668);
    sub_2320EDA50();
    v669 = sub_2320ED8D0();
    v670 = OUTLINED_FUNCTION_118();
    (v656)(v670);
    *&v1174 = v669;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
    sub_231E6EF88();
    OUTLINED_FUNCTION_7();
    v671 = sub_2320EDD80();
    v673 = v672;

    v664[5].n128_u64[0] = v671;
    v664[5].n128_u64[1] = v673;
    v120 = sub_2320EDD60();
    *(v657 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
    *(v657 + 96) = v120;
    sub_2320EDD60();
    v674 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
    OUTLINED_FUNCTION_30(v674);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_24();
    v675 = OUTLINED_FUNCTION_41();
    sub_231E6EE40(v675, v676, v677, v678);
    OUTLINED_FUNCTION_36();
  }

  v679 = MEMORY[0x277D837D0];
  v680 = sub_2320EDD60();
  v1172 = v680;
  sub_231E6E6D4(&v1174);
  if (v1175)
  {
    sub_231E6EBF4(&v1174, &v1173);
    swift_isUniquelyReferenced_nonNull_native();
    v1171 = v680;
    v681 = OUTLINED_FUNCTION_93();
    sub_231E6EE40(v681, 0x6570797440, 0xE500000000000000, v682);
    OUTLINED_FUNCTION_84();
  }

  else
  {
    v120 = &qword_27DD8D2F8;
    sub_231E6F05C(&v1174, &qword_27DD8D2F8, &qword_2321064C8);
    sub_231E6EC04(0x6570797440, 0xE500000000000000, &v1173);
    sub_231E6F05C(&v1173, &qword_27DD8D2F8, &qword_2321064C8);
  }

  v683 = v1148;
  OUTLINED_FUNCTION_44();
  sub_2320EDA60();
  v684 = OUTLINED_FUNCTION_60();
  v685 = v1164;
  OUTLINED_FUNCTION_42(v684, v686, v1164);
  if (v152)
  {
    sub_231E6F05C(v120, &qword_27DD8D2B0, &qword_232106810);
  }

  else
  {
    OUTLINED_FUNCTION_48();
    v687 = OUTLINED_FUNCTION_110();
    v688(v687, v120, v685);
    v120 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v689 = sub_2320ED5B0();
    v690 = OUTLINED_FUNCTION_115(v689, sel_stringFromDate_);

    sub_2320EDDB0();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_75();
    sub_231E6EBF4(&v1174, &v1173);
    v691 = v1172;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1171 = v691;
    OUTLINED_FUNCTION_80(isUniquelyReferenced_nonNull_native, v693, v694, isUniquelyReferenced_nonNull_native);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_99();
    v695(v656, v685);
  }

  OUTLINED_FUNCTION_44();
  sub_2320ED840();
  v696 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_42(v696, v697, v685);
  if (v152)
  {
    sub_231E6F05C(v120, &qword_27DD8D2B0, &qword_232106810);
  }

  else
  {
    OUTLINED_FUNCTION_48();
    v698 = OUTLINED_FUNCTION_110();
    v699(v698, v120, v685);
    v700 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v701 = sub_2320ED5B0();
    v702 = OUTLINED_FUNCTION_115(v701, sel_stringFromDate_);

    sub_2320EDDB0();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_74();
    v703 = OUTLINED_FUNCTION_126();
    sub_231E6E288(v703, v704, v705);
    (*(v584 + 8))(v656, v685);
  }

  v706 = v1147;
  OUTLINED_FUNCTION_56();
  sub_2320ED7D0();
  v707 = OUTLINED_FUNCTION_65();
  v708 = v1170;
  if (__swift_getEnumTagSinglePayload(v707, v709, v1170) == 1)
  {
    sub_231E6F05C(v679, &qword_27DD8D2A8, &qword_232106488);
    v710 = v1161;
LABEL_202:
    OUTLINED_FUNCTION_88();
    goto LABEL_222;
  }

  v710 = v1161;
  OUTLINED_FUNCTION_68();
  v711(v706, v679, v708);
  OUTLINED_FUNCTION_44();
  sub_2320EDA50();
  v712 = sub_2320ED910();
  v714 = v713;
  OUTLINED_FUNCTION_108();
  v715();
  if (!v714)
  {
    OUTLINED_FUNCTION_99();
    v724(v706, v708);
    goto LABEL_202;
  }

  *&v1173 = sub_2320EDD60();
  v716 = sub_2320ED890();
  if (v717)
  {
    OUTLINED_FUNCTION_53(v716, v717);
  }

  OUTLINED_FUNCTION_125();
  sub_2320ED8A0();
  v718 = v1152;
  OUTLINED_FUNCTION_42(v708, 1, v1152);
  if (v152)
  {
    sub_231E6F05C(v708, &qword_27DD8D298, &qword_232106478);
  }

  else
  {
    v710 = v1150;
    OUTLINED_FUNCTION_68();
    v771 = v1138;
    v772(v1138, v708, v718);
    sub_2320EDBF0();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_128(v773, v774, v775);
    OUTLINED_FUNCTION_99();
    v776(v771, v1152);
  }

  v777 = OUTLINED_FUNCTION_116();
  v778 = v152 && v714 == 0xE500000000000000;
  if (v778 || (OUTLINED_FUNCTION_71(v777, 0xE500000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_18(0xD00000000000001ELL, v779, v780, v781, v782);
  }

  else
  {
    v923 = v712 == 7566690 && v714 == 0xE300000000000000;
    if (!v923 && (OUTLINED_FUNCTION_71(7566690, 0xE300000000000000) & 1) == 0)
    {
      if (v712 == 1952542562 && v714 == 0xE400000000000000)
      {
      }

      else
      {
        v1063 = OUTLINED_FUNCTION_71(1952542562, 0xE400000000000000);

        if ((v1063 & 1) == 0)
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_18(v266 + 6, v1064, v1065, v1066, v1067);
          v1068 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
          OUTLINED_FUNCTION_30(v1068);
          v784 = OUTLINED_FUNCTION_126();
          goto LABEL_220;
        }
      }

      v708 = v1170;
      v710 = v1161;
      OUTLINED_FUNCTION_88();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_18(v266 + 13, v1076, v1077, v1078, v1079);
      v1080 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v1081 = OUTLINED_FUNCTION_14(v1080);
      sub_231E6E288(v1081, v266 + 4, 0x800000023210E700);
      OUTLINED_FUNCTION_99();
      v789 = v706;
      goto LABEL_221;
    }

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_18(0xD000000000000019, v924, v925, v926, v927);
  }

  v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
  OUTLINED_FUNCTION_14(v783);
  OUTLINED_FUNCTION_88();
LABEL_220:
  sub_231E6E288(v784, v785, v786);
  OUTLINED_FUNCTION_82();
  v788 = *(v787 + 8);
  v789 = v706;
  v708 = v1170;
LABEL_221:
  v788(v789, v708);
LABEL_222:
  OUTLINED_FUNCTION_45();
  sub_2320ED7C0();
  v790 = OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42(v790, v791, v708);
  if (!v152)
  {
    OUTLINED_FUNCTION_68();
    v792(v683, v706, v708);
    OUTLINED_FUNCTION_45();
    sub_2320EDA50();
    v793 = sub_2320ED910();
    v795 = v794;
    OUTLINED_FUNCTION_108();
    v796();
    if (!v795)
    {
      goto LABEL_238;
    }

    *&v1173 = sub_2320EDD60();
    v797 = sub_2320ED890();
    if (v798)
    {
      OUTLINED_FUNCTION_53(v797, v798);
    }

    OUTLINED_FUNCTION_27();
    sub_2320ED8A0();
    v799 = OUTLINED_FUNCTION_51();
    v800 = v1152;
    if (__swift_getEnumTagSinglePayload(v799, v801, v1152) == 1)
    {
      sub_231E6F05C(v706, &qword_27DD8D298, &qword_232106478);
    }

    else
    {
      v802 = v1150;
      v803 = v1139;
      v804 = OUTLINED_FUNCTION_122();
      v805(v804);
      sub_2320EDBF0();
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_128(v806, v807, v808);
      (*(v802 + 8))(v803, v800);
      v683 = v1148;
    }

    v809 = OUTLINED_FUNCTION_116();
    v810 = v152 && v795 == 0xE500000000000000;
    if (v810 || (OUTLINED_FUNCTION_71(v809, 0xE500000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_18(v266 + 13, v811, v812, v813, v814);
      v815 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_30(v815);
      OUTLINED_FUNCTION_50();
      v817 = v816 & 0xFFFFFFFFFFFFLL | 0x536C000000000000;
      v818 = &v1174;
      v820 = v819 + 17;
    }

    else
    {
      v928 = v793 == 7566690 && v795 == 0xE300000000000000;
      if (!v928 && (OUTLINED_FUNCTION_71(7566690, 0xE300000000000000) & 1) == 0)
      {
        if (v793 == 1952542562 && v795 == 0xE400000000000000)
        {
        }

        else
        {
          v1070 = OUTLINED_FUNCTION_71(1952542562, 0xE400000000000000);

          if ((v1070 & 1) == 0)
          {
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_18(v266 + 6, v1071, v1072, v1073, v1074);
            v1075 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
            OUTLINED_FUNCTION_30(v1075);
            v817 = 0x697461636F4C6F74;
            v818 = &v1174;
            v820 = 0xEA00000000006E6FLL;
            goto LABEL_237;
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_18(v266 + 13, v1082, v1083, v1084, v1085);
        v1086 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        v818 = OUTLINED_FUNCTION_14(v1086);
        v817 = v266 + 2;
        v820 = 0x800000023210E6A0;
        goto LABEL_237;
      }

      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_18(v266 + 8, v929, v930, v931, v932);
      v933 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_30(v933);
      OUTLINED_FUNCTION_50();
      v817 = v934 & 0xFFFFFFFFFFFFLL | 0x426C000000000000;
      v820 = 0xEE00706F74537375;
      v818 = &v1174;
    }

LABEL_237:
    sub_231E6E288(v818, v817, v820);
LABEL_238:
    (*(v710 + 8))(v683, v708);
    goto LABEL_239;
  }

  sub_231E6F05C(v706, &qword_27DD8D2A8, &qword_232106488);
LABEL_239:
  v821 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
  OUTLINED_FUNCTION_30(v821);
  OUTLINED_FUNCTION_19_0();
  v418 = OUTLINED_FUNCTION_63();
  v421 = 0x7461767265736572;
LABEL_105:
  sub_231E6E288(v418, v421, v419);
  return v1176;
}

uint64_t sub_231E6E194()
{
  v0 = 0x656C6C65636E6143;
  v1 = sub_2320ED830();
  v3 = v2;
  v4 = v1 == 0x656C6C65636E6163 && v2 == 0xE900000000000064;
  if (v4 || (v5 = v1, (sub_2320EE020() & 1) != 0) || (v5 == 0xD000000000000012 ? (v6 = 0x800000023210EA70 == v3) : (v6 = 0), v6))
  {
  }

  else
  {
    v7 = sub_2320EE020();

    if ((v7 & 1) == 0)
    {
      return 0x656D7269666E6F43;
    }
  }

  return v0;
}

uint64_t sub_231E6E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_231E6EBF4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_231E6EE40(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_231E6F05C(a1, &qword_27DD8D2F8, &qword_2321064C8);
    sub_231E6EC04(a2, a3, v9);

    return sub_231E6F05C(v9, &qword_27DD8D2F8, &qword_2321064C8);
  }

  return result;
}

uint64_t sub_231E6E35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    sub_231E6ECEC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v12;
  }

  else
  {
    sub_231E843DC(a3, a4);
    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D300, &qword_2321064D0);
      sub_2320EDFC0();

      sub_2320EDFD0();

      *v4 = v13;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_231E6E4C0@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000022;
  v3 = sub_2320EDA20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2320EDA50();
  v7 = sub_2320ED910();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  v11 = "http://schema.org";
  if (v9)
  {
    v12 = v7 == 0x6E69617274 && v9 == 0xE500000000000000;
    if (v12 || (sub_2320EE020() & 1) != 0)
    {
      v11 = "g/BusReservation";
LABEL_21:

      goto LABEL_22;
    }

    v13 = "g/BoatReservation";
    v14 = 0xD000000000000020;
    v15 = v7 == 7566690 && v9 == 0xE300000000000000;
    if (v15 || (sub_2320EE020() & 1) != 0 || ((v13 = "http://schema.org/TrainTrip", v14 = 0xD000000000000021, v7 == 1952542562) ? (v16 = v9 == 0xE400000000000000) : (v16 = 0), v16))
    {
      v11 = v13;
      v2 = v14;
      goto LABEL_21;
    }

    v17 = sub_2320EE020();

    if (v17)
    {
      v11 = "http://schema.org/TrainTrip";
      v2 = 0xD000000000000021;
    }
  }

LABEL_22:
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_231E6E6D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = sub_2320EDA20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2320EDA50();
  v7 = sub_2320ED910();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  v11 = "flightDesignator";
  if (v9)
  {
    v12 = "http://schema.org/BusTrip";
    v13 = 0xD00000000000001BLL;
    v14 = v7 == 0x6E69617274 && v9 == 0xE500000000000000;
    if (v14 || (sub_2320EE020() & 1) != 0 || ((v12 = "http://schema.org/BoatTrip", v13 = 0xD000000000000019, v7 == 7566690) ? (v15 = v9 == 0xE300000000000000) : (v15 = 0), v15 || (sub_2320EE020() & 1) != 0 || ((v12 = "http://schema.org/Event", v13 = 0xD00000000000001ALL, v7 == 1952542562) ? (v16 = v9 == 0xE400000000000000) : (v16 = 0), v16)))
    {
      v11 = v12;
      v2 = v13;
    }

    else
    {
      v17 = sub_2320EE020();

      if (v17)
      {
        v11 = "http://schema.org/Event";
        v2 = 0xD00000000000001ALL;
      }
    }
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_231E6E8E4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = sub_2320EDA20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2320EDA30() == 0x7974726170 && v7 == 0xE500000000000000)
  {

    goto LABEL_14;
  }

  v9 = sub_2320EE020();

  if (v9)
  {
LABEL_14:
    v16 = "g/ScreeningEvent";
    goto LABEL_15;
  }

  sub_2320EDA50();
  v11 = sub_2320EDA00();
  v13 = v12;
  result = (*(v4 + 8))(v6, v3);
  if (v13)
  {
    if (v11 == 0x6569766F6DLL && v13 == 0xE500000000000000)
    {
    }

    else
    {
      v15 = sub_2320EE020();

      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v16 = "g/TrainReservation";
    v2 = 0xD000000000000020;
    goto LABEL_15;
  }

LABEL_12:
  v16 = "flightDesignator";
  v2 = 0xD000000000000017;
LABEL_15:
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v16 | 0x8000000000000000;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_231E6EB38()
{
  v0 = sub_2320EDA70();
  OUTLINED_FUNCTION_100(v0);
  return sub_2320EDA30();
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

_OWORD *sub_231E6EBF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_231E6EC04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_231E843DC(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D308, &qword_2321064D8);
    sub_2320EDFC0();

    sub_231E6EBF4((*(v9 + 56) + 32 * v7), a3);
    sub_2320EDFD0();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_231E6ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_231E843DC(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D300, &qword_2321064D0);
  if ((sub_2320EDFC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_231E843DC(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_2320EE040();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_231E6F268(v14, a3, a4, a1, a2, v18);
  }
}

_OWORD *sub_231E6EE40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_231E843DC(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D308, &qword_2321064D8);
  if ((sub_2320EDFC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_231E843DC(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2320EE040();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_231E6EBF4(a1, v17);
  }

  else
  {
    sub_231E6F2B4(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_231E6EF88()
{
  result = qword_27DD8D2E0;
  if (!qword_27DD8D2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD8D2D8, &qword_2321064B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8D2E0);
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

uint64_t sub_231E6F05C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_101();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_231E6F0B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2320EDD10();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = sub_231E84454();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D310, &qword_2321064E0);
  if ((sub_2320EDFC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_231E84454();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_2320EE040();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_117();
    v20(v19);
    sub_231E6F320(v12, v8, a1, v16);
  }
}

unint64_t sub_231E6F268(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_231E6F2B4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_231E6EBF4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_231E6F320(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2320EDD10();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6570797440;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = 0xD00000000000001ELL;
  *(result + 56) = a2 | 0x8000000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x747865746E6F6340;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = v1 + 12;
  *(v2 - 120) = (a1 - 32) | 0x8000000000000000;
  return *(v2 - 288);
}

uint64_t OUTLINED_FUNCTION_12()
{
  sub_231E6EBF4((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
  return v2 - 128;
}

uint64_t OUTLINED_FUNCTION_16@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = 0xD000000000000011;
  *(result + 56) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_231E6ECEC(a1, v5 | 0x8000000000000000, 1701869940, 0xE400000000000000, a5);
}

void *OUTLINED_FUNCTION_20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[6] = v2;
  result[7] = a2;
  result[8] = 0x626D754E74616573;
  result[9] = 0xEA00000000007265;
  return result;
}

uint64_t OUTLINED_FUNCTION_21()
{
  sub_231E6EBF4((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 OUTLINED_FUNCTION_22(__n128 *a1)
{
  result = *(v1 - 240);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_30(uint64_t result)
{
  *(v2 - 104) = result;
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34()
{
  sub_231E6EBF4((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
  sub_231E6EBF4((v2 - 128), (v2 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_47(_OWORD *a1)
{
  sub_231E6EBF4(a1, (v1 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2)
{

  return sub_2320EE020();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2)
{

  return sub_231E6E35C(a1, a2, 1701667182, 0xE400000000000000);
}

__n128 OUTLINED_FUNCTION_55(__n128 *a1)
{
  result = *(v1 - 240);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64(uint64_t result)
{
  *(v2 - 104) = result;
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2)
{

  return sub_2320EE020();
}

_OWORD *OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_231E6EE40((v5 - 160), 0xD000000000000011, v4 | 0x8000000000000000, a4);
}

void OUTLINED_FUNCTION_75()
{
  *(v3 - 104) = v1;
  *(v3 - 128) = v0;
  *(v3 - 120) = v2;
}

_OWORD *OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_231E6EE40((v4 - 160), 0x7275747261706564, 0xED0000656D695465, a4);
}

void OUTLINED_FUNCTION_91(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_231E6E35C(v0, v1, 0x65646F4361746169, 0xE800000000000000);
}

_OWORD *OUTLINED_FUNCTION_102(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_231E6EE40(a1, a2, 0xEA00000000006563, a4);
}

uint64_t OUTLINED_FUNCTION_104()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_106@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v2 + 8;
  *(result + 56) = a2 | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_107(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_109@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[11] = a2;
  result[12] = v3;
  result[13] = v2;
  return result;
}

void OUTLINED_FUNCTION_112(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_114()
{
}

id OUTLINED_FUNCTION_115(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_127(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231E6E35C(a1, a2, a3, 0xE700000000000000);
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231E6E35C(a1, a2, a3, 0xE900000000000065);
}

uint64_t sub_231E6FD84()
{
  v0 = sub_2320ED6C0();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41_0();
  v6 = v5 - v4;
  v7 = sub_2320ED6B0();
  OUTLINED_FUNCTION_13();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *MEMORY[0x277D3A1F8];
  v25 = *(v9 + 104);
  v25(&v24 - v14, v16, v7);
  sub_231E76C78(qword_280D93B30, MEMORY[0x277D3A228], MEMORY[0x277D3A220]);
  v17 = sub_2320ED6D0();
  v24 = *(v9 + 8);
  v24(v15, v7);
  if (v17 & 1) != 0 || ((*(v2 + 104))(v6, *MEMORY[0x277D3A230], v0), sub_231E76C78(&qword_27DD8D328, MEMORY[0x277D3A240], MEMORY[0x277D3A238]), v18 = sub_2320ED6D0(), (*(v2 + 8))(v6, v0), (v18) || (v19 = v25, v25(v13, *MEMORY[0x277D3A208], v7), v20 = sub_2320ED6D0(), v21 = v24, v24(v13, v7), (v20))
  {
    v22 = 1;
  }

  else
  {
    v19(v13, *MEMORY[0x277D3A200], v7);
    v22 = sub_2320ED6D0();
    v21(v13, v7);
  }

  return v22 & 1;
}

uint64_t sub_231E7008C()
{
  sub_2320ED660();
  result = sub_2320ED650();
  qword_280D9DA58 = result;
  return result;
}

void static TextUnderstandingObservationSystem.start()()
{
  v1 = v0;
  v2 = sub_2320ED5F0();
  OUTLINED_FUNCTION_13();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41_0();
  v8 = v7 - v6;
  type metadata accessor for TextUnderstandingBookmarks(0);
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_0();
  v12 = v11 - v10;
  if (sub_231E6FD84())
  {
    if (qword_280D93740 != -1)
    {
      OUTLINED_FUNCTION_36_0(&qword_280D93740);
    }

    v13 = sub_2320EDD40();
    __swift_project_value_buffer(v13, qword_280D9DA40);
    v14 = sub_2320EDD20();
    v15 = sub_2320EDEA0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_48_0();
      *v16 = 0;
      _os_log_impl(&dword_231E60000, v14, v15, "SGTextUnderstandingObservationSystem: starting", v16, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    sub_231E84C7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
    sub_2320ED670();
    if (v30 == 0.0)
    {
      sub_2320ED5E0();
      sub_2320ED580();
      (*(v4 + 8))(v8, v2);
      sub_2320ED680();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_63_0();
      v17 = sub_2320EDD20();
      v18 = sub_2320EDEA0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_46_0(v19);
        _os_log_impl(&dword_231E60000, v17, v18, "SGTextUnderstandingObservationSystem: forced all bookmarks to current time.", v2, 2u);
        OUTLINED_FUNCTION_24_0();
      }
    }

    if (qword_280D93748 != -1)
    {
      swift_once();
    }

    type metadata accessor for TextUnderstandingObserver(0);
    v20 = swift_allocObject();

    sub_231E70EF4(v21);
    qword_280D9DA38 = v20;

    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v23 = sub_231E70640(0xD000000000000037, 0x800000023210EA90, &unk_232106520, v22);

    qword_280D9DA68 = v23;

    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    v25 = sub_231E70640(0xD000000000000038, 0x800000023210EAD0, &unk_232106530, v24);

    qword_280D9DA60 = v25;

    sub_231E76158(v12);
  }

  else
  {
    if (qword_280D93740 != -1)
    {
      OUTLINED_FUNCTION_36_0(&qword_280D93740);
    }

    v26 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v26, qword_280D9DA40);
    v29 = sub_2320EDD20();
    v27 = sub_2320EDEA0();
    if (os_log_type_enabled(v29, v27))
    {
      v28 = OUTLINED_FUNCTION_48_0();
      *v28 = 0;
      _os_log_impl(&dword_231E60000, v29, v27, "SGTextUnderstandingObservationSystem: disabled", v28, 2u);
      OUTLINED_FUNCTION_45_0();
    }
  }
}

uint64_t sub_231E70574()
{
  OUTLINED_FUNCTION_22_0();
  v1 = qword_280D9DA38;
  *(v0 + 16) = qword_280D9DA38;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_50_0(v2);

    return sub_231E70F60();
  }

  else
  {
    OUTLINED_FUNCTION_19();

    return v4();
  }
}

uint64_t sub_231E70640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_2320EDEB0();
  OUTLINED_FUNCTION_13();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41_0();
  v15 = v14 - v13;
  v16 = sub_2320EDDA0();
  v17 = [objc_opt_self() defaultCenter];
  sub_2320EDEC0();

  OUTLINED_FUNCTION_73_0();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  OUTLINED_FUNCTION_73_0();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v5;
  sub_231E76C78(&qword_280D93718, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);

  v20 = sub_2320EDD50();

  (*(v11 + 8))(v15, v9);
  return v20;
}

uint64_t sub_231E70858()
{
  OUTLINED_FUNCTION_22_0();
  v1 = qword_280D9DA38;
  *(v0 + 16) = qword_280D9DA38;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_50_0(v2);

    return sub_231E731A0();
  }

  else
  {
    OUTLINED_FUNCTION_19();

    return v4();
  }
}

uint64_t sub_231E70924()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

void sub_231E70A48(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*a1 == 1)
  {
    if (qword_280D93740 != -1)
    {
      swift_once();
    }

    v6 = sub_2320EDD40();
    __swift_project_value_buffer(v6, qword_280D9DA40);

    oslog = sub_2320EDD20();
    v7 = sub_2320EDEA0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_231E83810(a3, a4, &v18);
      _os_log_impl(&dword_231E60000, oslog, v7, "SGTextUnderstandingObserver: %s publisher finished", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2383814F0](v9, -1, -1);
      v10 = v8;
LABEL_10:
      MEMORY[0x2383814F0](v10, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280D93740 != -1)
    {
      swift_once();
    }

    v11 = sub_2320EDD40();
    __swift_project_value_buffer(v11, qword_280D9DA40);

    oslog = sub_2320EDD20();
    v12 = sub_2320EDE80();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_231E83810(a3, a4, &v18);
      *(v13 + 12) = 2112;
      swift_allocError();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_231E60000, oslog, v12, "SGTextUnderstandingObserver: %s publisher failed: %@", v13, 0x16u);
      sub_231E768C8(v14, &qword_27DD8D320, &qword_232106700);
      MEMORY[0x2383814F0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2383814F0](v15, -1, -1);
      v10 = v13;
      goto LABEL_10;
    }
  }
}

uint64_t sub_231E70D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D93748 != -1)
  {
    swift_once();
  }

  return sub_2320ED640();
}

id TextUnderstandingObservationSystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextUnderstandingObservationSystem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextUnderstandingObservationSystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231E70E74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2320EDD40();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2320EDD30();
}

uint64_t sub_231E70EF4(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_2320ED590();
  sub_2320ED590();
  *(v1 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_231E70F60()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_2320ED5F0();
  v1[10] = v2;
  OUTLINED_FUNCTION_14_0(v2);
  v1[11] = v3;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231E71040()
{
  v2 = v0[8];
  v3 = *(v2 + 112);
  if (!v3)
  {
    *(v2 + 112) = sub_231E71768();

    v3 = *(v2 + 112);
    if (!v3)
    {
      if (qword_280D93CA8 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
      }

      v47 = sub_2320EDD40();
      OUTLINED_FUNCTION_49_0(v47, qword_280D9DAA8);
      v7 = sub_2320EDD20();
      v48 = sub_2320EDE80();
      if (OUTLINED_FUNCTION_37_0(v48))
      {
        v49 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_44_0(v49);
        OUTLINED_FUNCTION_18_0(&dword_231E60000, v50, v51, "SGTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_26_0();
      }

      goto LABEL_10;
    }

    v2 = v0[8];
  }

  v0[14] = v3;
  v4 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress;
  if (*(v2 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) == 1)
  {
    v5 = qword_280D93CA8;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
    }

    v6 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v6, qword_280D9DAA8);
    v7 = sub_2320EDD20();
    v8 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v8))
    {
      v9 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v9);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_24_0();
    }

LABEL_10:

    goto LABEL_17;
  }

  v15 = v0[13];
  v16 = v0[10];

  sub_2320ED5E0();
  v17 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastResultsPostTime;
  OUTLINED_FUNCTION_59_0();
  v18 = OUTLINED_FUNCTION_57_0();
  v19(v18);
  sub_2320ED5A0();
  v20 = OUTLINED_FUNCTION_72_0();
  v17(v20);
  (v17)(v15, v16);
  if (v1 < 2.0)
  {
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
    }

    v21 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v21, qword_280D9DAA8);
    v22 = sub_2320EDD20();
    v23 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v23))
    {
      v24 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v24);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_24_0();
    }

    v30 = v0[8];
    v31 = v0[9];

    *(v2 + v4) = 1;
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;

    sub_2320ED640();

LABEL_17:

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_56_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
  }

  v35 = sub_2320EDD40();
  v0[16] = __swift_project_value_buffer(v35, qword_280D9DAA8);
  v36 = sub_2320EDD20();
  v37 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_34_0(v37))
  {
    v38 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_46_0(v38);
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_24_0();
  }

  v44 = swift_task_alloc();
  v0[17] = v44;
  *v44 = v0;
  OUTLINED_FUNCTION_64_0(v44);
  OUTLINED_FUNCTION_56_0();

  return sub_231E71EE4();
}

uint64_t sub_231E71418()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_231E7160C;
  }

  else
  {
    v6 = sub_231E7153C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_231E7153C()
{
  OUTLINED_FUNCTION_51_0();
  v0 = sub_2320EDD20();
  v1 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_37_0(v1))
  {
    v2 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v2);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v3, v4, "SGTextUnderstandingObserver: results handler finished");
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0(v5, v6);

  OUTLINED_FUNCTION_29_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  swift_endAccess();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

void sub_231E7160C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + 144);
  v3 = v2;
  v4 = sub_2320EDD20();
  v5 = sub_2320EDE80();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    OUTLINED_FUNCTION_75_0();
    v8 = OUTLINED_FUNCTION_60_0();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_231E768C8(v8, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0(v16, v17);

  OUTLINED_FUNCTION_29_0();
  v18 = OUTLINED_FUNCTION_16_0();
  v19(v18);
  swift_endAccess();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231E71768()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    type metadata accessor for TextUnderstandingImporter();
    swift_allocObject();
    return TextUnderstandingImporter.init(store:)(v1);
  }

  else
  {
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
    }

    v3 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v3, qword_280D9DAA8);
    v4 = sub_2320EDD20();
    v5 = sub_2320EDE80();
    if (OUTLINED_FUNCTION_61_0(v5))
    {
      v6 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_44_0(v6);
      OUTLINED_FUNCTION_54_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }
}

uint64_t sub_231E71850(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2320EDFA0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231E71910, 0, 0);
}

uint64_t sub_231E71910()
{
  OUTLINED_FUNCTION_25_0();
  sub_2320EE0A0();
  sub_2320EE070();
  v1 = OUTLINED_FUNCTION_74_0();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_31_0(v1);

  return v3(v2);
}

uint64_t sub_231E719B8()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v9 = v8;
  *(v10 + 56) = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = sub_231E71BE8;
  }

  else
  {
    v11 = sub_231E71B14;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_231E71B14()
{
  OUTLINED_FUNCTION_25_0();
  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
  }

  v1 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v1, qword_280D9DAA8);
  v2 = sub_2320EDD20();
  v3 = sub_2320EDE70();
  if (OUTLINED_FUNCTION_37_0(v3))
  {
    v4 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v5, v6, "SGTextUnderstandingObserver: re-posting distributedResults");
    OUTLINED_FUNCTION_26_0();
  }

  v7 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_231E71D48, v7, 0);
}

uint64_t sub_231E71BE8()
{
  OUTLINED_FUNCTION_51_0();
  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
  }

  v2 = *(v0 + 56);
  v3 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v3, qword_280D9DAA8);
  v4 = v2;
  v5 = sub_2320EDD20();
  v6 = sub_2320EDE80();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    OUTLINED_FUNCTION_75_0();
    v9 = OUTLINED_FUNCTION_60_0();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_231E768C8(v9, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_19();

  return v17();
}

uint64_t sub_231E71D48()
{
  OUTLINED_FUNCTION_22_0();
  *(*(v0 + 16) + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_231E71DE0;
  OUTLINED_FUNCTION_21_0();

  return sub_231E70F60();
}

uint64_t sub_231E71DE0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_231E71EE4()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2320ED7A0();
  v1[4] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_76_0();
  v5 = sub_2320EDA70();
  v1[7] = v5;
  OUTLINED_FUNCTION_14_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_76_0();
  v7 = sub_2320EDBB0();
  v1[10] = v7;
  OUTLINED_FUNCTION_14_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_76_0();
  v9 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231E72020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  if (qword_280D93CB8 != -1)
  {
    swift_once();
  }

  v12 = sub_2320ED700();
  *(v10 + 104) = v12;
  *(v10 + 112) = sub_231E76C78(&qword_280D93B18, MEMORY[0x277D203F0], MEMORY[0x277D203E8]);
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_2_0();
  v17 = sub_231E74330(v13, v14, v15, v16);
  *(v10 + 120) = v17;
  *(v10 + 128) = v12;

  if (v12)
  {
    goto LABEL_4;
  }

  v27 = *(v17 + 16);
  *(v10 + 136) = v27;
  if (v27)
  {
    v28 = *(v10 + 88);
    v29 = *(v28 + 16);
    *(v10 + 328) = *(v28 + 80);
    OUTLINED_FUNCTION_6_0();
    *(v10 + 144) = v30;
    *(v10 + 152) = v29;
    *(v10 + 160) = 0;

    v31 = OUTLINED_FUNCTION_13_0();
    v29(v31);
    v32 = swift_task_alloc();
    *(v10 + 168) = v32;
    *v32 = v10;
    v32[1] = sub_231E72438;
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_30_0();

    return sub_231E807E4();
  }

  if (qword_280D93CC0 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280D93CC0);
  }

  v34 = sub_2320ED6F0();
  *(v10 + 176) = v34;
  OUTLINED_FUNCTION_27_0();
  *(v10 + 184) = sub_231E76C78(v35, v36, MEMORY[0x277D203B8]);
  swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_2_0();
  v41 = sub_231E748E8(v37, v38, v39, v40);
  *(v10 + 192) = v41;
  *(v10 + 200) = v34;

  if (v34)
  {
    goto LABEL_4;
  }

  v42 = *(v41 + 16);
  *(v10 + 208) = v42;
  if (v42)
  {
    v43 = *(v10 + 64);
    v44 = *(v43 + 16);
    *(v10 + 332) = *(v43 + 80);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_62_0(v45);
    v46 = OUTLINED_FUNCTION_13_0();
    v44(v46);
    v47 = swift_task_alloc();
    *(v10 + 240) = v47;
    *v47 = v10;
    OUTLINED_FUNCTION_5_0(v47);
    OUTLINED_FUNCTION_30_0();

    return sub_231E81E38();
  }

  if (qword_280D93CC8 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280D93CC8);
  }

  v49 = sub_2320ED6E0();
  *(v10 + 248) = v49;
  OUTLINED_FUNCTION_7_0();
  v52 = sub_231E76C78(v50, v51, MEMORY[0x277D203A8]);
  OUTLINED_FUNCTION_55_0(v52);
  swift_getKeyPath();
  v53 = OUTLINED_FUNCTION_2_0();
  v57 = sub_231E74EA0(v53, v54, v55, v56);
  OUTLINED_FUNCTION_58_0(v57);
  if (v49)
  {
LABEL_4:
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  OUTLINED_FUNCTION_71_0();
  if (v58)
  {
    OUTLINED_FUNCTION_39_0();
    *(v10 + 336) = v59;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_38_0(v60);
    v61 = OUTLINED_FUNCTION_13_0();
    v11(v61);
    v62 = swift_task_alloc();
    v63 = OUTLINED_FUNCTION_67_0(v62);
    *v63 = v64;
    OUTLINED_FUNCTION_1_0(v63);
    OUTLINED_FUNCTION_30_0();

    return sub_231E82320();
  }

  else
  {

    v66 = swift_task_alloc();
    v67 = OUTLINED_FUNCTION_66_0(v66);
    *v67 = v68;
    OUTLINED_FUNCTION_3_0(v67);
    OUTLINED_FUNCTION_30_0();

    return sub_231E8190C();
  }
}

uint64_t sub_231E72438()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231E72584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_68_0();
  if (!v12)
  {
    v29 = *(v10 + 152);
LABEL_7:
    *(v10 + 160) = v11;
    OUTLINED_FUNCTION_9_0();
    v29();
    v30 = swift_task_alloc();
    *(v10 + 168) = v30;
    *v30 = v10;
    v30[1] = sub_231E72438;
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_30_0();

    return sub_231E807E4();
  }

  v13 = *(v10 + 128);
  v14 = *(v10 + 112);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_12_0();
  v19 = sub_231E74330(v15, v16, v17, v18);
  *(v10 + 120) = v19;
  *(v10 + 128) = v13;

  if (v13)
  {
    goto LABEL_4;
  }

  v32 = *(v19 + 16);
  *(v10 + 136) = v32;
  if (v32)
  {
    v33 = *(v10 + 88);
    *(v10 + 328) = *(v33 + 80);
    *(v10 + 144) = *(v33 + 72);
    v29 = *(v33 + 16);
    *(v10 + 152) = v29;

    v11 = 0;
    goto LABEL_7;
  }

  if (qword_280D93CC0 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280D93CC0);
  }

  v34 = sub_2320ED6F0();
  *(v10 + 176) = v34;
  OUTLINED_FUNCTION_27_0();
  *(v10 + 184) = sub_231E76C78(v35, v36, MEMORY[0x277D203B8]);
  swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_2_0();
  v41 = sub_231E748E8(v37, v38, v39, v40);
  *(v10 + 192) = v41;
  *(v10 + 200) = v34;

  if (v34)
  {
    goto LABEL_4;
  }

  v42 = *(v41 + 16);
  *(v10 + 208) = v42;
  if (v42)
  {
    v43 = *(v10 + 64);
    v44 = *(v43 + 16);
    *(v10 + 332) = *(v43 + 80);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_62_0(v45);
    v46 = OUTLINED_FUNCTION_13_0();
    v44(v46);
    v47 = swift_task_alloc();
    *(v10 + 240) = v47;
    *v47 = v10;
    OUTLINED_FUNCTION_5_0(v47);
    OUTLINED_FUNCTION_30_0();

    return sub_231E81E38();
  }

  if (qword_280D93CC8 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280D93CC8);
  }

  v49 = sub_2320ED6E0();
  *(v10 + 248) = v49;
  OUTLINED_FUNCTION_7_0();
  v52 = sub_231E76C78(v50, v51, MEMORY[0x277D203A8]);
  OUTLINED_FUNCTION_55_0(v52);
  swift_getKeyPath();
  v53 = OUTLINED_FUNCTION_2_0();
  v57 = sub_231E74EA0(v53, v54, v55, v56);
  OUTLINED_FUNCTION_58_0(v57);
  if (v49)
  {
LABEL_4:
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  OUTLINED_FUNCTION_71_0();
  if (v58)
  {
    OUTLINED_FUNCTION_39_0();
    *(v10 + 336) = v59;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_38_0(v60);
    v61 = OUTLINED_FUNCTION_13_0();
    v14(v61);
    v62 = swift_task_alloc();
    v63 = OUTLINED_FUNCTION_67_0(v62);
    *v63 = v64;
    OUTLINED_FUNCTION_1_0(v63);
    OUTLINED_FUNCTION_30_0();

    return sub_231E82320();
  }

  else
  {

    v66 = swift_task_alloc();
    v67 = OUTLINED_FUNCTION_66_0(v66);
    *v67 = v68;
    OUTLINED_FUNCTION_3_0(v67);
    OUTLINED_FUNCTION_30_0();

    return sub_231E8190C();
  }
}

uint64_t sub_231E72964()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231E72AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_68_0();
  if (!v12)
  {
    v29 = *(v10 + 224);
LABEL_7:
    *(v10 + 232) = v11;
    OUTLINED_FUNCTION_9_0();
    v29();
    v30 = swift_task_alloc();
    *(v10 + 240) = v30;
    *v30 = v10;
    OUTLINED_FUNCTION_5_0(v30);
    OUTLINED_FUNCTION_30_0();

    return sub_231E81E38();
  }

  v13 = *(v10 + 200);
  v14 = *(v10 + 184);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_12_0();
  v19 = sub_231E748E8(v15, v16, v17, v18);
  *(v10 + 192) = v19;
  *(v10 + 200) = v13;

  if (v13)
  {
    goto LABEL_4;
  }

  v32 = *(v19 + 16);
  *(v10 + 208) = v32;
  if (v32)
  {
    v33 = *(v10 + 64);
    *(v10 + 332) = *(v33 + 80);
    *(v10 + 216) = *(v33 + 72);
    v29 = *(v33 + 16);
    *(v10 + 224) = v29;

    v11 = 0;
    goto LABEL_7;
  }

  if (qword_280D93CC8 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280D93CC8);
  }

  v34 = sub_2320ED6E0();
  *(v10 + 248) = v34;
  OUTLINED_FUNCTION_7_0();
  v37 = sub_231E76C78(v35, v36, MEMORY[0x277D203A8]);
  OUTLINED_FUNCTION_55_0(v37);
  swift_getKeyPath();
  v38 = OUTLINED_FUNCTION_2_0();
  v42 = sub_231E74EA0(v38, v39, v40, v41);
  OUTLINED_FUNCTION_58_0(v42);
  if (v34)
  {
LABEL_4:
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_71_0();
    if (v43)
    {
      OUTLINED_FUNCTION_39_0();
      *(v10 + 336) = v44;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_38_0(v45);
      v46 = OUTLINED_FUNCTION_13_0();
      v14(v46);
      v47 = swift_task_alloc();
      v48 = OUTLINED_FUNCTION_67_0(v47);
      *v48 = v49;
      OUTLINED_FUNCTION_1_0(v48);
      OUTLINED_FUNCTION_30_0();

      return sub_231E82320();
    }

    else
    {

      v51 = swift_task_alloc();
      v52 = OUTLINED_FUNCTION_66_0(v51);
      *v52 = v53;
      OUTLINED_FUNCTION_3_0(v52);
      OUTLINED_FUNCTION_30_0();

      return sub_231E8190C();
    }
  }
}

uint64_t sub_231E72D5C()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231E72EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_68_0();
  if (!v12)
  {
    v27 = *(v10 + 296);
LABEL_7:
    *(v10 + 304) = v11;
    OUTLINED_FUNCTION_9_0();
    v27();
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_67_0(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_1_0(v29);
    OUTLINED_FUNCTION_30_0();

    return sub_231E82320();
  }

  v13 = *(v10 + 272);
  swift_getKeyPath();
  v14 = OUTLINED_FUNCTION_12_0();
  *(v10 + 264) = sub_231E74EA0(v14, v15, v16, v17);
  *(v10 + 272) = v13;

  if (v13)
  {
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_71_0();
    if (v32)
    {
      v33 = *(v10 + 40);
      *(v10 + 336) = *(v33 + 80);
      *(v10 + 288) = *(v33 + 72);
      v27 = *(v33 + 16);
      *(v10 + 296) = v27;

      v11 = 0;
      goto LABEL_7;
    }

    v34 = swift_task_alloc();
    v35 = OUTLINED_FUNCTION_66_0(v34);
    *v35 = v36;
    OUTLINED_FUNCTION_3_0(v35);
    OUTLINED_FUNCTION_30_0();

    return sub_231E8190C();
  }
}

uint64_t sub_231E73060()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231E731A0()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_2320ED5F0();
  v1[10] = v2;
  OUTLINED_FUNCTION_14_0(v2);
  v1[11] = v3;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231E73280()
{
  v2 = v0[8];
  v3 = *(v2 + 112);
  if (!v3)
  {
    *(v2 + 112) = sub_231E71768();

    v3 = *(v2 + 112);
    if (!v3)
    {
      if (qword_280D93CA8 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
      }

      v47 = sub_2320EDD40();
      OUTLINED_FUNCTION_49_0(v47, qword_280D9DAA8);
      v7 = sub_2320EDD20();
      v48 = sub_2320EDE80();
      if (OUTLINED_FUNCTION_37_0(v48))
      {
        v49 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_44_0(v49);
        OUTLINED_FUNCTION_18_0(&dword_231E60000, v50, v51, "SGTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_26_0();
      }

      goto LABEL_10;
    }

    v2 = v0[8];
  }

  v0[14] = v3;
  v4 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress;
  if (*(v2 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) == 1)
  {
    v5 = qword_280D93CA8;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
    }

    v6 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v6, qword_280D9DAA8);
    v7 = sub_2320EDD20();
    v8 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v8))
    {
      v9 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v9);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_24_0();
    }

LABEL_10:

    goto LABEL_17;
  }

  v15 = v0[13];
  v16 = v0[10];

  sub_2320ED5E0();
  v17 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastDeletionPostTime;
  OUTLINED_FUNCTION_59_0();
  v18 = OUTLINED_FUNCTION_57_0();
  v19(v18);
  sub_2320ED5A0();
  v20 = OUTLINED_FUNCTION_72_0();
  v17(v20);
  (v17)(v15, v16);
  if (v1 < 2.0)
  {
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
    }

    v21 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v21, qword_280D9DAA8);
    v22 = sub_2320EDD20();
    v23 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v23))
    {
      v24 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v24);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_24_0();
    }

    v30 = v0[8];
    v31 = v0[9];

    *(v2 + v4) = 1;
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;

    sub_2320ED640();

LABEL_17:

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_56_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
  }

  v35 = sub_2320EDD40();
  v0[16] = __swift_project_value_buffer(v35, qword_280D9DAA8);
  v36 = sub_2320EDD20();
  v37 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_34_0(v37))
  {
    v38 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_46_0(v38);
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_24_0();
  }

  v44 = swift_task_alloc();
  v0[17] = v44;
  *v44 = v0;
  OUTLINED_FUNCTION_64_0(v44);
  OUTLINED_FUNCTION_56_0();

  return sub_231E73DD8();
}

uint64_t sub_231E73658()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_231E7384C;
  }

  else
  {
    v6 = sub_231E7377C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_231E7377C()
{
  OUTLINED_FUNCTION_51_0();
  v0 = sub_2320EDD20();
  v1 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_37_0(v1))
  {
    v2 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v2);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v3, v4, "SGTextUnderstandingObserver: deletion handler finished");
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0(v5, v6);

  OUTLINED_FUNCTION_29_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  swift_endAccess();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

void sub_231E7384C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + 144);
  v3 = v2;
  v4 = sub_2320EDD20();
  v5 = sub_2320EDE80();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    OUTLINED_FUNCTION_75_0();
    v8 = OUTLINED_FUNCTION_60_0();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_231E768C8(v8, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0(v16, v17);

  OUTLINED_FUNCTION_29_0();
  v18 = OUTLINED_FUNCTION_16_0();
  v19(v18);
  swift_endAccess();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231E739A8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2320EDFA0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231E73A68, 0, 0);
}

uint64_t sub_231E73A68()
{
  OUTLINED_FUNCTION_25_0();
  sub_2320EE0A0();
  sub_2320EE070();
  v1 = OUTLINED_FUNCTION_74_0();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_31_0(v1);

  return v3(v2);
}

uint64_t sub_231E73B10()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v9 = v8;
  *(v10 + 56) = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = sub_231E76CCC;
  }

  else
  {
    v11 = sub_231E73C6C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_231E73C6C()
{
  OUTLINED_FUNCTION_25_0();
  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
  }

  v1 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v1, qword_280D9DAA8);
  v2 = sub_2320EDD20();
  v3 = sub_2320EDE70();
  if (OUTLINED_FUNCTION_37_0(v3))
  {
    v4 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v5, v6, "SGTextUnderstandingObserver: re-posting distributedDeletion");
    OUTLINED_FUNCTION_26_0();
  }

  v7 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_231E73D40, v7, 0);
}

uint64_t sub_231E73D40()
{
  OUTLINED_FUNCTION_22_0();
  *(*(v0 + 16) + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_231E76CC4;
  OUTLINED_FUNCTION_21_0();

  return sub_231E731A0();
}

uint64_t sub_231E73DD8()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2320EDCC0();
  v1[4] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_76_0();
  v5 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231E73E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  if (qword_280D93CB0 != -1)
  {
    swift_once();
  }

  v12 = sub_2320ED710();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_231E76C78(&qword_280D93B10, MEMORY[0x277D20410], MEMORY[0x277D20408]);
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_2_0();
  v17 = sub_231E75458(v13, v14, v15, v16);
  *(v10 + 72) = v17;
  *(v10 + 80) = v12;

  if (v12)
  {

    OUTLINED_FUNCTION_15_0();
LABEL_5:
    OUTLINED_FUNCTION_30_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  v27 = *(v17 + 16);
  *(v10 + 88) = v27;
  if (!v27)
  {

    OUTLINED_FUNCTION_19();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_39_0();
  *(v10 + 128) = v28;
  OUTLINED_FUNCTION_6_0();
  *(v10 + 96) = v29;
  *(v10 + 104) = v11;
  *(v10 + 112) = 0;

  v30 = OUTLINED_FUNCTION_13_0();
  v11(v30);
  v31 = swift_task_alloc();
  *(v10 + 120) = v31;
  *v31 = v10;
  OUTLINED_FUNCTION_4_0(v31);
  OUTLINED_FUNCTION_30_0();

  return sub_231E7FE1C();
}

uint64_t sub_231E74048()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231E74194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_68_0();
  if (!v12)
  {
    v28 = *(v10 + 104);
LABEL_8:
    *(v10 + 112) = v11;
    OUTLINED_FUNCTION_9_0();
    v28();
    v29 = swift_task_alloc();
    *(v10 + 120) = v29;
    *v29 = v10;
    OUTLINED_FUNCTION_4_0(v29);
    OUTLINED_FUNCTION_30_0();

    return sub_231E7FE1C();
  }

  v13 = *(v10 + 80);
  swift_getKeyPath();
  v14 = OUTLINED_FUNCTION_12_0();
  v18 = sub_231E75458(v14, v15, v16, v17);
  *(v10 + 72) = v18;
  *(v10 + 80) = v13;

  if (v13)
  {

    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    v31 = *(v18 + 16);
    *(v10 + 88) = v31;
    if (v31)
    {
      v32 = *(v10 + 40);
      *(v10 + 128) = *(v32 + 80);
      *(v10 + 96) = *(v32 + 72);
      v28 = *(v32 + 16);
      *(v10 + 104) = v28;

      v11 = 0;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_19();
  }

  OUTLINED_FUNCTION_30_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_231E74330(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v51 = a2;
  v47 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v52 = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = v13 + 16;
  sub_231E84C7C();
  v48 = a4;
  v15 = swift_readAtKeyPath();
  v17 = *v16;
  v15(v54, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v20 = sub_2320ED5B0();
  v21 = v6;
  v22 = v50;
  (*(v7 + 8))(v9, v21);
  [v19 setStartDate_];

  [v19 setMaxEvents_];
  v23 = v19;
  v24 = v22;
  v25 = v49;
  sub_2320ED730();
  if (v25)
  {
    sub_231E76158(v12);
  }

  else
  {
    v49 = 0;
    v45[1] = v14;
    v46 = v23;

    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v26 = swift_allocObject();
    v27 = v47;
    *(v26 + 16) = v47;
    v28 = swift_allocObject();
    v28[2] = v17;
    v28[3] = v52;
    v28[4] = v18;
    v28[5] = v27;

    sub_2320EDD50();

    swift_beginAccess();
    v53[0] = *(v18 + 16);
    swift_setAtWritableKeyPath();
    v29 = v12;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v30 = sub_2320EDD40();
    __swift_project_value_buffer(v30, qword_280D9DAA8);
    v31 = v52;

    v32 = sub_2320EDD20();
    v33 = sub_2320EDEA0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v34 = 134218242;
      swift_beginAccess();
      *(v34 + 4) = *(*(v31 + 16) + 16);

      *(v34 + 12) = 2080;
      v47 = v29;
      v35 = v33;
      v36 = sub_2320ED720();
      v37 = [v36 streamIdentifier];

      v38 = sub_2320EDDB0();
      v40 = v39;

      v41 = sub_231E83810(v38, v40, v53);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_231E60000, v32, v35, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v34, 0x16u);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x2383814F0](v42, -1, -1);
      MEMORY[0x2383814F0](v34, -1, -1);

      v43 = v47;
    }

    else
    {

      v43 = v29;
    }

    sub_231E76158(v43);
    swift_beginAccess();
    v24 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return v24;
}

uint64_t sub_231E748E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v51 = a2;
  v47 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v52 = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = v13 + 16;
  sub_231E84C7C();
  v48 = a4;
  v15 = swift_readAtKeyPath();
  v17 = *v16;
  v15(v54, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v20 = sub_2320ED5B0();
  v21 = v6;
  v22 = v50;
  (*(v7 + 8))(v9, v21);
  [v19 setStartDate_];

  [v19 setMaxEvents_];
  v23 = v19;
  v24 = v22;
  v25 = v49;
  sub_2320ED730();
  if (v25)
  {
    sub_231E76158(v12);
  }

  else
  {
    v49 = 0;
    v45[1] = v14;
    v46 = v23;

    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v26 = swift_allocObject();
    v27 = v47;
    *(v26 + 16) = v47;
    v28 = swift_allocObject();
    v28[2] = v17;
    v28[3] = v52;
    v28[4] = v18;
    v28[5] = v27;

    sub_2320EDD50();

    swift_beginAccess();
    v53[0] = *(v18 + 16);
    swift_setAtWritableKeyPath();
    v29 = v12;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v30 = sub_2320EDD40();
    __swift_project_value_buffer(v30, qword_280D9DAA8);
    v31 = v52;

    v32 = sub_2320EDD20();
    v33 = sub_2320EDEA0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v34 = 134218242;
      swift_beginAccess();
      *(v34 + 4) = *(*(v31 + 16) + 16);

      *(v34 + 12) = 2080;
      v47 = v29;
      v35 = v33;
      v36 = sub_2320ED720();
      v37 = [v36 streamIdentifier];

      v38 = sub_2320EDDB0();
      v40 = v39;

      v41 = sub_231E83810(v38, v40, v53);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_231E60000, v32, v35, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v34, 0x16u);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x2383814F0](v42, -1, -1);
      MEMORY[0x2383814F0](v34, -1, -1);

      v43 = v47;
    }

    else
    {

      v43 = v29;
    }

    sub_231E76158(v43);
    swift_beginAccess();
    v24 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return v24;
}

uint64_t sub_231E74EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v51 = a2;
  v47 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v52 = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = v13 + 16;
  sub_231E84C7C();
  v48 = a4;
  v15 = swift_readAtKeyPath();
  v17 = *v16;
  v15(v54, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v20 = sub_2320ED5B0();
  v21 = v6;
  v22 = v50;
  (*(v7 + 8))(v9, v21);
  [v19 setStartDate_];

  [v19 setMaxEvents_];
  v23 = v19;
  v24 = v22;
  v25 = v49;
  sub_2320ED730();
  if (v25)
  {
    sub_231E76158(v12);
  }

  else
  {
    v49 = 0;
    v45[1] = v14;
    v46 = v23;

    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v26 = swift_allocObject();
    v27 = v47;
    *(v26 + 16) = v47;
    v28 = swift_allocObject();
    v28[2] = v17;
    v28[3] = v52;
    v28[4] = v18;
    v28[5] = v27;

    sub_2320EDD50();

    swift_beginAccess();
    v53[0] = *(v18 + 16);
    swift_setAtWritableKeyPath();
    v29 = v12;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v30 = sub_2320EDD40();
    __swift_project_value_buffer(v30, qword_280D9DAA8);
    v31 = v52;

    v32 = sub_2320EDD20();
    v33 = sub_2320EDEA0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v34 = 134218242;
      swift_beginAccess();
      *(v34 + 4) = *(*(v31 + 16) + 16);

      *(v34 + 12) = 2080;
      v47 = v29;
      v35 = v33;
      v36 = sub_2320ED720();
      v37 = [v36 streamIdentifier];

      v38 = sub_2320EDDB0();
      v40 = v39;

      v41 = sub_231E83810(v38, v40, v53);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_231E60000, v32, v35, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v34, 0x16u);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x2383814F0](v42, -1, -1);
      MEMORY[0x2383814F0](v34, -1, -1);

      v43 = v47;
    }

    else
    {

      v43 = v29;
    }

    sub_231E76158(v43);
    swift_beginAccess();
    v24 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return v24;
}

uint64_t sub_231E75458(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v51 = a2;
  v47 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v52 = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = v13 + 16;
  sub_231E84C7C();
  v48 = a4;
  v15 = swift_readAtKeyPath();
  v17 = *v16;
  v15(v54, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v20 = sub_2320ED5B0();
  v21 = v6;
  v22 = v50;
  (*(v7 + 8))(v9, v21);
  [v19 setStartDate_];

  [v19 setMaxEvents_];
  v23 = v19;
  v24 = v22;
  v25 = v49;
  sub_2320ED730();
  if (v25)
  {
    sub_231E76158(v12);
  }

  else
  {
    v49 = 0;
    v45[1] = v14;
    v46 = v23;

    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v26 = swift_allocObject();
    v27 = v47;
    *(v26 + 16) = v47;
    v28 = swift_allocObject();
    v28[2] = v17;
    v28[3] = v52;
    v28[4] = v18;
    v28[5] = v27;

    sub_2320EDD50();

    swift_beginAccess();
    v53[0] = *(v18 + 16);
    swift_setAtWritableKeyPath();
    v29 = v12;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v30 = sub_2320EDD40();
    __swift_project_value_buffer(v30, qword_280D9DAA8);
    v31 = v52;

    v32 = sub_2320EDD20();
    v33 = sub_2320EDEA0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v34 = 134218242;
      swift_beginAccess();
      *(v34 + 4) = *(*(v31 + 16) + 16);

      *(v34 + 12) = 2080;
      v47 = v29;
      v35 = v33;
      v36 = sub_2320ED720();
      v37 = [v36 streamIdentifier];

      v38 = sub_2320EDDB0();
      v40 = v39;

      v41 = sub_231E83810(v38, v40, v53);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_231E60000, v32, v35, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v34, 0x16u);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x2383814F0](v42, -1, -1);
      MEMORY[0x2383814F0](v34, -1, -1);

      v43 = v47;
    }

    else
    {

      v43 = v29;
    }

    sub_231E76158(v43);
    swift_beginAccess();
    v24 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  return v24;
}

void sub_231E75A10(NSObject **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v9 = sub_2320EDD40();
    __swift_project_value_buffer(v9, qword_280D9DAA8);
    oslog = sub_2320EDD20();
    v10 = sub_2320EDE60();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_231E60000, oslog, v10, "SGTextUnderstandingObserver: importEventBatch finished", v11, 2u);
    v8 = v11;
LABEL_10:
    MEMORY[0x2383814F0](v8, -1, -1);
LABEL_11:
    v12 = oslog;

    goto LABEL_13;
  }

  if (qword_280D93CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2320EDD40();
  __swift_project_value_buffer(v2, qword_280D9DAA8);
  v3 = v1;
  oslog = sub_2320EDD20();
  v4 = sub_2320EDE80();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_231E60000, oslog, v4, "SGTextUnderstandingObserver: importEventBatch failed: %@", v5, 0xCu);
    sub_231E768C8(v6, &qword_27DD8D320, &qword_232106700);
    MEMORY[0x2383814F0](v6, -1, -1);
    v8 = v5;
    goto LABEL_10;
  }

  v12 = v1;

LABEL_13:
}

void sub_231E75C38(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  a6(v16);
  v19 = sub_2320ED5F0();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_231E768C8(v18, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
    }

    v20 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v20, qword_280D9DAA8);
    v21 = sub_2320EDD20();
    v22 = sub_2320EDE80();
    if (!OUTLINED_FUNCTION_61_0(v22))
    {
      goto LABEL_13;
    }

    v23 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v23);
    OUTLINED_FUNCTION_54_0();
    v29 = 2;
    goto LABEL_12;
  }

  sub_2320ED580();
  v31 = v30;
  (*(*(v19 - 8) + 8))(v18, v19);
  if (v31 > a4)
  {
    swift_beginAccess();
    sub_231E767C0(a7);
    v32 = *(*(a2 + 16) + 16);
    sub_231E7681C(v32, a7);
    v33 = *(a2 + 16);
    *(v33 + 16) = v32 + 1;
    a8(0);
    OUTLINED_FUNCTION_33_0();
    (*(v34 + 16))(v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32, a1);
    *(a2 + 16) = v33;
    swift_endAccess();
    swift_beginAccess();
    *(a3 + 16) = v31;
    return;
  }

  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280D93CA8);
  }

  v35 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v35, qword_280D9DAA8);
  v21 = sub_2320EDD20();
  v36 = sub_2320EDE70();
  if (OUTLINED_FUNCTION_61_0(v36))
  {
    v37 = OUTLINED_FUNCTION_75_0();
    *v37 = 134217984;
    *(v37 + 4) = v31;
    OUTLINED_FUNCTION_54_0();
    v29 = 12;
LABEL_12:
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_26_0();
  }

LABEL_13:
}

uint64_t sub_231E75F1C()
{

  v1 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastResultsPostTime;
  v2 = sub_2320ED5F0();
  OUTLINED_FUNCTION_33_0();
  v4 = *(v3 + 8);
  v4(&v1[v0], v2);
  v4(OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastDeletionPostTime + v0, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231E75FBC()
{
  sub_231E75F1C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TextUnderstandingObserver(uint64_t a1)
{
  result = qword_280D93810;
  if (!qword_280D93810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231E76048()
{
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_65_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_50_0(v1);

  return sub_231E70558();
}

uint64_t sub_231E760D0()
{
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_65_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_50_0(v1);

  return sub_231E7083C();
}

uint64_t sub_231E76158(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingBookmarks(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231E761E0(uint64_t a1)
{
  result = sub_2320ED5F0();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_231E76344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2320EDF90();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_231E76444, 0, 0);
}

uint64_t sub_231E76444()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  sub_2320EDFA0();
  sub_231E76C78(&qword_280D93700, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2320EE050();
  sub_231E76C78(&qword_280D93708, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2320EDFB0();
  v4 = *(v3 + 8);
  v0[12] = v4;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_231E765C0;
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008C8](v6);
}

uint64_t sub_231E765C0()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_77_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_77_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E7675C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231E767C0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_231E7681C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
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

uint64_t sub_231E768C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_33_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231E76920()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_65_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_50_0(v3);

  return sub_231E739A8(v1);
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231E76AF4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_65_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_50_0(v3);

  return sub_231E71850(v1);
}

uint64_t sub_231E76B80()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_28_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231E76C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1, double a2)
{

  return sub_2320ED5E0();
}

void OUTLINED_FUNCTION_24_0()
{

  JUMPOUT(0x2383814F0);
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x2383814F0);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_37_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_38_0@<X0>(uint64_t a1@<X8>)
{
  v1[36] = a1;
  v1[37] = v2;
  v1[38] = 0;
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x2383814F0);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_0()
{
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  *(v0 + 120) = v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_61_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_62_0@<X0>(uint64_t a1@<X8>)
{
  v1[27] = a1;
  v1[28] = v2;
  v1[29] = 0;
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_2320ED680();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_task_alloc();
}

id sub_231E77324(uint64_t a1)
{
  v128 = sub_2320EDC60();
  OUTLINED_FUNCTION_13();
  v118 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v126 = v4;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_58();
  v122 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D330, &qword_2321067A8);
  v8 = OUTLINED_FUNCTION_100(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v119 = v9;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v120 = v11;
  sub_2320EDD10();
  OUTLINED_FUNCTION_13();
  v116 = v13;
  v117 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41_0();
  v16 = v15 - v14;
  sub_2320EDBB0();
  OUTLINED_FUNCTION_13();
  v124 = v18;
  v125 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v121 = v19;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v20);
  v22 = v104 - v21;
  v127 = sub_2320EDD40();
  OUTLINED_FUNCTION_13();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41_0();
  v28 = (v27 - v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v30 = OUTLINED_FUNCTION_100(v29);
  MEMORY[0x28223BE20](v30);
  v32 = v104 - v31;
  v33 = sub_2320ED5F0();
  OUTLINED_FUNCTION_13();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41_0();
  v39 = v38 - v37;
  sub_2320EDAD0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_231E78DE8(v32, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78(&qword_280D93948);
    }

    v40 = v127;
    v41 = __swift_project_value_buffer(v127, qword_280D9DA90);
    v42 = v28;
    (*(v24 + 16))(v28, v41, v40);
    v43 = v124;
    v44 = v125;
    v45 = *(v124 + 16);
    v45(v22, a1, v125);
    v128 = v42;
    v46 = sub_2320EDD20();
    v47 = sub_2320EDE80();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v129 = v126;
      *v48 = 136315138;
      LODWORD(v122) = v47;
      v49 = v125;
      v45(v121, v22, v125);
      v50 = sub_2320EDDC0();
      v52 = v51;
      v123 = a1;
      v53 = *(v43 + 8);
      v53(v22, v49);
      v54 = sub_231E83810(v50, v52, &v129);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_231E60000, v46, v122, "SGPipelineEntity+TUImporter: failed to initialize SGPipelineEntity, %s is missing relevanceDate", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v53(v123, v49);
      (*(v24 + 8))(v128, v127);
    }

    else
    {

      v59 = *(v43 + 8);
      v59(a1, v44);
      v59(v22, v44);
      (*(v24 + 8))(v128, v40);
    }

    return 0;
  }

  else
  {
    v55 = *(v35 + 32);
    v121 = v39;
    v55(v39, v32, v33);
    sub_2320EDBA0();
    v56 = v33;
    v58 = v118;
    if (v57)
    {
      v113 = sub_2320EDDA0();
    }

    else
    {
      v113 = 0;
    }

    v61 = v128;
    v62 = v126;
    sub_2320EDAA0();
    sub_2320EDD00();
    (*(v116 + 8))(v16, v117);
    v117 = sub_2320EDDA0();

    sub_2320EDAC0();
    if (v63)
    {
      v116 = sub_2320EDDA0();
    }

    else
    {
      v116 = 0;
    }

    sub_2320EDB10();
    v112 = sub_2320EDE10();

    v64 = sub_2320EDA90();
    OUTLINED_FUNCTION_8_1(v64, v65);
    v111 = sub_2320EDDA0();

    sub_2320EDB50();
    if (v66)
    {
      v110 = sub_2320EDDA0();
    }

    else
    {
      v110 = 0;
    }

    v67 = sub_2320EDB90();
    OUTLINED_FUNCTION_8_1(v67, v68);
    v109 = sub_2320EDDA0();

    sub_2320EDB80();
    if (v69)
    {
      v108 = sub_2320EDDA0();
    }

    else
    {
      v108 = 0;
    }

    v70 = v58;
    v118 = sub_2320ED5B0();
    v71 = sub_2320EDB60();
    v72 = v120;
    sub_231E77DF0(v71, v120);

    v73 = v119;
    sub_231E78D78(v72, v119);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v61);
    v75 = v122;
    if (EnumTagSinglePayload == 1)
    {
      v119 = 0;
    }

    else
    {
      (*(v70 + 4))(v122, v73, v61);
      sub_231E78E48();
      (*(v70 + 2))(v62, v75, v61);
      v119 = sub_231E67FF8(v62);
      (*(v70 + 1))(v75, v61);
    }

    sub_231E78DE8(v72, &qword_27DD8D330, &qword_2321067A8);
    v76 = sub_2320EDB70();
    OUTLINED_FUNCTION_8_1(v76, v77);
    v120 = sub_2320EDDA0();

    v78 = sub_2320EDAB0();
    v107 = sub_2320EDB30();
    v106 = sub_2320EDAF0();
    v79 = sub_2320EDB00();
    v80 = *(v79 + 16);
    v123 = a1;
    v114 = v35;
    v115 = v56;
    if (v80)
    {
      v105 = v78;
      v129 = MEMORY[0x277D84F90];
      sub_2320EDF60();
      v127 = sub_231E78E48();
      v83 = *(v70 + 2);
      v81 = v70 + 16;
      v82 = v83;
      v84 = (v81[64] + 32) & ~v81[64];
      v104[1] = v79;
      v85 = v79 + v84;
      v126 = *(v81 + 7);
      v86 = v122;
      do
      {
        v82(v86, v85, v61);
        v82(v62, v86, v61);
        sub_231E67FF8(v62);
        (*(v81 - 1))(v86, v61);
        sub_2320EDF40();
        sub_2320EDF70();
        v61 = v128;
        sub_2320EDF80();
        sub_2320EDF50();
        v85 += v126;
        --v80;
      }

      while (v80);

      LOBYTE(v78) = v105;
    }

    else
    {
    }

    v87 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_231E78E48();
    v88 = sub_2320EDE10();
    v127 = v88;

    sub_2320EDAE0();
    v89 = sub_2320EDE10();
    v128 = v89;

    v102 = v88;
    v103 = v89;
    BYTE2(v101) = v106 & 1;
    BYTE1(v101) = v107 & 1;
    LOBYTE(v101) = v78 & 1;
    v90 = v119;
    v91 = v108;
    v92 = v109;
    v93 = v87;
    v95 = v112;
    v94 = v113;
    v97 = v116;
    v96 = v117;
    v98 = v110;
    v99 = v111;
    v60 = [v93 initWithMessageId:v113 uniqueIdentifier:v117 appleMailMessageId:v116 mailboxIdentifiers:v112 accountType:v111 mailingList:v110 source:v109 subject:v108 date:v118 author:v119 textContentSnippet:v120 isSent:v101 isPartiallyDownloaded:v102 hasInhumanHeaders:v103 primaryRecipients:? accountHandles:?];

    (*(v124 + 8))(v123, v125);
    (*(v114 + 8))(v121, v115);
  }

  return v60;
}

uint64_t sub_231E77DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2320EDC60();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

id sub_231E77E98(uint64_t a1)
{
  v103 = sub_2320EDC60();
  OUTLINED_FUNCTION_13();
  v97 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v95 = v4;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_58();
  v96 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D330, &qword_2321067A8);
  v8 = OUTLINED_FUNCTION_100(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v101 = v9;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v106 = v11;
  sub_2320EDD10();
  OUTLINED_FUNCTION_13();
  v98 = v13;
  v99 = v12;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v92 - v17;
  sub_2320EDBB0();
  OUTLINED_FUNCTION_13();
  v107 = v20;
  v108 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v94 = v21;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v92 - v23;
  v105 = sub_2320EDD40();
  OUTLINED_FUNCTION_13();
  v100 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41_0();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v31 = OUTLINED_FUNCTION_100(v30);
  MEMORY[0x28223BE20](v31);
  v33 = &v92 - v32;
  v34 = sub_2320ED5F0();
  OUTLINED_FUNCTION_13();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_41_0();
  v40 = v39 - v38;
  sub_2320EDAD0();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_231E78DE8(v33, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78(&qword_280D93948);
    }

    v41 = v105;
    v42 = __swift_project_value_buffer(v105, qword_280D9DA90);
    v43 = v100;
    (*(v100 + 16))(v29, v42, v41);
    v44 = v107;
    v45 = *(v107 + 16);
    v46 = a1;
    v47 = a1;
    v48 = v108;
    v45(v24, v47, v108);
    v49 = sub_2320EDD20();
    v50 = sub_2320EDE80();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v106 = v46;
      v104 = v52;
      v109 = v52;
      *v51 = 136315138;
      v45(v94, v24, v48);
      v53 = sub_2320EDDC0();
      v54 = v48;
      v55 = v53;
      v57 = v56;
      v58 = *(v107 + 8);
      v58(v24, v54);
      v59 = sub_231E83810(v55, v57, &v109);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_231E60000, v49, v50, "SGPipelineEntity+TUImporter: failed to initialize SGPipelineEntity, %s is missing relevanceDate", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v58(v106, v108);
    }

    else
    {

      v68 = *(v44 + 8);
      v68(v46, v48);
      v68(v24, v48);
    }

    (*(v43 + 8))(v29, v105);
    return 0;
  }

  else
  {
    v60 = *(v36 + 32);
    v105 = v34;
    v60(v40, v33, v34);
    sub_2320EDAA0();
    sub_2320EDD00();
    v61 = *(v98 + 8);
    v62 = v18;
    v63 = v99;
    v61(v62, v99);
    v100 = sub_2320EDDA0();

    sub_2320EDAA0();
    sub_2320EDCF0();
    v61(v16, v63);
    v64 = sub_2320EDDA0();

    sub_2320EDB80();
    v65 = a1;
    v93 = v36;
    v102 = v40;
    if (v66)
    {
      v67 = sub_2320EDDA0();
    }

    else
    {
      v67 = 0;
    }

    v70 = sub_2320EDB70();
    OUTLINED_FUNCTION_8_1(v70, v71);
    v72 = sub_2320EDDA0();

    v73 = sub_2320ED5B0();
    v74 = sub_2320EDB60();
    v75 = v106;
    sub_231E77DF0(v74, v106);

    v76 = v101;
    sub_231E78D78(v75, v101);
    v77 = v103;
    v78 = 0;
    if (__swift_getEnumTagSinglePayload(v76, 1, v103) != 1)
    {
      v80 = v96;
      v79 = v97;
      (*(v97 + 32))(v96, v76, v77);
      sub_231E78E48();
      v81 = v95;
      (*(v79 + 16))(v95, v80, v77);
      v78 = sub_231E67FF8(v81);
      (*(v79 + 8))(v80, v77);
    }

    sub_231E78DE8(v106, &qword_27DD8D330, &qword_2321067A8);
    sub_2320EDB20();
    if (v82)
    {
      v83 = sub_2320EDDA0();
    }

    else
    {
      v83 = 0;
    }

    sub_2320EDB40();
    v85 = v65;
    if (v84)
    {
      v86 = sub_2320EDDA0();
    }

    else
    {
      v86 = 0;
    }

    v87 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    LOBYTE(v91) = sub_2320EDAB0() & 1;
    v88 = v87;
    v89 = v100;
    v69 = [v88 initWithUniqueIdentifier:v100 source:v64 subject:v67 textContent:v72 date:v73 author:v78 authorNickname:v83 authorPhotoPath:v86 isSent:v91];

    (*(v107 + 8))(v85, v108);
    (*(v93 + 8))(v102, v105);
  }

  return v69;
}

id sub_231E78728(char *a1)
{
  sub_2320EDD10();
  OUTLINED_FUNCTION_13();
  v64 = v3;
  v65 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  sub_2320EDBB0();
  OUTLINED_FUNCTION_13();
  v69 = v9;
  v70 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v63 = v11;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v68 = sub_2320EDD40();
  OUTLINED_FUNCTION_13();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41_0();
  v67 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v21 = OUTLINED_FUNCTION_100(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v24 = sub_2320ED5F0();
  OUTLINED_FUNCTION_13();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_41_0();
  v30 = v29 - v28;
  sub_2320EDAD0();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_231E78DE8(v23, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78(&qword_280D93948);
    }

    v31 = v68;
    v32 = __swift_project_value_buffer(v68, qword_280D9DA90);
    v33 = v67;
    (*(v16 + 16))(v67, v32, v31);
    v35 = v69;
    v34 = v70;
    v36 = *(v70 + 16);
    v66 = a1;
    v36(v14, a1, v69);
    v37 = sub_2320EDD20();
    v38 = sub_2320EDE80();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71 = v40;
      *v39 = 136315138;
      v36(v63, v14, v35);
      v41 = sub_2320EDDC0();
      v42 = v35;
      v44 = v43;
      v45 = *(v70 + 8);
      v46 = v14;
      v47 = v42;
      v45(v46, v42);
      v48 = sub_231E83810(v41, v44, &v71);

      *(v39 + 4) = v48;
      _os_log_impl(&dword_231E60000, v37, v38, "SGPipelineEntity+TUImporter: failed to initialize SGPipelineEntity, %s is missing relevanceDate", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v45(v66, v47);
      (*(v16 + 8))(v67, v68);
    }

    else
    {

      v55 = *(v34 + 8);
      v55(v66, v35);
      v55(v14, v35);
      (*(v16 + 8))(v33, v31);
    }

    return 0;
  }

  else
  {
    (*(v26 + 32))(v30, v23, v24);
    sub_2320EDAA0();
    sub_2320EDD00();
    v68 = v26;
    v49 = v65;
    v50 = *(v64 + 8);
    v50(v8, v65);
    v51 = sub_2320EDDA0();

    sub_2320EDAA0();
    sub_2320EDCF0();
    v50(v6, v49);
    v52 = sub_2320EDDA0();

    sub_2320EDB80();
    if (v53)
    {
      v54 = sub_2320EDDA0();
    }

    else
    {
      v54 = 0;
    }

    sub_2320EDB70();
    v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v58 = sub_2320EDDA0();

    v59 = sub_2320ED5B0();
    LOBYTE(v61) = 0;
    v56 = [v57 initWithUniqueIdentifier:v51 source:v52 subject:v54 textContent:v58 date:v59 author:0 authorNickname:0 authorPhotoPath:0 isSent:v61];

    (*(v70 + 8))(a1, v69);
    (*(v68 + 8))(v30, v24);
  }

  return v56;
}

uint64_t sub_231E78D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D330, &qword_2321067A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231E78DE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_231E78E48()
{
  result = qword_280D93710;
  if (!qword_280D93710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D93710);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_231E78ECC(void *a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B8, &qword_232106490);
  v7 = OUTLINED_FUNCTION_100(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33(&v254 - v8);
  v273 = sub_2320ED550();
  OUTLINED_FUNCTION_13();
  v260 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_33(v12 - v11);
  v271 = sub_2320EDA20();
  OUTLINED_FUNCTION_13();
  v270 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_33(v16 - v15);
  v280 = sub_2320EDA70();
  OUTLINED_FUNCTION_13();
  v277 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v23);
  v24 = sub_2320EDD40();
  OUTLINED_FUNCTION_13();
  v286 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_21_1();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v254 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v32);
  v284 = sub_2320ED630();
  OUTLINED_FUNCTION_13();
  v264 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  v265 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v38 = OUTLINED_FUNCTION_100(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v40);
  sub_2320ED5F0();
  OUTLINED_FUNCTION_13();
  v281 = v42;
  v282 = v41;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_58();
  v279 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D338, &qword_2321067D0);
  v48 = OUTLINED_FUNCTION_100(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25();
  v285 = v51;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  v283 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A8, &qword_232106488);
  v56 = OUTLINED_FUNCTION_100(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_1();
  v59 = v57 - v58;
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v254 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v254 - v64;
  v292 = MEMORY[0x277D84F90];
  v287 = v4;
  v66 = sub_231E7AA68(v4);
  if (!v67)
  {
    if (qword_280D93948 != -1)
    {
      goto LABEL_159;
    }

    goto LABEL_10;
  }

  v68 = v67;
  v258 = v66;
  v69 = [a1 duplicateKey];
  if (!v69)
  {

    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78(&qword_280D93948);
    }

    OUTLINED_FUNCTION_47_1(v24, qword_280D9DA90);
    v95 = v286;
    (*(v286 + 16))(v30);
    v96 = sub_2320EDD20();
    v97 = sub_2320EDE80();
    if (OUTLINED_FUNCTION_53_1(v97))
    {
      v98 = OUTLINED_FUNCTION_48_0();
      *v98 = 0;
      _os_log_impl(&dword_231E60000, v96, v97, "SGTextUnderstandingImporter: no dup key.", v98, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    (*(v95 + 8))(v30, v24);
    return MEMORY[0x277D84F90];
  }

  v70 = a1;
  v257 = v69;
  v278 = v24;
  v71 = [a1 duplicateKey];
  if (v71 && (v72 = v71, v73 = [v71 entityKey], v72, v73))
  {
    objc_opt_self();
    v74 = swift_dynamicCastObjCClass();
    if (v74 && (v75 = v74, v76 = sub_231E7E91C(a1, &selRef_sourceKey), v77))
    {
      v78 = v76;
      v79 = v77;
      v255 = v70;
      result = sub_231E7E91C(v75, &selRef_messageId);
      if (!v81)
      {
        __break(1u);
        return result;
      }

      v288 = sub_231E7B2E0(v78, v79, result, v81);
      v256 = 0;

      v70 = v255;
    }

    else
    {
      v256 = 0;
      v288 = MEMORY[0x277D84F90];
    }

    a1 = v70;
    swift_unknownObjectRelease();
  }

  else
  {
    v256 = 0;
    v288 = MEMORY[0x277D84F90];
  }

  v100 = v283;
  sub_2320ED7D0();
  v101 = sub_2320ED8C0();
  v102 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_42(v102, v103, v101);
  if (v201)
  {
    sub_231E6F05C(v65, &qword_27DD8D2A8, &qword_232106488);
    v105 = 0;
  }

  else
  {
    sub_2320ED880();
    v105 = v104;
    OUTLINED_FUNCTION_101();
    (*(v106 + 8))(v65, v101);
  }

  v107 = OUTLINED_FUNCTION_51();
  __swift_storeEnumTagSinglePayload(v107, v108, 1, v284);
  if (v105)
  {
    sub_2320ED600();

    sub_231E6F05C(v100, &qword_27DD8D338, &qword_2321067D0);
    sub_231E7E8AC(v3, v100);
  }

  sub_2320ED7C0();
  OUTLINED_FUNCTION_42(v63, 1, v101);
  if (v201)
  {
    sub_231E6F05C(v63, &qword_27DD8D2A8, &qword_232106488);
    v109 = v285;
  }

  else
  {
    sub_2320ED880();
    v111 = v110;
    OUTLINED_FUNCTION_101();
    (*(v112 + 8))(v63, v101);
    v109 = v285;
    if (v111)
    {
      v113 = v284;
      goto LABEL_36;
    }
  }

  sub_2320ED7D0();
  OUTLINED_FUNCTION_42(v59, 1, v101);
  v113 = v284;
  if (v201)
  {
    sub_231E6F05C(v59, &qword_27DD8D2A8, &qword_232106488);
    v111 = 0;
  }

  else
  {
    sub_2320ED880();
    v111 = v114;
    OUTLINED_FUNCTION_101();
    (*(v115 + 8))(v59, v101);
  }

LABEL_36:
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v113);
  if (v111)
  {
    sub_2320ED600();

    sub_231E6F05C(v109, &qword_27DD8D338, &qword_2321067D0);
    sub_231E7E8AC(v3, v109);
  }

  sub_231E7E9D8(0, &qword_27DD8D340, off_278948A98);
  v116 = v257;
  v117 = v258;
  v258 = v116;
  v118 = sub_231E7C1DC(v117, v68, v116);
  v119 = v287;
  v120 = sub_2320ED820();
  if (v121)
  {
    v122 = v120;
  }

  else
  {
    v122 = 0x454C5449545F4F4ELL;
  }

  if (v121)
  {
    v123 = v121;
  }

  else
  {
    v123 = 0xE800000000000000;
  }

  objc_allocWithZone(SGPipelineEnrichment);
  v124 = a1;
  v257 = v118;
  v125 = sub_231E7DB80(v257, v122, v123, a1);
  sub_2320ED810();
  if (v126)
  {
    v127 = sub_2320EDDA0();
  }

  else
  {
    v127 = 0;
  }

  v128 = v282;
  v129 = v274;
  [v125 setContent_];

  v130 = [objc_opt_self() recordIdWithNumericValue_];
  [v125 setRecordId_];

  v131 = &selRef_bytes;
  [v124 creationTimestamp];
  [v125 setCreationTimestamp_];
  v274 = v124;
  [v124 lastModifiedTimestamp];
  [v125 setLastModifiedTimestamp_];
  sub_2320EDA60();
  OUTLINED_FUNCTION_30_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v132, v133, v134);
  v136 = &selRef__registerProcessPendingGeocodesActivity;
  v284 = v125;
  if (EnumTagSinglePayload != 1)
  {
    v137 = v281;
    v138 = v281[4];
    v139 = v279;
    v138(v279, v129, v128);
    v140 = v128;
    v141 = v137[2];
    v141(v275, v139, v140);
    v142 = v261;
    sub_231E7E83C(v100, v261);
    OUTLINED_FUNCTION_19_1();
    if (v201)
    {
      v143 = v265;
      sub_2320ED620();
      OUTLINED_FUNCTION_19_1();
      v144 = v263;
      if (!v201)
      {
        sub_231E6F05C(v142, &qword_27DD8D338, &qword_2321067D0);
      }
    }

    else
    {
      v143 = v265;
      (*(v264 + 32))(v265, v142, v113);
      v144 = v263;
    }

    sub_2320ED840();
    v145 = v282;
    if (__swift_getEnumTagSinglePayload(v144, 1, v282) == 1)
    {
      v141(v276, v279, v145);
      OUTLINED_FUNCTION_42(v144, 1, v145);
      v125 = v284;
      v128 = v145;
      v146 = v267;
      v147 = v266;
      if (!v201)
      {
        sub_231E6F05C(v144, &qword_27DD8D2B0, &qword_232106810);
      }
    }

    else
    {
      v138(v276, v144, v145);
      v125 = v284;
      v128 = v145;
      v146 = v267;
      v147 = v266;
    }

    v148 = v262;
    sub_231E7E83C(v285, v262);
    OUTLINED_FUNCTION_19_1();
    v136 = &selRef__registerProcessPendingGeocodesActivity;
    if (v201)
    {
      sub_2320ED620();
      OUTLINED_FUNCTION_19_1();
      v149 = v268;
      if (!v201)
      {
        sub_231E6F05C(v148, &qword_27DD8D338, &qword_2321067D0);
      }
    }

    else
    {
      (*(v264 + 32))(v147, v148, v113);
      v149 = v268;
    }

    sub_231E7E9D8(0, &qword_27DD8D360, 0x277D020E8);
    v150 = sub_231E7C24C(v275, v143, v276, v147);
    [v125 setTimeRange_];
    v151 = sub_2320EDA40();
    v152 = v278;
    v153 = v286;
    if (v151)
    {
      v131 = &selRef_bytes;
      if ([v150 isValidAllDayRange])
      {
        v154 = [objc_opt_self() allDay];
        OUTLINED_FUNCTION_16_1(v154);

        v155 = OUTLINED_FUNCTION_36_1();
        v156(v155);
        goto LABEL_72;
      }

      if (qword_280D93948 != -1)
      {
        OUTLINED_FUNCTION_78(&qword_280D93948);
      }

      OUTLINED_FUNCTION_47_1(v152, qword_280D9DA90);
      (*(v153 + 16))(v149);
      v159 = v277;
      v160 = v146;
      v161 = v146;
      v162 = v280;
      (*(v277 + 16))(v160, v119, v280);
      v163 = v149;
      v164 = sub_2320EDD20();
      v165 = sub_2320EDE80();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = OUTLINED_FUNCTION_75_0();
        v276 = OUTLINED_FUNCTION_51_1();
        *&v291 = v276;
        *v166 = 136315138;
        v167 = sub_2320EDA30();
        v169 = v168;
        (*(v159 + 8))(v161, v162);
        v170 = sub_231E83810(v167, v169, &v291);
        v119 = v287;

        *(v166 + 4) = v170;
        _os_log_impl(&dword_231E60000, v164, v165, "SGTextUnderstandingImporter: invalid time range for an all day '%s' event", v166, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v276);
        OUTLINED_FUNCTION_45_0();
        v136 = &selRef__registerProcessPendingGeocodesActivity;
        OUTLINED_FUNCTION_45_0();

        (*(v286 + 8))(v268, v278);
      }

      else
      {

        (*(v159 + 8))(v161, v162);
        (*(v286 + 8))(v163, v278);
      }

      v128 = v282;
      v171 = OUTLINED_FUNCTION_36_1();
      v172(v171);
    }

    else
    {
      v157 = OUTLINED_FUNCTION_36_1();
      v158(v157);
    }

    v131 = &selRef_bytes;
    goto LABEL_72;
  }

  sub_231E6F05C(v129, &qword_27DD8D2B0, &qword_232106810);
LABEL_72:
  v173 = sub_2320ED7B0();
  v174 = ((v173 == 2) | v173);
  v175 = objc_opt_self();
  OUTLINED_FUNCTION_16_1([v175 eventCompleteness_]);

  sub_2320ED7E0();
  if (v176)
  {
    v177 = sub_2320EDDA0();

    v178 = [v175 extraKey_];

    [v125 v136[249]];
  }

  if (sub_231E7C3B0() == 3)
  {
    OUTLINED_FUNCTION_16_1([v175 extractedEventCancellation]);
  }

  [v274 v131[317]];
  v180 = SGUnixTimestampToDate(v179);
  if (v180)
  {
    v181 = v180;
    OUTLINED_FUNCTION_45();
    sub_2320ED5D0();

    sub_2320ED5C0();
    if (v182 <= -604800.0)
    {
      OUTLINED_FUNCTION_16_1([v175 eventExtractedFromOldDocument]);
    }

    (v281[1])(v174, v128);
  }

  v282 = v175;
  v281 = [v125 locations];

  v183 = v288;
  v24 = sub_231E84864();
  v184 = 0;
  v21 = v183 & 0xC000000000000001;
  v185 = MEMORY[0x277D84F90];
  v186 = v183 & 0xFFFFFFFFFFFFFF8;
  v1 = &selRef_bytes;
  while (1)
  {
    if (v24 == v184)
    {

      v195 = sub_2320EDE10();

      v196 = v281;
      [v281 addObjectsFromArray_];

      v197 = v269;
      sub_2320EDA50();
      sub_2320ED920();
      OUTLINED_FUNCTION_43_1();
      (*(v270 + 8))(v197, v271);
      v198 = v286;
      if (v185 >> 60 == 15)
      {
        goto LABEL_106;
      }

      v199 = sub_2320EDA30();
      v201 = v199 == 0x6361747441736369 && v200 == 0xED0000746E656D68;
      if (v201)
      {

        v203 = v282;
      }

      else
      {
        v202 = OUTLINED_FUNCTION_14_1(v199, v200);

        v203 = v282;
        if ((v202 & 1) == 0)
        {
LABEL_105:
          sub_231E7E7D0(v195, v185);
LABEL_106:
          OUTLINED_FUNCTION_45();
          sub_2320ED800();
          v206 = OUTLINED_FUNCTION_51();
          v207 = v273;
          OUTLINED_FUNCTION_42(v206, v208, v273);
          v209 = v285;
          v210 = v272;
          if (v201)
          {
            sub_231E6F05C(v195, &qword_27DD8D2B8, &qword_232106490);
          }

          else
          {
            v211 = v260;
            v212 = v259;
            (*(v260 + 32))(v259, v195, v207);
            v213 = sub_2320ED540();
            v214 = [v282 url_];

            [v284 addTag_];
            (*(v211 + 8))(v212, v207);
          }

          v215 = sub_231E68114();
          if (v215)
          {
            v216 = v215;
            if (qword_280D93948 != -1)
            {
              OUTLINED_FUNCTION_78(&qword_280D93948);
            }

            OUTLINED_FUNCTION_47_1(v278, qword_280D9DA90);
            (*(v198 + 16))(v210);
            v217 = sub_2320EDD20();
            v218 = sub_2320EDEA0();
            if (os_log_type_enabled(v217, v218))
            {
              v219 = OUTLINED_FUNCTION_48_0();
              *v219 = 0;
              _os_log_impl(&dword_231E60000, v217, v218, "SGTextUnderstandingImporter: successfully created schema for the event", v219, 2u);
              OUTLINED_FUNCTION_45_0();
            }

            (*(v198 + 8))(v210, v278);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D350, &qword_2321067D8);
            v220 = swift_allocObject();
            *(v220 + 16) = xmmword_232106460;
            v221 = sub_231E7C82C(v216);

            *(v220 + 32) = v221;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D358, &qword_2321067E0);
            v222 = sub_2320EDE10();

            v223 = [v282 schemaOrg_];

            if (v223)
            {
              [v284 addTag_];
            }
          }

          v224 = sub_231E7CAF0();
          if (v224)
          {
            v225 = v224;
            v226 = OUTLINED_FUNCTION_48_1();
            [v226 v227];
          }

          v228 = v274;
          v229 = sub_231E7E70C(v274);
          if (v229)
          {
            v1 = v229;
            v230 = sub_231E7E77C(v228, &selRef_accountHandles, MEMORY[0x277D837D0]);
            if (v230)
            {
              v231 = v230;
              v232 = sub_231E84864();
              if (v232 && *(v231 + 16))
              {
                v233 = v232;
                v288 = v231;
                v24 = 0;
                v21 = v1 & 0xC000000000000001;
                v234 = MEMORY[0x277D84F90];
                while (v233 != v24)
                {
                  if (v21)
                  {
                    v235 = MEMORY[0x23837ECF0](v24, v1);
                  }

                  else
                  {
                    if (v24 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_154;
                    }

                    v235 = v1[v24 + 4];
                  }

                  v236 = v235;
                  if (__OFADD__(v24, 1))
                  {
                    goto LABEL_153;
                  }

                  v237 = [v235 handles];
                  v238 = sub_2320EDE20();

                  v239 = *(v238 + 16);
                  v240 = *(v234 + 16);
                  v241 = v240 + v239;
                  if (__OFADD__(v240, v239))
                  {
                    goto LABEL_155;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v241 > *(v234 + 24) >> 1)
                  {
                    if (v240 <= v241)
                    {
                      v243 = v240 + v239;
                    }

                    else
                    {
                      v243 = v240;
                    }

                    sub_231E831F0(isUniquelyReferenced_nonNull_native, v243, 1, v234);
                    v234 = v244;
                  }

                  if (*(v238 + 16))
                  {
                    if ((*(v234 + 24) >> 1) - *(v234 + 16) < v239)
                    {
                      goto LABEL_157;
                    }

                    swift_arrayInitWithCopy();

                    if (v239)
                    {
                      v245 = *(v234 + 16);
                      v246 = __OFADD__(v245, v239);
                      v247 = v245 + v239;
                      if (v246)
                      {
                        goto LABEL_158;
                      }

                      *(v234 + 16) = v247;
                    }
                  }

                  else
                  {

                    if (v239)
                    {
                      goto LABEL_156;
                    }
                  }

                  ++v24;
                }

                v248 = sub_231E7D410(v234);
                v249 = sub_231E7D410(v288);
                v250 = sub_231E7D4D0(v249, v248);

                v209 = v285;
                v229 = v282;
                if (v250)
                {
                  v251 = [v282 eventWithOnlyNonAccountPrimaryRecipients];
                  v252 = OUTLINED_FUNCTION_48_1();
                  [v252 v253];
                }

                goto LABEL_145;
              }
            }
          }

LABEL_145:
          MEMORY[0x23837EBD0](v229);
          if (*((v292 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v292 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2320EDE30();
          }

          sub_2320EDE40();
          v99 = v292;

          sub_231E6F05C(v209, &qword_27DD8D338, &qword_2321067D0);
          sub_231E6F05C(v283, &qword_27DD8D338, &qword_2321067D0);
          return v99;
        }
      }

      v204 = sub_2320ED560();
      v205 = [v203 icsAttachmentData_];

      if (v205)
      {
        [v284 addTag_];
      }

      goto LABEL_105;
    }

    if (v21)
    {
      v187 = MEMORY[0x23837ECF0](v184, v288);
    }

    else
    {
      if (v184 >= *(v186 + 16))
      {
        goto LABEL_152;
      }

      v187 = *(v288 + 8 * v184 + 32);
    }

    v188 = v187;
    if (__OFADD__(v184, 1))
    {
      break;
    }

    v189 = [v187 convertToStorageLocation];
    if (v189)
    {
      v190 = v189;
      v290 = sub_231E7E9D8(0, &qword_27DD8D348, off_278949178);

      *&v289 = v190;
      sub_231E6EBF4(&v289, &v291);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231E832E8(0, *(v185 + 16) + 1, 1, v185);
        v185 = v193;
      }

      v192 = *(v185 + 16);
      v191 = *(v185 + 24);
      if (v192 >= v191 >> 1)
      {
        sub_231E832E8(v191 > 1, v192 + 1, 1, v185);
        v185 = v194;
      }

      *(v185 + 16) = v192 + 1;
      sub_231E6EBF4(&v291, (v185 + 32 * v192 + 32));
    }

    else
    {
    }

    ++v184;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  OUTLINED_FUNCTION_78(&qword_280D93948);
LABEL_10:
  OUTLINED_FUNCTION_47_1(v24, qword_280D9DA90);
  v82 = v286;
  (*(v286 + 16))(v1);
  v83 = v277;
  v84 = v280;
  (*(v277 + 16))(v21, v287, v280);
  v85 = sub_2320EDD20();
  v86 = v24;
  v87 = sub_2320EDE80();
  if (os_log_type_enabled(v85, v87))
  {
    v88 = OUTLINED_FUNCTION_75_0();
    v89 = OUTLINED_FUNCTION_51_1();
    *&v291 = v89;
    *v88 = 136315138;
    v278 = v86;
    v90 = sub_2320EDA30();
    v91 = v82;
    v93 = v92;
    (*(v83 + 8))(v21, v280);
    v94 = sub_231E83810(v90, v93, &v291);

    *(v88 + 4) = v94;
    _os_log_impl(&dword_231E60000, v85, v87, "SGTextUnderstandingImporter: '%s' event missing group id", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_45_0();

    (*(v91 + 8))(v1, v278);
  }

  else
  {

    (*(v83 + 8))(v21, v84);
    (*(v82 + 8))(v1, v86);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231E7AA68(void *a1)
{
  v2 = sub_2320EDD40();
  v73 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v72 = &v67 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - v8;
  v10 = sub_2320EDA20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2320EDA30() == 0x6361747441736369 && v14 == 0xED0000746E656D68)
  {
  }

  else
  {
    v16 = sub_2320EE020();

    if ((v16 & 1) == 0)
    {
LABEL_6:
      v17 = sub_2320ED850();
      if (!v18)
      {
        return sub_2320ED7E0();
      }

      return v17;
    }
  }

  sub_2320EDA50();
  v20 = sub_2320ED920();
  v22 = v21;
  (*(v11 + 8))(v13, v10);
  if (v22 >> 60 == 15)
  {
LABEL_13:
    if (qword_280D93948 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v2, qword_280D9DA90);
    v26 = v73;
    (*(v73 + 16))(v5, v25, v2);
    v27 = sub_2320EDD20();
    v28 = sub_2320EDE80();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_231E60000, v27, v28, "SGTextUnderstandingImporter: icsAttachment event missing attachment data", v29, 2u);
      MEMORY[0x2383814F0](v29, -1, -1);
    }

    (*(v26 + 8))(v5, v2);
    return 0;
  }

  v23 = objc_allocWithZone(MEMORY[0x277D7F108]);
  sub_231E7EA18(v20, v22);
  v71 = v20;
  v24 = sub_231E7DA84(v20, v22, 0);
  v31 = v24;
  v32 = v71;
  if (!v24)
  {
LABEL_12:
    sub_231E7E7D0(v32, v22);
    goto LABEL_13;
  }

  v33 = [v24 calendar];
  if (!v33)
  {

    goto LABEL_12;
  }

  v34 = v33;
  v69 = sub_231E7E77C(v33, &selRef_componentKeys, MEMORY[0x277D84F70] + 8);
  if (!v69)
  {

    goto LABEL_12;
  }

  v68 = v34;
  v35 = sub_231E7E91C(v34, &selRef_calscale);
  v37 = v69;
  if (v36)
  {
    if (v35 == 0x4149524F47455247 && v36 == 0xE90000000000004ELL)
    {
    }

    else
    {
      v39 = sub_2320EE020();

      if ((v39 & 1) == 0)
      {
        a1 = v31;

        if (qword_280D93948 != -1)
        {
LABEL_66:
          swift_once();
        }

        v40 = __swift_project_value_buffer(v2, qword_280D9DA90);
        v41 = v73;
        (*(v73 + 16))(v9, v40, v2);
        v42 = sub_2320EDD20();
        v43 = sub_2320EDE80();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_231E60000, v42, v43, "SGTextUnderstandingImporter: Ignore non-Gregorian calendars for calendar attachment", v44, 2u);
          MEMORY[0x2383814F0](v44, -1, -1);

          sub_231E7E7D0(v71, v22);
        }

        else
        {
          sub_231E7E7D0(v71, v22);
        }

        (*(v41 + 8))(v9, v2);
        return 0;
      }
    }
  }

  v67 = v31;
  v45 = v68;
  if (!*(v37 + 16))
  {
LABEL_54:

    sub_231E7E7D0(v71, v22);
    goto LABEL_6;
  }

  v46 = *(v37 + 16);
  v47 = 0;
  v48 = v37 + 32;
  while (1)
  {
    if (v47 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    sub_231E7E97C(v48, v76);
    if (swift_dynamicCast())
    {
      v9 = sub_231E7E6BC(v74, v75, v45);

      if (v9)
      {
        break;
      }
    }

LABEL_53:
    ++v47;
    v48 += 32;
    if (v46 == v47)
    {
      goto LABEL_54;
    }
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {

    goto LABEL_53;
  }

  v49 = sub_2320ED820();
  if (!v50)
  {

    v37 = v69;
    goto LABEL_53;
  }

  v51 = v49;
  v52 = v50;
  v53 = sub_231E7E91C(v70, &selRef_summary);
  if (!v54)
  {

LABEL_52:
    v45 = v68;
    v37 = v69;
    goto LABEL_53;
  }

  if (v53 != v51 || v54 != v52)
  {
    v56 = sub_2320EE020();

    if (v56)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_58:
  v57 = v68;

  v59 = v72;
  v58 = v73;
  if (qword_280D93948 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v2, qword_280D9DA90);
  (*(v58 + 16))(v59, v60, v2);
  v61 = sub_2320EDD20();
  v62 = sub_2320EDEA0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_231E60000, v61, v62, "SGTextUnderstandingImporter: successfully synthesized identifier from icsData", v63, 2u);
    v64 = v63;
    v57 = v68;
    MEMORY[0x2383814F0](v64, -1, -1);
  }

  (*(v58 + 8))(v59, v2);
  v65 = [v70 uid];
  if (v65)
  {
    v66 = v65;
    v19 = sub_2320EDDB0();
    sub_231E7E7D0(v71, v22);

    return v19;
  }

  sub_231E7E7D0(v71, v22);

  return 0;
}

unint64_t sub_231E7B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v233 = a3;
  v234 = a4;
  v231 = a1;
  v232 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A0, &qword_232106480);
  v10 = OUTLINED_FUNCTION_100(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v230 = v11;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = v219 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A8, &qword_232106488);
  v16 = OUTLINED_FUNCTION_100(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25();
  v220 = v21;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25();
  v223 = v24;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25();
  v227 = v26;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25();
  v225 = v28;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25();
  v228 = v30;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44_1();
  v237 = sub_2320ED8C0();
  OUTLINED_FUNCTION_13();
  v235 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25();
  v221 = v41;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25();
  v222 = v43;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25();
  v226 = v45;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25();
  v224 = v47;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_21_1();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = v219 - v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25();
  v229 = v53;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v54);
  v56 = v219 - v55;
  v241 = MEMORY[0x277D84F90];
  v236 = v5;
  v58 = sub_2320EDA30();
  v59 = v57;
  v60 = v58 == 0x746867696C66 && v57 == 0xE600000000000000;
  if (v60 || (OUTLINED_FUNCTION_12_1(0x746867696C66, 0xE600000000000000) & 1) != 0)
  {

    sub_2320ED7D0();
    v61 = v237;
    OUTLINED_FUNCTION_42(v7, 1, v237);
    v52 = v235;
    if (v60)
    {
      sub_231E6F05C(v7, &qword_27DD8D2A8, &qword_232106488);
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      OUTLINED_FUNCTION_28_1();
      v62(v56, v7, v61);
      sub_2320ED8B0();
      v63 = sub_2320EDC20();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_42(v64, v65, v66);
      if (v67)
      {
        sub_231E6F05C(v14, &qword_27DD8D2A0, &qword_232106480);
        v61 = 0;
        v6 = 0;
      }

      else
      {
        sub_2320EDC10();
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_101();
        (*(v76 + 8))(v14, v63);
      }

      v77 = OUTLINED_FUNCTION_15_1();
      sub_231E7D6A8(v77, v78, v79, v80, 2, v61, v6);

      MEMORY[0x23837EBD0](v81);
      OUTLINED_FUNCTION_6_1();
      if (v112)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_38_1();
      v61 = v237;
      v82(v56, v237);
    }

    sub_2320ED7C0();
    OUTLINED_FUNCTION_17_0(v8);
    if (!v60)
    {
      OUTLINED_FUNCTION_28_1();
      v84 = v229;
      v85();
      v86 = v230;
      sub_2320ED8B0();
      v87 = sub_2320EDC20();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_42(v88, v89, v90);
      if (v91)
      {
        sub_231E6F05C(v86, &qword_27DD8D2A0, &qword_232106480);
        v61 = 0;
        v6 = 0;
      }

      else
      {
        sub_2320EDC10();
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_101();
        (*(v92 + 8))(v86, v87);
      }

      v93 = OUTLINED_FUNCTION_15_1();
      sub_231E7D6A8(v93, v94, v95, v96, 3, v61, v6);

      MEMORY[0x23837EBD0](v97);
      OUTLINED_FUNCTION_6_1();
      if (v112)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      v7 = v241;
      v98 = *(v52 + 1);
      v52 += 8;
      v98(v84, v237);
      goto LABEL_34;
    }

    v83 = v8;
    goto LABEL_27;
  }

  v68 = 0xD000000000000010;
  OUTLINED_FUNCTION_22_1();
  v70 = v58 == 0xD000000000000010 && v69 == v59;
  if (v70 || (OUTLINED_FUNCTION_12_1(0xD000000000000010, v69) & 1) != 0)
  {

    OUTLINED_FUNCTION_41_1(v71);
    v72 = OUTLINED_FUNCTION_60();
    v73 = v237;
    OUTLINED_FUNCTION_42(v72, v74, v237);
    if (!v60)
    {
      v104 = v235;
      (*(v235 + 4))(v52, v6, v73);
      v105 = OUTLINED_FUNCTION_2_1();
      sub_231E7D6A8(v105, v106, v107, v108, v109, v110, v111);
      OUTLINED_FUNCTION_40_1();
      OUTLINED_FUNCTION_6_1();
      if (v112)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      v7 = v241;
      (*(v104 + 1))(v52, v73);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_1();
  v114 = v58 == 0xD000000000000015 && v113 == v59;
  if (v114 || (OUTLINED_FUNCTION_12_1(0xD000000000000015, v113) & 1) != 0)
  {

    v6 = v228;
    OUTLINED_FUNCTION_41_1(v115);
    v116 = OUTLINED_FUNCTION_60();
    v52 = v237;
    OUTLINED_FUNCTION_42(v116, v117, v237);
    v118 = v235;
    if (!v60)
    {
      (*(v235 + 4))(v4, v6, v52);
      v119 = OUTLINED_FUNCTION_2_1();
      v6 = sub_231E7D6A8(v119, v120, v121, v122, v123, v124, v125);
      MEMORY[0x23837EBD0]();
      if (*(v241 + 16) >= *(v241 + 24) >> 1)
      {
        sub_2320EDE30();
      }

      sub_2320EDE40();
      v7 = v241;
      (*(v118 + 1))(v4, v52);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_1();
  v127 = v58 == 0xD000000000000011 && v126 == v59;
  v52 = v235;
  if (v127 || (OUTLINED_FUNCTION_12_1(0xD000000000000011, v126) & 1) != 0)
  {

    v6 = v225;
    OUTLINED_FUNCTION_41_1(v128);
    v129 = OUTLINED_FUNCTION_60();
    v58 = v237;
    OUTLINED_FUNCTION_42(v129, v130, v237);
    if (v60)
    {
      sub_231E6F05C(v6, &qword_27DD8D2A8, &qword_232106488);
      v7 = MEMORY[0x277D84F90];
      v68 = v226;
      goto LABEL_65;
    }

LABEL_63:
    OUTLINED_FUNCTION_28_1();
    v131 = v224;
    v132(v224, v6, v58);
    v133 = OUTLINED_FUNCTION_15_1();
    sub_231E7D6A8(v133, v134, v135, v136, 2, 0, 0);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_6_1();
    v68 = v226;
    if (!v112)
    {
LABEL_64:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_38_1();
      v137(v131, v58);
LABEL_65:
      v6 = v227;
      sub_2320ED7C0();
      v138 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_42(v138, v139, v58);
      if (!v60)
      {
        OUTLINED_FUNCTION_28_1();
        v140(v68, v6, v58);
        v141 = OUTLINED_FUNCTION_15_1();
        sub_231E7D6A8(v141, v142, v143, v144, 3, 0, 0);
LABEL_76:
        OUTLINED_FUNCTION_40_1();
        OUTLINED_FUNCTION_6_1();
        if (v112)
        {
          OUTLINED_FUNCTION_7_1();
        }

        OUTLINED_FUNCTION_35_0();
        v7 = v241;
        v156 = *(v52 + 1);
        v52 += 8;
        v156(v68, v58);
        goto LABEL_34;
      }

LABEL_67:
      v83 = v6;
LABEL_27:
      sub_231E6F05C(v83, &qword_27DD8D2A8, &qword_232106488);
      goto LABEL_34;
    }

LABEL_131:
    OUTLINED_FUNCTION_7_1();
    goto LABEL_64;
  }

  v145 = v58 == 2003789939 && v59 == 0xE400000000000000;
  v146 = v237;
  if (!v145 && (OUTLINED_FUNCTION_12_1(2003789939, 0xE400000000000000) & 1) == 0)
  {
    v157 = OUTLINED_FUNCTION_31_1();
    if (v58 == v157 && v59 == v158)
    {

      v131 = v221;
LABEL_86:
      v162 = v219[8];
      OUTLINED_FUNCTION_41_1(v161);
      OUTLINED_FUNCTION_17_0(v162);
      v68 = v219[9];
      if (v60)
      {
        sub_231E6F05C(v162, &qword_27DD8D2A8, &qword_232106488);
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_28_1();
        v163(v131, v162, v146);
        v164 = OUTLINED_FUNCTION_2_1();
        sub_231E7D6A8(v164, v165, v166, v167, v168, v169, v170);
        OUTLINED_FUNCTION_40_1();
        OUTLINED_FUNCTION_6_1();
        if (v171)
        {
          OUTLINED_FUNCTION_7_1();
        }

        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_38_1();
        v172(v131, v146);
      }

      v6 = v220;
      sub_2320ED7C0();
      OUTLINED_FUNCTION_17_0(v6);
      if (v60)
      {
        goto LABEL_67;
      }

      goto LABEL_74;
    }

    v160 = OUTLINED_FUNCTION_12_1(v157, 0xE90000000000006CLL);
    v131 = v221;
    if (v160)
    {

      goto LABEL_86;
    }

    v173 = OUTLINED_FUNCTION_27_1();
    v175 = v58 == v173 && v59 == v174;
    if (v175 || (OUTLINED_FUNCTION_12_1(v173, v174) & 1) != 0)
    {

      v6 = v219[7];
      OUTLINED_FUNCTION_41_1(v176);
      OUTLINED_FUNCTION_17_0(v6);
      if (!v60)
      {
        OUTLINED_FUNCTION_28_1();
        v68 = v219[5];
        goto LABEL_75;
      }

      goto LABEL_19;
    }

    v177 = v58 == 0x7974726170 && v59 == 0xE500000000000000;
    if (v177 || (OUTLINED_FUNCTION_12_1(0x7974726170, 0xE500000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_45();
      sub_2320ED7D0();
      v178 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_42(v178, v179, v237);
      if (!v60)
      {
        (*(v235 + 4))(v219[4], v219[6], v237);
        v181 = OUTLINED_FUNCTION_2_1();
        sub_231E7D6A8(v181, v182, v183, v184, v185, v186, v187);
        OUTLINED_FUNCTION_40_1();
        OUTLINED_FUNCTION_6_1();
        if (v188)
        {
          OUTLINED_FUNCTION_7_1();
        }

        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_37_1();
        v190 = &v244;
LABEL_113:
        v189(*(v190 - 32), v237);
        goto LABEL_34;
      }

      v180 = &v245;
    }

    else
    {
      v191 = OUTLINED_FUNCTION_23_1();
      v193 = v58 == v191 && v59 == v192;
      if (v193 || (OUTLINED_FUNCTION_12_1(v191, v192) & 1) != 0)
      {

        OUTLINED_FUNCTION_45();
        sub_2320ED7D0();
        v194 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_42(v194, v195, v237);
        if (!v60)
        {
          (*(v235 + 4))(v219[2], v219[3], v237);
          v196 = OUTLINED_FUNCTION_2_1();
          sub_231E7D6A8(v196, v197, v198, v199, v200, v201, v202);
          OUTLINED_FUNCTION_40_1();
          OUTLINED_FUNCTION_6_1();
          if (v203)
          {
            OUTLINED_FUNCTION_7_1();
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_37_1();
          v190 = &v242;
          goto LABEL_113;
        }

        v180 = &v243;
      }

      else
      {
        v204 = OUTLINED_FUNCTION_26_1();
        if (v58 == v204 && v59 == v205)
        {
        }

        else
        {
          v207 = OUTLINED_FUNCTION_12_1(v204, v205);

          if ((v207 & 1) == 0)
          {
            v238 = 0;
            v239 = 0xE000000000000000;
            sub_2320EDF10();

            v238 = 0xD00000000000001BLL;
            v239 = 0x800000023210ED20;
            v208 = sub_2320EDA30();
            MEMORY[0x23837EBB0](v208);

            sub_2320EDFE0();
            __break(1u);
            goto LABEL_131;
          }
        }

        OUTLINED_FUNCTION_45();
        sub_2320ED7D0();
        v209 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_42(v209, v210, v237);
        if (!v60)
        {
          (*(v235 + 4))(v219[0], v219[1], v237);
          v211 = OUTLINED_FUNCTION_2_1();
          sub_231E7D6A8(v211, v212, v213, v214, v215, v216, v217);
          OUTLINED_FUNCTION_40_1();
          OUTLINED_FUNCTION_6_1();
          if (v218)
          {
            OUTLINED_FUNCTION_7_1();
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_37_1();
          v190 = &v240;
          goto LABEL_113;
        }

        v180 = &v241;
      }
    }

    v75 = *(v180 - 32);
    goto LABEL_20;
  }

  v6 = v223;
  OUTLINED_FUNCTION_41_1(v147);
  OUTLINED_FUNCTION_17_0(v6);
  v68 = v222;
  if (!v60)
  {
LABEL_74:
    OUTLINED_FUNCTION_28_1();
LABEL_75:
    v148(v68, v6, v146);
    v149 = OUTLINED_FUNCTION_2_1();
    sub_231E7D6A8(v149, v150, v151, v152, v153, v154, v155);
    v58 = v146;
    goto LABEL_76;
  }

LABEL_19:
  v75 = v6;
LABEL_20:
  sub_231E6F05C(v75, &qword_27DD8D2A8, &qword_232106488);
  v7 = MEMORY[0x277D84F90];
LABEL_34:
  v99 = MEMORY[0x277D84F90];
  v58 = 0;
  v238 = MEMORY[0x277D84F90];
  v100 = *(v7 + 16);
  while (v100 != v58)
  {
    if (v58 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_63;
    }

    v101 = *(v7 + 8 * v58++ + 32);
    if (v101)
    {
      v102 = v101;
      MEMORY[0x23837EBD0]();
      v6 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      v99 = v238;
    }
  }

  return v99;
}

id sub_231E7C1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2320EDDA0();

  v5 = [swift_getObjCClassFromMetadata() duplicateKeyForPseudoEventWithGroupId:v4 parentKey:a3];

  return v5;
}

id sub_231E7C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2320ED5B0();
  v9 = sub_2320ED610();
  v10 = sub_2320ED5B0();
  v11 = sub_2320ED610();
  v12 = [swift_getObjCClassFromMetadata() rangeWithStartDate:v8 startTimeZone:v9 endDate:v10 endTimeZone:v11];

  v13 = sub_2320ED630();
  v14 = *(*(v13 - 8) + 8);
  v14(a4, v13);
  v15 = sub_2320ED5F0();
  v16 = *(*(v15 - 8) + 8);
  v16(a3, v15);
  v14(a2, v13);
  v16(a1, v15);
  return v12;
}

uint64_t sub_231E7C3B0()
{
  v1 = sub_2320EDA70();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41_0();
  v7 = v6 - v5;
  v8 = sub_2320EDD40();
  OUTLINED_FUNCTION_13();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41_0();
  v13 = v12 - v11;
  v14 = sub_2320ED830();
  v16 = v15;
  v17 = v14 == 0x656D7269666E6F63 && v15 == 0xE900000000000064;
  if (v17 || (v18 = v14, (OUTLINED_FUNCTION_14_1(0x656D7269666E6F63, 0xE900000000000064) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v20 = v18 == 0x656C6C65636E6163 && v16 == 0xE900000000000064;
    if (v20 || (OUTLINED_FUNCTION_14_1(0x656C6C65636E6163, 0xE900000000000064) & 1) != 0)
    {

      return 3;
    }

    else
    {
      v21 = v18 == 0x6465696669646F6DLL && v16 == 0xE800000000000000;
      if (v21 || (OUTLINED_FUNCTION_14_1(0x6465696669646F6DLL, 0xE800000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v22 = v18 == 0x7265646E696D6572 && v16 == 0xE800000000000000;
        if (v22 || (OUTLINED_FUNCTION_14_1(0x7265646E696D6572, 0xE800000000000000) & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_22_1();
          v24 = v18 == 0xD000000000000012 && v23 == v16;
          if (v24 || (OUTLINED_FUNCTION_14_1(0xD000000000000012, v23) & 1) != 0)
          {

            return 6;
          }

          else
          {
            OUTLINED_FUNCTION_22_1();
            v26 = v18 == 0xD000000000000013 && v25 == v16;
            if (v26 || (OUTLINED_FUNCTION_14_1(0xD000000000000013, v25) & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_22_1();
              v28 = v18 == 0xD000000000000010 && v27 == v16;
              if (v28 || (OUTLINED_FUNCTION_14_1(0xD000000000000010, v27) & 1) != 0)
              {

                return 7;
              }

              else
              {
                if (v18 == 0x6E776F6E6B6E75 && v16 == 0xE700000000000000)
                {
                }

                else
                {
                  v30 = OUTLINED_FUNCTION_14_1(0x6E776F6E6B6E75, 0xE700000000000000);

                  if ((v30 & 1) == 0)
                  {
                    if (qword_280D93948 != -1)
                    {
                      OUTLINED_FUNCTION_78(&qword_280D93948);
                    }

                    OUTLINED_FUNCTION_47_1(v8, qword_280D9DA90);
                    v31 = OUTLINED_FUNCTION_48_1();
                    v32(v31);
                    (*(v3 + 16))(v7, v0, v1);
                    v33 = sub_2320EDD20();
                    v34 = sub_2320EDE80();
                    if (os_log_type_enabled(v33, v34))
                    {
                      v35 = OUTLINED_FUNCTION_75_0();
                      v40 = OUTLINED_FUNCTION_51_1();
                      v42 = v40;
                      *v35 = 136315138;
                      v36 = sub_2320ED830();
                      v38 = v37;
                      (*(v3 + 8))(v7, v1);
                      v39 = sub_231E83810(v36, v38, &v42);

                      *(v35 + 4) = v39;
                      _os_log_impl(&dword_231E60000, v33, v34, "SGTextUnderstandingImporter: Unsupported event status %s", v35, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v40);
                      OUTLINED_FUNCTION_45_0();
                      OUTLINED_FUNCTION_45_0();
                    }

                    else
                    {

                      (*(v3 + 8))(v7, v1);
                    }

                    (*(v41 + 8))(v13, v8);
                  }
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }
}