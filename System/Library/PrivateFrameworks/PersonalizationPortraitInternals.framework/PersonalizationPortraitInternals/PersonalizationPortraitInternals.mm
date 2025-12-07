id procNameForPid(int a1, int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  *__error() = 0;
  v4 = proc_name(a1, buffer, 0x400u);
  if (a2)
  {
    *a2 = *__error();
  }

  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v4 encoding:4];
  }

  return v5;
}

void sub_23224D4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blockNotifyQueue()
{
  if (blockNotifyQueue__pasOnceToken2 != -1)
  {
    dispatch_once(&blockNotifyQueue__pasOnceToken2, &__block_literal_global_78_14995);
  }

  v1 = blockNotifyQueue__pasExprOnceResult;

  return v1;
}

void sub_23224D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_0()
{
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2)
{

  return sub_232401528();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_232400D58();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23224E060(void *a1)
{
  v30 = 0;
  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &v30;
  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_232278D48;
  *(v3 + 24) = v2;
  v28 = sub_232278D50;
  v29 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_232278638;
  v27 = &block_descriptor;
  v4 = _Block_copy(&aBlock);
  v5 = v1;

  OUTLINED_FUNCTION_0_8();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &v30;
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23224E560;
  *(v7 + 24) = v6;
  v28 = sub_23224E538;
  v29 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_23224E4B4;
  v27 = &block_descriptor_15;
  v8 = _Block_copy(&aBlock);
  v9 = v5;

  OUTLINED_FUNCTION_0_8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &v30;
  OUTLINED_FUNCTION_0_8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_232278D78;
  *(v11 + 24) = v10;
  v28 = sub_232278D80;
  v29 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_232278AE8;
  v27 = &block_descriptor_24;
  v12 = _Block_copy(&aBlock);
  v13 = v9;

  [a1 accessCriteriaUsingBundleIdentifierBlock:v4 domainSelectionBlock:v8 uniqueIdentifiersBlock:v12];
  _Block_release(v8);
  _Block_release(v4);
  _Block_release(v12);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v17 = v30;
  v18 = objc_opt_self();
  v19 = v18;
  if (v17)
  {
    v20 = v17;
    v21 = sub_232400C08();

    v22 = [v19 failedWithError_];
  }

  else
  {
    v22 = [v18 successWithNumberOfExtractions_];
  }

  return v22;
}

uint64_t sub_23224E450()
{
  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_23224E4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_232401178();
  v7 = v6;
  v8 = a3;
  v4(v5, v7, v8);
}

void sub_23224E568(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v9 = sub_232401128();
  __swift_project_value_buffer(v9, qword_2814C8DC8);
  v10 = a3;

  v11 = sub_232401108();
  v12 = sub_232401368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v58 = v14;
    *v13 = 134218242;
    *(v13 + 4) = [v10 count];

    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_23224ED04(a1, a2, &v58);
    _os_log_impl(&dword_23224A000, v11, v12, "Consumer: beginning deletion from %ld group Ids from %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x2383841F0](v14, -1, -1);
    MEMORY[0x2383841F0](v13, -1, -1);
  }

  else
  {
  }

  if (sub_232401178() == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = sub_232401528();

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  sub_232401438();
  v18 = sub_232401178();
  v20 = v19;

  v58 = v18;
  v59 = v20;
  MEMORY[0x238382770](0xD000000000000014, 0x8000000232419760);
  v21 = sub_232401168();

  v22 = [v10 containsDomain_];

  if (v22)
  {
    sub_232278168(a1);
    return;
  }

LABEL_15:
  v23 = [v10 allDomains];
  v24 = sub_2324012F8();

  sub_23224EE94(v24);
  v25 = sub_23224F160();
  if (v25)
  {
    v26 = v25;
    v27 = sub_232401168();
    v28 = sub_232401248();
    v58 = 0;
    v29 = [v26 deleteAllTopicsFromSourcesWithBundleId:v27 groupIds:v28 deletedCount:0 error:&v58];

    v30 = v58;
    if (!v29)
    {
      goto LABEL_26;
    }

    v31 = v58;
  }

  v32 = sub_23224FDAC();
  if (!v32)
  {
    goto LABEL_21;
  }

  v33 = v32;
  v34 = sub_232401168();
  v35 = sub_232401248();
  v58 = 0;
  v36 = [v33 deleteAllNamedEntitiesFromSourcesWithBundleId:v34 groupIds:v35 deletedCount:0 error:&v58];

  v30 = v58;
  if (!v36)
  {
LABEL_26:
    v45 = v30;

    v46 = sub_232400C18();

    goto LABEL_29;
  }

  v37 = v58;
LABEL_21:
  v38 = sub_23224FDC0();
  if (!v38)
  {

    return;
  }

  v39 = v38;
  v40 = sub_232401168();
  v41 = sub_232401248();

  v58 = 0;
  v42 = [v39 deleteAllLocationsFromSourcesWithBundleId:v40 groupIds:v41 deletedCount:0 error:&v58];

  v43 = v58;
  if ((v42 & 1) == 0)
  {
    v47 = v58;
    v46 = sub_232400C18();

LABEL_29:
    swift_willThrow();
    v48 = *a5;
    *a5 = v46;
    v49 = v46;

    v50 = v46;
    v51 = sub_232401108();
    v52 = sub_232401348();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_23224ED04(a1, a2, &v58);
      *(v53 + 12) = 2080;
      swift_getErrorValue();
      v55 = sub_232401588();
      v57 = sub_23224ED04(v55, v56, &v58);

      *(v53 + 14) = v57;
      _os_log_impl(&dword_23224A000, v51, v52, "Consumer: failed to delete data on request to delete by group IDs from %s. %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383841F0](v54, -1, -1);
      MEMORY[0x2383841F0](v53, -1, -1);
    }

    else
    {
    }

    return;
  }

  v44 = v43;
}

unint64_t sub_23224EBCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2322632BC(a5, a6);
    *a1 = v9;
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
    result = sub_232401468();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23224ED04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_24();
  v9 = sub_23224EBCC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_23224EDEC(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v10;
}

double OUTLINED_FUNCTION_24_1()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t sub_23224EDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *sub_23224EE94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23224EF24(*(a1 + 16), 0);
  sub_23224EFA4(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_23224F158(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_23224EF24(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD915C0, &qword_232417E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void sub_23224EFA4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
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
    v13 = 0;
LABEL_20:
    *result = a4;
    result[1] = v6;
    result[2] = ~v7;
    result[3] = v13;
    result[4] = v9;
    OUTLINED_FUNCTION_18_0();
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

id sub_23224F174(void *a1, void *a2)
{
  v3 = *(v2 + *a1);
  v4 = v3;
  if (!v3)
  {
    v4 = [objc_opt_self() defaultStore];
  }

  v5 = v3;
  return v4;
}

void sub_23224F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23224FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_2789792D0;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23225089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232250B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322510D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232251330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23225149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322515B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_232251784()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232251820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = [a1 content];
  *(swift_allocObject() + 16) = a1;
  v8 = [a1 contentProtection];
  v9 = v7;
  v10 = a5();

  return v10;
}

uint64_t OUTLINED_FUNCTION_80_0@<X0>(uint64_t a1@<X8>)
{
  v1[30] = a1;
  v1[31] = v2;
  v1[32] = 0;
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_23224ED04(v0, v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

id sub_2322519D0(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    if (qword_2814C7C08 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2814C7C08);
    }

    v6 = OUTLINED_FUNCTION_60();
    if (sub_23225375C(v6, v7, v8))
    {

      return 0;
    }

    else
    {
      v9 = [objc_opt_self() defaultPolicy];
      OUTLINED_FUNCTION_60();
      sub_232401168();
      OUTLINED_FUNCTION_9_3();

      v10 = OUTLINED_FUNCTION_7_3();
      v4 = [v10 v11];
    }
  }

  return v4;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_232400D48();
}

uint64_t OUTLINED_FUNCTION_3_5@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = a2;

  return sub_2322533B0(a1, &a5);
}

id OUTLINED_FUNCTION_3_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = 0;

  return [a1 (v14 + 1656)];
}

void sub_232251BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v205 = v27;
  v206 = v26;
  v29 = v28;
  v207 = v30;
  v201 = __PAIR64__(v32, v31);
  v34 = v33;
  ObjectType = swift_getObjectType();
  v35 = sub_232400CC8();
  v36 = OUTLINED_FUNCTION_5_2(v35, &a14);
  v198 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_6();
  v197 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v40 = OUTLINED_FUNCTION_70(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_1();
  v202 = v41;
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v42);
  v200 = &v192 - v43;
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v192 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v48 = OUTLINED_FUNCTION_70(v47);
  MEMORY[0x28223BE20](v48);
  v210 = &v192 - v49;
  v208 = sub_232400C98();
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_6();
  v209 = v51;
  v203 = swift_getObjectType();
  v52 = &off_27897A000;
  if ((sub_232251970() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_232253174();
  v20 = v53;
  v54 = sub_2324011C8();

  if ((v54 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (HIDWORD(v54))
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v55 = sub_23227BE3C(v34);
  if (v56)
  {
    v57 = v55;
    v58 = v56;
    v195 = v29;
    v59 = [v34 respondsToSelector_];
    v196 = v25;
    v194 = v46;
    v193 = v57;
    if ((v59 & 1) != 0 && (v60 = [v34 domainId]) != 0)
    {
      v61 = v60;
      v192 = sub_232401178();
      v20 = v62;
    }

    else
    {
      v192 = 0;
      v20 = 0;
    }

    v63 = OUTLINED_FUNCTION_6_2(objc_allocWithZone(MEMORY[0x277D3A4E0]), sel_initWithDwellTimeSeconds_lengthSeconds_lengthCharacters_donationCount_contactHandleCount_flags_);
    v64 = [v34 uniqueId];
    v65 = sub_232401178();
    v67 = v66;

    [v34 absoluteTimestamp];
    v68 = v209;
    sub_232400C28();
    v69 = v210;
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v208);
    v73 = sub_2322535EC();
    v75 = v74;
    v76 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    v77 = v68;
    v52 = &off_27897A000;
    sub_232253BEC(v193, v58, v192, v20, v65, v67, v77, v69, 0, v73, v75, v63, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, ObjectType, v205, v206, v207);
    v78 = v194;
    OUTLINED_FUNCTION_42_1();
    if (v79)
    {
      v21 = v79;
      v81 = v206;
      v80 = v207;
      if (((v207)() & 1) == 0)
      {
        v131 = [objc_opt_self() interrupted];
LABEL_38:
        v131;

LABEL_72:
        OUTLINED_FUNCTION_18_0();
        return;
      }

      v214 = MEMORY[0x277D84F90];
      v211[0] = v34;
      v54 = v34;
      v82 = sub_2322538EC(v211, v205, ObjectType, v203, &off_284754740);
      v84 = v83;

      if (v84)
      {
        v205 = v82;
        v210 = v84;
        LODWORD(v209) = BYTE4(v201);
        sub_232400D08();
        v85 = v78;
        OUTLINED_FUNCTION_8_1();
        v208 = v86;
        __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
        v212 = v54;
        v213 = &off_284754740;
        v90 = v54;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
        v92 = OUTLINED_FUNCTION_2_5();
        ObjectType = v91;
        v203 = v90;
        if (v92)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v211);
          v212 = v90;
          v213 = &off_284754740;
          v93 = v90;
          if (OUTLINED_FUNCTION_2_5())
          {
            OUTLINED_FUNCTION_50_0();
            v94 = v200;
            v95 = v80;
            v80 = v207;
            v96(0, v95, &off_284754740);
            v97 = v85;
            sub_232257C68(v85, &qword_27DD914C8, &unk_232417F50);
            __swift_destroy_boxed_opaque_existential_0Tm(v211);
            v98 = v208;
          }

          else
          {
            v97 = v85;
            sub_232257C68(v85, &qword_27DD914C8, &unk_232417F50);
            OUTLINED_FUNCTION_24_1();
            sub_232257C68(v211, &qword_27DD914E8, &qword_2324181A0);
            v94 = v200;
            OUTLINED_FUNCTION_8_1();
            v98 = v208;
            __swift_storeEnumTagSinglePayload(v147, v148, v149, v208);
          }

          sub_232277044(v94, v97);
          v146 = v202;
        }

        else
        {
          v97 = v85;
          v146 = v202;
          v98 = v208;
        }

        v150 = v209;
        if ((v209 | 2) == 2)
        {
          v151 = *&v63[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector];
          if (v151)
          {
            v152 = v151;
            v153 = sub_232401168();
            sub_232276FE4(v97, v146, &qword_27DD914C8, &unk_232417F50);
            if (__swift_getEnumTagSinglePayload(v146, 1, v98) == 1)
            {
              v154 = 0;
            }

            else
            {
              v208 = v152;
              v155 = v97;
              v156 = v98;
              v154 = sub_232400CE8();
              v157 = *(*(v156 - 8) + 8);
              v158 = v156;
              v97 = v155;
              v152 = v208;
              v157(v146, v158);
            }

            v159 = OUTLINED_FUNCTION_27_1();
            v161 = [v159 v160];

            sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
            v162 = sub_232401268();

            sub_232252D4C(v162);
            v80 = v207;
          }
        }

        if (v80())
        {
          if ((v150 - 1) < 2 && (v163 = *&v63[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector]) != 0)
          {
            v164 = objc_opt_self();
            v209 = v163;
            v165 = [v164 sharedInstance];
            v166 = [v21 bundleId];
            if (!v166)
            {
              sub_232401178();
              sub_232401168();
              OUTLINED_FUNCTION_38_1();
            }

            v167 = v21;
            sub_232263718(v21);
            if (v168)
            {
              v169 = sub_232401168();
            }

            else
            {
              v169 = 0;
            }

            v172 = v203;
            v173 = [v165 extractionAlgorithmsForBundleId:v166 sourceLanguage:v169 conservative:0 domain:0];

            sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
            sub_232253ABC();
            OUTLINED_FUNCTION_32_1();
            sub_2324012F8();

            v174 = [v164 sharedInstance];
            v175 = [v167 bundleId];
            if (!v175)
            {
              sub_232401178();
              v175 = sub_232401168();
            }

            sub_232263718(v167);
            if (v176)
            {
              v177 = sub_232401168();
            }

            else
            {
              v177 = 0;
            }

            v178 = [v174 extractionAlgorithmsForBundleId:v175 sourceLanguage:v177 conservative:0 domain:1];

            OUTLINED_FUNCTION_32_1();
            v65 = sub_2324012F8();

            v179 = sub_232401168();

            v212 = v172;
            v213 = &off_284754740;
            v180 = v172;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
            OUTLINED_FUNCTION_9_2();
            v181 = swift_dynamicCast();
            if (v181)
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v211);
            }

            sub_232263718(v167);
            if (!v182)
            {
              v183 = v197;
              sub_232400CB8();
              sub_232400CA8();
              (*(v198 + 8))(v183, v199);
            }

            v184 = sub_232401168();

            OUTLINED_FUNCTION_32_1();
            v185 = sub_2324012E8();

            OUTLINED_FUNCTION_32_1();
            v186 = sub_2324012E8();

            v187 = v209;
            v188 = [v209 topicsInText:v179 isPlainText:v181 source:v167 cloudSync:v201 & 1 language:v184 topicAlgorithms:v185 namedEntityAlgorithms:1.0 weight:v186];

            sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
            OUTLINED_FUNCTION_46_1();
            v189 = sub_232401268();

            sub_232252D4C(v189);
            v97 = v194;
            v21 = v167;
            OUTLINED_FUNCTION_42_1();
            v81 = v206;
            v80 = v207;
          }

          else
          {
          }

          if ((v80)(v171))
          {
            v190 = OUTLINED_FUNCTION_47();
            sub_23225764C(v190, v191, v81, v65);
            sub_232257C68(v97, &qword_27DD914C8, &unk_232417F50);

            goto LABEL_72;
          }

          v170 = [objc_opt_self() interrupted];
        }

        else
        {

          v170 = [objc_opt_self() interrupted];
        }

        v170;

        sub_232257C68(v97, &qword_27DD914C8, &unk_232417F50);
        goto LABEL_72;
      }

      if (qword_2814C7F68 == -1)
      {
LABEL_35:
        v136 = sub_232401128();
        __swift_project_value_buffer(v136, qword_2814C8DC8);
        v137 = v54;
        v138 = sub_232401108();
        v139 = sub_232401368();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = OUTLINED_FUNCTION_97();
          v141 = OUTLINED_FUNCTION_26_0();
          v211[0] = v141;
          *v140 = 136315138;
          v142 = [v137 uniqueId];
          sub_232401178();
          OUTLINED_FUNCTION_30_1();

          v143 = OUTLINED_FUNCTION_23_1();

          *(v140 + 4) = v143;
          OUTLINED_FUNCTION_15_0(&dword_23224A000, v144, v145, "Consumer: ignoring item with no content with id %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v141);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_7_2();
        }

        v131 = [objc_opt_self() ignored];
        goto LABEL_38;
      }

LABEL_77:
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
      goto LABEL_35;
    }
  }

LABEL_15:
  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2814C7F68);
  }

  v99 = sub_232401128();
  OUTLINED_FUNCTION_31_1(v99, qword_2814C8DC8);
  v100 = v34;
  v101 = sub_232401108();
  v102 = sub_232401368();

  if (!os_log_type_enabled(v101, v102))
  {
    goto LABEL_31;
  }

  swift_slowAlloc();
  v21 = OUTLINED_FUNCTION_34_1();
  v211[0] = v21;
  *v20 = 136315394;
  v103 = [v100 uniqueId];
  sub_232401178();
  OUTLINED_FUNCTION_30_1();

  OUTLINED_FUNCTION_23_1();

  OUTLINED_FUNCTION_25_1();
  v54 = v100;
  sub_232253174();
  sub_2324011C8();
  OUTLINED_FUNCTION_40_1();

  if ((v100 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  if (HIDWORD(v100))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v104 = 0xEC00000044492065;
  v105 = sub_23227BE3C(v100);
  if (!v106)
  {
LABEL_29:
    v129 = 0x6C646E7542206F4ELL;
    goto LABEL_30;
  }

  v107 = v106;
  v205 = v105;
  v108 = [v100 respondsToSelector_];
  LODWORD(v207) = v102;
  v206 = v21;
  if ((v108 & 1) != 0 && (v109 = [v100 domainId]) != 0)
  {
    v110 = v109;
    ObjectType = sub_232401178();
    v203 = v111;
  }

  else
  {
    ObjectType = 0;
    v203 = 0;
  }

  v112 = OUTLINED_FUNCTION_6_2(objc_allocWithZone(MEMORY[0x277D3A4E0]), sel_initWithDwellTimeSeconds_lengthSeconds_lengthCharacters_donationCount_contactHandleCount_flags_);
  v113 = [v100 uniqueId];
  v114 = sub_232401178();
  v116 = v115;

  [v100 v52[249]];
  v117 = v209;
  sub_232400C28();
  v118 = v210;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v208);
  v122 = sub_2322535EC();
  v124 = v123;
  v125 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
  sub_232253BEC(v205, v107, ObjectType, v203, v114, v116, v117, v118, 0, v122, v124, v112, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, ObjectType, v205, v206, v207);
  if (!v126)
  {
    LOBYTE(v102) = v207;
    v104 = 0xEC00000044492065;
    goto LABEL_29;
  }

  v127 = v126;
  v128 = [v126 bundleId];

  v129 = sub_232401178();
  v104 = v130;

  LOBYTE(v102) = v207;
LABEL_30:
  sub_23224ED04(v129, v104, v211);
  OUTLINED_FUNCTION_40_1();

  *(v20 + 14) = v129;
  OUTLINED_FUNCTION_35_0(&dword_23224A000, v132, v102, "Consumer: ignoring ineligible item %s from %s.");
  swift_arrayDestroy();
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_7_2();
LABEL_31:

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v135 = v133;
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x238382770);
}

