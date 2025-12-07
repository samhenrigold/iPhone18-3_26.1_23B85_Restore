void WRRangesSortAndCoalesce(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    mergesort_b(*(a1 + 1), v1, 0x10uLL, &__block_literal_global_547);
    v3 = *a1;
    if (v3 >= 2)
    {
      v4 = 0;
      v5 = 0;
      for (i = 1; i < v3; ++i)
      {
        v7 = *(a1 + 1);
        v8 = *(v7 + v4 + 16);
        v9 = *(v7 + v4 + 24);
        if (v9 > v8)
        {
          v10 = v7 + 16 * v5;
          v13 = *(v10 + 8);
          v12 = (v10 + 8);
          v11 = v13;
          if (v13 >= v8)
          {
            if (v11 < v9)
            {
              *v12 = v9;
            }

            *(v7 + v4 + 24) = v8;
          }

          else
          {
            *(v7 + 16 * ++v5) = *(v7 + v4 + 16);
            v3 = *a1;
          }
        }

        v4 += 16;
      }

      if (v5)
      {
        goto LABEL_14;
      }
    }

    v14 = *(a1 + 1);
    if (v14[1] > *v14)
    {
      v5 = 0;
LABEL_14:
      *a1 = v5 + 1;
      return;
    }

    *a1 = 0;
    free(v14);
    *(a1 + 1) = 0;
  }
}

void sub_2746E72A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL PlaceholderNameMatches(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 rangeOfString:v4 options:8 range:{5, objc_msgSend(v3, "length") - 5}];
  v7 = v6;

  v8 = v5 == 5 && v7 == [v3 length] - 5;
  return v8;
}

void sub_2746EDC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2746EF0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2746EF800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WRProcessIsBeingDebugged(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  if (proc_pidinfo(a1, 13, 1uLL, v5, 64))
  {
    if ((v6 & 2) != 0)
    {
      return 1;
    }
  }

  else
  {
    v2 = __error();
    v3 = *v2;
    v4 = _wrlog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WRProcessIsBeingDebugged_cold_1();
    }

    *__error() = v3;
  }

  return 0;
}

uint64_t WRMachTimeFromNanosecondsUsingLiveTimebase(unint64_t a1)
{
  if (WRMachTimebaseForLiveMachine_once != -1)
  {
    WRMachTimeFromNanosecondsUsingLiveTimebase_cold_1();
  }

  if (HIDWORD(WRMachTimebaseForLiveMachine_timebase))
  {
    v2 = WRMachTimebaseForLiveMachine_timebase == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  if (HIDWORD(WRMachTimebaseForLiveMachine_timebase) != WRMachTimebaseForLiveMachine_timebase)
  {
    return __udivti3();
  }

  return a1;
}

id WRSanitizeForCA(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    if (WRSanitizeForCA_onceToken != -1)
    {
      WRSanitizeForCA_cold_1();
    }

    v4 = &WRSanitizeForCA_removedCharactersExcludingUnderscore;
    if (!a2)
    {
      v4 = &WRSanitizeForCA_removedCharactersIncludingUnderscore;
    }

    v5 = *v4;
    v6 = [v3 componentsSeparatedByCharactersInSet:v5];
    v7 = [v6 componentsJoinedByString:&stru_288387A58];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __WRSanitizeForCA_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v1 = [v0 invertedSet];
  v2 = WRSanitizeForCA_removedCharactersIncludingUnderscore;
  WRSanitizeForCA_removedCharactersIncludingUnderscore = v1;

  v3 = [WRSanitizeForCA_removedCharactersIncludingUnderscore mutableCopy];
  [v3 removeCharactersInString:@"_"];
  v4 = WRSanitizeForCA_removedCharactersExcludingUnderscore;
  WRSanitizeForCA_removedCharactersExcludingUnderscore = v3;
}

uint64_t __WRStringForDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_28159D110;
  qword_28159D110 = v0;

  v2 = qword_28159D110;

  return [v2 setDateFormat:@"yyyy-MM-dd-HHmmss.SSS"];
}

uint64_t __WRRangesSortAndCoalesce_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

void OUTLINED_FUNCTION_15(int a1@<W8>, float a2@<S0>)
{
  *(v5 - 144) = a2;
  v6 = v5 - 144;
  *(v6 + 4) = v4;
  *(v5 - 132) = 2114;
  *(v6 + 14) = v2;
  *(v5 - 122) = 2082;
  *(v5 - 120) = v3;
  *(v5 - 112) = 1024;
  *(v6 + 34) = a1;
}

uint64_t OUTLINED_FUNCTION_19()
{

  return [v0 startMachContinuousTime];
}

uint64_t OUTLINED_FUNCTION_20()
{

  return [v0 endNanoseconds];
}

void OUTLINED_FUNCTION_44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_46(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_47(int a1@<W8>)
{
  *(v3 - 132) = 2082;
  *(v1 + 14) = v2;
  *(v3 - 122) = 1024;
  *(v3 - 120) = a1;
}

void OUTLINED_FUNCTION_56(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x20u);
}

id *OUTLINED_FUNCTION_58(void *a1)
{

  return [(WRTimestampAndThread *)v1 initWithPID:v2 threadID:v3 machContTimeNs:v4 date:a1];
}

id OUTLINED_FUNCTION_69(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 104, 1);
}

id OUTLINED_FUNCTION_70(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 136, 1);
}

id OUTLINED_FUNCTION_71(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 56, 1);
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id OUTLINED_FUNCTION_94(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 48, 1);
}

uint64_t OUTLINED_FUNCTION_95()
{

  return [v0 startNanoseconds];
}

id OUTLINED_FUNCTION_96(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 152, 1);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return [v0 endNanoseconds];
}

uint64_t OUTLINED_FUNCTION_98()
{

  return [v0 startMachContinuousTime];
}

