uint64_t __CNALoggingContextDebug_block_invoke()
{
  CNALoggingContextDebug_cn_once_object_2 = os_log_create("com.apple.contacts.autocomplete", "debug");

  return MEMORY[0x2821F96F8]();
}

id CNALoggingContextDebug(uint64_t a1)
{
  if (CNALoggingContextDebug_cn_once_token_2 != -1)
  {
    CNALoggingContextDebug_cold_1();
  }

  v2 = CNALoggingContextDebug_cn_once_object_2;

  return v2;
}

id CNALoggingContextTriage(uint64_t a1)
{
  if (CNALoggingContextTriage_cn_once_token_4 != -1)
  {
    CNALoggingContextTriage_cold_1();
  }

  v2 = CNALoggingContextTriage_cn_once_object_4;

  return v2;
}

uint64_t __CNALoggingContextTriage_block_invoke()
{
  CNALoggingContextTriage_cn_once_object_4 = os_log_create("com.apple.contacts.autocomplete", "triage");

  return MEMORY[0x2821F96F8]();
}

id CNALoggingContextPerformance(uint64_t a1)
{
  if (CNALoggingContextPerformance_cn_once_token_0 != -1)
  {
    CNALoggingContextPerformance_cold_1();
  }

  v2 = CNALoggingContextPerformance_cn_once_object_0;

  return v2;
}

uint64_t __CNALoggingContextPerformance_block_invoke()
{
  CNALoggingContextPerformance_cn_once_object_0 = os_log_create("com.apple.contacts.autocomplete", "performance");

  return MEMORY[0x2821F96F8]();
}

void __LoadPeopleSuggester_block_invoke()
{
  LoadPeopleSuggester_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_0()
{
  LoadPeopleSuggester_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_1()
{
  LoadPeopleSuggester_frameworkLibrary_1 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_2()
{
  LoadPeopleSuggester_frameworkLibrary_2 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

void __LoadPeopleSuggester_block_invoke_3()
{
  LoadPeopleSuggester_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary_3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadPeopleSuggester_block_invoke_cold_1();
  }
}

Class init_PSPredictionContext()
{
  if (LoadPeopleSuggester_loadPredicate_2 != -1)
  {
    init_PSAutocompleteSuggestion_cold_1();
  }

  result = objc_getClass("_PSPredictionContext");
  class_PSPredictionContext = result;
  get_PSPredictionContextClass = _PSPredictionContextFunction;
  return result;
}

Class init_PSPredictionContext_0()
{
  if (LoadPeopleSuggester_loadPredicate_3 != -1)
  {
    init_PSPredictionContext_cold_1();
  }

  result = objc_getClass("_PSPredictionContext");
  class_PSPredictionContext_0 = result;
  get_PSPredictionContextClass_0 = _PSPredictionContextFunction_0;
  return result;
}

Class init_PSSuggester()
{
  if (LoadPeopleSuggester_loadPredicate != -1)
  {
    init_PSSuggester_cold_1();
  }

  result = objc_getClass("_PSSuggester");
  class_PSSuggester = result;
  get_PSSuggesterClass = _PSSuggesterFunction;
  return result;
}

Class init_PSSuggester_0()
{
  if (LoadPeopleSuggester_loadPredicate_0 != -1)
  {
    init_PSSuggester_cold_1_0();
  }

  result = objc_getClass("_PSSuggester");
  class_PSSuggester_0 = result;
  get_PSSuggesterClass_0 = _PSSuggesterFunction_0;
  return result;
}

Class init_PSSuggester_1()
{
  if (LoadPeopleSuggester_loadPredicate_2 != -1)
  {
    init_PSAutocompleteSuggestion_cold_1();
  }

  result = objc_getClass("_PSSuggester");
  class_PSSuggester_1 = result;
  get_PSSuggesterClass_1 = _PSSuggesterFunction_1;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class init_PSCNAutocompleteFeedback()
{
  if (LoadPeopleSuggester_loadPredicate_0 != -1)
  {
    init_PSSuggester_cold_1_0();
  }

  result = objc_getClass("_PSCNAutocompleteFeedback");
  class_PSCNAutocompleteFeedback = result;
  get_PSCNAutocompleteFeedbackClass = _PSCNAutocompleteFeedbackFunction;
  return result;
}

id sForkJoinCleanup_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _cn_filter:*MEMORY[0x277CFBD18]];
  v3 = [v2 _cn_flatten];

  return v3;
}

uint64_t CNAutocompleteIsDebugLoggingEnabled()
{
  v0 = _CNAInternalBuild();
  v1 = [MEMORY[0x277CFBEE8] standardPreferences];
  v2 = v1;
  if (v0)
  {
    v3 = [v1 userHasOptedOutOfPreference:@"CNAutocompleteLogEnabled"] ^ 1;
  }

  else
  {
    v3 = [v1 userHasOptedInToPreference:@"CNAutocompleteLogEnabled"];
  }

  return v3;
}

uint64_t _CNAInternalBuild()
{
  v0 = [MEMORY[0x277CFBE10] currentEnvironment];
  v1 = [v0 isInternalBuild];

  return v1;
}

uint64_t sub_215602920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_215656A9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ComposeRecipient.Identifier(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_215602A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_215656A9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ComposeRecipient.Identifier(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_215602C14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sRecentContactLogDescription_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = a2;
  v4 = [v2 array];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 description];
  v7 = [v5 stringWithFormat:@"%@", v6];
  [v4 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v3 lastSendingAddress];
  v10 = [v8 stringWithFormat:@"%@", v9];
  [v4 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 mostRecentDate];

  v13 = [v11 stringWithFormat:@"%@", v12];
  [v4 addObject:v13];

  v14 = [v4 componentsJoinedByString:{@", "}];

  return v14;
}

void sub_215604018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215604478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_215604898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_215605020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CNAutocompleteIsSortingLoggingEnabled()
{
  v0 = [MEMORY[0x277CFBEE8] standardPreferences];
  v1 = [v0 userHasOptedInToPreference:@"CNAutocompleteSortingLogEnabled"];

  return v1;
}

uint64_t CNAutocompleteIsProbesLoggingEnabled()
{
  v0 = [MEMORY[0x277CFBEE8] standardPreferences];
  v1 = [v0 BOOLForKey:@"CNAutocompleteProbesLogEnabled"];

  return v1;
}

id CNALoggingContextSorting(uint64_t a1)
{
  if (CNALoggingContextSorting_cn_once_token_1 != -1)
  {
    CNALoggingContextSorting_cold_1();
  }

  v2 = CNALoggingContextSorting_cn_once_object_1;

  return v2;
}

uint64_t __CNALoggingContextSorting_block_invoke()
{
  CNALoggingContextSorting_cn_once_object_1 = os_log_create("com.apple.contacts.autocomplete", "sorting");

  return MEMORY[0x2821F96F8]();
}

id CNALoggingContextProbes(uint64_t a1)
{
  if (CNALoggingContextProbes_cn_once_token_3 != -1)
  {
    CNALoggingContextProbes_cold_1();
  }

  v2 = CNALoggingContextProbes_cn_once_object_3;

  return v2;
}

uint64_t __CNALoggingContextProbes_block_invoke()
{
  CNALoggingContextProbes_cn_once_object_3 = os_log_create("com.apple.contacts.autocomplete", "probes");

  return MEMORY[0x2821F96F8]();
}

void sub_21560617C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSGSuggestionsService()
{
  if (LoadCoreSuggestions_loadPredicate != -1)
  {
    initSGSuggestionsService_cold_1();
  }

  result = objc_getClass("SGSuggestionsService");
  classSGSuggestionsService = result;
  getSGSuggestionsServiceClass = SGSuggestionsServiceFunction;
  return result;
}

void __LoadCoreSuggestions_block_invoke()
{
  LoadCoreSuggestions_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions", 1);
  if (!LoadCoreSuggestions_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadCoreSuggestions_block_invoke_cold_1();
  }
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

Class initEKDirectorySearchOperation()
{
  if (LoadEventKit_loadPredicate != -1)
  {
    initEKDirectorySearchOperation_cold_1();
  }

  result = objc_getClass("EKDirectorySearchOperation");
  classEKDirectorySearchOperation = result;
  getEKDirectorySearchOperationClass = EKDirectorySearchOperationFunction;
  return result;
}

void __LoadEventKit_block_invoke()
{
  LoadEventKit_frameworkLibrary = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 1);
  if (!LoadEventKit_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadEventKit_block_invoke_cold_1();
  }
}

void sub_215608958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21560B0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sNameComponentsFromContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 contactType] == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 givenName];
    v5 = [v2 familyName];
    v6 = [v2 nickname];
    v7 = [v2 nameSuffix];
    v3 = [CNAutocompleteNameComponents nameComponentsWithFirstName:v4 lastName:v5 nickname:v6 nameSuffix:v7];
  }

  return v3;
}

void sub_21560F48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sIsContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sContainsAlphanumericCharacters_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 alphanumericCharacterSet];
  v5 = [v3 _cn_containsCharacterInSet:v4];

  return v5;
}

Class initEKEventStore()
{
  if (LoadEventKit_loadPredicate_0 != -1)
  {
    initEKEventStore_cold_1();
  }

  result = objc_getClass("EKEventStore");
  classEKEventStore = result;
  getEKEventStoreClass = EKEventStoreFunction;
  return result;
}

void __LoadEventKit_block_invoke_0()
{
  LoadEventKit_frameworkLibrary_0 = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 1);
  if (!LoadEventKit_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadEventKit_block_invoke_cold_1();
  }
}

BOOL _block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = a2;
  v7 = [v4 array];
  v8 = [v6 displayName];
  v9 = [CNAutocompleteTokenMatcher tokensForNameString:v8];
  [v7 addObjectsFromArray:v9];

  v10 = [v6 address];

  [v7 _cn_addNonNilObject:v10];
  v11 = [CNAutocompleteTokenMatcher tokensForNameString:v5];

  v12 = [CNAutocompleteTokenMatcher doSearchTokens:v11 matchNameTokens:v7];
  return v12;
}

uint64_t _block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 kind];
  v3 = [v2 isEqual:*MEMORY[0x277D00EC8]];

  return v3 ^ 1u;
}

void sub_215618930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_21561B11C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_21561C004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21561C688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21561CBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CNAutocompleteDelegateMultipleCallbacks(void *a1)
{
  v1 = a1;
  v2 = CNALoggingContextTriage(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    CNAutocompleteDelegateMultipleCallbacks_cold_1(v1, v2);
  }
}

id contactSearchLog(uint64_t a1)
{
  if (contactSearchLog_cn_once_token_0 != -1)
  {
    contactSearchLog_cold_1();
  }

  v2 = contactSearchLog_cn_once_object_0;

  return v2;
}

uint64_t __CNGuardOSLog_block_invoke()
{
  CNGuardOSLog_cn_once_object_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x2821F96F8]();
}

uint64_t __contactSearchLog_block_invoke()
{
  contactSearchLog_cn_once_object_0 = os_log_create("com.apple.contacts.autocomplete", "contactsearch");

  return MEMORY[0x2821F96F8]();
}

Class init_PSSuggestion()
{
  if (LoadPeopleSuggester_loadPredicate_1 != -1)
  {
    init_PSSuggestion_cold_1();
  }

  result = objc_getClass("_PSSuggestion");
  class_PSSuggestion = result;
  get_PSSuggestionClass = _PSSuggestionFunction;
  return result;
}