id OUTLINED_FUNCTION_6_2(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_232252D0C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_232252D78(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_232252E64(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_232252E40(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_232401518();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_232252E64(uint64_t a1, char a2)
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

  sub_232401518();
LABEL_9:
  result = sub_232401458();
  *v2 = result;
  return result;
}

uint64_t sub_232252F04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232401518();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232252E38(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_23227C650(&qword_2814C7810, &qword_27DD915A8, &qword_232418218);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD915A8, &qword_232418218);
          v9 = sub_23227BDB4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232253088(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_232401178();
    OUTLINED_FUNCTION_3_4();
  }

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232253174()
{
  v1 = [v0 interaction];
  v2 = [v1 intent];

  v3 = sub_232253088(v2, &selRef_intentDescription);
  return OUTLINED_FUNCTION_2_4(v3, v4);
}

void OUTLINED_FUNCTION_10_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL isNontrivialString(void *a1)
{
  v1 = a1;
  v2 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] != 0;

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2322533B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id OUTLINED_FUNCTION_1_1(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232400D68();
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x238382770);
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_23225356C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return swift_once();
}

BOOL sub_23225375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2324015D8();
  sub_2324011B8();
  v6 = sub_232401608();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_232401528();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x2383841F0);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t result)
{
  if (!result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2322538EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[3] = a4;
  v39[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  sub_2322533B0(v39, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91528, &unk_232418180);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
  if (OUTLINED_FUNCTION_1_9(v9, v10, v11, v12, v13, v14, v15, v16, v32))
  {
    sub_23225356C(&v32, v36);
    v17 = v37;
    v18 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v19 = (*(v18 + 16))(v17, v18);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_232278CE8(&v32, &unk_27DD91530, &unk_232418190);
    sub_2322533B0(v39, v35);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
    if ((OUTLINED_FUNCTION_1_9(v20, v21, v22, v23, v24, v25, v26, v27, v32) & 1) == 0)
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_232278CE8(&v32, &qword_27DD914E8, &qword_2324181A0);
      v30 = 0;
      goto LABEL_7;
    }

    sub_23225356C(&v32, v36);
    v28 = v37;
    v29 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v19 = (*(v29 + 16))(a2, v28, v29);
  }

  v30 = v19;
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  return v30;
}

unint64_t sub_232253ABC()
{
  result = qword_2814C7758;
  if (!qword_2814C7758)
  {
    sub_232252D0C(255, &unk_2814C7760, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C7758);
  }

  return result;
}

void OUTLINED_FUNCTION_42(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_0@<X0>(uint64_t a1@<X8>)
{
  v1[39] = a1;
  v1[40] = v2;
  v1[41] = 0;
}

BOOL OUTLINED_FUNCTION_37_1()
{

  return os_log_type_enabled(v0, v1);
}

void sub_232253BEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  OUTLINED_FUNCTION_81();
  v45 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_232401168();

  if (v34)
  {
    v36 = sub_232401168();
  }

  else
  {
    v36 = 0;
  }

  v37 = sub_232401168();

  v38 = sub_232400C68();
  v39 = sub_232400C98();
  v40 = 0;
  if (__swift_getEnumTagSinglePayload(v30, 1, v39) != 1)
  {
    v40 = sub_232400C68();
    OUTLINED_FUNCTION_29();
    (*(v41 + 8))(v30, v39);
  }

  if (a25)
  {
    v42 = sub_232401248();
  }

  else
  {
    v42 = 0;
  }

  if (a27)
  {
    v43 = sub_232401168();
  }

  else
  {
    v43 = 0;
  }

  [v45 initWithBundleId:v35 groupId:v36 documentId:v37 date:v38 relevanceDate:v40 contactHandles:v42 language:? metadata:?];

  OUTLINED_FUNCTION_29();
  (*(v44 + 8))(v32, v39);
  OUTLINED_FUNCTION_82();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

void sub_232254020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

PPAugmentedGazetteer *___makeDefaultGazetteer_block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

void sub_232254E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23225524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PPRankableSocialHighlightReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v85) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v85 & 0x7F) << v6;
      if ((v85 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_128;
      case 3u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 256) |= 0x40u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v85 & 0x7F) << v44;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_140;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_140:
        v75 = 168;
        goto LABEL_147;
      case 4u:
        *(a1 + 256) |= 0x10u;
        v85 = 0;
        v42 = [a2 position] + 8;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 40;
        goto LABEL_163;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_128;
      case 6u:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addApplicationIdentifiers:v33];
        }

        goto LABEL_65;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_128;
      case 8u:
        v33 = objc_alloc_init(PPSocialHighlightContact);
        objc_storeStrong((a1 + 224), v33);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !PPSocialHighlightContactReadFrom(v33, a2))
        {
          goto LABEL_166;
        }

        goto LABEL_64;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_128;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_128;
      case 0xBu:
        v33 = objc_alloc_init(PPSocialHighlightFeature);
        [a1 addCalculatedFeatures:v33];
        v85 = 0;
        v86 = 0;
        if (PBReaderPlaceMark() && PPSocialHighlightFeatureReadFrom(v33, a2))
        {
LABEL_64:
          PBReaderRecallMark();
LABEL_65:

LABEL_164:
          v4 = a2;
          continue;
        }

LABEL_166:

        return 0;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_128;
      case 0xDu:
        *(a1 + 256) |= 1u;
        v85 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v79 = [a2 data];
          [v79 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 8;
        goto LABEL_163;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_128;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_128;
      case 0x11u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 256) |= 0x800u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v85 & 0x7F) << v36;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_136;
          }
        }

        v22 = (v38 != 0) & ~[a2 hasError];
LABEL_136:
        v74 = 251;
        goto LABEL_150;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_128;
      case 0x13u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 256) |= 0x80u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v85 & 0x7F) << v59;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_146;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v61;
        }

LABEL_146:
        v75 = 200;
LABEL_147:
        *(a1 + v75) = v50;
        goto LABEL_164;
      case 0x14u:
        *(a1 + 256) |= 8u;
        v85 = 0;
        v51 = [a2 position] + 8;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 32;
        goto LABEL_163;
      case 0x15u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 256) |= 0x400u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v85 & 0x7F) << v16;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_132;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_132:
        v74 = 250;
        goto LABEL_150;
      case 0x16u:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_128;
      case 0x17u:
        *(a1 + 256) |= 4u;
        v85 = 0;
        v65 = [a2 position] + 8;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 24;
        goto LABEL_163;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_128;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_128;
      case 0x1Au:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 256) |= 0x1000u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v85 & 0x7F) << v25;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_134;
          }
        }

        v22 = (v27 != 0) & ~[a2 hasError];
LABEL_134:
        v74 = 252;
        goto LABEL_150;
      case 0x1Bu:
        *(a1 + 256) |= 0x20u;
        v85 = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 48;
        goto LABEL_163;
      case 0x1Cu:
        *(a1 + 256) |= 2u;
        v85 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 16;
LABEL_163:
        *(a1 + v78) = v77;
        goto LABEL_164;
      case 0x1Du:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 256) |= 0x200u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v85 & 0x7F) << v67;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_149;
          }
        }

        v22 = (v69 != 0) & ~[a2 hasError];
LABEL_149:
        v74 = 249;
        goto LABEL_150;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_128;
      case 0x1Fu:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_128;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_128;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_128;
      case 0x22u:
        v14 = PBReaderReadData();
        v15 = 176;
        goto LABEL_128;
      case 0x23u:
        v14 = PBReaderReadData();
        v15 = 184;
        goto LABEL_128;
      case 0x24u:
        v14 = PBReaderReadData();
        v15 = 152;
LABEL_128:
        v73 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_164;
      case 0x25u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 256) |= 0x100u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v85 & 0x7F) << v53;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_142;
          }
        }

        v22 = (v55 != 0) & ~[a2 hasError];
LABEL_142:
        v74 = 248;
LABEL_150:
        *(a1 + v74) = v22;
        goto LABEL_164;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_164;
    }
  }
}

uint64_t PPSocialHighlightContactReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 5)
      {
        break;
      }

      if (v13 != 4)
      {
        if (v13 != 2)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_44;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 17;
        goto LABEL_45;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;

LABEL_46:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        LOBYTE(v20) = 0;
        goto LABEL_42;
      }
    }

    v20 = (v25 != 0) & ~[a2 hasError];
LABEL_42:
    v30 = 16;
LABEL_45:
    *(a1 + v30) = v20;
    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_25_0()
{
}

id sub_232256EB8(void *a1)
{
  v1 = [a1 content];
  v2 = [v1 bundleId];
  v3 = sub_232401178();
  v5 = v4;

  v6 = sub_232401178();
  if (v3 == v6 && v5 == v7)
  {

    goto LABEL_17;
  }

  v9 = OUTLINED_FUNCTION_13_0(v6);

  if (v9)
  {
LABEL_17:
    v29 = sub_232279AE0(v1);
    goto LABEL_18;
  }

  v10 = [v1 bundleId];
  v11 = sub_232401178();
  v13 = v12;

  v14 = sub_232401178();
  if (v11 == v14 && v13 == v15)
  {

    goto LABEL_20;
  }

  v17 = OUTLINED_FUNCTION_13_0(v14);

  if (v17)
  {
LABEL_20:
    sub_23227A83C(v1);
    goto LABEL_18;
  }

  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2814C7F68);
  }

  v18 = sub_232401128();
  __swift_project_value_buffer(v18, qword_2814C8DC8);
  v19 = v1;
  v20 = sub_232401108();
  v21 = sub_232401368();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_26_0();
    v32 = v23;
    *v22 = 136315138;
    v24 = [v19 bundleId];
    v25 = sub_232401178();
    v27 = v26;

    v28 = sub_23224ED04(v25, v27, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_23224A000, v20, v21, "StructuredConsumer: ignoring interaction from non-structured source %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  v29 = [objc_opt_self() ignored];
LABEL_18:
  v30 = v29;

  return v30;
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x2383841F0);
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x238382770);
}

void OUTLINED_FUNCTION_11_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x2383841F0);
}

uint64_t PPSocialHighlightFeatureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PPKeysToFetchPeople()
{
  if (PPKeysToFetchPeople__pasOnceToken16 != -1)
  {
    dispatch_once(&PPKeysToFetchPeople__pasOnceToken16, &__block_literal_global_28);
  }

  v1 = PPKeysToFetchPeople__pasExprOnceResult;

  return v1;
}

void sub_23225764C(char **a1, void *a2, id a3, unint64_t a4)
{
  v6 = v4;
  v10 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v68 = sub_232252E38(a1);
  if (!v68)
  {
    v20 = objc_opt_self();
    sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
    v21 = sub_232401398();
    v22 = [v20 successWithNumberOfExtractions_];
LABEL_51:
    v22;

    return;
  }

  v11 = *(v6 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_writebackDissector);
  if (!v11)
  {
    v67 = v10 & 0xC000000000000001;
LABEL_16:
    a4 = 0;
    v66 = (v10 & 0xFFFFFFFFFFFFFF8);
    while (v68 != a4)
    {
      if (v67)
      {
        v27 = MEMORY[0x2383829D0](a4, v10);
      }

      else
      {
        if (a4 >= v66[2])
        {
          goto LABEL_53;
        }

        v27 = *(v10 + 8 * a4 + 32);
      }

      a3 = v27;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v63 = v11;
        v14 = MEMORY[0x2383829D0](0, v10);
        goto LABEL_5;
      }

      v28 = sub_23224F160();
      v29 = sub_23224FDAC();
      v11 = v10;
      v30 = sub_23224FDC0();
      sub_232259674(v28, v29, v30);

      v10 = v11;
      ++a4;
      if (v5)
      {
        return;
      }
    }

    v31 = sub_23224F160();
    a4 = 0x1FAA7C000;
    if (v31)
    {
      a3 = OUTLINED_FUNCTION_3_7(v31, v32, v33, v34, v35, v36, v37, v38, v64, v65, v66, v67, v68, aBlock[0]);

      v39 = aBlock[0];
      if (!a3)
      {
        goto LABEL_49;
      }

      v40 = aBlock[0];
    }

    v41 = v6;
    v42 = sub_23224FDAC();
    if (!v42)
    {
      goto LABEL_31;
    }

    v50 = OUTLINED_FUNCTION_3_7(v42, v43, v44, v45, v46, v47, v48, v49, v64, v65, v66, v67, v68, aBlock[0]);

    v39 = aBlock[0];
    if (v50)
    {
      v51 = aBlock[0];
LABEL_31:
      v6 = 0;
      v52 = 0;
      v11 = &selRef_trialWrapperReloadingIfNeeded;
      while (v68 != v6)
      {
        if (v67)
        {
          v53 = MEMORY[0x2383829D0](v6, v10);
        }

        else
        {
          if (v6 >= v66[2])
          {
            goto LABEL_55;
          }

          v53 = *(v10 + 8 * v6 + 32);
        }

        a4 = v53;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_54;
        }

        v54 = [v53 numberOfExtractions];
        if (v54)
        {
          v55 = v54;
          a3 = [v54 unsignedIntegerValue];
        }

        else
        {
          a3 = 0;
        }

        ++v6;
        v56 = __CFADD__(v52, a3);
        v52 += a3;
        if (v56)
        {
          goto LABEL_56;
        }
      }

      v62 = objc_opt_self();
      v21 = sub_2324013C8();
      v22 = [v62 successWithNumberOfExtractions_];
      goto LABEL_51;
    }