BOOL OUTLINED_FUNCTION_99(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

uint64_t OUTLINED_FUNCTION_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id _wrlog(uint64_t a1)
{
  if (_wrlog_onceToken != -1)
  {
    _wrlog_cold_1();
  }

  v2 = _wrlog_log;

  return v2;
}

uint64_t ___wrlog_block_invoke()
{
  _wrlog_log = os_log_create("com.apple.workflow_responsiveness", "wrlogging");

  return MEMORY[0x2821F96F8]();
}

id DictGetType(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a1 objectForKeyedSubscript:v6];
  if (!v7)
  {
    goto LABEL_6;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_7;
  }

  if (a4)
  {
    object_getClassName(v7);
    WRMakeError(6, @"Key %@: unexpected value type %s", v9, v10, v11, v12, v13, v14, v6);
    *a4 = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

id DictGetNumber(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_class();
  v8 = DictGetType(v6, v5, v7, a3);

  return v8;
}

id DictGetString(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_class();
  v8 = DictGetType(v6, v5, v7, a3);

  return v8;
}

id DictGetArray(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_class();
  v8 = DictGetType(v6, v5, v7, a3);

  return v8;
}

id DictGetDict(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_class();
  v8 = DictGetType(v6, v5, v7, a3);

  return v8;
}

uint64_t ArrayDoAllClassesMatch(void *a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = a2;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            object_getClassName(v12);
            WRMakeError(6, @"Key %@: unexpected value type %s in array", v14, v15, v16, v17, v18, v19, v6);
            *a4 = v13 = 0;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

id DictGetArrayOfClass(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = DictGetArray(a1, v7, a4);
  if (v8 && ArrayDoAllClassesMatch(v7, v8, a3, a4))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t WRIsAppleInternal(uint64_t a1, uint64_t a2)
{
  if (WRIsAppleInternal_onceToken != -1)
  {
    WRIsAppleInternal_cold_1();
  }

  return WRIsAppleInternal_appleInternal;
}

uint64_t __WRIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  WRIsAppleInternal_appleInternal = result;
  return result;
}

id WRCreateOSTransaction(char *__format, ...)
{
  va_start(va, __format);
  v4 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x200uLL, __format, va);
  v1 = os_transaction_create();

  return v1;
}

id WRMakeError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = objc_alloc(MEMORY[0x277CCA9B8]);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v12, *MEMORY[0x277CCA068], 0}];
  v15 = [v13 initWithDomain:@"WorkflowResponsivenessError" code:a1 userInfo:v14];

  return v15;
}

id WRMakeErrorWithUnderlyingError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x277CCACA8];
  v12 = a3;
  v13 = a2;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = objc_alloc(MEMORY[0x277CCA9B8]);
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, *MEMORY[0x277CCA068], v13, *MEMORY[0x277CCA7E8], 0}];

  v17 = [v15 initWithDomain:@"WorkflowResponsivenessError" code:a1 userInfo:v16];

  return v17;
}

id AllWorkflowKeys(uint64_t a1)
{
  if (AllWorkflowKeys_onceToken != -1)
  {
    AllWorkflowKeys_cold_1();
  }

  v2 = AllWorkflowKeys_allWorkflowKeys;

  return v2;
}

uint64_t __AllWorkflowKeys_block_invoke()
{
  v0 = MEMORY[0x277CBEAC0];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  AllWorkflowKeys_allWorkflowKeys = [v0 dictionaryWithObjectsAndKeys:{v1, @"name", v2, @"maximum_duration", v3, @"contextual_telemetry", v4, @"signposts", objc_opt_class(), @"diagnostics", 0}];

  return MEMORY[0x2821F96F8]();
}

id AllSignpostKeys(uint64_t a1)
{
  if (AllSignpostKeys_onceToken != -1)
  {
    AllSignpostKeys_cold_1();
  }

  v2 = AllSignpostKeys_allSignpostKeys;

  return v2;
}

uint64_t __AllSignpostKeys_block_invoke()
{
  v16 = MEMORY[0x277CBEAC0];
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v10 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  AllSignpostKeys_allSignpostKeys = [v16 dictionaryWithObjectsAndKeys:{v15, @"start", v14, @"end", v13, @"end_group", v12, @"subsystem", v11, @"category", v10, @"name", v0, @"event_identifier_field_name", v1, @"individuation_field_name", v2, @"environment_field_names", v3, @"network_bound", v4, @"diagnostics", v5, @"custom_environment_core_analytics_event_name", v6, @"disabled", v7, @"overall_interval", v8, @"diagnostics_threshold_seconds", objc_opt_class(), @"diagnostics_threshold_count", 0}];

  return MEMORY[0x2821F96F8]();
}

id AllDiagnosticKeys(uint64_t a1)
{
  if (AllDiagnosticKeys_onceToken != -1)
  {
    AllDiagnosticKeys_cold_1();
  }

  v2 = AllDiagnosticKeys_allDiagnosticKeys;

  return v2;
}

uint64_t __AllDiagnosticKeys_block_invoke()
{
  v16 = MEMORY[0x277CBEAC0];
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v10 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  AllDiagnosticKeys_allDiagnosticKeys = [v16 dictionaryWithObjectsAndKeys:{v15, @"name", v14, @"trigger_threshold_duration_sum", v13, @"trigger_threshold_duration_union", v12, @"trigger_threshold_duration_single", v11, @"trigger_threshold_count", v10, @"trigger_event_timeout", v0, @"gather_tailspin", v1, @"option_tailspin_includes_oslogs", v2, @"report_spindump_this_thread", v3, @"report_spindump_thread_name", v4, @"report_spindump_main_thread", v5, @"report_spindump_this_dispatchqueue", v6, @"report_spindump_dispatchqueue_label", v7, @"option_report_other_signpost", v8, @"option_report_other_processes", objc_opt_class(), @"option_report_omit_network_bound_intervals", 0}];

  return MEMORY[0x2821F96F8]();
}