Class init_PSRecipient()
{
  if (LoadPeopleSuggester_loadPredicate_1 != -1)
  {
    init_PSSuggestion_cold_1();
  }

  result = objc_getClass("_PSRecipient");
  class_PSRecipient = result;
  get_PSRecipientClass = _PSRecipientFunction;
  return result;
}

id CNAutocompleteProbeBatchKey(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v2 = [v1 description];
  v3 = [@"batch" stringByAppendingString:v2];

  return v3;
}

__CFString *CNAutocompleteProbeBoolKey(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *CNAutocompleteProbeSourceTypeKey(uint64_t a1)
{
  v1 = a1;
  v2 = [CNAutocompleteResult isSourceTypeConsideredSuggestion:a1];
  v3 = @"Duet Promoted";
  if ((v1 & 0x10) == 0)
  {
    v3 = @"Other";
  }

  if (v2)
  {
    return @"Pure Suggestions";
  }

  else
  {
    return v3;
  }
}

id CNAutocompleteProbeDuetModelID()
{
  v0 = [MEMORY[0x277CFE0E0] loggingTagForAutocompleteFeedback];
  v1 = [@"Duet" stringByAppendingString:v0];

  return v1;
}

Class init_PSAutocompleteSuggestion()
{
  if (LoadPeopleSuggester_loadPredicate_2 != -1)
  {
    init_PSAutocompleteSuggestion_cold_1();
  }

  result = objc_getClass("_PSAutocompleteSuggestion");
  class_PSAutocompleteSuggestion = result;
  get_PSAutocompleteSuggestionClass = _PSAutocompleteSuggestionFunction;
  return result;
}

uint64_t __CNResultWithQoS_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id sNormalizeSearchToken_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  if ([v2 _cn_containsCharacterInSet:v3])
  {
    v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [v2 componentsSeparatedByCharactersInSet:v4];
    v6 = [v5 componentsJoinedByString:&stru_282787720];

    v2 = v6;
  }

  return v2;
}

uint64_t sSortByPassingTest_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t (**a4)(id, id))
{
  v6 = a4 + 2;
  v7 = a4[2];
  v8 = a4;
  v9 = a3;
  v10 = v7(v8, a2);
  v11 = (*v6)(v8, v9);

  if ((v10 ^ 1 | v11))
  {
    return (v10 ^ 1) & v11;
  }

  else
  {
    return -1;
  }
}

uint64_t sSortResultsByPreferredDomain_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortResultsByPreferredDomain_block_invoke_3_cold_1();
  }

  v8 = sSortByPassingTest_block_invoke(v7, v4, v5, __block_literal_global_3);
  return v8;
}

uint64_t sSortResultsByCategory_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [objc_opt_class() category];
  v7 = [objc_opt_class() category];
  v8 = CNALoggingContextSorting(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478595;
    v12 = v4;
    v13 = 2048;
    v14 = v6;
    v15 = 2113;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    _os_log_debug_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEBUG, "Comparing type of %{private}@ (%lu) with %{private}@ (%lu)", &v11, 0x2Au);
  }

  if (v6 < v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 > v7;
  }

  return v9;
}

uint64_t sSortResultsByDisplayName_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortResultsByDisplayName_block_invoke_5_cold_1();
  }

  v7 = [v4 displayName];
  v8 = [v5 displayName];
  v9 = [v7 localizedCaseInsensitiveCompare:v8];

  return v9;
}

uint64_t sSortResultsByAddress_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 value];
  v7 = [v6 stringForSorting];

  v8 = [v5 value];
  v9 = [v8 stringForSorting];

  v11 = CNALoggingContextSorting(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138478595;
    v15 = v4;
    v16 = 2113;
    v17 = v7;
    v18 = 2113;
    v19 = v5;
    v20 = 2113;
    v21 = v9;
    _os_log_debug_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEBUG, "Comparing address of %{private}@ (%{private}@) with %{private}@ (%{private}@)", &v14, 0x2Au);
  }

  v12 = [v7 localizedCaseInsensitiveCompare:v9];
  return v12;
}

uint64_t sSortRecentResultsBySendingAddressMatch_block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortRecentResultsBySendingAddressMatch_block_invoke_8_cold_1();
  }

  v8 = sSortByPassingTest_block_invoke(v7, v4, v5, __block_literal_global_15_0);
  return v8;
}

uint64_t sSortRecentResultsByCompletingChosenGroup_block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CNALoggingContextSorting(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sSortRecentResultsByCompletingChosenGroup_block_invoke_10_cold_1();
  }

  v8 = sSortByPassingTest_block_invoke(v7, v4, v5, __block_literal_global_20_1);
  return v8;
}

uint64_t sSortRecentResultsByDate_block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 date];
  v7 = [v5 date];
  v8 = [v6 compare:v7];

  v10 = CNALoggingContextSorting(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sSortRecentResultsByDate_block_invoke_11_cold_1();
  }

  if (v8 == 1)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  if (v8 == -1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

uint64_t sSortRecentResultsByDateCount_block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateCount];
  v7 = [v5 dateCount];
  v8 = CNALoggingContextSorting(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478595;
    v12 = v4;
    v13 = 2048;
    v14 = v6;
    v15 = 2113;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    _os_log_debug_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEBUG, "Comparing date count of %{private}@ (%lu) with %{private}@ (%lu)", &v11, 0x2Au);
  }

  if (v6 > v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 < v7;
  }

  return v9;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x2Au);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_21562B33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21562B8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initEKDirectorySearchOperation_0()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKDirectorySearchOperation");
  classEKDirectorySearchOperation_0 = result;
  getEKDirectorySearchOperationClass_0 = EKDirectorySearchOperationFunction_0;
  return result;
}

void __LoadEventKit_block_invoke_1()
{
  LoadEventKit_frameworkLibrary_1 = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 1);
  if (!LoadEventKit_frameworkLibrary_1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadEventKit_block_invoke_cold_1();
  }
}

Class initEKEphemeralCacheEventStoreProvider()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKEphemeralCacheEventStoreProvider");
  classEKEphemeralCacheEventStoreProvider = result;
  getEKEphemeralCacheEventStoreProviderClass = EKEphemeralCacheEventStoreProviderFunction;
  return result;
}

Class initEKEventStore_0()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKEventStore");
  classEKEventStore_0 = result;
  getEKEventStoreClass_0 = EKEventStoreFunction_0;
  return result;
}

Class initEKDirectorySearchQuery()
{
  if (LoadEventKit_loadPredicate_1 != -1)
  {
    initEKDirectorySearchOperation_cold_1_0();
  }

  result = objc_getClass("EKDirectorySearchQuery");
  classEKDirectorySearchQuery = result;
  getEKDirectorySearchQueryClass = EKDirectorySearchQueryFunction;
  return result;
}

id sNormalizeCaseDiactriticsAndCharacterWidth_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNAutocompleteResult localeForHashing];
  v4 = [v2 stringByFoldingWithOptions:385 locale:v3];

  return v4;
}

id sNormalizePhoneNumberFormatting_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNAutocompleteResult localeForHashing];
  [v3 objectForKey:*MEMORY[0x277CBE690]];

  v4 = CFPhoneNumberCreate();
  if (v4)
  {
    v5 = v4;
    String = CFPhoneNumberCreateString();
    v7 = v2;
    if (String)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithString:String];

      CFRelease(String);
      v7 = v8;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = v2;
  }

  return v7;
}

id CNAutocompleteResultAddressStringForHashingTransform_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = (*(sNormalizeCaseDiactriticsAndCharacterWidth + 2))(sNormalizeCaseDiactriticsAndCharacterWidth, a2);
  v3 = (*(sNormalizePhoneNumberFormatting + 2))(sNormalizePhoneNumberFormatting, v2);

  return v3;
}

id CNAutocompleteResultUserInfoDescriptionTransform_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = CNAutocompleteResultUserInfoDescriptionTransform_block_invoke_8;
  v9[3] = &unk_2781C4E10;
  v10 = v2;
  v5 = v2;
  v6 = [v4 _cn_map:v9];
  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

id CNAutocompleteResultUserInfoDescriptionTransform_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v2 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