LABEL_49:
    v61 = v39;
    sub_232400C18();

    swift_willThrow();
    return;
  }

  v64 = a2;
  sub_23227C6FC(0, (v10 & 0xC000000000000001) == 0, v10);
  v66 = v11;
  v67 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

  v12 = *(v10 + 32);
  v13 = v11;
  v14 = v12;
LABEL_5:
  v15 = v14;
  v16 = [v14 source];

  v17 = [v16 bundleId];
  if (!v17)
  {
    sub_232401178();
    v17 = sub_232401168();
  }

  sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
  v18 = sub_232401248();
  v65 = a4;
  if (v67)
  {
    v19 = MEMORY[0x2383829D0](0, v10);
  }

  else
  {
    v19 = *(v10 + 32);
  }

  v23 = v19;
  v24 = [v19 source];

  v25 = [v24 documentId];
  if (!v25)
  {
    sub_232401178();
    v25 = sub_232401168();
  }

  aBlock[4] = v64;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2322782FC;
  aBlock[3] = &block_descriptor_27;
  v26 = _Block_copy(aBlock);

  v11 = v66;
  a3 = [v66 consumeContentFromBundleId:v17 extractions:v18 spotlightIdentifier:v25 fileProtectionType:v65 shouldContinueBlock:v26];
  _Block_release(v26);

  if (a3)
  {

    goto LABEL_16;
  }

  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v57 = sub_232401128();
  __swift_project_value_buffer(v57, qword_2814C8DC8);
  v58 = sub_232401108();
  v59 = sub_232401328();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_23224A000, v58, v59, "Deferred donation due to interruption in writeback.", v60, 2u);
    MEMORY[0x2383841F0](v60, -1, -1);
  }

  [objc_opt_self() interrupted];
}

uint64_t sub_232257C68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_69_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_232258160(uint64_t a2@<X8>)
{
  sub_232258194();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2322581CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232258208()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232258254()
{
  OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232258428()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232258464()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23225849C()
{

  OUTLINED_FUNCTION_84_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2322584D0()
{

  OUTLINED_FUNCTION_84_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232258544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_232258598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2322585F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232271B08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_232258678()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2322586C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_232258710(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
    JUMPOUT(0x232258734);
  }

  return result;
}

id sub_232258888()
{
  type metadata accessor for RealTimeTextConsumer();
  result = sub_2322588AC();
  qword_2814C8DB8 = result;
  return result;
}

id sub_2322588AC()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = objc_allocWithZone(type metadata accessor for RealTimeTextConsumer());
  return sub_232258954(v0, v1, v2);
}

id sub_232258954(void *a1, void *a2, void *a3)
{
  v6 = sub_232400D88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v45 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v43[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v43[-v12];
  v14 = objc_allocWithZone(PPSpotlightWritebackDissector);
  v49 = a3;
  v48 = a1;
  v47 = a2;
  v15 = [v14 init];
  v16 = [objc_opt_self() sharedInstance];
  v17 = [objc_opt_self() sharedInstance];
  v18 = sub_2322780EC(a1, a2, a3, v15, v16, v17);
  v19 = *(v7 + 104);
  v44 = *MEMORY[0x277D3A208];
  v19(v13);
  sub_232259464(&qword_2814C7FA0, MEMORY[0x277D3A228], MEMORY[0x277D3A220]);
  OUTLINED_FUNCTION_2();
  v20 = sub_232400DA8();
  v21 = *(v7 + 8);
  (v21)(v13, v6);
  v22 = &selRef_activityType;
  if (v20 & 1) != 0 && ((v19)(v46, *MEMORY[0x277D3A218], v6), OUTLINED_FUNCTION_2(), sub_232400DA8(), v23 = OUTLINED_FUNCTION_1(), v21(v23), (v13))
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v24 = sub_232401128();
    __swift_project_value_buffer(v24, qword_2814C8DC8);
    v25 = sub_232401108();
    v26 = sub_232401368();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      OUTLINED_FUNCTION_3(&dword_23224A000, v28, v29, "RealTimeTextConsumer: TextUnderstanding flags enabled, not registering for Messages, Reminders, or Safari.");
      v30 = v27;
      v22 = &selRef_activityType;
      MEMORY[0x2383841F0](v30, -1, -1);
    }
  }

  else
  {
    v31 = objc_opt_self();
    v32 = [v31 defaultCoordinator];
    OUTLINED_FUNCTION_4(v32, sel_registerMessagesConsumer_levelOfService_);

    v33 = [v31 defaultCoordinator];
    OUTLINED_FUNCTION_4(v33, sel_registerSafariConsumer_levelOfService_);

    v25 = [v31 defaultCoordinator];
    OUTLINED_FUNCTION_4(v25, sel_registerRemindersConsumer_levelOfService_);
  }

  (v19)(v45, v44, v6);
  OUTLINED_FUNCTION_2();
  sub_232400DA8();
  v34 = OUTLINED_FUNCTION_1();
  v21(v34);
  if (v25)
  {
    (v19)(v46, *MEMORY[0x277D3A210], v6);
    OUTLINED_FUNCTION_2();
    sub_232400DA8();
    v35 = OUTLINED_FUNCTION_1();
    v21(v35);
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v36 = sub_232401128();
    __swift_project_value_buffer(v36, qword_2814C8DC8);
    v37 = sub_232401108();
    v38 = sub_232401368();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      OUTLINED_FUNCTION_3(&dword_23224A000, v40, v41, "RealTimeTextConsumer: TextUnderstanding flags enabled, not registering for interactions.");
      MEMORY[0x2383841F0](v39, -1, -1);
    }
  }

  else
  {
    v37 = [objc_opt_self() v22[426]];
    OUTLINED_FUNCTION_4(v37, sel_registerInteractionConsumer_levelOfService_);
  }

  return v18;
}

uint64_t sub_232258F18(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = [a1 content];
  *(swift_allocObject() + 16) = a1;
  v7 = [a1 contentProtection];
  v8 = v6;
  v9 = a4();

  return v9;
}

id sub_2322590E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RealTimeTextConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232259178(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2322591D4(uint64_t a1)
{
  sub_2324015D8();
  MEMORY[0x238382B70](a1);
  return sub_232401608();
}

uint64_t sub_23225921C(uint64_t a1)
{
  sub_2324015D8();
  sub_2324015F8();
  return sub_232401608();
}

uint64_t sub_23225928C(uint64_t a1, uint64_t a2)
{
  sub_2324015D8();
  sub_2324015F8();
  return sub_232401608();
}

uint64_t sub_2322592D0(uint64_t a1, uint64_t a2)
{
  sub_2324015D8();
  MEMORY[0x238382B70](a2);
  return sub_232401608();
}

uint64_t sub_232259374@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2322591C4(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_232259464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id OUTLINED_FUNCTION_4(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_23225952C()
{
  v0 = sub_232401128();
  __swift_allocate_value_buffer(v0, qword_2814C8DC8);
  __swift_project_value_buffer(v0, qword_2814C8DC8);
  return sub_232401118();
}

uint64_t sub_2322595D0()
{
  sub_2324015D8();
  MEMORY[0x238382B70](0);
  return sub_232401608();
}

uint64_t sub_232259624(uint64_t a1)
{
  sub_2324015D8();
  MEMORY[0x238382B70](0);
  return sub_232401608();
}

void sub_232259674(void *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = [v3 topics];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
  v7 = sub_232401268();

  sub_232252E38(v7);
  OUTLINED_FUNCTION_0_0();
  if (v6 && a1)
  {
    v8 = [v3 topics];
    if (!v8)
    {
      sub_232401268();
      sub_232401248();
      OUTLINED_FUNCTION_0_0();
    }

    v9 = [v3 source];
    v10 = [v3 topicAlgorithm];
    v44 = [v3 cloudSync];
    [v3 sentimentScore];
    v12 = v11;
    v13 = [v3 topicsExactMatchesInSourceText];
    if (v13)
    {
      *&v49[0] = 0;
      sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
      sub_232401258();

      v13 = 0;
    }

    *&v49[0] = 0;
    v14 = [a1 donateTopics:v8 source:v9 algorithm:v10 cloudSync:v44 sentimentScore:v13 exactMatchesInSourceText:v49 error:v12];

    v15 = *&v49[0];
    if (!v14)
    {
      goto LABEL_30;
    }

    v16 = *&v49[0];
  }

  v17 = [v3 entities];
  v18 = sub_232401268();

  sub_232252E38(v18);
  OUTLINED_FUNCTION_0_0();
  if (v17 && a2)
  {
    v19 = [v3 entities];
    if (!v19)
    {
      sub_232401268();
      sub_232401248();
      OUTLINED_FUNCTION_0_0();
    }

    v20 = [v3 source];
    v21 = [v3 entityAlgorithm];
    v22 = [v3 cloudSync];
    [v3 sentimentScore];
    *&v49[0] = 0;
    LODWORD(v21) = [a2 donateNamedEntities:v19 source:v20 algorithm:v21 cloudSync:v22 sentimentScore:v49 error:?];

    v15 = *&v49[0];
    if (v21)
    {
      v23 = *&v49[0];
      goto LABEL_15;
    }

LABEL_30:
    v41 = v15;
    sub_232400C18();

LABEL_36:
    swift_willThrow();
    return;
  }

LABEL_15:
  v24 = &selRef_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_highlights_;
  v25 = [v3 locations];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [v3 locations];
    v28 = [v27 allKeys];

    v29 = sub_232401268();
    v30 = 0;
    v31 = v29 + 32;
    v43 = *(v29 + 16);
    v45 = v29;
    while (1)
    {
      if (v43 == v30)
      {

        return;
      }

      if (v30 >= *(v45 + 16))
      {
        __break(1u);
      }

      sub_23224EDEC(v31, v49);
      sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      v32 = [v3 v24[352]];
      v33 = v47;
      v34 = [v32 objectForKeyedSubscript_];

      if (v34)
      {
        sub_2324013D8();
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      v49[0] = v47;
      v49[1] = v48;
      if (!*(&v48 + 1))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91220, &qword_2324174E0);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

LABEL_35:
        sub_232259D5C();
        swift_allocError();
        goto LABEL_36;
      }

      v35 = [v33 unsignedShortValue];
      if (a3)
      {
        v36 = v35;
        sub_232252D0C(0, &qword_2814C77F0, 0x277D3A4A8);
        v37 = sub_232401248();

        v38 = [v3 source];
        v39 = [v3 cloudSync];
        *&v49[0] = 0;
        LODWORD(v36) = [a3 donateLocations:v37 source:v38 contextualNamedEntities:0 algorithm:v36 cloudSync:v39 error:v49];

        if (!v36)
        {
          v42 = *&v49[0];

          sub_232400C18();

          swift_willThrow();
          return;
        }

        v40 = *&v49[0];
      }

      else
      {
      }

      v31 += 32;
      ++v30;
      v24 = &selRef_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_highlights_;
    }

    sub_232259DB0(v49);
    goto LABEL_35;
  }
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

unint64_t sub_232259D5C()
{
  result = qword_27DD91210;
  if (!qword_27DD91210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD91210);
  }

  return result;
}

uint64_t sub_232259DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91218, &qword_2324174D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t getEnumTagSinglePayload for HarvestingError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for HarvestingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_232259F8C()
{
  result = qword_27DD91228;
  if (!qword_27DD91228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD91228);
  }

  return result;
}

uint64_t sub_232259FE4(uint64_t a1)
{
  result = sub_232401128();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_23225A0D4()
{
  v1 = *v0;

  v2 = qword_2814C8D90;
  v3 = sub_232401128();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 152));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23225A1C0()
{
  sub_23225A0D4();

  return MEMORY[0x282200960](v0);
}

void *sub_23225A210()
{
  OUTLINED_FUNCTION_71();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  sub_232401118();
  v2 = *(*v1 + 160);
  *(v1 + v2) = 0;
  *(v1 + *(*v1 + 152)) = v0;
  *(v1 + v2) = 0;
  return v1;
}

uint64_t sub_23225A2C0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + qword_2814C8D90, v8);
  v12 = sub_232401108();
  v13 = sub_232401338();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = a3;
    v49[0] = v46;
    *v14 = 136315138;
    sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
    v15 = sub_232401628();
    v17 = sub_23224ED04(v15, v16, v49);
    v45 = v8;
    v18 = v4;
    v19 = a1;
    v20 = v17;

    *(v14 + 4) = v20;
    a1 = v19;
    v4 = v18;
    _os_log_impl(&dword_23224A000, v12, v13, "TextUnderstandingBuffer<%s>: adding", v14, 0xCu);
    v21 = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    a3 = v47;
    MEMORY[0x2383841F0](v21, -1, -1);
    MEMORY[0x2383841F0](v14, -1, -1);

    (*(v9 + 8))(v11, v45);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v4 + 112);
  v22 = v48;
  *(v4 + 112) = 0x8000000000000000;
  v23 = sub_2322737E4(a2);
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912B8, &qword_232417890);
  v27 = sub_2324014F8();
  v28 = v48;
  if (v27)
  {
    v29 = sub_2322737E4(a2);
    if ((v26 & 1) != (v30 & 1))
    {
LABEL_19:
      sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
      goto LABEL_21;
    }

    v25 = v29;
  }

  *(v4 + 112) = v28;
  if ((v26 & 1) == 0)
  {
    sub_2322636B0(v25, a2, MEMORY[0x277D84F98], v28);
    v31 = a2;
  }

  v32 = *(v28 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v32 + 8 * v25);
  v33 = v48;
  *(v32 + 8 * v25) = 0x8000000000000000;
  v34 = sub_2322770B8();
  if (__OFADD__(*(v33 + 16), (v35 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v34;
  v37 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912C0, &qword_232417898);
  v38 = sub_2324014F8();
  v39 = v48;
  if (v38)
  {
    v40 = sub_2322770B8();
    if ((v37 & 1) == (v41 & 1))
    {
      v36 = v40;
      goto LABEL_14;
    }

    type metadata accessor for PPNamedEntityAlgorithm(0);
LABEL_21:
    result = sub_232401548();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v32 + 8 * v25) = v39;

  if ((v37 & 1) == 0)
  {
    sub_2322636B0(v36, a3, MEMORY[0x277D84F90], *(v32 + 8 * v25));
  }

  v42 = a1;
  MEMORY[0x2383827C0]();
  sub_23226E3F4();
  sub_232401288();
  swift_endAccess();
  return sub_23225C57C();
}

uint64_t sub_23225A6DC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + qword_2814C8D90, v8);
  v12 = sub_232401108();
  v13 = sub_232401338();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = a3;
    v49[0] = v46;
    *v14 = 136315138;
    sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
    v15 = sub_232401628();
    v17 = sub_23224ED04(v15, v16, v49);
    v45 = v8;
    v18 = v4;
    v19 = a1;
    v20 = v17;

    *(v14 + 4) = v20;
    a1 = v19;
    v4 = v18;
    _os_log_impl(&dword_23224A000, v12, v13, "TextUnderstandingBuffer<%s>: adding", v14, 0xCu);
    v21 = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    a3 = v47;
    MEMORY[0x2383841F0](v21, -1, -1);
    MEMORY[0x2383841F0](v14, -1, -1);

    (*(v9 + 8))(v11, v45);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v4 + 112);
  v22 = v48;
  *(v4 + 112) = 0x8000000000000000;
  v23 = sub_2322737E4(a2);
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912A0, &qword_232417868);
  v27 = sub_2324014F8();
  v28 = v48;
  if (v27)
  {
    v29 = sub_2322737E4(a2);
    if ((v26 & 1) != (v30 & 1))
    {
LABEL_19:
      sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
      goto LABEL_21;
    }

    v25 = v29;
  }

  *(v4 + 112) = v28;
  if ((v26 & 1) == 0)
  {
    sub_2322636B0(v25, a2, MEMORY[0x277D84F98], v28);
    v31 = a2;
  }

  v32 = *(v28 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v32 + 8 * v25);
  v33 = v48;
  *(v32 + 8 * v25) = 0x8000000000000000;
  v34 = sub_2322770B8();
  if (__OFADD__(*(v33 + 16), (v35 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v34;
  v37 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912A8, &qword_232417870);
  v38 = sub_2324014F8();
  v39 = v48;
  if (v38)
  {
    v40 = sub_2322770B8();
    if ((v37 & 1) == (v41 & 1))
    {
      v36 = v40;
      goto LABEL_14;
    }

    type metadata accessor for PPTopicAlgorithm(0);
LABEL_21:
    result = sub_232401548();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v32 + 8 * v25) = v39;

  if ((v37 & 1) == 0)
  {
    sub_2322636B0(v36, a3, MEMORY[0x277D84F90], *(v32 + 8 * v25));
  }

  v42 = a1;
  MEMORY[0x2383827C0]();
  sub_23226E3F4();
  sub_232401288();
  swift_endAccess();
  return sub_23225C8A4();
}

uint64_t sub_23225AAF8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + qword_2814C8D90, v8);
  v12 = sub_232401108();
  v13 = sub_232401338();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48 = a3;
    v47 = v15;
    v50[0] = v15;
    *v14 = 136315138;
    sub_232252D0C(0, &qword_2814C7798, off_27896F998);
    v16 = sub_232401628();
    v18 = sub_23224ED04(v16, v17, v50);
    v46 = v8;
    v19 = v4;
    v20 = a1;
    v21 = v18;

    *(v14 + 4) = v21;
    a1 = v20;
    v4 = v19;
    _os_log_impl(&dword_23224A000, v12, v13, "TextUnderstandingBuffer<%s>: adding", v14, 0xCu);
    v22 = v47;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    a3 = v48;
    MEMORY[0x2383841F0](v22, -1, -1);
    MEMORY[0x2383841F0](v14, -1, -1);

    (*(v9 + 8))(v11, v46);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v4 + 112);
  v23 = v49;
  *(v4 + 112) = 0x8000000000000000;
  v24 = sub_2322737E4(a2);
  if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v26 = v24;
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91270, &qword_232417820);
  v28 = sub_2324014F8();
  v29 = v49;
  if (v28)
  {
    v30 = sub_2322737E4(a2);
    if ((v27 & 1) != (v31 & 1))
    {
LABEL_19:
      sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
      goto LABEL_21;
    }

    v26 = v30;
  }

  *(v4 + 112) = v29;
  if ((v27 & 1) == 0)
  {
    sub_2322636B0(v26, a2, MEMORY[0x277D84F98], v29);
    v32 = a2;
  }

  v33 = *(v29 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v33 + 8 * v26);
  v34 = v49;
  *(v33 + 8 * v26) = 0x8000000000000000;
  v35 = sub_232273904(a3);
  if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = v35;
  v38 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91278, &qword_232417828);
  v39 = sub_2324014F8();
  v40 = v49;
  if (v39)
  {
    v41 = sub_232273904(a3);
    if ((v38 & 1) == (v42 & 1))
    {
      v37 = v41;
      goto LABEL_14;
    }

    type metadata accessor for PPLocationAlgorithm(0);
LABEL_21:
    result = sub_232401548();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v33 + 8 * v26) = v40;

  if ((v38 & 1) == 0)
  {
    sub_2322636D4(v37, a3, MEMORY[0x277D84F90], *(v33 + 8 * v26));
  }

  v43 = a1;
  MEMORY[0x2383827C0]();
  sub_23226E3F4();
  sub_232401288();
  swift_endAccess();
  return sub_23225CBCC();
}