id WRCheckForBadWorkflowDict(void *a1)
{
  v1 = a1;
  v2 = AllWorkflowKeys(v1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WRCheckForBadWorkflowDict_block_invoke;
  v6[3] = &unk_279EE32E0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_2746F5BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WRCheckForBadWorkflowDict_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v97 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v9)
  {
    v22 = WRMakeError(1, @"Unknown workflow key %@", v10, v11, v12, v13, v14, v15, v7);
    v23 = *(*(a1 + 40) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    *a4 = 1;
    goto LABEL_47;
  }

  v16 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    object_getClassName(v8);
    v86 = NSStringFromClass(v16);
    v31 = WRMakeError(6, @"Wrong value type for workflow key %@: %s, expected %@", v25, v26, v27, v28, v29, v30, v7);
    v32 = *(*(a1 + 40) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

LABEL_46:
    *a4 = 1;
    goto LABEL_47;
  }

  if (v16 == objc_opt_class())
  {
    if ([v7 isEqualToString:@"signposts"])
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v34 = v8;
      v35 = [v34 countByEnumeratingWithState:&v91 objects:v96 count:16];
      if (!v35)
      {
LABEL_38:

        goto LABEL_47;
      }

      v36 = v35;
      v37 = *v92;
LABEL_12:
      v38 = 0;
      while (1)
      {
        if (*v92 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v91 + 1) + 8 * v38);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          WRCheckForBadSignpostDict(v39);
        }

        else
        {
          ClassName = object_getClassName(v39);
          WRMakeError(6, @"Wrong type for workflow signpost dict: %s", v42, v43, v44, v45, v46, v47, ClassName);
        }
        v40 = ;
        v48 = *(*(a1 + 40) + 8);
        v49 = *(v48 + 40);
        *(v48 + 40) = v40;

        if (*(*(*(a1 + 40) + 8) + 40))
        {
          break;
        }

        if (v36 == ++v38)
        {
          v36 = [v34 countByEnumeratingWithState:&v91 objects:v96 count:16];
          if (v36)
          {
            goto LABEL_12;
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      if (![v7 isEqualToString:@"diagnostics"])
      {
        v71 = __error();
        v72 = *v71;
        v73 = _wrlog(v71);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          __WRCheckForBadWorkflowDict_block_invoke_cold_1(v7, v73);
        }

        *__error() = v72;
        v80 = WRMakeError(6, @"unhandled workflow array key %@", v74, v75, v76, v77, v78, v79, v7);
        v81 = *(*(a1 + 40) + 8);
        v82 = *(v81 + 40);
        *(v81 + 40) = v80;

        goto LABEL_46;
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v34 = v8;
      v50 = [v34 countByEnumeratingWithState:&v87 objects:v95 count:16];
      if (!v50)
      {
        goto LABEL_38;
      }

      v51 = v50;
      v52 = *v88;
LABEL_27:
      v53 = 0;
      while (1)
      {
        if (*v88 != v52)
        {
          objc_enumerationMutation(v34);
        }

        v54 = *(*(&v87 + 1) + 8 * v53);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          WRCheckForBadDiagnosticDict(v54);
        }

        else
        {
          v56 = object_getClassName(v54);
          WRMakeError(6, @"Wrong type for workflow diagnostic dict: %s", v57, v58, v59, v60, v61, v62, v56);
        }
        v55 = ;
        v63 = *(*(a1 + 40) + 8);
        v64 = *(v63 + 40);
        *(v63 + 40) = v55;

        if (*(*(*(a1 + 40) + 8) + 40))
        {
          break;
        }

        if (v51 == ++v53)
        {
          v51 = [v34 countByEnumeratingWithState:&v87 objects:v95 count:16];
          if (v51)
          {
            goto LABEL_27;
          }

          goto LABEL_38;
        }
      }
    }

    *a4 = 1;
    goto LABEL_38;
  }

  v17 = v7;
  v18 = v8;
  if ([v17 isEqualToString:@"name"])
  {
    v19 = v18;
    v20 = 4;
LABEL_6:
    v21 = WRValidateString(v19, v20, v17);
    goto LABEL_45;
  }

  if ([v17 isEqualToString:@"maximum_duration"])
  {
    v21 = WRValidateDouble(v18, v17, 3600.0);
  }

  else
  {
    if ([v17 isEqualToString:@"contextual_telemetry"])
    {
      v19 = v18;
      v20 = 0;
      goto LABEL_6;
    }

    v21 = WRMakeError(1, @"Unknown workflow leaf key %@", v65, v66, v67, v68, v69, v70, v17);
  }

LABEL_45:
  v83 = v21;

  v84 = *(*(a1 + 40) + 8);
  v85 = *(v84 + 40);
  *(v84 + 40) = v83;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_46;
  }

LABEL_47:
}

