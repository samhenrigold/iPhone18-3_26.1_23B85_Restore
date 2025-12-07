void sub_221DDDF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ACHGoalCompletionTrigger(uint64_t a1)
{
  v1 = 4;
  if (a1 == 1)
  {
    v1 = 16;
  }

  if (a1 == 2)
  {
    return 32;
  }

  else
  {
    return v1;
  }
}

uint64_t ACHTemplateIsAvailableForCalendarAndDate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 availabilityStart];

  if (v8)
  {
    v9 = [v5 availabilityStart];
    v10 = [v6 dateFromComponents:v9];

    v11 = [v7 compare:v10] != -1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v5 availabilityEnd];

  if (v12)
  {
    v13 = [v5 availabilityEnd];
    v14 = [v6 dateFromComponents:v13];
    v15 = [v6 hk_startOfDateByAddingDays:1 toDate:v14];

    v16 = [v6 dateByAddingUnit:128 value:-1 toDate:v15 options:0];
    v17 = [v7 compare:v16] != 1;
  }

  else
  {
    v17 = 1;
  }

  return v11 & v17;
}

id ACHCanonicalUnitForGoalType(uint64_t a1)
{
  if (ACHCanonicalUnitForGoalType_onceToken != -1)
  {
    ACHCanonicalUnitForGoalType_cold_1();
  }

  v2 = ACHCanonicalUnitForGoalType_unitByGoalType;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

uint64_t sub_221DDF5CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_221DDF604()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221DDF644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_221E56EA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_221DDF700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_221E56EA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_221DDF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_221DDF8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_221DDF9DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DistanceSample(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_221DDFAF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DistanceSample(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_221DDFF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DE037C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_221DE1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221DE14C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DE1700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221DE23B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_221DE4730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DE4AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DE54E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DE60BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id ACHEarnedInstanceAllKeys()
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = @"template_unique_name";
  v2[1] = @"created_date";
  v2[2] = @"earned_date";
  v2[3] = @"value_in_canonical_unit";
  v2[4] = @"value_canonical_unit";
  v2[5] = @"external_identifier";
  v2[6] = @"creator_device";
  v2[7] = @"sync_provenance";
  v2[8] = @"sync_identity";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:9];

  return v0;
}

id ACHEarnedInstancePredicateForKey(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = *MEMORY[0x277D10A40];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "key")}];
  v4 = _HDSQLiteValueForNumber();
  v5 = [v1 predicateWithProperty:v2 equalToValue:v4];

  return v5;
}

id ACHEarnedInstancePredicateUsingKey(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_4];
  v2 = [MEMORY[0x277D10B28] containsPredicateWithProperty:*MEMORY[0x277D10A40] values:v1];

  return v2;
}

uint64_t __ACHEarnedInstancePredicateUsingKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 key];

  return [v2 numberWithUnsignedInteger:v3];
}

id ACHEarnedInstancePredicateForSyncAnchor(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = *MEMORY[0x277D10A40];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v4 = [v1 predicateWithProperty:v2 greaterThanValue:v3];

  return v4;
}

id ACHEarnedInstancePredicateForSyncProvenance(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"sync_provenance" equalToValue:v2];

  return v3;
}

id ACHEarnedInstanceCompoundPredicateForDateComponentStringsArray(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_329];
  v2 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v1];

  return v2;
}

id ACHEarnedInstanceCompoundPredicateForAnniversaryDateComponentsString(void *a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 hk_map:&__block_literal_global_332];
  v5 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v4];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"earned_date" endsWithString:v3];

  v7 = MEMORY[0x277D10B20];
  v11[0] = v6;
  v11[1] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [v7 predicateMatchingAllPredicates:v8];

  return v9;
}

void sub_221DE8B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ACHEarnedInstanceSyncIdentityFromEarnedInstance(void *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v8 syncIdentityManager];
  v11 = [v10 legacySyncIdentity];

  v12 = [v9 syncIdentity];

  v13 = healthSyncIdentity(v12);

  v14 = [v8 syncIdentityManager];

  if (a2 && v13)
  {
    v19 = 0;
    v15 = [v14 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v7 error:&v19];
    v16 = v19;

    if (!v15)
    {
      v17 = ACHLogDatabase();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        ACHEarnedInstanceSyncIdentityFromEarnedInstance_cold_1();
      }
    }
  }

  else
  {
    v15 = [v14 currentSyncIdentity];
  }

  return v15;
}

void sub_221DE9F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_221DEAAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_221DEB924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DEBDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DEBF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DEC370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DEC558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 hk_gregorianCalendar];
  v10 = [v9 dateFromComponents:v8];

  v11 = ACHAvailableTemplatesForCountryCodeInTemplates(v7, v6);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates_block_invoke;
  v16[3] = &unk_2784909F0;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = [v11 hk_filter:v16];

  return v14;
}

id ACHAvailableTemplatesForCountryCodeInTemplates(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 availableCountryCodes];
        v12 = [v11 count];

        if (v12)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = [v10 availableCountryCodes];
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                if (![*(*(&v21 + 1) + 8 * j) caseInsensitiveCompare:v3])
                {
                  [v5 addObject:v10];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v15);
          }
        }

        else
        {
          [v5 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = [v5 copy];

  return v18;
}

void sub_221DECAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DECC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DED54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DEE0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DEFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DF06A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF16E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF34C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF37F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221DF6DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DF7BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL ACHRequestAwardsProfileExtensionWithError(void *a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 profileExtensionsConformingToProtocol:&unk_28356FE58];
  v7 = [v6 firstObject];
  if (v7)
  {
    v5[2](v5, v7);
  }

  else
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ACHRequestAwardsProfileExtensionWithError_cold_1(v8);
    }

    v9 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Activity Awards plugin is nil";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.ActivityAchievements" code:1 userInfo:v10];

    v12 = v11;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v7 != 0;
}

void sub_221DF8D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221DF9848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DF9E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFA450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFA664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFA920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFAB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFAE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFB09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221DFB664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFBAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFBCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFBF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFC2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221DFC720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFCAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221DFCE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221DFD234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221DFD5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

id ACHMonthlyChallengeTemplateFromCacheValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@"_"];
  v5 = [v4 firstObject];
  ACHMonthlyChallengeTypeFromMonthlyChallengeName();

  v6 = [v4 objectAtIndexedSubscript:1];
  [v6 integerValue];

  v7 = [v4 objectAtIndexedSubscript:2];
  [v7 integerValue];

  v8 = [v4 objectAtIndexedSubscript:3];
  [v8 integerValue];

  v9 = ACHDateComponentsForYearMonthDay();
  v10 = [v3 dateFromComponents:v9];
  v11 = [v3 hk_startOfMonthForDate:v10];

  v12 = [v3 hk_startOfMonthForDate:v11 addingMonths:1];
  v13 = [v3 hk_startOfDateBySubtractingDays:1 fromDate:v12];
  v14 = *MEMORY[0x277CE8B28];
  v15 = [v3 components:*MEMORY[0x277CE8B28] fromDate:v11];
  v16 = [v3 components:v14 fromDate:v13];

  v17 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v15 endDateComponents:v16];
  v18 = ACHMonthlyChallengeTemplate();
  if ([v4 count] >= 5)
  {
    v19 = [v4 objectAtIndexedSubscript:4];
    [v19 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    v24 = v12;
    v21 = v20 = v9;

    v22 = [v21 componentsSeparatedByString:@"|"];
    [v18 setAvailableSuffixes:v22];

    v9 = v20;
    v12 = v24;
  }

  return v18;
}

void sub_221DFE564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ACHExperienceTypeForDateWithHealthStore(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v9 = [a1 dateOfBirthComponentsWithError:&v15];
  v10 = v15;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      if (a4)
      {
        v13 = v10;
        v12 = 0;
        *a4 = v11;
        goto LABEL_8;
      }

      _HKLogDroppedError();
    }

    v12 = 0;
    goto LABEL_8;
  }

  v12 = FIExperienceTypeForBirthDateComponentsWithCurrentDateAndCalendar();
LABEL_8:

  return v12;
}

void sub_221DFFA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221DFFCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E00E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E01820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E019F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E01C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch(char a1)
{
  if (a1)
  {
    return 1;
  }

  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 isStandalonePhoneFitnessMode];

  return v3;
}

double ACHGizmoHistoricalEvaluationPolicy@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_221E5E790;
  *(a1 + 16) = 0;
  return result;
}

void ACHTinkerHistoricalEvaluationPolicy(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
}

int64x2_t ACHCompanionHistoricalEvaluationPolicy@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(2uLL);
  *a1 = result;
  a1[1].i16[0] = 257;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ACHEvaluationDateIntervalFor(void *a1)
{
  v1 = a1;
  v2 = [v1 endDate];
  v3 = [v1 startDate];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 timeIntervalSinceReferenceDate];
  if (v6 <= v7)
  {
    v13 = v1;
    v8 = v2;
  }

  else
  {
    v8 = v4;

    [v3 timeIntervalSinceReferenceDate];
    v10 = v9;
    [v8 timeIntervalSinceReferenceDate];
    if (v10 > v11)
    {
      v12 = v8;

      v3 = v12;
    }

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v3 endDate:v8];
  }

  return v13;
}

void sub_221E02E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E055A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E06B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E08338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E085F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E08910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E08CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_221E08F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E0923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E094E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E09750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E099FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E09DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E0A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221E0ABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E0ADF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ACHComparisonForEarnedInstances(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1 duplicateRemovalStrategy];
  if ((v10 - 3) < 2)
  {
LABEL_4:
    v11 = [v8 earnedDateComponents];
    v12 = [v7 dateFromComponents:v11];

    v13 = [v9 earnedDateComponents];
    v14 = [v7 dateFromComponents:v13];

    v15 = v14;
    v16 = v12;
    goto LABEL_5;
  }

  if (v10 != 2)
  {
    if (v10 != 1)
    {
LABEL_6:
      v18 = [v8 externalIdentifier];
      if (!v18 || (v19 = v18, [v9 externalIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
      {
        v21 = [v8 externalIdentifier];
        if (v21)
        {

LABEL_10:
          v22 = [v9 createdDate];
          v23 = [v8 createdDate];
          v17 = [v22 compare:v23];

          goto LABEL_21;
        }

        v25 = [v9 externalIdentifier];

        if (!v25)
        {
          goto LABEL_10;
        }

LABEL_20:
        v17 = -1;
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_4;
  }

  v24 = [v8 value];
  if (v24)
  {
  }

  else
  {
    v26 = [v9 value];

    if (!v26)
    {
      goto LABEL_6;
    }
  }

  v27 = [v8 value];

  if (!v27)
  {
    goto LABEL_20;
  }

  v28 = [v9 value];

  if (!v28)
  {
LABEL_19:
    v17 = 1;
    goto LABEL_21;
  }

  v12 = [v8 value];
  v14 = [v9 value];
  v15 = v12;
  v16 = v14;
LABEL_5:
  v17 = [v15 compare:v16];

  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_21:

  return v17;
}

id ACHDateComponentsForPackedDateComponents(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = ACHDateComponentsForYearMonthDay();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_221E0C9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0CDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E0D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E0EF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E107C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E1383C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_221E13E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E144B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221E1474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E14B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221E150C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221E15490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221E15998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_221E168E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_221E19EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E1AB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E1C114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E1CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E1ECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E1F110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E20298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E20504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E20834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E20D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_221E21E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E221E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E227E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E22B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E22DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E230BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E23380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E235C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E23A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E23BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E24F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E2527C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E25440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id ACHAllTemplateDatabaseKeys()
{
  v2[38] = *MEMORY[0x277D85DE8];
  v2[0] = @"unique_name";
  v2[1] = @"version";
  v2[2] = @"minimum_engine_version";
  v2[3] = @"created_date";
  v2[4] = @"creator_device";
  v2[5] = @"source_name";
  v2[6] = @"predicate";
  v2[7] = @"grace_predicate";
  v2[8] = @"value_expression";
  v2[9] = @"grace_value_expression";
  v2[10] = @"progress_expression";
  v2[11] = @"grace_progress_expression";
  v2[12] = @"goal_expression";
  v2[13] = @"grace_goal_expression";
  v2[14] = @"triggers";
  v2[15] = @"earn_limit";
  v2[16] = @"visibility_predicate";
  v2[17] = @"grace_visibility_predicate";
  v2[18] = @"visibility_start_date";
  v2[19] = @"visibility_end_date";
  v2[20] = @"availability_predicate";
  v2[21] = @"availability_start_date";
  v2[22] = @"availability_end_date";
  v2[23] = @"available_country_codes";
  v2[24] = @"alertability_predicate";
  v2[25] = @"alert_dates";
  v2[26] = @"duplicateremoval_strategy";
  v2[27] = @"duplicateremoval_calendar_unit";
  v2[28] = @"earn_date";
  v2[29] = @"display_order";
  v2[30] = @"displays_earned_instance_count";
  v2[31] = @"canonical_unit";
  v2[32] = @"sync_provenance";
  v2[33] = @"sync_identity";
  v2[34] = @"available_suffixes";
  v2[35] = @"daily_target";
  v2[36] = @"daily_target_canonical_unit";
  v2[37] = @"prerequisite_template_name";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:38];

  return v0;
}

id ACHTemplateSyncIdentityFromTemplate(void *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v8 syncIdentityManager];
  v11 = [v10 legacySyncIdentity];

  v12 = [v9 syncIdentity];

  v13 = healthSyncIdentity(v12);

  v14 = [v8 syncIdentityManager];

  if (a2 && v13)
  {
    v19 = 0;
    v15 = [v14 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v7 error:&v19];
    v16 = v19;

    if (!v15)
    {
      v17 = ACHLogDatabase();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        ACHTemplateSyncIdentityFromTemplate_cold_1();
      }
    }
  }

  else
  {
    v15 = [v14 currentSyncIdentity];
  }

  return v15;
}

void sub_221E28CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E296CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E29FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E2AD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E2B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E2EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ACHCanonicalUnitForGoalType_block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_283555BA8;
  v0 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v7[0] = v0;
  v6[1] = &unk_283555BC0;
  v1 = [MEMORY[0x277CCDAB0] minuteUnit];
  v7[1] = v1;
  v6[2] = &unk_283555BD8;
  v2 = [MEMORY[0x277CCDAB0] minuteUnit];
  v7[2] = v2;
  v6[3] = &unk_283555BF0;
  v3 = [MEMORY[0x277CCDAB0] countUnit];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = ACHCanonicalUnitForGoalType_unitByGoalType;
  ACHCanonicalUnitForGoalType_unitByGoalType = v4;
}

__CFString *ACHGoalDisplayName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Move";
  }

  else
  {
    return off_2784929C8[a1 - 1];
  }
}

void sub_221E31C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E32158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E33A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E349E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E34BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E34D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E358B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E35B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E365C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E36888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E36B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E36DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E37020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E374E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E379CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_221E37F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_221E380FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_221E3834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_221E386DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_221E38B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E39EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3A5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3B4A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

id ACHHistoricalEvaluationStartDateForPolicy(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *a1;
  if (*a1 == 2)
  {
    if (!v6)
    {
LABEL_10:
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:410227200.0];
      goto LABEL_11;
    }

    v10 = [v6 validThroughDate];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v15 = ACHLogAwardEngine();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ACHHistoricalEvaluationStartDateForPolicy_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:410227200.0];
    }

    v13 = v12;
  }

  else
  {
    if (v8 == 1)
    {
      if (v5)
      {
        v9 = v5;
LABEL_11:
        v13 = v9;
        goto LABEL_20;
      }

      v14 = ACHLogAwardEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Policy requested last known end date, but no known end date exists", v24, 2u);
      }
    }

    else if (!v8)
    {
      goto LABEL_10;
    }

    v13 = 0;
  }

LABEL_20:

  return v13;
}

id ACHHistoricalEvaluationEndDateForPolicy(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 8);
  if (v7 == 2)
  {
    v8 = [a2 hk_startOfDateBySubtractingDays:2 fromDate:v5];
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = v5;
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_221E3BD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221E3C99C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_221E3D67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E3DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3E9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221E3ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3F088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3F47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221E3FCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id achSyncIdentity(void *a1)
{
  v1 = a1;
  v2 = [v1 hardwareIdentifier];
  v3 = [v2 hk_dataForUUIDBytes];

  v4 = [v1 databaseIdentifier];
  v5 = [v4 hk_dataForUUIDBytes];

  if (v3 && v5)
  {
    v6 = [v1 instanceDiscriminator];
    v7 = v6;
    v8 = &stru_283541ED8;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [objc_alloc(MEMORY[0x277CE8D48]) initWithHardwareIdentifier:v3 databaseIdentifier:v5 instanceDiscriminator:v9];
  }

  else
  {
    v11 = ACHLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      achSyncIdentity_cold_1(v11);
    }

    v10 = 0;
  }

  return v10;
}