void *sub_2156315B4(uint64_t a1)
{
  v2 = type metadata accessor for ComposeRecipient.Identifier(0);
  v50 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v56 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v49 - v5;
  v7 = type metadata accessor for ComposeRecipient(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = v49 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v49[1] = v2;
  v54 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = a1 + v54;
  v16 = *(v11 + 72);
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F98];
  v51 = v6;
  v52 = v7;
  v53 = v16;
  while (1)
  {
    sub_215631B20(v15, v13, type metadata accessor for ComposeRecipient);
    sub_215631B20(&v13[*(v7 + 28)], v6, type metadata accessor for ComposeRecipient.Identifier);
    if (!v18[2])
    {
      break;
    }

    v20 = sub_215631CA0(v6);
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = *(v18[7] + 8 * v20);
    v23 = *&v13[*(v7 + 24)];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = sub_2156327F4(v17);
      if ((v22 & 0x8000000000000000) != 0)
      {
LABEL_27:
        __break(1u);
LABEL_28:

        return v17;
      }
    }

    if (v22 >= v17[2])
    {
      goto LABEL_33;
    }

    v24 = v23;
    v25 = v10;
    v26 = v53;
    sub_215631B88(v24);
    v19 = v26;
    v10 = v25;
    sub_215632794(v6, type metadata accessor for ComposeRecipient.Identifier);
    sub_215632794(v13, type metadata accessor for ComposeRecipient);
LABEL_4:
    v15 += v19;
    if (!--v14)
    {
      goto LABEL_28;
    }
  }

  v55 = v14;
  v27 = v17;
  v28 = v10;
  v29 = v27;
  v30 = v27[2];
  v31 = v56;
  sub_215631B20(v6, v56, type metadata accessor for ComposeRecipient.Identifier);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v18;
  v34 = sub_215631CA0(v31);
  v35 = v18[2];
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (!__OFADD__(v35, v36))
  {
    v38 = v33;
    if (v18[3] < v37)
    {
      sub_21563201C(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_215631CA0(v56);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_34;
      }

      v34 = v39;
      v18 = v57;
      if ((v38 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_18:
      *(v18[7] + 8 * v34) = v30;
      sub_215632794(v56, type metadata accessor for ComposeRecipient.Identifier);
LABEL_22:
      v10 = v28;
      sub_215631B20(v13, v28, type metadata accessor for ComposeRecipient);
      v17 = v29;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v6 = v51;
      if ((v45 & 1) == 0)
      {
        v17 = sub_215631D24(0, v29[2] + 1, 1, v29);
      }

      v7 = v52;
      v14 = v55;
      v47 = v17[2];
      v46 = v17[3];
      if (v47 >= v46 >> 1)
      {
        v17 = sub_215631D24((v46 > 1), v47 + 1, 1, v17);
      }

      sub_215632794(v6, type metadata accessor for ComposeRecipient.Identifier);
      sub_215632794(v13, type metadata accessor for ComposeRecipient);
      v17[2] = v47 + 1;
      v19 = v53;
      sub_215632878(v10, v17 + v54 + v47 * v53, type metadata accessor for ComposeRecipient);
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v57;
      if (v33)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_215632550();
      v18 = v57;
      if (v38)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v18[(v34 >> 6) + 8] |= 1 << v34;
    v41 = v56;
    sub_215631B20(v56, v18[6] + *(v50 + 72) * v34, type metadata accessor for ComposeRecipient.Identifier);
    *(v18[7] + 8 * v34) = v30;
    sub_215632794(v41, type metadata accessor for ComposeRecipient.Identifier);
    v42 = v18[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_32;
    }

    v18[2] = v44;
    goto LABEL_22;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_21565714C();
  __break(1u);
  return result;
}

uint64_t sub_215631B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215631B88(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_215631EFC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_215631CA0(uint64_t a1)
{
  type metadata accessor for ComposeRecipient.Identifier(0);
  sub_2156328E0(&qword_27CA67E38, &protocol conformance descriptor for ComposeRecipient.Identifier);
  v2 = sub_215656DEC();

  return sub_2156323B0(a1, v2);
}

void *sub_215631D24(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E40, &unk_21565CCD0);
  v10 = *(type metadata accessor for ComposeRecipient(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ComposeRecipient(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_215631EFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E28, &unk_21565C4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21563201C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ComposeRecipient.Identifier(0);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E30, &unk_21565C2E0);
  v41 = v4;
  result = sub_2156570EC();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v42 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v39 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v41)
      {
        sub_215632878(v25, v7, type metadata accessor for ComposeRecipient.Identifier);
      }

      else
      {
        sub_215631B20(v25, v7, type metadata accessor for ComposeRecipient.Identifier);
      }

      v26 = v7;
      v27 = *(*(v42 + 56) + 8 * v23);
      sub_2156328E0(&qword_27CA67E38, &protocol conformance descriptor for ComposeRecipient.Identifier);
      v28 = v26;
      result = sub_215656DEC();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_215632878(v28, *(v11 + 48) + v24 * v19, type metadata accessor for ComposeRecipient.Identifier);
      *(*(v11 + 56) + 8 * v19) = v27;
      v7 = v28;
      ++*(v11 + 16);
      v10 = v42;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_2156323B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_215631B20(*(v2 + 48) + v11 * v9, v7, type metadata accessor for ComposeRecipient.Identifier);
      sub_2156328E0(&qword_27CA67E48, ")۽lԛ");
      v12 = sub_215656E1C();
      sub_215632794(v7, type metadata accessor for ComposeRecipient.Identifier);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_215632550()
{
  v1 = v0;
  v2 = type metadata accessor for ComposeRecipient.Identifier(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E30, &unk_21565C2E0);
  v4 = *v0;
  v5 = sub_2156570DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_215631B20(*(v4 + 48) + v21, v27, type metadata accessor for ComposeRecipient.Identifier);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        result = sub_215632878(v20, *(v29 + 48) + v21, type metadata accessor for ComposeRecipient.Identifier);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_215632794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
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

uint64_t sub_215632878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2156328E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipient.Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_215632A04(void *a1, uint64_t *a2)
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

void *sub_215632A34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_215632A60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_215632B4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_215632B80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ComposeRecipient.Source.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_2156332BC(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2156332BC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x746E656365722ELL;
  *(v5 + 5) = 0xE700000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_2156332BC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x746361746E6F632ELL;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_2156332BC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x747365676775732ELL;
    *(v11 + 5) = 0xEB000000006E6F69;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_2156332BC((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x8000000215664CE0;
    if ((v1 & 0x10) == 0)
    {
LABEL_20:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_2156332BC((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0x746369646572702ELL;
  *(v18 + 5) = 0xEB000000006E6F69;
  if ((v1 & 0x20) == 0)
  {
LABEL_21:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_37:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_2156332BC((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[16 * v20];
  strcpy(v21 + 32, ".supplemental");
  *(v21 + 23) = -4864;
  if ((v1 & 0x40) == 0)
  {
LABEL_22:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_42:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_2156332BC((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[16 * v23];
  *(v24 + 4) = 0x61646E656C61632ELL;
  *(v24 + 5) = 0xEF72657672655372;
  if ((v1 & 0x80) == 0)
  {
LABEL_23:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_47:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_2156332BC((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0x646567616E616D2ELL;
  *(v27 + 5) = 0xEF4449656C707041;
  if ((v1 & 0x100) == 0)
  {
LABEL_24:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_25;
    }

LABEL_57:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
    }

    v32 = *(v2 + 2);
    v31 = *(v2 + 3);
    if (v32 >= v31 >> 1)
    {
      v2 = sub_2156332BC((v31 > 1), v32 + 1, 1, v2);
    }

    *(v2 + 2) = v32 + 1;
    v33 = &v2[16 * v32];
    *(v33 + 4) = 0xD000000000000012;
    *(v33 + 5) = 0x8000000215664CC0;
    goto LABEL_62;
  }

LABEL_52:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2156332BC(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_2156332BC((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0x69736E657478652ELL;
  *(v30 + 5) = 0xEA00000000006E6FLL;
  if ((v1 & 0x200) != 0)
  {
    goto LABEL_57;
  }

LABEL_25:
  if (!*(v2 + 2))
  {

    return 23899;
  }

LABEL_62:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E50, &unk_21565F460);
  sub_21563320C();
  v34 = sub_215656E0C();
  v36 = v35;

  MEMORY[0x21606D140](v34, v36);

  MEMORY[0x21606D140](23840, 0xE200000000000000);

  return 8283;
}

unint64_t sub_21563320C()
{
  result = qword_27CA68690;
  if (!qword_27CA68690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA67E50, &unk_21565F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68690);
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

char *sub_2156332BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68790, &qword_21565CB60);
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

unint64_t sub_2156333CC()
{
  result = qword_27CA67E58;
  if (!qword_27CA67E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E58);
  }

  return result;
}

unint64_t sub_215633424()
{
  result = qword_27CA67E60;
  if (!qword_27CA67E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E60);
  }

  return result;
}

unint64_t sub_21563347C()
{
  result = qword_27CA67E68;
  if (!qword_27CA67E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E68);
  }

  return result;
}

unint64_t sub_2156334D4()
{
  result = qword_27CA67E70;
  if (!qword_27CA67E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E70);
  }

  return result;
}

uint64_t _s6SourceVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s6SourceVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t ComposeRecipient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_215656A9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ComposeRecipient.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ComposeRecipient(0) + 20));

  return v1;
}

uint64_t ComposeRecipient.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ComposeRecipient(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ComposeRecipient.handles.getter()
{
  type metadata accessor for ComposeRecipient(0);
}

uint64_t ComposeRecipient.handles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ComposeRecipient(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ComposeRecipient.contactIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ComposeRecipient(0) + 28);

  return sub_2156337F4(v3, a1);
}

uint64_t sub_2156337F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215633878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ComposeRecipient.contactIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ComposeRecipient(0) + 28);

  return sub_2156338F4(a1, v3);
}

uint64_t sub_2156338F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ComposeRecipient.source.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ComposeRecipient(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ComposeRecipient.source.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ComposeRecipient(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ComposeRecipient.init(id:name:handles:contactIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_215656A8C();
  v12 = type metadata accessor for ComposeRecipient(0);
  v13 = (a6 + v12[5]);
  *v13 = a2;
  v13[1] = a3;
  *(a6 + v12[6]) = a4;
  sub_2156337F4(a5, a6 + v12[7]);
  sub_215633B44();
  sub_2156571CC();
  sub_215633B98(a5);
  v14 = sub_215656A9C();
  result = (*(*(v14 - 8) + 8))(a1, v14);
  *(a6 + v12[8]) = v16;
  return result;
}

unint64_t sub_215633B44()
{
  result = qword_27CA67E78;
  if (!qword_27CA67E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E78);
  }

  return result;
}

uint64_t sub_215633B98(uint64_t a1)
{
  v2 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComposeRecipient.init(id:name:handles:contactIdentifier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  sub_215656A8C();
  v14 = sub_215656A9C();
  (*(*(v14 - 8) + 8))(a1, v14);
  v15 = type metadata accessor for ComposeRecipient(0);
  v16 = (a7 + v15[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + v15[6]) = a4;
  result = sub_215633CB8(a5, a7 + v15[7]);
  *(a7 + v15[8]) = v13;
  return result;
}

uint64_t sub_215633CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ComposeRecipient.handle.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ComposeRecipient(0);
  v4 = *(v1 + *(result + 24));
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = *(v4 + 72);
    v10 = *(v4 + 48);
    *(a1 + 16) = v10;
    sub_215633DC0(v5, v6, v10);
    sub_215633DD8(v7, v8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    *(a1 + 16) = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_215633DC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_215633DD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
  }

  return result;
}

void ComposeRecipient.aliases.getter()
{
  v1 = *(v0 + *(type metadata accessor for ComposeRecipient(0) + 24));
  v2 = *(v1 + 16);
  if (v2)
  {

    sub_215634B9C(v1, v1 + 32, 1, (2 * v2) | 1);
  }

  else
  {
  }
}

uint64_t sub_215633E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_215656A9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_215633EB8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = type metadata accessor for ComposeRecipient.Identifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_215656D6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215656A8C();
  v12 = sub_2156548A0();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_215656F7C();
  v14 = sub_215656D4C();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v44 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138477827;
    *(v16 + 4) = a1;
    *v17 = a1;
    v18 = a1;
    _os_log_impl(&dword_2155FE000, v14, v13, "Converting result for %{private}@", v16, 0xCu);
    sub_215635240(v17, &qword_27CA68780, &qword_21565CB90);
    MEMORY[0x21606DDB0](v17, -1, -1);
    v7 = v44;
    MEMORY[0x21606DDB0](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v19 = [objc_opt_self() sharedDefaults];
  v20 = [v19 shortNameFormatPrefersNicknames];

  if (v20)
  {
    v21 = [a1 nameComponents];
    if (v21)
    {

      v22 = [a1 nameComponents];
      if (!v22)
      {
        goto LABEL_22;
      }

      v23 = v22;
      v24 = [v22 nickname];

      if (v24)
      {
        v25 = sub_215656E5C();
        v27 = v26;

        v28 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v28 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v29 = [a1 displayName];
  if (v29)
  {
    v30 = v29;
    v25 = sub_215656E5C();
    v27 = v31;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

LABEL_14:
  v32 = type metadata accessor for ComposeRecipient(0);
  v33 = (a3 + v32[5]);
  *v33 = v25;
  v33[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E28, &unk_21565C4F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21565C4E0;
  v35 = [a1 value];
  if (v35)
  {
    v36 = ComposeRecipient.Handle.init(autocompleteValue:availability:)(v35, v45, v34 + 32);
    *(a3 + v32[6]) = v34;
    v37 = [a1 identifier];
    if (v37)
    {
      v38 = v37;
      v39 = sub_215656E5C();
      v41 = v40;

      *v7 = v39;
      v7[1] = v41;
    }

    else
    {
      sub_215656A8C();
    }

    swift_storeEnumTagMultiPayload();
    sub_215633CB8(v7, a3 + v32[7]);
    v42 = [a1 sourceType];
    if ((v42 & 0x8000000000000000) == 0)
    {
      ComposeRecipient.Source.init(rawValue:)(v42, &v46);

      *(a3 + v32[8]) = v46;
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t static ComposeRecipient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21565713C() & 1) == 0 || (sub_21563439C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];

  return _s20ContactsAutocomplete16ComposeRecipientV10IdentifierO2eeoiySbAE_AEtFZ_0(a1 + v10, a2 + v10);
}

uint64_t sub_21563439C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v12 = 0;
    return v12 & 1;
  }

  if (!v2 || a1 == a2)
  {
    v12 = 1;
    return v12 & 1;
  }

  v3 = 0;
  while (1)
  {
    result = *(a1 + v3 + 32);
    v5 = *(a1 + v3 + 56);
    v6 = *(a1 + v3 + 64);
    v16 = result;
    v17 = *(a1 + v3 + 40);
    v18 = *(a1 + v3 + 48);
    if (!v2)
    {
      break;
    }

    v7 = *(a2 + v3 + 32);
    v8 = *(a2 + v3 + 40);
    v9 = *(a2 + v3 + 56);
    v10 = *(a2 + v3 + 64);
    v15 = v2;
    v11 = *(a2 + v3 + 48);
    sub_215633DC0(result, *(a1 + v3 + 40), *(a1 + v3 + 48));
    sub_215633DD8(v5, v6);

    sub_215633DC0(v7, v8, v11);
    sub_215633DD8(v9, v10);
    sub_2156352A0();

    v12 = sub_215656E1C();
    sub_2156352F4(v7, v8, v11);
    sub_21563530C(v9, v10);

    sub_2156352F4(v16, v17, v18);
    sub_21563530C(v5, v6);

    if (v12)
    {
      v2 = v15 - 1;
      v3 += 48;
      if (v15 != 1)
      {
        continue;
      }
    }

    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_215634548(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (!v10 && (sub_21565713C() & 1) == 0 || (sub_21563439C(*(a1 + a3[6]), *(a2 + a3[6])) & 1) == 0)
  {
    return 0;
  }

  v11 = a3[7];

  return _s20ContactsAutocomplete16ComposeRecipientV10IdentifierO2eeoiySbAE_AEtFZ_0(a1 + v11, a2 + v11);
}

uint64_t ComposeRecipient.Identifier.hash(into:)(uint64_t a1)
{
  v2 = sub_215656A9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComposeRecipient.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2156337F4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21606D450](1);
    sub_215635018(&qword_27CA67E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_215656DFC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x21606D450](0);
    sub_215656E8C();
  }
}

uint64_t ComposeRecipient.Identifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_215656A9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComposeRecipient.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21565719C();
  sub_2156337F4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21606D450](1);
    sub_215635018(&qword_27CA67E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_215656DFC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x21606D450](0);
    sub_215656E8C();
  }

  return sub_2156571BC();
}

uint64_t sub_2156349AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_215656A9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21565719C();
  sub_2156337F4(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x21606D450](1);
    sub_215635018(&qword_27CA67E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_215656DFC();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x21606D450](0);
    sub_215656E8C();
  }

  return sub_2156571BC();
}

void sub_215634B9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E28, &unk_21565C4F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s20ContactsAutocomplete16ComposeRecipientV10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_215656A9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComposeRecipient.Identifier(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E90, &qword_21565C628);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_2156337F4(a1, &v26 - v16);
  sub_2156337F4(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2156337F4(v17, v13);
    v22 = *v13;
    v21 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v18 && v21 == v18[1])
      {
      }

      else
      {
        v24 = sub_21565713C();

        if ((v24 & 1) == 0)
        {
          sub_215633B98(v17);
          goto LABEL_8;
        }
      }

      sub_215633B98(v17);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_215635240(v17, &qword_27CA67E90, &qword_21565C628);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_2156337F4(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v18, v4);
  v19 = sub_215656A7C();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
  sub_215633B98(v17);
  return v19 & 1;
}

uint64_t sub_215635018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_215635088(uint64_t a1)
{
  sub_215656A9C();
  if (v1 <= 0x3F)
  {
    sub_215635134();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ComposeRecipient.Identifier(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_215635134()
{
  if (!qword_27CA67E88)
  {
    v0 = sub_215656EFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA67E88);
    }
  }
}

uint64_t sub_2156351D4(uint64_t a1)
{
  result = sub_215656A9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_215635240(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2156352A0()
{
  result = qword_27CA67E98;
  if (!qword_27CA67E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67E98);
  }

  return result;
}

uint64_t sub_2156352F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_21563530C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
  }

  return result;
}

uint64_t HandleAvailability.Status.debugDescription.getter()
{
  v1 = 0x8FB8EF949BE2;
  if (*v0 != 1)
  {
    v1 = 9871074;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2728370160;
  }
}

uint64_t sub_2156353F8()
{
  v1 = 0x8FB8EF949BE2;
  if (*v0 != 1)
  {
    v1 = 9871074;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2728370160;
  }
}

uint64_t HandleAvailability.Service.debugDescription.getter()
{
  v1 = 0x6567617373654D69;
  if (*v0)
  {
    v1 = 5456722;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x656D695465636146;
  }
}

uint64_t _s20ContactsAutocomplete18HandleAvailabilityV6StatusO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t sub_215635508(uint64_t a1)
{
  v2 = *v1;
  sub_21565719C();
  MEMORY[0x21606D450](v2);
  return sub_2156571BC();
}

uint64_t sub_21563554C()
{
  v1 = 0x6567617373654D69;
  if (*v0)
  {
    v1 = 5456722;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x656D695465636146;
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

uint64_t sub_215635650(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_215656D6C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_215656D5C();
}

uint64_t sub_2156356D0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  sub_215656DBC();
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 65) = *a2;

  return MEMORY[0x2822009F8](sub_21563576C, 0, 0);
}

id sub_21563576C()
{
  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v1 = sub_215656D6C();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_27CA6DFD0);
  v2 = sub_215656F6C();

  v3 = sub_215656D4C();
  v4 = os_log_type_enabled(v3, v2);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_2155FE000, v3, v2, "Looking up last known status for %ld handles (currentIDStatus).", v6, 0xCu);
    MEMORY[0x21606DDB0](v6, -1, -1);
  }

  else
  {
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = *(v0 + 65);
    v10 = *(v0 + 24);
    sub_215656DAC();
    type metadata accessor for IDSLookup();
    swift_allocObject();
    v11 = sub_21563BEF0(v8, 0xD00000000000001FLL, 0x8000000215664D00, v10);
    *(v0 + 40) = v11;

    *(v0 + 64) = v9;
    v14 = (*(*v11 + 112) + **(*v11 + 112));
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    *v12 = v0;
    v12[1] = sub_215635A10;
    v13 = *(v0 + 16);

    return v14(v13, v0 + 64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215635A10(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_215635B10, 0, 0);
}

uint64_t sub_215635B10()
{
  v12 = v0;
  v1 = sub_215656F6C();

  v2 = sub_215656D4C();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136380675;
    v5 = sub_215656DDC();
    v7 = sub_21563A06C(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2155FE000, v2, v1, "Status from helper: %{private}s.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x21606DDB0](v4, -1, -1);
    MEMORY[0x21606DDB0](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 56);

  return v8(v9);
}

void *sub_215635C98(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_21563BEF0(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_215635D34(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 88) + **(**v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

uint64_t sub_215635E68(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  sub_215656DBC();
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 57) = *a2;

  return MEMORY[0x2822009F8](sub_215635F04, 0, 0);
}

id sub_215635F04()
{
  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v1 = sub_215656D6C();
  __swift_project_value_buffer(v1, qword_27CA6DFD0);
  v2 = sub_215656F6C();

  v3 = sub_215656D4C();
  v4 = os_log_type_enabled(v3, v2);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_2155FE000, v3, v2, "Looking up uncached status for %ld handles (refreshIDStatus).", v6, 0xCu);
    MEMORY[0x21606DDB0](v6, -1, -1);
  }

  else
  {
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = *(v0 + 57);
    v10 = *(v0 + 24);
    sub_215656DAC();
    type metadata accessor for IDSLookup();
    swift_allocObject();
    v11 = sub_21563BEF0(v8, 0xD00000000000001FLL, 0x8000000215664D00, v10);
    *(v0 + 32) = v11;

    *(v0 + 56) = v9;
    v14 = (*(*v11 + 120) + **(*v11 + 120));
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_2156361A4;
    v13 = *(v0 + 16);

    return v14(v13, v0 + 56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2156361A4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2156362A4, 0, 0);
}

uint64_t sub_2156362A4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_215636318(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 88) + **(**v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

uint64_t sub_21563644C(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 56) = sub_21563C188(MEMORY[0x277D84F90]);
  *(v2 + 64) = sub_21563C2A0(v3);
  sub_21563C3A4(a1, v2 + 16);
  return v2;
}

uint64_t sub_2156364B8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 108) = *a2;
  return MEMORY[0x2822009F8](sub_2156364E0, 0, 0);
}

uint64_t sub_2156364E0()
{
  v64 = v0;
  v59 = sub_21563C3BC(MEMORY[0x277D84F90]);
  if (qword_27CA68D78 != -1)
  {
LABEL_40:
    swift_once();
  }

  v1 = sub_215656D6C();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_27CA6DFE8);
  v2 = sub_215656D4C();
  v3 = sub_215656F7C();
  v58 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 108);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v63 = v6;
    *v5 = 136315138;
    *(v58 + 107) = v4;
    v7 = sub_215656E7C();
    v9 = sub_21563A06C(v7, v8, &v63);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2155FE000, v2, v3, "Looking up status of handles for service .%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x21606DDB0](v6, -1, -1);
    v0 = v58;
    MEMORY[0x21606DDB0](v5, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v10 + 16);
  if (v11)
  {
    v60 = *(**(v0 + 48) + 104);
    v12 = MEMORY[0x277D84F90];
    v13 = (v10 + 40);
    while (1)
    {
      v61 = v12;
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = swift_bridgeObjectRetain_n();
      v18 = v60(v17);
      if (!*(v18 + 16))
      {

LABEL_18:

        v38 = sub_215656D4C();
        v39 = sub_215656F7C();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v63 = v41;
          *v40 = 136380675;
          *(v40 + 4) = sub_21563A06C(v15, v16, &v63);
          _os_log_impl(&dword_2155FE000, v38, v39, " - %{private}s: cache miss", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x21606DDB0](v41, -1, -1);
          MEMORY[0x21606DDB0](v40, -1, -1);
        }

        v12 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2156332BC(0, *(v61 + 2) + 1, 1, v61);
        }

        v43 = *(v12 + 2);
        v42 = *(v12 + 3);
        if (v43 >= v42 >> 1)
        {
          v12 = sub_2156332BC((v42 > 1), v43 + 1, 1, v12);
        }

        *(v12 + 2) = v43 + 1;
        v44 = &v12[16 * v43];
        *(v44 + 4) = v15;
        *(v44 + 5) = v16;
        goto LABEL_8;
      }

      v19 = sub_21563A68C(v15, v16, *(v0 + 108));
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }

      v22 = *(*(v18 + 56) + v19);

      v23 = sub_215656D4C();
      v24 = sub_215656F7C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63 = v57;
        *v25 = 136380931;
        *(v25 + 4) = sub_21563A06C(v15, v16, &v63);
        *(v25 + 12) = 2080;
        *(v58 + 106) = v22;
        v26 = sub_215656E7C();
        v28 = sub_21563A06C(v26, v27, &v63);

        *(v25 + 14) = v28;
        _os_log_impl(&dword_2155FE000, v23, v24, " - %{private}s: .%s", v25, 0x16u);
        swift_arrayDestroy();
        v0 = v58;
        MEMORY[0x21606DDB0](v57, -1, -1);
        MEMORY[0x21606DDB0](v25, -1, -1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v59;
      v30 = sub_21563A614(v15, v16);
      v32 = *(v59 + 16);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v36 = v31;
      if (*(v59 + 24) < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v49 = v22;
      v50 = v30;
      sub_21563B828();
      v30 = v50;
      v22 = v49;
      if ((v36 & 1) == 0)
      {
LABEL_27:
        v45 = v63;
        v63[(v30 >> 6) + 8] |= 1 << v30;
        v46 = (v45[6] + 16 * v30);
        *v46 = v15;
        v46[1] = v16;
        *(v45[7] + v30) = v22;
        v47 = v45[2];
        v34 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v34)
        {
          goto LABEL_39;
        }

        v59 = v45;
        v45[2] = v48;
        goto LABEL_7;
      }

LABEL_6:
      v14 = v30;

      v59 = v63;
      *(v63[7] + v14) = v22;
LABEL_7:
      v12 = v61;
LABEL_8:
      v13 += 2;
      if (!--v11)
      {
        goto LABEL_32;
      }
    }

    sub_21563A998(v35, isUniquelyReferenced_nonNull_native);
    v30 = sub_21563A614(v15, v16);
    if ((v36 & 1) != (v37 & 1))
    {

      return sub_21565714C();
    }

LABEL_26:
    if ((v36 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_32:
  *(v0 + 72) = v12;
  *(v0 + 80) = v59;
  *(v0 + 64) = v59;
  v51 = *(v0 + 108);
  v52 = *(v0 + 48);
  v53 = v52[5];
  v54 = v52[6];
  __swift_project_boxed_opaque_existential_1(v52 + 2, v53);
  *(v0 + 104) = v51;
  v62 = (*(v54 + 8) + **(v54 + 8));
  v55 = swift_task_alloc();
  *(v0 + 88) = v55;
  *v55 = v0;
  v55[1] = sub_215636C10;

  return v62(v12, v0 + 104, v53, v54);
}

uint64_t sub_215636C10(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_215636D30, 0, 0);
}

void sub_215636D30()
{
  v67 = v0;
  v1 = 0;
  v2 = v0[12];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v61 = v0[12];
  v6 = -1;
  v7 = -1 << *(v61 + 32);
  v63 = v0[6];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = v0[10];
  v11 = v0[8];
  v12 = v4;
  v59 = v9;
  v60 = v4;
  if ((v6 & v3) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v58 = *(v65 + 8);

      v58(v10);
      return;
    }

    v8 = *(v12 + 8 * v13);
    ++v1;
    if (v8)
    {
      v62 = v11;
      while (1)
      {
        v14 = __clz(__rbit64(v8)) | (v13 << 6);
        v15 = (*(v61 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(*(v61 + 56) + v14);
        v19 = *(v65 + 108);
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v63 + 56);
        v21 = v66;
        *(v63 + 56) = 0x8000000000000000;
        v64 = v16;
        v22 = sub_21563A68C(v16, v17, v19);
        v24 = v21[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_42;
        }

        v28 = v23;
        if (v21[3] >= v27)
        {
          v11 = v62;
          v31 = v18;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v23)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v32 = v22;
            sub_21563B990();
            v22 = v32;
            v21 = v66;
            if (v28)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v29 = *(v65 + 108);
          sub_21563AC38(v27, isUniquelyReferenced_nonNull_native);
          v21 = v66;
          v22 = sub_21563A68C(v64, v17, v29);
          v11 = v62;
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_38;
          }

          v31 = v18;
          v12 = v60;
          if (v28)
          {
LABEL_18:
            *(v21[7] + v22) = v31;
            goto LABEL_22;
          }
        }

        v33 = *(v65 + 108);
        v21[(v22 >> 6) + 8] |= 1 << v22;
        v34 = v21[6] + 24 * v22;
        *v34 = v64;
        *(v34 + 8) = v17;
        *(v34 + 16) = v33;
        *(v21[7] + v22) = v31;
        v35 = v21[2];
        v26 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v26)
        {
          goto LABEL_44;
        }

        v21[2] = v36;

LABEL_22:
        *(v63 + 56) = v21;
        swift_endAccess();

        v37 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v11;
        v38 = sub_21563A614(v64, v17);
        v40 = v11[2];
        v41 = (v39 & 1) == 0;
        v26 = __OFADD__(v40, v41);
        v42 = v40 + v41;
        if (v26)
        {
          goto LABEL_43;
        }

        v43 = v39;
        if (v11[3] < v42)
        {
          sub_21563A998(v42, v37);
          v11 = v66;
          v38 = sub_21563A614(v64, v17);
          if ((v43 & 1) != (v44 & 1))
          {
LABEL_38:

            sub_21565714C();
            return;
          }

LABEL_27:
          if (v43)
          {
            goto LABEL_28;
          }

          goto LABEL_30;
        }

        if (v37)
        {
          goto LABEL_27;
        }

        v45 = v38;
        sub_21563B828();
        v38 = v45;
        v11 = v66;
        if (v43)
        {
LABEL_28:
          *(v11[7] + v38) = v31;
          goto LABEL_32;
        }

LABEL_30:
        v11[(v38 >> 6) + 8] |= 1 << v38;
        v46 = (v11[6] + 16 * v38);
        *v46 = v64;
        v46[1] = v17;
        *(v11[7] + v38) = v31;
        v47 = v11[2];
        v26 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v26)
        {
          goto LABEL_45;
        }

        v11[2] = v48;

LABEL_32:
        v8 &= v8 - 1;

        v49 = sub_215656D4C();
        v50 = sub_215656F7C();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v66 = v52;
          *v51 = 136315395;
          *(v65 + 105) = v31;
          v53 = sub_215656E7C();
          v55 = v11;
          v56 = sub_21563A06C(v53, v54, &v66);

          *(v51 + 4) = v56;
          v11 = v55;
          *(v51 + 12) = 2081;
          v57 = sub_21563A06C(v64, v17, &v66);

          *(v51 + 14) = v57;
          _os_log_impl(&dword_2155FE000, v49, v50, "Caching status .%s for %{private}s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21606DDB0](v52, -1, -1);
          v12 = v60;
          MEMORY[0x21606DDB0](v51, -1, -1);

          v1 = v13;
          v10 = v55;
          v9 = v59;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v1 = v13;
          v10 = v11;
          v9 = v59;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v62 = v11;
        v13 = v1;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2156372A0()
{
  v1 = *(v0 + 16);
  sub_21565719C();
  sub_215656E8C();
  MEMORY[0x21606D450](v1);
  return sub_2156571BC();
}

uint64_t sub_215637304(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_215656E8C();
  return MEMORY[0x21606D450](v2);
}

uint64_t sub_21563733C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21565719C();
  sub_215656E8C();
  MEMORY[0x21606D450](v2);
  return sub_2156571BC();
}

BOOL sub_21563739C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_21565713C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_2156373FC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_215637444(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 160) + **(**v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

uint64_t sub_215637570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2156375BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t sub_215637654(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_21563769C(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = MEMORY[0x277D84F90];
  sub_21563C3A4(a1, v2 + 16);
  return v2;
}

uint64_t sub_2156376EC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 73) = *a2;
  return MEMORY[0x2822009F8](sub_215637714, 0, 0);
}

uint64_t sub_215637714()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 48);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  *(v0 + 72) = v1;
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_21563785C;
  v6 = *(v0 + 40);

  return v8(v6, v0 + 72, v3, v4);
}

uint64_t sub_21563785C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_21563795C, 0, 0);
}

uint64_t sub_21563795C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_215639F4C(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 56) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_215639F4C((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 73);
  v8 = *(v0 + 40);
  *(v2 + 2) = v5 + 1;
  v9 = &v2[24 * v5];
  *(v9 + 4) = v8;
  v9[40] = v7;
  *(v9 + 6) = v6;
  *(v1 + 56) = v2;
  swift_endAccess();
  v10 = *(v0 + 8);
  v11 = *(v0 + 64);

  return v10(v11);
}

uint64_t sub_215637A84()
{
  swift_beginAccess();
  *(v0 + 56) = MEMORY[0x277D84F90];
}

uint64_t static HandleAvailability.LookupSpy.StatusCallDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_215637B48(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_215637BD8(v3, v5);
}

uint64_t sub_215637B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21565713C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_215637BD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + v12);
    v17 = v14 == 0;

    if (v14)
    {
      v18 = sub_21563A614(v15, v14);
      v20 = v19;

      if ((v20 & 1) != 0 && v16 == *(*(a2 + 56) + v18))
      {
        continue;
      }
    }

    return v17;
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
      return 1;
    }

    v11 = *(v21 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215637D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_215637B48(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_215637BD8(v3, v5);
}

uint64_t HandleAvailability.LookupSpy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t HandleAvailability.LookupSpy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_215637E18(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

unint64_t sub_215637F64()
{
  v1 = *(v0 + 16);
  v2 = sub_21563C3BC(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (*(v0 + 16) + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_21563A614(v6, v5);
      v10 = v2[2];
      v11 = (v9 & 1) == 0;
      v12 = __OFADD__(v10, v11);
      v13 = v10 + v11;
      if (v12)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v14 = v9;
      if (v2[3] < v13)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v19 = result;
      sub_21563B828();
      result = v19;
      if (v14)
      {
LABEL_3:
        *(v2[7] + result) = 2;

        goto LABEL_4;
      }

LABEL_11:
      v2[(result >> 6) + 8] |= 1 << result;
      v16 = (v2[6] + 16 * result);
      *v16 = v6;
      v16[1] = v5;
      *(v2[7] + result) = 2;
      v17 = v2[2];
      v12 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v12)
      {
        goto LABEL_22;
      }

      v2[2] = v18;
LABEL_4:
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    sub_21563A998(v13, isUniquelyReferenced_nonNull_native);
    result = sub_21563A614(v6, v5);
    if ((v14 & 1) != (v15 & 1))
    {

      return sub_21565714C();
    }

LABEL_10:
    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v20 = *(v0 + 8);

  return v20(v2);
}

uint64_t sub_215638168(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 80) + **(**v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_215638294;

  return v8(a1, a2);
}

uint64_t sub_215638294(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_215638390(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *a1;
  v8 = *a4;
  swift_beginAccess();
  if (*(*(v4 + 16) + 16))
  {

    sub_21563A614(a2, a3);
    if (v9)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21563B704(v7, v8, isUniquelyReferenced_nonNull_native);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EA0, qword_21565C688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21565C4E0;
  *(inited + 32) = v8;
  *(inited + 33) = v7;
  v13 = sub_21563C548(inited);
  swift_setDeallocating();
  swift_beginAccess();

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_21563B588(v13, a2, a3, v14);

  *(v4 + 16) = v15;
  return swift_endAccess();
}

uint64_t sub_215638504(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_21563852C, 0, 0);
}

unint64_t sub_21563852C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_21563C3BC(MEMORY[0x277D84F90]);
  v4 = *(v1 + 16);
  swift_beginAccess();
  v31 = v0;
  if (v4)
  {
    v5 = (*(v0 + 40) + 40);
    v6 = v2;
    while (1)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(v6 + 16);
      v10 = *(v9 + 16);

      if (v10)
      {

        v11 = sub_21563A614(v8, v7);
        if (v12)
        {
          v13 = *(*(v9 + 56) + 8 * v11);

          if (*(v13 + 16) && (v14 = sub_21563A720(*(v31 + 56)), (v15 & 1) != 0))
          {
            v16 = *(*(v13 + 56) + v14);
          }

          else
          {
            v16 = 1;
          }
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v16 = 1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v3;
      result = sub_21563A614(v8, v7);
      v20 = v3[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v24 = v19;
      if (v3[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v29 = result;
      sub_21563B828();
      result = v29;
      v3 = v32;
      if (v24)
      {
LABEL_3:
        *(v3[7] + result) = v16;

        goto LABEL_4;
      }

LABEL_20:
      v3[(result >> 6) + 8] |= 1 << result;
      v26 = (v3[6] + 16 * result);
      *v26 = v8;
      v26[1] = v7;
      *(v3[7] + result) = v16;
      v27 = v3[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_31;
      }

      v3[2] = v28;
LABEL_4:
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_24;
      }
    }

    sub_21563A998(v23, isUniquelyReferenced_nonNull_native);
    result = sub_21563A614(v8, v7);
    if ((v24 & 1) != (v25 & 1))
    {

      return sub_21565714C();
    }

LABEL_19:
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

LABEL_24:
  v30 = *(v31 + 8);

  return v30(v3);
}

uint64_t HandleAvailability.LookupTestDouble.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21563881C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21563C2A0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_215638860(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

uint64_t sub_21563898C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_2156389B4, 0, 0);
}

uint64_t sub_2156389B4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EA8, &unk_21565C6A0);
  *v5 = v0;
  v5[1] = sub_215638AD0;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000029, 0x8000000215664D20, sub_21563C628, v4, v6);
}

uint64_t sub_215638AD0()
{

  return MEMORY[0x2822009F8](sub_215638BE8, 0, 0);
}

void sub_215638C00(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  if (!*(a2 + 16))
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v12 = sub_215656D6C();
    __swift_project_value_buffer(v12, qword_27CA6DFD0);
    v13 = sub_215656D4C();
    v14 = sub_215656F7C();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "No destinations; bypassing IDS check.";
    goto LABEL_20;
  }

  if (a3 > 1u)
  {
    v31 = a1;
    goto LABEL_10;
  }

  if (a3)
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v29 = sub_215656D6C();
    __swift_project_value_buffer(v29, qword_27CA6DFD0);
    v13 = sub_215656D4C();
    v14 = sub_215656F8C();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Invalid service name. Continuing with empty status.";
LABEL_20:
    _os_log_impl(&dword_2155FE000, v13, v14, v16, v15, 2u);
    MEMORY[0x21606DDB0](v15, -1, -1);
LABEL_21:

    aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
    goto LABEL_22;
  }

  v31 = a1;
LABEL_10:
  sub_215656E5C();
  v30 = a4[2];
  sub_2156390D8(a2);
  v17 = sub_215656ECC();

  v18 = sub_215656E4C();

  v19 = sub_215656E4C();
  v20 = a4[5];
  (*(v9 + 16))(v11, v31, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  (*(v9 + 32))(v22 + v21, v11, v8);
  aBlock[4] = sub_21563D7E4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2156391D8;
  aBlock[3] = &block_descriptor_81;
  v23 = _Block_copy(aBlock);

  v24 = [v30 currentIDStatusForDestinations:v17 service:v18 listenerID:v19 queue:v20 completionBlock:v23];
  _Block_release(v23);

  if (v24)
  {
    return;
  }

  if (qword_27CA68D70 != -1)
  {
    swift_once();
  }

  v25 = sub_215656D6C();
  __swift_project_value_buffer(v25, qword_27CA6DFD0);
  v26 = sub_215656D4C();
  v27 = sub_215656F8C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2155FE000, v26, v27, "IDS declined to execute query. Continuing with empty status.", v28, 2u);
    MEMORY[0x21606DDB0](v28, -1, -1);
  }

  aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
LABEL_22:
  sub_215656F0C();
}

uint64_t sub_2156390D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21563BDC0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21563BDC0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21563D698(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2156391D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_215656DCC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_215639268(uint64_t a1, _BYTE *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_215639290, 0, 0);
}

uint64_t sub_215639290()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EA8, &unk_21565C6A0);
  *v4 = v0;
  v4[1] = sub_2156393A4;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000029, 0x8000000215664D50, sub_21563C638, v2, v5);
}