id WRCheckForBadSignpostDict(void *a1)
{
  v1 = a1;
  v2 = AllSignpostKeys(v1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WRCheckForBadSignpostDict_block_invoke;
  v6[3] = &unk_279EE32E0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_2746F61D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WRCheckForBadDiagnosticDict(void *a1)
{
  v1 = a1;
  v2 = AllDiagnosticKeys(v1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WRCheckForBadDiagnosticDict_block_invoke;
  v6[3] = &unk_279EE32E0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_2746F6308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WRCheckForBadSignpostDict_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v9)
  {
    v16 = v9;
    if (objc_opt_isKindOfClass())
    {
      if (v16 != objc_opt_class())
      {
        v17 = WRValidateSignpostDictLeafEntry(v7, v8);
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        if (!*(*(*(a1 + 40) + 8) + 40))
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if ([v7 isEqualToString:@"diagnostics"])
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v32 = v8;
        v33 = [v32 countByEnumeratingWithState:&v80 objects:v85 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v81;
LABEL_13:
          v36 = 0;
          while (1)
          {
            if (*v81 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v80 + 1) + 8 * v36);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              WRCheckForBadDiagnosticDict(v37);
            }

            else
            {
              ClassName = object_getClassName(v37);
              WRMakeError(6, @"Wrong type for signpost diagnostic dict: %s", v40, v41, v42, v43, v44, v45, ClassName);
            }
            v38 = ;
            v46 = *(*(a1 + 40) + 8);
            v47 = *(v46 + 40);
            *(v46 + 40) = v38;

            if (*(*(*(a1 + 40) + 8) + 40))
            {
              break;
            }

            if (v34 == ++v36)
            {
              v34 = [v32 countByEnumeratingWithState:&v80 objects:v85 count:16];
              if (v34)
              {
                goto LABEL_13;
              }

              goto LABEL_37;
            }
          }

LABEL_36:
          *a4 = 1;
          goto LABEL_37;
        }

        goto LABEL_37;
      }

      if ([v7 isEqualToString:@"environment_field_names"])
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v32 = v8;
        v48 = [v32 countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v77;
LABEL_26:
          v51 = 0;
          while (1)
          {
            if (*v77 != v50)
            {
              objc_enumerationMutation(v32);
            }

            v52 = *(*(&v76 + 1) + 8 * v51);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              WRValidateSignpostDictLeafEntry(v7, v52);
            }

            else
            {
              v54 = object_getClassName(v52);
              WRMakeError(6, @"Wrong type for signpost environmental field name: %s", v55, v56, v57, v58, v59, v60, v54);
            }
            v53 = ;
            v61 = *(*(a1 + 40) + 8);
            v62 = *(v61 + 40);
            *(v61 + 40) = v53;

            if (*(*(*(a1 + 40) + 8) + 40))
            {
              goto LABEL_36;
            }

            if (v49 == ++v51)
            {
              v49 = [v32 countByEnumeratingWithState:&v76 objects:v84 count:16];
              if (v49)
              {
                goto LABEL_26;
              }

              break;
            }
          }
        }

LABEL_37:

        goto LABEL_9;
      }

      v63 = __error();
      v64 = *v63;
      v65 = _wrlog(v63);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
      {
        __WRCheckForBadSignpostDict_block_invoke_cold_1(v7, v65);
      }

      *__error() = v64;
      v72 = WRMakeError(6, @"unhandled signpost array key %@", v66, v67, v68, v69, v70, v71, v7);
      v73 = *(*(a1 + 40) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;
    }

    else
    {
      object_getClassName(v8);
      v75 = NSStringFromClass(v16);
      v29 = WRMakeError(6, @"Wrong value type for signpost key %@: %s, expected %@", v23, v24, v25, v26, v27, v28, v7);
      v30 = *(*(a1 + 40) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }

LABEL_8:
    *a4 = 1;
    goto LABEL_9;
  }

  v20 = WRMakeError(1, @"Unknown signpost key %@", v10, v11, v12, v13, v14, v15, v7);
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  *a4 = 1;
LABEL_9:
}

id WRValidateSignpostDictLeafEntry(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 isEqualToString:@"start"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"end") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"network_bound") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"disabled"))
  {
    v5 = WRValidateBool(v4, v3);
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"name"])
  {
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"end_group"])
  {
    v8 = v4;
    v9 = 4;
    goto LABEL_13;
  }

  if (([v3 isEqualToString:@"subsystem"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"category") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"event_identifier_field_name") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"individuation_field_name") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"environment_field_names") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"custom_environment_core_analytics_event_name"))
  {
LABEL_10:
    v8 = v4;
    v9 = 1;
LABEL_13:
    v5 = WRValidateString(v8, v9, v3);
    goto LABEL_6;
  }

  v5 = WRMakeError(1, @"Unknown signpost leaf key %@", v10, v11, v12, v13, v14, v15, v3);
LABEL_6:
  v6 = v5;

  return v6;
}

void __WRCheckForBadDiagnosticDict_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v42 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v42];
  if (!v8)
  {
    v22 = WRMakeError(1, @"Unknown diagnostic key %@", v9, v10, v11, v12, v13, v14, v42);
    v23 = *(*(a1 + 40) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
LABEL_11:

    goto LABEL_12;
  }

  v15 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    object_getClassName(v7);
    v24 = NSStringFromClass(v15);
    v31 = WRMakeError(6, @"Wrong value type for diagnostic key %@: %s, expected %@", v25, v26, v27, v28, v29, v30, v42);
    v32 = *(*(a1 + 40) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    goto LABEL_11;
  }

  v16 = v42;
  v17 = v7;
  if (([v16 isEqualToString:@"trigger_threshold_duration_sum"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"trigger_threshold_duration_union") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"trigger_threshold_duration_single"))
  {
    v18 = WRValidateDouble(v17, v16, 0.0);
    goto LABEL_7;
  }

  if (([v16 isEqualToString:@"trigger_event_timeout"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"gather_tailspin") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"option_tailspin_includes_oslogs") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"report_spindump_this_thread") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"report_spindump_main_thread") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"report_spindump_this_dispatchqueue") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"option_report_omit_network_bound_intervals"))
  {
    v18 = WRValidateBool(v17, v16);
    goto LABEL_7;
  }

  if ([v16 isEqualToString:@"trigger_threshold_count"])
  {
    v18 = WRValidateU64(v17, v16);
    goto LABEL_7;
  }

  if (([v16 isEqualToString:@"option_report_other_signpost"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"name"))
  {
    v34 = v17;
    v35 = 20;
LABEL_33:
    v18 = WRValidateString(v34, v35, v16);
    goto LABEL_7;
  }

  if (([v16 isEqualToString:@"report_spindump_thread_name"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"report_spindump_dispatchqueue_label") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"option_report_other_processes"))
  {
    v34 = v17;
    v35 = 1;
    goto LABEL_33;
  }

  v18 = WRMakeError(1, @"Unknown diagnostic key %@", v36, v37, v38, v39, v40, v41, v16);
LABEL_7:
  v19 = v18;

  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_12:
    *a4 = 1;
  }
}

