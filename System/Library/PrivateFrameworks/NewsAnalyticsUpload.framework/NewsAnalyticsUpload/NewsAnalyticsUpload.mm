uint64_t sub_25BDF8B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBD0, "VL");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BDF8C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBD0, "VL");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25BDF8C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BE14CD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25BDF8D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BE14CD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25BDF8F04()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BDF8F4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BDF8F84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BDF8FC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id NDSharedServiceLog(uint64_t a1)
{
  if (NDSharedServiceLog_once != -1)
  {
    NDSharedServiceLog_cold_1();
  }

  v2 = NDSharedServiceLog_result;

  return v2;
}

uint64_t __NDSharedServiceLog_block_invoke()
{
  NDSharedServiceLog_result = os_log_create("com.apple.news", "newsd");

  return MEMORY[0x2821F96F8]();
}

id NDSharedClientLog(uint64_t a1)
{
  if (NDSharedClientLog_once != -1)
  {
    NDSharedClientLog_cold_1();
  }

  v2 = NDSharedClientLog_result;

  return v2;
}

uint64_t __NDSharedClientLog_block_invoke()
{
  NDSharedClientLog_result = os_log_create("com.apple.newsd.client", "general");

  return MEMORY[0x2821F96F8]();
}

id NDAnalyticsEnvelopeSubmissionDatesByContentType(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeSubmissionDatesByContentType_cold_1();
  }

  v2 = [v1 fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:&__block_literal_global_0 valueBlock:&__block_literal_global_10];

  return v2;
}

uint64_t __NDAnalyticsEnvelopeSubmissionDatesByContentType_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 envelopeContentType];

  return [v2 numberWithInt:v3];
}

void sub_25BDF99AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BDF9F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

id NDAnalyticsEnvelopeContentTypesFromEntries(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeContentTypesFromEntries_cold_1();
  }

  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_1];

  return v2;
}

uint64_t __NDAnalyticsEnvelopeContentTypesFromEntries_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 envelopeContentType];

  return [v2 numberWithInt:v3];
}

void sub_25BDFB8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_25BDFBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25BDFBD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BDFBFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BDFD770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries_cold_1();
  }

  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_5];

  return v2;
}

id __NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = FCDynamicCast();

  v4 = [v3 stringRepresentation];

  return v4;
}

id NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations_cold_1();
  }

  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_11];

  return v2;
}

NDAnalyticsEnvelopeStoreEntry *__NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NDAnalyticsEnvelopeStoreEntry alloc] initWithStringRepresentation:v2];

  return v3;
}

void sub_25BE01020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_25BE016BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NDAnalyticsEntryDeliveryWindowEarlierDate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindowEarlierDate_cold_1();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindowEarlierDate_cold_2();
  }

LABEL_6:
  v8 = [v7 seedTime];
  if (v6)
  {
    [v6 dateByAddingTimeInterval:(60 * v8)];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v9 = ;
  v10 = [v9 laterDate:v5];

  return v10;
}

id NDAnalyticsEntryDeliveryWindow(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindow_cold_1();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindow_cold_2();
  }

LABEL_6:
  v8 = 60 * [v7 seedTime];
  v9 = NDAnalyticsEntryDeliveryWindowEarlierDate(v5, v6, v7);
  v10 = [v5 dateByAddingTimeInterval:v8];
  v11 = [v10 laterDate:v9];
  v12 = [MEMORY[0x277D30F38] dateRangeWithEarlierDate:v9 laterDate:v11];

  return v12;
}

uint64_t NDAnalyticsEntryCanBeUploaded(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryCanBeUploaded_cold_1();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryCanBeUploaded_cold_2();
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryCanBeUploaded_cold_3();
  }

  v11 = NDAnalyticsEntryDeliveryWindowEarlierDate(v7, v9, v10);
  v12 = [v8 fc_isLaterThanOrEqualTo:v11];

  return v12;
}

id sub_25BE02444(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE14E88();
  result = sub_25BE15088();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for TelemetryUploader();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___NDAnalyticsTelemetryUploader_sessionManager] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BE024D4()
{
  sub_25BE14E88();
  sub_25BE150D8();
  sub_25BE15078();

  sub_25BE14EF8();
  sub_25BE150D8();

  sub_25BE14F98();
  sub_25BE150D8();

  sub_25BE15008();
  sub_25BE150D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB00, &unk_25BE166C8);
  sub_25BE150D8();

  sub_25BE14E98();
  sub_25BE150E8();
}

uint64_t sub_25BE02688(void *a1)
{
  sub_25BE14F58();
  MEMORY[0x28223BE20]();
  v12[5] = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE14F78();
  MEMORY[0x28223BE20]();
  v12[4] = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE14FB8();
  MEMORY[0x28223BE20]();
  v12[3] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE14D48();
  MEMORY[0x28223BE20]();
  sub_25BE14E68();
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB10, &qword_25BE166E0);
  MEMORY[0x28223BE20]();
  v6 = v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_25BE14E98();
  sub_25BE15098();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12[2] = sub_25BE14E88();
    v14[3] = v7;
    v14[4] = MEMORY[0x277CEAD58];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    v12[1] = dispatch_group_create();
    sub_25BE14EC8();
    sub_25BE14EB8();
    v13 = MEMORY[0x277D84F90];
    sub_25BE033D8(&qword_281475E58, MEMORY[0x277CEAD38], MEMORY[0x277CEAD40]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB20, &qword_25BE166E8);
    sub_25BE03420(&unk_2814759B8, &unk_27FBDEB20, &qword_25BE166E8);
    sub_25BE151E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB30, &qword_25BE166F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25BE16630;
    sub_25BE14D38();
    sub_25BE14D18();
    sub_25BE14D28();
    v13 = v11;
    sub_25BE033D8(&qword_281475E68, MEMORY[0x277CEAC90], MEMORY[0x277CEAC98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB40, &qword_25BE166F8);
    sub_25BE03420(&qword_2814759C8, &unk_27FBDEB40, &qword_25BE166F8);
    sub_25BE151E8();
    sub_25BE14E08();
    swift_allocObject();
    sub_25BE14DF8();
    sub_25BE14FE8();
    swift_allocObject();
    sub_25BE14FD8();
    sub_25BE14FA8();
    sub_25BE14F68();
    sub_25BE14F48();
    return sub_25BE14E28();
  }

  return result;
}

uint64_t sub_25BE02BC0(uint64_t a1, void *a2)
{
  sub_25BE14E18();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_25BE14EF8();
  result = sub_25BE15088();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_25BE14EA8();

  sub_25BE14E18();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_25BE14F98();
  result = sub_25BE15088();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_25BE14EA8();
}

uint64_t sub_25BE02CC8()
{
  sub_25BE14FC8();
  MEMORY[0x28223BE20]();
  v1 = (&v4 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v1 = 11;
  (*(v2 + 104))(v1, *MEMORY[0x277CEAE08]);
  sub_25BE14EF8();
  swift_allocObject();
  return sub_25BE14EE8();
}

uint64_t sub_25BE02DC8(void *a1)
{
  v2 = sub_25BE14C88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE15008();
  result = sub_25BE15088();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB00, &unk_25BE166C8);
    result = sub_25BE15088();
    if (result)
    {
      sub_25BE14F98();
      sub_25BE14F38();
      v7 = sub_25BE14F28();
      v8 = [objc_opt_self() newsdDocumentsURL];
      sub_25BE14C78();

      v9 = sub_25BE14F18();
      (*(v3 + 8))(v5, v2);
      v10 = [objc_opt_self() standardUserDefaults];
      v11 = sub_25BE15138();
      [v10 BOOLForKey_];

      sub_25BE14F08();
      return sub_25BE14F88();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE03000()
{
  sub_25BE15008();
  v0 = [objc_opt_self() mainBundle];
  return sub_25BE14FF8();
}

uint64_t sub_25BE0304C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB08, &qword_25BE166D8);
  result = sub_25BE15088();
  if (result)
  {
    v2 = result;
    type metadata accessor for DynamicEndpoint();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = FCDefaultsReadEndpointEnvironment();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25BE030D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB08, &qword_25BE166D8);
  result = sub_25BE15088();
  if (result)
  {
    v4 = [result possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();

    return sub_25BE03708(v4, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for FCEndpointEnvironment()
{
  if (!qword_27FBDEAF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBDEAF8);
    }
  }
}

uint64_t sub_25BE031FC()
{
  sub_25BE150A8();
  type metadata accessor for TelemetryUploader();
  sub_25BE150D8();

  sub_25BE150B8();
  sub_25BE150C8();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_25BE033D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BE03420(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v5);
    atomic_store(result, a1);
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NDAnalyticsUploadFrameworkAssembly_assemblies;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEBB8, &qword_25BE16720);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BE16710;
  v4 = type metadata accessor for TelemetryAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_25BE03574();
  *(v3 + 32) = v5;
  *&v0[v2] = v3;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_25BE03574()
{
  result = qword_281475B58;
  if (!qword_281475B58)
  {
    v3 = type metadata accessor for TelemetryAssembly();
    result = swift_getWitnessTable(byte_25BE16698, v3, v0, v1);
    atomic_store(result, &qword_281475B58);
  }

  return result;
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BE03708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BE14E98();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (([a1 respondsToSelector_] & 1) != 0 && !objc_msgSend(a1, sel_isAnalyticsJitterEnabled))
  {
    swift_unknownObjectRelease();
    v12 = *MEMORY[0x277CEAD50];
    v13 = *(v15 + 104);

    return v13(a2, v12, v4);
  }

  else
  {
    if ([a1 respondsToSelector_])
    {
      [a1 analyticsJitterLowerBound];
      v8 = v7;
    }

    else
    {
      v8 = 0xC082C00000000000;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 analyticsJitterUpperBound];
      v10 = v9;
    }

    else
    {
      v10 = 0x4082C00000000000;
    }

    swift_unknownObjectRelease();
    *v6 = v8;
    v6[1] = v10;
    (*(v15 + 104))(v6, *MEMORY[0x277CEAD48], v4);
    return (*(v15 + 32))(a2, v6, v4);
  }
}

uint64_t sub_25BE03AA0()
{
  v1 = *(v0 + 24);
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x676E6967617473;
      }

      if (v1 == 3)
      {
        return 24945;
      }

      return 1953719668;
    }

    if (v1 == 1)
    {
      return 0x69746375646F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 > 6)
  {
    switch(v1)
    {
      case 7:
        return 0x786F62646E6173;
      case 8:
        return 0x316F6D6564;
      case 9:
        return 0x326F6D6564;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 == 5)
  {
    return 0x3164756F6C6369;
  }

  else
  {
    return 0x6C65766564;
  }
}