uint64_t sub_2156393A4()
{

  return MEMORY[0x2822009F8](sub_21563DA74, 0, 0);
}

void sub_2156394BC(uint64_t a1, unsigned __int8 a2, void *a3, uint64_t a4)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = v29 - v9;
  if (a2 == 1)
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v25 = sub_215656D6C();
    __swift_project_value_buffer(v25, qword_27CA6DFD0);
    v26 = sub_215656D4C();
    v27 = sub_215656F8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2155FE000, v26, v27, "Invalid service name. Continuing with empty status.", v28, 2u);
      MEMORY[0x21606DDB0](v28, -1, -1);
    }

    aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_215656E5C();
    v30 = a3[2];
    sub_2156390D8(a4);
    v11 = sub_215656ECC();

    v12 = sub_215656E4C();

    v13 = sub_215656E4C();
    v14 = a3[5];
    v15 = *(v8 + 16);
    v29[1] = a1;
    v16 = v31;
    v15(v10, a1, v31);
    v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    (*(v8 + 32))(v18 + v17, v10, v16);
    aBlock[4] = sub_21563DA68;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2156391D8;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);

    v20 = [v30 refreshIDStatusForDestinations:v11 service:v12 listenerID:v13 queue:v14 completionBlock:v19];
    _Block_release(v19);

    if (v20)
    {
      return;
    }

    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v21 = sub_215656D6C();
    __swift_project_value_buffer(v21, qword_27CA6DFD0);
    v22 = sub_215656D4C();
    v23 = sub_215656F8C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2155FE000, v22, v23, "IDS declined to execute query. Continuing with empty status.", v24, 2u);
      MEMORY[0x21606DDB0](v24, -1, -1);
    }

    aBlock[0] = sub_21563C3BC(MEMORY[0x277D84F90]);
  }

  sub_215656F0C();
}