id WRValidateString(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
    [v7 addCharactersInString:@"_"];
    if ((a2 & 2) != 0)
    {
      v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      [v7 formUnionWithCharacterSet:v9];

      if ((a2 & 8) == 0)
      {
LABEL_6:
        if ((a2 & 0x10) != 0)
        {
          [v7 addCharactersInString:@"."];
        }

        goto LABEL_11;
      }
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        [v7 addCharactersInString:@" "];
      }

      if ((a2 & 8) == 0)
      {
        goto LABEL_6;
      }
    }

    v10 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    [v7 formUnionWithCharacterSet:v10];

LABEL_11:
    [v7 invert];
    v11 = [v5 rangeOfCharacterFromSet:v7];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v20 = [v5 substringWithRange:{v11, v12}];
      v8 = WRMakeError(8, @"%@ contains invalid characters (%@: %@)", v13, v14, v15, v16, v17, v18, v6);
    }

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

id WRValidateDouble(void *a1, void *a2, double a3)
{
  v5 = a2;
  [a1 doubleValue];
  if (v12 >= 0.0)
  {
    if (a3 == 0.0 || v12 <= a3)
    {
      v14 = 0;
      goto LABEL_10;
    }

    WRMakeError(8, @"%@ is above max value (%f > %f)", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    WRMakeError(8, @"%@ is negative (%f)", v6, v7, v8, v9, v10, v11, v5);
  }
  v14 = ;
LABEL_10:

  return v14;
}

id WRValidateBool(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 intValue] < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = WRMakeError(8, @"%@ is not a BOOL (%d)", v4, v5, v6, v7, v8, v9, v3);
  }

  return v10;
}

id WRValidateU64(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 longLongValue] < 0)
  {
    v11 = WRMakeError(8, @"%@ is negative (%lld)", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    [v3 unsignedLongLongValue];
    v11 = 0;
  }

  return v11;
}

__CFString *WRTaskingKeyForWorkflowTelemetryEnabled(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = a1;
    v3 = [[v1 alloc] initWithFormat:@"WR.%@.telemetryEnabled", v2];
  }

  else
  {
    v3 = @"WR.telemetryEnabled";
  }

  return v3;
}

id WROverrideDiagnosticsEnablementForWorkflow(void *a1, void *a2)
{
  v3 = WRTaskingKeyForWorkflowDiagnosticsEnabled(a1);
  v4 = WRTaskingNumberForKey(v3, a2);

  return v4;
}

id WRTaskingNumberForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = WRTaskingValueForKeyOfType(v3, v4, a2);

  return v5;
}

__CFString *WRTaskingKeyForWorkflowDiagnosticsEnabled(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = a1;
    v3 = [[v1 alloc] initWithFormat:@"WR.%@.diagnosticsEnabled", v2];
  }

  else
  {
    v3 = @"WR.diagnosticsEnabled";
  }

  return v3;
}

id WROverrideTelemetryEnablementForWorkflow(void *a1, void *a2)
{
  v3 = WRTaskingKeyForWorkflowTelemetryEnabled(a1);
  v4 = WRTaskingNumberForKey(v3, a2);

  return v4;
}