id healthSyncIdentity(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCAD78];
  v3 = [v1 hardwareIdentifier];
  v4 = [v2 hk_UUIDWithData:v3];

  v5 = MEMORY[0x277CCAD78];
  v6 = [v1 databaseIdentifier];
  v7 = [v5 hk_UUIDWithData:v6];

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = ACHLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      healthSyncIdentity_cold_1(v9);
    }

    v10 = 0;
  }

  else
  {
    v11 = [v1 instanceDiscriminator];
    v12 = v11;
    v13 = &stru_283541ED8;
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v10 = [objc_alloc(MEMORY[0x277D108E0]) initWithHardwareIdentifier:v4 databaseIdentifier:v7 instanceDiscriminator:v14];
  }

  return v10;
}

id ACHDatabaseContextWithAccessibilityAssertion(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277D10788]);
  v3 = [v1 assertion];

  if (v3)
  {
    v4 = [v1 assertion];
    [v2 addAccessibilityAssertion:v4];
  }

  return v2;
}

double sub_221E40158()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E401F0(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best5KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40288()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40320(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_best10KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E403B8()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40450(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E404E8()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40580(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40618()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E406B0(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40748()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E407E0(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E40878()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40910(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_221E409A8()
{
  v1 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221E40A40(double a1)
{
  v3 = OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ACHFastestDistanceResult.init()()
{
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_best5KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_best10KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair5KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchair10KDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestHalfMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairHalfMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  *(v0 + OBJC_IVAR___ACHFastestDistanceResult_bestWheelchairMarathonDuration) = 0x7FEFFFFFFFFFFFFFLL;
  v2.super_class = ACHFastestDistanceResult;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_221E40BCC(char a1)
{
  v1 = [objc_opt_self() kilometers];
  sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);

  return sub_221E56E00();
}

uint64_t sub_221E40C60(char *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  sub_221E40BCC(*a1);
  sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87F0]);
  v7 = sub_221E56F50();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_221E40D94(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 4;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11, a2);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 4;
    }
  }

  return v7;
}

uint64_t sub_221E40E14()
{
  v1 = *v0;
  sub_221E57120();
  MEMORY[0x223DAA880](v1);
  return sub_221E57150();
}

uint64_t sub_221E40E88(uint64_t a1)
{
  v2 = *v1;
  sub_221E57120();
  MEMORY[0x223DAA880](v2);
  return sub_221E57150();
}

unint64_t sub_221E40ECC()
{
  v1 = 0x6F6C694B65766966;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D6F6C694B6E6574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_221E40F6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_221E4D558(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_221E40FAC(uint64_t a1)
{
  v2 = sub_221E51688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E40FE8(uint64_t a1)
{
  v2 = sub_221E51688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41024(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA970, &qword_221E5EB88);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA978, &qword_221E5EB90);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA980, &qword_221E5EB98);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA988, &qword_221E5EBA0);
  v21 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEA990, &qword_221E5EBA8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221E51688();
  sub_221E57170();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_221E5177C();
      sub_221E570D0();
      (*(v24 + 8))(v7, v25);
    }

    else
    {
      v33 = 3;
      sub_221E51728();
      v18 = v26;
      sub_221E570D0();
      (*(v27 + 8))(v18, v28);
    }
  }

  else if (v29)
  {
    v31 = 1;
    sub_221E517D0();
    sub_221E570D0();
    (*(v22 + 8))(v10, v23);
  }

  else
  {
    v30 = 0;
    sub_221E51824();
    sub_221E570D0();
    (*(v21 + 8))(v13, v11);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_221E4146C(uint64_t a1)
{
  v2 = sub_221E51824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E414A8(uint64_t a1)
{
  v2 = sub_221E51824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E414E4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_221E41520(uint64_t a1)
{
  v2 = sub_221E5177C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E4155C(uint64_t a1)
{
  v2 = sub_221E5177C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41598(uint64_t a1)
{
  v2 = sub_221E51728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E415D4(uint64_t a1)
{
  v2 = sub_221E51728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41610(uint64_t a1)
{
  v2 = sub_221E517D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221E4164C(uint64_t a1)
{
  v2 = sub_221E517D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221E41688(char *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  LOBYTE(a2) = *a2;
  sub_221E40BCC(*a1);
  sub_221E40BCC(a2);
  sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87F0]);
  LOBYTE(a2) = sub_221E56F50();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v10, v4);
  return a2 & 1;
}

uint64_t sub_221E41800()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  v5 = *v0;
  sub_221E57120();
  sub_221E40BCC(v5);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E0]);
  sub_221E56F10();
  (*(v2 + 8))(v4, v1);
  return sub_221E57150();
}

uint64_t sub_221E41934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_221E40BCC(*v1);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E0]);
  sub_221E56F10();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_221E41A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  v6 = *v1;
  sub_221E57120();
  sub_221E40BCC(v6);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E0]);
  sub_221E56F10();
  (*(v3 + 8))(v5, v2);
  return sub_221E57150();
}

uint64_t sub_221E41B98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[2] = a1;
  v4 = sub_221E40D94(sub_221E51614, v7, &unk_2835409A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v4;
  return result;
}

uint64_t sub_221E41C4C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_221E4D6DC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_221E41CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceSample(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = a2 + v9;
    v11 = *(v5 + 72);
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    do
    {
      sub_221E50BBC(v10, v7, type metadata accessor for DistanceSample);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_221E45790(0, v12[2] + 1, 1, v12, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
      }

      v15 = v12[2];
      v14 = v12[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v12 = sub_221E45790((v14 > 1), v15 + 1, 1, v12, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
      }

      v12[2] = v16;
      sub_221E50CF4(v7, v12 + v9 + v15 * v11, type metadata accessor for DistanceSample);
      if (v16 == a1)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_221E4596C(0, v13[2] + 1, 1, v13);
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          v13 = sub_221E4596C((v17 > 1), v18 + 1, 1, v13);
        }

        v13[2] = v18 + 1;
        v13[v18 + 4] = v12;

        v12 = MEMORY[0x277D84F90];
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
  }

  if (v12[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_221E4596C(0, v13[2] + 1, 1, v13);
    }

    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      v13 = sub_221E4596C((v19 > 1), v20 + 1, 1, v13);
    }

    v13[2] = v20 + 1;
    v13[v20 + 4] = v12;
  }

  else
  {
  }

  return v13;
}

id sub_221E41FA4()
{
  result = [type metadata accessor for UnitPace() baseUnit];
  qword_27CFEA9B8 = result;
  return result;
}

id sub_221E4208C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v2 = objc_allocWithZone(v0);
  v3 = sub_221E56F60();
  v4 = [v2 initWithSymbol:v3 converter:v1];

  return v4;
}

id sub_221E42150(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UnitPace();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_221E42188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_221E42360(&v10 - v5);
  if (qword_27CFEA9B0 != -1)
  {
    swift_once();
  }

  sub_221E56E40();
  sub_221E56E10();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = [objc_opt_self() metersPerSecond];
  sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
  sub_221E56E00();
  return (v7)(v6, v0);
}

uint64_t sub_221E42360@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  type metadata accessor for DistanceSampleIntervalRecord(0);
  v9 = [objc_opt_self() meters];
  sub_221E56E40();

  sub_221E56E10();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 > 0.0)
  {
    v12 = [objc_opt_self() seconds];
    sub_221E56E40();

    sub_221E56E10();
    (*(v2 + 8))(v4, v1);
  }

  if (qword_27CFEA9B0 != -1)
  {
    swift_once();
  }

  v13 = qword_27CFEA9B8;
  type metadata accessor for UnitPace();
  v14 = v13;
  return sub_221E56E00();
}

uint64_t sub_221E425F8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x223DAA890](*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x223DAA890](*&v3);
  type metadata accessor for DistanceSampleIntervalRecord(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v4 = MEMORY[0x277CC87E0];
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E0]);
  sub_221E56F10();
  sub_221E56F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  sub_221E51574(&qword_27CFEA870, &qword_27CFEA858, &unk_221E5E860, v4);
  return sub_221E56F10();
}

uint64_t sub_221E42748()
{
  sub_221E57120();
  sub_221E425F8(v1);
  return sub_221E57150();
}

uint64_t sub_221E4278C(uint64_t a1)
{
  sub_221E57120();
  sub_221E425F8(v2);
  return sub_221E57150();
}

uint64_t sub_221E427C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_221E42360(&v10 - v5);
  sub_221E42360(v4);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980, MEMORY[0x277CC87E8]);
  v7 = sub_221E56F30();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

BOOL sub_221E4293C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_221E42360(&v10 - v5);
  sub_221E42360(v4);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980, MEMORY[0x277CC87E8]);
  v7 = sub_221E56F30();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

BOOL sub_221E42AB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_221E42360(&v10 - v5);
  sub_221E42360(v4);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980, MEMORY[0x277CC87E8]);
  v7 = sub_221E56F30();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_221E42C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_221E42360(&v10 - v5);
  sub_221E42360(v4);
  sub_221E51574(&qword_27CFEA880, &qword_27CFEA878, &qword_221E5E980, MEMORY[0x277CC87E8]);
  v7 = sub_221E56F30();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_221E42DA4()
{
  v0 = sub_221E56F00();
  __swift_allocate_value_buffer(v0, qword_280FAFE98);
  __swift_project_value_buffer(v0, qword_280FAFE98);
  return sub_221E56EF0();
}

id sub_221E42E34(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore_];

  return v2;
}

id sub_221E42E7C(uint64_t a1)
{
  *(v1 + OBJC_IVAR___ACHFastestDistanceCalculator_healthStore) = a1;
  v3.super_class = ACHFastestDistanceCalculator;
  return objc_msgSendSuper2(&v3, sel_init);
}

void __swiftcall ACHFastestDistanceCalculator.fastestDistances(for:)(ACHFastestDistanceResult *__return_ptr retstr, HKWorkout a2)
{
  v3 = v2;
  v162 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v161 = *(v162 - 8);
  v5 = MEMORY[0x28223BE20](v162);
  v156 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v158 = &v148 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v157 = &v148 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v159 = &v148 - v12;
  MEMORY[0x28223BE20](v11);
  v160 = &v148 - v13;
  v14 = sub_221E56ED0();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v181 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v180 = &v148 - v17;
  v178 = sub_221E56EA0();
  v18 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA848, &qword_221E5E850);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v179 = &v148 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v148 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v167 = &v148 - v30;
  MEMORY[0x28223BE20](v29);
  v171 = &v148 - v31;
  v32 = type metadata accessor for DistanceSample(0);
  v172 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v176 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v186 = &v148 - v36;
  MEMORY[0x28223BE20](v35);
  v170 = &v148 - v37;
  if (qword_280FAFE90 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v38 = sub_221E56F00();
    v39 = __swift_project_value_buffer(v38, qword_280FAFE98);
    v40 = a2.super.super.super.isa;
    v166 = v39;
    v41 = sub_221E56EE0();
    v42 = sub_221E56FD0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_221DDC000, v41, v42, "Finding fastest Distances for workout: %@", v43, 0xCu);
      sub_221E5128C(v44, &qword_27CFEA850, &qword_221E5E858);
      MEMORY[0x223DABCD0](v44, -1, -1);
      MEMORY[0x223DABCD0](v43, -1, -1);
    }

    v46 = [objc_allocWithZone(ACHFastestDistanceResult) init];
    if (![v3 isAwardable_])
    {
      v82 = v40;
      v83 = sub_221E56EE0();
      v84 = sub_221E56FD0();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        *(v85 + 4) = v82;
        *v86 = v82;
        v87 = v82;
        v88 = "Workout not a run or wheelchair run: %@";
LABEL_20:
        _os_log_impl(&dword_221DDC000, v83, v84, v88, v85, 0xCu);
        sub_221E5128C(v86, &qword_27CFEA850, &qword_221E5E858);
        MEMORY[0x223DABCD0](v86, -1, -1);
        MEMORY[0x223DABCD0](v85, -1, -1);
      }

LABEL_21:

      return;
    }

    [(objc_class *)v40 duration];
    if (v47 <= 600.0)
    {
      v89 = v40;
      v83 = sub_221E56EE0();
      v84 = sub_221E56FD0();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        *(v85 + 4) = v89;
        *v86 = v89;
        v90 = v89;
        v88 = "Workout duration too short: %@";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v48 = [v3 quantityTypeIdentifierForDistance_];
    v49 = [(objc_class *)v40 statisticsForType:v48];

    v183 = v18;
    if (v49)
    {
      v50 = [v49 sumQuantity];
      if (v50)
      {
        v51 = v50;
        v52 = [objc_opt_self() meterUnit];
        v185 = v51;
        [v51 doubleValueForUnit_];
        v54 = v53;

        v55 = sub_221E56EE0();
        v56 = sub_221E56FD0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v32;
          v58 = v28;
          v59 = v40;
          v60 = v46;
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = v54;
          _os_log_impl(&dword_221DDC000, v55, v56, "Workout distance: %f meters", v61, 0xCu);
          v62 = v61;
          v46 = v60;
          v40 = v59;
          v28 = v58;
          v32 = v57;
          MEMORY[0x223DABCD0](v62, -1, -1);
        }
      }
    }

    v152 = v46;
    v63 = dispatch_group_create();
    dispatch_group_enter(v63);
    v155 = [objc_opt_self() predicateForObjectsFromWorkout_];
    v64 = swift_allocObject();
    v153 = v64;
    *(v64 + 16) = MEMORY[0x277D84F90];
    v154 = (v64 + 16);
    v65 = sub_221E56EE0();
    v66 = sub_221E56FD0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_221DDC000, v65, v66, "Querying for Quantity Series Samples", v67, 2u);
      MEMORY[0x223DABCD0](v67, -1, -1);
    }

    v149 = v40;
    v68 = [v3 quantityTypeIdentifierForDistance_];
    v69 = swift_allocObject();
    v70 = v153;
    *(v69 + 16) = v63;
    *(v69 + 24) = v70;
    v71 = objc_allocWithZone(MEMORY[0x277CCD828]);
    aBlock[4] = sub_221E45AA0;
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221E453A8;
    aBlock[3] = &block_descriptor;
    v72 = _Block_copy(aBlock);
    v73 = v63;

    v74 = [v71 initWithQuantityType:v68 predicate:v155 quantityHandler:v72];

    _Block_release(v72);

    [v74 setOrderByQuantitySampleStartDate_];
    v75 = [v3 healthStore];
    [v75 executeQuery_];

    v151 = v73;
    sub_221E56FF0();

    v76 = sub_221E56EE0();
    v77 = sub_221E56FD0();
    v78 = os_log_type_enabled(v76, v77);
    v150 = v74;
    if (v78)
    {
      v79 = swift_slowAlloc();
      *v79 = 134217984;
      v80 = v154;
      swift_beginAccess();
      *(v79 + 4) = *(*(v70 + 16) + 16);

      _os_log_impl(&dword_221DDC000, v76, v77, "Samples processed: %ld", v79, 0xCu);
      MEMORY[0x223DABCD0](v79, -1, -1);

      v81 = v167;
    }

    else
    {

      v81 = v167;
      v80 = v154;
    }

    swift_beginAccess();
    sub_221E44F80(v80);
    swift_endAccess();
    v91 = *v80;
    v92 = ceil(*(*v80 + 16) / 1000.0);
    v93 = v152;
    if (v92 == INFINITY)
    {
      break;
    }

    if (v92 <= -9.22337204e18)
    {
      goto LABEL_84;
    }

    if (v92 >= 9.22337204e18)
    {
      goto LABEL_85;
    }

    v94 = v92;
    if (v92 < 2)
    {
      v115 = v153;

      v116 = sub_221E56EE0();
      v117 = sub_221E56FD0();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 134217984;
        *(v118 + 4) = *(*(v115 + 16) + 16);

        _os_log_impl(&dword_221DDC000, v116, v117, "Samples not reduced -> %ld", v118, 0xCu);
        MEMORY[0x223DABCD0](v118, -1, -1);
      }

      else
      {
      }

      goto LABEL_53;
    }

    v95 = sub_221E41CB4(v94, v91);

    v165 = v95[2];
    if (!v165)
    {
      a2.super.super.super.isa = MEMORY[0x277D84F90];
LABEL_49:

      v119 = v153;

      isa = a2.super.super.super.isa;
      v121 = sub_221E56EE0();
      v122 = sub_221E56FD0();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 134218240;
        *(v123 + 4) = *(*(v119 + 16) + 16);

        *(v123 + 12) = 2048;
        *(v123 + 14) = *(isa + 2);

        _os_log_impl(&dword_221DDC000, v121, v122, "Samples reduced: %ld -> %ld", v123, 0x16u);
        MEMORY[0x223DABCD0](v123, -1, -1);
      }

      else
      {
      }

      v93 = v152;
      *v154 = isa;