unint64_t sub_2156398FC(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = &unk_27CA68000;
    if (qword_27CA68D70 != -1)
    {
LABEL_38:
      swift_once();
    }

    v42 = sub_215656D6C();
    __swift_project_value_buffer(v42, qword_27CA6DFD0);

    v3 = sub_215656D4C();
    v4 = sub_215656F7C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 16);

      _os_log_impl(&dword_2155FE000, v3, v4, "Received %ld statuses", v5, 0xCu);
      MEMORY[0x21606DDB0](v5, -1, -1);
    }

    else
    {
    }

    v12 = sub_21563C3BC(MEMORY[0x277D84F90]);
    v13 = v1 + 64;
    v14 = 1 << *(v1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v40 = v1;
    v41 = v1 + 64;
    while (v16)
    {
      v44 = v12;
LABEL_30:
      v24 = __clz(__rbit64(v16)) | (v18 << 6);
      sub_21563C644(*(v1 + 48) + 40 * v24, v45);
      sub_21563C6A0(*(v1 + 56) + 32 * v24, &v46);
      sub_21563D628(v45, v49);
      v52[0] = v49[0];
      v52[1] = v49[1];
      v53 = v50;
      swift_dynamicCast();
      v25 = v47;
      v26 = v48;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      sub_21563D628(v45, v49);
      sub_21563D698(v51, v52);
      swift_dynamicCast();
      v43 = v47;
      sub_21563D6A8(v49);
      if (v2[430] != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v42, qword_27CA6DFD0);

      v27 = sub_215656D4C();
      v28 = sub_215656F6C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v49[0] = v30;
        *v29 = 136380931;
        *(v29 + 4) = sub_21563A06C(v25, v26, v49);
        *(v29 + 12) = 2048;
        v19 = v43;
        *(v29 + 14) = v43;
        _os_log_impl(&dword_2155FE000, v27, v28, "Status of handle %{private}s: %ld", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        v31 = v30;
        v2 = &unk_27CA68000;
        MEMORY[0x21606DDB0](v31, -1, -1);
        v32 = v29;
        v1 = v40;
        MEMORY[0x21606DDB0](v32, -1, -1);
      }

      else
      {

        v19 = v43;
      }

      v16 &= v16 - 1;
      if (v19 == 2)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49[0] = v44;
      sub_21563B424(v21, v25, v26, isUniquelyReferenced_nonNull_native);

      v12 = *&v49[0];
      sub_21563C6FC(v45);
      v13 = v41;
    }

    while (1)
    {
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v23);
      ++v18;
      if (v16)
      {
        v44 = v12;
        v18 = v23;
        goto LABEL_30;
      }
    }

    v33 = sub_215656D4C();
    v34 = sub_215656F6C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v49[0] = v36;
      *v35 = 136380675;
      v37 = sub_215656DDC();
      v39 = sub_21563A06C(v37, v38, v49);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2155FE000, v33, v34, "Status: %{private}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x21606DDB0](v36, -1, -1);
      MEMORY[0x21606DDB0](v35, -1, -1);
    }

    return v12;
  }

  else
  {
    if (qword_27CA68D70 != -1)
    {
      swift_once();
    }

    v6 = sub_215656D6C();
    __swift_project_value_buffer(v6, qword_27CA6DFD0);
    v7 = sub_215656D4C();
    v8 = sub_215656F8C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2155FE000, v7, v8, "Reply received with no status", v9, 2u);
      MEMORY[0x21606DDB0](v9, -1, -1);
    }

    v10 = MEMORY[0x277D84F90];

    return sub_21563C3BC(v10);
  }
}