id _WROverrideDiagnostics(void *a1, void *a2, void *a3, void *a4)
{
  v5 = WRTaskingKeyBaseForDiagnostic(a1, a2, a3);
  v6 = AllDiagnosticKeys(v5);
  v7 = [v6 allKeys];
  v8 = _WROverrideDict(v5, v7);

  if (v8)
  {
    v9 = WRCheckForBadDiagnosticDict(v8);
    v10 = v9;
    if (v9)
    {
      if (a4)
      {
        v11 = v9;
        v12 = 0;
        *a4 = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = [v8 copy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id WROverrideForWorkflow(void *a1, void *a2)
{
  v3 = WRTaskingKeyBaseForWorkflow(a1);
  v4 = AllWorkflowKeys(v3);
  v5 = [v4 allKeys];
  v6 = _WROverrideDict(v3, v5);

  if (v6)
  {
    [v6 setObject:0 forKeyedSubscript:@"signposts"];
    [v6 setObject:0 forKeyedSubscript:@"diagnostics"];
    v7 = WRCheckForBadWorkflowDict(v6);
    v8 = v7;
    if (v7)
    {
      if (a2)
      {
        v9 = v7;
        v10 = 0;
        *a2 = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = [v6 copy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _WROverrideDict(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 stringByAppendingString:v10];
        v12 = objc_opt_class();
        v13 = WRTaskingValueForKeyOfType(v11, v12, 0);
        if (v13)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          [v7 setObject:v13 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WRTaskingKeyBaseForWorkflow(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [[v1 alloc] initWithFormat:@"WR.%@.", v2];

  return v3;
}

id WROverrideForSignpost(void *a1, void *a2, void *a3)
{
  v4 = WRTaskingKeyBaseForSignpost(a1, a2);
  v5 = AllSignpostKeys(v4);
  v6 = [v5 allKeys];
  v7 = _WROverrideDict(v4, v6);

  if (v7)
  {
    [v7 setObject:0 forKeyedSubscript:@"diagnostics"];
    v8 = WRCheckForBadSignpostDict(v7);
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        v11 = 0;
        *a3 = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = [v7 copy];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id WRTaskingKeyBaseForSignpost(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithFormat:@"WR.%@.%@.", v5, v4];

  return v6;
}

id WROverrideNewSignpostsForWorkflow(void *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  v44 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  else
  {
    a2 = &v44;
  }

  v5 = WRTaskingKeyForNewSignposts(v3);
  v6 = WRTaskingStringForKey(v5, a2);

  if (v6)
  {
    v7 = [v6 componentsSeparatedByString:{@", "}];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = v7;
    v39 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v39)
    {
      v10 = *v41;
      v37 = v6;
      v38 = *v41;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = WROverrideForSignpost(v4, v12, a2);
        if (!v13)
        {
          break;
        }

        v20 = v13;
        v21 = [v13 objectForKeyedSubscript:@"name"];
        v22 = v21;
        if (v21)
        {
          if (([v21 isEqualToString:v12] & 1) == 0)
          {
            *a2 = WRMakeError(7, @"Workflow %@ new signpost %@ has wrong name %@", v23, v24, v25, v26, v27, v28, v4);

LABEL_21:
            v35 = 0;
            v6 = v37;
            goto LABEL_22;
          }
        }

        else
        {
          v29 = v9;
          v30 = a2;
          v31 = v8;
          v32 = v4;
          v33 = [v20 mutableCopy];
          [v33 setObject:v12 forKeyedSubscript:@"name"];
          v34 = [v33 copy];

          v4 = v32;
          v8 = v31;
          a2 = v30;
          v9 = v29;
          v10 = v38;
          v20 = v34;
        }

        [v8 addObject:v20];

        if (v39 == ++v11)
        {
          v6 = v37;
          v39 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v39)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }

      if (!*a2)
      {
        *a2 = WRMakeError(7, @"No override dictionary for workflow %@ new signpost %@", v14, v15, v16, v17, v18, v19, v4);
      }

      goto LABEL_21;
    }

LABEL_17:

    v35 = [v8 copy];
LABEL_22:
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

id WRTaskingStringForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = WRTaskingValueForKeyOfType(v3, v4, a2);

  return v5;
}

id WRTaskingKeyForNewSignposts(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [[v1 alloc] initWithFormat:@"WR.%@.%@", v2, @"signposts"];

  return v3;
}

id WROverrideNewWorkflows(uint64_t *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0;
  if (a1)
  {
    v1 = a1;
    *a1 = 0;
  }

  else
  {
    v1 = &v38;
  }

  v2 = WRTaskingStringForKey(@"WR.workflows", v1);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentsSeparatedByString:{@", "}];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      obj = v6;
      v32 = v3;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = WROverrideForWorkflow(v11, v1);
        v13 = [v12 mutableCopy];

        if (!v13)
        {
          if (*v1)
          {
            goto LABEL_26;
          }

          v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v11, @"name", 0}];
        }

        v14 = [v13 objectForKeyedSubscript:@"name"];
        v15 = v14;
        if (v14)
        {
          if (([v14 isEqualToString:v11] & 1) == 0)
          {
            WRMakeError(7, @"Workflow %@ has wrong name %@", v16, v17, v18, v19, v20, v21, v11);
            goto LABEL_24;
          }
        }

        else
        {
          [v13 setObject:v11 forKeyedSubscript:@"name"];
        }

        v22 = WROverrideNewSignpostsForWorkflow(v11, v1);
        if (!v22)
        {
          if (!*v1)
          {
            WRMakeError(7, @"No signposts for new workflow %@", v23, v24, v25, v26, v27, v28, v11);
            *v1 = LABEL_24:;
          }

LABEL_26:
          v6 = obj;

          v30 = 0;
          v3 = v32;
          goto LABEL_27;
        }

        v29 = v22;
        [v13 setObject:v22 forKeyedSubscript:@"signposts"];
        [v5 addObject:v13];

        if (v8 == ++v10)
        {
          v6 = obj;
          v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
          v3 = v32;
          if (v8)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v30 = [v5 copy];
LABEL_27:
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

id WRTaskingDictForWorkflow(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v5 = a2;
  v6 = objc_alloc_init(v4);
  v7 = [v3 name];
  if (!v5)
  {
    [v6 setObject:v7 forKeyedSubscript:@"WR.workflows"];
  }

  v8 = [v3 encodedDict];
  v9 = [v8 mutableCopy];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v5 encodedDict];

  v13 = [v12 mutableCopy];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __WRTaskingDictForWorkflow_block_invoke;
  v37[3] = &unk_279EE3690;
  v14 = v13;
  v38 = v14;
  v15 = v11;
  v39 = v15;
  v16 = v10;
  v40 = v16;
  [v9 enumerateKeysAndObjectsUsingBlock:v37];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __WRTaskingDictForWorkflow_block_invoke_2;
  v34[3] = &unk_279EE3308;
  v35 = v9;
  v17 = v15;
  v36 = v17;
  [v14 enumerateKeysAndObjectsUsingBlock:v34];
  v18 = v17;
  v19 = WRTaskingKeyBaseForWorkflow(v7);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __WRTaskingDictForWorkflow_block_invoke_34;
  v30 = &unk_279EE3690;
  v20 = v6;
  v31 = v20;
  v21 = v7;
  v32 = v21;
  v33 = v19;
  v22 = v19;
  [v18 enumerateKeysAndObjectsUsingBlock:&v27];
  if ([v16 count])
  {
    v23 = WRTaskingKeyForNewSignposts(v21);
    v24 = [v16 componentsJoinedByString:{@", "}];
    [v20 setObject:v24 forKeyedSubscript:v23];
  }

  v25 = [v20 copy];

  return v25;
}

void __WRTaskingDictForWorkflow_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if ([v5 isEqualToString:@"signposts"])
  {
    v44 = a1;
    v46 = v6;
    v47 = v5;
    v8 = *(a1 + 48);
    v9 = v6;
    v45 = v7;
    v49 = v7;
    v48 = v8;
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v9;
    v52 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
    if (v52)
    {
      v51 = *v80;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v80 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v79 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"name"];
          if (v12)
          {
            v56 = v11;
            v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v13 = v49;
            v14 = [v13 countByEnumeratingWithState:&v73 objects:v85 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v74;
LABEL_10:
              v17 = 0;
              while (1)
              {
                if (*v74 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v73 + 1) + 8 * v17);
                v19 = [v18 objectForKeyedSubscript:@"name"];
                v20 = [v19 isEqualToString:v12];

                if (v20)
                {
                  break;
                }

                if (v15 == ++v17)
                {
                  v15 = [v13 countByEnumeratingWithState:&v73 objects:v85 count:16];
                  if (v15)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_16;
                }
              }

              v21 = v18;

              if (v21)
              {
                goto LABEL_19;
              }
            }

            else
            {
LABEL_16:
            }

            [v48 addObject:v12];
            v21 = 0;
LABEL_19:
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = ___WRTaskingFilteredSignposts_block_invoke;
            v70[3] = &unk_279EE3308;
            v22 = v21;
            v71 = v22;
            v23 = v54;
            v72 = v23;
            [v56 enumerateKeysAndObjectsUsingBlock:v70];
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = ___WRTaskingFilteredSignposts_block_invoke_2;
            v68[3] = &unk_279EE3308;
            v68[4] = v56;
            v24 = v23;
            v69 = v24;
            [v22 enumerateKeysAndObjectsUsingBlock:v68];
            if ([v24 count])
            {
              [v24 setObject:v12 forKeyedSubscript:@"name"];
              [v50 addObject:v24];
            }
          }

          else
          {
            v25 = __error();
            v26 = *v25;
            v27 = _wrlog(v25);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              __WRTaskingDictForWorkflow_block_invoke_cold_1(&v77, v78);
            }

            *__error() = v26;
          }
        }

        v52 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
      }

      while (v52);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v55 = v49;
    v28 = [v55 countByEnumeratingWithState:&v64 objects:v84 count:16];
    if (v28)
    {
      v29 = v28;
      v57 = *v65;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v65 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v31 = [*(*(&v64 + 1) + 8 * j) objectForKeyedSubscript:@"name"];
          if (v31)
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v32 = obj;
            v33 = [v32 countByEnumeratingWithState:&v58 objects:v83 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v59;
LABEL_35:
              v36 = 0;
              while (1)
              {
                if (*v59 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = [*(*(&v58 + 1) + 8 * v36) objectForKeyedSubscript:@"name"];
                v38 = [v37 isEqualToString:v31];

                if (v38)
                {
                  break;
                }

                if (v34 == ++v36)
                {
                  v34 = [v32 countByEnumeratingWithState:&v58 objects:v83 count:16];
                  if (v34)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_41;
                }
              }
            }

            else
            {
LABEL_41:

              v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v32 setObject:v31 forKeyedSubscript:@"name"];
              [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x288387F78];
              [v50 addObject:v32];
            }
          }

          else
          {
            v39 = __error();
            v40 = *v39;
            v41 = _wrlog(v39);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              __WRTaskingDictForWorkflow_block_invoke_cold_1(&v62, v63);
            }

            *__error() = v40;
          }
        }

        v29 = [v55 countByEnumeratingWithState:&v64 objects:v84 count:16];
      }

      while (v29);
    }

    if ([v50 count])
    {
      v42 = v50;
    }

    else
    {
      v42 = 0;
    }

    v6 = v46;
    v5 = v47;
    v7 = v45;

    [*(v44 + 40) setObject:v42 forKeyedSubscript:@"signposts"];
  }

  else if ([v5 isEqualToString:@"diagnostics"])
  {
    v43 = _WRTaskingFilteredDiagnostics(v6, v7);
    [*(a1 + 40) setObject:v43 forKeyedSubscript:@"diagnostics"];
  }

  else if (!v7 || ([v6 isEqual:v7] & 1) == 0)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

id _WRTaskingFilteredDiagnostics(void *a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v39 = a2;
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v3;
  v42 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v42)
  {
    v41 = *v71;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v71 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v70 + 1) + 8 * i);
        v6 = [v5 objectForKeyedSubscript:@"name"];
        if (v6)
        {
          v47 = v5;
          v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v7 = v39;
          v8 = [v7 countByEnumeratingWithState:&v64 objects:v76 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v65;
LABEL_9:
            v11 = 0;
            while (1)
            {
              if (*v65 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v64 + 1) + 8 * v11);
              v13 = [v12 objectForKeyedSubscript:@"name"];
              v14 = [v13 isEqualToString:v6];

              if (v14)
              {
                break;
              }

              if (v9 == ++v11)
              {
                v9 = [v7 countByEnumeratingWithState:&v64 objects:v76 count:16];
                if (v9)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v16 = v12;

            v15 = v45;
            if (v16)
            {
              goto LABEL_18;
            }
          }

          else
          {
LABEL_15:

            v15 = v45;
          }

          [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is_new"];
          v16 = 0;
LABEL_18:
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = ___WRTaskingFilteredDiagnostics_block_invoke;
          v61[3] = &unk_279EE3308;
          v17 = v16;
          v62 = v17;
          v18 = v15;
          v63 = v18;
          [v47 enumerateKeysAndObjectsUsingBlock:v61];
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = ___WRTaskingFilteredDiagnostics_block_invoke_2;
          v59[3] = &unk_279EE3308;
          v59[4] = v47;
          v19 = v18;
          v60 = v19;
          [v17 enumerateKeysAndObjectsUsingBlock:v59];
          if ([v19 count])
          {
            [v19 setObject:v6 forKeyedSubscript:@"name"];
            [v40 addObject:v19];
          }
        }

        else
        {
          v20 = __error();
          v21 = *v20;
          v22 = _wrlog(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            _WRTaskingFilteredDiagnostics_cold_1(&v68, v69);
          }

          *__error() = v21;
        }
      }

      v42 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v42);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v43 = v39;
  v48 = [v43 countByEnumeratingWithState:&v55 objects:v75 count:16];
  if (v48)
  {
    v46 = *v56;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v24 = *(*(&v55 + 1) + 8 * j);
        v25 = [v24 objectForKeyedSubscript:@"name"];
        if (v25)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v26 = obj;
          v27 = [v26 countByEnumeratingWithState:&v49 objects:v74 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v50;
            while (2)
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v50 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = [*(*(&v49 + 1) + 8 * k) objectForKeyedSubscript:@"name"];
                v32 = [v31 isEqualToString:v25];

                if (v32)
                {

                  goto LABEL_45;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v49 objects:v74 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v33 = _WRTaskingDiagnosticRemovedDict(v24);
          [v40 addObject:v33];
        }

        else
        {
          v34 = __error();
          v35 = *v34;
          v36 = _wrlog(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            _WRTaskingFilteredDiagnostics_cold_1(&v53, v54);
          }

          *__error() = v35;
        }

LABEL_45:
      }

      v48 = [v43 countByEnumeratingWithState:&v55 objects:v75 count:16];
    }

    while (v48);
  }

  if ([v40 count])
  {
    v37 = v40;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void __WRTaskingDictForWorkflow_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = &unk_28838A6F8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = &stru_288387A58;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_9;
        }

        v7 = MEMORY[0x277CBEBF8];
      }
    }

    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }

LABEL_9:
}

void __WRTaskingDictForWorkflow_block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"signposts"])
  {
    v22 = v5;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v21 = v6;
    v9 = v6;
    v10 = v7;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v9;
    v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"name"];
          v17 = WRTaskingKeyBaseForSignpost(v10, v16);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = ___WRTaskingDictAddSignposts_block_invoke;
          v24[3] = &unk_279EE36B8;
          v25 = v8;
          v26 = v10;
          v27 = v16;
          v28 = v17;
          v18 = v17;
          v19 = v16;
          [v15 enumerateKeysAndObjectsUsingBlock:v24];
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    v6 = v21;
    v5 = v22;
  }

  else if ([v5 isEqualToString:@"diagnostics"])
  {
    _WRTaskingDictAddDiagnostics(*(a1 + 32), v6, *(a1 + 40), 0);
  }

  else if (![v5 isEqualToString:@"name"] || (objc_msgSend(v6, "isEqualToString:", *(a1 + 40)) & 1) == 0)
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", *(a1 + 48), v5];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v20];
  }
}

void _WRTaskingDictAddDiagnostics(void *a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v10 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    LODWORD(v12) = 0;
    v13 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"is_new"];

        if (v16)
        {
          v12 = (v12 + 1);
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", v12];
        }

        else
        {
          v17 = [v15 objectForKeyedSubscript:@"name"];
        }

        v18 = v17;
        v19 = WRTaskingKeyBaseForDiagnostic(v8, v9, v17);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = ___WRTaskingDictAddDiagnostics_block_invoke;
        v24[3] = &unk_279EE3690;
        v25 = v18;
        v26 = v19;
        v27 = v23;
        v20 = v18;
        v21 = v19;
        [v15 enumerateKeysAndObjectsUsingBlock:v24];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }
}