uint64_t sub_23225AF18()
{
  v2 = v1;
  v3 = sub_232401128();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v74 = v0;
  v7(v6, v0 + qword_2814C8D90, v3);
  v8 = sub_232401108();
  v9 = sub_232401338();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v79 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v80[0] = v12;
    *v11 = 136315138;
    sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
    v13 = sub_232401628();
    v15 = sub_23224ED04(v13, v14, v80);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23224A000, v8, v9, "TextUnderstandingBuffer<%s>: flushing", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2383841F0](v12, -1, -1);
    MEMORY[0x2383841F0](v11, -1, -1);

    (*(v4 + 8))(v6, v79);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v16 = v74;
  swift_beginAccess();
  v17 = v16[14];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v72 = *(*v16 + 152);
  v22 = (v19 + 63) >> 6;
  v66 = v17;

  v24 = 0;
  v65 = v18;
  v64 = v22;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v67 = v25;
      v26 = (v25 << 9) | (8 * __clz(__rbit64(v21)));
      v27 = *(*(v66 + 48) + v26);
      v28 = *(*(v66 + 56) + v26);
      v68 = (v21 - 1) & v21;
      v29 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = v30 < 64 ? ~(-1 << v30) : -1;
      v32 = v31 & *(v28 + 64);
      v33 = (v30 + 63) >> 6;
      v34 = v27;

      v35 = 0;
      v70 = v28 + 64;
      v71 = v28;
      v75 = v34;
      v69 = v33;
      if (v32)
      {
        break;
      }

      while (1)
      {
LABEL_17:
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v36 >= v33)
        {
          break;
        }

        v32 = *(v29 + 8 * v36);
        ++v35;
        if (v32)
        {
          goto LABEL_20;
        }
      }

      v24 = v67;
      v21 = v68;
      v18 = v65;
      v22 = v64;
      if (!v68)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v36 = v35;
LABEL_20:
      v37 = v2;
      v38 = (v36 << 9) | (8 * __clz(__rbit64(v32)));
      v39 = *(*(v28 + 48) + v38);
      v40 = *(*(v28 + 56) + v38);
      v41 = *(v74 + v72);
      v77 = v39;
      v78 = v41;
      v42 = v40 >> 62 ? sub_232401518() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v76 = v32;
      if (v42)
      {
        v83 = MEMORY[0x277D84F90];
        v43 = v42 & ~(v42 >> 63);
        v79 = v42;

        v44 = v78;
        v45 = v40;
        result = sub_2322708F8(0, v43, 0);
        if (v79 < 0)
        {
          goto LABEL_44;
        }

        v73 = v37;
        v46 = 0;
        v47 = v83;
        v48 = v40;
        do
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x2383829D0](v46, v48);
          }

          else
          {
            v49 = *(v48 + 8 * v46 + 32);
          }

          v50 = v49;
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
          v81 = v51;
          v82 = &off_284754968;
          v80[0] = v50;
          v83 = v47;
          v53 = *(v47 + 16);
          v52 = *(v47 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2322708F8((v52 > 1), v53 + 1, 1);
            v54 = v81;
            v55 = v82;
          }

          else
          {
            v54 = v51;
            v55 = &off_284754968;
          }

          ++v46;
          v56 = __swift_mutable_project_boxed_opaque_existential_1(v80, v54);
          MEMORY[0x28223BE20](v56);
          v58 = &v63 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v59 + 16))(v58);
          sub_2322640F0(v53, v58, &v83, v54, v55);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          v47 = v83;
          v48 = v45;
        }

        while (v79 != v46);

        v2 = v73;
        v29 = v70;
        v28 = v71;
        v34 = v75;
        v33 = v69;
        v60 = v78;
      }

      else
      {
        v60 = v78;
        v61 = v78;
        v34 = v75;
      }

      type metadata accessor for PPNamedEntityAlgorithm(0);
      v81 = v62;
      v82 = sub_232264348(&qword_27DD912D0, type metadata accessor for PPNamedEntityAlgorithm, &unk_232417FC4);
      v80[0] = v77;
      sub_2322773F0();
      if (v2)
      {
        break;
      }

      v32 = (v76 - 1) & v76;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v80);
      v35 = v36;
      if (!v32)
      {
        goto LABEL_17;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v80);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return sub_23225C340(&qword_27DD912C8, off_27896F9A0);
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_23225B5D0()
{
  v2 = v1;
  v3 = sub_232401128();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v74 = v0;
  v7(v6, v0 + qword_2814C8D90, v3);
  v8 = sub_232401108();
  v9 = sub_232401338();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v79 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v80[0] = v12;
    *v11 = 136315138;
    sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
    v13 = sub_232401628();
    v15 = sub_23224ED04(v13, v14, v80);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23224A000, v8, v9, "TextUnderstandingBuffer<%s>: flushing", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2383841F0](v12, -1, -1);
    MEMORY[0x2383841F0](v11, -1, -1);

    (*(v4 + 8))(v6, v79);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v16 = v74;
  swift_beginAccess();
  v17 = v16[14];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v72 = *(*v16 + 152);
  v22 = (v19 + 63) >> 6;
  v66 = v17;

  v24 = 0;
  v65 = v18;
  v64 = v22;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v67 = v25;
      v26 = (v25 << 9) | (8 * __clz(__rbit64(v21)));
      v27 = *(*(v66 + 48) + v26);
      v28 = *(*(v66 + 56) + v26);
      v68 = (v21 - 1) & v21;
      v29 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = v30 < 64 ? ~(-1 << v30) : -1;
      v32 = v31 & *(v28 + 64);
      v33 = (v30 + 63) >> 6;
      v34 = v27;

      v35 = 0;
      v70 = v28 + 64;
      v71 = v28;
      v75 = v34;
      v69 = v33;
      if (v32)
      {
        break;
      }

      while (1)
      {
LABEL_17:
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v36 >= v33)
        {
          break;
        }

        v32 = *(v29 + 8 * v36);
        ++v35;
        if (v32)
        {
          goto LABEL_20;
        }
      }

      v24 = v67;
      v21 = v68;
      v18 = v65;
      v22 = v64;
      if (!v68)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v36 = v35;
LABEL_20:
      v37 = v2;
      v38 = (v36 << 9) | (8 * __clz(__rbit64(v32)));
      v39 = *(*(v28 + 48) + v38);
      v40 = *(*(v28 + 56) + v38);
      v41 = *(v74 + v72);
      v77 = v39;
      v78 = v41;
      v42 = v40 >> 62 ? sub_232401518() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v76 = v32;
      if (v42)
      {
        v83 = MEMORY[0x277D84F90];
        v43 = v42 & ~(v42 >> 63);
        v79 = v42;

        v44 = v78;
        v45 = v40;
        result = sub_2322708F8(0, v43, 0);
        if (v79 < 0)
        {
          goto LABEL_44;
        }

        v73 = v37;
        v46 = 0;
        v47 = v83;
        v48 = v40;
        do
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x2383829D0](v46, v48);
          }

          else
          {
            v49 = *(v48 + 8 * v46 + 32);
          }

          v50 = v49;
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
          v81 = v51;
          v82 = &off_284754968;
          v80[0] = v50;
          v83 = v47;
          v53 = *(v47 + 16);
          v52 = *(v47 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2322708F8((v52 > 1), v53 + 1, 1);
            v54 = v81;
            v55 = v82;
          }

          else
          {
            v54 = v51;
            v55 = &off_284754968;
          }

          ++v46;
          v56 = __swift_mutable_project_boxed_opaque_existential_1(v80, v54);
          MEMORY[0x28223BE20](v56);
          v58 = &v63 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v59 + 16))(v58);
          sub_2322640F0(v53, v58, &v83, v54, v55);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          v47 = v83;
          v48 = v45;
        }

        while (v79 != v46);

        v2 = v73;
        v29 = v70;
        v28 = v71;
        v34 = v75;
        v33 = v69;
        v60 = v78;
      }

      else
      {
        v60 = v78;
        v61 = v78;
        v34 = v75;
      }

      type metadata accessor for PPTopicAlgorithm(0);
      v81 = v62;
      v82 = sub_232264348(&qword_27DD912B0, type metadata accessor for PPTopicAlgorithm, &unk_232417FE0);
      v80[0] = v77;
      sub_2322777B0();
      if (v2)
      {
        break;
      }

      v32 = (v76 - 1) & v76;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v80);
      v35 = v36;
      if (!v32)
      {
        goto LABEL_17;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v80);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return sub_23225C340(&unk_2814C77C8, off_27896F9C8);
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_23225BC88()
{
  v2 = v1;
  v3 = sub_232401128();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v73 = v0;
  v7(v6, v0 + qword_2814C8D90, v3);
  v8 = sub_232401108();
  v9 = sub_232401338();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v78 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v79[0] = v12;
    *v11 = 136315138;
    sub_232252D0C(0, &qword_2814C7798, off_27896F998);
    v13 = sub_232401628();
    v15 = sub_23224ED04(v13, v14, v79);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23224A000, v8, v9, "TextUnderstandingBuffer<%s>: flushing", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2383841F0](v12, -1, -1);
    MEMORY[0x2383841F0](v11, -1, -1);

    (*(v4 + 8))(v6, v78);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v16 = v73;
  swift_beginAccess();
  v17 = v16[14];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v71 = *(*v16 + 152);
  v22 = (v19 + 63) >> 6;
  v65 = v17;

  v24 = 0;
  v64 = v18;
  v63 = v22;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v66 = v25;
      v26 = (v25 << 9) | (8 * __clz(__rbit64(v21)));
      v27 = *(*(v65 + 48) + v26);
      v28 = *(*(v65 + 56) + v26);
      v67 = (v21 - 1) & v21;
      v29 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = v30 < 64 ? ~(-1 << v30) : -1;
      v32 = v31 & *(v28 + 64);
      v33 = (v30 + 63) >> 6;
      v34 = v27;
      v74 = v28;

      v35 = 0;
      v69 = v34;
      v70 = v28 + 64;
      v68 = v33;
      if (v32)
      {
        break;
      }

      while (1)
      {
LABEL_17:
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v36 >= v33)
        {
          break;
        }

        v32 = *(v29 + 8 * v36);
        ++v35;
        if (v32)
        {
          goto LABEL_20;
        }
      }

      v24 = v66;
      v21 = v67;
      v18 = v64;
      v22 = v63;
      if (!v67)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v36 = v35;
LABEL_20:
      v37 = v2;
      v38 = __clz(__rbit64(v32)) | (v36 << 6);
      v39 = *(v74 + 56);
      v76 = *(*(v74 + 48) + 2 * v38);
      v40 = *(v39 + 8 * v38);
      v77 = *(v73 + v71);
      v41 = v40 >> 62 ? sub_232401518() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v75 = v32;
      if (v41)
      {
        v82 = MEMORY[0x277D84F90];
        v42 = v41 & ~(v41 >> 63);
        v78 = v41;

        v43 = v77;
        v44 = v40;
        result = sub_2322708F8(0, v42, 0);
        if (v78 < 0)
        {
          goto LABEL_44;
        }

        v72 = v37;
        v45 = 0;
        v46 = v82;
        v47 = v40;
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x2383829D0](v45, v47);
          }

          else
          {
            v48 = *(v47 + 8 * v45 + 32);
          }

          v49 = v48;
          v50 = sub_232252D0C(0, &qword_2814C77F0, 0x277D3A4A8);
          v80 = v50;
          v81 = &off_284754970;
          v79[0] = v49;
          v82 = v46;
          v52 = *(v46 + 16);
          v51 = *(v46 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_2322708F8((v51 > 1), v52 + 1, 1);
            v53 = v80;
            v54 = v81;
          }

          else
          {
            v53 = v50;
            v54 = &off_284754970;
          }

          ++v45;
          v55 = __swift_mutable_project_boxed_opaque_existential_1(v79, v53);
          MEMORY[0x28223BE20](v55);
          v57 = &v62 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v58 + 16))(v57);
          sub_2322640F0(v52, v57, &v82, v53, v54);
          __swift_destroy_boxed_opaque_existential_0Tm(v79);
          v46 = v82;
          v47 = v44;
        }

        while (v78 != v45);

        v2 = v72;
        v34 = v69;
        v29 = v70;
        v33 = v68;
        v59 = v77;
      }

      else
      {
        v59 = v77;
        v60 = v77;
      }

      type metadata accessor for PPLocationAlgorithm(0);
      v80 = v61;
      v81 = sub_232264348(&qword_27DD91298, type metadata accessor for PPLocationAlgorithm, &unk_232417FFC);
      LOWORD(v79[0]) = v76;
      sub_232277948();
      if (v2)
      {
        break;
      }

      v32 = (v75 - 1) & v75;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v79);
      v35 = v36;
      if (!v32)
      {
        goto LABEL_17;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v79);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return sub_23225C340(&qword_2814C7798, off_27896F998);
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_23225C340(unint64_t *a1, void *a2)
{
  v5 = sub_232401128();
  OUTLINED_FUNCTION_40();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26();
  (*(v7 + 16))(v2, v2 + qword_2814C8D90, v5);
  v9 = sub_232401108();
  v10 = sub_232401338();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_43();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_32();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    sub_232252D0C(0, a1, a2);
    v13 = sub_232401628();
    v15 = sub_23224ED04(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23224A000, v9, v10, "TextUnderstandingBuffer<%s>: resetting", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
  }

  (*(v7 + 8))(v2, v5);
  swift_beginAccess();
  v2[14] = MEMORY[0x277D84F98];

  v16 = *(*v2 + 160);
  if (*(v2 + v16))
  {

    sub_2324012C8();
  }

  *(v2 + v16) = 0;
}

uint64_t sub_23225C57C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_232401128();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 160);
  if (!*(v1 + v12))
  {
    (*(v8 + 16))(v11, v1 + qword_2814C8D90, v7);
    v13 = sub_232401108();
    v14 = sub_232401338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = v15;
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315138;
      sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
      v16 = sub_232401628();
      v18 = sub_23224ED04(v16, v17, &v32);
      v29 = v13;
      v19 = v14;
      v20 = v3;
      v21 = v18;

      v23 = v29;
      v22 = v30;
      *(v30 + 1) = v21;
      v3 = v20;
      v24 = v22;
      _os_log_impl(&dword_23224A000, v23, v19, "TextUnderstandingBuffer<%s>: starting timer", v22, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x2383841F0](v25, -1, -1);
      MEMORY[0x2383841F0](v24, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    v26 = sub_2324012B8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = v3;
    *(v1 + v12) = sub_23225EA40(0, 0, v6, &unk_2324178A8, v28);
  }

  return result;
}