uint64_t sub_215639F04()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

char *sub_215639F4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE8, &qword_21565CB48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21563A06C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21563A138(v11, 0, 0, 1, a1, a2);
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
    sub_21563C6A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21563A138(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21563A244(a5, a6);
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
    result = sub_21565705C();
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

void *sub_21563A244(uint64_t a1, unint64_t a2)
{
  v3 = sub_21563A290(a1, a2);
  sub_21563A3C0(&unk_282786420);
  return v3;
}

void *sub_21563A290(uint64_t a1, unint64_t a2)
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

  v6 = sub_21563A4AC(v5, 0);
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

  result = sub_21565705C();
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
        v10 = sub_215656EAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21563A4AC(v10, 0);
        result = sub_21565701C();
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

uint64_t sub_21563A3C0(uint64_t result)
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

  result = sub_21563A520(result, v11, 1, v3);
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

void *sub_21563A4AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F00, &qword_21565CB68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21563A520(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F00, &qword_21565CB68);
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

unint64_t sub_21563A614(uint64_t a1, uint64_t a2)
{
  sub_21565719C();
  sub_215656E8C();
  v4 = sub_2156571BC();

  return sub_21563A78C(a1, a2, v4);
}

unint64_t sub_21563A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_21565719C();
  sub_215656E8C();
  MEMORY[0x21606D450](v3);
  v6 = sub_2156571BC();

  return sub_21563A844(a1, a2, v3, v6);
}

unint64_t sub_21563A720(uint64_t a1)
{
  v1 = a1;
  sub_21565719C();
  MEMORY[0x21606D450](v1);
  v2 = sub_2156571BC();

  return sub_21563A928(v1, v2);
}

unint64_t sub_21563A78C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21565713C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21563A844(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a3;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_21565713C()) && v14 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_21563A928(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_21563A998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF8, &qword_21565CB58);
  v34 = v4;
  result = sub_2156570EC();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21565719C();
      sub_215656E8C();
      result = sub_2156571BC();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_21563AC38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF0, &qword_21565CB50);
  v35 = v4;
  result = sub_2156570EC();
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v36 = *(v21 + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_21565719C();
      sub_215656E8C();
      MEMORY[0x21606D450](v25);
      result = sub_2156571BC();
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
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + v15) = v36;
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

uint64_t sub_21563AEFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE0, &qword_21565CB40);
  v34 = v4;
  result = sub_2156570EC();
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

      sub_21565719C();
      sub_215656E8C();
      result = sub_2156571BC();
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