id WRTaskingValueForKeyOfType(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (a3)
  {
    *a3 = 0;
  }

  v5 = OSAGetDATaskingValue();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a3)
    {
      ClassName = object_getClassName(v5);
      WRMakeError(6, @"Unexpected type %s for tasking value for key %@", v8, v9, v10, v11, v12, v13, ClassName);
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

id WRTaskingKeyBaseForDiagnostic(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = a1;
  v9 = [v6 alloc];
  if (v5)
  {
    v10 = [v9 initWithFormat:@"WR.%@.%@.%@.%@.", v8, v5, @"diagnostics", v7];
  }

  else
  {
    v10 = [v9 initWithFormat:@"WR.%@.%@.%@.", v8, @"diagnostics", v7, v13];
  }

  v11 = v10;

  return v11;
}

id _WRTaskingDiagnosticRemovedDict(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [v1 objectForKeyedSubscript:@"name"];
  [v2 setObject:v3 forKeyedSubscript:@"name"];

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"gather_tailspin"];
  v4 = [v1 objectForKeyedSubscript:@"report_spindump_this_thread"];

  if (v4)
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"report_spindump_this_thread"];
  }

  v5 = [v1 objectForKeyedSubscript:@"report_spindump_thread_name"];

  if (v5)
  {
    [v2 setObject:&stru_288387A58 forKeyedSubscript:@"report_spindump_thread_name"];
  }

  v6 = [v1 objectForKeyedSubscript:@"report_spindump_main_thread"];

  if (v6)
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"report_spindump_main_thread"];
  }

  v7 = [v1 objectForKeyedSubscript:@"report_spindump_this_dispatchqueue"];

  if (v7)
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"report_spindump_this_dispatchqueue"];
  }

  v8 = [v1 objectForKeyedSubscript:@"report_spindump_dispatchqueue_label"];

  if (v8)
  {
    [v2 setObject:&stru_288387A58 forKeyedSubscript:@"report_spindump_dispatchqueue_label"];
  }

  v9 = [v2 copy];

  return v9;
}

_BYTE *OUTLINED_FUNCTION_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

BOOL WRIsDisabledWorkflow(void *a1)
{
  v1 = a1;
  v2 = [v1 URLByStandardizingPath];
  v3 = [v2 path];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 attributesOfItemAtPath:v3 error:0];

    if (v5)
    {
      v6 = [v5 fileType];
      if ([v6 isEqualToString:*MEMORY[0x277CCA1F0]])
      {
        v7 = [v5 fileSize] == 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = __error();
    v9 = *v8;
    v10 = _wrlog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      WRIsDisabledWorkflow_cold_1();
    }

    v7 = 0;
    *__error() = v9;
  }

  return v7;
}

void sub_2746FC87C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2746FD07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _WRGetString(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:v6];
  }

  v10 = v9;

  [v10 length];

  return v10;
}

void sub_2746FF604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_5_0(uint64_t a1, const char *a2)
{
  v5 = *(v3 + 120);

  return objc_getProperty(v2, a2, v5, 1);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_8_0(uint64_t a1, const char *a2, ptrdiff_t a3)
{

  return objc_getProperty(v3, a2, a3, 1);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void WRProcessIsBeingDebugged_cold_1()
{
  __error();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __WRCheckForBadWorkflowDict_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2746E5000, a2, OS_LOG_TYPE_FAULT, "unhandled workflow array key %{public}@", &v2, 0xCu);
}

void __WRCheckForBadSignpostDict_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2746E5000, a2, OS_LOG_TYPE_FAULT, "unhandled signpost array key %{public}@", &v2, 0xCu);
}

void WRIsDisabledWorkflow_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}