uint64_t sub_23225C8A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_232401128();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 160);
  if (!*(v1 + v12))
  {
    (*(v8 + 16))(v11, v1 + qword_2814C8D90, v7);
    v13 = sub_232401108();
    v14 = sub_232401338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = v15;
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315138;
      sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
      v16 = sub_232401628();
      v18 = sub_23224ED04(v16, v17, &v32);
      v29 = v13;
      v19 = v14;
      v20 = v3;
      v21 = v18;

      v23 = v29;
      v22 = v30;
      *(v30 + 1) = v21;
      v3 = v20;
      v24 = v22;
      _os_log_impl(&dword_23224A000, v23, v19, "TextUnderstandingBuffer<%s>: starting timer", v22, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x2383841F0](v25, -1, -1);
      MEMORY[0x2383841F0](v24, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    v26 = sub_2324012B8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = v3;
    *(v1 + v12) = sub_23225EA40(0, 0, v6, &unk_232417880, v28);
  }

  return result;
}

uint64_t sub_23225CBCC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_232401128();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 160);
  if (!*(v1 + v12))
  {
    (*(v8 + 16))(v11, v1 + qword_2814C8D90, v7);
    v13 = sub_232401108();
    v14 = sub_232401338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = v15;
      v31 = swift_slowAlloc();
      v32 = v31;
      *v15 = 136315138;
      sub_232252D0C(0, &qword_2814C7798, off_27896F998);
      v16 = sub_232401628();
      v18 = sub_23224ED04(v16, v17, &v32);
      v29 = v13;
      v19 = v14;
      v20 = v3;
      v21 = v18;

      v23 = v29;
      v22 = v30;
      *(v30 + 1) = v21;
      v3 = v20;
      v24 = v22;
      _os_log_impl(&dword_23224A000, v23, v19, "TextUnderstandingBuffer<%s>: starting timer", v22, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x2383841F0](v25, -1, -1);
      MEMORY[0x2383841F0](v24, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
    v26 = sub_2324012B8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = v3;
    *(v1 + v12) = sub_23225EA40(0, 0, v6, &unk_232417840, v28);
  }

  return result;
}

uint64_t sub_23225CEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_232401128();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2324014D8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23225D010, 0, 0);
}

uint64_t sub_23225D010()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 144) = os_transaction_create();
  sub_232401578();
  v1 = OUTLINED_FUNCTION_50();
  *(v0 + 152) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_0(v1);

  return v3(v2);
}

uint64_t sub_23225D0B0()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23225D20C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_66();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();

    return v5();
  }
}

uint64_t sub_23225D2C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 160));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_33();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_3_0();
  v4 = swift_weakLoadStrong();
  *(v0 + 200) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_23225D394()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 160);
  sub_23225AF18();
  *(v0 + 176) = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23225D41C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_23225D480()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 176));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_33();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_3_0();
  v4 = swift_weakLoadStrong();
  *(v0 + 200) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_23225D54C()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_65();
  (*(v2 + 16))(v1, v0 + qword_2814C8D90);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23225D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_83();
  a21 = v26;
  a22 = v27;
  a20 = v24;
  OUTLINED_FUNCTION_72();
  v28 = sub_232401108();
  v29 = sub_232401348();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_32();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v25 = 136315394;
    sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
    v32 = sub_232401628();
    sub_23224ED04(v32, v33, &a11);

    OUTLINED_FUNCTION_52();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v30 = v34;
    OUTLINED_FUNCTION_51(&dword_23224A000, v35, v36, "TextUnderstandingBuffer<%s>: error: %@");
    sub_232264094(v30, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    (*(v23 + 8))(a10, a9);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_47();
    v38(v37);
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_weakLoadStrong();
  *(v24 + 200) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v40, v41, v42);
  }

  else
  {

    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_45();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23225D7B8()
{
  OUTLINED_FUNCTION_12();
  sub_23225C340(&qword_27DD912C8, off_27896F9A0);

  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23225D82C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_23225D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_232401128();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2324014D8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23225D9B4, 0, 0);
}

uint64_t sub_23225D9B4()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 144) = os_transaction_create();
  sub_232401578();
  v1 = OUTLINED_FUNCTION_50();
  *(v0 + 152) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_0(v1);

  return v3(v2);
}

uint64_t sub_23225DA54()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23225DBB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_66();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();

    return v5();
  }
}

uint64_t sub_23225DC6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 160));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_35();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_3_0();
  v4 = swift_weakLoadStrong();
  *(v0 + 200) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_23225DD38()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 160);
  sub_23225B5D0();
  *(v0 + 176) = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23225DDC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 176));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_35();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_3_0();
  v4 = swift_weakLoadStrong();
  *(v0 + 200) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_23225DE8C()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_65();
  (*(v2 + 16))(v1, v0 + qword_2814C8D90);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23225DF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_83();
  a21 = v26;
  a22 = v27;
  a20 = v24;
  OUTLINED_FUNCTION_72();
  v28 = sub_232401108();
  v29 = sub_232401348();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_32();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v25 = 136315394;
    sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
    v32 = sub_232401628();
    sub_23224ED04(v32, v33, &a11);

    OUTLINED_FUNCTION_52();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v30 = v34;
    OUTLINED_FUNCTION_51(&dword_23224A000, v35, v36, "TextUnderstandingBuffer<%s>: error: %@");
    sub_232264094(v30, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    (*(v23 + 8))(a10, a9);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_47();
    v38(v37);
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_weakLoadStrong();
  *(v24 + 200) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v40, v41, v42);
  }

  else
  {

    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_45();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23225E0F8()
{
  OUTLINED_FUNCTION_12();
  sub_23225C340(&unk_2814C77C8, off_27896F9C8);

  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23225E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_232401128();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2324014D8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23225E288, 0, 0);
}

uint64_t sub_23225E288()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 144) = os_transaction_create();
  sub_232401578();
  v1 = OUTLINED_FUNCTION_50();
  *(v0 + 152) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_0(v1);

  return v3(v2);
}

uint64_t sub_23225E328()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23225E484()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_66();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();

    return v5();
  }
}

uint64_t sub_23225E540()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 160));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_34();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_3_0();
  v4 = swift_weakLoadStrong();
  *(v0 + 200) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_23225E60C()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 160);
  sub_23225BC88();
  *(v0 + 176) = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23225E694()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 176));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_34();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_3_0();
  v4 = swift_weakLoadStrong();
  *(v0 + 200) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_23225E760()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_65();
  (*(v2 + 16))(v1, v0 + qword_2814C8D90);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23225E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_83();
  a21 = v26;
  a22 = v27;
  a20 = v24;
  OUTLINED_FUNCTION_72();
  v28 = sub_232401108();
  v29 = sub_232401348();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_32();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v25 = 136315394;
    sub_232252D0C(0, &qword_2814C7798, off_27896F998);
    v32 = sub_232401628();
    sub_23224ED04(v32, v33, &a11);

    OUTLINED_FUNCTION_52();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v30 = v34;
    OUTLINED_FUNCTION_51(&dword_23224A000, v35, v36, "TextUnderstandingBuffer<%s>: error: %@");
    sub_232264094(v30, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    (*(v23 + 8))(a10, a9);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_47();
    v38(v37);
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_weakLoadStrong();
  *(v24 + 200) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v40, v41, v42);
  }

  else
  {

    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_45();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23225E9CC()
{
  OUTLINED_FUNCTION_12();
  sub_23225C340(&qword_2814C7798, off_27896F998);

  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23225EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_232263F90(a3, v24 - v10);
  v12 = sub_2324012B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_232264094(v11, &qword_27DD91288, &qword_232417830);
  }

  else
  {
    sub_2324012A8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_232401298();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_232401198() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_232264094(a3, &qword_27DD91288, &qword_232417830);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232264094(a3, &qword_27DD91288, &qword_232417830);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_23225ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, uint64_t a7)
{
  sub_232401128();
  OUTLINED_FUNCTION_40();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v22 = v14;
  (*(v12 + 16))(v7, v7 + qword_2814C8D90);
  v15 = sub_232401108();
  v16 = sub_232401338();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_43();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27();
    v17 = swift_slowAlloc();
    v27 = v17;
    *a7 = 136315138;
    sub_232252D0C(0, a5, a6);
    v18 = sub_232401628();
    v20 = sub_23224ED04(v18, v19, &v27);

    *(a7 + 4) = v20;
    _os_log_impl(&dword_23224A000, v15, v16, "TextUnderstandingBuffer<%s>: deleting", a7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
  }

  (*(v12 + 8))(v7, v22);
  v21 = *(v7 + *(*v7 + 152));
  (a7)(a1, a2, a3, a4);
}

uint64_t sub_23225EF24()
{
  v0 = sub_232401128();
  __swift_allocate_value_buffer(v0, qword_2814C8D78);
  __swift_project_value_buffer(v0, qword_2814C8D78);
  return sub_232401118();
}

void sub_23225EFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_81();
  v25 = v24;
  v27 = v26;
  v28 = [v26 documentId];
  v29 = sub_232401178();
  v31 = v30;

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v25 + 112);
  *(v25 + 112) = 0x8000000000000000;
  v33 = sub_232273828(v29, v31);
  if (__OFADD__(v32[2], (v34 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v35 = v33;
  v36 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912D8, &qword_2324178B0);
  if (sub_2324014F8())
  {
    v37 = sub_232273828(v29, v31);
    if ((v36 & 1) == (v38 & 1))
    {
      v35 = v37;
      goto LABEL_5;
    }

LABEL_10:
    sub_232401548();
    __break(1u);
    return;
  }

LABEL_5:
  *(v25 + 112) = v32;
  if (v36)
  {
  }

  else
  {
    sub_232263668(v35, v29, v31, MEMORY[0x277D84F90], v32);
  }

  v27;
  MEMORY[0x2383827C0]();
  sub_23226E3F4();
  sub_232401288();
  swift_endAccess();
  OUTLINED_FUNCTION_82();
}

void sub_23225F12C(uint64_t a1)
{
  OUTLINED_FUNCTION_81();
  v2 = sub_2324010E8();
  v4 = v3;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v5 = *(v1 + 112);

  v6 = sub_232271804(v2, v4, v5);

  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = sub_232252E38(v6);
  if (!v7)
  {
LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_82();
    return;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2383829D0](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = sub_232273BBC(v10);
    v15 = v14;
    v16 = sub_2324010D8();
    if (v15)
    {
      if (v17)
      {
        if (v13 == v16 && v15 == v17)
        {
        }

        else
        {
          v19 = sub_232401528();

          if ((v19 & 1) == 0)
          {
LABEL_25:

            goto LABEL_26;
          }
        }

LABEL_20:
        v20 = [v11 bundleId];
        v21 = sub_232401178();
        v23 = v22;

        if (v21 == sub_2324010C8() && v23 == v24)
        {

          goto LABEL_27;
        }

        v26 = sub_232401528();

        if (v26)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else if (!v17)
    {
      goto LABEL_20;
    }

LABEL_26:
    ++v9;
    if (v12 == v8)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_23225F358()
{
  v1 = sub_232401128();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  if (qword_2814C7AA0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2814C7AA0);
  }

  v5 = __swift_project_value_buffer(v1, qword_2814C8D78);
  (*(v3 + 16))(v0, v5, v1);
  v6 = sub_232401108();
  v7 = sub_232401338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23224A000, v6, v7, "SourceBuffer: resetting", v8, 2u);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
  }

  (*(v3 + 8))(v0, v1);
  swift_beginAccess();
  *(v0 + 112) = MEMORY[0x277D84F98];
}

uint64_t sub_23225F4EC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t TextUnderstandingImporter.__allocating_init(database:)()
{
  OUTLINED_FUNCTION_71();
  v1 = swift_allocObject();
  TextUnderstandingImporter.init(database:)(v0);
  return v1;
}

void *TextUnderstandingImporter.init(database:)(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  type metadata accessor for TextUnderstandingImporter.SourceBuffer();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = MEMORY[0x277D84F98];
  v2[14] = v4;
  v2[15] = a1;
  sub_232252D0C(0, &qword_2814C77F8, off_27896FF10);
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = objc_opt_self();
  v9 = v6;
  v10 = sub_23225F83C(v7, v9, [v8 sharedTrialClient]);
  sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
  v11 = [objc_allocWithZone(PPTopicStorage) initWithDatabase_];
  v12 = v10;
  v13 = sub_23225F8A4(v11, v12);
  [objc_allocWithZone(PPNamedEntityStorage) initWithDatabase_];
  v14 = objc_allocWithZone(PPLocalNamedEntityStore);
  v15 = v12;
  v16 = v13;
  OUTLINED_FUNCTION_37();
  sub_232262FA0(v17, v18, v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91230, &qword_2324176C0);
  swift_allocObject();
  v2[16] = sub_23225A210();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91238, &qword_2324176C8);
  swift_allocObject();
  v20 = v16;
  v2[17] = sub_23225A210();
  sub_232252D0C(0, &qword_2814C7798, off_27896F998);
  v21 = [objc_allocWithZone(PPLocationStorage) initWithDatabase_];
  v22 = v15;
  sub_23225F8A4(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91240, &qword_2324176D0);
  swift_allocObject();
  v23 = sub_23225A210();

  v2[18] = v23;
  return v2;
}

id sub_23225F83C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettings:a1 database:a2 trialClient:a3];

  return v6;
}

id sub_23225F8A4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStorage:a1 trialWrapper:a2];

  return v4;
}