uint64_t sub_25BE03BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25BE14C88();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBC8, &unk_25BE167A0);
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  if (a1 <= 4)
  {
    if (a1 < 5)
    {
      v10 = [*(v2 + 16) appConfiguration];
      if ([v10 respondsToSelector_])
      {
        v11 = [v10 appAnalyticsEndpointUrlForEnvironment_];
LABEL_5:
        v12 = v11;
        swift_unknownObjectRelease();
        sub_25BE14C78();

        v13 = *(v23 + 56);
        v14 = a2;
        v15 = 0;
LABEL_21:

        return v13(v14, v15, 1, v5);
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      v21 = [*(v2 + 16) appConfiguration];
      if ([v21 respondsToSelector_])
      {
        v11 = [v21 appAnalyticsAppHealthEndpointUrlForEnvironment_];
        goto LABEL_5;
      }

LABEL_19:
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    if (a1 == 8)
    {
      v18 = [*(v2 + 16) appConfiguration];
      if ([v18 respondsToSelector_])
      {
        v11 = [v18 appAnalyticsAppHeartbeatEndpointUrlForEnvironment_];
        goto LABEL_5;
      }

      goto LABEL_19;
    }

LABEL_20:
    v13 = *(v23 + 56);
    v14 = a2;
    v15 = 1;
    goto LABEL_21;
  }

  if (a1 != 5)
  {
    v16 = [objc_opt_self() appAnalyticsSportsEventsBaseURLForConfiguration_];
    swift_unknownObjectRelease();
    if (v16)
    {
      sub_25BE14C78();

      (*(v23 + 32))(a2, v7, v5);
      return (*(v23 + 56))(a2, 0, 1, v5);
    }

    goto LABEL_20;
  }

  v19 = [*(v2 + 16) appConfiguration];
  if (([v19 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_19;
  }

  v20 = [v19 appAnalyticsNotificationReceiptEndpointUrlForEnvironment_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25BE14C78();

    (*(v23 + 56))(v9, 0, 1, v5);
  }

  else
  {
    (*(v23 + 56))(v9, 1, 1, v5);
  }

  return sub_25BE0417C(v9, a2);
}

uint64_t sub_25BE04120()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25BE0417C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBC8, &unk_25BE167A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BE041F8(uint64_t a1, int a2)
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

uint64_t sub_25BE04240(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BE042CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25BE04314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy95_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25BE04394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 95))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BE043DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 95) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 95) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_25BE04460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25BE044A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_25BE04550(uint64_t a1)
{
  sub_25BE045BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25BE045BC(uint64_t a1)
{
  if (!qword_281475E60)
  {
    type metadata accessor for NetworkEventData(255);
    sub_25BE046E0(&qword_281475C40, type metadata accessor for NetworkEventData, byte_25BE16C64);
    sub_25BE046E0(&qword_281475C48, type metadata accessor for NetworkEventData, byte_25BE16C3C);
    v1 = sub_25BE14DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_281475E60);
    }
  }
}