uint64_t sub_21563B1A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68770, qword_21565E520);
  result = sub_2156570EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_21565719C();
      MEMORY[0x21606D450](v20);
      result = sub_2156571BC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void sub_21563B424(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21563A614(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21563A998(v16, a4 & 1);
      v11 = sub_21563A614(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_21565714C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_21563B828();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_21563B588(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21563A614(a2, a3);
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
      sub_21563AEFC(v16, a4 & 1);
      v11 = sub_21563A614(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_21565714C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_21563BB04();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
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

unint64_t sub_21563B704(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21563A720(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21563BC74();
    result = v17;
    goto LABEL_8;
  }

  sub_21563B1A4(v14, a3 & 1);
  result = sub_21563A720(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_21565714C();
  __break(1u);
  return result;
}

void sub_21563B828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF8, &qword_21565CB58);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
}

void sub_21563B990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF0, &qword_21565CB50);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
        *(*(v4 + 56) + v17) = v21;
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
}

void sub_21563BB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE0, &qword_21565CB40);
  v2 = *v0;
  v3 = sub_2156570DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void *sub_21563BC74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68770, qword_21565E520);
  v2 = *v0;
  v3 = sub_2156570DC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_21563BDC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21563BDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21563BDE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED8, &unk_21565CB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21563BEF0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v26 = sub_215656FBC();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_215656FAC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_215656DBC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v24;
  v16 = v25;
  v5[2] = a1;
  v5[3] = v17;
  v5[4] = v16;
  v18 = sub_21563D8BC();
  v24 = ".directoryServer";
  v25 = v18;
  (*(v13 + 16))(v15, a4, v12);
  v27 = MEMORY[0x277D84F90];
  sub_21563D908();
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F18, qword_21565CB70);
  sub_21563D960();
  sub_21565700C();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v26);
  v20 = sub_215656FCC();
  (*(v13 + 8))(v23, v12);
  v5[5] = v20;
  return v5;
}

unint64_t sub_21563C188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF0, &qword_21565CB50);
    v3 = sub_2156570FC();

    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_21563A68C(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21563C2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EE0, &qword_21565CB40);
    v3 = sub_2156570FC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21563A614(v5, v6);
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

uint64_t sub_21563C3A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_21563C3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EF8, &qword_21565CB58);
    v3 = sub_2156570FC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21563A614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
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

unint64_t sub_21563C548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA68770, qword_21565E520);
    v3 = sub_2156570FC();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21563A720(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_21563C6A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21563C6FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EB0, &qword_21565C6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21563C768()
{
  result = qword_27CA67EB8;
  if (!qword_27CA67EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67EB8);
  }

  return result;
}

unint64_t sub_21563C7C0()
{
  result = qword_27CA67EC0;
  if (!qword_27CA67EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67EC0);
  }

  return result;
}

unint64_t sub_21563C818()
{
  result = qword_27CA67EC8;
  if (!qword_27CA67EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandleAvailability(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HandleAvailability(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HandleAvailability.Status(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HandleAvailability.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HandleAvailability.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandleAvailability.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of HandleAvailability.Lookup.status(for:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21563DA58;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HandleAvailability.LastKnownIDStatusLookup.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HandleAvailability.UncachedIDStatusLookup.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21563D070(uint64_t a1, int a2)
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

uint64_t sub_21563D0B8(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of HandleAvailability.LookupSpy.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21563D2A4(uint64_t *a1, int a2)
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

uint64_t sub_21563D2EC(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of HandleAvailability.LookupStub.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 80) + **(*v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_215638294;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HandleAvailability.LookupTestDouble.status(for:on:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21563DA58;

  return v8(a1, a2);
}

uint64_t sub_21563D628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67EB0, &qword_21565C6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_21563D698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21563D7E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  (*(**(v1 + 16) + 128))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67ED0, &qword_21565CB28);
  return sub_215656F0C();
}

unint64_t sub_21563D8BC()
{
  result = qword_27CA67F08;
  if (!qword_27CA67F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA67F08);
  }

  return result;
}

unint64_t sub_21563D908()
{
  result = qword_27CA67F10;
  if (!qword_27CA67F10)
  {
    sub_215656FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F10);
  }

  return result;
}

unint64_t sub_21563D960()
{
  result = qword_27CA67F20;
  if (!qword_27CA67F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA67F18, qword_21565CB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F20);
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

uint64_t sub_21563DA78()
{
  v0 = sub_215656D6C();
  __swift_allocate_value_buffer(v0, qword_27CA6E000);
  __swift_project_value_buffer(v0, qword_27CA6E000);
  return sub_215656D5C();
}

uint64_t sub_21563DB00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HandleAvailability.LookupStub();
  result = _s20ContactsAutocomplete18HandleAvailabilityV23LastKnownIDStatusLookupCAEycfC_0();
  a1[3] = v2;
  a1[4] = &protocol witness table for HandleAvailability.LookupStub;
  *a1 = result;
  return result;
}

uint64_t sub_21563DB40(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = *a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  v13 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    a4 = sub_215654DC8();
    a5 = v14;
  }

  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  sub_21563C3A4(a6, v12 + 56);
  return v12;
}

uint64_t sub_21563DC1C()
{
  v1 = [objc_opt_self() defaultEnvironment];
  v2 = sub_21563F93C();
  v3 = MEMORY[0x277CEB180];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = sub_215656C7C();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F88, &qword_21565F030);
  swift_task_alloc();
  sub_215656C3C();
  v7 = *(sub_215656C4C() - 8);
  swift_task_alloc();
  (*(v7 + 104))();
  sub_215656C6C();

  v8 = sub_215656C5C();
  v10 = v9;
  (*(v5 + 8))(v6, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v11 = v0[1];

  return v11(v8, v10);
}

uint64_t sub_21563DE74(uint64_t *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *(type metadata accessor for ComposeRecipient(0) - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  *(v2 + 209) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_21563DF4C, 0, 0);
}

uint64_t sub_21563DF4C()
{
  v21 = v0;
  if (*(*(v0 + 72) + 16))
  {
    v1 = 0x30201u >> (8 * *(v0 + 209));

    *(v0 + 80) = sub_215642920(v2, v1);
    *(v0 + 88) = v3;
    if (qword_27CA69200 != -1)
    {
      swift_once();
    }

    v4 = sub_215656D6C();
    *(v0 + 96) = __swift_project_value_buffer(v4, qword_27CA6E000);
    v5 = sub_215656F9C();
    v6 = sub_215656D4C();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      *(v0 + 208) = v1;
      sub_21563F67C();
      v9 = sub_21565711C();
      v11 = sub_21563A06C(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2155FE000, v6, v5, "Searching for client: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21606DDB0](v8, -1, -1);
      MEMORY[0x21606DDB0](v7, -1, -1);
    }

    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_21563E24C;

    return sub_21563DBFC();
  }

  else
  {
    if (qword_27CA69200 != -1)
    {
      swift_once();
    }

    v14 = sub_215656D6C();
    __swift_project_value_buffer(v14, qword_27CA6E000);
    v15 = sub_215656F7C();
    v16 = sub_215656D4C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2155FE000, v16, v15, "No names requested, so no results returned", v17, 2u);
      MEMORY[0x21606DDB0](v17, -1, -1);
    }

    v18 = *(v0 + 8);
    v19 = MEMORY[0x277D84F90];

    return v18(v19);
  }
}

uint64_t sub_21563E24C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[14] = a1;
  v5[15] = v2;

  if (v2)
  {
    v6 = sub_21563EC68;
  }

  else
  {
    v5[16] = a2;
    v6 = sub_21563E374;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21563E374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F28, &qword_21565CB98);
  *(v0 + 136) = v1;
  *(v0 + 144) = *(v1 - 8);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  v11 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v11;
  v4 = sub_215656C1C();
  *(v0 + 160) = v4;
  *(v0 + 168) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  sub_21563F480();
  sub_21563F4D4();
  sub_21563EF68();
  sub_215656ADC();
  swift_allocObject();
  v6 = sub_215656ACC();
  *(v0 + 184) = v6;
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_21563E5A4;
  v8 = *(v0 + 128);
  v9 = MEMORY[0x277CEAFA8];

  return MEMORY[0x28213DA98](v2, v0 + 16, v5, v6, v9, ObjectType, &type metadata for CompleteNameAppIntentRepresentation, v8);
}

uint64_t sub_21563E5A4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);

  if (v0)
  {
    v3 = sub_21563EDD8;
  }

  else
  {

    v3 = sub_21563E70C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void *sub_21563E70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F50, &qword_21565CBA8);
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_215656BDC();
  sub_215656C9C();
  (*(v2 + 8))(v3, v1);
  v4 = v0[4];
  if (v4)
  {

    if (v4 >> 62)
    {
      v5 = sub_2156570CC();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v43 = MEMORY[0x277D84F90];
        result = sub_21563F5F8(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          return result;
        }

        v7 = v43;
        v8 = v0[6];
        if ((v4 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v5; ++i)
          {
            v10 = v0[8];
            v11 = MEMORY[0x21606D2E0](i, v4);
            sub_215646758(v11, v10);
            v13 = *(v43 + 16);
            v12 = *(v43 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_21563F5F8((v12 > 1), v13 + 1, 1);
            }

            v14 = v0[8];
            *(v43 + 16) = v13 + 1;
            sub_21563F618(v14, v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13);
          }
        }

        else
        {
          v30 = v4 + 32;
          do
          {
            v31 = v0[7];

            sub_215646758(v32, v31);
            v34 = *(v43 + 16);
            v33 = *(v43 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_21563F5F8((v33 > 1), v34 + 1, 1);
            }

            v35 = v0[7];
            *(v43 + 16) = v34 + 1;
            sub_21563F618(v35, v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34);
            v30 += 8;
            --v5;
          }

          while (v5);
        }

        v37 = v0[18];
        v36 = v0[19];
        v38 = v0[17];

        swift_unknownObjectRelease();
        (*(v37 + 8))(v36, v38);
        goto LABEL_25;
      }
    }

    v40 = v0[18];
    v39 = v0[19];
    v41 = v0[17];

    swift_unknownObjectRelease();
    (*(v40 + 8))(v39, v41);
    v7 = MEMORY[0x277D84F90];
LABEL_25:

    v42 = v0[1];

    return v42(v7);
  }

  v15 = sub_215656F8C();
  v16 = sub_215656D4C();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2155FE000, v16, v15, "No value returned from execution", v17, 2u);
    MEMORY[0x21606DDB0](v17, -1, -1);
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];

  sub_21563F5A4();
  v21 = swift_allocError();
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v19 + 8))(v18, v20);

  v22 = sub_215656F8C();
  v23 = v21;
  v24 = sub_215656D4C();

  if (os_log_type_enabled(v24, v22))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v21;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_2155FE000, v24, v22, "Error performing intent: %@", v25, 0xCu);
    sub_21563F418(v26);
    MEMORY[0x21606DDB0](v26, -1, -1);
    MEMORY[0x21606DDB0](v25, -1, -1);
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_21563EC68(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = sub_215656F8C();
  v4 = v2;
  v5 = sub_215656D4C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2155FE000, v5, v3, "Error performing intent: %@", v6, 0xCu);
    sub_21563F418(v7);
    MEMORY[0x21606DDB0](v7, -1, -1);
    MEMORY[0x21606DDB0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_21563EDD8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 200);
  v2 = sub_215656F8C();
  v3 = v1;
  v4 = sub_215656D4C();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2155FE000, v4, v2, "Error performing intent: %@", v5, 0xCu);
    sub_21563F418(v6);
    MEMORY[0x21606DDB0](v6, -1, -1);
    MEMORY[0x21606DDB0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21563EF68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F70, &unk_21565F020);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_215656D3C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67F78, &unk_21565CCE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_215656D0C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_215656C0C();
  return sub_215656BFC();
}

uint64_t sub_21563F0F0()
{
  sub_21565719C();
  MEMORY[0x21606D450](0);
  return sub_2156571BC();
}

uint64_t sub_21563F15C(uint64_t a1)
{
  sub_21565719C();
  MEMORY[0x21606D450](0);
  return sub_2156571BC();
}