uint64_t sub_23225F900()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  OUTLINED_FUNCTION_70(v3);
  v1[4] = OUTLINED_FUNCTION_62();
  v4 = sub_2324010B8();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_61();
  v1[8] = swift_task_alloc();
  v6 = sub_232401128();
  v1[9] = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_61();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23225FA40()
{
  v51 = v0;
  if (qword_2814C7AA0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2814C7AA0);
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[2];
  v7 = __swift_project_value_buffer(v0[9], qword_2814C8D78);
  v47 = *(v2 + 16);
  v48 = v7;
  v47(v1);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v9 = sub_232401108();
  v10 = sub_232401368();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[10];
  v49 = v0[9];
  v14 = v0[8];
  if (v11)
  {
    log = v9;
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    OUTLINED_FUNCTION_43();
    v46 = v12;
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_32();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v18 = 136315138;
    v8(v16, v14, v17);
    v19 = sub_232401188();
    v20 = v10;
    v22 = v21;
    (*(v15 + 8))(v14, v17);
    sub_23224ED04(v19, v22, &v50);
    OUTLINED_FUNCTION_71();

    *(v18 + 4) = v17;
    _os_log_impl(&dword_23224A000, log, v20, "PPTextUnderstandingImporter: document deletion received: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    v23 = *(v13 + 8);
    v23(v46, v49);
  }

  else
  {

    v24 = OUTLINED_FUNCTION_69();
    v25(v24);
    v23 = *(v13 + 8);
    v23(v12, v49);
  }

  v26 = v0[4];
  OUTLINED_FUNCTION_54_0();
  sub_232401078();
  v27 = sub_232400C98();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
  sub_232264094(v26, &qword_27DD91248, &qword_2324176E0);
  if (EnumTagSinglePayload != 1)
  {
    (v47)(v0[12], v48, v0[9]);
    v29 = sub_232401108();
    v30 = sub_232401368();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23224A000, v29, v30, "PPTextUnderstandingImporter: deletions using documentsReceivedAfter are not supported. Ignoring date.", v31, 2u);
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
    }

    v32 = OUTLINED_FUNCTION_47();
    (v23)(v32);
  }

  v33 = *(sub_2324010A8() + 16);

  if (v33)
  {
    v34 = *(sub_232401098() + 16);

    if (v34)
    {
      (v47)(v0[11], v48, v0[9]);
      v35 = sub_232401108();
      v36 = sub_232401368();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_23224A000, v35, v36, "PPTextUnderstandingImporter: deletions that combine domain and unique ids are not supported. Falling back to uniqueId deletion.", v37, 2u);
        OUTLINED_FUNCTION_13();
        MEMORY[0x2383841F0]();
      }

      v38 = OUTLINED_FUNCTION_47();
      (v23)(v38);
    }
  }

  v0[14] = *(v0[3] + 128);

  v0[15] = sub_232401088();
  v0[16] = v39;
  v0[17] = sub_232401098();
  v0[18] = sub_2324010A8();
  v40 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_23225FE78()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41();
  sub_23225ED14(v1, v2, v3, v4, v5, v6, v7);
  *(v0 + 152) = 0;

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23225FFA0()
{
  OUTLINED_FUNCTION_12();
  v0[20] = *(v0[3] + 136);

  v0[21] = sub_232401088();
  v0[22] = v1;
  v0[23] = sub_232401098();
  v0[24] = sub_2324010A8();
  v2 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_232260020()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_41();
  sub_23225ED14(v2, v3, v4, v5, v6, v7, v8);
  *(v0 + 200) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_75();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_232260144()
{
  OUTLINED_FUNCTION_12();
  v0[26] = *(v0[3] + 144);

  v0[27] = sub_232401088();
  v0[28] = v1;
  v0[29] = sub_232401098();
  v0[30] = sub_2324010A8();
  v2 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_2322601C4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_41();
  sub_23225ED14(v0, v1, v2, v3, v4, v5, v6);

  OUTLINED_FUNCTION_49();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_75();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2322602B4()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  OUTLINED_FUNCTION_70(v3);
  v1[4] = OUTLINED_FUNCTION_62();
  v4 = sub_232400C98();
  OUTLINED_FUNCTION_70(v4);
  v1[5] = OUTLINED_FUNCTION_62();
  v5 = sub_2324010F8();
  v1[6] = v5;
  OUTLINED_FUNCTION_2_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_61();
  v7 = swift_task_alloc();
  v1[10] = OUTLINED_FUNCTION_87(v7);
  v8 = sub_232400EE8();
  v1[11] = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_61();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = sub_232401128();
  v1[16] = v10;
  OUTLINED_FUNCTION_2_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_61();
  v1[19] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_232260470()
{
  if (qword_2814C7AA0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v1 = v0[19];
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[12];
    v5 = __swift_project_value_buffer(v2, qword_2814C8D78);
    v0[20] = v5;
    v6 = *(v3 + 16);
    v0[21] = v6;
    v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v5, v2);
    v7 = *(v4 + 16);
    v0[23] = v7;
    v0[24] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8 = OUTLINED_FUNCTION_44();
    v7(v8);
    v9 = sub_232401108();
    v10 = sub_232401338();
    v11 = OUTLINED_FUNCTION_56(v10);
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    if (v11)
    {
      v60 = v0[19];
      v16 = v0[11];
      v15 = v0[12];
      OUTLINED_FUNCTION_43();
      swift_slowAlloc();
      OUTLINED_FUNCTION_27();
      v63 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_20(4.8149e-34);
      v7(v17);
      OUTLINED_FUNCTION_55();
      sub_232401188();
      v18 = *(v15 + 8);
      v18(v14, v16);
      v19 = OUTLINED_FUNCTION_69();
      sub_23224ED04(v19, v20, v21);
      OUTLINED_FUNCTION_88();
      *(v13 + 4) = v14;
      _os_log_impl(&dword_23224A000, v9, v1, "PPTextUnderstandingImporter: document observation received: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();

      v22 = *(v12 + 8);
      v22(v60, v13);
    }

    else
    {
      v24 = v0[11];
      v23 = v0[12];

      v18 = *(v23 + 8);
      v18(v14, v24);
      v22 = *(v12 + 8);
      v25 = OUTLINED_FUNCTION_44();
      v22(v25, v26);
    }

    v0[25] = v22;
    v0[26] = v18;
    v27 = COERCE_DOUBLE(sub_232400ED8());
    v30 = (v28 & 1) != 0 ? 0.0 : v27;
    if ((v28 & 1) != 0 || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      break;
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_0_1(&qword_2814C7AA0);
  }

  if (v30 <= -1.0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v30 >= 4294967300.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = COERCE_DOUBLE(sub_232400EB8());
  if (v28)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v27;
  }

  if ((*&v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (HIDWORD(*&v31))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v27 = COERCE_DOUBLE(sub_232400EB8());
  if (v28)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v27;
  }

  if ((*&v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (HIDWORD(*&v32))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = COERCE_DOUBLE(sub_232400E88());
  if (v28)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v27;
  }

  if ((*&v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  if (*&v33 >> 16)
  {
LABEL_39:
    __break(1u);
    return MEMORY[0x2822009F8](*&v27, v28, v29);
  }

  v35 = v0[9];
  v34 = v0[10];
  v36 = v0[7];
  v52 = v0[6];
  v57 = v0[8];
  log = v0[5];
  v59 = v0[4];
  v61 = v0[3];
  v37 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:v30 lengthSeconds:*&v31 lengthCharacters:*&v32 donationCount:LOWORD(v33) contactHandleCount:0 flags:sub_232400E98() & 1];
  v0[27] = v37;
  sub_232400E68();
  v38 = sub_2324010C8();
  v55 = v39;
  v56 = v38;
  v40 = *(v36 + 8);
  v40(v34, v52);
  sub_232400E68();
  v41 = sub_2324010D8();
  v53 = v42;
  v54 = v41;
  v40(v35, v52);
  sub_232400E68();
  LODWORD(v35) = sub_2324010E8();
  v44 = v43;
  v45 = OUTLINED_FUNCTION_47();
  (v40)(v45);
  sub_232400E78();
  sub_232400EA8();
  v46 = sub_232400EC8();
  v48 = v47;
  objc_allocWithZone(MEMORY[0x277D3A4D8]);
  v49 = v37;
  sub_232253BEC(v56, v55, v54, v53, v35, v44, log, v59, 0, v46, v48, v37, v52, v53, v54, v55, v56, v57, log, v59, v61, v63, v64, v65, v66, v67, v68, v69);
  v0[28] = v50;
  v0[29] = *(v62 + 112);

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2822009F8](*&v27, v28, v29);
}

uint64_t sub_232260964()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
  v1(v2, v4, v3);
  v5 = sub_232401108();
  v6 = sub_232401338();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 200);
  v25 = *(v0 + 216);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  if (v7)
  {
    OUTLINED_FUNCTION_43();
    v23 = v11;
    v24 = v9;
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_32();
    v26 = swift_slowAlloc();
    *v12 = 136315138;
    sub_232400E68();
    OUTLINED_FUNCTION_55();
    sub_232401188();
    v13 = OUTLINED_FUNCTION_80();
    v14(v13);
    v15 = OUTLINED_FUNCTION_55();
    v18 = sub_23224ED04(v15, v16, v17);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_23224A000, v5, v6, "PPTextUnderstandingImporter: document %s buffered", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    v8(v24, v10);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_80();
    v20(v19);
    v8(v9, v10);
  }

  OUTLINED_FUNCTION_15();

  return v21();
}

uint64_t sub_232260BE4(uint64_t a1)
{
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_66();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232260C10()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 24) = *(*(v0 + 16) + 112);

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_232260C80()
{
  OUTLINED_FUNCTION_12();
  sub_23225F358();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_232260CE0()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_61();
  v1[7] = swift_task_alloc();
  v5 = sub_232401128();
  v1[8] = v5;
  OUTLINED_FUNCTION_2_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232260DDC()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 88) = *(*(v0 + 24) + 112);

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_232260E4C()
{
  OUTLINED_FUNCTION_12();
  sub_23225F12C(*(v0 + 16));
  *(v0 + 96) = v1;

  v2 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_232260EB8()
{
  if (!v0[12])
  {
    if (qword_2814C7AA0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_2814C7AA0);
    }

    v1 = v0[7];
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = v0[2];
    __swift_project_value_buffer(v0[8], qword_2814C8D78);
    v6 = OUTLINED_FUNCTION_21();
    v7(v6);
    v8 = *(v3 + 16);
    v8(v1, v5, v4);
    v8(v2, v5, v4);
    v9 = sub_232401108();
    v10 = sub_232401358();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[5];
    v17 = v0[6];
    v18 = v0[4];
    if (v11)
    {
      v33 = v10;
      v19 = swift_slowAlloc();
      swift_slowAlloc();
      *v19 = 136380931;
      sub_2324010C8();
      v20 = *(v16 + 8);
      v20(v14, v18);
      v21 = OUTLINED_FUNCTION_47();
      v24 = sub_23224ED04(v21, v22, v23);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2081;
      sub_2324010E8();
      v20(v17, v18);
      v25 = OUTLINED_FUNCTION_60();
      v28 = sub_23224ED04(v25, v26, v27);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_23224A000, v9, v33, "TextUnderstandingImporter: source buffer did not have a match for %{private}s : %{private}s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
    }

    else
    {

      v29 = *(v16 + 8);
      v29(v17, v18);
      v29(v14, v18);
    }

    (*(v13 + 8))(v12, v15);
  }

  v30 = v0[1];
  v31 = v0[12];

  return v30(v31);
}

uint64_t sub_23226118C()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_62();
  v5 = sub_232401068();
  v1[7] = v5;
  OUTLINED_FUNCTION_2_0(v5);
  v1[8] = v6;
  v7 = OUTLINED_FUNCTION_61();
  v1[10] = OUTLINED_FUNCTION_87(v7);
  v8 = sub_232401128();
  v1[11] = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2322614C4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = OUTLINED_FUNCTION_60();
  v8(v7);
  v9 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232261618()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[15];
  if (v1)
  {
    v0[16] = *(v0[3] + 128);

    v2 = sub_232401038();
    v4 = v3;
    v5 = sub_232401048();
    v7 = sub_232265450(v5, v6);
    v8 = sub_232263718(v1);
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = objc_allocWithZone(MEMORY[0x277D3A420]);
    v13 = sub_232263014(v2, v4, v7, 0, 0, v10, v11);
    v0[17] = [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v13 score:1.0];

    v14 = sub_232401058();
    v0[18] = sub_232277D9C(v14, v15);
    v16 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_73();

    OUTLINED_FUNCTION_15();

    return v19();
  }
}

uint64_t sub_232261798()
{
  OUTLINED_FUNCTION_22();
  v1 = OUTLINED_FUNCTION_78();
  sub_23225A2C0(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232261808()
{
  OUTLINED_FUNCTION_22();

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_232261884()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_62();
  v5 = sub_232400E58();
  v1[7] = v5;
  OUTLINED_FUNCTION_2_0(v5);
  v1[8] = v6;
  v7 = OUTLINED_FUNCTION_61();
  v1[10] = OUTLINED_FUNCTION_87(v7);
  v8 = sub_232401128();
  v1[11] = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232261BBC()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = OUTLINED_FUNCTION_60();
  v8(v7);
  v9 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232261D10()
{
  OUTLINED_FUNCTION_22();
  if (v0[15])
  {
    v0[16] = *(v0[3] + 136);
    sub_232252D0C(0, &qword_27DD91250, 0x277D3A530);

    v1 = sub_232400E28();
    v3 = sub_232261EAC(v1, v2);
    v0[17] = [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v3 score:1.0];

    v4 = sub_232400E48();
    v0[18] = sub_232277ED0(v4, v5);
    v6 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_73();

    OUTLINED_FUNCTION_15();

    return v9();
  }
}

uint64_t sub_232261E3C()
{
  OUTLINED_FUNCTION_22();
  v1 = OUTLINED_FUNCTION_78();
  sub_23225A6DC(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

id sub_232261EAC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232401168();

  v4 = [v2 initWithTopicIdentifier_];

  return v4;
}

uint64_t sub_232261F20()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91258, &qword_232417718);
  OUTLINED_FUNCTION_70(v3);
  v1[4] = OUTLINED_FUNCTION_61();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = OUTLINED_FUNCTION_87(v4);
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91260, &qword_232417720);
  OUTLINED_FUNCTION_70(v5);
  v1[12] = OUTLINED_FUNCTION_61();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v6 = sub_2324010F8();
  v1[16] = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_62();
  v8 = sub_232401018();
  v1[19] = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_61();
  v1[22] = swift_task_alloc();
  v10 = sub_232401128();
  v1[23] = v10;
  OUTLINED_FUNCTION_2_0(v10);
  v1[24] = v11;
  v1[25] = OUTLINED_FUNCTION_62();
  v12 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_232262334()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *(v6 + 216) = v5;

  v7 = OUTLINED_FUNCTION_60();
  v8(v7);
  v9 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232262488()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 120);
    OUTLINED_FUNCTION_86();
    sub_232400F18();
    v2 = OUTLINED_FUNCTION_58();
    sub_232264094(v1, &qword_27DD91260, &qword_232417720);
    v3 = 0;
    if (v2 != 1)
    {
      OUTLINED_FUNCTION_86();
      if (OUTLINED_FUNCTION_58() == 1)
      {
        sub_232264094(*(v0 + 112), &qword_27DD91260, &qword_232417720);
        v4 = 0.0;
      }

      else
      {
        sub_232400EF8();
        v4 = v7;
        OUTLINED_FUNCTION_29();
        v8 = OUTLINED_FUNCTION_60();
        v9(v8);
      }

      v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    v70 = v3;
    v10 = *(v0 + 104);
    OUTLINED_FUNCTION_86();
    v11 = OUTLINED_FUNCTION_58();
    sub_232264094(v10, &qword_27DD91260, &qword_232417720);
    if (v11 == 1)
    {
      v69 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_86();
      if (OUTLINED_FUNCTION_58() == 1)
      {
        sub_232264094(*(v0 + 96), &qword_27DD91260, &qword_232417720);
        v12 = 0.0;
      }

      else
      {
        sub_232400F08();
        v12 = v13;
        OUTLINED_FUNCTION_29();
        v14 = OUTLINED_FUNCTION_60();
        v15(v14);
      }

      v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    sub_232400F48();
    v68 = sub_232401168();

    sub_232400FE8();
    v16 = sub_232400FD8();
    v17 = OUTLINED_FUNCTION_39();
    v18 = *(v0 + 88);
    if (v17 == 1)
    {
      sub_232264094(*(v0 + 88), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400FB8();
      OUTLINED_FUNCTION_1_0();
      v19 = OUTLINED_FUNCTION_57();
      v20(v19);
      if (v18)
      {
        v67 = OUTLINED_FUNCTION_76();

        goto LABEL_21;
      }
    }

    v67 = 0;
LABEL_21:
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v21 = OUTLINED_FUNCTION_39();
    v22 = *(v0 + 80);
    if (v21 == 1)
    {
      sub_232264094(*(v0 + 80), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400FA8();
      OUTLINED_FUNCTION_1_0();
      v23 = OUTLINED_FUNCTION_57();
      v24(v23);
      if (v22)
      {
        v66 = OUTLINED_FUNCTION_76();

        goto LABEL_26;
      }
    }

    v66 = 0;
LABEL_26:
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v25 = OUTLINED_FUNCTION_39();
    v26 = *(v0 + 72);
    if (v25 == 1)
    {
      sub_232264094(*(v0 + 72), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400F78();
      OUTLINED_FUNCTION_1_0();
      v27 = OUTLINED_FUNCTION_57();
      v28(v27);
      if (v26)
      {
        v29 = OUTLINED_FUNCTION_76();

        goto LABEL_31;
      }
    }

    v29 = 0;
LABEL_31:
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v30 = OUTLINED_FUNCTION_39();
    v31 = *(v0 + 64);
    if (v30 == 1)
    {
      sub_232264094(*(v0 + 64), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400F88();
      OUTLINED_FUNCTION_1_0();
      v32 = OUTLINED_FUNCTION_57();
      v33(v32);
      if (v31)
      {
        v34 = OUTLINED_FUNCTION_76();

        goto LABEL_36;
      }
    }

    v34 = 0;
LABEL_36:
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v35 = OUTLINED_FUNCTION_39();
    v36 = *(v0 + 56);
    if (v35 == 1)
    {
      sub_232264094(*(v0 + 56), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400F98();
      OUTLINED_FUNCTION_1_0();
      v37 = OUTLINED_FUNCTION_57();
      v38(v37);
      if (v36)
      {
        v39 = OUTLINED_FUNCTION_76();

        goto LABEL_41;
      }
    }

    v39 = 0;
LABEL_41:
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v40 = OUTLINED_FUNCTION_39();
    v41 = *(v0 + 48);
    if (v40 == 1)
    {
      sub_232264094(*(v0 + 48), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400F58();
      OUTLINED_FUNCTION_1_0();
      v42 = OUTLINED_FUNCTION_57();
      v43(v42);
      if (v41)
      {
        sub_232401168();
        OUTLINED_FUNCTION_71();

        goto LABEL_46;
      }
    }

    v41 = 0;
LABEL_46:
    v44 = *(v0 + 40);
    sub_232400FE8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v16);
    v46 = *(v0 + 40);
    if (EnumTagSinglePayload == 1)
    {
      sub_232264094(*(v0 + 40), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400F68();
      OUTLINED_FUNCTION_1_0();
      (*(v47 + 8))(v46, v16);
      if (v46)
      {
        v48 = sub_232401168();

        goto LABEL_51;
      }
    }

    v48 = 0;
LABEL_51:
    v49 = *(v0 + 32);
    sub_232400FE8();
    v50 = __swift_getEnumTagSinglePayload(v49, 1, v16);
    v51 = *(v0 + 32);
    if (v50 == 1)
    {
      sub_232264094(*(v0 + 32), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      sub_232400FC8();
      OUTLINED_FUNCTION_1_0();
      (*(v52 + 8))(v51, v16);
      if (v51)
      {
        v53 = sub_232401168();

LABEL_56:
        v65 = *(v0 + 24);
        v64 = [objc_opt_self() placemarkWithLatitudeDegrees:v70 longitudeDegrees:v69 name:v68 thoroughfare:v67 subthoroughFare:0 locality:v66 subLocality:v29 administrativeArea:v34 subAdministrativeArea:v39 postalCode:v41 countryCode:v48 country:v53 inlandWater:0 ocean:0 areasOfInterest:0];
        *(v0 + 224) = v64;

        *(v0 + 232) = *(v65 + 144);
        sub_232252D0C(0, &qword_27DD91268, 0x277D3A3D8);

        v54 = v64;
        v55 = sub_232400FF8();
        v57 = sub_2322658E0(v55, v56);
        v58 = sub_232262EC8(v54, v57, 0);
        *(v0 + 240) = [objc_allocWithZone(MEMORY[0x277D3A4A8]) initWithLocation:v58 score:1.0 sentimentScore:0.0];

        v59 = sub_232401008();
        *(v0 + 248) = sub_232277FB0(v59, v60);
        v61 = OUTLINED_FUNCTION_9();

        return MEMORY[0x2822009F8](v61, v62, v63);
      }
    }

    v53 = 0;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_46();

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_232262D34()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 240);
  sub_23225AAF8(v1, *(v0 + 216), *(v0 + 248));

  v2 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_232262DB4()
{
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_46();

  OUTLINED_FUNCTION_15();

  return v2();
}

id sub_232262EC8(void *a1, unsigned __int16 a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlacemark:a1 category:a2 mostRelevantRecord:a3];

  return v5;
}

uint64_t TextUnderstandingImporter.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TextUnderstandingImporter.__deallocating_deinit()
{
  TextUnderstandingImporter.deinit();

  return MEMORY[0x282200960](v0);
}

id sub_232262FA0(void *a1, void *a2, void *a3, void *a4)
{
  v9 = [v4 initWithStorage:a1 topicStoreForNamedEntityMapping:a2 lazyContactStoreForMapsFeedback:a3 trialWrapper:a4];

  return v9;
}

id sub_232263014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_232401168();

  if (a5)
  {
    v11 = sub_232401168();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_232401168();

  v13 = [v7 initWithName:v10 category:a3 dynamicCategory:v11 language:v12];

  return v13;
}

uint64_t sub_2322630E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2322631D8;

  return v6(a1);
}

uint64_t sub_2322631D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_2322632BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_232263308(a1, a2);
  sub_232263420(&unk_284753DA0);
  return v3;
}

uint64_t sub_232263308(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2324011F8())
  {
    result = sub_232263504(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_232401428();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_232401468();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_232263420(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_232263574(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_232263504(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912E0, &qword_2324178B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_232263574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912E0, &qword_2324178B8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_232263668(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_2322636B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_63(a1, a2, a3, a4);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v6;
  }

  return result;
}

unint64_t sub_2322636D4(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_232263718(void *a1)
{
  v1 = [a1 language];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232401178();

  return v3;
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(deletion:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10(v1);

  return v4(v3);
}

uint64_t sub_2322638D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(document:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of TextUnderstandingImporter.documentBatchCompleted()()
{
  OUTLINED_FUNCTION_22();
  v5 = (*(*v0 + 272) + **(*v0 + 272));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36(v1);
  *v2 = v3;
  v2[1] = sub_232264398;

  return v5();
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(namedEntity:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(topic:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10(v1);

  return v4(v3);
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(location:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10(v1);

  return v4(v3);
}

uint64_t sub_232263EF8()
{
  OUTLINED_FUNCTION_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_23225E16C(v3, v4, v5, v6);
}

uint64_t sub_232263F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232264000()
{
  OUTLINED_FUNCTION_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_48(v1);

  return v4(v3);
}

uint64_t sub_232264094(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_29();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2322640F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_23225356C(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2322641D8()
{
  OUTLINED_FUNCTION_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_23225D898(v3, v4, v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2322642B0()
{
  OUTLINED_FUNCTION_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_23225CEF4(v3, v4, v5, v6);
}

uint64_t sub_232264348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_49()
{
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_51(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_52()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_unknownObjectRelease();
}

BOOL OUTLINED_FUNCTION_56(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_task_alloc();
}

unint64_t OUTLINED_FUNCTION_63(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a4 + 48) + 8 * result) = a2;
  *(*(a4 + 56) + 8 * result) = a3;
  return result;
}

id OUTLINED_FUNCTION_72()
{
  v2 = *(v0 + 184);

  return v2;
}

uint64_t OUTLINED_FUNCTION_73()
{
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_232401168();
}

uint64_t OUTLINED_FUNCTION_86()
{

  return MEMORY[0x28217C708]();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1)
{
  *(v1 + 72) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_88()
{
}

id sub_23226487C()
{
  type metadata accessor for BackgroundTextConsumer();
  result = sub_2322648A0();
  qword_2814C8DB0 = result;
  return result;
}

id sub_2322648A0()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = objc_allocWithZone(type metadata accessor for BackgroundTextConsumer());
  return sub_232264948(v0, v1, v2);
}

id sub_232264948(void *a1, void *a2, void *a3)
{
  sub_232400D88();
  OUTLINED_FUNCTION_40();
  v35 = v7;
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232400D98();
  OUTLINED_FUNCTION_40();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(PPSpotlightWritebackDissector);
  v39 = a3;
  v38 = a1;
  v37 = a2;
  v16 = [v15 init];
  v17 = [objc_opt_self() sharedInstance];
  v18 = [objc_opt_self() sharedInstance];
  v19 = sub_2322780EC(a1, a2, a3, v16, v17, v18);
  (*(v11 + 104))(v14, *MEMORY[0x277D3A230], v9);
  sub_2322653F0(&qword_2814C7F98, MEMORY[0x277D3A240], MEMORY[0x277D3A238]);
  v20 = sub_232400DA8();
  (*(v11 + 8))(v14, v9);
  if (v20 & 1) != 0 && (v21 = v34, v22 = v35, v23 = v36, (*(v35 + 104))(v34, *MEMORY[0x277D3A218], v36), sub_2322653F0(&qword_2814C7FA0, MEMORY[0x277D3A228], MEMORY[0x277D3A220]), v24 = sub_232400DA8(), (*(v22 + 8))(v21, v23), (v24))
  {
    if (qword_2814C7F68 != -1)
    {
      swift_once();
    }

    v25 = sub_232401128();
    __swift_project_value_buffer(v25, qword_2814C8DC8);
    v26 = sub_232401108();
    v27 = sub_232401368();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23224A000, v26, v27, "BackgroundTextConsumer: TextUnderstanding flags enabled, not registering for Mail, News, Notes, Safari, or TPA.", v28, 2u);
      MEMORY[0x2383841F0](v28, -1, -1);
    }
  }

  else
  {
    v29 = [objc_opt_self() defaultCoordinator];
    OUTLINED_FUNCTION_1_1(v29, sel_registerNewsConsumer_levelOfService_);

    v30 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v30, sel_registerNotesConsumer_levelOfService_);

    v31 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v31, sel_registerSafariConsumer_levelOfService_);

    v32 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v32, sel_registerThirdPartyAppConsumer_levelOfService_);

    v26 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v26, sel_registerMailConsumer_levelOfService_);
  }

  return v19;
}

uint64_t sub_232264DB4(void *a1)
{
  v2 = [a1 content];
  OUTLINED_FUNCTION_3_1();
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  v4 = [v3 contentProtection];
  v5 = [v3 htmlParser];
  v6 = v2;
  v7 = sub_232276E2C();

  return v7;
}

uint64_t sub_232265034(void *a1)
{
  v2 = [a1 content];
  OUTLINED_FUNCTION_3_1();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = [a1 contentProtection];
  v5 = v2;
  v6 = sub_2322751FC(v5, 1, 1, sub_232257648, v3);

  return v6;
}

uint64_t sub_232265190(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = [a1 content];
  OUTLINED_FUNCTION_3_1();
  *(swift_allocObject() + 16) = a1;
  v8 = [a1 contentProtection];
  v9 = v7;
  v10 = a5();

  return v10;
}

id sub_232265394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundTextConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2322653F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id OUTLINED_FUNCTION_4_1()
{

  return [v0 (v1 + 1596)];
}

uint64_t sub_232265450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_3(0x6E6F73726570, 0xE600000000000000) & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_1_2();
    v8 = v4 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_3(v6, v7) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_0_3(0x6E6F697461636F6CLL, 0xE800000000000000) & 1) != 0)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_2_1();
        v11 = a1 == v10 && a2 == 0xEA0000000000746ELL;
        if (v11 || (OUTLINED_FUNCTION_0_3(v10, 0xEA0000000000746ELL) & 1) != 0)
        {

          return 4;
        }

        else
        {
          v12 = a1 == 0x616964656DLL && a2 == 0xE500000000000000;
          if (v12 || (OUTLINED_FUNCTION_0_3(0x616964656DLL, 0xE500000000000000) & 1) != 0)
          {

            return 6;
          }

          else
          {
            v13 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
            if (v13 || (OUTLINED_FUNCTION_0_3(0x747369747261, 0xE600000000000000) & 1) != 0)
            {

              return 7;
            }

            else
            {
              v14 = a1 == 0x6441746565727473 && a2 == 0xED00007373657264;
              if (v14 || (OUTLINED_FUNCTION_0_3(0x6441746565727473, 0xED00007373657264) & 1) != 0)
              {

                return 8;
              }

              else
              {
                v15 = a1 == 2037672291 && a2 == 0xE400000000000000;
                if (v15 || (OUTLINED_FUNCTION_0_3(2037672291, 0xE400000000000000) & 1) != 0)
                {

                  return 9;
                }

                else
                {
                  v16 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
                  if (v16 || (OUTLINED_FUNCTION_0_3(0x6574617473, 0xE500000000000000) & 1) != 0)
                  {

                    return 10;
                  }

                  else
                  {
                    v17 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                    if (v17 || (OUTLINED_FUNCTION_0_3(0x7972746E756F63, 0xE700000000000000) & 1) != 0)
                    {

                      return 11;
                    }

                    else
                    {
                      v18 = a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365;
                      if (v18 || (OUTLINED_FUNCTION_0_3(0x726464416C6C7566, 0xEB00000000737365) & 1) != 0)
                      {

                        return 12;
                      }

                      else
                      {
                        v19 = a1 == 0xD000000000000011 && 0x8000000232418EF0 == a2;
                        if (v19 || (OUTLINED_FUNCTION_0_3(0xD000000000000011, 0x8000000232418EF0) & 1) != 0)
                        {

                          return 13;
                        }

                        else
                        {
                          v20 = a1 == 0x746954746E657665 && a2 == 0xEA0000000000656CLL;
                          if (v20 || (OUTLINED_FUNCTION_0_3(0x746954746E657665, 0xEA0000000000656CLL) & 1) != 0)
                          {

                            return 14;
                          }

                          else
                          {
                            v21 = a1 == 0x65547374726F7073 && a2 == 0xEA00000000006D61;
                            if (v21 || (OUTLINED_FUNCTION_0_3(0x65547374726F7073, 0xEA00000000006D61) & 1) != 0)
                            {

                              return 15;
                            }

                            else
                            {
                              v22 = a1 == 0xD000000000000013 && 0x8000000232418F10 == a2;
                              if (v22 || (OUTLINED_FUNCTION_0_3(0xD000000000000013, 0x8000000232418F10) & 1) != 0)
                              {

                                return 16;
                              }

                              else
                              {
                                v23 = a1 == 0x6E6169636973756DLL && a2 == 0xE800000000000000;
                                if (v23 || (OUTLINED_FUNCTION_0_3(0x6E6169636973756DLL, 0xE800000000000000) & 1) != 0)
                                {

                                  return 17;
                                }

                                else
                                {
                                  v24 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
                                  if (v24 || (OUTLINED_FUNCTION_0_3(0x6569766F6DLL, 0xE500000000000000) & 1) != 0)
                                  {

                                    return 18;
                                  }

                                  else
                                  {
                                    v25 = a1 == 0x69636974696C6F70 && a2 == 0xEA00000000006E61;
                                    if (v25 || (OUTLINED_FUNCTION_0_3(0x69636974696C6F70, 0xEA00000000006E61) & 1) != 0)
                                    {

                                      return 20;
                                    }

                                    else if (a1 == 0x69736976656C6574 && a2 == 0xEE00776F68536E6FLL)
                                    {

                                      return 21;
                                    }

                                    else
                                    {
                                      v27 = OUTLINED_FUNCTION_0_3(0x69736976656C6574, 0xEE00776F68536E6FLL);

                                      if (v27)
                                      {
                                        return 21;
                                      }

                                      else
                                      {
                                        return 0;
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2322658E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_3(0x6E776F6E6B6E75, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_3(0x63696D616E7964, 0xE700000000000000) & 1) != 0)
    {

      return 7;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_1_2();
      v9 = v4 && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_3(v7, v8) & 1) != 0)
      {

        return 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_2_1();
        v12 = a1 == v10 && a2 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_3(v10, 0xEA0000000000746ELL) & 1) != 0)
        {

          return 2;
        }

        else
        {
          v13 = a1 == 0x7974697669746361 && a2 == 0xE800000000000000;
          if (v13 || (OUTLINED_FUNCTION_0_3(0x7974697669746361, 0xE800000000000000) & 1) != 0)
          {

            return 3;
          }

          else
          {
            v14 = a1 == 0xD000000000000011 && 0x8000000232418EF0 == a2;
            if (v14 || (OUTLINED_FUNCTION_0_3(0xD000000000000011, 0x8000000232418EF0) & 1) != 0)
            {

              return 4;
            }

            else
            {
              v15 = a1 == 1701670760 && a2 == 0xE400000000000000;
              if (v15 || (OUTLINED_FUNCTION_0_3(1701670760, 0xE400000000000000) & 1) != 0)
              {

                return 5;
              }

              else if (a1 == 1802661751 && a2 == 0xE400000000000000)
              {

                return 6;
              }

              else
              {
                v17 = OUTLINED_FUNCTION_0_3(1802661751, 0xE400000000000000);

                if (v17)
                {
                  return 6;
                }

                else
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232265B1C()
{
  v0 = sub_232400D98();
  OUTLINED_FUNCTION_40();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67();
  v6 = v5 - v4;
  v7 = sub_232400D88();
  OUTLINED_FUNCTION_40();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_68_0();
  v24 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = *MEMORY[0x277D3A208];
  v23 = *(v9 + 104);
  v23(&v23 - v14, v16, v7);
  sub_23226E3A0(&qword_2814C7FA0, MEMORY[0x277D3A228], MEMORY[0x277D3A220]);
  v17 = sub_232400DA8();
  v18 = *(v9 + 8);
  v18(v15, v7);
  if (v17 & 1) != 0 || ((*(v2 + 104))(v6, *MEMORY[0x277D3A230], v0), sub_23226E3A0(&qword_2814C7F98, MEMORY[0x277D3A240], MEMORY[0x277D3A238]), v19 = sub_232400DA8(), (*(v2 + 8))(v6, v0), (v19))
  {
    v20 = 1;
  }

  else
  {
    v21 = v24;
    v23(v24, *MEMORY[0x277D3A218], v7);
    v20 = sub_232400DA8();
    v18(v21, v7);
  }

  return v20 & 1;
}

uint64_t sub_232265DCC()
{
  sub_232400D38();
  result = sub_232400D28();
  qword_2814C8D40 = result;
  return result;
}

uint64_t static TextUnderstandingObservationSystem.start()()
{
  v2 = v0;
  v3 = sub_232401128();
  OUTLINED_FUNCTION_40();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_232265B1C();
  if (v13)
  {
    if (qword_2814C7830 != -1)
    {
      v13 = OUTLINED_FUNCTION_48_0(&qword_2814C7830);
    }

    OUTLINED_FUNCTION_28_0(v13, qword_2814C8D28);
    (*(v5 + 16))(v12);
    v14 = sub_232401108();
    v15 = sub_232401368();
    if (OUTLINED_FUNCTION_59_0(v15))
    {
      *OUTLINED_FUNCTION_57_0() = 0;
      OUTLINED_FUNCTION_58_0(&dword_23224A000, v16, v17, "PPTextUnderstandingObservationSystem: starting");
      OUTLINED_FUNCTION_52_0();
    }

    (*(v5 + 8))(v12, v3);
    if (qword_2814C7838 != -1)
    {
      swift_once();
    }

    type metadata accessor for TextUnderstandingObserver(0);
    v18 = swift_allocObject();

    sub_232266BE4(v19);
    qword_2814C8D20 = v18;

    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    v21 = sub_232266254(0xD000000000000037, 0x8000000232418F30, &unk_2324178F8, v20);

    qword_2814C8D50 = v21;

    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    v23 = sub_232266254(0xD000000000000038, 0x8000000232418F70, &unk_232417908, v22);

    qword_2814C8D48 = v23;
  }

  else
  {
    if (qword_2814C7830 != -1)
    {
      v13 = OUTLINED_FUNCTION_48_0(&qword_2814C7830);
    }

    OUTLINED_FUNCTION_28_0(v13, qword_2814C8D28);
    (*(v5 + 16))(v9);
    v25 = sub_232401108();
    v26 = sub_232401368();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v27);
      _os_log_impl(&dword_23224A000, v25, v26, "PPTextUnderstandingObservationSystem: disabled", v1, 2u);
      OUTLINED_FUNCTION_30();
    }

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_232266188()
{
  OUTLINED_FUNCTION_12();
  v1 = qword_2814C8D20;
  *(v0 + 16) = qword_2814C8D20;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_63_0(v2);

    return sub_232266C50();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_232266254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_232401378();
  OUTLINED_FUNCTION_40();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_67();
  v15 = v14 - v13;
  v16 = sub_232401168();
  v17 = [objc_opt_self() defaultCenter];
  sub_232401388();

  OUTLINED_FUNCTION_84_0();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  OUTLINED_FUNCTION_84_0();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v5;
  sub_23226E3A0(&unk_2814C77A0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);

  v20 = sub_232401138();

  (*(v11 + 8))(v15, v9);
  return v20;
}

uint64_t sub_23226646C()
{
  OUTLINED_FUNCTION_12();
  v1 = qword_2814C8D20;
  *(v0 + 16) = qword_2814C8D20;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_63_0(v2);

    return sub_2322699A8();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_232266538()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_23226665C(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_232401128();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  if (*a1 == 1)
  {
    if (qword_2814C7830 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v7, qword_2814C8D28);
    (*(v8 + 16))(v13, v14, v7);

    v15 = sub_232401108();
    v16 = sub_232401368();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_23224ED04(a3, a4, &v28);
      _os_log_impl(&dword_23224A000, v15, v16, "PPTextUnderstandingObserver: %s publisher finished", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x2383841F0](v18, -1, -1);
      MEMORY[0x2383841F0](v17, -1, -1);
    }

    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    if (qword_2814C7830 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_2814C8D28);
    (*(v8 + 16))(v11, v20, v7);

    v21 = sub_232401108();
    v22 = sub_232401348();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_23224ED04(a3, a4, &v28);
      *(v23 + 12) = 2112;
      swift_allocError();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_23224A000, v21, v22, "PPTextUnderstandingObserver: %s publisher failed: %@", v23, 0x16u);
      sub_232257C68(v24, &qword_27DD91290, &qword_232417860);
      MEMORY[0x2383841F0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2383841F0](v25, -1, -1);
      MEMORY[0x2383841F0](v23, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_232266A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2814C7838 != -1)
  {
    swift_once();
  }

  return sub_232400D18();
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

uint64_t sub_232266B68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_232401128();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_232401118();
}

uint64_t sub_232266BE4(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_232400C48();
  sub_232400C48();
  *(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_232266C50()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_232400C98();
  v1[10] = v2;
  OUTLINED_FUNCTION_2_0(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_61();
  v1[13] = swift_task_alloc();
  v4 = sub_232401128();
  v1[14] = v4;
  OUTLINED_FUNCTION_2_0(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_61();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232266DB0()
{
  OUTLINED_FUNCTION_87_0();
  v1 = v0[8];
  v2 = *(v1 + 112);
  if (!v2)
  {
    *(v1 + 112) = sub_232267664();

    v2 = *(v1 + 112);
    if (!v2)
    {
      if (qword_2814C7F00 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
      }

      __swift_project_value_buffer(v0[14], qword_2814C8D98);
      v56 = OUTLINED_FUNCTION_23_0();
      v57(v56);
      v58 = sub_232401108();
      v59 = sub_232401348();
      if (OUTLINED_FUNCTION_59_0(v59))
      {
        *OUTLINED_FUNCTION_57_0() = 0;
        OUTLINED_FUNCTION_58_0(&dword_23224A000, v60, v61, "PPTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_52_0();
      }

      v62 = OUTLINED_FUNCTION_47();
      v63(v62);
LABEL_28:
      OUTLINED_FUNCTION_25_0();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_70_0();

      __asm { BRAA            X1, X16 }
    }

    v1 = v0[8];
  }

  v0[22] = v2;
  v3 = OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress;
  if (*(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) == 1)
  {
    v4 = qword_2814C7F00;

    if (v4 != -1)
    {
      v5 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
    }

    v6 = OUTLINED_FUNCTION_16_0(v5, qword_2814C8D98);
    v7(v6);
    v8 = sub_232401108();
    v9 = sub_232401338();
    if (OUTLINED_FUNCTION_59_0(v9))
    {
      *OUTLINED_FUNCTION_57_0() = 0;
      OUTLINED_FUNCTION_96(&dword_23224A000, v10, v11, "PPTextUnderstandingObserver: delayedResultsNotificationInProgress = true");
      OUTLINED_FUNCTION_54();
    }

    v12 = OUTLINED_FUNCTION_37_0();
    v13(v12);
    goto LABEL_28;
  }

  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];

  sub_232400C78();
  OUTLINED_FUNCTION_81_0();
  v17 = OUTLINED_FUNCTION_72_0();
  v18(v17);
  sub_232400C58();
  v20 = v19;
  v21 = *(v16 + 8);
  v22 = OUTLINED_FUNCTION_37_0();
  v21(v22);
  v23 = (v21)(v14, v15);
  if (v20 < 2.0)
  {
    if (qword_2814C7F00 != -1)
    {
      v23 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
    }

    v24 = OUTLINED_FUNCTION_16_0(v23, qword_2814C8D98);
    v25(v24);
    v26 = sub_232401108();
    v27 = sub_232401338();
    if (OUTLINED_FUNCTION_53_0(v27))
    {
      v28 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v28);
      OUTLINED_FUNCTION_19_0();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_30();
    }

    v34 = v0[8];
    v35 = v0[9];

    v36 = OUTLINED_FUNCTION_37_0();
    v37(v36);
    *(v1 + v3) = 1;
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    *(v38 + 24) = v35;

    sub_232400D18();

    goto LABEL_28;
  }

  if (qword_2814C7F00 != -1)
  {
    v23 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
  }

  v39 = OUTLINED_FUNCTION_28_0(v23, qword_2814C8D98);
  v40 = OUTLINED_FUNCTION_55_0(v39);
  v41(v40);
  v42 = sub_232401108();
  v43 = sub_232401328();
  if (OUTLINED_FUNCTION_53_0(v43))
  {
    v44 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_64_0(v44);
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    OUTLINED_FUNCTION_30();
  }

  v50 = v0[15];

  v0[27] = *(v50 + 8);
  v51 = OUTLINED_FUNCTION_37_0();
  v52(v51);
  v53 = swift_task_alloc();
  v0[28] = v53;
  *v53 = v0;
  v53[1] = sub_232267278;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_70_0();

  return sub_232267FA8();
}

uint64_t sub_232267278()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2322674C4;
  }

  else
  {
    v6 = sub_23226739C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23226739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v10 = OUTLINED_FUNCTION_76_0();
  v11(v10);
  v12 = sub_232401108();
  v13 = sub_232401328();
  if (OUTLINED_FUNCTION_59_0(v13))
  {
    v14 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v14);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v15, v16, "PPTextUnderstandingObserver: results handler finished");
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_46_0();
  v17();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v18 = OUTLINED_FUNCTION_22_0();
  v19(v18);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_2322674C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v13 = OUTLINED_FUNCTION_61_0();
  v14(v13);
  v15 = v10;
  v16 = sub_232401108();
  v17 = sub_232401348();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v11 + 232);
  if (v18)
  {
    OUTLINED_FUNCTION_97();
    v20 = OUTLINED_FUNCTION_74();
    *v12 = 138412290;
    v21 = v19;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v22;
    *v20 = v22;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    sub_232257C68(v20, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_46_0();
  v28();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v29 = OUTLINED_FUNCTION_22_0();
  v30(v29);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

void *sub_232267664()
{
  v1 = sub_232401128();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67();
  v7 = v6 - v5;
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for TextUnderstandingImporter();
    swift_allocObject();
    return TextUnderstandingImporter.init(database:)(v9);
  }

  else
  {
    if (qword_2814C7F00 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
    }

    v11 = __swift_project_value_buffer(v1, qword_2814C8D98);
    (*(v3 + 16))(v7, v11, v1);
    v12 = sub_232401108();
    v13 = sub_232401348();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v14);
      _os_log_impl(&dword_23224A000, v12, v13, "PPTextUnderstandingObserver: PPSQLDatabase failed to initialize.", v0, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v3 + 8))(v7, v1);
    return 0;
  }
}

uint64_t sub_232267804(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_232401128();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_2324014D8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23226792C, 0, 0);
}

uint64_t sub_23226792C()
{
  OUTLINED_FUNCTION_22();
  sub_232401618();
  sub_232401578();
  v1 = OUTLINED_FUNCTION_50();
  *(v0 + 80) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_0(v1);

  return v3(v2);
}

uint64_t sub_2322679D4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  *(v6 + 88) = v0;

  v7 = OUTLINED_FUNCTION_47();
  v8(v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232267B28()
{
  OUTLINED_FUNCTION_65_0();
  if (qword_2814C7F00 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
  }

  __swift_project_value_buffer(*(v0 + 24), qword_2814C8D98);
  v1 = OUTLINED_FUNCTION_23_0();
  v2(v1);
  v3 = sub_232401108();
  v4 = sub_232401338();
  if (OUTLINED_FUNCTION_59_0(v4))
  {
    v5 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v5);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v6, v7, "PPTextUnderstandingObserver: re-posting distributedResults");
    OUTLINED_FUNCTION_54();
  }

  v8 = *(v0 + 16);

  v9 = OUTLINED_FUNCTION_47();
  v10(v9);

  return MEMORY[0x2822009F8](sub_232267DD0, v8, 0);
}

uint64_t sub_232267C3C()
{
  OUTLINED_FUNCTION_65_0();
  if (qword_2814C7F00 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
  }

  v2 = v0[11];
  v3 = v0[4];
  v4 = OUTLINED_FUNCTION_16_0(v1, qword_2814C8D98);
  v5(v4);
  v6 = v2;
  v7 = sub_232401108();
  v8 = sub_232401348();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  if (v9)
  {
    OUTLINED_FUNCTION_97();
    v11 = OUTLINED_FUNCTION_74();
    *v3 = 138412290;
    v12 = v10;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_232257C68(v11, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  OUTLINED_FUNCTION_15();

  return v19();
}

uint64_t sub_232267DD0()
{
  OUTLINED_FUNCTION_12();
  *(*(v0 + 16) + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_90(v1);
  *v2 = v3;
  v2[1] = sub_232267E64;
  OUTLINED_FUNCTION_24_0();

  return sub_232266C50();
}

uint64_t sub_232267E64()
{
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232267FA8()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_232401018();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_62();
  v5 = sub_232400E58();
  v1[7] = v5;
  OUTLINED_FUNCTION_2_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_62();
  v7 = sub_232401068();
  v1[10] = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_62();
  v9 = sub_232400EE8();
  v1[13] = v9;
  OUTLINED_FUNCTION_2_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_232268130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  if (qword_2814C7F30 != -1)
  {
    swift_once();
  }

  v12 = sub_232400DD8();
  *(v10 + 128) = v12;
  *(v10 + 136) = sub_23226E3A0(&qword_2814C7F80, MEMORY[0x277D203F0], MEMORY[0x277D203E8]);
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_2_2();
  v17 = sub_23226AEDC(v13, v14, v15, v16);
  *(v10 + 144) = v17;
  *(v10 + 152) = v12;

  if (v12)
  {
    goto LABEL_4;
  }

  v27 = *(v17 + 2);
  *(v10 + 160) = v27;
  if (v27)
  {
    OUTLINED_FUNCTION_38_0();
    *(v10 + 424) = v28;
    OUTLINED_FUNCTION_7_0();
    *(v10 + 168) = v29;
    *(v10 + 176) = v11;
    *(v10 + 184) = 0;

    v30 = OUTLINED_FUNCTION_14_0();
    v11(v30);
    v31 = swift_task_alloc();
    *(v10 + 192) = v31;
    *v31 = v10;
    v31[1] = sub_232268638;
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_36_0();

    return sub_2322602B4();
  }

  if (qword_2814C7F18 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_2814C7F18);
  }

  v33 = sub_232400DB8();
  *(v10 + 200) = v33;
  OUTLINED_FUNCTION_34_0();
  *(v10 + 208) = sub_23226E3A0(v34, v35, MEMORY[0x277D20398]);
  swift_getKeyPath();
  v36 = OUTLINED_FUNCTION_2_2();
  v40 = sub_23226B5A8(v36, v37, v38, v39);
  *(v10 + 216) = v40;
  *(v10 + 224) = v33;

  if (v33)
  {
    goto LABEL_4;
  }

  v41 = *(v40 + 2);
  *(v10 + 232) = v41;
  if (v41)
  {
    OUTLINED_FUNCTION_38_0();
    *(v10 + 428) = v42;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_80_0(v43);
    v44 = OUTLINED_FUNCTION_14_0();
    v11(v44);
    v45 = swift_task_alloc();
    *(v10 + 264) = v45;
    *v45 = v10;
    OUTLINED_FUNCTION_8_0(v45);
    OUTLINED_FUNCTION_36_0();

    return sub_23226118C();
  }

  if (qword_2814C7F38 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_2814C7F38);
  }

  v47 = sub_232400DC8();
  *(v10 + 272) = v47;
  OUTLINED_FUNCTION_11_0();
  v50 = sub_23226E3A0(v48, v49, MEMORY[0x277D203C8]);
  OUTLINED_FUNCTION_66_0(v50);
  swift_getKeyPath();
  v51 = OUTLINED_FUNCTION_2_2();
  v55 = sub_23226BC74(v51, v52, v53, v54);
  OUTLINED_FUNCTION_79_0(v55);
  if (v47)
  {
LABEL_4:
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  OUTLINED_FUNCTION_86_0();
  if (v56)
  {
    OUTLINED_FUNCTION_38_0();
    *(v10 + 432) = v57;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_42_0(v58);
    v59 = OUTLINED_FUNCTION_14_0();
    v11(v59);
    v60 = swift_task_alloc();
    v61 = OUTLINED_FUNCTION_89(v60);
    *v61 = v62;
    OUTLINED_FUNCTION_4_2(v61);
    OUTLINED_FUNCTION_36_0();

    return sub_232261884();
  }

  else
  {

    if (qword_2814C7F20 != -1)
    {
      OUTLINED_FUNCTION_9_0(&qword_2814C7F20);
    }

    v64 = sub_232400DE8();
    OUTLINED_FUNCTION_93(v64);
    OUTLINED_FUNCTION_5_0();
    v67 = sub_23226E3A0(v65, v66, MEMORY[0x277D203F8]);
    OUTLINED_FUNCTION_49_0(v67);
    swift_getKeyPath();
    v68 = OUTLINED_FUNCTION_2_2();
    v72 = sub_23226C340(v68, v69, v70, v71);
    OUTLINED_FUNCTION_60_0(v72);
    OUTLINED_FUNCTION_73_0();
    if (v73)
    {
      OUTLINED_FUNCTION_38_0();
      *(v10 + 436) = v74;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_27_0(v75);
      v76 = OUTLINED_FUNCTION_14_0();
      v11(v76);
      v77 = swift_task_alloc();
      v78 = OUTLINED_FUNCTION_74_0(v77);
      *v78 = v79;
      OUTLINED_FUNCTION_1_3(v78);
      OUTLINED_FUNCTION_36_0();

      return sub_232261F20();
    }

    else
    {

      v81 = swift_task_alloc();
      v82 = OUTLINED_FUNCTION_75_0(v81);
      *v82 = v83;
      OUTLINED_FUNCTION_3_2(v82);
      OUTLINED_FUNCTION_36_0();

      return sub_232260BE4(v84);
    }
  }
}