uint64_t sub_25BE046A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BE046E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BE04750(uint64_t a1)
{
  result = sub_25BE14CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BE0499C()
{
  v1 = *v0;
  sub_25BE15378();
  MEMORY[0x25F87D0F0](v1);
  return sub_25BE15398();
}

uint64_t sub_25BE049E4(uint64_t a1)
{
  v2 = *v1;
  sub_25BE15378();
  MEMORY[0x25F87D0F0](v2);
  return sub_25BE15398();
}

uint64_t sub_25BE04A28()
{
  if (*v0)
  {
    return 0x646C697542707061;
  }

  else
  {
    return 0x6973726556707061;
  }
}

uint64_t sub_25BE04A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_25BE15358() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25BE15358();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25BE04B78(uint64_t a1)
{
  v2 = sub_25BE09F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE04BB4(uint64_t a1)
{
  v2 = sub_25BE09F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE04BF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBF8, &qword_25BE17090);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE09F88();
  sub_25BE153B8();
  v15 = 0;
  sub_25BE152F8();
  if (!v5)
  {
    v14 = 1;
    sub_25BE152F8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_25BE04DCC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_25BE09DA4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_25BE04E1C(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x54746375646F7270;
      break;
    case 5:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x44496E6F69676572;
      break;
    case 8:
      result = 0x4465726F74537369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE05004(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC80, &qword_25BE170D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BEB8();
  sub_25BE153B8();
  LOBYTE(v11) = 0;
  sub_25BE15338();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_25BE152C8();
    LOBYTE(v11) = 2;
    sub_25BE152C8();
    LOBYTE(v11) = *(v3 + 40);
    v12 = 3;
    sub_25BE0C190();
    sub_25BE15328();
    LOBYTE(v11) = 4;
    sub_25BE152F8();
    v11 = *(v3 + 64);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC48, &qword_25BE170C0);
    sub_25BE0C1E4();
    sub_25BE15328();
    v11 = *(v3 + 72);
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC58, &qword_25BE170C8);
    sub_25BE0C260();
    sub_25BE15328();
    v11 = *(v3 + 80);
    v12 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC68, &qword_25BE170D0);
    sub_25BE0C2DC();
    sub_25BE152E8();
    LOBYTE(v11) = 8;
    sub_25BE15308();
    LOBYTE(v11) = 9;
    sub_25BE15308();
    LOBYTE(v11) = 10;
    sub_25BE15308();
    LOBYTE(v11) = 11;
    sub_25BE15308();
    LOBYTE(v11) = 12;
    sub_25BE152D8();
    LOBYTE(v11) = 13;
    sub_25BE15308();
    LOBYTE(v11) = *(v3 + 94);
    v12 = 14;
    sub_25BE0C358();
    sub_25BE152E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BE05428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BE0A028(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BE0545C(uint64_t a1)
{
  v2 = sub_25BE0BEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE05498(uint64_t a1)
{
  v2 = sub_25BE0BEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BE054D4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_25BE0A4E8(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 79) = *(v8 + 15);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_25BE05540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x754F646567676F6CLL;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E496E6567676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x754F646567676F6CLL;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE0564C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1851881335;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x47356E617777;
  }

  else
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1768319351;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x47356E617777;
    if (a2 != 3)
    {
      v6 = 0x6863616552746F6ELL;
      v5 = 0xEC000000656C6261;
    }

    if (a2 == 2)
    {
      v7 = 1851881335;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_25BE15358();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25BE057C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 1685025392;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 1685025392;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE058DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 0x534F63616DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5459817;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x534F64615069;
  if (a2 != 2)
  {
    v8 = 0x534F63616DLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 5459817;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE05A00()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE05AA8(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE05B3C(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE05BE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0AD14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE05C10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x754F646567676F6CLL;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25BE05D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v4 = 0x73656C6574617473;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x766C6F7365726E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C75666574617473;
  if (*a2 != 1)
  {
    v8 = 0x73656C6574617473;
    v7 = 0xE900000000000073;
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
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE05E30()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE05EDC(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE05F74(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE0601C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0AD60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE0604C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE800000000000000;
  v5 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v5 = 0x73656C6574617473;
    v4 = 0xE900000000000073;
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

uint64_t sub_25BE06164(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC30, &qword_25BE170B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BCAC();
  sub_25BE153B8();
  v11[15] = 0;
  sub_25BE152F8();
  if (!v2)
  {
    v11[14] = *(v3 + 16);
    v11[13] = 1;
    sub_25BE0BE10();
    sub_25BE15328();
    v11[12] = *(v3 + 17);
    v11[11] = 2;
    sub_25BE0BE64();
    sub_25BE15328();
    v11[10] = 3;
    sub_25BE152F8();
    v11[9] = 4;
    sub_25BE152F8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25BE06370()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25BE06434@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BE0ADAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BE06468(uint64_t a1)
{
  v2 = sub_25BE0BCAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE064A4(uint64_t a1)
{
  v2 = sub_25BE0BCAC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BE064E0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_25BE0AF80(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_25BE06554()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE06608(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE066A8(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE06758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0B2A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE06788(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x534F64615069;
  if (*v1 != 2)
  {
    v5 = 0x534F63616DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 5459817;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25BE068A8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25BE15358();
  }

  return v9 & 1;
}

uint64_t sub_25BE06980()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE06A18(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE06A9C(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE06B30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0B2F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE06B60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E7265746E69;
  if (v2 != 1)
  {
    v4 = 0x6C616E7265747865;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_25BE06C64(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x444972657375;
    v6 = 0x6570795472657375;
    if (a1 != 2)
    {
      v6 = 0x7261745372657375;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7265646E6567;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6B63617242656761;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25BE06D98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC98, &qword_25BE170E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C3AC();
  sub_25BE153B8();
  v11[15] = 0;
  sub_25BE152F8();
  if (!v2)
  {
    v11[14] = 1;
    sub_25BE152D8();
    v11[13] = *(v3 + 17);
    v11[12] = 2;
    sub_25BE0C4BC();
    sub_25BE15328();
    v11[11] = 3;
    sub_25BE15348();
    v11[10] = 4;
    sub_25BE15338();
    v11[9] = 5;
    sub_25BE15318();
    v11[8] = 6;
    sub_25BE15338();
    v11[7] = 7;
    sub_25BE15318();
    v11[6] = 8;
    sub_25BE152F8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BE07040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BE0B340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BE07074(uint64_t a1)
{
  v2 = sub_25BE0C3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE070B0(uint64_t a1)
{
  v2 = sub_25BE0C3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BE070EC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_25BE0B630(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_25BE07148(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7824750;
  if (v2 != 1)
  {
    v4 = 0x6E696E7275746572;
    v3 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7824750;
  if (*a2 != 1)
  {
    v8 = 0x6E696E7275746572;
    v7 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE07244()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE072E4(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE07370(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE0740C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0B9F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE0743C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7824750;
  if (v2 != 1)
  {
    v5 = 0x6E696E7275746572;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25BE07548(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC10, &qword_25BE170A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BBB0();
  sub_25BE153B8();
  v10[15] = a2;
  sub_25BE0BC58();
  sub_25BE15328();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25BE07698()
{
  sub_25BE15378();
  MEMORY[0x25F87D0F0](0);
  return sub_25BE15398();
}

uint64_t sub_25BE07704(uint64_t a1)
{
  sub_25BE15378();
  MEMORY[0x25F87D0F0](0);
  return sub_25BE15398();
}

uint64_t sub_25BE07760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000025BE1A660 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25BE15358();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25BE07800(uint64_t a1)
{
  v2 = sub_25BE0BBB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE0783C(uint64_t a1)
{
  v2 = sub_25BE0BBB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_25BE07878@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_25BE0BA40(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_25BE078CC()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE0797C(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE07A18(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE07AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0C81C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE07AF4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 1685025392;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25BE07C60(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_25BE07D64@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_25BE07E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBD0, "VL");
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BE07EAC(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x7461727544736E64;
      break;
    case 2:
      v3 = 0x63656E6E6F63;
      goto LABEL_9;
    case 3:
      v3 = 0x736575716572;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x6174536568636163;
      break;
    case 7:
      result = 0x6F43737574617473;
      break;
    case 8:
      result = 0x646F43726F727265;
      break;
    case 9:
      result = 0x707954746E657665;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0x69646E6F70736572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE08068(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDECC8, &qword_25BE170F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C510();
  sub_25BE153B8();
  v14 = 0;
  sub_25BE14CD8();
  sub_25BE046E0(&unk_281475E70, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25BE15328();
  if (!v2)
  {
    v10 = type metadata accessor for NetworkEventData(0);
    v14 = 1;
    sub_25BE15348();
    v14 = 2;
    sub_25BE15348();
    v14 = 3;
    sub_25BE15348();
    v14 = 4;
    sub_25BE15348();
    v14 = 5;
    sub_25BE15348();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_25BE0C720();
    sub_25BE15328();
    v14 = 7;
    sub_25BE15348();
    v14 = 8;
    sub_25BE15348();
    v14 = *(v3 + v10[13]);
    v13 = 9;
    sub_25BE0C774();
    sub_25BE15328();
    v14 = 10;
    sub_25BE15308();
    v14 = *(v3 + v10[15]);
    v13 = 11;
    sub_25BE0C7C8();
    sub_25BE15328();
    v14 = 12;
    sub_25BE152F8();
    v14 = 13;
    sub_25BE15308();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BE08480@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_25BE14CD8();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDECA0, &qword_25BE170F0);
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for NetworkEventData(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_25BE0C510();
  v35 = v9;
  sub_25BE153A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v10;
  v30 = v13;
  v15 = v32;
  v14 = v33;
  v38 = 0;
  sub_25BE046E0(&qword_27FBDECA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v34;
  sub_25BE15298();
  v17 = v30;
  (*(v14 + 32))(v30, v16, v4);
  v38 = 1;
  v18 = sub_25BE152B8();
  v19 = v29;
  *&v17[v29[5]] = v18;
  v38 = 2;
  v20 = sub_25BE152B8();
  v34 = a1;
  *&v17[v19[6]] = v20;
  v38 = 3;
  *&v17[v19[7]] = sub_25BE152B8();
  v38 = 4;
  *&v17[v19[8]] = sub_25BE152B8();
  v38 = 5;
  *&v17[v19[9]] = sub_25BE152B8();
  v37 = 6;
  sub_25BE0C564();
  sub_25BE15298();
  v17[v19[10]] = v38;
  v38 = 7;
  *&v17[v19[11]] = sub_25BE152B8();
  v38 = 8;
  *&v17[v19[12]] = sub_25BE152B8();
  v37 = 9;
  sub_25BE0C5B8();
  sub_25BE15298();
  v30[v29[13]] = v38;
  v38 = 10;
  v30[v29[14]] = sub_25BE15278() & 1;
  v37 = 11;
  sub_25BE0C60C();
  sub_25BE15298();
  v30[v29[15]] = v38;
  v38 = 12;
  v21 = sub_25BE15268();
  v22 = &v30[v29[16]];
  *v22 = v21;
  v22[1] = v23;
  v38 = 13;
  v24 = sub_25BE15278();
  (*(v15 + 8))(v35, v36);
  v25 = v24 & 1;
  v27 = v30;
  v26 = v31;
  v30[v29[17]] = v25;
  sub_25BE0C660(v27, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25BE0C6C4(v27);
}

unint64_t sub_25BE08A88(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7234659;
      break;
    case 2:
      result = 0x6F437070416E6463;
      break;
    case 3:
      result = 1937208931;
      break;
    case 4:
      result = 0x63696C6275506B63;
      break;
    case 5:
      result = 0x7461766972506B63;
      break;
    case 6:
    case 18:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x656764457377656ELL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000026;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x437961646F546B63;
      break;
    case 13:
      result = 0x4669746C754D6B63;
      break;
    case 14:
      result = 0x46726564724F6B63;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x6165536761546B63;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE08CD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BE0C868(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BE08D04(uint64_t a1)
{
  v2 = sub_25BE0C510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE08D40(uint64_t a1)
{
  v2 = sub_25BE0C510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE08DAC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25BE08A88(*a1);
  v5 = v4;
  if (v3 == sub_25BE08A88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25BE15358();
  }

  return v8 & 1;
}

uint64_t sub_25BE08E34()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE08A88(v1);
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE08E98(uint64_t a1)
{
  sub_25BE08A88(*v1);
  sub_25BE15158();
}

uint64_t sub_25BE08EEC(uint64_t a1)
{
  v2 = *v1;
  sub_25BE15378();
  sub_25BE08A88(v2);
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE08F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0CCF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25BE08F7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BE08A88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BE09058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7629160;
  if (v2 != 1)
  {
    v4 = 1936943469;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7629160;
  if (*a2 != 1)
  {
    v8 = 1936943469;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE0913C()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE091D0(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE09250(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE092E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0CD4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE09310(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7629160;
  if (v2 != 1)
  {
    v5 = 1936943469;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25BE09414()
{
  result = qword_27FBDEBD8;
  if (!qword_27FBDEBD8)
  {
    result = swift_getWitnessTable(byte_25BE16A34, &type metadata for CacheState, v0, v1);
    atomic_store(result, &qword_27FBDEBD8);
  }

  return result;
}

unint64_t sub_25BE0946C()
{
  result = qword_27FBDEBE0;
  if (!qword_27FBDEBE0)
  {
    result = swift_getWitnessTable(byte_25BE16B24, &type metadata for NetworkEventType, v0, v1);
    atomic_store(result, &qword_27FBDEBE0);
  }

  return result;
}

uint64_t sub_25BE094CC()
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE095A4(uint64_t a1)
{
  sub_25BE15158();
}

uint64_t sub_25BE09668(uint64_t a1)
{
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

unint64_t sub_25BE0973C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0CD98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25BE0976C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1851881335;
  v7 = 0xE600000000000000;
  v8 = 0x47356E617777;
  if (v2 != 3)
  {
    v8 = 0x6863616552746F6ELL;
    v7 = 0xEC000000656C6261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1768319351;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_25BE098B4()
{
  result = qword_27FBDEBE8;
  if (!qword_27FBDEBE8)
  {
    result = swift_getWitnessTable(byte_25BE16C14, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_27FBDEBE8);
  }

  return result;
}

unint64_t sub_25BE0990C()
{
  result = qword_2814759F0;
  if (!qword_2814759F0)
  {
    result = swift_getWitnessTable("U5B&\\E", &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_2814759F0);
  }

  return result;
}

unint64_t sub_25BE09964()
{
  result = qword_2814759F8;
  if (!qword_2814759F8)
  {
    result = swift_getWitnessTable(aM1b, &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_2814759F8);
  }

  return result;
}

unint64_t sub_25BE099BC()
{
  result = qword_281475DE8;
  if (!qword_281475DE8)
  {
    result = swift_getWitnessTable(byte_25BE16D04, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_281475DE8);
  }

  return result;
}

unint64_t sub_25BE09A14()
{
  result = qword_281475DF0;
  if (!qword_281475DF0)
  {
    result = swift_getWitnessTable(byte_25BE16CDC, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_281475DF0);
  }

  return result;
}

unint64_t sub_25BE09A6C()
{
  result = qword_281475E18;
  if (!qword_281475E18)
  {
    result = swift_getWitnessTable(byte_25BE16D54, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_281475E18);
  }

  return result;
}

unint64_t sub_25BE09AC4()
{
  result = qword_281475E20;
  if (!qword_281475E20)
  {
    result = swift_getWitnessTable(byte_25BE16D2C, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_281475E20);
  }

  return result;
}

unint64_t sub_25BE09B1C()
{
  result = qword_281475A60;
  if (!qword_281475A60)
  {
    result = swift_getWitnessTable(aE4b, &type metadata for ContentEnvironmentData, v0, v1);
    atomic_store(result, &qword_281475A60);
  }

  return result;
}

unint64_t sub_25BE09B74()
{
  result = qword_281475A68;
  if (!qword_281475A68)
  {
    result = swift_getWitnessTable("]0B&@D", &type metadata for ContentEnvironmentData, v0, v1);
    atomic_store(result, &qword_281475A68);
  }

  return result;
}

unint64_t sub_25BE09BCC()
{
  result = qword_281475A20;
  if (!qword_281475A20)
  {
    result = swift_getWitnessTable(byte_25BE16DF4, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_281475A20);
  }

  return result;
}

unint64_t sub_25BE09C24()
{
  result = qword_281475A28;
  if (!qword_281475A28)
  {
    result = swift_getWitnessTable(a0b, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_281475A28);
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

uint64_t sub_25BE09DA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBF0, &qword_25BE17088);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE09F88();
  sub_25BE153A8();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_25BE15268();
    v10 = 1;
    sub_25BE15268();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_25BE09F88()
{
  result = qword_281475A48;
  if (!qword_281475A48)
  {
    result = swift_getWitnessTable(byte_25BE17D0C, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A48);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_25BE0A028(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657366664F637475 && a2 == 0xE900000000000074 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BE1A6A0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_25BE15358() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000025BE1A6C0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000025BE1A6E0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44496E6F69676572 && a2 == 0xE900000000000073 || (sub_25BE15358() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4465726F74537369 && a2 == 0xEF726573556F6D65 || (sub_25BE15358() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BE1A700 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BE1A720 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000025BE1A740 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025BE1A760 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BE1A780 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BE1A7A0 == a2)
  {

    return 14;
  }

  else
  {
    v5 = sub_25BE15358();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_25BE0A4E8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC38, &qword_25BE170B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BEB8();
  sub_25BE153A8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v48[0]) = 0;
    v10 = sub_25BE152A8();
    LOBYTE(v48[0]) = 1;
    v11 = sub_25BE15238();
    v13 = v12;
    v41 = v11;
    v40 = v10;
    LOBYTE(v48[0]) = 2;
    v14 = sub_25BE15238();
    v16 = v15;
    v39 = v14;
    LOBYTE(v43) = 3;
    sub_25BE0BF0C();
    sub_25BE15298();
    v38 = LOBYTE(v48[0]);
    LOBYTE(v48[0]) = 4;
    v37 = sub_25BE15268();
    v66 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC48, &qword_25BE170C0);
    LOBYTE(v43) = 5;
    sub_25BE0BF60();
    sub_25BE15298();
    v36 = v48[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC58, &qword_25BE170C8);
    LOBYTE(v43) = 6;
    sub_25BE0BFDC();
    sub_25BE15298();
    v42 = v48[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC68, &qword_25BE170D0);
    LOBYTE(v43) = 7;
    sub_25BE0C058();
    sub_25BE15258();
    v35 = a2;
    v18 = v48[0];
    LOBYTE(v48[0]) = 8;
    v34 = sub_25BE15278();
    LOBYTE(v48[0]) = 9;
    v33 = sub_25BE15278();
    LOBYTE(v48[0]) = 10;
    v32 = sub_25BE15278();
    LOBYTE(v48[0]) = 11;
    v31 = sub_25BE15278();
    LOBYTE(v48[0]) = 12;
    v30 = sub_25BE15248();
    LOBYTE(v48[0]) = 13;
    v29 = sub_25BE15278();
    v63 = 14;
    sub_25BE0C0D4();
    sub_25BE15258();
    v34 &= 1u;
    v33 &= 1u;
    v32 &= 1u;
    v31 &= 1u;
    v19 = v31;
    HIDWORD(v28) = v29 & 1;
    (*(v6 + 8))(v9, v5);
    v29 = v64;
    v20 = v40;
    LODWORD(v43) = v40;
    *(&v43 + 1) = v41;
    *&v44 = v13;
    v21 = v39;
    *(&v44 + 1) = v39;
    *&v45 = v16;
    v22 = v38;
    BYTE8(v45) = v38;
    *&v46 = v37;
    *(&v46 + 1) = v66;
    *v47 = v36;
    *&v47[8] = v42;
    *&v47[16] = v18;
    v47[24] = v34;
    v47[25] = v33;
    v47[26] = v32;
    v47[27] = v19;
    v47[28] = v30;
    v23 = BYTE4(v28);
    v47[29] = BYTE4(v28);
    v47[30] = v64;
    sub_25BE0C128(&v43, v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LODWORD(v48[0]) = v20;
    v48[1] = v41;
    v48[2] = v13;
    v48[3] = v21;
    v48[4] = v16;
    v49 = v22;
    *v50 = *v65;
    *&v50[3] = *&v65[3];
    v51 = v37;
    v52 = v66;
    v53 = v36;
    v54 = v42;
    v55 = v18;
    v56 = v34;
    v57 = v33;
    v58 = v32;
    v59 = v31;
    v60 = v30;
    v61 = v23;
    v62 = v29;
    result = sub_25BE0C160(v48);
    v25 = v46;
    v26 = v35;
    v35[2] = v45;
    v26[3] = v25;
    v26[4] = *v47;
    *(v26 + 79) = *&v47[15];
    v27 = v44;
    *v26 = v43;
    v26[1] = v27;
  }

  return result;
}

unint64_t sub_25BE0AD14(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BE0AD60(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BE0ADAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BE1A680 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
  {

    return 4;
  }

  else
  {
    v6 = sub_25BE15358();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25BE0AF80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC18, &qword_25BE170A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BCAC();
  sub_25BE153A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v10 = sub_25BE15268();
  v12 = v11;
  v29 = v10;
  LOBYTE(v30) = 1;
  sub_25BE0BD00();
  sub_25BE15298();
  v13 = LOBYTE(v34[0]);
  LOBYTE(v30) = 2;
  sub_25BE0BD54();
  sub_25BE15298();
  v41 = v13;
  v14 = LOBYTE(v34[0]);
  LOBYTE(v34[0]) = 3;
  v27 = sub_25BE15268();
  v28 = v15;
  v42 = 4;
  v16 = sub_25BE15268();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v14;
  HIDWORD(v26) = v14;
  v21 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v12;
  v22 = v41;
  LOBYTE(v31) = v41;
  BYTE1(v31) = v20;
  v23 = v27;
  *(&v31 + 1) = v27;
  *&v32 = v28;
  *(&v32 + 1) = v16;
  v33 = v19;
  sub_25BE0BDA8(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v21;
  v34[1] = v12;
  v35 = v22;
  v36 = BYTE4(v26);
  v37 = v23;
  v38 = v28;
  v39 = v16;
  v40 = v19;
  result = sub_25BE0BDE0(v34);
  v25 = v31;
  *a2 = v30;
  *(a2 + 16) = v25;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  return result;
}

unint64_t sub_25BE0B2A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BE0B2F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BE0B340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BE1A7C0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474 || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63617242656761 && a2 == 0xEA00000000007465 || (sub_25BE15358() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025BE1A7E0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BE1A800 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BE1A820 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_25BE15358();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25BE0B630@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC88, &qword_25BE170E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C3AC();
  sub_25BE153A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v10 = sub_25BE15268();
  v12 = v11;
  v13 = v10;
  LOBYTE(v37[0]) = 1;
  v47 = sub_25BE15248();
  LOBYTE(v33) = 2;
  sub_25BE0C400();
  sub_25BE15298();
  v32 = LOBYTE(v37[0]);
  LOBYTE(v37[0]) = 3;
  v31 = sub_25BE152B8();
  LOBYTE(v37[0]) = 4;
  v30 = sub_25BE152A8();
  LOBYTE(v37[0]) = 5;
  sub_25BE15288();
  v15 = v14;
  LOBYTE(v37[0]) = 6;
  v29 = sub_25BE152A8();
  LOBYTE(v37[0]) = 7;
  sub_25BE15288();
  HIDWORD(v27) = v16;
  v48 = 8;
  v17 = sub_25BE15268();
  v28 = v18;
  v19 = v17;
  (*(v6 + 8))(v9, v5);
  *&v33 = v13;
  *(&v33 + 1) = v12;
  v20 = v47;
  LOBYTE(v34) = v47;
  BYTE1(v34) = v32;
  v21 = v31;
  *(&v34 + 1) = v31;
  v22 = v30;
  *&v35 = __PAIR64__(v15, v30);
  *(&v35 + 1) = __PAIR64__(HIDWORD(v27), v29);
  v23 = HIDWORD(v27);
  *&v36 = v19;
  *(&v36 + 1) = v28;
  sub_25BE0C454(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v13;
  v37[1] = v12;
  v38 = v20;
  v39 = v32;
  v40 = v21;
  v41 = v22;
  v42 = v15;
  v43 = v29;
  v44 = v23;
  v45 = v19;
  v46 = v28;
  result = sub_25BE0C48C(v37);
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  v26 = v36;
  a2[2] = v35;
  a2[3] = v26;
  return result;
}

unint64_t sub_25BE0B9F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_25BE0BA40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC00, &qword_25BE17098);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BBB0();
  sub_25BE153A8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_25BE0BC04();
    sub_25BE15298();
    (*(v4 + 8))(v7, v3);
    v8 = v10[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_25BE0BBB0()
{
  result = qword_281475A88;
  if (!qword_281475A88)
  {
    result = swift_getWitnessTable(aM9b, &type metadata for ContentEnvironmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A88);
  }

  return result;
}

unint64_t sub_25BE0BC04()
{
  result = qword_27FBDEC08;
  if (!qword_27FBDEC08)
  {
    result = swift_getWitnessTable(aUB_1, &type metadata for ContentEnvironment, v0, v1);
    atomic_store(result, &qword_27FBDEC08);
  }

  return result;
}

unint64_t sub_25BE0BC58()
{
  result = qword_281475AA8;
  if (!qword_281475AA8)
  {
    result = swift_getWitnessTable("m!B&<7", &type metadata for ContentEnvironment, v0, v1);
    atomic_store(result, &qword_281475AA8);
  }

  return result;
}

unint64_t sub_25BE0BCAC()
{
  result = qword_281475E40;
  if (!qword_281475E40)
  {
    result = swift_getWitnessTable("\r:B&(7", &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475E40);
  }

  return result;
}

unint64_t sub_25BE0BD00()
{
  result = qword_27FBDEC20;
  if (!qword_27FBDEC20)
  {
    result = swift_getWitnessTable(byte_25BE17BF4, &type metadata for DevicePlatform, v0, v1);
    atomic_store(result, &qword_27FBDEC20);
  }

  return result;
}

unint64_t sub_25BE0BD54()
{
  result = qword_27FBDEC28;
  if (!qword_27FBDEC28)
  {
    result = swift_getWitnessTable(aB_1, &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_27FBDEC28);
  }

  return result;
}

unint64_t sub_25BE0BE10()
{
  result = qword_281475DE0;
  if (!qword_281475DE0)
  {
    result = swift_getWitnessTable("5B&<8", &type metadata for DevicePlatform, v0, v1);
    atomic_store(result, &qword_281475DE0);
  }

  return result;
}

unint64_t sub_25BE0BE64()
{
  result = qword_281475B68;
  if (!qword_281475B68)
  {
    result = swift_getWitnessTable("]B&H8", &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_281475B68);
  }

  return result;
}

unint64_t sub_25BE0BEB8()
{
  result = qword_281475E10;
  if (!qword_281475E10)
  {
    result = swift_getWitnessTable(byte_25BE17B2C, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475E10);
  }

  return result;
}

unint64_t sub_25BE0BF0C()
{
  result = qword_27FBDEC40;
  if (!qword_27FBDEC40)
  {
    result = swift_getWitnessTable(byte_25BE17B04, &type metadata for ICloudAccountState, v0, v1);
    atomic_store(result, &qword_27FBDEC40);
  }

  return result;
}

unint64_t sub_25BE0BF60()
{
  result = qword_27FBDEC50;
  if (!qword_27FBDEC50)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC48, &qword_25BE170C0);
    v4[0] = MEMORY[0x277D84A58];
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27FBDEC50);
  }

  return result;
}

unint64_t sub_25BE0BFDC()
{
  result = qword_27FBDEC60;
  if (!qword_27FBDEC60)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC58, &qword_25BE170C8);
    v4[0] = MEMORY[0x277D849D8];
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27FBDEC60);
  }

  return result;
}

unint64_t sub_25BE0C058()
{
  result = qword_27FBDEC70;
  if (!qword_27FBDEC70)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC68, &qword_25BE170D0);
    v4[0] = MEMORY[0x277D83808];
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27FBDEC70);
  }

  return result;
}

unint64_t sub_25BE0C0D4()
{
  result = qword_27FBDEC78;
  if (!qword_27FBDEC78)
  {
    result = swift_getWitnessTable("-'B& 9", &type metadata for AggregateStateMode, v0, v1);
    atomic_store(result, &qword_27FBDEC78);
  }

  return result;
}

unint64_t sub_25BE0C190()
{
  result = qword_281475A98;
  if (!qword_281475A98)
  {
    result = swift_getWitnessTable("%#B&d9", &type metadata for ICloudAccountState, v0, v1);
    atomic_store(result, &qword_281475A98);
  }

  return result;
}

unint64_t sub_25BE0C1E4()
{
  result = qword_281475990;
  if (!qword_281475990)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC48, &qword_25BE170C0);
    v4[0] = MEMORY[0x277D84A30];
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_281475990);
  }

  return result;
}

unint64_t sub_25BE0C260()
{
  result = qword_281475998;
  if (!qword_281475998)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC58, &qword_25BE170C8);
    v4[0] = MEMORY[0x277D849B0];
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_281475998);
  }

  return result;
}

unint64_t sub_25BE0C2DC()
{
  result = qword_2814759A0;
  if (!qword_2814759A0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC68, &qword_25BE170D0);
    v4[0] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_2814759A0);
  }

  return result;
}

unint64_t sub_25BE0C358()
{
  result = qword_281475AB0;
  if (!qword_281475AB0)
  {
    result = swift_getWitnessTable("M#B&p9", &type metadata for AggregateStateMode, v0, v1);
    atomic_store(result, &qword_281475AB0);
  }

  return result;
}

unint64_t sub_25BE0C3AC()
{
  result = qword_281475A18;
  if (!qword_281475A18)
  {
    result = swift_getWitnessTable(byte_25BE17A3C, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A18);
  }

  return result;
}

unint64_t sub_25BE0C400()
{
  result = qword_27FBDEC90;
  if (!qword_27FBDEC90)
  {
    result = swift_getWitnessTable(byte_25BE17A14, &type metadata for UserType, v0, v1);
    atomic_store(result, &qword_27FBDEC90);
  }

  return result;
}

unint64_t sub_25BE0C4BC()
{
  result = qword_2814759E8;
  if (!qword_2814759E8)
  {
    result = swift_getWitnessTable(byte_25BE179EC, &type metadata for UserType, v0, v1);
    atomic_store(result, &qword_2814759E8);
  }

  return result;
}

unint64_t sub_25BE0C510()
{
  result = qword_281475C68;
  if (!qword_281475C68)
  {
    result = swift_getWitnessTable(byte_25BE1799C, &type metadata for NetworkEventData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475C68);
  }

  return result;
}

unint64_t sub_25BE0C564()
{
  result = qword_27FBDECB0;
  if (!qword_27FBDECB0)
  {
    result = swift_getWitnessTable("u8B& I", &type metadata for CacheState, v0, v1);
    atomic_store(result, &qword_27FBDECB0);
  }

  return result;
}

unint64_t sub_25BE0C5B8()
{
  result = qword_27FBDECB8;
  if (!qword_27FBDECB8)
  {
    result = swift_getWitnessTable(byte_25BE16A84, &type metadata for NetworkEventType, v0, v1);
    atomic_store(result, &qword_27FBDECB8);
  }

  return result;
}

unint64_t sub_25BE0C60C()
{
  result = qword_27FBDECC0;
  if (!qword_27FBDECC0)
  {
    result = swift_getWitnessTable(byte_25BE16B74, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_27FBDECC0);
  }

  return result;
}

uint64_t sub_25BE0C660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEventData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BE0C6C4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkEventData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BE0C720()
{
  result = qword_281475E50;
  if (!qword_281475E50)
  {
    result = swift_getWitnessTable("m4B&HI", &type metadata for CacheState, v0, v1);
    atomic_store(result, &qword_281475E50);
  }

  return result;
}

unint64_t sub_25BE0C774()
{
  result = qword_281475B78[0];
  if (!qword_281475B78[0])
  {
    result = swift_getWitnessTable("}3B&<H", &type metadata for NetworkEventType, v0, v1);
    atomic_store(result, qword_281475B78);
  }

  return result;
}

unint64_t sub_25BE0C7C8()
{
  result = qword_281475A58;
  if (!qword_281475A58)
  {
    result = swift_getWitnessTable(byte_25BE16B4C, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_281475A58);
  }

  return result;
}

unint64_t sub_25BE0C81C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BE0C868(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461727544736E64 && a2 == 0xEB000000006E6F69 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x447463656E6E6F63 && a2 == 0xEF6E6F6974617275 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275 || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BE1A840 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC000000657A6953 || (sub_25BE15358() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174536568636163 && a2 == 0xEA00000000006574 || (sub_25BE15358() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_25BE15358() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_25BE15358() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_25BE15358() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BE1A860 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000025BE1A880 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69646E6F70736572 && a2 == 0xED0000706F50676ELL || (sub_25BE15358() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BE1A8A0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_25BE15358();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_25BE0CCF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15368();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BE0CD4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BE0CD98(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BE15228();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BE0CDE4()
{
  result = qword_281475A50;
  if (!qword_281475A50)
  {
    result = swift_getWitnessTable(byte_25BE16B9C, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_281475A50);
  }

  return result;
}

unint64_t sub_25BE0CE38()
{
  result = qword_281475B70;
  if (!qword_281475B70)
  {
    result = swift_getWitnessTable(byte_25BE16AAC, &type metadata for NetworkEventType, v0, v1);
    atomic_store(result, &qword_281475B70);
  }

  return result;
}

unint64_t sub_25BE0CE8C()
{
  result = qword_281475E48;
  if (!qword_281475E48)
  {
    result = swift_getWitnessTable(byte_25BE169BC, &type metadata for CacheState, v0, v1);
    atomic_store(result, &qword_281475E48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkEventData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BE0D2D0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25BE0D360(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContentEnvironmentData.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContentEnvironmentData.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BE0D684(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25BE0D714(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BE0D7F4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25BE0D884(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BE0D948()
{
  result = qword_27FBDECD0;
  if (!qword_27FBDECD0)
  {
    result = swift_getWitnessTable(byte_25BE17204, &type metadata for UserType, v0, v1);
    atomic_store(result, &qword_27FBDECD0);
  }

  return result;
}

unint64_t sub_25BE0D9A0()
{
  result = qword_27FBDECD8;
  if (!qword_27FBDECD8)
  {
    result = swift_getWitnessTable("%.B&tA", &type metadata for ICloudAccountState, v0, v1);
    atomic_store(result, &qword_27FBDECD8);
  }

  return result;
}

unint64_t sub_25BE0D9F8()
{
  result = qword_27FBDECE0;
  if (!qword_27FBDECE0)
  {
    result = swift_getWitnessTable(byte_25BE17344, &type metadata for AggregateStateMode, v0, v1);
    atomic_store(result, &qword_27FBDECE0);
  }

  return result;
}

unint64_t sub_25BE0DA50()
{
  result = qword_27FBDECE8;
  if (!qword_27FBDECE8)
  {
    result = swift_getWitnessTable(byte_25BE173E4, &type metadata for DevicePlatform, v0, v1);
    atomic_store(result, &qword_27FBDECE8);
  }

  return result;
}

unint64_t sub_25BE0DAA8()
{
  result = qword_27FBDECF0;
  if (!qword_27FBDECF0)
  {
    result = swift_getWitnessTable("E,B&@?", &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_27FBDECF0);
  }

  return result;
}

unint64_t sub_25BE0DB00()
{
  result = qword_27FBDECF8;
  if (!qword_27FBDECF8)
  {
    result = swift_getWitnessTable(byte_25BE17524, &type metadata for ContentEnvironment, v0, v1);
    atomic_store(result, &qword_27FBDECF8);
  }

  return result;
}

unint64_t sub_25BE0DB58()
{
  result = qword_27FBDED00;
  if (!qword_27FBDED00)
  {
    result = swift_getWitnessTable(byte_25BE175DC, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBDED00);
  }

  return result;
}

unint64_t sub_25BE0DBB0()
{
  result = qword_27FBDED08;
  if (!qword_27FBDED08)
  {
    result = swift_getWitnessTable(a5B, &type metadata for ContentEnvironmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBDED08);
  }

  return result;
}

unint64_t sub_25BE0DC08()
{
  result = qword_27FBDED10;
  if (!qword_27FBDED10)
  {
    result = swift_getWitnessTable(aB_0, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBDED10);
  }

  return result;
}

unint64_t sub_25BE0DC60()
{
  result = qword_27FBDED18;
  if (!qword_27FBDED18)
  {
    result = swift_getWitnessTable(byte_25BE17804, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBDED18);
  }

  return result;
}

unint64_t sub_25BE0DCB8()
{
  result = qword_27FBDED20;
  if (!qword_27FBDED20)
  {
    result = swift_getWitnessTable("\r(B&@:", &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBDED20);
  }

  return result;
}

unint64_t sub_25BE0DD10()
{
  result = qword_27FBDED28;
  if (!qword_27FBDED28)
  {
    result = swift_getWitnessTable("U'B&d9", &type metadata for NetworkEventData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBDED28);
  }

  return result;
}

unint64_t sub_25BE0DD68()
{
  result = qword_281475C58;
  if (!qword_281475C58)
  {
    result = swift_getWitnessTable(byte_25BE178E4, &type metadata for NetworkEventData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475C58);
  }

  return result;
}

unint64_t sub_25BE0DDC0()
{
  result = qword_281475C60;
  if (!qword_281475C60)
  {
    result = swift_getWitnessTable(byte_25BE1790C, &type metadata for NetworkEventData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475C60);
  }

  return result;
}

unint64_t sub_25BE0DE18()
{
  result = qword_281475A08;
  if (!qword_281475A08)
  {
    result = swift_getWitnessTable(aU7b, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A08);
  }

  return result;
}

unint64_t sub_25BE0DE70()
{
  result = qword_281475A10;
  if (!qword_281475A10)
  {
    result = swift_getWitnessTable(byte_25BE17854, &type metadata for UserData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A10);
  }

  return result;
}

unint64_t sub_25BE0DEC8()
{
  result = qword_281475E00;
  if (!qword_281475E00)
  {
    result = swift_getWitnessTable(a8b, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475E00);
  }

  return result;
}

unint64_t sub_25BE0DF20()
{
  result = qword_281475E08;
  if (!qword_281475E08)
  {
    result = swift_getWitnessTable(a4b, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475E08);
  }

  return result;
}

unint64_t sub_25BE0DF78()
{
  result = qword_281475E30;
  if (!qword_281475E30)
  {
    result = swift_getWitnessTable(byte_25BE176BC, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475E30);
  }

  return result;
}

unint64_t sub_25BE0DFD0()
{
  result = qword_281475E38;
  if (!qword_281475E38)
  {
    result = swift_getWitnessTable(byte_25BE176E4, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475E38);
  }

  return result;
}

unint64_t sub_25BE0E028()
{
  result = qword_281475A78;
  if (!qword_281475A78)
  {
    result = swift_getWitnessTable(byte_25BE17604, &type metadata for ContentEnvironmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A78);
  }

  return result;
}

unint64_t sub_25BE0E080()
{
  result = qword_281475A80;
  if (!qword_281475A80)
  {
    result = swift_getWitnessTable(byte_25BE1762C, &type metadata for ContentEnvironmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A80);
  }

  return result;
}

unint64_t sub_25BE0E0D8()
{
  result = qword_281475A38;
  if (!qword_281475A38)
  {
    result = swift_getWitnessTable("U:B&@>", &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A38);
  }

  return result;
}

unint64_t sub_25BE0E130()
{
  result = qword_281475A40;
  if (!qword_281475A40)
  {
    result = swift_getWitnessTable(aE6b, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_281475A40);
  }

  return result;
}

unint64_t sub_25BE0E184()
{
  result = qword_281475AA0;
  if (!qword_281475AA0)
  {
    result = swift_getWitnessTable(byte_25BE174AC, &type metadata for ContentEnvironment, v0, v1);
    atomic_store(result, &qword_281475AA0);
  }

  return result;
}

unint64_t sub_25BE0E1D8()
{
  result = qword_281475DD8;
  if (!qword_281475DD8)
  {
    result = swift_getWitnessTable("5.B&t@", &type metadata for DevicePlatform, v0, v1);
    atomic_store(result, &qword_281475DD8);
  }

  return result;
}

unint64_t sub_25BE0E22C()
{
  result = qword_281475B60;
  if (!qword_281475B60)
  {
    result = swift_getWitnessTable(byte_25BE1740C, &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_281475B60);
  }

  return result;
}

unint64_t sub_25BE0E280()
{
  result = qword_281475A90;
  if (!qword_281475A90)
  {
    result = swift_getWitnessTable(aUB_0, &type metadata for ICloudAccountState, v0, v1);
    atomic_store(result, &qword_281475A90);
  }

  return result;
}

unint64_t sub_25BE0E2D4()
{
  result = qword_27FBDED30;
  if (!qword_27FBDED30)
  {
    result = swift_getWitnessTable(byte_25BE172CC, &type metadata for AggregateStateMode, v0, v1);
    atomic_store(result, &qword_27FBDED30);
  }

  return result;
}

unint64_t sub_25BE0E328()
{
  result = qword_2814759E0;
  if (!qword_2814759E0)
  {
    result = swift_getWitnessTable(byte_25BE1718C, &type metadata for UserType, v0, v1);
    atomic_store(result, &qword_2814759E0);
  }

  return result;
}

id TelemetryUploader.uploadEnvelopes(_:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v102 = a2;
  v109 = sub_25BE15108();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v4);
  v106 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25BE15128();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v6);
  v104 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_25BE14CD8();
  v8 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v9);
  v123 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_25BE15018();
  v11 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v12);
  v121 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25BE14D08();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE14CF8();
  v111 = sub_25BE14CE8();
  v110 = v19;
  v20 = *(v15 + 8);
  v118 = v18;
  v120 = v14;
  v119 = v15 + 8;
  v117 = v20;
  v20(v18, v14);
  v21 = MEMORY[0x277D304F0];
  v22 = *MEMORY[0x277D304F0];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v24 = swift_allocObject();
  v24[1] = xmmword_25BE17D60;
  v25 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v26 = sub_25BE15218();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D83C10];
  *(v24 + 7) = MEMORY[0x277D83B88];
  *(v24 + 8) = v27;
  *(v24 + 4) = v26;
  *(v24 + 12) = MEMORY[0x277D837D0];
  v125 = sub_25BE0F1C0();
  *(v24 + 13) = v125;
  v28 = v110;
  *(v24 + 9) = v111;
  *(v24 + 10) = v28;
  v22 = v22;

  v29 = sub_25BE151B8();
  sub_25BE150F8("will attempt to upload %lu telemetry envelopes, identifier=%{public}@", 69, 2, &dword_25BDF7000, v22, v29, v24);

  v126 = dispatch_group_create();
  if (v25)
  {
    v30 = sub_25BE15218();
    if (!v30)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
LABEL_41:
      v80 = v126;
      IsEmpty = FCDispatchGroupIsEmpty();
      v82 = *v21;
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_25BE16710;
      v84 = v125;
      *(v83 + 56) = MEMORY[0x277D837D0];
      *(v83 + 64) = v84;
      v85 = v111;
      v86 = v110;
      *(v83 + 32) = v111;
      *(v83 + 40) = v86;
      if (IsEmpty)
      {
        v87 = v82;
        v88 = sub_25BE151B8();
        sub_25BE150F8("found no telemetry envelopes requiring upload, identifier=%{public}@", 68, 2, &dword_25BDF7000, v87, v88, v83);
      }

      else
      {
        v89 = MEMORY[0x277D84F90];

        v90 = v82;
        v91 = sub_25BE151B8();
        sub_25BE150F8("will wait for telemetry envelopes to upload, identifier=%{public}@", 66, 2, &dword_25BDF7000, v90, v91, v83);

        sub_25BE11458(0, &qword_281475980, 0x277D85C78);
        v92 = sub_25BE151D8();
        v93 = swift_allocObject();
        v93[2] = v85;
        v93[3] = v86;
        v94 = v80;
        v95 = v102;
        v96 = v103;
        v93[4] = v102;
        v93[5] = v96;
        aBlock[4] = sub_25BE10428;
        aBlock[5] = v93;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25BE10434;
        aBlock[3] = &block_descriptor;
        v97 = _Block_copy(aBlock);
        sub_25BE10490(v95, v96);
        v98 = v104;
        sub_25BE15118();
        v137 = v89;
        sub_25BE113A8(&qword_2814759D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED48, &qword_25BE17D88);
        sub_25BE114A0(&unk_2814759A8, &qword_27FBDED48, &qword_25BE17D88, MEMORY[0x277D83970]);
        v99 = v106;
        v100 = v109;
        sub_25BE151E8();
        sub_25BE151C8();
        _Block_release(v97);

        (*(v108 + 8))(v99, v100);
        (*(v105 + 8))(v98, v107);
      }
    }
  }

  v25 = 0;
  v116 = OBJC_IVAR___NDAnalyticsTelemetryUploader_sessionManager;
  v136 = a1 & 0xC000000000000001;
  v133 = a1 & 0xFFFFFFFFFFFFFF8;
  v115 = (v11 + 104);
  v114 = *MEMORY[0x277CEAE78];
  v129 = (v8 + 1);
  v113 = (v11 + 8);
  v8 = &selRef_responseDuration;
  v135 = xmmword_25BE16710;
  v131 = a1;
  v134 = v30;
  v112 = v23;
  while (1)
  {
    if (v136)
    {
      v35 = MEMORY[0x25F87CF60](v25, a1);
    }

    else
    {
      if (v25 >= *(v133 + 16))
      {
        goto LABEL_45;
      }

      v35 = *(a1 + 8 * v25 + 32);
    }

    v11 = v35;
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ([v35 v8[70]] == 2)
    {
      break;
    }

    v24 = *v21;
    v22 = sub_25BE151A8();
    v31 = swift_allocObject();
    v32 = v8;
    v33 = v31;
    *(v31 + 16) = v135;
    v34 = [v11 v32 + 3832];
    *(v33 + 56) = MEMORY[0x277D849A8];
    *(v33 + 64) = MEMORY[0x277D84A20];
    *(v33 + 32) = v34;
    sub_25BE150F8("failed to upload envelope because only telemetry is supported, contentType=%d", v101);

LABEL_9:
    ++v25;
    v8 = &selRef_responseDuration;
    if (v36 == v30)
    {
      goto LABEL_41;
    }
  }

  result = [v11 content];
  if (!result)
  {
    goto LABEL_49;
  }

  v38 = result;
  v22 = [result fc_zlibInflate];

  if (v22)
  {
    v39 = sub_25BE14CA8();
    v41 = v40;

    v42 = sub_25BE14C98();
    sub_25BE104A0(v39, v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D35518]) initWithData_];

  if (v43)
  {
    v44 = [v43 networkEventGroups];
    if (v44)
    {
      v45 = v44;
      if ([v44 count])
      {
        v46 = v118;
        sub_25BE14CF8();
        v47 = sub_25BE14CE8();
        v128 = v45;
        v48 = v47;
        v132 = v47;
        v49 = v21;
        v51 = v50;
        v117(v46, v120);
        v52 = *v49;
        v53 = swift_allocObject();
        *(v53 + 16) = v135;
        v54 = v125;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = v54;
        *(v53 + 32) = v48;
        *(v53 + 40) = v51;
        v55 = v51;
        v56 = v52;

        v57 = sub_25BE151B8();
        sub_25BE150F8("will start session with identifier=%{public}@", 45, 2, &dword_25BDF7000, v56, v57, v53);

        v58 = *(v124 + v116);
        v59 = v121;
        v60 = v122;
        (*v115)(v121, v114, v122);
        v61 = v123;
        sub_25BE14CC8();
        sub_25BE14E58();
        v127 = *v129;
        v127(v61, v130);
        (*v113)(v59, v60);
        *(swift_allocObject() + 16) = v43;
        v62 = v43;
        sub_25BE14E38();

        v24 = v58;
        sub_25BE14E78();
        *(swift_allocObject() + 16) = v62;
        v63 = v62;
        sub_25BE15028();

        v64 = v126;
        dispatch_group_enter(v126);
        v65 = swift_allocObject();
        v65[2] = v132;
        v65[3] = v55;
        v65[4] = v64;
        v66 = v64;
        sub_25BE14CC8();
        a1 = v131;
        sub_25BE14E48();

        v22 = v112;
        v21 = MEMORY[0x277D304F0];

        v67 = v61;
        v23 = v22;
        v127(v67, v130);
LABEL_40:
        v30 = v134;
        goto LABEL_9;
      }
    }

    v24 = *v21;
    v79 = sub_25BE151B8();
    sub_25BE150F8("skipping telemetry envelope because it has no event groups", 58, 2, &dword_25BDF7000, v24, v79, MEMORY[0x277D84F90]);

    goto LABEL_40;
  }

  v24 = *v21;
  sub_25BE151A8();
  v22 = swift_allocObject();
  *(v22 + 1) = v135;
  result = [v11 content];
  if (!result)
  {
    goto LABEL_50;
  }

  v68 = result;
  v69 = sub_25BE14CA8();
  v71 = v70;

  v72 = v71;
  v73 = v71 >> 62;
  if ((v71 >> 62) > 1)
  {
    if (v73 == 2)
    {
      v78 = *(v69 + 16);
      v77 = *(v69 + 24);
      result = sub_25BE104A0(v69, v72);
      v76 = v77 - v78;
      if (__OFSUB__(v77, v78))
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_25BE104A0(v69, v71);
      v76 = 0;
    }

    a1 = v131;
    v21 = MEMORY[0x277D304F0];
    goto LABEL_39;
  }

  v21 = MEMORY[0x277D304F0];
  if (!v73)
  {
    v74 = v69;
    v75 = BYTE6(v72);
    sub_25BE104A0(v74, v72);
    v76 = v75;
LABEL_36:
    a1 = v131;
LABEL_39:
    *(v22 + 7) = MEMORY[0x277D83B88];
    *(v22 + 8) = MEMORY[0x277D83C10];
    *(v22 + 4) = v76;
    sub_25BE150F8("failed to convert envelope content to telemetry, bytes=%lu", v101);

    goto LABEL_40;
  }

  result = sub_25BE104A0(v69, v72);
  LODWORD(v76) = HIDWORD(v69) - v69;
  if (!__OFSUB__(HIDWORD(v69), v69))
  {
    v76 = v76;
    goto LABEL_36;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_25BE0F1C0()
{
  result = qword_2814759D0;
  if (!qword_2814759D0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_2814759D0);
  }

  return result;
}

id sub_25BE0F214(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED70, &qword_25BE17DD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED78, &qword_25BE17DD8);
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v64 = &v51 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED80, &qword_25BE17DE0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v12);
  v61 = &v51 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED88, &qword_25BE17DE8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v14);
  v16 = &v51 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDED90, &qword_25BE17DF0);
  v17 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v18);
  v20 = &v51 - v19;
  result = [v2 appVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v22 = result;
  v52 = v17;
  v53 = v16;
  v54 = v9;
  v55 = v8;
  v56 = v5;
  v74 = a1;
  v57 = v4;
  v23 = sub_25BE15148();
  v25 = v24;

  v73 = v2;
  result = [v2 appBuildNumber];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = sub_25BE15148();
  v29 = v28;

  *&v76 = v23;
  *(&v76 + 1) = v25;
  v77 = v27;
  v78 = v29;
  sub_25BE114E8();
  sub_25BE14D58();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED50, &qword_25BE17DB8);
  v30 = sub_25BE14DE8();
  v31 = *(v30 - 8);
  v72 = *(v31 + 72);
  v32 = v31;
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v66 = *(v31 + 80);
  v34 = swift_allocObject();
  v75 = xmmword_25BE16710;
  *(v34 + 16) = xmmword_25BE16710;
  v35 = *MEMORY[0x277CEAD10];
  v68 = *(v32 + 104);
  v67 = v35;
  v71 = v30;
  v68(v34 + v33, v35, v30);
  v70 = v32 + 104;
  v51 = "or group type %d";
  sub_25BE14ED8();

  (*(v52 + 8))(v20, v58);
  v36 = [v73 contentEnvironment];
  v37 = 0x1020300u >> (8 * v36);
  if (v36 >= 4)
  {
    LOBYTE(v37) = 0;
  }

  LOBYTE(v76) = v37;
  sub_25BE1153C();
  v38 = v53;
  sub_25BE14D58();
  v39 = swift_allocObject();
  *(v39 + 16) = v75;
  v40 = v30;
  v41 = v68;
  v68(v39 + v33, v35, v40);
  sub_25BE14ED8();

  (*(v59 + 8))(v38, v60);
  sub_25BE10764(&v76);
  sub_25BE11590();
  v42 = v61;
  sub_25BE14D58();
  v43 = swift_allocObject();
  *(v43 + 16) = v75;
  v44 = v67;
  v41(v43 + v33, v67, v71);
  sub_25BE14ED8();

  (*(v62 + 8))(v42, v63);
  sub_25BE1084C(&v76);
  sub_25BE115E4();
  v45 = v64;
  sub_25BE14D58();
  v46 = swift_allocObject();
  *(v46 + 16) = v75;
  v47 = v71;
  v48 = v68;
  v68(v46 + v33, v44, v71);
  sub_25BE14ED8();

  (*(v65 + 8))(v45, v54);
  sub_25BE109BC(&v76);
  sub_25BE11638();
  v49 = v55;
  sub_25BE14D58();
  v50 = swift_allocObject();
  *(v50 + 16) = v75;
  v48(v50 + v33, v67, v47);
  sub_25BE14ED8();

  return (*(v56 + 8))(v49, v57);
}

void sub_25BE0FB18(_OWORD *a1)
{
  v52 = a1;
  v51 = type metadata accessor for NetworkEventData(0);
  MEMORY[0x28223BE20](v51, v2);
  v50 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v1 networkEventGroups];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  if (![v5 count])
  {

LABEL_29:
    v55 = *MEMORY[0x277D304F0];
    v34 = sub_25BE151B8();
    sub_25BE150F8("telemetry has no network event groups", 37, 2, &dword_25BDF7000, v55, v34, MEMORY[0x277D84F90]);
LABEL_30:
    v35 = v55;

    return;
  }

  *&v56[0] = 0;
  sub_25BE11458(0, &qword_281475970, 0x277D35528);
  sub_25BE15188();

  if (!*&v56[0])
  {
    v55 = *MEMORY[0x277D304F0];
    v36 = sub_25BE151A8();
    sub_25BE150F8("failed to cast telemetry network event groups", 45, 2, &dword_25BDF7000, v55, v36, MEMORY[0x277D84F90]);

    goto LABEL_30;
  }

  v40 = *&v56[0];
  v6 = *MEMORY[0x277D304F0];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v7 = swift_allocObject();
  v8 = v40;
  v49 = xmmword_25BE16710;
  v7[1] = xmmword_25BE16710;
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_42;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v11 = MEMORY[0x277D83C10];
  *(v7 + 7) = MEMORY[0x277D83B88];
  *(v7 + 8) = v11;
  *(v7 + 4) = v10;
  v6 = v6;
  sub_25BE151B8();
  sub_25BE150F8("will push events for %lu telemetry event groups", v37);

  if (v9)
  {
    v12 = sub_25BE15218();
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_8:
      v13 = 0;
      v44 = v40 & 0xC000000000000001;
      v39 = v40 & 0xFFFFFFFFFFFFFF8;
      v38 = v40 + 32;
      v48 = "or group type %d";
      v47 = *MEMORY[0x277CEAD18];
      v43 = xmmword_25BE17D60;
      v42 = v5;
      v41 = v12;
      while (1)
      {
        if (v44)
        {
          v14 = MEMORY[0x25F87CF60](v13, v40);
        }

        else
        {
          if (v13 >= *(v39 + 16))
          {
            goto LABEL_41;
          }

          v14 = *(v38 + 8 * v13);
        }

        v55 = v14;
        v15 = __OFADD__(v13, 1);
        v16 = v13 + 1;
        if (v15)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v10 = sub_25BE15218();
          goto LABEL_6;
        }

        v17 = *MEMORY[0x277D304F0];
        v6 = swift_allocObject();
        *(v6 + 1) = v43;
        v18 = v17;
        v19 = sub_25BE10A70();
        if (v19 >> 62)
        {
          v20 = sub_25BE15218();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = v16;

        *(v6 + 7) = MEMORY[0x277D83B88];
        *(v6 + 8) = MEMORY[0x277D83C10];
        *(v6 + 4) = v20;
        v7 = v55;
        v21 = [v55 eventType];
        *(v6 + 12) = MEMORY[0x277D849A8];
        *(v6 + 13) = MEMORY[0x277D84A20];
        *(v6 + 18) = v21;
        sub_25BE151B8();
        sub_25BE150F8("will push %lu telemetry events for group type %d", v37, v38);

        v22 = sub_25BE10A70();
        v9 = v22;
        if (v22 >> 62)
        {
          v23 = sub_25BE15218();
          if (!v23)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v23)
          {
            goto LABEL_9;
          }
        }

        type metadata accessor for TelemetryEvent(0);
        if (v23 < 1)
        {
          goto LABEL_40;
        }

        v24 = 0;
        v53 = v9 & 0xC000000000000001;
        v54 = v9;
        do
        {
          if (v53)
          {
            v25 = MEMORY[0x25F87CF60](v24, v9);
          }

          else
          {
            v25 = *(v9 + 8 * v24 + 32);
          }

          ++v24;
          v26 = v25;
          v27 = v55;
          v28 = v50;
          sub_25BE10B7C(v26, v27, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED50, &qword_25BE17DB8);
          v29 = sub_25BE14DE8();
          v30 = *(v29 - 8);
          v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = v49;
          v33 = *(v30 + 104);
          v6 = (v30 + 104);
          v33(v32 + v31, v47, v29);
          sub_25BE113A8(&qword_281475C50, type metadata accessor for NetworkEventData, byte_25BE1702C);
          v7 = v52;
          sub_25BE14D68();

          sub_25BE0C6C4(v28);
          sub_25BE113A8(&unk_281475DB8, type metadata accessor for TelemetryEvent, byte_25BE16FD4);
          memset(v56, 0, 32);
          sub_25BE14D78();

          sub_25BE113F0(v56);
          v9 = v54;
        }

        while (v23 != v24);
LABEL_9:

        v13 = v46;
        v5 = v42;
        if (v46 == v41)
        {

          return;
        }
      }
    }
  }
}

void sub_25BE1025C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D304F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BE16710;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_25BE0F1C0();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = v6;

  v9 = sub_25BE151B8();
  sub_25BE150F8("did end session with identifier=%{public}@", 42, 2, &dword_25BDF7000, v8, v9, v7);

  dispatch_group_leave(a3);
}

uint64_t sub_25BE10344(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *MEMORY[0x277D304F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BE16710;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_25BE0F1C0();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = v6;

  v9 = sub_25BE151B8();
  sub_25BE150F8("finished uploading telemetry envelopes, identifier=%{public}@", 61, 2, &dword_25BDF7000, v8, v9, v7);

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_25BE10434(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BE10490(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BE104A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id TelemetryUploader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TelemetryUploader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BE10744(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_25BE10764(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 deviceModel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_25BE15148();
  v8 = v7;

  v9 = sub_25BE10E5C();
  v10 = [v2 osInstallVariant];
  v11 = [v2 osVersion];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v10 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v10 == 1;
  }

  v14 = sub_25BE15148();
  v16 = v15;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 17) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
}

double sub_25BE1084C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25BE15148();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 countryCode];
  if (v9)
  {
    v10 = v9;
    v11 = sub_25BE15148();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  LODWORD(v18) = 0;
  *(&v18 + 1) = v6;
  *&v19 = v8;
  *(&v19 + 1) = v11;
  *&v20 = v13;
  BYTE8(v20) = 0;
  strcpy(&v21, "com.apple.news");
  HIBYTE(v21) = -18;
  *v22 = MEMORY[0x277D84F90];
  *&v22[8] = MEMORY[0x277D84F90];
  *&v22[16] = 0;
  *&v22[24] = 0;
  *&v22[28] = 2;
  v22[30] = 3;
  v23 = 0;
  v24 = v6;
  v25 = v8;
  v26 = v11;
  v27 = v13;
  v28 = 0;
  strcpy(v29, "com.apple.news");
  v29[15] = -18;
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v33 = 0;
  v32 = 0;
  v34 = 2;
  v35 = 3;
  sub_25BE0C128(&v18, &v17);
  sub_25BE0C160(&v23);
  v14 = v21;
  a1[2] = v20;
  a1[3] = v14;
  a1[4] = *v22;
  *(a1 + 79) = *&v22[15];
  result = *&v18;
  v16 = v19;
  *a1 = v18;
  a1[1] = v16;
  return result;
}

void sub_25BE109BC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 userId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25BE15148();
    v8 = v7;

    v9 = [v2 userStorefrontId];
    if (v9)
    {
      v10 = v9;
      v11 = sub_25BE15148();
      v13 = v12;

      *a1 = v6;
      *(a1 + 8) = v8;
      *(a1 + 16) = 2;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = v11;
      *(a1 + 56) = v13;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25BE10A70()
{
  v1 = [v0 successes];
  if (v1)
  {
    v2 = v1;
    sub_25BE11458(0, &qword_281475978, 0x277D35520);
    sub_25BE15188();
  }

  v3 = MEMORY[0x277D84F90];
  v4 = [v0 failures];
  if (v4)
  {
    v5 = v4;
    sub_25BE11458(0, &qword_281475978, 0x277D35520);
    sub_25BE15188();
  }

  sub_25BE10FDC(MEMORY[0x277D84F90]);
  return v3;
}

int *sub_25BE10B7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = sub_25BE14CD8();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 startTime];
  sub_25BE14CB8();
  v33 = [a1 dnsDuration];
  v32 = [a1 connectDuration];
  v31 = [a1 requestDuration];
  v30 = [a1 responseDuration];
  v29 = [a1 responseSize];
  v10 = [a1 cacheState];
  v28 = [a1 httpStatusCode];
  v27 = [a1 errorCode];
  v26 = sub_25BE10F98(a2);
  v25 = [a2 wifiReachabilityStatus];
  v11 = [a2 cellularRadioAccessTechnology] - 1;
  if (v11 > 0xC)
  {
    v12 = 0;
  }

  else
  {
    v12 = byte_25BE17DFA[v11];
  }

  v13 = [a2 respondingPop];
  if (v13)
  {
    v14 = v13;
    v15 = sub_25BE15148();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0xE000000000000000;
  }

  if (v10 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v10 == 1;
  }

  (*(v6 + 32))(a3, v9, v34);
  result = type metadata accessor for NetworkEventData(0);
  v20 = v32;
  *(a3 + result[5]) = v33;
  *(a3 + result[6]) = v20;
  v21 = v30;
  *(a3 + result[7]) = v31;
  *(a3 + result[8]) = v21;
  v22 = v28;
  *(a3 + result[9]) = v29;
  *(a3 + result[10]) = v18;
  *(a3 + result[11]) = v22;
  *(a3 + result[12]) = v27;
  LOBYTE(v22) = v25;
  *(a3 + result[13]) = v26;
  *(a3 + result[14]) = v22;
  *(a3 + result[15]) = v12;
  v23 = (a3 + result[16]);
  *v23 = v15;
  v23[1] = v17;
  *(a3 + result[17]) = 0;
  return result;
}

uint64_t sub_25BE10E5C()
{
  v0 = NFSystemName();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_25BE15148();
  v4 = v3;

  if (v2 == 5459817 && v4 == 0xE300000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  if (v2 == 0x534F64615069 && v4 == 0xE600000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  if (v2 == 0x534F63616DLL && v4 == 0xE500000000000000)
  {

    return 3;
  }

  v6 = sub_25BE15358();

  if (v6)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BE10F98(void *a1)
{
  v1 = [a1 eventType] - 1;
  if (v1 > 0x11)
  {
    return 0;
  }

  else
  {
    return byte_25BE17E07[v1];
  }
}

uint64_t sub_25BE10FDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25BE15218();
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

  v13 = sub_25BE15218();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25BE110CC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25BE1116C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_25BE110CC(uint64_t a1, char a2)
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

  sub_25BE15218();
LABEL_9:
  result = sub_25BE15208();
  *v2 = result;
  return result;
}

uint64_t sub_25BE1116C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25BE15218();
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
      result = sub_25BE15218();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25BE114A0(&qword_27FBDED68, &qword_27FBDED60, &qword_25BE17DC8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED60, &qword_25BE17DC8);
            v9 = sub_25BE11320(v13, i, a3);
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
        sub_25BE11458(0, &qword_281475978, 0x277D35520);
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

void (*sub_25BE11320(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F87CF60](a2, a3);
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
    return sub_25BE113A0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE113A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BE113F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED58, &qword_25BE17DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BE11458(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25BE114A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BE114E8()
{
  result = qword_281475A30;
  if (!qword_281475A30)
  {
    result = swift_getWitnessTable(a5, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_281475A30);
  }

  return result;
}

unint64_t sub_25BE1153C()
{
  result = qword_281475A70;
  if (!qword_281475A70)
  {
    result = swift_getWitnessTable(byte_25BE16F24, &type metadata for ContentEnvironmentData, v0, v1);
    atomic_store(result, &qword_281475A70);
  }

  return result;
}

unint64_t sub_25BE11590()
{
  result = qword_281475E28;
  if (!qword_281475E28)
  {
    result = swift_getWitnessTable(byte_25BE16ECC, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_281475E28);
  }

  return result;
}

unint64_t sub_25BE115E4()
{
  result = qword_281475DF8;
  if (!qword_281475DF8)
  {
    result = swift_getWitnessTable(asc_25BE16E74, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_281475DF8);
  }

  return result;
}

unint64_t sub_25BE11638()
{
  result = qword_281475A00;
  if (!qword_281475A00)
  {
    result = swift_getWitnessTable(byte_25BE16E1C, &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_281475A00);
  }

  return result;
}

void NDAnalyticsEnvelopeSubmissionDatesByContentType_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "entries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEnvelopeContentTypesFromEntries_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "entries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "entries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "stringRepresentations"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryDeliveryWindowEarlierDate_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopeSubmissionDate"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryDeliveryWindowEarlierDate_cold_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "contentTypeConfig"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryDeliveryWindow_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopeSubmissionDate"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryDeliveryWindow_cold_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "contentTypeConfig"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryCanBeUploaded_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopeSubmissionDate"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryCanBeUploaded_cold_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "targetDate"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NDAnalyticsEntryCanBeUploaded_cold_3()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "contentTypeConfig"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}