uint64_t sub_21563F1AC()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_21563F1F4(uint64_t a1)
{
  v6 = (*(**v1 + 128) + **(**v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21563F318;

  return v6(a1);
}

uint64_t sub_21563F318(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21563F418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68780, &qword_21565CB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21563F480()
{
  result = qword_27CA67F30;
  if (!qword_27CA67F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F30);
  }

  return result;
}

unint64_t sub_21563F4D4()
{
  result = qword_27CA67F38;
  if (!qword_27CA67F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA67F40, &qword_21565CBA0);
    sub_21563F54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F38);
  }

  return result;
}

unint64_t sub_21563F54C()
{
  result = qword_27CA67F48;
  if (!qword_27CA67F48)
  {
    type metadata accessor for ComposeRecipientAppEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F48);
  }

  return result;
}

unint64_t sub_21563F5A4()
{
  result = qword_27CA67F58;
  if (!qword_27CA67F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F58);
  }

  return result;
}

void *sub_21563F5F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21563F764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21563F618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeRecipient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21563F67C()
{
  result = qword_27CA67F60;
  if (!qword_27CA67F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F60);
  }

  return result;
}

unint64_t sub_21563F6D4()
{
  result = qword_27CA67F68;
  if (!qword_27CA67F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA67F68);
  }

  return result;
}

void *sub_21563F764(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E40, &unk_21565CCD0);
  v10 = *(type metadata accessor for ComposeRecipient(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ComposeRecipient(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_21563F93C()
{
  result = qword_27CA67F80;
  if (!qword_27CA67F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA67F80);
  }

  return result;
}

uint64_t sub_21563FA30(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_21563FA94(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

double sub_21563FB60@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;

  return result;
}

uint64_t sub_21563FBCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_21563FC3C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 24))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21563FCA4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 32);

  return v4(v2, v3);
}

uint64_t (*sub_21563FD44(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA67FB8);

  *(v4 + 40) = sub_215656CBC();
  return sub_21563FDD0;
}

uint64_t sub_21563FDE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 56))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21563FE48(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 64);

  return v4(v2, v3);
}

uint64_t (*sub_21563FEE8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA67FC0);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

uint64_t sub_21563FF80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21563FFE8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 96);

  return v4(v2, v3);
}

uint64_t sub_21564007C(void *a1)
{

  sub_215656CCC();

  return v2;
}

uint64_t sub_2156400D0(uint64_t a1, uint64_t a2, void *a3)
{

  sub_215656CDC();
}

uint64_t (*sub_215640118(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27CA67FC8);

  *(v4 + 40) = sub_215656CBC();
  return sub_2156413C0;
}

void sub_2156401A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_215640204(void *a1)
{

  v1 = sub_215656CEC();

  return v1;
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_27CA67FB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  swift_allocObject();
  *(v2 + v3) = sub_215656CAC();
  v4 = qword_27CA67FC0;
  swift_allocObject();
  *(v2 + v4) = sub_215656CAC();
  v5 = qword_27CA67FC8;
  swift_allocObject();
  *(v2 + v5) = sub_215656CAC();
  v6 = sub_215656B2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = sub_215656B8C();
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = qword_27CA67FB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67FB0, &unk_21565CCF0);
  swift_allocObject();
  *(v1 + v3) = sub_215656CAC();
  v4 = qword_27CA67FC0;
  swift_allocObject();
  *(v1 + v4) = sub_215656CAC();
  v5 = qword_27CA67FC8;
  swift_allocObject();
  *(v1 + v5) = sub_215656CAC();
  v6 = sub_215656B2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = sub_215656B8C();
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t sub_21564057C()
{
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.deinit()
{
  v0 = sub_215656B7C();

  return v0;
}

uint64_t ComposeRecipientHandleValueAppEntityRepresentation.__deallocating_deinit()
{
  v0 = sub_215656B7C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21564075C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t sub_2156408D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215656B4C();
  *a1 = result;
  return result;
}

unint64_t ComposeRecipientHandleValueAppEntityRepresentation.description.getter()
{
  v1 = (*(*v0 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 24))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_21565702C();

    strcpy(v31, ".phoneNumber(");
    HIWORD(v31[1]) = -4864;
    MEMORY[0x21606D140](v3, v4);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    v5 = v31[0];
    v6 = v31[1];
    v7 = sub_2156332BC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_2156332BC((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = (*(*v0 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 56))();
  if (v12)
  {
    v13 = isUniquelyReferenced_nonNull_native;
    v14 = v12;
    sub_21565702C();

    strcpy(v31, ".emailAddress(");
    HIBYTE(v31[1]) = -18;
    MEMORY[0x21606D140](v13, v14);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    v15 = v31[0];
    v16 = v31[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2156332BC(0, *(v7 + 2) + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2156332BC((v17 > 1), v18 + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
  }

  v20 = (*(*v0 + class metadata base offset for ComposeRecipientHandleValueAppEntityRepresentation + 88))(isUniquelyReferenced_nonNull_native);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_21565702C();

    v31[0] = 0xD000000000000014;
    v31[1] = 0x8000000215665120;
    MEMORY[0x21606D140](v22, v23);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2156332BC(0, *(v7 + 2) + 1, 1, v7);
    }

    v25 = *(v7 + 2);
    v24 = *(v7 + 3);
    if (v25 >= v24 >> 1)
    {
      v7 = sub_2156332BC((v24 > 1), v25 + 1, 1, v7);
    }

    *(v7 + 2) = v25 + 1;
    v26 = &v7[16 * v25];
    *(v26 + 4) = 0xD000000000000014;
    *(v26 + 5) = 0x8000000215665120;
    goto LABEL_19;
  }

  if (*(v7 + 2))
  {
LABEL_19:
    sub_21565702C();

    v31[1] = 0x80000002156650C0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA67E50, &unk_21565F460);
    sub_21563320C();
    v27 = sub_215656E0C();
    v29 = v28;

    MEMORY[0x21606D140](v27, v29);

    MEMORY[0x21606D140](41, 0xE100000000000000);
    return 0xD000000000000025;
  }

  return 0xD000000000000026;
}

uint64_t type metadata accessor for ComposeRecipientHandleValueAppEntityRepresentation(uint64_t a1)
{
  result = qword_27CA69910;
  if (!qword_27CA69910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215641004(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeRecipientHandleValueAppEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ContactsAutocomplete::ComposeRecipientHandleAvailabilityAppEnumRepresentation_optional __swiftcall ComposeRecipientHandleAvailabilityAppEnumRepresentation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21565710C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComposeRecipientHandleAvailabilityAppEnumRepresentation.rawValue.getter()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

void sub_215641498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEB00000000656C62;
  v5 = 0x616C696176616E75;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C62616C69617661;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_215641504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616C696176616E75;
  v4 = 0xEB00000000656C62;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C62616C69617661;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x616C696176616E75;
  v8 = 0xEB00000000656C62;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C62616C69617661;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21565713C();
  }

  return v11 & 1;
}

uint64_t sub_215641618()
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_2156416C8(uint64_t a1)
{
  sub_215656E8C();
}

uint64_t sub_215641764(uint64_t a1)
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t static ComposeRecipientHandleAvailabilityAppEnumRepresentation.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_27CA68018;

  return v0;
}

uint64_t static ComposeRecipientHandleAvailabilityAppEnumRepresentation.enumIdentifier.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27CA68018 = a1;
  off_27CA68020 = a2;
}

uint64_t sub_215641924()
{
  swift_beginAccess();
  v0 = qword_27CA68018;

  return v0;
}

uint64_t ComposeRecipientHandleAvailabilityAppEnumRepresentation.description.getter()
{
  v1 = 0xEB00000000656C62;
  v2 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v1 = 0xE700000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  MEMORY[0x21606D140](v3, v4);

  return 46;
}

uint64_t sub_215641B74()
{
  v1 = 0xEB00000000656C62;
  v2 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v1 = 0xE700000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  MEMORY[0x21606D140](v3, v4);

  return 46;
}

unint64_t sub_215641C40()
{
  result = qword_27CA68028;
  if (!qword_27CA68028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68028);
  }

  return result;
}

unint64_t sub_215641C98()
{
  result = qword_27CA68030;
  if (!qword_27CA68030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68030);
  }

  return result;
}

unint64_t sub_215641CF0()
{
  result = qword_27CA68038;
  if (!qword_27CA68038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68038);
  }

  return result;
}

unint64_t sub_215641D48()
{
  result = qword_27CA68040;
  if (!qword_27CA68040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68040);
  }

  return result;
}

unint64_t sub_215641DA0()
{
  result = qword_27CA68048;
  if (!qword_27CA68048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68048);
  }

  return result;
}

unint64_t sub_215641E04()
{
  result = qword_27CA68050;
  if (!qword_27CA68050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA68058, &qword_21565D060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68050);
  }

  return result;
}

unint64_t sub_215641E68()
{
  result = qword_27CA68060;
  if (!qword_27CA68060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68060);
  }

  return result;
}

unint64_t sub_215641EC0()
{
  result = qword_27CA68068;
  if (!qword_27CA68068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68068);
  }

  return result;
}

unint64_t sub_215641F18()
{
  result = qword_27CA68070;
  if (!qword_27CA68070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68070);
  }

  return result;
}

unint64_t sub_215641F80()
{
  result = qword_27CA68078;
  if (!qword_27CA68078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68078);
  }

  return result;
}

uint64_t sub_215641FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000215665250;
  if (v2 == 1)
  {
    v5 = 0x8000000215665250;
  }

  else
  {
    v3 = 0x736552796C6C7566;
    v5 = 0xED00006465766C6FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x766C6F7365726E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x736552796C6C7566;
    v4 = 0xED00006465766C6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x766C6F7365726E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21565713C();
  }

  return v11 & 1;
}

uint64_t sub_2156420EC()
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

uint64_t sub_2156421A4(uint64_t a1)
{
  sub_215656E8C();
}

uint64_t sub_215642248(uint64_t a1)
{
  sub_21565719C();
  sub_215656E8C();

  return sub_2156571BC();
}

unint64_t sub_2156422FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_215642544(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21564232C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0x8000000215665250;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x736552796C6C7566;
    v4 = 0xED00006465766C6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x766C6F7365726E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2156423A0()
{
  swift_beginAccess();
  v0 = qword_27CA68080;

  return v0;
}

unint64_t sub_215642544(uint64_t a1, uint64_t a2)
{
  v2 = sub_21565710C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_215642594()
{
  result = qword_27CA68090;
  if (!qword_27CA68090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68090);
  }

  return result;
}

unint64_t sub_2156425EC()
{
  result = qword_27CA68098;
  if (!qword_27CA68098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA68098);
  }

  return result;
}

unint64_t sub_215642644()
{
  result = qword_27CA680A0;
  if (!qword_27CA680A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680A0);
  }

  return result;
}

unint64_t sub_21564269C()
{
  result = qword_27CA680A8;
  if (!qword_27CA680A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680A8);
  }

  return result;
}

unint64_t sub_2156426F4()
{
  result = qword_27CA680B0;
  if (!qword_27CA680B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680B0);
  }

  return result;
}

unint64_t sub_21564274C()
{
  result = qword_27CA680B8;
  if (!qword_27CA680B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA680C0, &qword_21565D300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680B8);
  }

  return result;
}

unint64_t sub_2156427B0()
{
  result = qword_27CA680C8;
  if (!qword_27CA680C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680C8);
  }

  return result;
}

unint64_t sub_215642808()
{
  result = qword_27CA680D0;
  if (!qword_27CA680D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680D0);
  }

  return result;
}

unint64_t sub_215642860()
{
  result = qword_27CA680D8;
  if (!qword_27CA680D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA680D8);
  }

  return result;
}