LABEL_53:

      v125 = sub_221E4DE48(v124);

      v126 = [(objc_class *)v149 workoutActivityType];
      if (!*(v125 + 16))
      {
        goto LABEL_76;
      }

      v127 = v126;
      v128 = sub_221E4621C(0);
      if (v129)
      {
        v130 = *(*(v125 + 56) + 8 * v128);
        if (*(v130 + 16))
        {
          v131 = v160;
          sub_221E50BBC(v130 + ((*(v161 + 80) + 32) & ~*(v161 + 80)), v160, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          v132 = &selRef_setBestWheelchair5KDuration_;
          if (v127 != 71)
          {
            v132 = &selRef_setBest5KDuration_;
          }

          [v93 *v132];
          sub_221E50C24(v131, type metadata accessor for DistanceSampleIntervalRecord);
        }
      }

      if (!*(v125 + 16))
      {
        goto LABEL_76;
      }

      v133 = sub_221E4621C(1);
      if (v134)
      {
        v135 = *(*(v125 + 56) + 8 * v133);
        if (*(v135 + 16))
        {
          v136 = v159;
          sub_221E50BBC(v135 + ((*(v161 + 80) + 32) & ~*(v161 + 80)), v159, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          v137 = &selRef_setBestWheelchair10KDuration_;
          if (v127 != 71)
          {
            v137 = &selRef_setBest10KDuration_;
          }

          [v93 *v137];
          sub_221E50C24(v136, type metadata accessor for DistanceSampleIntervalRecord);
        }
      }

      if (!*(v125 + 16))
      {
        goto LABEL_76;
      }

      v138 = sub_221E4621C(2);
      if (v139)
      {
        v140 = *(*(v125 + 56) + 8 * v138);
        if (*(v140 + 16))
        {
          v141 = v157;
          sub_221E50BBC(v140 + ((*(v161 + 80) + 32) & ~*(v161 + 80)), v157, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          v142 = &selRef_setBestWheelchairHalfMarathonDuration_;
          if (v127 != 71)
          {
            v142 = &selRef_setBestHalfMarathonDuration_;
          }

          [v93 *v142];
          sub_221E50C24(v141, type metadata accessor for DistanceSampleIntervalRecord);
        }
      }

      if (*(v125 + 16) && (v143 = sub_221E4621C(3), (v144 & 1) != 0))
      {
        v145 = *(*(v125 + 56) + 8 * v143);

        if (*(v145 + 16))
        {
          v146 = v156;
          sub_221E50BBC(v145 + ((*(v161 + 80) + 32) & ~*(v161 + 80)), v156, type metadata accessor for DistanceSampleIntervalRecord);

          sub_221E50CF4(v146, v158, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E56E10();
          if (v127 == 71)
          {
            [v93 setBestWheelchairMarathonDuration_];
          }

          else
          {
            [v93 setBestMarathonDuration_];
          }

          sub_221E50C24(v158, type metadata accessor for DistanceSampleIntervalRecord);

          return;
        }

        v147 = v187;
      }

      else
      {
LABEL_76:

        v147 = &v182;
      }

      return;
    }

    v96 = 0;
    v163 = v95 + 4;
    v184 = (v172 + 48);
    v185 = (v172 + 56);
    a2.super.super.super.isa = MEMORY[0x277D84F90];
    v18 = &qword_221E5E850;
    v174 = (v183 + 4);
    v97 = v179;
    v3 = v186;
    v175 = v23;
    v164 = v95;
    while (v96 < v95[2])
    {
      v173 = v96;
      v98 = v163[v96];
      v183 = *v185;
      (v183)(v81, 1, 1, v32);
      sub_221E512EC(v81, v28, &qword_27CFEA848, &qword_221E5E850);
      v99 = v98;
      v100 = *(v98 + 16);
      if (v100)
      {
        v169 = a2.super.super.super.isa;
        v101 = v172;
        v102 = v99 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
        v168 = v99;

        v182 = *(v101 + 72);
        do
        {
          sub_221E50BBC(v102, v3, type metadata accessor for DistanceSample);
          sub_221E512EC(v28, v23, &qword_27CFEA848, &qword_221E5E850);
          if ((*v184)(v23, 1, v32) == 1)
          {
            sub_221E5128C(v23, &qword_27CFEA848, &qword_221E5E850);
            sub_221E56E90();
            sub_221E56E70();
            v18 = &qword_221E5E850;
            sub_221E56E80();
            sub_221E5128C(v28, &qword_27CFEA848, &qword_221E5E850);
            v103 = *(v32 + 20);
            v104 = *&v3[v103];
            *(v97 + v103) = v104;
            (v183)(v97, 0, 1, v32);
            v105 = v104;
          }

          else
          {
            v106 = v176;
            sub_221E50CF4(v23, v176, type metadata accessor for DistanceSample);
            sub_221E56E90();
            sub_221E56E70();
            v107 = v177;
            v97 = v179;
            sub_221E56E80();
            v108 = [*(v106 + *(v32 + 20)) _quantityByAddingQuantity_];
            sub_221E5128C(v28, &qword_27CFEA848, &qword_221E5E850);
            v109 = v107;
            v23 = v175;
            (*v174)(v97, v109, v178);
            *(v97 + *(v32 + 20)) = v108;
            v110 = v106;
            v3 = v186;
            v18 = &qword_221E5E850;
            sub_221E50C24(v110, type metadata accessor for DistanceSample);
            (v183)(v97, 0, 1, v32);
          }

          sub_221E50C24(v3, type metadata accessor for DistanceSample);
          sub_221E50C84(v97, v28);
          v102 += v182;
          --v100;
        }

        while (v100);

        v81 = v167;
        a2.super.super.super.isa = v169;
      }

      sub_221E5128C(v81, &qword_27CFEA848, &qword_221E5E850);
      v111 = v171;
      sub_221E50C84(v28, v171);
      if ((*v184)(v111, 1, v32) == 1)
      {
        sub_221E5128C(v111, &qword_27CFEA848, &qword_221E5E850);
      }

      else
      {
        sub_221E50CF4(v111, v170, type metadata accessor for DistanceSample);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2.super.super.super.isa = sub_221E45790(0, *(a2.super.super.super.isa + 2) + 1, 1, a2.super.super.super.isa, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
        }

        v113 = *(a2.super.super.super.isa + 2);
        v112 = *(a2.super.super.super.isa + 3);
        v114 = a2.super.super.super.isa;
        if (v113 >= v112 >> 1)
        {
          v114 = sub_221E45790((v112 > 1), v113 + 1, 1, a2.super.super.super.isa, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
        }

        *(v114 + 2) = v113 + 1;
        a2.super.super.super.isa = v114;
        sub_221E50CF4(v170, v114 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v113, type metadata accessor for DistanceSample);
      }

      v96 = v173 + 1;
      v95 = v164;
      if (v173 + 1 == v165)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_82:
    swift_once();
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
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

void sub_221E447FC(void *a1, uint64_t a2, char a3, void *a4, NSObject *a5, uint64_t a6)
{
  v58 = a5;
  v11 = type metadata accessor for DistanceSample(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA920, &qword_221E5E9E8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v54 - v19;
  v21 = sub_221E56EA0();
  v22 = MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_280FAFE90 != -1)
    {
      swift_once();
    }

    v26 = sub_221E56F00();
    __swift_project_value_buffer(v26, qword_280FAFE98);
    v27 = a4;
    v28 = sub_221E56EE0();
    v29 = sub_221E56FC0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = a4;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_221DDC000, v28, v29, "Received error %{public}@ from sample query.", v30, 0xCu);
      sub_221E5128C(v31, &qword_27CFEA850, &qword_221E5E858);
      MEMORY[0x223DABCD0](v31, -1, -1);
      MEMORY[0x223DABCD0](v30, -1, -1);
    }

    v34 = v58;

    dispatch_group_leave(v34);
    return;
  }

  v57 = v17;
  if (!a1)
  {
    goto LABEL_12;
  }

  v56 = v25;
  v35 = v22;
  v36 = a2;
  v37 = v23;
  sub_221E512EC(v36, v20, &qword_27CFEA920, &qword_221E5E9E8);
  if ((*(v37 + 48))(v20, 1, v35) == 1)
  {
    sub_221E5128C(v20, &qword_27CFEA920, &qword_221E5E9E8);
LABEL_12:
    if (a3)
    {
      if (qword_280FAFE90 != -1)
      {
        swift_once();
      }

      v38 = sub_221E56F00();
      __swift_project_value_buffer(v38, qword_280FAFE98);
      v39 = sub_221E56EE0();
      v40 = sub_221E56FD0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_221DDC000, v39, v40, "No quantity or date interval and done", v41, 2u);
        MEMORY[0x223DABCD0](v41, -1, -1);
      }

      dispatch_group_leave(v58);
    }

    return;
  }

  v42 = v56;
  (*(v37 + 32))(v56, v20, v35);
  v54 = v35;
  v55 = v37;
  v43 = *(v37 + 16);
  v44 = v57;
  v43(v57, v42, v35);
  *(v44 + *(v11 + 20)) = a1;
  sub_221E50BBC(v44, v15, type metadata accessor for DistanceSample);
  swift_beginAccess();
  v45 = *(a6 + 16);
  v46 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_221E45790(0, v45[2] + 1, 1, v45, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
    *(a6 + 16) = v45;
  }

  v49 = v45[2];
  v48 = v45[3];
  if (v49 >= v48 >> 1)
  {
    v45 = sub_221E45790((v48 > 1), v49 + 1, 1, v45, &qword_27CFEA8A0, &qword_221E5E988, type metadata accessor for DistanceSample);
  }

  v45[2] = v49 + 1;
  sub_221E50CF4(v15, v45 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v49, type metadata accessor for DistanceSample);
  *(a6 + 16) = v45;
  swift_endAccess();
  if (a3)
  {
    if (qword_280FAFE90 != -1)
    {
      swift_once();
    }

    v50 = sub_221E56F00();
    __swift_project_value_buffer(v50, qword_280FAFE98);
    v51 = sub_221E56EE0();
    v52 = sub_221E56FD0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_221DDC000, v51, v52, "We are done", v53, 2u);
      MEMORY[0x223DABCD0](v53, -1, -1);
    }

    dispatch_group_leave(v58);
  }

  sub_221E50C24(v57, type metadata accessor for DistanceSample);
  (*(v55 + 8))(v56, v54);
}

uint64_t sub_221E44EAC(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_221E4D364(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_221E46698(v10, type metadata accessor for DistanceSampleIntervalRecord, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_221E44F80(uint64_t *a1)
{
  v2 = *(type metadata accessor for DistanceSample(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_221E4D3B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_221E46698(v6, type metadata accessor for DistanceSample, sub_221E49ACC, sub_221E474D4);
  *a1 = v3;
  return result;
}

uint64_t sub_221E450C8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for DistanceAccumulator(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_221E4CFB0(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  while (1)
  {
    v13 = *v12++;
    v20 = v13;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_221E4CFB0((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_221E50CF4(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DistanceAccumulator);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221E4526C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DistanceSampleIntervalRecord(0);
    return a2;
  }

  return result;
}

id _sSo24ACHFastestDistanceResultC26ActivityAchievementsDaemonEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_221E453A8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6, void *a7)
{
  v25 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA920, &qword_221E5E9E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = *(a1 + 32);
  if (a4)
  {
    sub_221E56E60();
    v17 = sub_221E56EA0();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = sub_221E56EA0();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  v22 = a7;
  v16(v19, a3, v15, a5, v25, a7);

  return sub_221E5128C(v15, &qword_27CFEA920, &qword_221E5E9E8);
}

void *sub_221E45558(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA900, &qword_221E5E9D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA908, &qword_221E5E9D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221E4568C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8E8, &qword_221E5E9B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_221E45790(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_221E4596C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8A8, &qword_221E5E990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B0, &qword_221E5E998);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221E45AD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221E45BA0(v11, 0, 0, 1, a1, a2);
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
    sub_221E51230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_221E45BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_221E45CAC(a5, a6);
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
    result = sub_221E57040();
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

void *sub_221E45CAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_221E45CF8(a1, a2);
  sub_221E45E28(&unk_2835409F0);
  return v3;
}

void *sub_221E45CF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_221E45F14(v5, 0);
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

  result = sub_221E57040();
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
        v10 = sub_221E56F90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221E45F14(v10, 0);
        result = sub_221E57000();
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

uint64_t sub_221E45E28(uint64_t result)
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

  result = sub_221E45F88(result, v11, 1, v3);
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

void *sub_221E45F14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8F8, &qword_221E5E9C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221E45F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8F8, &qword_221E5E9C8);
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

void sub_221E4607C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8D0, &qword_221E5E9B0);
      v7 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for DistanceSampleIntervalRecord(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_221E4621C(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_221E57120();
  sub_221E40BCC(v1);
  sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E0]);
  sub_221E56F10();
  (*(v3 + 8))(v5, v2);
  v6 = sub_221E57150();
  return sub_221E46370(v1, v6);
}

unint64_t sub_221E46370(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v6 = MEMORY[0x28223BE20](v5);
  v34 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v26 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v33 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v31 = &v26 - v13;
  v35 = v2;
  v14 = -1 << *(v2 + 32);
  v15 = a2 & ~v14;
  v30 = v2 + 64;
  if ((*(v2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v26 = ~v14;
    v27 = (v12 + 8);
    v28 = (v12 + 32);
    v29 = a1;
    do
    {
      v16 = [objc_opt_self() kilometers];
      sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
      v17 = v33;
      sub_221E56E00();
      v18 = *v28;
      v19 = v31;
      (*v28)(v31, v17, v5);
      v20 = [objc_opt_self() kilometers];
      v21 = v34;
      sub_221E56E00();
      v22 = v32;
      v18(v32, v21, v5);
      sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87F0]);
      v23 = sub_221E56F50();
      v24 = *v27;
      (*v27)(v22, v5);
      v24(v19, v5);
      if (v23)
      {
        break;
      }

      v15 = (v15 + 1) & v26;
    }

    while (((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

uint64_t sub_221E46698(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_221E570E0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_221E56FA0();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_221E467E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v101 = a4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v7 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v74[-v8];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v9 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v74[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v74[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v74[-v16];
  MEMORY[0x28223BE20](v15);
  v90 = &v74[-v17];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  v18 = *(v89 - 8);
  v19 = MEMORY[0x28223BE20](v89);
  v88 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v102 = &v74[-v21];
  v106 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v22 = *(v106 - 8);
  v23 = MEMORY[0x28223BE20](v106);
  v83 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  result = MEMORY[0x28223BE20](v25);
  v94 = &v74[-v28];
  v80 = a3;
  v76 = a2;
  if (a3 != a2)
  {
    v29 = v27;
    v30 = *v101;
    v31 = objc_opt_self();
    v100 = (v9 + 8);
    v101 = v31;
    v32 = *(v22 + 72);
    v85 = (v7 + 8);
    v99 = (v12 + 8);
    v84 = (v18 + 8);
    v33 = v30 + v32 * (v80 - 1);
    v81 = -v32;
    v34 = a1 - v80;
    v82 = v30;
    v75 = v32;
    v35 = v30 + v32 * v80;
    v87 = v11;
    v86 = v29;
LABEL_5:
    v77 = v35;
    v78 = v34;
    v79 = v33;
    v36 = v94;
    while (1)
    {
      v97 = v34;
      v98 = v35;
      sub_221E50BBC(v35, v36, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50BBC(v33, v29, type metadata accessor for DistanceSampleIntervalRecord);
      v37 = [v101 meters];
      v39 = v104;
      v38 = v105;
      sub_221E56E40();

      sub_221E56E10();
      v41 = v40;
      v96 = *v100;
      v96(v39, v38);
      if (v41 > 0.0)
      {
        v42 = [objc_opt_self() seconds];
        v44 = v92;
        v43 = v93;
        sub_221E56E40();

        sub_221E56E10();
        (*v85)(v44, v43);
      }

      v45 = v90;
      if (qword_27CFEA9B0 != -1)
      {
        swift_once();
      }

      v46 = qword_27CFEA9B8;
      v47 = type metadata accessor for UnitPace();
      v48 = v46;
      v95 = v47;
      sub_221E56E00();
      if (qword_27CFEA9B0 != -1)
      {
        swift_once();
      }

      v49 = v103;
      sub_221E56E40();
      sub_221E56E10();
      v50 = *v99;
      (*v99)(v49, v11);
      v51 = [objc_opt_self() metersPerSecond];
      sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
      sub_221E56E00();
      v50(v45, v11);
      v52 = [v101 meters];
      v53 = v86;
      v55 = v104;
      v54 = v105;
      sub_221E56E40();

      sub_221E56E10();
      v57 = v56;
      v96(v55, v54);
      if (v57 > 0.0)
      {
        v58 = [objc_opt_self() seconds];
        v59 = v92;
        v60 = v93;
        sub_221E56E40();

        sub_221E56E10();
        (*v85)(v59, v60);
      }

      v61 = v48;
      v62 = v91;
      sub_221E56E00();
      v63 = v103;
      v11 = v87;
      sub_221E56E40();
      sub_221E56E10();
      v50(v63, v11);
      v64 = [objc_opt_self() metersPerSecond];
      v65 = v88;
      sub_221E56E00();
      v50(v62, v11);
      sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0, MEMORY[0x277CC87E8]);
      v66 = v102;
      v67 = v89;
      v68 = sub_221E56F20();
      v69 = *v84;
      (*v84)(v65, v67);
      v69(v66, v67);
      sub_221E50C24(v53, type metadata accessor for DistanceSampleIntervalRecord);
      v36 = v94;
      result = sub_221E50C24(v94, type metadata accessor for DistanceSampleIntervalRecord);
      v29 = v53;
      v71 = v97;
      v70 = v98;
      if ((v68 & 1) == 0)
      {
LABEL_4:
        v33 = v79 + v75;
        v34 = v78 - 1;
        v35 = v77 + v75;
        if (++v80 == v76)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v82)
      {
        break;
      }

      v72 = v83;
      sub_221E50CF4(v98, v83, type metadata accessor for DistanceSampleIntervalRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_221E50CF4(v72, v33, type metadata accessor for DistanceSampleIntervalRecord);
      v33 += v81;
      v35 = v70 + v81;
      v73 = __CFADD__(v71, 1);
      v34 = v71 + 1;
      if (v73)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221E4722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v8 = *(v37 - 8);
  v9 = MEMORY[0x28223BE20](v37);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
    v18 = *(v8 + 72);
    v19 = v17 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v21;
    while (1)
    {
      sub_221E50BBC(v22, v16, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50BBC(v19, v13, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860, MEMORY[0x277CC87E8]);
      v24 = sub_221E56F30();
      sub_221E50C24(v13, type metadata accessor for DistanceSampleIntervalRecord);
      result = sub_221E50C24(v16, type metadata accessor for DistanceSampleIntervalRecord);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_221E50CF4(v22, v35, type metadata accessor for DistanceSampleIntervalRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_221E50CF4(v25, v19, type metadata accessor for DistanceSampleIntervalRecord);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221E474D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = sub_221E56ED0();
  v8 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v33 - v11;
  v43 = type metadata accessor for DistanceSample(0);
  v12 = MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v33 - v15;
  result = MEMORY[0x28223BE20](v14);
  v45 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v44 = (v8 + 8);
    v21 = v19 + v20 * (a3 - 1);
    v40 = -v20;
    v41 = v19;
    v22 = a1 - a3;
    v34 = v20;
    v23 = v19 + v20 * a3;
    v24 = v46;
LABEL_5:
    v38 = v21;
    v39 = a3;
    v36 = v23;
    v37 = v22;
    v50 = v22;
    while (1)
    {
      v25 = v45;
      sub_221E50BBC(v23, v45, type metadata accessor for DistanceSample);
      sub_221E50BBC(v21, v24, type metadata accessor for DistanceSample);
      v26 = v47;
      sub_221E56E90();
      v27 = v48;
      sub_221E56E90();
      v51 = sub_221E56EC0();
      v28 = *v44;
      v29 = v27;
      v30 = v49;
      (*v44)(v29, v49);
      v28(v26, v30);
      sub_221E50C24(v24, type metadata accessor for DistanceSample);
      result = sub_221E50C24(v25, type metadata accessor for DistanceSample);
      if ((v51 & 1) == 0)
      {
LABEL_4:
        a3 = v39 + 1;
        v21 = v38 + v34;
        v22 = v37 - 1;
        v23 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v31 = v42;
      sub_221E50CF4(v23, v42, type metadata accessor for DistanceSample);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_221E50CF4(v31, v21, type metadata accessor for DistanceSample);
      v21 += v40;
      v23 += v40;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221E47838(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v210 = a4;
  v211 = a1;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v5 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v239 = &v205 - v6;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v7 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v253 = &v205 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v235 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v234 = &v205 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v219 = &v205 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v252 = &v205 - v18;
  MEMORY[0x28223BE20](v17);
  v218 = &v205 - v19;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  v20 = *(v242 - 8);
  v21 = MEMORY[0x28223BE20](v242);
  v233 = &v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v249 = &v205 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v217 = &v205 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v227 = &v205 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v207 = &v205 - v30;
  MEMORY[0x28223BE20](v29);
  v206 = &v205 - v31;
  v32 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v223 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v215 = &v205 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v232 = &v205 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v205 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v243 = &v205 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v43 = MEMORY[0x28223BE20](v42);
  v222 = &v205 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v209 = &v205 - v46;
  result = MEMORY[0x28223BE20](v45);
  v208 = &v205 - v49;
  v225 = a3;
  v50 = a3[1];
  if (v50 < 1)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_110:
    v102 = *v211;
    if (!*v211)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_221E4C5CC(v52);
      v52 = result;
    }

    v256 = v52;
    v200 = *(v52 + 2);
    if (v200 >= 2)
    {
      while (*v225)
      {
        v201 = *&v52[16 * v200];
        v202 = *&v52[16 * v200 + 24];
        v203 = v229;
        sub_221E4A5F4(&(*v225)[*(v223 + 72) * v201], &(*v225)[*(v223 + 72) * *&v52[16 * v200 + 16]], &(*v225)[*(v223 + 72) * v202], v102);
        v229 = v203;
        if (v203)
        {
        }

        if (v202 < v201)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_221E4C5CC(v52);
        }

        if (v200 - 2 >= *(v52 + 2))
        {
          goto LABEL_136;
        }

        v204 = &v52[16 * v200];
        *v204 = v201;
        *(v204 + 1) = v202;
        v256 = v52;
        result = sub_221E4C540(v200 - 1);
        v52 = v256;
        v200 = *(v256 + 2);
        if (v200 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v226 = v48;
  v241 = (v20 + 8);
  v251 = (v7 + 8);
  v236 = (v5 + 8);
  v51 = 0;
  v250 = (v10 + 8);
  v52 = MEMORY[0x277D84F90];
  v237 = v9;
  v255 = v32;
  v238 = v39;
  while (1)
  {
    v53 = v51;
    v224 = v52;
    if (v51 + 1 >= v50)
    {
      v102 = v51 + 1;
      v101 = v210;
      v66 = v243;
    }

    else
    {
      v228 = v50;
      v54 = *v225;
      v55 = *(v223 + 72);
      v248 = &(*v225)[v55 * (v51 + 1)];
      v56 = v55;
      v231 = v55;
      v57 = v54;
      v247 = v54;
      v212 = v53;
      sub_221E50BBC(v248, v208, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50BBC(&v57[v56 * v53], v209, type metadata accessor for DistanceSampleIntervalRecord);
      v58 = v206;
      sub_221E42188();
      v59 = v207;
      sub_221E42188();
      v60 = sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0, MEMORY[0x277CC87E8]);
      v61 = v242;
      v221 = v60;
      LODWORD(v230) = sub_221E56F20();
      v62 = *v241;
      (*v241)(v59, v61);
      v63 = v58;
      v64 = v248;
      v220 = v62;
      (v62)(v63, v61);
      sub_221E50C24(v209, type metadata accessor for DistanceSampleIntervalRecord);
      sub_221E50C24(v208, type metadata accessor for DistanceSampleIntervalRecord);
      v65 = (v212 + 2);
      result = &v247[v231 * (v212 + 2)];
      v66 = v243;
      v67 = v222;
      while (v228 != v65)
      {
        v247 = result;
        sub_221E50BBC(result, v67, type metadata accessor for DistanceSampleIntervalRecord);
        v248 = v64;
        sub_221E50BBC(v64, v226, type metadata accessor for DistanceSampleIntervalRecord);
        v246 = objc_opt_self();
        v77 = [v246 meters];
        v79 = v253;
        v78 = v254;
        sub_221E56E40();

        sub_221E56E10();
        v81 = v80;
        v245 = *v251;
        (v245)(v79, v78);
        if (v81 > 0.0)
        {
          v82 = [objc_opt_self() seconds];
          v84 = v239;
          v83 = v240;
          sub_221E56E40();

          sub_221E56E10();
          (*v236)(v84, v83);
        }

        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v85 = qword_27CFEA9B8;
        v86 = type metadata accessor for UnitPace();
        v87 = v85;
        v88 = v218;
        v244 = v86;
        sub_221E56E00();
        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v89 = v252;
        sub_221E56E40();
        sub_221E56E10();
        v90 = *v250;
        (*v250)(v89, v9);
        v91 = [objc_opt_self() metersPerSecond];
        sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
        sub_221E56E00();
        v90(v88, v9);
        v92 = [v246 meters];
        v93 = v226;
        v95 = v253;
        v94 = v254;
        sub_221E56E40();

        sub_221E56E10();
        v97 = v96;
        (v245)(v95, v94);
        if (v97 > 0.0)
        {
          v98 = [objc_opt_self() seconds];
          v99 = v239;
          v100 = v240;
          sub_221E56E40();

          sub_221E56E10();
          (*v236)(v99, v100);
        }

        v68 = v87;
        v69 = v219;
        sub_221E56E00();
        v70 = v252;
        v9 = v237;
        sub_221E56E40();
        sub_221E56E10();
        v90(v70, v9);
        v71 = [objc_opt_self() metersPerSecond];
        v72 = v217;
        sub_221E56E00();
        v90(v69, v9);
        v73 = v227;
        v74 = v242;
        v75 = sub_221E56F20() & 1;
        v76 = v220;
        (v220)(v72, v74);
        v76(v73, v74);
        sub_221E50C24(v93, type metadata accessor for DistanceSampleIntervalRecord);
        v67 = v222;
        sub_221E50C24(v222, type metadata accessor for DistanceSampleIntervalRecord);
        ++v65;
        result = &v231[v247];
        v64 = &v231[v248];
        v52 = v224;
        v66 = v243;
        if ((v230 & 1) != v75)
        {
          v102 = (v65 - 1);
          goto LABEL_19;
        }
      }

      v102 = v228;
LABEL_19:
      v101 = v210;
      v39 = v238;
      v53 = v212;
      if (v230)
      {
        if (v102 < v212)
        {
          goto LABEL_139;
        }

        if (v212 < v102)
        {
          v103 = v102;
          v104 = v231 * (v102 - 1);
          v105 = v103 * v231;
          v228 = v103;
          v106 = v212;
          v107 = v212 * v231;
          do
          {
            if (v106 != --v103)
            {
              v108 = *v225;
              if (!*v225)
              {
                goto LABEL_145;
              }

              sub_221E50CF4(&v108[v107], v215, type metadata accessor for DistanceSampleIntervalRecord);
              if (v107 < v104 || &v108[v107] >= &v108[v105])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v107 != v104)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_221E50CF4(v215, &v108[v104], type metadata accessor for DistanceSampleIntervalRecord);
              v52 = v224;
            }

            ++v106;
            v104 -= v231;
            v105 -= v231;
            v107 += v231;
          }

          while (v106 < v103);
          v101 = v210;
          v39 = v238;
          v66 = v243;
          v102 = v228;
          v53 = v212;
        }
      }
    }

    v109 = v225[1];
    if (v102 < v109)
    {
      if (__OFSUB__(v102, v53))
      {
        goto LABEL_138;
      }

      if (v102 - v53 < v101)
      {
        if (__OFADD__(v53, v101))
        {
          goto LABEL_140;
        }

        if (v53 + v101 < v109)
        {
          v109 = (v53 + v101);
        }

        if (v109 < v53)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v214 = v109;
        if (v102 != v109)
        {
          break;
        }
      }
    }

    v51 = v102;
    if (v102 < v53)
    {
      goto LABEL_137;
    }

LABEL_42:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221E4568C(0, *(v52 + 2) + 1, 1, v52);
      v52 = result;
    }

    v102 = *(v52 + 2);
    v110 = *(v52 + 3);
    v111 = v102 + 1;
    if (v102 >= v110 >> 1)
    {
      result = sub_221E4568C((v110 > 1), v102 + 1, 1, v52);
      v52 = result;
    }

    *(v52 + 2) = v111;
    v112 = &v52[16 * v102];
    *(v112 + 4) = v53;
    *(v112 + 5) = v51;
    v113 = *v211;
    if (!*v211)
    {
      goto LABEL_147;
    }

    if (v102)
    {
      while (1)
      {
        v114 = v111 - 1;
        if (v111 >= 4)
        {
          break;
        }

        if (v111 == 3)
        {
          v115 = *(v52 + 4);
          v116 = *(v52 + 5);
          v125 = __OFSUB__(v116, v115);
          v117 = v116 - v115;
          v118 = v125;
LABEL_61:
          if (v118)
          {
            goto LABEL_126;
          }

          v131 = &v52[16 * v111];
          v133 = *v131;
          v132 = *(v131 + 1);
          v134 = __OFSUB__(v132, v133);
          v135 = v132 - v133;
          v136 = v134;
          if (v134)
          {
            goto LABEL_129;
          }

          v137 = &v52[16 * v114 + 32];
          v139 = *v137;
          v138 = *(v137 + 1);
          v125 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v125)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v135, v140))
          {
            goto LABEL_133;
          }

          if (v135 + v140 >= v117)
          {
            if (v117 < v140)
            {
              v114 = v111 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v141 = &v52[16 * v111];
        v143 = *v141;
        v142 = *(v141 + 1);
        v125 = __OFSUB__(v142, v143);
        v135 = v142 - v143;
        v136 = v125;
LABEL_75:
        if (v136)
        {
          goto LABEL_128;
        }

        v144 = &v52[16 * v114];
        v146 = *(v144 + 4);
        v145 = *(v144 + 5);
        v125 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v125)
        {
          goto LABEL_131;
        }

        if (v147 < v135)
        {
          goto LABEL_3;
        }

LABEL_82:
        v102 = v114 - 1;
        if (v114 - 1 >= v111)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v225)
        {
          goto LABEL_144;
        }

        v152 = *&v52[16 * v102 + 32];
        v153 = *&v52[16 * v114 + 40];
        v154 = v229;
        sub_221E4A5F4(&(*v225)[*(v223 + 72) * v152], &(*v225)[*(v223 + 72) * *&v52[16 * v114 + 32]], &(*v225)[*(v223 + 72) * v153], v113);
        v229 = v154;
        if (v154)
        {
        }

        if (v153 < v152)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_221E4C5CC(v52);
        }

        if (v102 >= *(v52 + 2))
        {
          goto LABEL_123;
        }

        v155 = &v52[16 * v102];
        *(v155 + 4) = v152;
        *(v155 + 5) = v153;
        v256 = v52;
        result = sub_221E4C540(v114);
        v52 = v256;
        v111 = *(v256 + 2);
        v39 = v238;
        if (v111 <= 1)
        {
          goto LABEL_3;
        }
      }

      v119 = &v52[16 * v111 + 32];
      v120 = *(v119 - 64);
      v121 = *(v119 - 56);
      v125 = __OFSUB__(v121, v120);
      v122 = v121 - v120;
      if (v125)
      {
        goto LABEL_124;
      }

      v124 = *(v119 - 48);
      v123 = *(v119 - 40);
      v125 = __OFSUB__(v123, v124);
      v117 = v123 - v124;
      v118 = v125;
      if (v125)
      {
        goto LABEL_125;
      }

      v126 = &v52[16 * v111];
      v128 = *v126;
      v127 = *(v126 + 1);
      v125 = __OFSUB__(v127, v128);
      v129 = v127 - v128;
      if (v125)
      {
        goto LABEL_127;
      }

      v125 = __OFADD__(v117, v129);
      v130 = v117 + v129;
      if (v125)
      {
        goto LABEL_130;
      }

      if (v130 >= v122)
      {
        v148 = &v52[16 * v114 + 32];
        v150 = *v148;
        v149 = *(v148 + 1);
        v125 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v125)
        {
          goto LABEL_134;
        }

        if (v117 < v151)
        {
          v114 = v111 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v50 = v225[1];
    if (v51 >= v50)
    {
      goto LABEL_110;
    }
  }

  v156 = *v225;
  v248 = objc_opt_self();
  v157 = *(v223 + 72);
  v158 = &v156[v157 * (v102 - 1)];
  v230 = -v157;
  v212 = v53;
  v159 = (v53 - v102);
  v231 = v156;
  v213 = v157;
  v160 = &v156[v102 * v157];
LABEL_93:
  v228 = v102;
  v216 = v160;
  v220 = v159;
  v161 = v159;
  v221 = v158;
  v162 = v158;
  while (1)
  {
    v244 = v160;
    v245 = v161;
    sub_221E50BBC(v160, v66, type metadata accessor for DistanceSampleIntervalRecord);
    sub_221E50BBC(v162, v39, type metadata accessor for DistanceSampleIntervalRecord);
    v163 = [v248 meters];
    v165 = v253;
    v164 = v254;
    sub_221E56E40();

    sub_221E56E10();
    v167 = v166;
    v247 = *v251;
    (v247)(v165, v164);
    if (v167 > 0.0)
    {
      v168 = [objc_opt_self() seconds];
      v170 = v239;
      v169 = v240;
      sub_221E56E40();

      sub_221E56E10();
      (*v236)(v170, v169);
    }

    v171 = v234;
    if (qword_27CFEA9B0 != -1)
    {
      swift_once();
    }

    v172 = qword_27CFEA9B8;
    v173 = type metadata accessor for UnitPace();
    v174 = v172;
    v246 = v173;
    sub_221E56E00();
    if (qword_27CFEA9B0 != -1)
    {
      swift_once();
    }

    v175 = v252;
    sub_221E56E40();
    sub_221E56E10();
    v176 = *v250;
    (*v250)(v175, v9);
    v177 = [objc_opt_self() metersPerSecond];
    sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
    sub_221E56E00();
    v176(v171, v9);
    v178 = [v248 meters];
    v179 = v238;
    v180 = v253;
    v181 = v254;
    sub_221E56E40();

    sub_221E56E10();
    v183 = v182;
    (v247)(v180, v181);
    if (v183 > 0.0)
    {
      v184 = [objc_opt_self() seconds];
      v186 = v239;
      v185 = v240;
      sub_221E56E40();

      sub_221E56E10();
      (*v236)(v186, v185);
    }

    v187 = v174;
    v188 = v235;
    sub_221E56E00();
    v189 = v252;
    v9 = v237;
    sub_221E56E40();
    sub_221E56E10();
    v176(v189, v9);
    v190 = [objc_opt_self() metersPerSecond];
    v191 = v233;
    sub_221E56E00();
    v176(v188, v9);
    sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0, MEMORY[0x277CC87E8]);
    v192 = v249;
    v193 = v242;
    v194 = sub_221E56F20();
    v195 = *v241;
    (*v241)(v191, v193);
    v195(v192, v193);
    sub_221E50C24(v179, type metadata accessor for DistanceSampleIntervalRecord);
    v66 = v243;
    result = sub_221E50C24(v243, type metadata accessor for DistanceSampleIntervalRecord);
    v39 = v179;
    if ((v194 & 1) == 0)
    {
LABEL_92:
      v102 = (v228 + 1);
      v158 = v221 + v213;
      v159 = v220 - 1;
      v160 = v216 + v213;
      if (v228 + 1 != v214)
      {
        goto LABEL_93;
      }

      v52 = v224;
      v53 = v212;
      v51 = v214;
      if (v214 < v212)
      {
        goto LABEL_137;
      }

      goto LABEL_42;
    }

    v196 = v245;
    if (!v231)
    {
      break;
    }

    v197 = v244;
    v198 = v232;
    sub_221E50CF4(v244, v232, type metadata accessor for DistanceSampleIntervalRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_221E50CF4(v198, v162, type metadata accessor for DistanceSampleIntervalRecord);
    v162 += v230;
    v160 = v197 + v230;
    v199 = __CFADD__(v196, 1);
    v161 = v196 + 1;
    if (v199)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_221E490EC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v8 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v119 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v115 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v124 = &v106 - v14;
  result = MEMORY[0x28223BE20](v13);
  v123 = &v106 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    v20 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_221E4C5CC(v19);
      v19 = result;
    }

    v126 = v19;
    v102 = *(v19 + 2);
    if (v102 >= 2)
    {
      while (*a3)
      {
        v103 = *&v19[16 * v102];
        v104 = *&v19[16 * v102 + 24];
        sub_221E4B8D8(*a3 + *(v119 + 72) * v103, *a3 + *(v119 + 72) * *&v19[16 * v102 + 16], *a3 + *(v119 + 72) * v104, v20);
        if (v5)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_221E4C5CC(v19);
        }

        if (v102 - 2 >= *(v19 + 2))
        {
          goto LABEL_122;
        }

        v105 = &v19[16 * v102];
        *v105 = v103;
        *(v105 + 1) = v104;
        v126 = v19;
        result = sub_221E4C540(v102 - 1);
        v19 = v126;
        v102 = *(v126 + 2);
        if (v102 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v108 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v125 = v8;
  v112 = a3;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v35 = v18 + 1;
    }

    else
    {
      v120 = v17;
      v109 = v5;
      v21 = *a3;
      v22 = *(v119 + 72);
      v23 = v18;
      v111 = v18;
      v24 = v21 + v22 * (v18 + 1);
      v25 = v21;
      v116 = v21;
      v26 = v123;
      sub_221E50BBC(v24, v123, type metadata accessor for DistanceSampleIntervalRecord);
      v27 = v124;
      sub_221E50BBC(v25 + v22 * v23, v124, type metadata accessor for DistanceSampleIntervalRecord);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
      v117 = sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860, MEMORY[0x277CC87E8]);
      LODWORD(v118) = sub_221E56F30();
      sub_221E50C24(v27, type metadata accessor for DistanceSampleIntervalRecord);
      result = sub_221E50C24(v26, type metadata accessor for DistanceSampleIntervalRecord);
      v28 = v111 + 2;
      v121 = v22;
      v29 = v116 + v22 * (v111 + 2);
      while (v120 != v28)
      {
        v30 = v123;
        sub_221E50BBC(v29, v123, type metadata accessor for DistanceSampleIntervalRecord);
        v31 = v124;
        sub_221E50BBC(v24, v124, type metadata accessor for DistanceSampleIntervalRecord);
        v32 = v19;
        v33 = sub_221E56F30() & 1;
        sub_221E50C24(v31, type metadata accessor for DistanceSampleIntervalRecord);
        result = sub_221E50C24(v30, type metadata accessor for DistanceSampleIntervalRecord);
        ++v28;
        v29 += v121;
        v24 += v121;
        v34 = (v118 & 1) == v33;
        v19 = v32;
        if (!v34)
        {
          v35 = v28 - 1;
          goto LABEL_11;
        }
      }

      v35 = v120;
LABEL_11:
      v5 = v109;
      v20 = v111;
      a3 = v112;
      if (v118)
      {
        if (v35 < v111)
        {
          goto LABEL_125;
        }

        if (v111 < v35)
        {
          v107 = v19;
          v36 = v121 * (v35 - 1);
          v37 = v35 * v121;
          v38 = v35;
          v39 = v111;
          v40 = v111 * v121;
          do
          {
            if (v39 != --v35)
            {
              v41 = *a3;
              if (!v41)
              {
                goto LABEL_131;
              }

              sub_221E50CF4(v41 + v40, v115, type metadata accessor for DistanceSampleIntervalRecord);
              if (v40 < v36 || v41 + v40 >= (v41 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_221E50CF4(v115, v41 + v36, type metadata accessor for DistanceSampleIntervalRecord);
              a3 = v112;
            }

            ++v39;
            v36 -= v121;
            v37 -= v121;
            v40 += v121;
          }

          while (v39 < v35);
          v5 = v109;
          v19 = v107;
          v20 = v111;
          v35 = v38;
        }
      }
    }

    v42 = a3[1];
    if (v35 < v42)
    {
      if (__OFSUB__(v35, v20))
      {
        goto LABEL_124;
      }

      if (v35 - v20 < v108)
      {
        if (__OFADD__(v20, v108))
        {
          goto LABEL_126;
        }

        if (v20 + v108 >= v42)
        {
          v43 = a3[1];
        }

        else
        {
          v43 = v20 + v108;
        }

        if (v43 < v20)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v35 != v43)
        {
          break;
        }
      }
    }

    v18 = v35;
    if (v35 < v20)
    {
      goto LABEL_123;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221E4568C(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v45 = *(v19 + 2);
    v44 = *(v19 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_221E4568C((v44 > 1), v45 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v46;
    v47 = &v19[16 * v45];
    *(v47 + 4) = v20;
    *(v47 + 5) = v18;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_133;
    }

    if (v45)
    {
      while (1)
      {
        v20 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = *(v19 + 4);
          v50 = *(v19 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_55:
          if (v52)
          {
            goto LABEL_112;
          }

          v65 = &v19[16 * v46];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_115;
          }

          v71 = &v19[16 * v20 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_119;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v20 = v46 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v75 = &v19[16 * v46];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_69:
        if (v70)
        {
          goto LABEL_114;
        }

        v78 = &v19[16 * v20];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_117;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_76:
        v86 = v20 - 1;
        if (v20 - 1 >= v46)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v87 = *&v19[16 * v86 + 32];
        v88 = *&v19[16 * v20 + 40];
        sub_221E4B8D8(*a3 + *(v119 + 72) * v87, *a3 + *(v119 + 72) * *&v19[16 * v20 + 32], *a3 + *(v119 + 72) * v88, v48);
        if (v5)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_221E4C5CC(v19);
        }

        if (v86 >= *(v19 + 2))
        {
          goto LABEL_109;
        }

        v89 = &v19[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        v126 = v19;
        result = sub_221E4C540(v20);
        v19 = v126;
        v46 = *(v126 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v19[16 * v46 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_110;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_111;
      }

      v60 = &v19[16 * v46];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_113;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_116;
      }

      if (v64 >= v56)
      {
        v82 = &v19[16 * v20 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_120;
        }

        if (v51 < v85)
        {
          v20 = v46 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v107 = v19;
  v109 = v5;
  v90 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v91 = *(v119 + 72);
  v92 = v90 + v91 * (v35 - 1);
  v93 = -v91;
  v111 = v20;
  v94 = v20 - v35;
  v121 = v90;
  v113 = v91;
  v114 = v43;
  v95 = v90 + v35 * v91;
LABEL_87:
  v120 = v35;
  v116 = v95;
  v117 = v94;
  v118 = v92;
  v96 = v92;
  while (1)
  {
    v97 = v123;
    sub_221E50BBC(v95, v123, type metadata accessor for DistanceSampleIntervalRecord);
    v98 = v124;
    sub_221E50BBC(v96, v124, type metadata accessor for DistanceSampleIntervalRecord);
    sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860, MEMORY[0x277CC87E8]);
    v99 = sub_221E56F30();
    sub_221E50C24(v98, type metadata accessor for DistanceSampleIntervalRecord);
    result = sub_221E50C24(v97, type metadata accessor for DistanceSampleIntervalRecord);
    if ((v99 & 1) == 0)
    {
LABEL_86:
      v35 = v120 + 1;
      v18 = v114;
      v92 = v118 + v113;
      v94 = v117 - 1;
      v95 = v116 + v113;
      if (v120 + 1 != v114)
      {
        goto LABEL_87;
      }

      v5 = v109;
      v20 = v111;
      a3 = v112;
      v19 = v107;
      if (v114 < v111)
      {
        goto LABEL_123;
      }

      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v100 = v122;
    sub_221E50CF4(v95, v122, type metadata accessor for DistanceSampleIntervalRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_221E50CF4(v100, v96, type metadata accessor for DistanceSampleIntervalRecord);
    v96 += v93;
    v95 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_221E49ACC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v146 = sub_221E56ED0();
  v8 = *(v146 - 8);
  v9 = MEMORY[0x28223BE20](v146);
  v145 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v144 = &v123 - v11;
  v141 = type metadata accessor for DistanceSample(0);
  v12 = *(v141 - 8);
  v13 = MEMORY[0x28223BE20](v141);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v140 = &v123 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v123 - v19;
  result = MEMORY[0x28223BE20](v18);
  v147 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
    v25 = a3;
LABEL_95:
    v15 = *v129;
    if (!*v129)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_221E4C5CC(v24);
      v24 = result;
    }

    v150 = v24;
    v117 = *(v24 + 2);
    if (v117 >= 2)
    {
      while (1)
      {
        v118 = *v25;
        if (!*v25)
        {
          goto LABEL_131;
        }

        v119 = v24;
        v24 = v25;
        v25 = (v117 - 1);
        v120 = *&v119[16 * v117];
        v121 = *&v119[16 * v117 + 24];
        sub_221E4BEA0((v118 + *(v12 + 72) * v120), (v118 + *(v12 + 72) * *&v119[16 * v117 + 16]), v118 + *(v12 + 72) * v121, v15);
        if (v5)
        {
        }

        if (v121 < v120)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_221E4C5CC(v119);
        }

        if (v117 - 2 >= *(v119 + 2))
        {
          goto LABEL_121;
        }

        v122 = &v119[16 * v117];
        *v122 = v120;
        *(v122 + 1) = v121;
        v150 = v119;
        result = sub_221E4C540(v25);
        v117 = *(v150 + 2);
        v25 = v24;
        v24 = v150;
        if (v117 <= 1)
        {
        }
      }
    }
  }

  v124 = a4;
  v23 = 0;
  v142 = (v8 + 8);
  v24 = MEMORY[0x277D84F90];
  v25 = a3;
  v126 = a3;
  v127 = v12;
  v125 = v15;
  while (1)
  {
    v136 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v137 = v22;
      v128 = v5;
      v26 = *v25;
      v27 = *v25 + *(v12 + 72) * (v23 + 1);
      v148 = *(v12 + 72);
      v28 = v148;
      v149 = v26;
      v29 = v26;
      v130 = v23;
      v30 = v27;
      sub_221E50BBC(v27, v147, type metadata accessor for DistanceSample);
      v31 = v143;
      sub_221E50BBC(v29 + v28 * v23, v143, type metadata accessor for DistanceSample);
      v32 = v144;
      sub_221E56E90();
      v33 = v145;
      sub_221E56E90();
      LODWORD(v139) = sub_221E56EC0();
      v34 = *v142;
      v35 = v146;
      (*v142)(v33, v146);
      v138 = v34;
      v34(v32, v35);
      sub_221E50C24(v31, type metadata accessor for DistanceSample);
      result = sub_221E50C24(v147, type metadata accessor for DistanceSample);
      v36 = v130 + 2;
      v37 = v149 + v148 * (v130 + 2);
      while (1)
      {
        v38 = v137;
        if (v137 == v36)
        {
          break;
        }

        sub_221E50BBC(v37, v147, type metadata accessor for DistanceSample);
        v39 = v143;
        sub_221E50BBC(v30, v143, type metadata accessor for DistanceSample);
        v40 = v144;
        sub_221E56E90();
        v41 = v145;
        sub_221E56E90();
        LOBYTE(v149) = sub_221E56EC0() & 1;
        LODWORD(v149) = v149;
        v42 = v146;
        v43 = v138;
        (v138)(v41, v146);
        v44 = v42;
        v24 = v136;
        v43(v40, v44);
        sub_221E50C24(v39, type metadata accessor for DistanceSample);
        result = sub_221E50C24(v147, type metadata accessor for DistanceSample);
        ++v36;
        v37 += v148;
        v30 += v148;
        if ((v139 & 1) != v149)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v128;
      v12 = v127;
      v15 = v125;
      v25 = v126;
      v23 = v130;
      if (v139)
      {
        if (v38 < v130)
        {
          goto LABEL_124;
        }

        if (v130 < v38)
        {
          v45 = v38;
          v46 = v148 * (v38 - 1);
          v47 = v38 * v148;
          v137 = v38;
          v48 = v130;
          v49 = v130 * v148;
          do
          {
            if (v48 != --v45)
            {
              v50 = *v25;
              if (!*v25)
              {
                goto LABEL_130;
              }

              sub_221E50CF4(v50 + v49, v15, type metadata accessor for DistanceSample);
              if (v49 < v46 || v50 + v49 >= (v50 + v47))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_221E50CF4(v15, v50 + v46, type metadata accessor for DistanceSample);
              v24 = v136;
            }

            ++v48;
            v46 -= v148;
            v47 -= v148;
            v49 += v148;
          }

          while (v48 < v45);
          v5 = v128;
          v12 = v127;
          v23 = v130;
          v38 = v137;
        }
      }
    }

    v51 = v25[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v23))
      {
        goto LABEL_123;
      }

      if (v38 - v23 < v124)
      {
        if (__OFADD__(v23, v124))
        {
          goto LABEL_125;
        }

        if (v23 + v124 >= v51)
        {
          v52 = v25[1];
        }

        else
        {
          v52 = v23 + v124;
        }

        if (v52 < v23)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v38 != v52)
        {
          break;
        }
      }
    }

    v53 = v38;
    if (v38 < v23)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221E4568C(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v55 = *(v24 + 2);
    v54 = *(v24 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_221E4568C((v54 > 1), v55 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v56;
    v57 = &v24[16 * v55];
    *(v57 + 4) = v23;
    *(v57 + 5) = v53;
    v58 = *v129;
    if (!*v129)
    {
      goto LABEL_132;
    }

    v132 = v53;
    if (v55)
    {
      v15 = v58;
      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v24 + 4);
          v61 = *(v24 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_53:
          if (v63)
          {
            goto LABEL_111;
          }

          v76 = &v24[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_114;
          }

          v82 = &v24[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_118;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v86 = &v24[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_67:
        if (v81)
        {
          goto LABEL_113;
        }

        v89 = &v24[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_116;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_74:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v25)
        {
          goto LABEL_129;
        }

        v98 = *&v24[16 * v97 + 32];
        v99 = *&v24[16 * v59 + 40];
        sub_221E4BEA0((*v25 + *(v12 + 72) * v98), (*v25 + *(v12 + 72) * *&v24[16 * v59 + 32]), *v25 + *(v12 + 72) * v99, v15);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_221E4C5CC(v24);
        }

        if (v97 >= *(v24 + 2))
        {
          goto LABEL_108;
        }

        v100 = &v24[16 * v97];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v150 = v24;
        result = sub_221E4C540(v59);
        v24 = v150;
        v56 = *(v150 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v24[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_109;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_110;
      }

      v71 = &v24[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_112;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_115;
      }

      if (v75 >= v67)
      {
        v93 = &v24[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = v25[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_95;
    }
  }

  v128 = v5;
  v101 = *v25;
  v102 = *(v12 + 72);
  v103 = *v25 + v102 * (v38 - 1);
  v138 = -v102;
  v139 = v101;
  v130 = v23;
  v131 = v102;
  v104 = v23 - v38;
  v105 = v101 + v38 * v102;
  v132 = v52;
LABEL_86:
  v137 = v38;
  v133 = v105;
  v134 = v104;
  v106 = v105;
  v107 = v104;
  v135 = v103;
  v108 = v103;
  while (1)
  {
    v148 = v107;
    v109 = v147;
    sub_221E50BBC(v106, v147, type metadata accessor for DistanceSample);
    v110 = v143;
    sub_221E50BBC(v108, v143, type metadata accessor for DistanceSample);
    v111 = v144;
    sub_221E56E90();
    v112 = v145;
    sub_221E56E90();
    LODWORD(v149) = sub_221E56EC0();
    v113 = *v142;
    v114 = v112;
    v15 = v146;
    (*v142)(v114, v146);
    v113(v111, v15);
    sub_221E50C24(v110, type metadata accessor for DistanceSample);
    result = sub_221E50C24(v109, type metadata accessor for DistanceSample);
    if ((v149 & 1) == 0)
    {
LABEL_85:
      v38 = v137 + 1;
      v53 = v132;
      v103 = v135 + v131;
      v104 = v134 - 1;
      v105 = v133 + v131;
      if (v137 + 1 != v132)
      {
        goto LABEL_86;
      }

      v5 = v128;
      v25 = v126;
      v12 = v127;
      v24 = v136;
      v23 = v130;
      if (v132 < v130)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v115 = v148;
    if (!v139)
    {
      break;
    }

    v15 = v140;
    sub_221E50CF4(v106, v140, type metadata accessor for DistanceSample);
    swift_arrayInitWithTakeFrontToBack();
    sub_221E50CF4(v15, v108, type metadata accessor for DistanceSample);
    v108 += v138;
    v106 += v138;
    v116 = __CFADD__(v115, 1);
    v107 = v115 + 1;
    if (v116)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_221E4A5F4(unint64_t a1, char *a2, char *a3, char *a4)
{
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v8 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v131 - v9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v10 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v160 = &v131 - v11;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v12 = *(v159 - 8);
  v13 = MEMORY[0x28223BE20](v159);
  v137 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v136 = &v131 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v143 = &v131 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v158 = &v131 - v20;
  MEMORY[0x28223BE20](v19);
  v142 = &v131 - v21;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  v157 = *(v145 - 8);
  v22 = MEMORY[0x28223BE20](v145);
  v135 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v131 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v141 = &v131 - v27;
  MEMORY[0x28223BE20](v26);
  v154 = &v131 - v28;
  v29 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v30 = MEMORY[0x28223BE20](v29);
  v140 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v138 = (&v131 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  result = MEMORY[0x28223BE20](v34);
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_75;
  }

  v40 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_76;
  }

  v41 = &a2[-a1] / v39;
  v165 = a1;
  v164 = a4;
  v162 = v29;
  v144 = v39;
  if (v41 >= v40 / v39)
  {
    v150 = v12;
    v154 = v10;
    v43 = v40 / v39 * v39;
    if (a4 < a2 || &a2[v43] <= a4)
    {
      v44 = v8;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v44 = v8;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v84 = a2;
    v85 = &a4[v43];
    if (v43 >= 1)
    {
      v86 = -v144;
      v151 = (v154 + 8);
      v134 = (v44 + 8);
      ++v150;
      v133 = (v157 + 8);
      v87 = &a4[v43];
      v88 = v140;
      v89 = v138;
      v155 = a4;
      v156 = a1;
      v152 = -v144;
      do
      {
        v132 = v85;
        v90 = &v84[v86];
        v157 = &v84[v86];
        v141 = v84;
        while (1)
        {
          v154 = a3;
          if (v84 <= a1)
          {
            v165 = v84;
            v163 = v132;
            goto LABEL_73;
          }

          v139 = v85;
          v149 = v87;
          v142 = &v87[v86];
          sub_221E50BBC(&v87[v86], v89, type metadata accessor for DistanceSampleIntervalRecord);
          sub_221E50BBC(v90, v88, type metadata accessor for DistanceSampleIntervalRecord);
          v148 = objc_opt_self();
          v92 = [v148 meters];
          v93 = v160;
          v94 = v161;
          sub_221E56E40();

          sub_221E56E10();
          v96 = v95;
          v97 = *v151;
          (*v151)(v93, v94);
          v144 = v97;
          if (v96 > 0.0)
          {
            v98 = [objc_opt_self() seconds];
            v99 = v146;
            v100 = v147;
            sub_221E56E40();

            sub_221E56E10();
            (*v134)(v99, v100);
          }

          if (qword_27CFEA9B0 != -1)
          {
            swift_once();
          }

          v101 = qword_27CFEA9B8;
          type metadata accessor for UnitPace();
          v102 = v101;
          v103 = v136;
          sub_221E56E00();
          if (qword_27CFEA9B0 != -1)
          {
            swift_once();
          }

          v105 = v158;
          v104 = v159;
          sub_221E56E40();
          sub_221E56E10();
          v106 = *v150;
          (*v150)(v105, v104);
          v107 = [objc_opt_self() metersPerSecond];
          v143 = sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
          sub_221E56E00();
          v106(v103, v104);
          v108 = [v148 meters];
          v109 = v140;
          v110 = v160;
          v111 = v161;
          sub_221E56E40();

          sub_221E56E10();
          v113 = v112;
          (v144)(v110, v111);
          if (v113 > 0.0)
          {
            v114 = [objc_opt_self() seconds];
            v115 = v146;
            v116 = v147;
            sub_221E56E40();

            sub_221E56E10();
            (*v134)(v115, v116);
          }

          v117 = v102;
          v118 = v137;
          sub_221E56E00();
          v120 = v158;
          v119 = v159;
          sub_221E56E40();
          sub_221E56E10();
          v106(v120, v119);
          v121 = [objc_opt_self() metersPerSecond];
          v122 = v135;
          sub_221E56E00();
          v123 = v154;
          a3 = &v154[v152];
          v106(v118, v119);
          sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0, MEMORY[0x277CC87E8]);
          v124 = v153;
          v125 = v145;
          v126 = sub_221E56F20();
          v127 = *v133;
          (*v133)(v122, v125);
          v127(v124, v125);
          sub_221E50C24(v109, type metadata accessor for DistanceSampleIntervalRecord);
          v89 = v138;
          sub_221E50C24(v138, type metadata accessor for DistanceSampleIntervalRecord);
          v88 = v109;
          if (v126)
          {
            break;
          }

          v128 = v142;
          v85 = v142;
          a1 = v156;
          v90 = v157;
          v129 = v155;
          if (v123 < v149 || a3 >= v149)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v154 != v149)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v87 = v85;
          v91 = v128 > v129;
          v86 = v152;
          v84 = v141;
          if (!v91)
          {
            goto LABEL_71;
          }
        }

        a1 = v156;
        v130 = v155;
        if (v123 < v141 || a3 >= v141)
        {
          v84 = v157;
          swift_arrayInitWithTakeFrontToBack();
          v85 = v139;
        }

        else
        {
          v84 = v157;
          v85 = v139;
          if (v154 != v141)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v87 = v149;
        v86 = v152;
      }

      while (v149 > v130);
    }

LABEL_71:
    v165 = v84;
    v163 = v85;
  }

  else
  {
    v42 = v41 * v39;
    v152 = &v131 - v36;
    v153 = v37;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v140 = &a4[v42];
    v163 = &a4[v42];
    if (v42 >= 1 && a2 < a3)
    {
      v151 = (v10 + 8);
      v138 = (v8 + 8);
      v150 = v12 + 1;
      v137 = v157 + 8;
      v139 = a3;
      do
      {
        v156 = a1;
        sub_221E50BBC(a2, v152, type metadata accessor for DistanceSampleIntervalRecord);
        sub_221E50BBC(a4, v153, type metadata accessor for DistanceSampleIntervalRecord);
        v46 = objc_opt_self();
        v47 = [v46 meters];
        v49 = v160;
        v48 = v161;
        sub_221E56E40();

        sub_221E56E10();
        v51 = v50;
        v149 = *v151;
        (v149)(v49, v48);
        v157 = a2;
        if (v51 > 0.0)
        {
          v52 = [objc_opt_self() seconds];
          v53 = v146;
          v54 = v147;
          sub_221E56E40();

          sub_221E56E10();
          (*v138)(v53, v54);
        }

        v55 = v142;
        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v155 = a4;
        v56 = qword_27CFEA9B8;
        type metadata accessor for UnitPace();
        v57 = v56;
        sub_221E56E00();
        if (qword_27CFEA9B0 != -1)
        {
          swift_once();
        }

        v59 = v158;
        v58 = v159;
        sub_221E56E40();
        sub_221E56E10();
        v60 = *v150;
        (*v150)(v59, v58);
        v61 = [objc_opt_self() metersPerSecond];
        v148 = sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
        sub_221E56E00();
        v60(v55, v58);
        v62 = [v46 meters];
        v63 = v153;
        v64 = v160;
        v65 = v161;
        sub_221E56E40();

        sub_221E56E10();
        v67 = v66;
        (v149)(v64, v65);
        if (v67 > 0.0)
        {
          v68 = [objc_opt_self() seconds];
          v69 = v146;
          v70 = v147;
          sub_221E56E40();

          sub_221E56E10();
          (*v138)(v69, v70);
        }

        v71 = v57;
        v72 = v143;
        sub_221E56E00();
        v74 = v158;
        v73 = v159;
        sub_221E56E40();
        sub_221E56E10();
        v60(v74, v73);
        v75 = [objc_opt_self() metersPerSecond];
        v76 = v141;
        sub_221E56E00();
        v60(v72, v73);
        sub_221E51574(&qword_27CFEA910, &qword_27CFEA8B8, &qword_221E5E9A0, MEMORY[0x277CC87E8]);
        v77 = v154;
        v78 = v145;
        v79 = sub_221E56F20();
        v80 = *v137;
        (*v137)(v76, v78);
        v80(v77, v78);
        sub_221E50C24(v63, type metadata accessor for DistanceSampleIntervalRecord);
        sub_221E50C24(v152, type metadata accessor for DistanceSampleIntervalRecord);
        v81 = v156;
        if (v79)
        {
          v82 = v144;
          a2 = &v157[v144];
          a4 = v155;
          v83 = v139;
          if (v156 < v157 || v156 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v156 != v157)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v82 = v144;
          a4 = &v155[v144];
          a2 = v157;
          v83 = v139;
          if (v156 < v155 || v156 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v156 != v155)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v164 = a4;
        }

        a1 = v81 + v82;
        v165 = a1;
      }

      while (a4 < v140 && a2 < v83);
    }
  }

LABEL_73:
  sub_221E4C5E0(&v165, &v164, &v163, type metadata accessor for DistanceSampleIntervalRecord);
  return 1;
}

uint64_t sub_221E4B8D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v8 = MEMORY[0x28223BE20](v50);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v47 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 >= 1)
    {
      v43 = a4;
      v29 = -v13;
      v30 = a4 + v17;
      v49 = a1;
      v44 = -v13;
      do
      {
        v41 = v28;
        v31 = a2;
        v32 = a2 + v29;
        v45 = a2;
        v46 = a2 + v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v53 = v31;
            v51 = v41;
            goto LABEL_59;
          }

          v34 = a3;
          v42 = v28;
          a3 += v29;
          v35 = v30 + v29;
          v36 = v47;
          sub_221E50BBC(v35, v47, type metadata accessor for DistanceSampleIntervalRecord);
          v37 = v48;
          sub_221E50BBC(v32, v48, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
          sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860, MEMORY[0x277CC87E8]);
          v38 = sub_221E56F30();
          sub_221E50C24(v37, type metadata accessor for DistanceSampleIntervalRecord);
          sub_221E50C24(v36, type metadata accessor for DistanceSampleIntervalRecord);
          if (v38)
          {
            break;
          }

          v28 = v35;
          if (v34 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v46;
          }

          else
          {
            v32 = v46;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v35;
          v33 = v35 > v43;
          a1 = v49;
          v29 = v44;
          v31 = v45;
          if (!v33)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (v34 < v45 || a3 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v42;
          v29 = v44;
        }

        else
        {
          v39 = v34 == v45;
          a2 = v46;
          v28 = v42;
          v29 = v44;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v49;
      }

      while (v30 > v43);
    }

LABEL_58:
    v53 = a2;
    v51 = v28;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v44 = v13;
      v45 = a3;
      v19 = v48;
      do
      {
        v49 = a1;
        v20 = v47;
        sub_221E50BBC(a2, v47, type metadata accessor for DistanceSampleIntervalRecord);
        v21 = a2;
        sub_221E50BBC(a4, v19, type metadata accessor for DistanceSampleIntervalRecord);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
        v22 = a4;
        sub_221E51574(&qword_27CFEA8E0, &qword_27CFEA858, &unk_221E5E860, MEMORY[0x277CC87E8]);
        v23 = sub_221E56F30();
        sub_221E50C24(v19, type metadata accessor for DistanceSampleIntervalRecord);
        sub_221E50C24(v20, type metadata accessor for DistanceSampleIntervalRecord);
        if (v23)
        {
          v24 = v44;
          v25 = v49;
          if (v49 < v21 || v49 >= v21 + v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v21 + v24;
            v26 = v45;
          }

          else
          {
            v26 = v45;
            if (v49 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v21 + v24;
          }
        }

        else
        {
          v24 = v44;
          a4 += v44;
          v25 = v49;
          v27 = v22;
          if (v49 < v22 || v49 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v45;
            a2 = v21;
          }

          else
          {
            v26 = v45;
            a2 = v21;
            if (v49 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4;
        }

        a1 = v25 + v24;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v26);
    }
  }

LABEL_59:
  sub_221E4C5E0(&v53, &v52, &v51, type metadata accessor for DistanceSampleIntervalRecord);
  return 1;
}

uint64_t sub_221E4BEA0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v64 = a4;
  v60 = sub_221E56ED0();
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v48 - v10;
  v56 = type metadata accessor for DistanceSample(0);
  v11 = MEMORY[0x28223BE20](v56);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v62 = &v48 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v16;
  v67 = a1;
  v66 = v64;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (v64 < a2 || &a2[v20] <= v64)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v64 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a2;
    v34 = &v64[v20];
    if (v20 >= 1)
    {
      v35 = -v16;
      v51 = (v7 + 8);
      v52 = v35;
      v36 = &v64[v20];
      v63 = a1;
      v37 = v58;
      do
      {
        v49 = v34;
        v38 = v53;
        v53 += v35;
        v54 = v38;
        while (1)
        {
          if (v38 <= a1)
          {
            v67 = v38;
            v65 = v49;
            goto LABEL_58;
          }

          v39 = a3;
          v50 = v34;
          v61 = a3 + v35;
          v40 = v36 + v35;
          sub_221E50BBC(v36 + v35, v62, type metadata accessor for DistanceSample);
          v41 = v57;
          sub_221E50BBC(v53, v57, type metadata accessor for DistanceSample);
          v42 = v36;
          sub_221E56E90();
          v43 = v59;
          sub_221E56E90();
          LODWORD(v55) = sub_221E56EC0();
          v44 = *v51;
          v45 = v43;
          v46 = v60;
          (*v51)(v45, v60);
          v44(v37, v46);
          sub_221E50C24(v41, type metadata accessor for DistanceSample);
          sub_221E50C24(v62, type metadata accessor for DistanceSample);
          if (v55)
          {
            break;
          }

          v34 = v40;
          a3 = v61;
          if (v39 < v42 || v61 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v63;
          }

          else
          {
            a1 = v63;
            if (v39 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v40;
          v35 = v52;
          v38 = v54;
          if (v40 <= v64)
          {
            v53 = v54;
            goto LABEL_57;
          }
        }

        v47 = v42;
        a3 = v61;
        if (v39 < v54 || v61 >= v54)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v63;
          v34 = v50;
          v35 = v52;
          v36 = v47;
        }

        else
        {
          a1 = v63;
          v34 = v50;
          v35 = v52;
          v36 = v47;
          if (v39 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v64);
    }

LABEL_57:
    v67 = v53;
    v65 = v34;
  }

  else
  {
    v19 = v18 * v16;
    if (v64 < a1 || &a1[v19] <= v64)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v64 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = &v64[v19];
    v65 = &v64[v19];
    v61 = a3;
    if (v19 >= 1 && a2 < a3)
    {
      v53 = (v7 + 8);
      v54 = v16;
      v22 = v57;
      do
      {
        v63 = a1;
        v23 = v62;
        sub_221E50BBC(a2, v62, type metadata accessor for DistanceSample);
        sub_221E50BBC(v64, v22, type metadata accessor for DistanceSample);
        v24 = a2;
        v25 = v58;
        sub_221E56E90();
        v26 = v59;
        sub_221E56E90();
        v27 = sub_221E56EC0();
        v28 = *v53;
        v29 = v26;
        v30 = v60;
        (*v53)(v29, v60);
        v28(v25, v30);
        sub_221E50C24(v22, type metadata accessor for DistanceSample);
        sub_221E50C24(v23, type metadata accessor for DistanceSample);
        if (v27)
        {
          v31 = v54;
          a2 = &v54[v24];
          v32 = v63;
          if (v63 < v24 || v63 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v63 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v32 = v63;
          v31 = v54;
          v33 = &v54[v64];
          if (v63 < v64 || v63 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v63 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v33;
          v64 = v33;
        }

        a1 = &v31[v32];
        v67 = a1;
      }

      while (v64 < v55 && a2 < v61);
    }
  }

LABEL_58:
  sub_221E4C5E0(&v67, &v66, &v65, type metadata accessor for DistanceSample);
  return 1;
}

uint64_t sub_221E4C540(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_221E4C5CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_221E4C5E0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_221E4C6C8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a3;

  v10 = sub_221E4621C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_221E4CB80(v15, v6 & 1);
    v10 = sub_221E4621C(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_221E57110();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_221E4CA24();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8F0, &qword_221E5E9C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_221E57010();
    MEMORY[0x223DAA6D0](0xD00000000000001BLL, 0x8000000221E65490);
    sub_221E57050();
    MEMORY[0x223DAA6D0](39, 0xE100000000000000);
    sub_221E57060();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *(v6 - 8);
      v8 = *v6;
      v25 = *a3;

      v26 = sub_221E4621C(v7);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_221E4CB80(v30, 1);
        v26 = sub_221E4621C(v7);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v7;
      *(v32[7] + 8 * v26) = v8;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_221E4CA24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
  v2 = *v0;
  v3 = sub_221E57070();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_221E4CB80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v5 = *(v45 - 8);
  v6 = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - v8;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
  v46 = v4;
  result = sub_221E57080();
  v11 = result;
  if (*(v9 + 16))
  {
    v39 = v2;
    v40 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v5 + 8);
    v42 = (v5 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((v46 & 1) == 0)
      {
      }

      sub_221E57120();
      v26 = [objc_opt_self() kilometers];
      sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
      v27 = v44;
      sub_221E56E00();
      v28 = v43;
      v29 = v27;
      v30 = v45;
      (*v42)(v43, v29, v45);
      sub_221E51574(&qword_27CFEA868, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E0]);
      sub_221E56F10();
      (*v41)(v28, v30);
      result = sub_221E57150();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
      v9 = v40;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v46 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v3 = v11;
  return result;
}

void *sub_221E4CFB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221E4D038(a1, a2, a3, *v3, &qword_27CFEA918, &qword_221E5E9E0, type metadata accessor for DistanceAccumulator);
  *v3 = result;
  return result;
}

void *sub_221E4CFF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221E4D038(a1, a2, a3, *v3, &qword_27CFEA8D0, &qword_221E5E9B0, type metadata accessor for DistanceSampleIntervalRecord);
  *v3 = result;
  return result;
}

void *sub_221E4D038(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_221E4D214(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_221E45790(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27CFEA8D0, &qword_221E5E9B0, type metadata accessor for DistanceSampleIntervalRecord);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for DistanceSampleIntervalRecord(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_221E4D3FC(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  type metadata accessor for DistanceSampleIntervalRecord(0);
  sub_221E51574(&qword_27CFEA888, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87F0]);
  if ((sub_221E56F50() & 1) == 0 || (sub_221E56F50() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  sub_221E51574(&qword_27CFEA890, &qword_27CFEA858, &unk_221E5E860, MEMORY[0x277CC87F0]);
  return sub_221E56F50() & 1;
}

uint64_t sub_221E4D558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C694B65766966 && a2 == 0xEE0073726574656DLL;
  if (v4 || (sub_221E570F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F6C694B6E6574 && a2 == 0xED00007372657465 || (sub_221E570F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000221E65520 == a2 || (sub_221E570F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000221E65540 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_221E570F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_221E4D6DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA940, &qword_221E5EB58);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x28223BE20](v2);
  v48 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA948, &qword_221E5EB60);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v47 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA950, &qword_221E5EB68);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA958, &qword_221E5EB70);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA960, &qword_221E5EB78);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v19 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_221E51688();
  v20 = v49;
  sub_221E57160();
  if (v20)
  {
    goto LABEL_16;
  }

  v38 = v12;
  v39 = v18;
  v22 = v47;
  v21 = v48;
  v49 = v16;
  v23 = sub_221E570C0();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
  {
    v27 = sub_221E57030();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA968, &qword_221E5EB80);
    *v29 = &type metadata for DistanceReference;
    v30 = v39;
    sub_221E570B0();
    sub_221E57020();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v49 + 8))(v30, v15);
    swift_unknownObjectRelease();
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    return 0;
  }

  v51 = *(v23 + 32);
  if (v25 > 1)
  {
    v32 = v49;
    if (v25 == 2)
    {
      v54 = 2;
      sub_221E5177C();
      v33 = v22;
      v34 = v39;
      sub_221E570A0();
      (*(v44 + 8))(v33, v43);
      (*(v32 + 8))(v34, v15);
    }

    else
    {
      v55 = 3;
      sub_221E51728();
      v35 = v39;
      sub_221E570A0();
      (*(v46 + 8))(v21, v45);
      (*(v32 + 8))(v35, v15);
    }
  }

  else
  {
    if (v25)
    {
      v53 = 1;
      sub_221E517D0();
      v31 = v39;
      sub_221E570A0();
      (*(v42 + 8))(v11, v41);
    }

    else
    {
      v52 = 0;
      sub_221E51824();
      v31 = v39;
      sub_221E570A0();
      (*(v40 + 8))(v14, v38);
    }

    (*(v49 + 8))(v31, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  return v51;
}

unint64_t sub_221E4DD54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
    v3 = sub_221E57090();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_221E4621C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_221E4DE48(uint64_t a1)
{
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA878, &qword_221E5E980);
  v2 = *(v357 - 8);
  v3 = MEMORY[0x28223BE20](v357);
  v5 = &v290 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v356 = &v290 - v7;
  MEMORY[0x28223BE20](v6);
  v345 = &v290 - v8;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8B8, &qword_221E5E9A0);
  *&v370 = *(v355 - 8);
  v9 = MEMORY[0x28223BE20](v355);
  v347 = &v290 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v344 = &v290 - v11;
  v359 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v304 = *(v359 - 8);
  v12 = MEMORY[0x28223BE20](v359);
  v328 = &v290 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v358 = &v290 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v301 = &v290 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v327 = &v290 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v352 = &v290 - v21;
  MEMORY[0x28223BE20](v20);
  v299 = &v290 - v22;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA858, &unk_221E5E860);
  v23 = *(v360 - 8);
  v24 = MEMORY[0x28223BE20](v360);
  v300 = &v290 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v346 = &v290 - v27;
  MEMORY[0x28223BE20](v26);
  v298 = &v290 - v28;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA860, &qword_221E5E8A8);
  v29 = *(v369 - 1);
  v30 = MEMORY[0x28223BE20](v369);
  v306 = &v290 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v305 = &v290 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v316 = &v290 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v308 = &v290 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v338 = &v290 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v329 = &v290 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v365 = &v290 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v368 = &v290 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v366 = &v290 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v321 = &v290 - v49;
  MEMORY[0x28223BE20](v48);
  v320 = &v290 - v50;
  v335 = sub_221E56ED0();
  v51 = *(v335 - 8);
  v52 = MEMORY[0x28223BE20](v335);
  v303 = &v290 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v302 = &v290 - v55;
  MEMORY[0x28223BE20](v54);
  v331 = &v290 - v56;
  v57 = type metadata accessor for DistanceAccumulator(0);
  v325 = *(v57 - 1);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v290 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v58);
  v351 = &v290 - v62;
  MEMORY[0x28223BE20](v61);
  v311 = &v290 - v63;
  v362 = type metadata accessor for DistanceSample(0);
  v64 = MEMORY[0x28223BE20](v362);
  v65 = MEMORY[0x28223BE20](v64);
  v317 = &v290 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v330 = &v290 - v68;
  MEMORY[0x28223BE20](v67);
  v72 = &v290 - v69;
  v73 = *(a1 + 16);
  if (!v73)
  {
    v259 = MEMORY[0x277D84F90];

    return sub_221E4DD54(v259);
  }

  v315 = v71;
  v291 = v60;
  v309 = v70;
  v318 = a1 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v74 = sub_221E50BBC(v318, &v290 - v69, type metadata accessor for DistanceSample);
  MEMORY[0x28223BE20](v74);
  *(&v290 - 2) = v72;
  v75 = sub_221E450C8(sub_221E510A8, (&v290 - 4), &unk_283540A18);
  v307 = 0;
  v76 = 0;
  v333 = (v51 + 8);
  v319 = (v29 + 16);
  v77 = (v29 + 8);
  v364 = (v29 + 32);
  v297 = (v23 + 16);
  v350 = (v23 + 8);
  v354 = (v2 + 8);
  v353 = (v370 + 8);
  v296 = xmmword_221E5E840;
  v78 = -1;
  v79 = v73 - 1;
  v322 = v72;
  v80 = v75;
  v81 = v311;
  v293 = v73 - 1;
  v337 = v57;
  v363 = v73;
  v371 = v77;
  v343 = v5;
  while (1)
  {
    v82 = v76 >= v79 ? v79 : v76;
    v361 = v82;
    v83 = v78 + 1;
    v84 = v80[2];
    v294 = v78 + 1;
    if (v84)
    {
      break;
    }

    v80 = MEMORY[0x277D84F90];
LABEL_3:
    ++v76;
    v78 = v294;
    v79 = v293;
    if (v294 == v73)
    {
      goto LABEL_104;
    }
  }

  v292 = v76;
  v373 = MEMORY[0x277D84F90];
  sub_221E4CFB0(0, v84, 0);
  v85 = v331;
  v86 = 0;
  v87 = v373;
  v323 = (*(v325 + 80) + 32) & ~*(v325 + 80);
  v324 = v80 + v323;
  if (v79 >= v83)
  {
    v88 = v83;
  }

  else
  {
    v88 = v79;
  }

  v336 = v88;
  v312 = v80;
  v310 = v84;
  while (1)
  {
    v89 = v80[2];
    if (v86 >= v89)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v341 = v87;
    v90 = *(v325 + 72);
    v342 = v86;
    v340 = v90;
    v91 = v351;
    sub_221E50BBC(&v324[v90 * v86], v351, type metadata accessor for DistanceAccumulator);
    v339 = objc_autoreleasePoolPush();
    sub_221E56E90();
    v92 = *(v91 + *(v57 + 7));
    v89 = &v368;
    if (v92 >= v336)
    {
      (*v333)(v85, v335);
      sub_221E50BBC(v91, v81, type metadata accessor for DistanceAccumulator);
      goto LABEL_92;
    }

    if (v336 < 0)
    {
      goto LABEL_130;
    }

    v93 = *(v309 + 72);
    v94 = v318;
    v348 = (v318 + v93 * v336);
    sub_221E50BBC(v348, v330, type metadata accessor for DistanceSample);
    v95 = v92 + 1;
    v80 = objc_opt_self();
    v57 = &off_278493000;
    v96 = [v80 meters];
    v97 = sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
    v98 = v321;
    v367 = v97;
    sub_221E56E00();
    v334 = *v319;
    (v334)(v366, v98, v369);
    v99 = objc_opt_self();
    v101 = v94 + v93 * v95;
    *&v370 = v80;
    while (1)
    {
      if (v95 >= v363)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        v312 = v80;
        v261 = v80[2];
        if (!v261)
        {
          goto LABEL_123;
        }

        v262 = 0;
        v368 = v261 - 1;
        v369 = MEMORY[0x277D84F90];
        p_cache = ACHActivitySummaryIterator.cache;
        v264 = qword_280FAFE98;
        *&v100 = 136315138;
        v370 = v100;
        v371 = v261;
LABEL_106:
        v265 = v262;
        v266 = v291;
        while (1)
        {
          v89 = v312[2];
          if (v265 >= v89)
          {
            break;
          }

          sub_221E50BBC(v312 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v265, v266, type metadata accessor for DistanceAccumulator);
          v262 = v265 + 1;
          v267 = *v266;
          if (*(*&v266[*(v57 + 11)] + 16))
          {
            v373 = *&v266[*(v57 + 11)];

            v279 = v307;
            sub_221E44EAC(&v373, sub_221E47838, sub_221E467E8);
            v280 = &v339;
            v307 = v279;
            if (v279)
            {
              goto LABEL_137;
            }

            v281 = v373;
            sub_221E50C24(v291, type metadata accessor for DistanceAccumulator);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_221E45558(0, v369[2] + 1, 1, v369);
            }

            v283 = v369[2];
            v282 = v369[3];
            if (v283 >= v282 >> 1)
            {
              v369 = sub_221E45558((v282 > 1), v283 + 1, 1, v369);
            }

            v284 = v369;
            v369[2] = v283 + 1;
            v285 = &v284[2 * v283];
            *(v285 + 32) = v267;
            v285[5] = v281;
            if (v368 != v265)
            {
              goto LABEL_106;
            }

            goto LABEL_124;
          }

          if (p_cache[466] != -1)
          {
            swift_once();
          }

          v268 = sub_221E56F00();
          __swift_project_value_buffer(v268, v264);
          v269 = sub_221E56EE0();
          v270 = sub_221E56FD0();
          if (os_log_type_enabled(v269, v270))
          {
            v271 = swift_slowAlloc();
            v272 = v264;
            v273 = p_cache;
            v274 = swift_slowAlloc();
            v373 = v274;
            *v271 = v370;
            LOBYTE(v372) = v267;
            v275 = sub_221E56F70();
            v277 = sub_221E45AD4(v275, v276, &v373);

            *(v271 + 4) = v277;
            _os_log_impl(&dword_221DDC000, v269, v270, "Best records empty for %s", v271, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v274);
            v278 = v274;
            p_cache = v273;
            v264 = v272;
            v261 = v371;
            MEMORY[0x223DABCD0](v278, -1, -1);
            MEMORY[0x223DABCD0](v271, -1, -1);
          }

          v266 = v291;
          sub_221E50C24(v291, type metadata accessor for DistanceAccumulator);
          ++v265;
          if (v261 == v262)
          {
            goto LABEL_124;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:

        __break(1u);
LABEL_137:

        __break(1u);
        goto LABEL_138;
      }

      v102 = *(v101 + *(v362 + 20));
      v103 = [v99 meterUnit];
      [v102 doubleValueForUnit_];

      v104 = [v80 v57[106]];
      v105 = v365;
      sub_221E56E00();
      v106 = v368;
      v107 = v366;
      sub_221E56E20();
      v108 = *v371;
      v109 = v369;
      (*v371)(v105, v369);
      v108(v107, v109);
      v110 = *v364;
      (*v364)(v107, v106, v109);
      if (v361 == v95)
      {
        break;
      }

      v101 += v93;
      v111 = __OFADD__(v95++, 1);
      v57 = &off_278493000;
      v80 = v370;
      if (v111)
      {
        goto LABEL_103;
      }
    }

    v112 = v369;
    v108(v321, v369);
    v110(v320, v366, v112);
    v113 = v337;
    v114 = v351;
    sub_221E56E20();
    v349 = *(v113 + 9);
    sub_221E56E20();
    v115 = *v114;
    v116 = v365;
    sub_221E40BCC(*v114);
    v117 = [v370 meters];
    v118 = v368;
    sub_221E56E40();

    v108(v116, v112);
    v349 = sub_221E51574(&qword_27CFEA8C8, &qword_27CFEA860, &qword_221E5E8A8, MEMORY[0x277CC87E8]);
    LOBYTE(v116) = sub_221E56F40();
    v108(v118, v112);
    v326 = v115;
    if ((v116 & 1) == 0)
    {
      break;
    }

    sub_221E50BBC(v348, v317, type metadata accessor for DistanceSample);
    v119 = v351;
    v120 = *&v351[*(v337 + 6) + *(v362 + 20)];
    v121 = [v99 meterUnit];
    [v120 doubleValueForUnit_];

    v122 = [v370 meters];
    sub_221E56E00();
    v89 = *(v119 + 8);
    v123 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_131;
    }

    v89 = v363;
    if (v123 >= v363)
    {
      goto LABEL_132;
    }

    v313 = v123;
    sub_221E50BBC(v318 + v123 * v93, v315, type metadata accessor for DistanceSample);
    sub_221E56E30();
    v124 = v365;
    v125 = v326;
    sub_221E40BCC(v326);
    v126 = [v370 meters];
    v127 = v368;
    v128 = v369;
    sub_221E56E40();

    v108(v124, v128);
    v129 = sub_221E56F40();
    v108(v127, v128);
    if (v129)
    {
      sub_221E40BCC(v125);
      v130 = [v370 &_OBJC_LABEL_PROTOCOL___HDDatabaseProtectedDataObserver + 1];
      sub_221E56E40();

      v108(v127, v128);
      v131 = v302;
      sub_221E56E70();
      v132 = v303;
      sub_221E56E90();
      sub_221E56EB0();
      v133 = *v333;
      v134 = v132;
      v135 = v335;
      (*v333)(v134, v335);
      v133(v131, v135);
      sub_221E56E10();
      v136 = [v370 meters];
      sub_221E56E40();

      sub_221E56E10();
      v108(v127, v128);
      v332 = objc_opt_self();
      v137 = [v332 seconds];
      sub_221E511E8(0, &qword_280FAFD10, 0x277CCADD0);
      v138 = v298;
      sub_221E56E00();
      sub_221E56E90();
      sub_221E56EB0();
      v140 = v139;
      v141 = v335;
      v133(v131, v335);
      sub_221E56E70();
      sub_221E56EB0();
      v143 = v142;
      v295 = v133;
      v133(v131, v141);
      v144 = v359;
      v145 = v299;
      sub_221E56E30();
      (v334)(&v145[*(v144 + 28)], v305, v128);
      (*v297)(&v145[*(v144 + 32)], v138, v360);
      *v145 = v140;
      *(v145 + 1) = v143;
      v146 = *&v351[*(v337 + 11)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8D0, &qword_221E5E9B0);
      v147 = (*(v304 + 80) + 32) & ~*(v304 + 80);
      v367 = *(v304 + 72);
      v148 = swift_allocObject();
      *(v148 + 16) = v296;
      sub_221E50BBC(v145, v148 + v147, type metadata accessor for DistanceSampleIntervalRecord);
      v372 = v146;

      sub_221E4D214(v148);
      v149 = v372;
      v150 = v352;
      v349 = v372[2];
      if (v349)
      {
        v151 = 0;
        v314 = v147;
        v152 = v372 + v147;
        v334 = MEMORY[0x277D84F90];
        v348 = v372;
        while (1)
        {
          if (v151 >= *(v149 + 16))
          {
            goto LABEL_122;
          }

          sub_221E50BBC(v152, v150, type metadata accessor for DistanceSampleIntervalRecord);
          v153 = [v370 meters];
          v154 = v368;
          v155 = v369;
          sub_221E56E40();

          sub_221E56E10();
          v157 = v156;
          v108(v154, v155);
          if (v157 <= 0.0)
          {
            break;
          }

          v158 = [v332 seconds];
          v159 = v346;
          v160 = v360;
          sub_221E56E40();

          sub_221E56E10();
          (*v350)(v159, v160);
          if (qword_27CFEA9B0 != -1)
          {
            goto LABEL_33;
          }

LABEL_35:
          v161 = qword_27CFEA9B8;
          type metadata accessor for UnitPace();
          v162 = v161;
          v163 = v345;
          sub_221E56E00();
          if (qword_27CFEA9B0 != -1)
          {
            swift_once();
          }

          v164 = v356;
          v165 = v357;
          sub_221E56E40();
          sub_221E56E10();
          v166 = *v354;
          (*v354)(v164, v165);
          v167 = [objc_opt_self() metersPerSecond];
          sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
          v168 = v344;
          sub_221E56E00();
          v166(v163, v165);
          v169 = v355;
          sub_221E56E10();
          v171 = v170;
          (*v353)(v168, v169);
          v150 = v352;
          if (v171 >= 14.0 || (sub_221E56E10(), v172 <= 0.0))
          {
            sub_221E50C24(v150, type metadata accessor for DistanceSampleIntervalRecord);
            v149 = v348;
          }

          else
          {
            sub_221E50CF4(v150, v327, type metadata accessor for DistanceSampleIntervalRecord);
            v173 = v334;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v372 = v173;
            v149 = v348;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_221E4CFF4(0, *(v173 + 16) + 1, 1);
              v173 = v372;
            }

            v176 = *(v173 + 16);
            v175 = *(v173 + 24);
            if (v176 >= v175 >> 1)
            {
              sub_221E4CFF4((v175 > 1), v176 + 1, 1);
              v173 = v372;
            }

            *(v173 + 16) = v176 + 1;
            v334 = v173;
            sub_221E50CF4(v327, v173 + v314 + v176 * v367, type metadata accessor for DistanceSampleIntervalRecord);
            v150 = v352;
          }

          ++v151;
          v152 += v367;
          if (v349 == v151)
          {
            goto LABEL_79;
          }
        }

        if (qword_27CFEA9B0 == -1)
        {
          goto LABEL_35;
        }

LABEL_33:
        swift_once();
        goto LABEL_35;
      }

      v334 = MEMORY[0x277D84F90];
LABEL_79:

      v372 = v334;

      v245 = v307;
      sub_221E44EAC(&v372, sub_221E490EC, sub_221E4722C);
      v89 = &v339;
      v307 = v245;
      if (v245)
      {
        goto LABEL_136;
      }

      v249 = sub_221E4526C(1, v372);
      if ((v248 & 1) == 0)
      {
LABEL_81:
        sub_221E4607C(v249, v246, v247, v248);
        v231 = v250;
        v80 = v312;
        v251 = v338;
        goto LABEL_88;
      }

      v252 = v248;
      v253 = v247;
      v254 = v246;
      sub_221E57100();
      swift_unknownObjectRetain_n();
      v255 = swift_dynamicCastClass();
      if (!v255)
      {
        swift_unknownObjectRelease();
        v255 = MEMORY[0x277D84F90];
      }

      v256 = *(v255 + 16);

      v89 = ((v252 >> 1) - v253);
      if (__OFSUB__(v252 >> 1, v253))
      {
        goto LABEL_134;
      }

      if (v256 != v89)
      {
        swift_unknownObjectRelease();
        v248 = v252;
        v247 = v253;
        v246 = v254;
        goto LABEL_81;
      }

      v231 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v80 = v312;
      v251 = v338;
      if (!v231)
      {
        v231 = MEMORY[0x277D84F90];
LABEL_88:
        swift_unknownObjectRelease();
      }

      sub_221E50C24(v299, type metadata accessor for DistanceSampleIntervalRecord);
      (*v350)(v298, v360);
      v128 = v369;
      v108(v305, v369);
      v108(v308, v128);
      v108(v251, v128);
      v108(v320, v128);
      sub_221E50C24(v330, type metadata accessor for DistanceSample);
      v295(v331, v335);
      v57 = v337;
    }

    else
    {
      v108(v308, v128);
      v108(v338, v128);
      v108(v320, v128);
      sub_221E50C24(v330, type metadata accessor for DistanceSample);
      (*v333)(v331, v335);
      v57 = v337;
      v231 = *&v351[*(v337 + 11)];

      v80 = v312;
    }

    v81 = v311;
    v110(&v311[*(v57 + 10)], v329, v128);
    *v81 = v326;
    *(v81 + 8) = v313;
    sub_221E50CF4(v315, v81 + *(v57 + 6), type metadata accessor for DistanceSample);
    *(v81 + *(v57 + 7)) = v336;
    sub_221E50CF4(v317, v81 + *(v57 + 8), type metadata accessor for DistanceSample);
    v110((v81 + *(v57 + 9)), v316, v128);
    *(v81 + *(v57 + 11)) = v231;
    v85 = v331;
    v91 = v351;
LABEL_91:
    v84 = v310;
LABEL_92:
    objc_autoreleasePoolPop(v339);
    sub_221E50C24(v91, type metadata accessor for DistanceAccumulator);
    v87 = v341;
    v373 = v341;
    v258 = *(v341 + 16);
    v257 = *(v341 + 24);
    if (v258 >= v257 >> 1)
    {
      sub_221E4CFB0((v257 > 1), v258 + 1, 1);
      v85 = v331;
      v87 = v373;
    }

    v86 = v342 + 1;
    *(v87 + 16) = v258 + 1;
    sub_221E50CF4(v81, v87 + v323 + v258 * v340, type metadata accessor for DistanceAccumulator);
    if (v86 == v84)
    {

      v80 = v87;
      v73 = v363;
      v76 = v292;
      goto LABEL_3;
    }
  }

  v314 = &v351[*(v337 + 6)];
  v177 = v365;
  sub_221E40BCC(v115);
  v178 = [v370 meters];
  v179 = v368;
  sub_221E56E40();

  v108(v177, v112);
  LOBYTE(v177) = sub_221E56F40();
  v108(v179, v112);
  v180 = v112;
  if ((v177 & 1) == 0)
  {
    v108(v320, v112);
    (*v333)(v331, v335);
    v57 = v337;
    v91 = v351;
    v228 = *&v351[*(v337 + 11)];

    v229 = v180;
    v230 = v314;
LABEL_77:
    v243 = *(v91 + 8);
    v244 = v311;
    sub_221E50BBC(v230, &v311[*(v57 + 6)], type metadata accessor for DistanceSample);
    sub_221E50CF4(v330, &v244[*(v57 + 8)], type metadata accessor for DistanceSample);
    v81 = v244;
    v110(&v244[*(v57 + 9)], v338, v229);
    v110(&v244[*(v57 + 10)], v329, v229);
    *v244 = v326;
    *(v244 + 1) = v243;
    *&v244[*(v57 + 7)] = v336;
    *&v244[*(v57 + 11)] = v228;
    v80 = v312;
    v85 = v331;
    goto LABEL_91;
  }

  v181 = v368;
  sub_221E40BCC(v115);
  v182 = [v370 meters];
  sub_221E56E40();

  v108(v181, v180);
  v183 = v302;
  sub_221E56E70();
  v184 = v303;
  sub_221E56E90();
  sub_221E56EB0();
  v185 = *v333;
  v186 = v335;
  (*v333)(v184, v335);
  v185(v183, v186);
  sub_221E56E10();
  v187 = [v370 meters];
  sub_221E56E40();

  sub_221E56E10();
  v108(v181, v180);
  v332 = objc_opt_self();
  v188 = [v332 seconds];
  sub_221E511E8(0, &qword_280FAFD10, 0x277CCADD0);
  v189 = v300;
  sub_221E56E00();
  sub_221E56E90();
  sub_221E56EB0();
  v191 = v190;
  v192 = v335;
  v185(v183, v335);
  sub_221E56E70();
  sub_221E56EB0();
  v194 = v193;
  v295 = v185;
  v185(v183, v192);
  v195 = v359;
  v196 = v301;
  sub_221E56E30();
  (v334)(&v196[*(v195 + 28)], v306, v180);
  (*v297)(&v196[*(v195 + 32)], v189, v360);
  *v196 = v191;
  *(v196 + 1) = v194;
  v197 = *&v351[*(v337 + 11)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8D0, &qword_221E5E9B0);
  v198 = (*(v304 + 80) + 32) & ~*(v304 + 80);
  v367 = *(v304 + 72);
  v199 = swift_allocObject();
  *(v199 + 16) = v296;
  sub_221E50BBC(v196, v199 + v198, type metadata accessor for DistanceSampleIntervalRecord);
  v372 = v197;

  sub_221E4D214(v199);
  v200 = v372;
  v349 = v372[2];
  if (!v349)
  {
    v334 = MEMORY[0x277D84F90];
LABEL_66:

    v372 = v334;

    v232 = v307;
    sub_221E44EAC(&v372, sub_221E490EC, sub_221E4722C);
    v89 = &v339;
    v307 = v232;
    if (v232)
    {
      goto LABEL_136;
    }

    v236 = sub_221E4526C(1, v372);
    if (v235)
    {
      v238 = v235;
      v239 = v234;
      v240 = v233;
      sub_221E57100();
      swift_unknownObjectRetain_n();
      v241 = swift_dynamicCastClass();
      if (!v241)
      {
        swift_unknownObjectRelease();
        v241 = MEMORY[0x277D84F90];
      }

      v242 = *(v241 + 16);

      v89 = ((v238 >> 1) - v239);
      if (__OFSUB__(v238 >> 1, v239))
      {
        goto LABEL_133;
      }

      if (v242 == v89)
      {
        v228 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v230 = v314;
        if (v228)
        {
LABEL_76:
          sub_221E50C24(v301, type metadata accessor for DistanceSampleIntervalRecord);
          (*v350)(v300, v360);
          v229 = v369;
          v108(v306, v369);
          v108(v320, v229);
          v295(v331, v335);
          v57 = v337;
          v91 = v351;
          goto LABEL_77;
        }

        v228 = MEMORY[0x277D84F90];
LABEL_75:
        swift_unknownObjectRelease();
        goto LABEL_76;
      }

      swift_unknownObjectRelease();
      v235 = v238;
      v234 = v239;
      v233 = v240;
    }

    sub_221E4607C(v236, v233, v234, v235);
    v228 = v237;
    v230 = v314;
    goto LABEL_75;
  }

  v201 = 0;
  v313 = v198;
  v202 = v372 + v198;
  v334 = MEMORY[0x277D84F90];
  v348 = v372;
  while (v201 < *(v200 + 16))
  {
    sub_221E50BBC(v202, v358, type metadata accessor for DistanceSampleIntervalRecord);
    v203 = [v370 meters];
    v204 = v368;
    v205 = v369;
    sub_221E56E40();

    sub_221E56E10();
    v207 = v206;
    v108(v204, v205);
    if (v207 <= 0.0)
    {
      if (qword_27CFEA9B0 == -1)
      {
        goto LABEL_54;
      }

LABEL_52:
      swift_once();
      goto LABEL_54;
    }

    v208 = [v332 seconds];
    v209 = v346;
    v210 = v360;
    sub_221E56E40();

    sub_221E56E10();
    (*v350)(v209, v210);
    if (qword_27CFEA9B0 != -1)
    {
      goto LABEL_52;
    }

LABEL_54:
    v211 = qword_27CFEA9B8;
    type metadata accessor for UnitPace();
    v212 = v211;
    v213 = v343;
    sub_221E56E00();
    if (qword_27CFEA9B0 != -1)
    {
      swift_once();
    }

    v214 = v356;
    v215 = v357;
    sub_221E56E40();
    sub_221E56E10();
    v216 = *v354;
    (*v354)(v214, v215);
    v217 = [objc_opt_self() metersPerSecond];
    sub_221E511E8(0, &qword_27CFEA8D8, 0x277CCAE40);
    v218 = v347;
    sub_221E56E00();
    v216(v213, v215);
    v219 = v355;
    sub_221E56E10();
    v221 = v220;
    (*v353)(v218, v219);
    v222 = v358;
    if (v221 >= 14.0 || (sub_221E56E10(), v223 <= 0.0))
    {
      sub_221E50C24(v222, type metadata accessor for DistanceSampleIntervalRecord);
    }

    else
    {
      sub_221E50CF4(v222, v328, type metadata accessor for DistanceSampleIntervalRecord);
      v224 = v334;
      v225 = swift_isUniquelyReferenced_nonNull_native();
      v372 = v224;
      if ((v225 & 1) == 0)
      {
        sub_221E4CFF4(0, *(v224 + 16) + 1, 1);
        v224 = v372;
      }

      v227 = *(v224 + 16);
      v226 = *(v224 + 24);
      if (v227 >= v226 >> 1)
      {
        sub_221E4CFF4((v226 > 1), v227 + 1, 1);
        v224 = v372;
      }

      *(v224 + 16) = v227 + 1;
      v334 = v224;
      sub_221E50CF4(v328, v224 + v313 + v227 * v367, type metadata accessor for DistanceSampleIntervalRecord);
    }

    ++v201;
    v202 += v367;
    v200 = v348;
    if (v349 == v201)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  v369 = MEMORY[0x277D84F90];
LABEL_124:

  if (v369[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA8C0, &qword_221E5E9A8);
    v286 = sub_221E57090();
  }

  else
  {
    v286 = MEMORY[0x277D84F98];
  }

  v287 = v322;
  v373 = v286;
  v288 = v307;
  sub_221E4C6C8(v369, 1, &v373);
  if (!v288)
  {
    v289 = v373;
    sub_221E50C24(v287, type metadata accessor for DistanceSample);
    return v289;
  }

LABEL_138:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}