uint64_t sub_1D8C938D8(uint64_t a1)
{
  v1 = a1;
  sub_1D8C93BCC(a1);
  v2 = sub_1D8CD7AD4();

  v3 = MGCopyAnswer();

  if (v3 && (v22[2] = v3, swift_dynamicCast()))
  {
    v4 = v22[0];
    if (qword_1ED9C55C0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED9C55C0);
    }

    v5 = sub_1D8CD7A04();
    __swift_project_value_buffer(v5, qword_1ED9C55C8);
    v6 = sub_1D8CD79E4();
    v7 = sub_1D8CD7E14();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136315395;
      *(v8 + 4) = OUTLINED_FUNCTION_2_1(v9);
      *(v8 + 12) = 2085;
      v10 = sub_1D8C93BCC(v1);
      v12 = sub_1D8C9D088(v10, v11, v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_1D8C92000, v6, v7, "Got value of type %s for MGQuery with key %{sensitive}s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    if (qword_1ED9C55C0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED9C55C0);
    }

    v13 = sub_1D8CD7A04();
    __swift_project_value_buffer(v13, qword_1ED9C55C8);
    v14 = sub_1D8CD79E4();
    v15 = sub_1D8CD7E24();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315395;
      *(v16 + 4) = OUTLINED_FUNCTION_2_1(v17);
      *(v16 + 12) = 2085;
      v18 = sub_1D8C93BCC(v1);
      v20 = sub_1D8C9D088(v18, v19, v22);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1D8C92000, v14, v15, "Did not get value of type %s for MGQuery with key %{sensitive}s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_3_0();
    }

    return 0;
  }

  return v4;
}

unint64_t sub_1D8C93BCC(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_6()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x1DA727900);
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, char a20)
{
  a14 = a17;
  a15 = a18;
  a13 = v20;

  return UserAgent.init(_:requestor:)(&a14, &a13, &a20);
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_17()
{
  v2 = *(v1 - 208);
  v3 = *(v0 + 40);
  *(v1 - 208) = *(v0 + 24);
  *(v1 - 192) = v3;
  result = *(v0 + 56);
  *(v1 - 176) = result;
  *(v1 - 160) = *(v0 + 72);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 41) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return MEMORY[0x1EEDC6A10](va, a2, a2, v6, v6);
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1D8C94004()
{
  v0 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v0, qword_1ED9C55C8);
  __swift_project_value_buffer(v0, qword_1ED9C55C8);
  return sub_1D8CD79F4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v15 = a1[1];
  a10 = *a1;
  a11 = v15;
  v17 = a1[3];
  a12 = a1[2];
  v16 = a12;
  a13 = v17;
  *v13 = a10;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;

  return sub_1D8C969AC(&a10, &a2);
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_1D8CD7AC4();
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1D8C980C0(v14, v12, a1, a2, a3, v10, v11, v13, a9, a10);
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1D8CD7524();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_1D8CD8154();
}

uint64_t NSURLSession.toDataSource(onSetup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for URLSessionDataSource();
  v8 = swift_allocObject();
  v9 = v3;
  result = sub_1D8C944C4(a1, a2);
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  a3[3] = v7;
  a3[4] = &off_1F54541D8;
  *a3 = v8;
  return result;
}

uint64_t sub_1D8C94470()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9E8, "Pg");
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D8C944C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8C94514@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  *a5 = *a3;
  *(a5 + 16) = v8;
}

uint64_t Client.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NSFileManager.parsecdAssetsDirectoryURL.getter()
{
  v1 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-v12];
  v25[0] = 0;
  v14 = [v1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v25];
  v15 = v25[0];
  if (v14)
  {
    v16 = v14;
    sub_1D8CD74E4();
    v17 = v15;

    (*(v4 + 32))(v13, v11, v2);
    sub_1D8CD74B4();
    sub_1D8CD7464();
    v18 = *(v4 + 8);
    v18(v8, v2);
    v19 = (v18)(v13, v2);
    v20 = 0;
  }

  else
  {
    v21 = v25[0];
    v22 = sub_1D8CD7454();

    swift_willThrow();
    v20 = 1;
  }

  return OUTLINED_FUNCTION_2_4(v19, v20);
}

void OUTLINED_FUNCTION_3_0()
{

  JUMPOUT(0x1DA727900);
}

BOOL OUTLINED_FUNCTION_3_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 OUTLINED_FUNCTION_3_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D8CD7904(a1, a2, 2, a4, v6, v4, v5);
}

void OUTLINED_FUNCTION_3_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1D8C9D088(0x676E69727453, 0xE600000000000000, va);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __n128 a22, __int128 a23)
{
  *v23 = a19;
  v23[1] = a20;
  result = a22;
  v23[2] = a22;
  v23[3] = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

double OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_1D8CB1E8C(v5, &v9, &v8);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_14@<X0>(__int128 *a1@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v1[1] = *a1;
  v1[2] = v5;
  v1[3] = v4;
  v1[4] = v3;
  v7 = a1[1];
  v8 = a1[2];
  v1[5] = v6;
  v1[6] = v7;
  v9 = a1[3];
  v1[7] = v8;
  v1[8] = v9;

  return sub_1D8C969AC((v1 + 1), (v1 + 9));
}

__n128 OUTLINED_FUNCTION_2_15()
{
  v2 = *(v0 + 40);
  *(v1 - 144) = *(v0 + 24);
  *(v1 - 128) = v2;
  result = *(v0 + 56);
  *(v1 - 112) = result;
  *(v1 - 96) = *(v0 + 72);
  return result;
}

uint64_t NSFileManager.parsecdCustomFBDirectoryURL.getter()
{
  v0 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21[-v8];
  v10 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37();
  v16 = v15 - v14;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v17 = sub_1D8C953A4(v9, &qword_1ECAAC668, &qword_1D8CD8FA0);
    v18 = 1;
  }

  else
  {
    strcpy(v21, "CustomFeedback");
    v21[15] = -18;
    (*(v2 + 104))(v6, *MEMORY[0x1E6968F58], v0);
    sub_1D8C94EC8();
    sub_1D8CD7534();
    (*(v2 + 8))(v6, v0);
    v19 = *(v12 + 8);
    v19(v9, v10);
    sub_1D8CD7464();
    v17 = (v19)(v16, v10);
    v18 = 0;
  }

  return OUTLINED_FUNCTION_2_4(v17, v18);
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  sub_1D8CAD7DC((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_1D8CD8254();
}

unint64_t sub_1D8C94EC8()
{
  result = qword_1ED9C5580;
  if (!qword_1ED9C5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C5580);
  }

  return result;
}

uint64_t NSFileManager.parsecdSessionFBDirectoryURL.getter()
{
  v1 = v0;
  v2 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  v9 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37();
  v15 = v14 - v13;
  sub_1D8C950EC(v1);
  (*(v4 + 104))(v8, *MEMORY[0x1E6968F58], v2);
  sub_1D8C94EC8();
  sub_1D8CD7534();
  (*(v4 + 8))(v8, v2);
  v16 = (*(v11 + 8))(v15, v9);
  return OUTLINED_FUNCTION_2_4(v16, 0);
}

void sub_1D8C950EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37();
  v12 = v11 - v10;
  v20 = a1;
  sub_1D8C95360();
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA98, &qword_1D8CDA918);
  if (swift_dynamicCast())
  {
    sub_1D8C9B778(v18, &v21);
    v14 = v22;
    v15 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    (*(v15 + 8))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1D8C953A4(v18, &qword_1ECAACAA0, &qword_1D8CDCEA0);
    if (qword_1ED9C4C18 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED9C4C20;
    os_unfair_lock_lock((qword_1ED9C4C20 + 32));
    sub_1D8C95404((v16 + 16), &v21);
    os_unfair_lock_unlock((v16 + 32));
    if (!v1)
    {
      (*(v8 + 104))(v12, *MEMORY[0x1E6968F58], v6);
      v17 = sub_1D8CD7554();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
      sub_1D8CD7524();
    }
  }
}

unint64_t sub_1D8C95360()
{
  result = qword_1ED9C4118;
  if (!qword_1ED9C4118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C4118);
  }

  return result;
}

uint64_t sub_1D8C953A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D8C95404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  if (v5)
  {
    *a2 = *a1;
    a2[1] = v5;
  }

  v7 = static PrimaryPersonaContainerPathLookup.path(for:)(0xD000000000000024);
  if (!v2)
  {
    *a1 = v7;
    a1[1] = v8;
    *a2 = v7;
    a2[1] = v8;
  }

  if (qword_1ECAAC620 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v9 = sub_1D8CD7A04();
  __swift_project_value_buffer(v9, qword_1ECAACC80);
  v10 = v2;
  v11 = sub_1D8CD79E4();
  v12 = sub_1D8CD7E24();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1D8C92000, v11, v12, "access failed with error: %{public}@", v13, 0xCu);
    sub_1D8CC06BC(v14);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  return swift_willThrow();
}

void SessionType.init(withClientIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    a1 = sub_1D8CD7B74();
    v6 = v5;

    OUTLINED_FUNCTION_4_7();
    v7 = sub_1D8C94EC8();
    if (OUTLINED_FUNCTION_0_18(v7, MEMORY[0x1E69E6158], v8, v9, v10, v11))
    {

      a1 = 0;
      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_7();
      if (OUTLINED_FUNCTION_0_18(v12, MEMORY[0x1E69E6158], v13, v14, v15, v16))
      {

        a1 = 0;
        v6 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_4_7();
        if (OUTLINED_FUNCTION_0_18(v17, MEMORY[0x1E69E6158], v18, v19, v20, v21))
        {

          a1 = 0;
          v6 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_4_7();
          if (OUTLINED_FUNCTION_0_18(v22, MEMORY[0x1E69E6158], v23, v24, v25, v26))
          {

            a1 = 0;
            v6 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_4_7();
            if (OUTLINED_FUNCTION_0_18(v27, MEMORY[0x1E69E6158], v28, v29, v30, v31))
            {

              a1 = 0;
              v6 = 5;
            }

            else
            {
              OUTLINED_FUNCTION_4_7();
              if (OUTLINED_FUNCTION_0_18(v32, MEMORY[0x1E69E6158], v33, v34, v35, v36))
              {

                a1 = 0;
                v6 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_4_7();
                v42 = OUTLINED_FUNCTION_0_18(v37, MEMORY[0x1E69E6158], v38, v39, v40, v41);
                if (v42)
                {

                  a1 = 0;
                  v6 = 8;
                }

                else if (OUTLINED_FUNCTION_0_18(v42, MEMORY[0x1E69E6158], v43, v44, v45, v46, a1, v6, 0xD000000000000010, 0x80000001D8CDD3D0) & 1) != 0 || (OUTLINED_FUNCTION_4_7(), (OUTLINED_FUNCTION_0_18(v47, MEMORY[0x1E69E6158], v48, v49, v50, v51)))
                {

                  a1 = 0;
                  v6 = 9;
                }

                else
                {
                  OUTLINED_FUNCTION_4_7();
                  if (OUTLINED_FUNCTION_0_18(v52, MEMORY[0x1E69E6158], v53, v54, v55, v56))
                  {

                    a1 = 0;
                    v6 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_4_7();
                    if (OUTLINED_FUNCTION_0_18(v57, MEMORY[0x1E69E6158], v58, v59, v60, v61))
                    {

                      a1 = 0;
                      v6 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_4_7();
                      v67 = OUTLINED_FUNCTION_0_18(v62, MEMORY[0x1E69E6158], v63, v64, v65, v66);
                      if (v67 & 1) != 0 || (v72 = OUTLINED_FUNCTION_0_18(v67, MEMORY[0x1E69E6158], v68, v69, v70, v71, a1, v6, 0xD000000000000012, 0x80000001D8CDD3A0), (v72))
                      {

                        a1 = 0;
                        v6 = 12;
                      }

                      else if (OUTLINED_FUNCTION_0_18(v72, MEMORY[0x1E69E6158], v73, v74, v75, v76, a1, v6, 0xD000000000000015, 0x80000001D8CDD3F0) & 1) != 0 || (OUTLINED_FUNCTION_4_7(), (OUTLINED_FUNCTION_0_18(v77, MEMORY[0x1E69E6158], v78, v79, v80, v81)))
                      {

                        a1 = 0;
                        v6 = 13;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_7();
                        if (OUTLINED_FUNCTION_0_18(v82, MEMORY[0x1E69E6158], v83, v84, v85, v86))
                        {

                          a1 = 0;
                          v6 = 15;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_4_7();
                          if (OUTLINED_FUNCTION_0_18(v87, MEMORY[0x1E69E6158], v88, v89, v90, v91))
                          {

                            a1 = 0;
                            v6 = 16;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_4_7();
                            if (OUTLINED_FUNCTION_0_18(v92, MEMORY[0x1E69E6158], v93, v94, v95, v96))
                            {

                              a1 = 0;
                              v6 = 14;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_4_7();
                              if (OUTLINED_FUNCTION_0_18(v97, MEMORY[0x1E69E6158], v98, v99, v100, v101))
                              {

                                a1 = 0;
                                v6 = 7;
                              }

                              else
                              {
                                if (qword_1ED9C4148 != -1)
                                {
                                  swift_once();
                                }

                                v102 = sub_1D8CD7A04();
                                __swift_project_value_buffer(v102, qword_1ED9C5650);

                                v103 = sub_1D8CD79E4();
                                v104 = sub_1D8CD7E24();

                                if (os_log_type_enabled(v103, v104))
                                {
                                  v105 = swift_slowAlloc();
                                  v106 = swift_slowAlloc();
                                  v107 = v106;
                                  *v105 = 136446210;
                                  *(v105 + 4) = sub_1D8C9D088(a1, v6, &v107);
                                  _os_log_impl(&dword_1D8C92000, v103, v104, "Failed to get session type for %{public}s", v105, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0Tm(v106);
                                  MEMORY[0x1DA727900](v106, -1, -1);
                                  MEMORY[0x1DA727900](v105, -1, -1);
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

  else
  {
    v6 = 0;
  }

  *a3 = a1;
  a3[1] = v6;
}

void OUTLINED_FUNCTION_85(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 32) = a3;
  *(result + 40) = v3;
  *(result + 72) = a2;
  strcpy((result + 48), "invalid client");
  *(result + 63) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEDC6A10](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_1D8CD7484();
}

uint64_t OUTLINED_FUNCTION_4_9()
{
}

uint64_t sub_1D8C95CF4(uint64_t a1)
{
  v4 = *v1;
  sub_1D8CD8254();
  SessionType.hash(into:)(v3);
  return sub_1D8CD8284();
}

uint64_t SessionType.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 1:
      v3 = 1;
      goto LABEL_18;
    case 2:
      v3 = 2;
      goto LABEL_18;
    case 3:
      v3 = 3;
      goto LABEL_18;
    case 4:
      v3 = 4;
      goto LABEL_18;
    case 5:
      v3 = 5;
      goto LABEL_18;
    case 6:
      v3 = 6;
      goto LABEL_18;
    case 7:
      v3 = 7;
      goto LABEL_18;
    case 8:
      v3 = 8;
      goto LABEL_18;
    case 9:
      v3 = 9;
      goto LABEL_18;
    case 10:
      v3 = 10;
      goto LABEL_18;
    case 11:
      v3 = 11;
      goto LABEL_18;
    case 12:
      v3 = 12;
      goto LABEL_18;
    case 13:
      v3 = 13;
      goto LABEL_18;
    case 14:
      v3 = 14;
      goto LABEL_18;
    case 15:
      v3 = 15;
      goto LABEL_18;
    case 16:
      v3 = 16;
LABEL_18:
      result = MEMORY[0x1DA7270D0](v3);
      break;
    default:
      MEMORY[0x1DA7270D0](0);
      if (v2)
      {
        sub_1D8CD8274();

        result = sub_1D8CD7BD4();
      }

      else
      {
        result = sub_1D8CD8274();
      }

      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20PegasusConfiguration11SessionTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_allocObject();
}

uint64_t static SessionType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_37;
      }

      v6 = OUTLINED_FUNCTION_5_4(*a1, 1);
      sub_1D8C96324(v6, 1);
      return v5;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 2);
      v8 = 2;
      goto LABEL_34;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 3);
      v8 = 3;
      goto LABEL_34;
    case 4:
      if (v5 != 4)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 4);
      v8 = 4;
      goto LABEL_34;
    case 5:
      if (v5 != 5)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 5);
      v8 = 5;
      goto LABEL_34;
    case 6:
      if (v5 != 6)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 6);
      v8 = 6;
      goto LABEL_34;
    case 7:
      if (v5 != 7)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 7);
      v8 = 7;
      goto LABEL_34;
    case 8:
      if (v5 != 8)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 8);
      v8 = 8;
      goto LABEL_34;
    case 9:
      if (v5 != 9)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 9);
      v8 = 9;
      goto LABEL_34;
    case 10:
      if (v5 != 10)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 10);
      v8 = 10;
      goto LABEL_34;
    case 11:
      if (v5 != 11)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 11);
      v8 = 11;
      goto LABEL_34;
    case 12:
      if (v5 != 12)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 12);
      v8 = 12;
      goto LABEL_34;
    case 13:
      if (v5 != 13)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 13);
      v8 = 13;
      goto LABEL_34;
    case 14:
      if (v5 != 14)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 14);
      v8 = 14;
      goto LABEL_34;
    case 15:
      if (v5 != 15)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 15);
      v8 = 15;
      goto LABEL_34;
    case 16:
      if (v5 != 16)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 16);
      v8 = 16;
      goto LABEL_34;
    default:
      if ((v5 - 1) >= 0x10)
      {
        if (v3)
        {
          if (!v5)
          {
            sub_1D8C9E824(*a2, 0);
            v9 = v4;
            v10 = 0;
            goto LABEL_38;
          }

          v14 = *a1;
          if (v2 == v4 && v3 == v5)
          {
            OUTLINED_FUNCTION_6_6(v14, v3);
            v7 = v2;
            v8 = v3;
LABEL_34:
            sub_1D8C96324(v7, v8);
          }

          else
          {
            v16 = sub_1D8CD8154();
            v17 = OUTLINED_FUNCTION_3_4();
            sub_1D8C9E824(v17, v18);
            sub_1D8C9E824(v2, v3);
            v19 = OUTLINED_FUNCTION_5_4(v2, v3);
            sub_1D8C96324(v19, v5);
            if ((v16 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {

          v20 = OUTLINED_FUNCTION_3_4();
          sub_1D8C9E824(v20, v21);
          sub_1D8C9E824(v2, 0);
          v22 = OUTLINED_FUNCTION_5_4(v2, 0);
          sub_1D8C96324(v22, v5);
          if (v5)
          {
            goto LABEL_39;
          }
        }

        return 1;
      }

LABEL_37:
      v9 = OUTLINED_FUNCTION_3_4();
LABEL_38:
      OUTLINED_FUNCTION_6_6(v9, v10);
LABEL_39:
      v11 = OUTLINED_FUNCTION_3_4();
      sub_1D8C96324(v11, v12);
      return 0;
  }
}

uint64_t sub_1D8C96324(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0x10)
  {
  }

  return result;
}

uint64_t sub_1D8C9633C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D8C9639C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
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

uint64_t UserAgent.client.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

BOOL Config.isDefault.getter()
{
  v0 = OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72(v2, v3);
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  *&v16 = OUTLINED_FUNCTION_17(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24, v25, v26).n128_u64[0];
  if (v17)
  {
    if (OUTLINED_FUNCTION_39(&v22, v12, v13, MEMORY[0x1E69E6158], v14, v15, v16))
    {
      v18 = v23;
      v19 = v22 & 0xFFFFFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D8CADF40(v27, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  v19 = 0;
  v18 = 0xE000000000000000;
LABEL_9:

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19;
  }

  return v20 == 0;
}

id OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, unsigned __int8 a11, unsigned __int8 a12)
{

  return sub_1D8CA03FC(a10, a11 | (a12 << 8));
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8CD8154();
}

_OWORD *OUTLINED_FUNCTION_20_0()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1D8CAD7DC(v4, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_dynamicCast();
}

BOOL sub_1D8C96630()
{
  v1 = *(*(v0 + 200) + 16);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 24) > 0 || *(v1 + 16) - 1 < 2;
  os_unfair_lock_unlock((v1 + 48));
  return v2;
}

uint64_t sub_1D8C966A8()
{
  v1 = *(v0 + 240);
  v2 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t UserAgent.fullString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D8C96738()
{
  OUTLINED_FUNCTION_19();
  sub_1D8C96A08(*(v0 + 288), (v0 + 96));
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 96);
    if (v2)
    {
      v3 = *(v0 + 104);
      if (*(v0 + 336) == 1)
      {
        *(v0 + 224) = v2;
        *(v0 + 232) = v3;
        *(v0 + 240) = v1;
        *(v0 + 248) = *(v0 + 120);
        *(v0 + 264) = *(v0 + 136);
        *(v0 + 280) = *(v0 + 152);
        v4 = swift_task_alloc();
        *(v0 + 304) = v4;
        *v4 = v0;
        v4[1] = sub_1D8CB6B78;

        return sub_1D8CA15CC(v0 + 224);
      }

      else
      {
        *(v0 + 160) = v2;
        *(v0 + 168) = v3;
        *(v0 + 176) = v1;
        *(v0 + 184) = *(v0 + 120);
        *(v0 + 200) = *(v0 + 136);
        *(v0 + 216) = *(v0 + 152);
        v10 = swift_task_alloc();
        *(v0 + 320) = v10;
        *v10 = v0;
        v10[1] = sub_1D8C9B9EC;

        return sub_1D8C96AE4(v0 + 160);
      }
    }

    sub_1D8C9B71C(v0 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7E0, &qword_1D8CD95D0);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_14_0(inited, xmmword_1D8CD8F40);
  OUTLINED_FUNCTION_4_2(v7, MEMORY[0x1E69E6158], v8);
  sub_1D8CD7A84();
  OUTLINED_FUNCTION_17_1(objc_allocWithZone(MEMORY[0x1E696ABC0]), 0x80000001D8CDDBE0);
  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t ConfigurationManager.configuration(for:forceFetch:)(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D8C96738, 0, 0);
}

double sub_1D8C96A08@<D0>(unint64_t a1@<X0>, __int128 *a2@<X8>)
{
  switch(a1)
  {
    case 8uLL:
      goto LABEL_4;
    case 7uLL:
      if (qword_1ED9C40D0 != -1)
      {
        OUTLINED_FUNCTION_2_3(&qword_1ED9C40D0);
      }

      v6 = unk_1ED9C40E8;
      v14 = xmmword_1ED9C40D8;
      v15 = unk_1ED9C40E8;
      v7 = xmmword_1ED9C40F8;
      v8 = unk_1ED9C4108;
      v16 = xmmword_1ED9C40F8;
      v17 = unk_1ED9C4108;
      *a2 = xmmword_1ED9C40D8;
      a2[1] = v6;
      a2[2] = v7;
      a2[3] = v8;
      sub_1D8C969AC(&v14, &v9);
      break;
    case 5uLL:
LABEL_4:
      Client.init(_:)(a1, &v9);
      v12 = v9;
      v13 = v10;
      v11 = 0;
      UserAgent.init(_:requestor:)(&v12, &v11, &v14);
      v3 = v15;
      *a2 = v14;
      a2[1] = v3;
      result = *&v16;
      v5 = v17;
      a2[2] = v16;
      a2[3] = v5;
      return result;
    default:
      result = 0.0;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
      break;
  }

  return result;
}

uint64_t sub_1D8C96B14()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_87();
  swift_allocObject();

  OUTLINED_FUNCTION_57(v1, v2, v3, v4);
  OUTLINED_FUNCTION_35(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_79(v13);

  return sub_1D8C986F8();
}

void sub_1D8C96BF0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;

    os_unfair_lock_unlock((v1 + 48));
  }
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2)
{

  return swift_task_create();
}

uint64_t type metadata accessor for ResourceAccessSpan(uint64_t a1)
{
  result = qword_1ED9C3D38;
  if (!qword_1ED9C3D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8C96CAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  *(v5 + qword_1ED9C3D48) = 0;
  *(v5 + qword_1ED9C5628) = 0;
  v11 = v5 + qword_1ED9C5620;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v5 + qword_1ED9C3D50) = 0;
  v12 = (v5 + qword_1ED9C5618);
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  *v11 = a4;
  *(v11 + 8) = a5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8CD8F40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D8C96E60();
    *(inited + 32) = v9;
    *(inited + 40) = v10;
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1D8CD8F50;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D8C96E60();
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    v16 = MEMORY[0x1E69E7738];
    *(v14 + 96) = MEMORY[0x1E69E76D8];
    *(v14 + 104) = v16;
    *(v14 + 64) = v15;
    *(v14 + 72) = a4;
  }

  sub_1D8C96EB4();
}

void OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1D8C96CAC(v4, 1, va, 0, 1);
}

unint64_t sub_1D8C96E60()
{
  result = qword_1ED9C3C20;
  if (!qword_1ED9C3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3C20);
  }

  return result;
}

void sub_1D8C96EB4()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v54 = v2;
  v55 = v3;
  v52 = v4;
  v53 = v5;
  v56 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = sub_1D8CD7674();
  OUTLINED_FUNCTION_3();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_37();
  v23 = v22 - v21;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  v57 = 0xD000000000000010;
  v58 = 0x80000001D8CDDBC0;
  v61 = 45;
  v62 = 0xE100000000000000;
  v59 = 95;
  v60 = 0xE100000000000000;
  v50 = sub_1D8C94EC8();
  OUTLINED_FUNCTION_24();
  sub_1D8CD7F44();
  *(v0 + 96) = sub_1D8CD7EC4();
  OUTLINED_FUNCTION_77();
  v24 = sub_1D8CD7964();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_77();
  v29 = *(v28 + 152);
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_60();
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  *v31 = 0;
  *(v1 + v29) = v30;
  sub_1D8CD7664();
  OUTLINED_FUNCTION_77();
  v33 = v23;
  v34 = v56;
  (*(v19 + 32))(v1 + *(v32 + 144), v33, v17);
  swift_weakAssign();
  *(v1 + 80) = v34;
  v35 = *(v1 + 96);
  OUTLINED_FUNCTION_42();

  sub_1D8CD7934();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  OUTLINED_FUNCTION_77();
  v37 = *(v36 + 136);
  swift_beginAccess();
  sub_1D8C974F4(v16, v1 + v37);
  swift_endAccess();
  v57 = v1;

  v38 = sub_1D8CD7B64();
  v40 = v39;
  v41 = *(*(v8 + 32) + 16);
  os_unfair_lock_lock(v41);
  sub_1D8C97564(v8, v38, v40, v1, &off_1F5454760);

  os_unfair_lock_unlock(v41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v8 + 24);
    ObjectType = swift_getObjectType();
    (*(v42 + 8))(v1, &off_1F5454760, ObjectType, v42);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1D8C979F0(v1 + v37, v13, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v24) == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = *(v1 + 96);
    v45 = sub_1D8CD7E64();
    v46 = sub_1D8C97B40(v34);
    LOBYTE(v50) = v52;
    sub_1D8C980C0(v45, v44, v46, v47, v48, v13, v53, v54, v50, v55);

    OUTLINED_FUNCTION_25();
    (*(v49 + 8))(v13, v24);
    sub_1D8C983F4();

    OUTLINED_FUNCTION_68();
  }
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1D8CB4E28(v5, v4, a3, a4);
}

_OWORD *OUTLINED_FUNCTION_25_0()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1D8CAD7DC(v4, (v2 - 128));
}

uint64_t sub_1D8C97460(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1D8C974F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C97564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_1D8CB1F48(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1D8C976E4();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 40);
  sub_1D8C97728(v14, a2, a3);
  *(a1 + 40) = v16;
  return swift_endAccess();
}

uint64_t sub_1D8C976E4()
{
  OUTLINED_FUNCTION_7_1();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D8C97728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0(a1, a2, a3);
  OUTLINED_FUNCTION_5_0();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA48, &qword_1D8CDBA70);
  OUTLINED_FUNCTION_30_0();
  if (sub_1D8CD8084())
  {
    sub_1D8C9785C(v5, v3);
    OUTLINED_FUNCTION_29_0();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v6;
  if (v11)
  {
    *(v14[7] + 8 * v10) = v4;
    OUTLINED_FUNCTION_39_0();
  }

  else
  {
    sub_1D8C979A8(v10, v5, v3, v4, v14);
    OUTLINED_FUNCTION_39_0();
  }
}

unint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8C9785C(a2, a3);
}

unint64_t sub_1D8C9785C(uint64_t a1, uint64_t a2)
{
  sub_1D8CD8254();
  sub_1D8CD7BD4();
  v4 = sub_1D8CD8284();

  return sub_1D8C978D4(a1, a2, v4);
}

unint64_t sub_1D8C978D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D8CD8154() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D8C979A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1D8C979F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_38();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AE30](a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, __int128 a14)
{
  a14 = *v14;

  SessionType.biomeStreamDescriptor.getter(&a13);
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD8](v1, a1, 64, 7);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

const char *sub_1D8C97B40(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return "configuration";
    case 2:
      return "parsecdSearch";
    case 3:
      return "parsecdZeroKeyWord";
    case 4:
      return "parsecdLookup";
    case 5:
      return "parsecdFlight";
    case 6:
      return "parsecdMoreResults";
    case 7:
      return "parsecdCard";
    case 8:
      return "parsecdWarm";
    case 9:
      return "bagResourceDownload";
    case 10:
      return "pegasusKitVisualSearch";
    case 11:
      return "pegasusKitSiriPersonalization";
    case 12:
      return "pegasusKitHashtagImages";
    case 13:
      return "pegasusKitAssistant";
    case 14:
      return "pegasusKitBagFetchXPC";
    case 15:
      return "pegasusKitContextFetchXPC";
    case 16:
      return "pegasusKitLookup";
    case 17:
      return "pegasusKitSpotlightZKW";
    case 18:
      return "pegasusKitEngagementSearch";
    case 19:
      return "engagementCache";
    case 20:
      return "topicCache";
    case 21:
      return "pegasusKitIntelligencePlatform";
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      return "pegasusKitIntelligenceFlow";
    case 24:
      return "pegasusKitSafariAssistantPrefetch";
    case 25:
      return "pegasusKitSafariAssistantSummarize";
    case 26:
      return "pegasusKitEncryptedVisualSearch";
    case 27:
      return "pegasusKitSportsWatchFace";
    case 28:
      return "pegasusKitLookupSearch";
    case 29:
      return "pegasusKitEncryptedVisualSearchConfig";
    case 30:
      return "pegasusKitSafariSearch";
    case 31:
      return "pegasusKitCameraVisualSearch";
    case 32:
      return "pegasusKitEncryptedPQAGeo";
    case 33:
      return "pegasusKitEncryptedPQAGeoConfig";
    case 34:
      return "pegasusKitEncryptedVisualSearchSupportedUsecases";
    case 35:
      return "pegasusKitEncryptedPQAGeoSupportedUsecases";
    case 37:
      return "pegasusKitFlightUtilities";
    case 38:
      return "pegasusKitFlightUtilitiesSubscribe";
    case 39:
      return "pegasusKitDeviceExpertSearch";
    case 50:
      return "installedAppWhitelist";
    case 60:
      return "assetDeliveryPreloadAsset";
    case 61:
      return "assetDeliveryPrefilterPrefetch";
    case 62:
      return "assetDeliveryGetPreloadedData";
    case 63:
      return "assetDeliveryBloomFilter";
    case 65:
      return "assetDeliveryRetrieveAsset";
    case 66:
      return "assetDeliveryRedact";
    case 67:
      return "assetDeliveryFeatureSupported";
    case 100:
      return "contextFetchAMSTreatments";
    default:
      switch(a1)
      {
        case 200:
          return "feedbackEnumerator";
        case 201:
          return "feedbackFileCreation";
        case 202:
          return "simpleFeedbackEnumerator";
        case 300:
          return "aggregation";
        case 301:
          return "uploadaggregates";
        case 400:
          return "clientXPCConnection";
        case 401:
          return "clientSessionComplete";
        case 500:
          return "sbaPlugin";
        case 600:
          return "parsecdCloudConnectionSubscribe";
        case 601:
          return "parsecdCloudConnectionUnsubscribe";
        case 602:
          return "parsecdCloudConnectionFetchLatestPush";
      }

      if (a1 != 700)
      {
LABEL_90:
        sub_1D8CD81A4();
        __break(1u);
        JUMPOUT(0x1D8C97F2CLL);
      }

      return "parseKeys";
  }
}

void sub_1D8C980C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_2_9();
      sub_1D8CD7914();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_10(v25, xmmword_1D8CD8F40);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_10(v17, xmmword_1D8CD8F50);
      sub_1D8C98368(v18, v19);
      v15 = OUTLINED_FUNCTION_4_3();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_10(v20, xmmword_1D8CDB570);
      sub_1D8C98368(v21, v22);
      v23 = OUTLINED_FUNCTION_4_3();
      sub_1D8C98368(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_10(v10, xmmword_1D8CD97E0);
      sub_1D8C98368(v11, v12);
      v13 = OUTLINED_FUNCTION_4_3();
      sub_1D8C98368(v13, v14);
      sub_1D8C98368(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_10(v26, xmmword_1D8CDB560);
      sub_1D8C98368(v27, v28);
      v29 = OUTLINED_FUNCTION_4_3();
      sub_1D8C98368(v29, v30);
      sub_1D8C98368(a10 + 112, &v26[7]);
      sub_1D8C98368(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_1D8C98368(v15, v16);
      OUTLINED_FUNCTION_2_9();
      sub_1D8CD7914();

      break;
    default:
      return;
  }
}

uint64_t sub_1D8C98368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

uint64_t sub_1D8C983F4()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_1F5454010;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, &type metadata for ResourceAccessActivity);
  if (sub_1D8C985A4(*v2))
  {
    MEMORY[0x1DA726A90](46, 0xE100000000000000);

    MEMORY[0x1DA726A90](0x656372756F736572, 0xEE00737365636341);

    sub_1D8C97B40(v1);
    v3 = sub_1D8CD8024();
    MEMORY[0x1DA726A90](v3);

    MEMORY[0x1DA726A90](46, 0xE100000000000000);

    sub_1D8C985C4(0xD000000000000010, 0x80000001D8CDDBC0, v0);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_1D8C985A4(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && a1 != 1);
  return (v2 & 1) == 0;
}

uint64_t sub_1D8C985C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    *(a3 + 72) = os_transaction_create();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8CD8004();
  }
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

uint64_t OUTLINED_FUNCTION_36_0()
{
}

uint64_t sub_1D8C986F8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  OUTLINED_FUNCTION_36(v4);
  *(v1 + 288) = swift_task_alloc();
  v5 = v3[1];
  *(v1 + 16) = *v3;
  *(v1 + 32) = v5;
  v6 = v3[3];
  *(v1 + 48) = v3[2];
  *(v1 + 64) = v6;
  v7 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  sub_1D8CAD7DC((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a2, ...)
{

  return sub_1D8CD7BD4();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2)
{

  return sub_1D8CB9654(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1D8C98868()
{
  v43 = v0;
  v1 = *(*(v0 + 280) + 240);
  v2 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  *(v0 + 296) = v3;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v2);

  if (v3)
  {
    v4 = *(v0 + 272);
    v5 = v4[1];
    v42[0] = *v4;
    v42[1] = v5;
    v6 = v4[3];
    v42[2] = v4[2];
    v42[3] = v6;
    v7 = sub_1D8C98C88(v3, v42);
    v10 = v7;
    *(v0 + 304) = v7;
    *(v0 + 312) = v8;
    *(v0 + 360) = v9;
    if ((v9 & 0x80) == 0)
    {
      if (v7 == 9)
      {
        sub_1D8CA5B0C(sub_1D8CA757C);
        if (qword_1ED9C4000 != -1)
        {
          OUTLINED_FUNCTION_0();
          swift_once();
        }

        v11 = sub_1D8CD7A04();
        OUTLINED_FUNCTION_41(v11, qword_1ED9C4008);
        v12 = sub_1D8CD79E4();
        v13 = sub_1D8CD7E44();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = OUTLINED_FUNCTION_45();
          *v14 = 0;
          _os_log_impl(&dword_1D8C92000, v12, v13, "Configuration expired or expiring soon. Vending stale configuration and attempt to fetch new one in the background.", v14, 2u);
          OUTLINED_FUNCTION_11();
          MEMORY[0x1DA727900]();
        }

        v15 = *(v0 + 288);

        sub_1D8CD7D64();
        OUTLINED_FUNCTION_50();
        __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
        OUTLINED_FUNCTION_60();
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = v20;
        v22 = *(v0 + 32);
        *(v21 + 40) = *(v0 + 16);
        *(v21 + 56) = v22;
        v23 = *(v0 + 64);
        *(v21 + 72) = *(v0 + 48);
        *(v21 + 88) = v23;
        sub_1D8C969AC(v0 + 16, v0 + 208);
        OUTLINED_FUNCTION_58();
        sub_1D8CA36C0();

        sub_1D8CADF40(v15, &unk_1ECAAC790, &qword_1D8CD9550);
      }

      OUTLINED_FUNCTION_31();

      return v24(v10, v3);
    }

    v36 = v8;
    v37 = v9;
    OUTLINED_FUNCTION_28();
    v38 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v38;
    v39 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v39;
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v0 + 320) = v40;
    *v40 = v41;
    v40[1] = sub_1D8CA247C;
    v32 = (v0 + 144);
    v35 = v37 & 0x7F;
    v33 = v10;
    v34 = v36;
  }

  else
  {
    v26 = *(v0 + 272);
    OUTLINED_FUNCTION_28();
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[3];
    *(v0 + 112) = v26[2];
    *(v0 + 128) = v29;
    *(v0 + 80) = v27;
    *(v0 + 96) = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v0 + 344) = v30;
    *v30 = v31;
    v30[1] = sub_1D8CA2618;
    OUTLINED_FUNCTION_40();
    v35 = 2;
  }

  return sub_1D8CA1A5C(v32, v33, v34, v35, 1);
}

uint64_t sub_1D8C98BF8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C98C2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C98C88(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v47 = sub_1D8CD72C4();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_1D8CD7674();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Throttle = type metadata accessor for ConfigFetchThrottle(0);
  MEMORY[0x1EEE9AC00](Throttle);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[1];
  v50 = *a2;
  v51 = v18;
  v19 = a2[3];
  v52 = a2[2];
  v53 = v19;
  if (sub_1D8C992E4(a1))
  {
    return 1;
  }

  v21 = swift_unknownObjectRetain();
  sub_1D8C99368(v21, v17);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  v22 = *(v3 + 232);
  ObjectType = swift_getObjectType();
  (*(v22 + 24))(v49, ObjectType, v22);
  swift_unknownObjectRelease();
  v24 = v49[0];
  if (LOBYTE(v49[0]) == 3)
  {
    goto LABEL_14;
  }

  if (LOBYTE(v49[0]) == 4)
  {
LABEL_6:
    sub_1D8CD7664();
    sub_1D8CD75C4();
    v26 = v25;
    (*(v12 + 8))(v14, v11);
    if (v26 < *&v17[*(Throttle + 20)])
    {
      v24 = 0;
      goto LABEL_8;
    }

LABEL_14:
    if (sub_1D8C998B4())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v3 + 232);
        v37 = swift_getObjectType();
        v38 = (*(v36 + 40))(v37, v36);
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v49[0] = v50;
        v49[1] = v51;
        v49[2] = v52;
        v49[3] = v53;
        sub_1D8CD5B60(0, 0, 0, v7);
        sub_1D8CD72B4();
        (*(v46 + 8))(v7, v47);
        v41 = sub_1D8CD7554();
        if (__swift_getEnumTagSinglePayload(v10, 1, v41) == 1)
        {
          sub_1D8CADF40(v10, &qword_1ECAAC668, &qword_1D8CD8FA0);
          v38 = 0;
          v40 = 0;
        }

        else
        {
          v38 = sub_1D8CD7494();
          v40 = v45;
          (*(*(v41 - 8) + 8))(v10, v41);
        }
      }

      v20 = sub_1D8C99A50(v38, v40);
      v43 = v42;

      if (v43 <= 0xFB)
      {
        sub_1D8C9A6EC(v17, type metadata accessor for ConfigFetchThrottle);
        return v20;
      }

      v44 = sub_1D8C9A4D8();
      sub_1D8C9A6EC(v17, type metadata accessor for ConfigFetchThrottle);
      if (v44)
      {
        return 9;
      }
    }

    else
    {
      sub_1D8C9A6EC(v17, type metadata accessor for ConfigFetchThrottle);
    }

    return 1;
  }

LABEL_8:
  if (qword_1ED9C4000 != -1)
  {
    swift_once();
  }

  v27 = sub_1D8CD7A04();
  __swift_project_value_buffer(v27, qword_1ED9C4008);
  v28 = sub_1D8CD79E4();
  v29 = sub_1D8CD7E14();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v49[0] = v31;
    *v30 = 136315138;
    v48[0] = v24;
    v32 = sub_1D8CD7B64();
    v34 = sub_1D8C9D088(v32, v33, v49);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1D8C92000, v28, v29, "shouldThrottleConfigFetch: (%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1DA727900](v31, -1, -1);
    MEMORY[0x1DA727900](v30, -1, -1);
  }

  sub_1D8C9A6EC(v17, type metadata accessor for ConfigFetchThrottle);
  return 8;
}

uint64_t sub_1D8C992AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8C992E4(uint64_t a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1D8CA38CC() & 1;
  }

  v3 = *(v1 + 232);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1D8C99368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_9:
    sub_1D8CADF40(&v19, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  v4 = sub_1D8CD7AD4();
  v5 = [a1 valueForKey_];

  swift_unknownObjectRelease();
  if (v5)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_1D8CD7614();
    goto LABEL_11;
  }

LABEL_10:
  sub_1D8CD75B4();
  if (!a1)
  {
    Throttle = type metadata accessor for ConfigFetchThrottle(0);
    *(a2 + Throttle[5]) = 0;
    v14 = (a2 + Throttle[7]);
    *v14 = 0;
    v14[1] = 0;
    v13 = 1;
    v12 = 0.0;
    goto LABEL_13;
  }

LABEL_11:
  swift_unknownObjectRetain();
  v6 = sub_1D8C99558();
  swift_unknownObjectRelease();
  Throttle = type metadata accessor for ConfigFetchThrottle(0);
  *(a2 + Throttle[5]) = v6;
  swift_unknownObjectRetain();
  v8 = sub_1D8C99624();
  v10 = v9;
  swift_unknownObjectRelease();
  v11 = (a2 + Throttle[7]);
  *v11 = v8;
  v11[1] = v10;
  swift_unknownObjectRetain();
  v12 = sub_1D8C996DC();
  swift_unknownObjectRelease_n();
  v13 = 0;
LABEL_13:
  result = type metadata accessor for ConfigFetchThrottle(0);
  v16 = a2 + Throttle[6];
  *v16 = v12;
  *(v16 + 8) = v13;
  return result;
}

double sub_1D8C99558()
{
  v0 = OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72(v2, v3);
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  *&v16 = OUTLINED_FUNCTION_17(v4, v5, v6, v7, v8, v9, v10, v11, v19, *&v20[0], *&v20[1], *&v20[2], *&v20[3]).n128_u64[0];
  if (v17)
  {
    if (OUTLINED_FUNCTION_39(v20, v12, v13, MEMORY[0x1E69E63B0], v14, v15, v16))
    {
      return v20[0];
    }
  }

  else
  {
    sub_1D8CADF40(v21, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0.0;
}

uint64_t sub_1D8C99624()
{
  v0 = OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72(v2, v3);
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  *&v16 = OUTLINED_FUNCTION_17(v4, v5, v6, v7, v8, v9, v10, v11, v19[0], v19[1], v19[2], v19[3], v20).n128_u64[0];
  if (v17)
  {
    if (OUTLINED_FUNCTION_39(v19, v12, v13, MEMORY[0x1E69E6158], v14, v15, v16))
    {
      return v19[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8CADF40(v21, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return OUTLINED_FUNCTION_58();
  }
}

double sub_1D8C996DC()
{
  v0 = sub_1D8CD7AD4();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72(v2, v3);
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  *&v16 = OUTLINED_FUNCTION_17(v4, v5, v6, v7, v8, v9, v10, v11, v19, *&v20[0], *&v20[1], *&v20[2], *&v20[3]).n128_u64[0];
  if (v17)
  {
    if (OUTLINED_FUNCTION_39(v20, v12, v13, MEMORY[0x1E69E63B0], v14, v15, v16))
    {
      return v20[0];
    }
  }

  else
  {
    sub_1D8CADF40(v21, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0.0;
}

_BYTE *storeEnumTagSinglePayload for ShouldThrottleConfigFetchResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x1D8C9988CLL);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8C998B4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[29];
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 64))(ObjectType, v1);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  else
  {
    v5 = v0[14];
    __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
    v6 = OUTLINED_FUNCTION_42();
    if (v7(v6, v5))
    {
      return 1;
    }

    else
    {
      if (qword_1ED9C4020 != -1)
      {
        swift_once();
      }

      v8 = sub_1D8CD7A04();
      OUTLINED_FUNCTION_41(v8, qword_1ED9C5630);
      v9 = sub_1D8CD79E4();
      v10 = sub_1D8CD7E04();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_49(v11);
        OUTLINED_FUNCTION_85(&dword_1D8C92000, v12, v13, "Required context missing");
        OUTLINED_FUNCTION_11();
        MEMORY[0x1DA727900]();
      }

      return 0;
    }
  }
}

uint64_t parsecdUserAgent.getter()
{
  if (qword_1ED9C40D0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_1_6(&xmmword_1ED9C40D8, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D8C99A50(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = (v2 + *(type metadata accessor for ConfigFetchThrottle(0) + 28));
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v7 = *v5;
  sub_1D8C99D74();
  if (v10 == -1)
  {
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v22 = sub_1D8CD7A04();
    __swift_project_value_buffer(v22, qword_1ED9C4008);
    v23 = sub_1D8CD79E4();
    v24 = sub_1D8CD7E14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D8C92000, v23, v24, "Context not changed, no need to refresh config", v25, 2u);
      MEMORY[0x1DA727900](v25, -1, -1);
    }

    return 0;
  }

  v11 = v8;
  v12 = v9;
  v13 = v10;
  if (qword_1ED9C4000 != -1)
  {
    swift_once();
  }

  v14 = sub_1D8CD7A04();
  __swift_project_value_buffer(v14, qword_1ED9C4008);
  sub_1D8CAD748(v11, v12, v13);

  v15 = sub_1D8CD79E4();
  v16 = sub_1D8CD7E14();
  sub_1D8CAD774(v11, v12, v13);

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v17 = 136315650;
    v18 = sub_1D8CA4DAC(v11, v12, v13);
    log = v15;
    v20 = v7;
    v21 = sub_1D8C9D088(v18, v19, &v29);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1D8C9D088(v20, v6, &v29);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1D8C9D088(a1, a2, &v29);
    _os_log_impl(&dword_1D8C92000, log, v16, "Context has changed (%s) from %s to %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA727900](v28, -1, -1);
    MEMORY[0x1DA727900](v17, -1, -1);
  }

  else
  {
  }

  return v11;
}

void sub_1D8C99D74()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1D8CD7324();
  OUTLINED_FUNCTION_3();
  v92 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  v93 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v87 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC7A8, &unk_1D8CD9590);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v23 = sub_1D8CD73D4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v87 - v30;
  if (v7 == v3 && v5 == v1)
  {
    goto LABEL_34;
  }

  v91 = v29;
  if (sub_1D8CD8154())
  {
    goto LABEL_34;
  }

  sub_1D8CD73C4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v33 = v22;
LABEL_11:
    sub_1D8CADF40(v33, &unk_1ECAAC7A8, &unk_1D8CD9590);
LABEL_34:
    OUTLINED_FUNCTION_68();
    return;
  }

  v90 = v8;
  v34 = v91 + 32;
  v35 = *(v91 + 32);
  v35(v31, v22, v23);
  sub_1D8CD73C4();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    v36 = OUTLINED_FUNCTION_33();
    v37(v36);
    v33 = v19;
    goto LABEL_11;
  }

  v35(v27, v19, v23);
  sub_1D8CD73B4();
  OUTLINED_FUNCTION_55();
  v38 = sub_1D8CD73B4();
  v40 = v39;
  if (v34)
  {
    if (!v39)
    {
      goto LABEL_32;
    }

    v41 = v22 == v38 && v34 == v39;
    v42 = v90;
    if (v41)
    {
    }

    else
    {
      OUTLINED_FUNCTION_20(v38, v39, v38);
      OUTLINED_FUNCTION_71();

      if ((v22 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v42 = v90;
    if (v39)
    {
      goto LABEL_32;
    }
  }

  sub_1D8CD7384();
  OUTLINED_FUNCTION_55();
  v43 = sub_1D8CD7384();
  v40 = v44;
  if (!v34)
  {
    if (!v44)
    {
      goto LABEL_36;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!v44)
  {
    goto LABEL_32;
  }

  if (v22 == v43 && v34 == v44)
  {
  }

  else
  {
    OUTLINED_FUNCTION_20(v43, v44, v43);
    OUTLINED_FUNCTION_71();

    if ((v22 & 1) == 0)
    {
LABEL_33:
      v46 = OUTLINED_FUNCTION_76();
      v40(v46);
      v47 = OUTLINED_FUNCTION_33();
      v40(v47);
      goto LABEL_34;
    }
  }

LABEL_36:
  v48 = sub_1D8CD73A4();
  v50 = v49;
  v40 = v27;
  v51 = sub_1D8CD73A4();
  if ((v50 & 1) == 0 && v48 != v51)
  {
    goto LABEL_33;
  }

  sub_1D8CD7394();
  OUTLINED_FUNCTION_55();
  v52 = sub_1D8CD7394();
  v40 = v53;
  if (v50 == v52 && v48 == v53)
  {
  }

  else
  {
    OUTLINED_FUNCTION_20(v52, v53, v52);
    OUTLINED_FUNCTION_71();

    if ((v50 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v40 = v31;
  v55 = sub_1D8CD7334();
  if (!v55)
  {
    goto LABEL_33;
  }

  v56 = v55;
  v40 = v27;
  v57 = sub_1D8CD7334();
  if (!v57)
  {
    goto LABEL_32;
  }

  v58 = v57;
  v59 = 0;
  v89 = *(v56 + 16);
  v90 = v92 + 16;
  v87 = v57;
  v88 = (v92 + 8);
  while (1)
  {
    if (v89 == v59)
    {

      goto LABEL_32;
    }

    if (v59 >= *(v56 + 16))
    {
      break;
    }

    v60 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v61 = *(v92 + 72) * v59;
    v40 = *(v92 + 16);
    (v40)(v94, v56 + v60 + v61, v42);
    v62 = *(v58 + 16);
    if (v59 == v62)
    {

      v77 = OUTLINED_FUNCTION_75();
      v78(v77);
      goto LABEL_33;
    }

    if (v59 >= v62)
    {
      goto LABEL_78;
    }

    (v40)(v93, v58 + v60 + v61, v42);
    v63 = sub_1D8CD7304();
    v65 = v64;
    v66 = sub_1D8CD7304();
    if (v63 == v66 && v65 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_20(v66, v67, v66);
      OUTLINED_FUNCTION_71();

      if ((v63 & 1) == 0)
      {

        sub_1D8CD7304();
        v79 = OUTLINED_FUNCTION_46();
        v65(v79);
        v80 = OUTLINED_FUNCTION_75();
        v65(v80);
        v81 = OUTLINED_FUNCTION_74();
        v65(v81);
        v82 = OUTLINED_FUNCTION_33();
        v65(v82);
        goto LABEL_34;
      }
    }

    v69 = sub_1D8CD7314();
    v71 = v70;
    v72 = sub_1D8CD7314();
    v74 = v73;
    v58 = v87;
    if (v71)
    {
      if (!v73)
      {

        goto LABEL_76;
      }

      if (v69 == v72 && v71 == v73)
      {
      }

      else
      {
        OUTLINED_FUNCTION_20(v72, v73, v72);
        OUTLINED_FUNCTION_71();

        if ((v69 & 1) == 0)
        {

          v71 = v56;
LABEL_76:

          sub_1D8CD7304();
          v83 = OUTLINED_FUNCTION_46();
          v71(v83);
          v84 = OUTLINED_FUNCTION_75();
          v71(v84);
          v85 = OUTLINED_FUNCTION_74();
          v71(v85);
          v86 = OUTLINED_FUNCTION_33();
          v71(v86);
          goto LABEL_34;
        }
      }
    }

    else if (v73)
    {

      v71 = v74;
      goto LABEL_76;
    }

    v40 = *v88;
    (*v88)(v93, v42);
    v76 = OUTLINED_FUNCTION_75();
    v40(v76);
    ++v59;
  }

  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_1D8C9A4D8()
{
  v1 = sub_1D8CD7674();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = v0 + *(type metadata accessor for ConfigFetchThrottle(0) + 24);
  if (*(v8 + 8))
  {
    v9 = 1;
  }

  else if (*v8 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    sub_1D8CD7614();
    sub_1D8CD75F4();
    v9 = sub_1D8CD75E4();
    v10 = *(v2 + 8);
    v10(v5, v1);
    if (v9)
    {
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v11 = sub_1D8CD7A04();
      __swift_project_value_buffer(v11, qword_1ED9C4008);
      v12 = sub_1D8CD79E4();
      v13 = sub_1D8CD7E14();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D8C92000, v12, v13, "Config is going to expire soon. Go fetch it.", v14, 2u);
        MEMORY[0x1DA727900](v14, -1, -1);
      }
    }

    v10(v7, v1);
  }

  return v9 & 1;
}

uint64_t sub_1D8C9A6EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

_OWORD *OUTLINED_FUNCTION_32_0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_1D8CB4A34(a1, a2, v4 | 0x8000000000000000, a4);
}

uint64_t sub_1D8C9A75C()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  OUTLINED_FUNCTION_61(v7, v8);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{

  return sub_1D8C9B450(v7, v6, v8, v5, a5);
}

void OUTLINED_FUNCTION_16_3(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(v3 - 160) = a3;
  *(v3 - 152) = a2;
  *(v3 - 168) = a1;
}

uint64_t sub_1D8C9A94C()
{
  if (*(v0 + 122) == 1)
  {
    *(*(v0 + 208) + qword_1ED9C3D50) = 1;
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 96);
  *(*(v0 + 208) + qword_1ED9C3D48) = v2;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_62();
  v3 = sub_1D8CD7AD4();
  [v1 findConfigForUserAgent_];
  swift_unknownObjectRelease_n();

  sub_1D8C9AA78();

  sub_1D8C9B99C();
  OUTLINED_FUNCTION_70();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1D8C9AA78()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    if (*&v0[qword_1ED9C5628])
    {

      sub_1D8CAF0EC(v2);
    }

    v3 = MEMORY[0x1E69E6158];
    if ((v0[qword_1ED9C3D50] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD98, &unk_1D8CDBBF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8CD8F50;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      sub_1D8CC4F28();
      v5 = sub_1D8CD7A84();
      sub_1D8CA83C0(v5);

      sub_1D8CCB66C();
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v7 = OUTLINED_FUNCTION_1_0(v6);
    *(v7 + 16) = xmmword_1D8CD8F40;
    v8 = sub_1D8CD7B64();
    v10 = v9;
    *(v7 + 56) = v3;
    *(v7 + 64) = sub_1D8C96E60();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1D8C9AD8C("outcome=%{signpost.description:attribute,public}s", 49, 2, v7);

    v11 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v11);
    if ((v1[88] & 1) == 0)
    {
      sub_1D8C9AD94();
    }

    os_unfair_lock_unlock(v11);
  }
}

uint64_t sub_1D8C9ACE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1D8C9AD94()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_15();
  sub_1D8C9B12C(v39, v38, &qword_1ECAACE30, &qword_1D8CDC610);
  sub_1D8C9B190(v0, 0x656372756F736572, 0xEE00737365636341);
  if ((v39[17] & 1) == 0 && v40)
  {
    OUTLINED_FUNCTION_8_4();
    v8 = *(v7 + 136);
    OUTLINED_FUNCTION_7_4(v0 + v8);
    sub_1D8C9B12C(v0 + v8, v1, &qword_1ECAAC7D8, &qword_1D8CD95B0);
    v9 = sub_1D8CD7964();
    result = __swift_getEnumTagSinglePayload(v1, 1, v9);
    if (result != 1)
    {
      v11 = *(v0 + 96);

      sub_1D8CD7E54();
      v12 = sub_1D8C97B40(v3);
      OUTLINED_FUNCTION_1_17(v12, v13, v14, v15, v16, v17, v18, v19, v36, v37);

      OUTLINED_FUNCTION_25();
      (*(v20 + 8))(v1, v9);
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 80);
  v22 = *(*v4 + 136);
  OUTLINED_FUNCTION_7_4(v4 + v22);
  sub_1D8C9B12C(v4 + v22, v2, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  v23 = sub_1D8CD7964();
  result = __swift_getEnumTagSinglePayload(v2, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v4 + 96);
  sub_1D8CD7E54();
  sub_1D8C97B40(v21);
  sub_1D8CD7924();
  OUTLINED_FUNCTION_25();
  v24 = OUTLINED_FUNCTION_9_3();
  v26(v24, v25);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v38[0] = v4;
    sub_1D8CD7B64();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_16_2(v29, v30, v31, v32, &off_1F5454760);

    os_unfair_lock_unlock(v11);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v28 + 24);
      ObjectType = swift_getObjectType();
      (*(v33 + 16))(v4, &off_1F5454760, ObjectType, v33);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_1D8C9B71C(v39, &qword_1ECAACE30, &qword_1D8CDC610);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_15_2(MEMORY[0x1E69E7CC0]);
    *(v4 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1D8CC3FB0())
    {
      v35 = sub_1D8CD7E34();
      sub_1D8CD7904("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_1D8C92000, v11, v35, MEMORY[0x1E69E7CC0]);
    }

    return sub_1D8C9B71C(v39, &qword_1ECAACE30, &qword_1D8CDC610);
  }
}

uint64_t sub_1D8C9B12C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D8C9B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C9B338(a1);
  if (result)
  {
    v7 = *(v3 + 96);
    v8 = sub_1D8CD7E14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D8CD8F50;
    v10 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1D8C96E60();
    *(v9 + 64) = v11;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    sub_1D8CC26E8();
    OUTLINED_FUNCTION_14_1();
    v12 = sub_1D8CD7A74();
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v12;
    *(v9 + 80) = v13;
    sub_1D8CD7904("Reporting to CA event: '%s'\n\twith data: %@", 42, 2, &dword_1D8C92000, v7, v8, v9);

    MEMORY[0x1DA726A90](46, 0xE100000000000000);
    v14 = OUTLINED_FUNCTION_9_3();
    MEMORY[0x1DA726A90](v14);
    v15 = sub_1D8CD7AD4();

    OUTLINED_FUNCTION_14_1();
    v16 = sub_1D8CD7A54();
    AnalyticsSendEvent();
  }

  return result;
}

uint64_t sub_1D8C9B338(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = sub_1D8CD7F24();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8CB4574(v2, 1701869940, 0xE400000000000000);
    sub_1D8CC9F60();
    v3 = sub_1D8CD7DB4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8CB4574(v3, 0x6E6F697461727564, 0xE800000000000000);
    return v1;
  }

  return result;
}

uint64_t sub_1D8C9B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  swift_beginAccess();
  sub_1D8C9785C(a2, a3);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA48, &qword_1D8CDBA70);
    sub_1D8CD8084();

    type metadata accessor for ActivityMonitor.WeakReference();
    sub_1D8CD8094();
    *(a1 + 40) = v25;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(a4, a5, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    v14 = swift_getObjectType();
    v15 = a5[4](v14, a5);
    sub_1D8CD7E24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D8CD8F50;
    v17 = a5[3](v14, a5);
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1D8C96E60();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    a5[5](v14, a5);
    v22 = sub_1D8CD8024();
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    sub_1D8CD7904("Activity %s.%s never started or already ended", v24, v26);
  }
}

uint64_t sub_1D8C9B6BC()
{
  sub_1D8C9B6F4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D8C9B71C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D8C9B778(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D8C9B798()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1D8C9AA78();
  }

  v1 = sub_1D8C9B790();

  return v1;
}

uint64_t sub_1D8C9B7F0()
{
  v0 = sub_1D8C9B798();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8C9B844()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4();
  sub_1D8C9B71C(v0 + *(v1 + 136), &qword_1ECAAC7D8, &qword_1D8CD95B0);
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 144);
  sub_1D8CD7674();
  OUTLINED_FUNCTION_25();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_4();

  return v0;
}

uint64_t sub_1D8C9B95C()
{
  MEMORY[0x1DA727900](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1D8C9B99C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;

    os_unfair_lock_unlock((v1 + 48));
  }
}

uint64_t sub_1D8C9B9EC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CB6D2C, 0, 0);
  }

  else
  {
    sub_1D8C9B71C(v3 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
    v7 = OUTLINED_FUNCTION_18_1();

    return v8(v7);
  }
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_13_1()
{
  v2 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  sub_1D8CAD7DC((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

void SessionType.biomeStreamDescriptor.getter(char *a1@<X8>)
{
  v3 = 2;
  switch(*(v1 + 8))
  {
    case 1:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      if (v4)
      {
        v3 = 17;
      }

      else
      {
        v3 = 1;
      }

      break;
    case 2:
      break;
    case 3:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 3;
      goto LABEL_51;
    case 4:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 4;
      goto LABEL_51;
    case 5:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 5;
      goto LABEL_51;
    case 6:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 6;
      goto LABEL_51;
    case 7:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 7;
      goto LABEL_51;
    case 8:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 8;
      goto LABEL_51;
    case 9:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 9;
      goto LABEL_51;
    case 0xALL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 10;
      goto LABEL_51;
    case 0xBLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 11;
      goto LABEL_51;
    case 0xCLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 12;
      goto LABEL_51;
    case 0xDLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 13;
      goto LABEL_51;
    case 0xELL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 14;
      goto LABEL_51;
    case 0xFLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 15;
LABEL_51:
      if (v4)
      {
        v3 = 17;
      }

      else
      {
        v3 = v5;
      }

      break;
    case 0x10:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19(&qword_1ECAAC4B8);
      }

      OUTLINED_FUNCTION_2_17();
      if (v4)
      {
        v3 = 17;
      }

      else
      {
        v3 = 16;
      }

      break;
    default:
      v3 = 17;
      break;
  }

  *a1 = v3;
}

uint64_t getEnumTagSinglePayload for FeedbackStreamDescriptor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

PegasusConfiguration::FeedbackStoreConfig __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackStoreConfig.init(fileManager:streams:)(NSFileManager fileManager, Swift::OpaquePointer streams)
{
  v4 = v3;
  v27 = v2;
  sub_1D8C9C284();
  v6 = sub_1D8CD7A84();
  v7 = 0;
  v30 = *(streams._rawValue + 2);
  for (i = streams._rawValue; ; streams._rawValue = i)
  {
    if (v30 == v7)
    {

      *v27 = v6;
      return result;
    }

    if (v7 >= *(streams._rawValue + 2))
    {
      break;
    }

    v8 = *(streams._rawValue + v7 + 32);
    LOBYTE(v36) = *(streams._rawValue + v7 + 32);
    v9 = fileManager.super.isa;
    BiomeStreamConfig.init(fileManager:descriptor:)(v9, &v36, v35);
    if (v4)
    {
    }

    v31 = v7;
    v11 = v35[0];
    v10 = v35[1];
    v12 = v35[2];
    v32 = v35[3];
    v33 = v35[4];
    v34 = v35[5];
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v6;
    v13 = sub_1D8C9D3E8(v8);
    if (__OFADD__(v6[2], (v14 & 1) == 0))
    {
      goto LABEL_17;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACCA8, &qword_1D8CDB2E0);
    if (sub_1D8CD8084())
    {
      v17 = sub_1D8C9D3E8(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v15 = v17;
    }

    v6 = v36;
    if (v16)
    {
      v19 = (v36[7] + 48 * v15);
      v20 = v19[4];
      v21 = v19[5];
      *v19 = v11;
      v19[1] = v10;
      v19[2] = v12;
      v19[3] = v32;
      v19[4] = v33;
      v19[5] = v34;
    }

    else
    {
      v36[(v15 >> 6) + 8] |= 1 << v15;
      *(v6[6] + v15) = v8;
      v22 = (v6[7] + 48 * v15);
      *v22 = v11;
      v22[1] = v10;
      v22[2] = v12;
      v22[3] = v32;
      v22[4] = v33;
      v22[5] = v34;
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v6[2] = v25;
    }

    v4 = 0;
    v7 = v31 + 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result.streamConfigs._rawValue = sub_1D8CD81D4();
  __break(1u);
  return result;
}

unint64_t sub_1D8C9C284()
{
  result = qword_1ED9C4140;
  if (!qword_1ED9C4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C4140);
  }

  return result;
}

void BiomeStreamConfig.init(fileManager:descriptor:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D8CD7554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a2;
  v11 = v33;
  v12 = FeedbackStreamDescriptor.tableName.getter();
  v14 = v13;
  v15 = "PegasusConfiguration";
  if (!v11)
  {
    v15 = "dback.v2.FeedbackPayload";
  }

  v29 = v12;
  v30 = v15 | 0x8000000000000000;
  v32 = v11;
  NSFileManager.biomeStreamURL(for:)(&v32, v10);
  if (v3)
  {
  }

  else
  {
    v26 = 0xD000000000000028;
    v27 = sub_1D8C9D318();
    v16 = sub_1D8CD74F4();
    v28 = v14;
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    if (v11)
    {
      v19 = v26;
    }

    else
    {
      v19 = 0xD000000000000026;
    }

    if (v11)
    {
      v20 = 0x200000;
    }

    else
    {
      v20 = 0x20000;
    }

    v21 = sub_1D8C9D35C(v16, v18, v20, 3);
    v31 = v11;
    FeedbackStreamDescriptor.rawValue.getter();
    v22 = sub_1D8CD7AD4();

    v23 = v28;
    *a3 = v29;
    a3[1] = v23;
    v24 = v30;
    a3[2] = v19;
    a3[3] = v24;
    a3[4] = v21;
    a3[5] = v22;
  }
}

uint64_t FeedbackStreamDescriptor.tableName.getter()
{
  if (!*v0)
  {
    return 0x5F6E6F6973736573;
  }

  FeedbackStreamDescriptor.rawValue.getter();
  sub_1D8C94EC8();
  v1 = sub_1D8CD7F34();

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 16 + 16 * v3);

    MEMORY[0x1DA726A90](0x6569765F7366735FLL, 0xE900000000000077);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t FeedbackStreamDescriptor.rawValue.getter()
{
  result = 0x6E6F6973736573;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 6:
    case 0xB:
      result = 0x6C7070612E6D6F63;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xF:
      v2 = 5;
      goto LABEL_14;
    case 9:
    case 0xA:
      v2 = 9;
LABEL_14:
      result = v2 | 0xD000000000000010;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t NSFileManager.biomeStreamURL(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = *a1;
  sub_1D8C9CC40();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1D8C953A4(v10, &qword_1ECAAC668, &qword_1D8CD8FA0);
    sub_1D8CC082C();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v45 = v20;
    v42 = *(v13 + 32);
    v43 = v13 + 32;
    v42(v19, v10, v11);
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8CD7A04();
    __swift_project_value_buffer(v23, qword_1ED9C5668);
    (*(v13 + 16))(v17, v19, v11);
    v24 = sub_1D8CD79E4();
    v25 = sub_1D8CD7E04();
    v26 = os_log_type_enabled(v24, v25);
    v44 = v13;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v41 = v2;
      v28 = v27;
      v39 = swift_slowAlloc();
      v40 = v4;
      v48[0] = v39;
      *v28 = 136315138;
      sub_1D8C9D2C0();
      v29 = sub_1D8CD8124();
      v31 = v30;
      v32 = OUTLINED_FUNCTION_2_11();
      (v13)(v32);
      v33 = sub_1D8C9D088(v29, v31, v48);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1D8C92000, v24, v25, "Container URL: %s", v28, 0xCu);
      v34 = v39;
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v4 = v40;
      MEMORY[0x1DA727900](v34, -1, -1);
      MEMORY[0x1DA727900](v28, -1, -1);
    }

    else
    {

      v35 = OUTLINED_FUNCTION_2_11();
      (v13)(v35);
    }

    if (v45)
    {
      v48[0] = 0x6B63616264656566;
      v48[1] = 0xE800000000000000;
      v37 = v46;
      v36 = v47;
      (*(v47 + 104))(v46, *MEMORY[0x1E6968F58], v4);
      sub_1D8C94EC8();
      sub_1D8CD7544();
      (*(v36 + 8))(v37, v4);
      return (v13)(v19, v11);
    }

    else
    {
      return (v42)(v49, v19, v11);
    }
  }
}

void sub_1D8C9CC40()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1D8C950EC(v1);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v18 = *(v10 + 32);
  v18(v17, v7, v8);
  if (qword_1ED9C4150 != -1)
  {
    OUTLINED_FUNCTION_32(&qword_1ED9C4150);
  }

  v19 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v19, qword_1ED9C5668);
  v20 = OUTLINED_FUNCTION_62();
  v21(v20);
  v22 = sub_1D8CD79E4();
  v23 = sub_1D8CD7E04();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_47();
    v24 = swift_slowAlloc();
    v35 = v3;
    v25 = v24;
    OUTLINED_FUNCTION_78();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v25 = 136315138;
    OUTLINED_FUNCTION_2_0();
    sub_1D8C9D040(v26, v27, MEMORY[0x1E6968FE0]);
    v28 = sub_1D8CD8124();
    v34 = v18;
    v30 = v29;
    (*(v10 + 8))(v14, v8);
    v31 = sub_1D8C9D088(v28, v30, &v36);
    v18 = v34;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D8C92000, v22, v23, "PegasusConfiguration container URL: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    v3 = v35;
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  v18(v3, v17, v8);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
  OUTLINED_FUNCTION_68();
}

id OUTLINED_FUNCTION_73(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1D8C9D040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8C9D088(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8C9D14C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D8C9D24C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1D8C9D14C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D8CB0A88(a5, a6);
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
    result = sub_1D8CD8044();
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

uint64_t sub_1D8C9D24C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D8C9D2C0()
{
  result = qword_1ED9C4158[0];
  if (!qword_1ED9C4158[0])
  {
    sub_1D8CD7554();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9C4158);
  }

  return result;
}

unint64_t sub_1D8C9D318()
{
  result = qword_1ED9C4120;
  if (!qword_1ED9C4120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C4120);
  }

  return result;
}

id sub_1D8C9D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1D8CD7AD4();

  v8 = [v6 initWithStoreBasePath:v7 segmentSize:a3 protectionClass:a4];

  return v8;
}

unint64_t sub_1D8C9D3E8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1D8C9D498(*(v1 + 40), a1);

  return sub_1D8C9D4B0(v2, v3);
}

uint64_t sub_1D8C9D42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1D8CD8254();
  a3(v4);
  sub_1D8CD7BD4();

  return sub_1D8CD8284();
}

unint64_t sub_1D8C9D4B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E6F6973736573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v8 = 0x6C7070612E6D6F63;
          v9 = 0x697269732E65;
          goto LABEL_18;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D8CDD610;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x80000001D8CDD630;
          break;
        case 6:
          v8 = 0x6C7070612E6D6F63;
          v9 = 0x7377656E2E65;
          goto LABEL_18;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x80000001D8CDD660;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x80000001D8CDD680;
          break;
        case 9:
          v8 = 0xD000000000000019;
          v7 = 0x80000001D8CDD6A0;
          break;
        case 0xA:
          v8 = 0xD000000000000019;
          v7 = 0x80000001D8CDD6C0;
          break;
        case 0xB:
          v8 = 0x6C7070612E6D6F63;
          v9 = 0x6C69616D2E65;
LABEL_18:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x80000001D8CDD6F0;
          break;
        case 0xD:
          v8 = 0xD000000000000014;
          v7 = 0x80000001D8CDD710;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x80000001D8CDD730;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x80000001D8CDD750;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      v10 = 0xE700000000000000;
      v11 = 0x6E6F6973736573;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v11 = 0xD000000000000013;
          v10 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x697269732E65;
          goto LABEL_36;
        case 4:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD610;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v10 = 0x80000001D8CDD630;
          break;
        case 6:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x7377656E2E65;
          goto LABEL_36;
        case 7:
          v11 = 0xD000000000000011;
          v10 = 0x80000001D8CDD660;
          break;
        case 8:
          v11 = 0xD000000000000015;
          v10 = 0x80000001D8CDD680;
          break;
        case 9:
          v11 = 0xD000000000000019;
          v10 = 0x80000001D8CDD6A0;
          break;
        case 10:
          v11 = 0xD000000000000019;
          v10 = 0x80000001D8CDD6C0;
          break;
        case 11:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x6C69616D2E65;
LABEL_36:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 12:
          v11 = 0xD000000000000018;
          v10 = 0x80000001D8CDD6F0;
          break;
        case 13:
          v11 = 0xD000000000000014;
          v10 = 0x80000001D8CDD710;
          break;
        case 14:
          v11 = 0xD000000000000012;
          v10 = 0x80000001D8CDD730;
          break;
        case 15:
          v11 = 0xD000000000000015;
          v10 = 0x80000001D8CDD750;
          break;
        case 16:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1D8CD8154();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id FeedbackStoreConfig.getConfig(forStream:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_1D8C9D3E8(*a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 48 * v5);
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[5];
    *a2 = *v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;

    v13 = v11;
    return v12;
  }

  else
  {
    sub_1D8CD8014();

    v15 = FeedbackStreamDescriptor.rawValue.getter();
    MEMORY[0x1DA726A90](v15);

    sub_1D8CC082C();
    swift_allocError();
    *v16 = 0xD000000000000013;
    v16[1] = 0x80000001D8CDEA20;
    return swift_willThrow();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t SessionType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 - 1) >= 0x10)
  {
    if (v2)
    {
    }

    else
    {
      sub_1D8C96324(v1, 0);
      return 0x6E776F6E6B6E753CLL;
    }
  }

  else
  {
    v5 = v1;
    v6 = v2;
    SessionType.biomeStreamDescriptor.getter(&v4);
    if (v4 == 17)
    {
      return 0x6E776F6E6B6E753CLL;
    }

    else
    {
      return FeedbackStreamDescriptor.rawValue.getter();
    }
  }

  return v1;
}

uint64_t SessionType.clientType.getter()
{
  v1 = *(v0 + 8);
  if ((v1 - 1) < 0x10)
  {
    return qword_1D8CDCD98[v1 - 1];
  }

  Client.init(_:)(v1, &v4);
  v2 = v4;

  return v2;
}

uint64_t Client.init(_:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v4 = sub_1D8CD7B74();
    v6 = v5;

    OUTLINED_FUNCTION_6();
    v144 = v7;
    v8 = sub_1D8C94EC8();
    if (OUTLINED_FUNCTION_0_18(v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v4, v6, 0xD000000000000017, v144))
    {

      v13 = 24;
      v14 = 21;
    }

    else
    {
      OUTLINED_FUNCTION_2_16();
      if (OUTLINED_FUNCTION_0_18(v17, MEMORY[0x1E69E6158], v18, v19, v20, v21))
      {

        v14 = 1;
        v13 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_2_16();
        if (OUTLINED_FUNCTION_0_18(v22, MEMORY[0x1E69E6158], v23, v24, v25, v26))
        {

          v14 = 2;
          v13 = 2;
        }

        else
        {
          OUTLINED_FUNCTION_2_16();
          if (OUTLINED_FUNCTION_0_18(v27, MEMORY[0x1E69E6158], v28, v29, v30, v31))
          {

            v14 = 3;
            v13 = 3;
          }

          else
          {
            v32 = sub_1D8CD7B74();
            v38 = OUTLINED_FUNCTION_0_18(v32, MEMORY[0x1E69E6158], v34, v35, v36, v37, v4, v6, v32, v33);

            if (v38)
            {

              v13 = 26;
              v14 = 23;
            }

            else
            {
              OUTLINED_FUNCTION_2_16();
              if (OUTLINED_FUNCTION_0_18(v39, MEMORY[0x1E69E6158], v40, v41, v42, v43))
              {

                v14 = 4;
                v13 = 4;
              }

              else
              {
                OUTLINED_FUNCTION_2_16();
                if (OUTLINED_FUNCTION_0_18(v44, MEMORY[0x1E69E6158], v45, v46, v47, v48))
                {

                  v14 = 5;
                  v13 = 5;
                }

                else
                {
                  OUTLINED_FUNCTION_2_16();
                  if (OUTLINED_FUNCTION_0_18(v49, MEMORY[0x1E69E6158], v50, v51, v52, v53))
                  {

                    v14 = 6;
                    v13 = 6;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_2_16();
                    if (OUTLINED_FUNCTION_0_18(v54, MEMORY[0x1E69E6158], v55, v56, v57, v58))
                    {

                      v14 = 8;
                      v13 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_16();
                      if (OUTLINED_FUNCTION_0_18(v59, MEMORY[0x1E69E6158], v60, v61, v62, v63))
                      {

                        v14 = 9;
                        v13 = 9;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_2_16();
                        if (OUTLINED_FUNCTION_0_18(v64, MEMORY[0x1E69E6158], v65, v66, v67, v68))
                        {

                          v14 = 10;
                          v13 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_2_16();
                          if (OUTLINED_FUNCTION_0_18(v69, MEMORY[0x1E69E6158], v70, v71, v72, v73))
                          {

                            v14 = 12;
                            v13 = 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_6();
                            if (OUTLINED_FUNCTION_0_18(v74, MEMORY[0x1E69E6158], v75, v76, v77, v78, v4, v6, 0xD000000000000012, v79))
                            {

                              v14 = 13;
                              v13 = 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_2_16();
                              if (OUTLINED_FUNCTION_0_18(v80, MEMORY[0x1E69E6158], v81, v82, v83, v84))
                              {

                                v13 = 15;
                                v14 = 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_2_16();
                                if (OUTLINED_FUNCTION_0_18(v85, MEMORY[0x1E69E6158], v86, v87, v88, v89))
                                {

                                  v13 = 14;
                                  v14 = 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_2_16();
                                  if (OUTLINED_FUNCTION_0_18(v90, MEMORY[0x1E69E6158], v91, v92, v93, v94))
                                  {

                                    v13 = 20;
                                    v14 = 18;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_2_16();
                                    if (OUTLINED_FUNCTION_0_18(v95, MEMORY[0x1E69E6158], v96, v97, v98, v99))
                                    {

                                      v13 = 21;
                                      v14 = 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_6();
                                      if (OUTLINED_FUNCTION_0_18(v100, MEMORY[0x1E69E6158], v101, v102, v103, v104, v4, v6, 0xD000000000000015, v105))
                                      {

                                        v13 = 27;
                                        v14 = 24;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_6();
                                        if (OUTLINED_FUNCTION_0_18(v106, MEMORY[0x1E69E6158], v107, v108, v109, v110, v4, v6, 0xD000000000000015, v111))
                                        {

                                          v13 = 28;
                                          v14 = 25;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_6();
                                          if (OUTLINED_FUNCTION_0_18(v112, MEMORY[0x1E69E6158], v113, v114, v115, v116, v4, v6, 0xD000000000000012, v117))
                                          {

                                            v13 = 29;
                                            v14 = 26;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_2_16();
                                            v123 = OUTLINED_FUNCTION_0_18(v118, MEMORY[0x1E69E6158], v119, v120, v121, v122);
                                            if (v123)
                                            {

                                              v13 = 31;
                                              v14 = 29;
                                            }

                                            else
                                            {
                                              v143 = v4;
                                              v144 = v6;
                                              v130 = OUTLINED_FUNCTION_4_6(v123, MEMORY[0x1E69E6158], v124, v125, v126, v127, v128, v129, 0x64636573726170);
                                              if (v130)
                                              {

                                                v14 = 7;
                                                v13 = 7;
                                              }

                                              else
                                              {
                                                v143 = v4;
                                                v144 = v6;
                                                if (OUTLINED_FUNCTION_4_6(v130, MEMORY[0x1E69E6158], v131, v132, v133, v134, v135, v136, 0x6B73757361676570))
                                                {

                                                  v13 = 19;
                                                  v14 = 16;
                                                }

                                                else
                                                {
                                                  if (qword_1ED9C4148 != -1)
                                                  {
                                                    swift_once();
                                                  }

                                                  v137 = sub_1D8CD7A04();
                                                  __swift_project_value_buffer(v137, qword_1ED9C5650);

                                                  v138 = sub_1D8CD79E4();
                                                  v139 = sub_1D8CD7E24();

                                                  if (os_log_type_enabled(v138, v139))
                                                  {
                                                    v140 = swift_slowAlloc();
                                                    v141 = swift_slowAlloc();
                                                    v143 = v141;
                                                    *v140 = 136315138;
                                                    v142 = sub_1D8C9D088(v4, v6, &v143);

                                                    *(v140 + 4) = v142;
                                                    _os_log_impl(&dword_1D8C92000, v138, v139, "Failed to get client type for %s", v140, 0xCu);
                                                    __swift_destroy_boxed_opaque_existential_0Tm(v141);
                                                    MEMORY[0x1DA727900](v141, -1, -1);
                                                    MEMORY[0x1DA727900](v140, -1, -1);
                                                  }

                                                  else
                                                  {
                                                  }

                                                  v14 = 0;
                                                  v13 = 0;
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
        }
      }
    }

    LOBYTE(v143) = v13;
    result = PegasusClientName.rawValue.getter();
  }

  else
  {
    v14 = 0;
    v15 = 0xE700000000000000;
    result = 0x6E776F6E6B6E55;
  }

  *a3 = v14;
  a3[1] = result;
  a3[2] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, ...)
{

  return sub_1D8CD7BD4();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2)
{
  sub_1D8C9E824(a1, a2);
  sub_1D8C9E824(v2, v3);

  return sub_1D8C96324(v2, v3);
}

uint64_t PegasusClientName.rawValue.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0x697261666173;
      break;
    case 2:
      result = 0x6867696C746F7073;
      break;
    case 3:
      result = 1769105779;
      break;
    case 4:
      result = 0x70756B6F6F6CLL;
      break;
    case 5:
      result = 0x736567617373656DLL;
      break;
    case 6:
      result = 1937204590;
      break;
    case 7:
      result = 0x64636573726170;
      break;
    case 8:
      result = 0x745F636573726170;
      break;
    case 9:
      v2 = 1701998435;
      goto LABEL_9;
    case 0xA:
      result = 0x7475746867696C66;
      break;
    case 0xB:
      v2 = 1936744813;
LABEL_9:
      result = v2 | 0x6767757300000000;
      break;
    case 0xC:
      result = 1818845549;
      break;
    case 0xD:
    case 0x1D:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x6F72657473797274;
      break;
    case 0xF:
      result = 0x6570786574657564;
      break;
    case 0x10:
    case 0x17:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0x616E61616964656DLL;
      break;
    case 0x12:
      result = 0xD000000000000015;
      break;
    case 0x13:
      result = 0x6B73757361676570;
      break;
    case 0x14:
      result = 0x736F746F6870;
      break;
    case 0x15:
      result = 0x6369706F746F6870;
      break;
    case 0x16:
      result = 0xD000000000000014;
      break;
    case 0x18:
      result = 0xD000000000000017;
      break;
    case 0x19:
      result = 0x6361666B636F6C63;
      break;
    case 0x1A:
      result = 0x657370756B6F6F6CLL;
      break;
    case 0x1B:
      result = 0xD000000000000015;
      break;
    case 0x1C:
      result = 0xD000000000000015;
      break;
    case 0x1E:
      result = 0x6574707972636E65;
      break;
    case 0x1F:
      result = 1936746868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8C9E824(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0x10)
  {
  }

  return result;
}

uint64_t sub_1D8C9EAC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1D8C9EB14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v3 = OUTLINED_FUNCTION_63();

  return __swift_storeEnumTagSinglePayload(v3, v4, a2, v5);
}

uint64_t sub_1D8C9EB90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8C9EBA4()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_56();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9EBE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9EC1C()
{

  sub_1D8CAD730(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9EC78()
{

  v0 = OUTLINED_FUNCTION_56();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD7674();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D8C9ED74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8CD7674();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_63();

    return __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D8C9EEF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9EF28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1D8CD72C4();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9F0A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9F0D4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 120))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9F13C()
{

  v0 = OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9F6A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9F6DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9F854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD76C4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1D8CD7674();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D8C9F8F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D8CD76C4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1D8CD7674();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D8C9F9E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D8CD7554();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D8C9FA6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8CD7554();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8C9FAEC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8C9FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD7554();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D8C9FE94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8CD7554();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8C9FF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD7554();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D8CA0010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8CD7554();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_1D8CA00C0(void *a1, unsigned int a2)
{
  v2 = (a2 >> 7) & 3;
  if (!v2)
  {
    return 7;
  }

  if (v2 != 1)
  {
    return qword_1D8CD97A0[a1];
  }

  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  v7 = OUTLINED_FUNCTION_67(v4, v5, v4, &type metadata for PegasusConfigFetchError, v6);
  if (v7)
  {
    v8 = v13;
  }

  else
  {
    v8 = 6;
  }

  if (v7)
  {
    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  v10 = v15 | ~v7;
  v11 = sub_1D8CA00C0(v8, v9 | ((v15 & 1 | ((v7 & 1) == 0)) << 8));
  sub_1D8CAD9C0(v8, v9, v10 & 1);
  return v11;
}

uint64_t sub_1D8CA0190(void *a1, unsigned int a2)
{
  v2 = (a2 >> 7) & 3;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v11;
      }

      else
      {
        v5 = 6;
      }

      if (v4)
      {
        v6 = v12;
      }

      else
      {
        v6 = 0;
      }

      v7 = v13 | ~v4;
      v8 = sub_1D8CA0190(v5, v6 | ((v13 & 1 | ((v4 & 1) == 0)) << 8));
      sub_1D8CAD9C0(v5, v6, v7 & 1);
    }

    else
    {
      v8 = 0x65524C5255206F4ELL;
      switch(a1)
      {
        case 1uLL:
          v8 = 0x20747865746E6F43;
          break;
        case 2uLL:
        case 3uLL:
          v8 = 0xD000000000000014;
          break;
        case 4uLL:
        case 7uLL:
          v8 = 0x2064696C61766E69;
          break;
        case 5uLL:
          v8 = 0xD00000000000001CLL;
          break;
        case 6uLL:
          v8 = 0x726520726568744FLL;
          break;
        default:
          return v8;
      }
    }
  }

  else
  {
    v9 = sub_1D8CD8124();
    MEMORY[0x1DA726A90](v9);

    return 0x6F43737574617473;
  }

  return v8;
}

unint64_t sub_1D8CA03B8(char a1, unsigned int a2)
{
  v2 = (a2 >> 7) & 3;
  if (!v2)
  {
    return 19;
  }

  if (v2 == 1)
  {
    return a2 & 0x7F;
  }

  return 0x211815201F1E1D19uLL >> (8 * a1);
}

id sub_1D8CA03FC(id a1, unsigned int a2)
{
  v2 = a1;
  if (((a2 >> 7) & 3) != 1)
  {
    v15 = a2 | (((a2 & 0x100) != 0) << 8);
    v16 = sub_1D8CA00C0(a1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7E0, &qword_1D8CD95D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8CD8F40;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    v18 = sub_1D8CA0190(v2, v15);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v20 = sub_1D8CD7A84();
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    return sub_1D8CB7074(0xD000000000000018, 0x80000001D8CDDBE0, v16, v20);
  }

  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  v7 = OUTLINED_FUNCTION_67(v4, v5, v4, &type metadata for PegasusConfigFetchError, v6);
  if (!v7)
  {
    return sub_1D8CD7444();
  }

  OUTLINED_FUNCTION_64(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25);
  OUTLINED_FUNCTION_86();
  return v2;
}

uint64_t ShouldThrottleConfigFetchResultReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](v1);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CA0610(uint64_t a1)
{
  v2 = *v1;
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](v2);
  return sub_1D8CD8284();
}

BOOL static ShouldThrottleConfigFetchResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
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

uint64_t LocalCachePaths.init(standard:legacy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8CADBEC(a1, a3, &qword_1ECAAC668, &qword_1D8CD8FA0);
  v5 = type metadata accessor for LocalCachePaths(0);
  return sub_1D8CADBEC(a2, a3 + *(v5 + 20), &qword_1ECAAC668, &qword_1D8CD8FA0);
}

void static LocalCachePaths.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v48 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_37();
  v45 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  v44 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC670, &qword_1D8CD8FA8);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v25 = *(v22 + 48);
  v46 = v3;
  sub_1D8C979F0(v3, &v43 - v23, &qword_1ECAAC668, &qword_1D8CD8FA0);
  v47 = v1;
  sub_1D8C979F0(v1, &v24[v25], &qword_1ECAAC668, &qword_1D8CD8FA0);
  OUTLINED_FUNCTION_14(v24);
  if (!v26)
  {
    sub_1D8C979F0(v24, v15, &qword_1ECAAC668, &qword_1D8CD8FA0);
    OUTLINED_FUNCTION_14(&v24[v25]);
    if (!v26)
    {
      v28 = v48;
      (*(v48 + 32))(v45, &v24[v25], v4);
      OUTLINED_FUNCTION_2_0();
      sub_1D8C9D040(v29, v30, MEMORY[0x1E6968FC8]);
      v31 = sub_1D8CD7AC4();
      v32 = *(v28 + 8);
      v33 = OUTLINED_FUNCTION_38();
      v32(v33);
      (v32)(v15, v4);
      sub_1D8CADF40(v24, &qword_1ECAAC668, &qword_1D8CD8FA0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    (*(v48 + 8))(v15, v4);
LABEL_9:
    v27 = v24;
LABEL_20:
    sub_1D8CADF40(v27, &qword_1ECAAC670, &qword_1D8CD8FA8);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_14(&v24[v25]);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1D8CADF40(v24, &qword_1ECAAC668, &qword_1D8CD8FA0);
LABEL_11:
  v34 = *(type metadata accessor for LocalCachePaths(0) + 20);
  v35 = *(v16 + 48);
  sub_1D8C979F0(v46 + v34, v20, &qword_1ECAAC668, &qword_1D8CD8FA0);
  sub_1D8C979F0(v47 + v34, v20 + v35, &qword_1ECAAC668, &qword_1D8CD8FA0);
  OUTLINED_FUNCTION_14(v20);
  if (!v26)
  {
    v36 = v44;
    sub_1D8C979F0(v20, v44, &qword_1ECAAC668, &qword_1D8CD8FA0);
    OUTLINED_FUNCTION_14(v20 + v35);
    if (!v37)
    {
      v38 = v48;
      (*(v48 + 32))(v45, v20 + v35, v4);
      OUTLINED_FUNCTION_2_0();
      sub_1D8C9D040(v39, v40, MEMORY[0x1E6968FC8]);
      sub_1D8CD7AC4();
      v41 = *(v38 + 8);
      v42 = OUTLINED_FUNCTION_38();
      v41(v42);
      (v41)(v36, v4);
      sub_1D8CADF40(v20, &qword_1ECAAC668, &qword_1D8CD8FA0);
      goto LABEL_21;
    }

    (*(v48 + 8))(v36, v4);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14(v20 + v35);
  if (!v26)
  {
LABEL_19:
    v27 = v20;
    goto LABEL_20;
  }

  sub_1D8CADF40(v20, &qword_1ECAAC668, &qword_1D8CD8FA0);
LABEL_21:
  OUTLINED_FUNCTION_68();
}

uint64_t sub_1D8CA0C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = OUTLINED_FUNCTION_38();
    sub_1D8CA12F8(v4, v5);
  }

  return result;
}

uint64_t sub_1D8CA0CD4()
{
  if (!swift_unknownObjectWeakLoadStrong() || (v1 = *(v0 + 232), ObjectType = swift_getObjectType(), LOBYTE(v1) = (*(v1 + 16))(ObjectType, v1), result = swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    OUTLINED_FUNCTION_60();
    v4 = swift_allocObject();
    swift_weakInit();

    sub_1D8CA66FC(&unk_1D8CD9670, v4);
  }

  return result;
}

uint64_t sub_1D8CA0DB0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_1D8CA0E5C();
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0;
  }

  OUTLINED_FUNCTION_31();

  return v3(v0, v2);
}

uint64_t sub_1D8CA0E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for LocalCachePaths(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8CD7554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CA2BAC();
  sub_1D8C979F0(v6, v3, &qword_1ECAAC668, &qword_1D8CD8FA0);
  sub_1D8C9A6EC(v6, type metadata accessor for LocalCachePaths);
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    sub_1D8CADF40(v3, &qword_1ECAAC668, &qword_1D8CD8FA0);
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v11 = sub_1D8CD7A04();
    __swift_project_value_buffer(v11, qword_1ED9C4008);
    v12 = sub_1D8CD79E4();
    v13 = sub_1D8CD7E14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D8C92000, v12, v13, "ConfigDebug: pathToCache=nil", v14, 2u);
      MEMORY[0x1DA727900](v14, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v3, v7);
    v15 = *(v0 + 128);
    v16 = sub_1D8CD74A4();
    v17 = sub_1D8CD7AD4();
    v18 = [v15 loadWithUrl:v16 userAgent:v17 userDefaults:0];

    if (v18 || sub_1D8CA2DC0())
    {
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v19 = sub_1D8CD7A04();
      __swift_project_value_buffer(v19, qword_1ED9C4008);
      v20 = sub_1D8CD79E4();
      v21 = sub_1D8CD7E04();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D8C92000, v20, v21, "Loaded config from disk cache", v22, 2u);
        MEMORY[0x1DA727900](v22, -1, -1);
      }
    }

    else
    {
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v24 = sub_1D8CD7A04();
      __swift_project_value_buffer(v24, qword_1ED9C4008);
      v20 = sub_1D8CD79E4();
      v25 = sub_1D8CD7E14();
      if (os_log_type_enabled(v20, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8C92000, v20, v25, "ConfigDebug: cachedConfig=nil", v26, 2u);
        MEMORY[0x1DA727900](v26, -1, -1);
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_1D8CA12F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v10 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v10, qword_1ED9C4008);
  v11 = sub_1D8CD79E4();
  v12 = sub_1D8CD7E14();
  if (OUTLINED_FUNCTION_53(v12))
  {
    v13 = OUTLINED_FUNCTION_45();
    *v13 = 0;
    _os_log_impl(&dword_1D8C92000, v11, v12, "Configuration changed", v13, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v3 + 232);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(a1, a2, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8CD7D64();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v22 = OUTLINED_FUNCTION_58();
    sub_1D8CB5318(v22, v23, v9, v24, v25);
  }
}

uint64_t sub_1D8CA14F0()
{
  OUTLINED_FUNCTION_10();
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1ECAAC608 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  [v0 postNotificationName:qword_1ECAACA50 object:0 userInfo:0];

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_1D8CA15F0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_87();
  swift_allocObject();

  OUTLINED_FUNCTION_57(v1, v2, v3, v4);
  OUTLINED_FUNCTION_35(v5, v6, v7, v8, v9, v10, v11, v12, v16);
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_79(v13);

  return sub_1D8CA1A5C(v14, 2, 0, 2, 0);
}

uint64_t sub_1D8CA16D0()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  OUTLINED_FUNCTION_61(v7, v8);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D8CA17D8()
{
  v2 = *(v0 + 224);
  *(v0 + 128) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  OUTLINED_FUNCTION_38();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 121);
    v7 = OUTLINED_FUNCTION_63();
    v9 = sub_1D8CA03B8(v7, v8);
    if (v9 == 1)
    {
      *(*(v0 + 208) + qword_1ED9C3D50) = 1;
    }

    *(*(v0 + 208) + qword_1ED9C3D48) = v9;
    v10 = OUTLINED_FUNCTION_63();
    sub_1D8CA03FC(v10, v11);
    swift_willThrow();
    sub_1D8CAD9C0(v4, v5, v6);

    sub_1D8C9AA78();
  }

  else
  {
    v12 = *(v0 + 208);

    *(v12 + qword_1ED9C3D48) = 24;
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v13 = *(v0 + 224);
    v14 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v14, qword_1ED9C4008);
    v15 = v13;
    v16 = sub_1D8CD79E4();
    v17 = sub_1D8CD7E04();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 224);
      OUTLINED_FUNCTION_47();
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_66();
      *v1 = 138412290;
      v20 = v18;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D8C92000, v16, v17, "Unexpected error type. Error: %@", v1, 0xCu);
      sub_1D8CADF40(v19, &unk_1ECAACEE0, &qword_1D8CD9C30);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    swift_willThrow();
    sub_1D8C9AA78();
  }

  sub_1D8C9B99C();
  OUTLINED_FUNCTION_13();

  return v22();
}

uint64_t sub_1D8CA1A5C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 168) = a3;
  *(v6 + 176) = v5;
  *(v6 + 257) = a5;
  *(v6 + 256) = a4;
  *(v6 + 160) = a2;
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  v8 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA1A98, 0, 0);
}

uint64_t sub_1D8CA1A98()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0[22] + 200);
  v0[23] = v1;
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 48));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 48));
  if (v3 == 2)
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v4 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v4, qword_1ED9C4008);
    v5 = sub_1D8CD79E4();
    v6 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_48(v6))
    {
      v7 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v7);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    sub_1D8CADB98();
    OUTLINED_FUNCTION_23();
    v13 = swift_allocError();
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v14 = v13;
    OUTLINED_FUNCTION_29(v14, 129);
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v15();
  }

  else
  {
    v0[24] = *(v0[22] + 208);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_1D8CA1C5C;

    return sub_1D8CA64A8();
  }
}

uint64_t sub_1D8CA1C5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D8CA1D40()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 257);
  v3 = *(v0 + 160);
  v4 = *(v0 + 256);
  OUTLINED_FUNCTION_60();
  v5 = swift_allocObject();
  *(v0 + 208) = v5;
  swift_weakInit();
  v6 = swift_allocObject();
  *(v0 + 216) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = *(v0 + 32);
  *(v6 + 32) = *(v0 + 16);
  *(v6 + 48) = v7;
  v8 = *(v0 + 64);
  *(v6 + 64) = *(v0 + 48);
  *(v6 + 80) = v8;
  *(v6 + 96) = v3;
  *(v6 + 104) = v1;
  *(v6 + 112) = v4;

  sub_1D8C969AC(v0 + 16, v0 + 80);
  sub_1D8CAD75C(v3, v1, v4);
  v9 = OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8CA1E44()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = sub_1D8CA5C8C(&unk_1D8CD95E0, *(v0 + 216));
  v3 = v2;
  v4 = v2 & 1;

  *(v0 + 224) = v1;
  *(v0 + 258) = v4;
  if (v3)
  {
    v5 = swift_task_alloc();
    *(v0 + 232) = v5;
    *v5 = v0;
    v5[1] = sub_1D8CA1FA8;
    OUTLINED_FUNCTION_70();

    return sub_1D8CBDB9C();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    *v8 = v0;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_70();

    return MEMORY[0x1EEE6DA10](v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D8CA1FA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 259) = v3;

  v4 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8CA2094()
{
  OUTLINED_FUNCTION_22();
  if (*(v0 + 259))
  {
    v1 = swift_task_alloc();
    *(v0 + 240) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    *v1 = v0;
    OUTLINED_FUNCTION_21();
    v7 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 144, v2, &type metadata for ConfigResult, v3, v7, v4, v5, v6);
  }

  else
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v8 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v8, qword_1ED9C4008);
    v9 = sub_1D8CD79E4();
    v10 = sub_1D8CD7E04();
    if (OUTLINED_FUNCTION_48(v10))
    {
      v11 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v11);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    sub_1D8CADB98();
    OUTLINED_FUNCTION_23();
    v17 = swift_allocError();
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v18 = v17;
    OUTLINED_FUNCTION_29(v18, 129);
    swift_willThrow();

    OUTLINED_FUNCTION_13();

    return v19();
  }
}

uint64_t sub_1D8CA225C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D8CA2358()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_31();

  return v0();
}

uint64_t sub_1D8CA23C8()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 248);
  if (*(v0 + 258) == 1)
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v2 = v1;
    OUTLINED_FUNCTION_29(v2, 129);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CA247C()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;
  *(v7 + 328) = v0;

  if (v0)
  {
    sub_1D8CAD720(*(v7 + 304), *(v7 + 312), *(v7 + 360));
  }

  else
  {
    v11 = *(v7 + 304);
    v12 = *(v7 + 312);
    *(v7 + 336) = v3;
    *(v7 + 361) = v5;
    sub_1D8CAD720(v11, v12, *(v7 + 360));
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D8CA25A4()
{
  OUTLINED_FUNCTION_10();
  swift_unknownObjectRelease();
  v1 = *(v0 + 336);
  v2 = *(v0 + 361);

  OUTLINED_FUNCTION_31();

  return v3(v2, v1);
}

uint64_t sub_1D8CA2618(uint64_t a1)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v4 + 352) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_70();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    OUTLINED_FUNCTION_70();

    return v15(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_1D8CA275C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA27B8()
{
  OUTLINED_FUNCTION_10();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA281C(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for LocalCachePaths(0);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37();
  v11 = v10 - v9;
  v28 = v3[15];
  v12 = v3[2];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = v3[29];
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 16))(ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 1;
  }

  sub_1D8CA2BAC();
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v16 = sub_1D8CD7A04();
  __swift_project_value_buffer(v16, qword_1ED9C4008);

  v17 = sub_1D8CD79E4();
  v18 = sub_1D8CD7E04();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_47();
    v27 = v15;
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_78();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v19 = 136315138;
    v20 = sub_1D8CD7A74();
    v22 = sub_1D8C9D088(v20, v21, &v29);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_1D8C92000, v17, v18, "saving config: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    v15 = v27;
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  sub_1D8CA8D80(a1, v28, a2, a3, v12, v15 & 1, v11);
  if (v23 >> 60 == 15)
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v24, 4);
    swift_willThrow();
  }

  sub_1D8C9A6EC(v11, type metadata accessor for LocalCachePaths);
  return OUTLINED_FUNCTION_80();
}

BOOL sub_1D8CA2AE0(uint64_t a1)
{
  v3 = *(v1 + 152);
  v18[0] = *(v1 + 136);
  v18[1] = v3;
  v4 = *(v1 + 184);
  v18[2] = *(v1 + 168);
  v18[3] = v4;
  v5 = *(v1 + 152);
  v14 = *(v1 + 136);
  v15 = v5;
  v6 = *(v1 + 184);
  v16 = *(v1 + 168);
  v17 = v6;
  sub_1D8C969AC(v18, v19);
  v7 = sub_1D8C98C88(a1, &v14);
  v9 = v8;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_1D8CAD6CC(v19);
  if ((v9 & 0x80) == 0)
  {
    return v7 != 1;
  }

  v11 = OUTLINED_FUNCTION_38();
  sub_1D8CAD720(v11, v12, v13);
  return 1;
}

uint64_t sub_1D8CA2BAC()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1D8CA2C3C();
  }

  v1 = *(v0 + 232);
  ObjectType = swift_getObjectType();
  (*(v1 + 48))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8CA2C3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1D8C9CC40();
  v8 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1D8CADF40(v4, &qword_1ECAAC668, &qword_1D8CD8FA0);
    v9 = 1;
  }

  else
  {
    sub_1D8CD74B4();
    OUTLINED_FUNCTION_25();
    (*(v10 + 8))(v4, v8);
    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  type metadata accessor for LocalCachePaths(0);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v8);
  v14 = OUTLINED_FUNCTION_33();
  return sub_1D8CADBEC(v14, v15, v16, v17);
}

id sub_1D8CA2DC0()
{
  v1 = v0;
  sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_37();
  v3 = v0[13];
  v4 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v3);
  (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = sub_1D8CD7B84();
    v8 = v7;

    if (v6 == 20035 && v8 == 0xE200000000000000)
    {

      v10 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_80();
      v10 = sub_1D8CD8154();
    }
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for PegasusConfigController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  if (v10)
  {
    v13 = 0x64656C6261736964;
  }

  else
  {
    v13 = 0x746C7561666564;
  }

  if (v10)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v15 = sub_1D8CAD130(v13, v14, 0x7473696C70, 0xE500000000000000, v12);

  if (!v15)
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v26 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v26, qword_1ED9C4008);
    v27 = sub_1D8CD79E4();
    v28 = sub_1D8CD7E24();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v29);
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v30, v31, "Bundle is missing config.plist");
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    return 0;
  }

  sub_1D8CD74E4();

  v16 = v1[16];
  v17 = sub_1D8CD74A4();
  v18 = sub_1D8CD7AD4();
  v19 = [v16 loadWithUrl:v17 userAgent:v18 userDefaults:0];

  if (!v19)
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v32 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v32, qword_1ED9C4008);
    v33 = sub_1D8CD79E4();
    v34 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_53(v34))
    {
      v35 = OUTLINED_FUNCTION_45();
      *v35 = 0;
      _os_log_impl(&dword_1D8C92000, v33, v34, "Bundled config is not in plist format", v35, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v36 = OUTLINED_FUNCTION_33();
    v37(v36);
    return 0;
  }

  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v20 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v20, qword_1ED9C4008);
  v21 = sub_1D8CD79E4();
  v22 = sub_1D8CD7E14();
  if (OUTLINED_FUNCTION_53(v22))
  {
    v23 = OUTLINED_FUNCTION_45();
    *v23 = 0;
    _os_log_impl(&dword_1D8C92000, v21, v22, "Bundled config load complete", v23, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v24 = OUTLINED_FUNCTION_33();
  v25(v24);
  return v19;
}

uint64_t sub_1D8CA31B4()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));

  swift_unknownObjectRelease();

  sub_1D8C9B6F4(v0 + 224);

  return v0;
}

uint64_t sub_1D8CA3254()
{
  sub_1D8CA31B4();

  return MEMORY[0x1EEE6BDC0](v0, 248, 7);
}

uint64_t sub_1D8CA3290(__int128 *a1)
{
  v3 = *(v1 + 240);
  v4 = *(*(v3 + 24) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  result = sub_1D8C98C88(v5, v11);
  if (v10 < 0)
  {
    sub_1D8CAD720(result, v9, v10);
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    switch(result)
    {
      case 1:
      case 8:
        result = result;
        break;
      default:
        goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1D8CA3374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA3394, 0, 0);
}

uint64_t sub_1D8CA3394()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (!Strong)
  {
LABEL_6:
    OUTLINED_FUNCTION_13();

    return v4();
  }

  v2 = *(*(Strong + 200) + 16);
  os_unfair_lock_lock((v2 + 48));
  if (*(v2 + 24) > 0)
  {
    os_unfair_lock_unlock((v2 + 48));
LABEL_5:

    goto LABEL_6;
  }

  v3 = *(v2 + 16) - 1;
  os_unfair_lock_unlock((v2 + 48));
  if (v3 < 2)
  {
    goto LABEL_5;
  }

  v6 = *(v0 + 112);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v7;
  *(v0 + 16) = v9;
  *(v0 + 32) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  *(v0 + 128) = v10;
  *v10 = v11;
  v10[1] = sub_1D8CA34F0;

  return sub_1D8CA1A5C((v0 + 16), 1, 0, 2, 1);
}

uint64_t sub_1D8CA34F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D8CA35F8()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA3654()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_13();

  return v0();
}

void sub_1D8CA36C0()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-1] - v8;
  sub_1D8C979F0(v3, &v23[-1] - v8, &unk_1ECAAC790, &qword_1D8CD9550);
  v10 = sub_1D8CD7D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8CADF40(v9, &unk_1ECAAC790, &qword_1D8CD9550);
  }

  else
  {
    sub_1D8CD7D54();
    OUTLINED_FUNCTION_25();
    (*(v12 + 8))(v9, v10);
  }

  v13 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v15 = sub_1D8CD7D14();
    v17 = v16;
    v14 = swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      OUTLINED_FUNCTION_62();
      v18 = sub_1D8CD7B94() + 32;

      if (v17 | v15)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v15;
        v24[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v23[0] = 7;
      v23[1] = v20;
      v23[2] = v18;
      OUTLINED_FUNCTION_83(v19, v23);
      OUTLINED_FUNCTION_42();

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v25[0] = 0;
    v25[1] = 0;
    v21 = v25;
    v25[2] = v15;
    v25[3] = v17;
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_83(v14, v21);
LABEL_15:
  OUTLINED_FUNCTION_68();
}

id sub_1D8CA38CC()
{
  v0 = OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72(v2, v3);
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_17(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22[0], v22[1], v22[2], *&v22[3]);
  if (!v12)
  {
    sub_1D8CADF40(v23, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }

  v13 = sub_1D8C97460(0, &qword_1ED9C5510, 0x1E696AD98);
  if ((OUTLINED_FUNCTION_39(v22, v14, v15, v13, v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v22[0];
  v19 = [v22[0] BOOLValue];

  return v19;
}

uint64_t sub_1D8CA39B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 169) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  *(v6 + 168) = a2;
  *(v6 + 104) = a1;
  *(v6 + 112) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA39E0, 0, 0);
}

uint64_t sub_1D8CA39E0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    if ((*(v0 + 168) & 1) != 0 && (v2 = sub_1D8CA3290(*(v0 + 112)), v3))
    {
      v4 = v2;
      v5 = v3;

      OUTLINED_FUNCTION_31();

      return v6(v4, v5);
    }

    else
    {
      v8 = *(v0 + 112);

      sub_1D8CBDB44();

      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      *(v0 + 48) = v8[2];
      *(v0 + 64) = v11;
      *(v0 + 16) = v9;
      *(v0 + 32) = v10;
      swift_task_alloc();
      OUTLINED_FUNCTION_26();
      *(v0 + 144) = v12;
      *v12 = v13;
      v12[1] = sub_1D8CA3B90;
      v14 = *(v0 + 120);
      v15 = *(v0 + 128);
      v16 = *(v0 + 169);

      return sub_1D8CA3D7C(v0 + 16, v14, v15, v16);
    }
  }

  else
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v17, 7);
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v18();
  }
}

uint64_t sub_1D8CA3B90(uint64_t a1)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_1();
  *v11 = v10;
  *(v8 + 152) = v1;

  if (!v1)
  {
    *(v8 + 160) = v4;
    *(v8 + 170) = v6;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_70();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D8CA3CA4()
{
  OUTLINED_FUNCTION_10();
  sub_1D8CBE864();

  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 170);

  return v1(v2);
}

uint64_t sub_1D8CA3D14()
{
  OUTLINED_FUNCTION_10();
  sub_1D8CBE864();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA3D7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 280) = a4;
  *(v5 + 64) = a2;
  v7 = sub_1D8CD72C4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7F0, &qword_1D8CD95F0);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = *a1;
  *(v5 + 184) = *(a1 + 16);
  *(v5 + 192) = *(a1 + 24);
  *(v5 + 208) = *(a1 + 40);
  *(v5 + 40) = *(a1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D8CA3F1C, 0, 0);
}

uint64_t sub_1D8CA3F1C()
{
  v97 = v0;
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_1D8CD7A04();
  *(v0 + 216) = __swift_project_value_buffer(v1, qword_1ED9C4008);
  v2 = sub_1D8CD79E4();
  v3 = sub_1D8CD7E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_45();
    *v4 = 0;
    _os_log_impl(&dword_1D8C92000, v2, v3, "fetching config", v4, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  if ((sub_1D8C998B4() & 1) == 0)
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v11, 1);
    swift_willThrow();
LABEL_19:
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_13();

    return v47();
  }

  v5 = *(v0 + 80);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 232);
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(ObjectType, v6);
    v8 = (*(v6 + 40))(ObjectType, v6);
    v10 = v9;
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v92 = *(v0 + 168);
  v93 = v13;
  v94 = *(v0 + 192);
  v95 = v12;
  v96 = *(v0 + 40);
  OUTLINED_FUNCTION_24();
  sub_1D8CD5B60(v14, v15, 1, v16);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 144);
  v20 = *(v0 + 88);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_1D8CADBEC(v18, v17, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  v21 = OUTLINED_FUNCTION_80();
  sub_1D8C979F0(v21, v22, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v23 = &qword_1ECAAC7F0;
    v24 = &qword_1D8CD95F0;
    v25 = *(v0 + 144);
LABEL_13:
    sub_1D8CADF40(v25, v23, v24);
    v8 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v26 = *(v0 + 128);
  sub_1D8CD72B4();
  v27 = OUTLINED_FUNCTION_80();
  v28(v27);
  v29 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v26, 1, v29) == 1)
  {
    v23 = &qword_1ECAAC668;
    v24 = &qword_1D8CD8FA0;
    v25 = *(v0 + 128);
    goto LABEL_13;
  }

  v8 = sub_1D8CD7494();
  v10 = v30;
  OUTLINED_FUNCTION_25();
  v31 = OUTLINED_FUNCTION_62();
  v32(v31);
LABEL_15:
  *(v0 + 224) = v8;
  *(v0 + 232) = v10;
  v33 = *(v0 + 136);
  v34 = *(v0 + 88);
  sub_1D8C979F0(*(v0 + 160), v33, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  v36 = *(v0 + 136);
  if (EnumTagSinglePayload == 1)
  {

    sub_1D8CADF40(v36, &qword_1ECAAC7F0, &qword_1D8CD95F0);
    v37 = sub_1D8CD79E4();
    v38 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_48(v38))
    {
      v39 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v39);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v45 = *(v0 + 160);

    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v46 = 0;
    OUTLINED_FUNCTION_29(v46, 256);
    swift_willThrow();
    sub_1D8CADF40(v45, &qword_1ECAAC7F0, &qword_1D8CD95F0);
    goto LABEL_19;
  }

  v91 = v5;
  v49 = *(v0 + 120);
  v50 = *(v0 + 96);
  v89 = *(v0 + 104);
  v51 = *(v0 + 88);
  v53 = *(v0 + 64);
  v52 = *(v0 + 72);
  v54 = *(v0 + 280);
  (*(v50 + 32))(v49, v36, v51);
  sub_1D8CD7254();
  sub_1D8CBDDA0();
  v55 = *(v50 + 16);
  v56 = OUTLINED_FUNCTION_62();
  v55(v56);
  (v55)(v89, v49, v51);
  sub_1D8CAD75C(v53, v52, v54);
  v57 = sub_1D8CD79E4();
  v58 = sub_1D8CD7E14();
  sub_1D8CAD730(v53, v52, v54);
  v59 = os_log_type_enabled(v57, v58);
  v61 = *(v0 + 104);
  v60 = *(v0 + 112);
  v63 = *(v0 + 88);
  v62 = *(v0 + 96);
  if (v59)
  {
    v88 = *(v0 + 72);
    v86 = *(v0 + 64);
    v87 = *(v0 + 280);
    OUTLINED_FUNCTION_78();
    v90 = v58;
    v64 = swift_slowAlloc();
    *&v92 = swift_slowAlloc();
    *v64 = 136315650;
    v65 = sub_1D8CD7264();
    v67 = v66;
    v68 = *(v62 + 8);
    v68(v60, v63);
    v69 = sub_1D8C9D088(v65, v67, &v92);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2080;
    *(v0 + 56) = sub_1D8CD7284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7F8, &qword_1D8CD9600);
    v70 = sub_1D8CD7B64();
    v72 = v71;
    v68(v61, v63);
    v73 = sub_1D8C9D088(v70, v72, &v92);

    *(v64 + 14) = v73;
    *(v64 + 22) = 2080;
    v74 = sub_1D8CA4DAC(v86, v88, v87);
    v76 = sub_1D8C9D088(v74, v75, &v92);

    *(v64 + 24) = v76;
    _os_log_impl(&dword_1D8C92000, v57, v90, "config request: %s, header: %s, reason: %s", v64, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  else
  {

    v68 = *(v62 + 8);
    v68(v61, v63);
    v68(v60, v63);
  }

  *(v0 + 240) = v68;
  v78 = *(v0 + 176);
  v77 = *(v0 + 184);
  v79 = *(v0 + 168);
  v80 = *(v0 + 80);
  sub_1D8CA4ED4(*(v0 + 64), *(v0 + 72), *(v0 + 280));
  v81 = *(v80 + 16);
  *(v0 + 16) = v79;
  *(v0 + 24) = v78;
  *(v0 + 32) = v77;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 248) = Strong;
  v83 = *(v91 + 232);

  v84 = swift_task_alloc();
  *(v0 + 256) = v84;
  *v84 = v0;
  v84[1] = sub_1D8CA4708;
  v85 = *(v0 + 120);

  return sub_1D8CA50C8(v81, v85, v80 + 40, v0 + 16, Strong, v83);
}

uint64_t sub_1D8CA4708()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D8CA4844()
{
  v51 = v0;

  v1 = sub_1D8CD79E4();
  v2 = sub_1D8CD7E04();

  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_47();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_78();
    v4 = swift_slowAlloc();
    v50 = v4;
    *v3 = 136315138;
    v5 = sub_1D8CD7A74();
    v7 = sub_1D8C9D088(v5, v6, &v50);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  if (!*(v0 + 232))
  {

    v20 = sub_1D8CD79E4();
    v21 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_48(v21))
    {
      v22 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v22);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v28 = *(v0 + 240);
    v17 = *(v0 + 160);
    v29 = *(v0 + 120);
    v30 = *(v0 + 88);

    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v31, 4);
    swift_willThrow();
    v28(v29, v30);
    goto LABEL_9;
  }

  v13 = *(v0 + 272);
  v14 = sub_1D8CA281C(*(v0 + 264), *(v0 + 224), *(v0 + 232));
  if (v13)
  {
    v16 = *(v0 + 240);
    v17 = *(v0 + 160);
    v18 = *(v0 + 120);
    v19 = *(v0 + 88);

    v16(v18, v19);
LABEL_9:
    sub_1D8CADF40(v17, &qword_1ECAAC7F0, &qword_1D8CD95F0);
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_13();

    return v32();
  }

  v34 = v14;
  v35 = v15;
  v36 = *(v0 + 80);

  v37 = *(v36 + 128);
  v48 = v34;
  v38 = sub_1D8CD7584();
  OUTLINED_FUNCTION_38();
  v39 = sub_1D8CD7AD4();
  v49 = [v37 loadWithData:v38 userAgent:v39 userDefaults:0];

  sub_1D8CA5B0C(sub_1D8CA7094);
  v40 = sub_1D8CD79E4();
  v41 = sub_1D8CD7E14();
  if (OUTLINED_FUNCTION_53(v41))
  {
    v42 = OUTLINED_FUNCTION_45();
    *v42 = 0;
    _os_log_impl(&dword_1D8C92000, v40, v41, "Setting fetched config value in completion", v42, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v43 = *(v0 + 240);
  v44 = *(v0 + 160);
  v45 = *(v0 + 120);
  v46 = *(v0 + 88);
  sub_1D8CADC38(v48, v35);

  v43(v45, v46);
  sub_1D8CADF40(v44, &qword_1ECAAC7F0, &qword_1D8CD95F0);

  OUTLINED_FUNCTION_31();

  return v47(2, v49);
}

uint64_t sub_1D8CA4CC8()
{
  v1 = *(v0 + 160);
  (*(v0 + 240))(*(v0 + 120), *(v0 + 88));
  sub_1D8CADF40(v1, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1D8CA4DAC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v4 = 0x64612E6D61726170;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = 0x68632E6D61726170;
LABEL_5:
    v6 = v4;
    MEMORY[0x1DA726A90](a1, a2);
    return v6;
  }

  result = 0x64657269707865;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x434C525565736162;
      break;
    case 4:
      result = 0x676E6168436C7275;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D8CA4ED4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D8CD7964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD7E74();
  if (qword_1ED9C3D90 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D8CD8F50;
  v11 = sub_1D8CA4DAC(a1, a2, a3);
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D8C96E60();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_1D8CABD80();
  v15 = MEMORY[0x1E69E65A8];
  *(v10 + 96) = MEMORY[0x1E69E6530];
  *(v10 + 104) = v15;
  *(v10 + 72) = v14;
  sub_1D8CD7954();
  sub_1D8CD7914();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D8CA50C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  *(v6 + 128) = a2;
  *(v6 + 136) = a3;
  *(v6 + 120) = a1;
  *(v6 + 160) = *a4;
  *(v6 + 176) = *(a4 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D8CA5100, 0, 0);
}

uint64_t sub_1D8CA5100()
{
  v27 = v0;
  v20 = *(v0 + 168);
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v22 = *(v0 + 144);
  v23 = *(v0 + 176);
  v3 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC800, &qword_1D8CD9608);
  swift_allocObject();
  v4 = sub_1D8CACBA8(0);
  *(v0 + 56) = 0u;
  *(v0 + 184) = v4;
  *(v0 + 72) = 0u;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v20;
  v7[6] = v23;
  v21 = *(v6 + 8);

  v21(sub_1D8CADC90, v7, v5, v6);

  if (v22)
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(&v25, v9, ObjectType, v8);
    sub_1D8CADF40(v0 + 56, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CADF40(v0 + 56, &qword_1ECAAC680, &qword_1D8CD8FB0);
    v25 = 0u;
    v26 = 0u;
  }

  v11 = v26;
  *(v0 + 56) = v25;
  *(v0 + 72) = v11;
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = *MEMORY[0x1E696A9C0];
  v24 = (*(v13 + 8) + **(v13 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  *(v0 + 192) = v15;
  *v15 = v16;
  v15[1] = sub_1D8CA53E0;
  v17 = *(v0 + 128);
  v18.n128_u32[0] = v14;

  return v24(v0 + 88, v17, v12, v13, v18);
}

uint64_t sub_1D8CA53E0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D8CA54DC()
{
  v60 = v0;
  v1 = v0[25];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[13];
  v4 = v0[14];
  v56 = v3;
  v57 = v2;
  v58 = v5;
  v59 = v4;
  v6 = OUTLINED_FUNCTION_27();
  sub_1D8CADCA0(v6, v7);
  v8 = v5;

  sub_1D8CA7C80(&v56);
  v9 = v1;
  v10 = v58;
  sub_1D8CADC38(v56, v57);

  if (v1)
  {
    v11 = OUTLINED_FUNCTION_27();
    sub_1D8CADC38(v11, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v17 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v17, qword_1ED9C4008);
    v18 = v1;
    v19 = sub_1D8CD79E4();
    v20 = sub_1D8CD7E24();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_47();
      swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_66();
      *v4 = 138412290;
      v22 = v9;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v23;
      *v21 = v23;
      OUTLINED_FUNCTION_52();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      sub_1D8CADF40(v21, &unk_1ECAACEE0, &qword_1D8CD9C30);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v29 = v0[18];

    v30 = sub_1D8CA824C(v9);
    if (v29)
    {
      swift_getObjectType();
      v31 = OUTLINED_FUNCTION_51();
      v32(v31);
    }

    if (sub_1D8CA82C8())
    {
      v33 = OUTLINED_FUNCTION_42();
      sub_1D8CAC0F4(v33);
    }

    swift_willThrow();

    sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
    v34 = sub_1D8CA82C8();
    if (v34)
    {
      sub_1D8CAF0EC(v34);
    }

    OUTLINED_FUNCTION_13();

    return v35();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27();
    sub_1D8CADCA0(v13, v14);
    v15 = OUTLINED_FUNCTION_27();
    v37 = sub_1D8CA8060(v15, v16);
    v38 = v0[18];
    v39 = OUTLINED_FUNCTION_27();
    sub_1D8CADC38(v39, v40);
    if (v38)
    {
      v55 = v37;
      v41 = v0[19];
      ObjectType = swift_getObjectType();
      v56 = v3;
      v57 = v2;
      v58 = v5;
      v59 = v4;
      v42 = *(v41 + 80);
      v43 = OUTLINED_FUNCTION_27();
      sub_1D8CADCA0(v43, v44);
      v45 = v8;

      v46 = v41;
      v37 = v55;
      v42(&v56, v0 + 7, ObjectType, v46);
      v47 = OUTLINED_FUNCTION_27();
      sub_1D8CADC38(v47, v48);

      v49 = v58;
      sub_1D8CADC38(v56, v57);

      sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
    }

    else
    {
      sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
      v50 = OUTLINED_FUNCTION_27();
      sub_1D8CADC38(v50, v51);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v52 = sub_1D8CA82C8();
    if (v52)
    {
      sub_1D8CAF0EC(v52);
    }

    v53 = v0[1];

    return v53(v37);
  }
}

uint64_t sub_1D8CA58D8()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v2 = v0[25];
  v3 = sub_1D8CD7444();
  v4 = sub_1D8CC6978();

  LOBYTE(v3) = v4 | 0x80;
  sub_1D8CAD678();
  OUTLINED_FUNCTION_23();
  v5 = swift_allocError();
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v7 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v7, qword_1ED9C4008);
  v8 = v5;
  v9 = sub_1D8CD79E4();
  v10 = sub_1D8CD7E24();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_47();
    swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_66();
    *v1 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_52();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_1D8CADF40(v11, &unk_1ECAACEE0, &qword_1D8CD9C30);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v19 = v0[18];

  v20 = sub_1D8CA824C(v5);
  if (v19)
  {
    swift_getObjectType();
    v21 = OUTLINED_FUNCTION_51();
    v22(v21);
  }

  if (sub_1D8CA82C8())
  {
    v23 = OUTLINED_FUNCTION_42();
    sub_1D8CAC0F4(v23);
  }

  swift_willThrow();

  sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
  v24 = sub_1D8CA82C8();
  if (v24)
  {
    sub_1D8CAF0EC(v24);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_70();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32);
}

void sub_1D8CA5B0C(void (*a1)(os_unfair_lock_s *))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  a1(v3 + 4);

  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1D8CA5B6C(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 112) = a1;
  return v1;
}

void *sub_1D8CA5BA4()
{
  if (*(v0 + 120))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    sub_1D8CD7D84();
  }

  if (*(v0 + 128))
  {

    sub_1D8CD7D84();
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D8CA5C64()
{
  v0 = sub_1D8CA5BA4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8CA5C8C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  if (*(v2 + 120))
  {
    v8 = *(v2 + 120);
  }

  else
  {
    v9 = sub_1D8CD7D64();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = a1;
    v11[6] = a2;

    sub_1D8CA36C0();
    v8 = v12;
    sub_1D8CADF40(v7, &unk_1ECAAC790, &qword_1D8CD9550);
    *(v2 + 120) = v8;
  }

  return v8;
}

uint64_t sub_1D8CA5E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA5E38, 0, 0);
}

uint64_t sub_1D8CA5E38()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 104);

    v6 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1D8CA5FA4;

    return v6();
  }

  else
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v4, 7);
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v5();
  }
}

uint64_t sub_1D8CA5FA4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 128) = v5;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D8CA60AC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CA6170, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 88);
    *v3 = *(v0 + 160);
    *(v3 + 8) = v2;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

uint64_t sub_1D8CA6170()
{
  OUTLINED_FUNCTION_10();
  sub_1D8CA63A4(*(v0 + 160), *(v0 + 128));

  v1 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D8CA61DC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *v2 = *(v0 + 160);
  *(v2 + 8) = v1;
  OUTLINED_FUNCTION_13();
  return v3();
}

uint64_t sub_1D8CA6214()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CA62D8, Strong, 0);
  }

  else
  {
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v2();
  }
}

uint64_t sub_1D8CA62D8()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_58();
  sub_1D8CA63A4(v0, v1);

  v2 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8CA6340()
{
  OUTLINED_FUNCTION_19();
  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA63A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1D8CA63FC(v4);
  }

  *(v2 + 120) = 0;

  *(v2 + 136) = a2 != 0;
  return result;
}

uint64_t sub_1D8CA63FC(uint64_t a1)
{
  v8 = a1;
  v3 = *(v1[3] + 16);
  os_unfair_lock_lock(v3);
  v7 = v1[2];
  v1[2] = a1;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v3);
  v4 = v1[4];
  if (v4)
  {
    v5 = v1[5];

    v4(&v7, &v8);
    sub_1D8C9EB90(v4, v5);
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8CA64C8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0[2] + 128);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1D8CA65AC;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v3();
  }
}

uint64_t sub_1D8CA65AC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D8CA66A4()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA66FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D8CD7D44();
  v7 = sub_1D8CD7D64();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;

  sub_1D8CB5318(0, 0, v6, &unk_1D8CD9560, v9);
}

uint64_t sub_1D8CA6824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8CA68C4, 0, 0);
}

uint64_t sub_1D8CA68C4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CA6978, Strong, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v2();
  }
}

uint64_t sub_1D8CA6978()
{
  v1 = *(v0 + 72);
  *(v0 + 88) = *(v1 + 137);
  *(v1 + 137) = 1;
  return OUTLINED_FUNCTION_4_0();
}

uint64_t sub_1D8CA699C()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 72);
  if (*(v0 + 88))
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_70();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    sub_1D8CD7D64();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v13;
    v18[5] = v12;
    v18[6] = v1;

    v19 = OUTLINED_FUNCTION_58();
    *(v0 + 80) = sub_1D8CB5318(v19, v20, v11, v21, v18);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_70();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }
}

uint64_t sub_1D8CA6AC0()
{
  OUTLINED_FUNCTION_10();
  sub_1D8CA6E98(*(v0 + 80));
  v1 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D8CA6B1C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA6B84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1D8CA6C70;

  return v9();
}

uint64_t sub_1D8CA6C70(uint64_t a1)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_1();
  *v11 = v10;

  if (v1)
  {

    v6 = 0;
    v4 = 0;
  }

  *(v8 + 32) = v6;
  *(v8 + 40) = v4;
  OUTLINED_FUNCTION_70();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D8CA6D80()
{
  OUTLINED_FUNCTION_10();
  sub_1D8CA6E38(*(v0 + 32), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D8CA6DE0()
{
  OUTLINED_FUNCTION_10();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1D8CA6E38(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = 0;

  *(v2 + 137) = 0;
  if ((*(v2 + 136) & 1) == 0)
  {
    if (a2)
    {
      v5 = swift_unknownObjectRetain();
      return sub_1D8CA63FC(v5);
    }
  }

  return result;
}

BOOL sub_1D8CA6E84()
{
  v1 = *(v0 + 137);
  *(v0 + 137) = 1;
  return (v1 & 1) == 0;
}

uint64_t sub_1D8CA6E98(uint64_t result)
{
  if (*(v1 + 137) == 1 && !*(v1 + 128))
  {
    *(v1 + 128) = result;
  }

  return result;
}

uint64_t sub_1D8CA6EC8()
{
  v1 = *(*v0 + 88);
  v2 = sub_1D8CD7ED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D8C9EB90(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_1D8CA6F88()
{
  v0 = sub_1D8CA6EC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8CA6FDC()
{

  return v0;
}

uint64_t sub_1D8CA7004()
{
  v0 = sub_1D8CA6FDC();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

double sub_1D8CA7034()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_1D8CA7044()
{
  sub_1D8CA5B0C(sub_1D8CA7094);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D8CA7094(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8CD7994();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = sub_1D8CD7964();
  v49 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v41 - v14;
  v16 = *a1;
  if (*(*a1 + 16))
  {
    v44 = v9;
    v16[2] = 0;
    v17 = v16[4];
    if (qword_1ED9C3FE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D8CD7984();
    __swift_project_value_buffer(v18, qword_1ED9C3FE8);
    v19 = sub_1D8CD7974();
    sub_1D8CD79A4();
    v43 = sub_1D8CD7E54();
    if (sub_1D8CD7EA4())
    {
      v42 = v17;

      sub_1D8CD79D4();

      v21 = v47;
      v20 = v48;
      v22 = (*(v47 + 88))(v8, v48);
      v23 = *MEMORY[0x1E69E93E8];
      v45 = v1;
      if (v22 == v23)
      {
        v24 = 0;
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v8, v20);
        v25 = "BagRequests=%{public}lu";
        v24 = 1;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      *(v26 + 1) = v24;
      *(v26 + 2) = 2050;
      *(v26 + 4) = v42;
      v27 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v19, v43, v27, "bagExpiredSpan", v25, v26, 0xCu);
      MEMORY[0x1DA727900](v26, -1, -1);
      v2 = v45;
    }

    v9 = v44;
    result = (*(v49 + 8))(v15, v44);
  }

  v16[4] = 0;
  if (v16[3])
  {
    v16[3] = 0;
    v44 = v16[5];
    if (qword_1ED9C3FE0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8CD7984();
    __swift_project_value_buffer(v28, qword_1ED9C3FE8);
    v29 = sub_1D8CD7974();
    sub_1D8CD79A4();
    v30 = sub_1D8CD7E54();
    v31 = sub_1D8CD7EA4();
    v32 = v46;
    if (v31)
    {
      v45 = v2;

      sub_1D8CD79D4();

      v34 = v47;
      v33 = v48;
      if ((*(v47 + 88))(v32, v48) == *MEMORY[0x1E69E93E8])
      {
        v35 = v9;
        v36 = 0;
        v37 = "[Error] Interval already ended";
      }

      else
      {
        v38 = v32;
        v35 = v9;
        (*(v34 + 8))(v38, v33);
        v37 = "BagRequests=%{public}lu";
        v36 = 1;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      *(v39 + 1) = v36;
      *(v39 + 2) = 2050;
      *(v39 + 4) = v44;
      v40 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v29, v30, v40, "bagInvalidSpan", v37, v39, 0xCu);
      MEMORY[0x1DA727900](v39, -1, -1);
      v9 = v35;
    }

    result = (*(v49 + 8))(v12, v9);
  }

  v16[5] = 0;
  return result;
}

uint64_t sub_1D8CA757C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D8CD7964();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *a1;
  if (*(*a1 + 16))
  {
    goto LABEL_6;
  }

  v27 = *(v12 + 32);
  if (qword_1ED9C3FE0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = sub_1D8CD7984();
    __swift_project_value_buffer(v13, qword_1ED9C3FE8);
    sub_1D8CD7954();
    v14 = sub_1D8CD7974();
    v15 = sub_1D8CD7E64();
    if (sub_1D8CD7EA4())
    {
      v16 = swift_slowAlloc();
      v26 = v2;
      v17 = v16;
      *v16 = 134349056;
      *(v16 + 4) = v27;
      v18 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v14, v15, v18, "bagExpiredSpan", "BagRequests=%{public}lu", v17, 0xCu);
      v19 = v17;
      v2 = v26;
      MEMORY[0x1DA727900](v19, -1, -1);
    }

    (*(v5 + 16))(v8, v11, v4);
    sub_1D8CD79C4();
    swift_allocObject();
    v20 = sub_1D8CD79B4();
    v21 = *(v5 + 8);
    v5 += 8;
    v21(v11, v4);
    *(v12 + 16) = v20;

LABEL_6:
    v22 = *(v12 + 32);
    v23 = __CFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  *(v12 + 32) = v24;
  return result;
}

uint64_t sub_1D8CA77DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8CD7964();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *a1;
  if (*(*a1 + 24))
  {
    goto LABEL_6;
  }

  v27 = v12[4];
  if (qword_1ED9C3FE0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = sub_1D8CD7984();
    __swift_project_value_buffer(v13, qword_1ED9C3FE8);
    sub_1D8CD7954();
    v14 = sub_1D8CD7974();
    v15 = sub_1D8CD7E64();
    if (sub_1D8CD7EA4())
    {
      v16 = swift_slowAlloc();
      v26 = v2;
      v17 = v16;
      *v16 = 134349056;
      *(v16 + 4) = v27;
      v18 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v14, v15, v18, "bagExpiredSpan", "BagRequests=%{public}lu", v17, 0xCu);
      v19 = v17;
      v2 = v26;
      MEMORY[0x1DA727900](v19, -1, -1);
    }

    (*(v5 + 16))(v8, v11, v4);
    sub_1D8CD79C4();
    swift_allocObject();
    v20 = sub_1D8CD79B4();
    v21 = *(v5 + 8);
    v5 += 8;
    v21(v11, v4);
    v12[3] = v20;

LABEL_6:
    v22 = v12[5];
    v23 = __CFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v12[5] = v24;
  return result;
}

void sub_1D8CA7A3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v11 = nw_activity_create();
  type metadata accessor for ResourceAccessNetworkSpan(0);
  v12 = swift_allocObject();
  v13 = v12 + qword_1ED9C5610;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v12 + qword_1ED9C5608);
  *v14 = a4;
  v14[1] = a5;
  v14[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8CD8F50;
  v16 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D8C96E60();
  *(inited + 32) = a5;
  *(inited + 40) = a6;
  *(inited + 96) = v16;
  *(inited + 104) = v17;
  *(inited + 64) = v17;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  *(v12 + *(*v12 + 472)) = 0;
  v18 = *(*v12 + 480);
  *(v12 + v18) = 0;
  v19 = (v12 + *(*v12 + 464));
  *v19 = a1;
  v19[1] = &off_1F5453830;
  v20 = a1;

  v21 = v20;

  [v21 set:v11 nw:? activity:?];
  *(v12 + v18) = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = sub_1D8CAC614(a3, 1, "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s", 99, 2, inited);

  swift_unknownObjectRelease();
  sub_1D8CA7C2C(v22);
}

void sub_1D8CA7C2C(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_1D8CA7C80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (v3 && (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 statusCode];
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8CD7A04();
    __swift_project_value_buffer(v8, qword_1ED9C4008);
    v9 = v6;
    v10 = sub_1D8CD79E4();
    v11 = sub_1D8CD7E14();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v12 = 134218242;
      *(v12 + 4) = v7;
      *(v12 + 12) = 2080;
      v13 = [v5 debugDescription];
      v14 = sub_1D8CD7B04();
      v16 = v15;

      v17 = sub_1D8C9D088(v14, v16, &v32);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1D8C92000, v10, v11, "config request status code: %ld, response: %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x1DA727900](v31, -1, -1);
      MEMORY[0x1DA727900](v12, -1, -1);
    }

    if (v7 != 200)
    {
      sub_1D8CAD678();
      swift_allocError();
      *v18 = v7;
      *(v18 + 8) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v19 = qword_1ED9C4000;
    v20 = v3;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1D8CD7A04();
    __swift_project_value_buffer(v21, qword_1ED9C4008);
    sub_1D8CADCA0(v1, v2);
    v22 = v20;

    v23 = sub_1D8CD79E4();
    v24 = sub_1D8CD7E04();
    sub_1D8CADC38(v1, v2);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
      v27 = sub_1D8CD7B64();
      v29 = sub_1D8C9D088(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1D8C92000, v23, v24, "UNIDENTIFIED_RESPONSE_TYPE %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x1DA727900](v26, -1, -1);
      MEMORY[0x1DA727900](v25, -1, -1);
    }

    else
    {
    }

    sub_1D8CAD678();
    swift_allocError();
    *v30 = 4;
    *(v30 + 8) = 256;
    swift_willThrow();
  }
}

id sub_1D8CA8060(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1D8CD7584();
  v12[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:1 error:v12];

  v5 = v12[0];
  if (v4)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
    sub_1D8C9D24C(v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
    if ((swift_dynamicCast() & 1) != 0 && (v4 = v11, v6 = _s20PegasusConfiguration0A25ConfigControllerInternalsV05cleanC7OfNullsySDySSypGSgAEFZ_0(v11), , v6))
    {
      v4 = sub_1D8CA85A4(v6);

      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {
      sub_1D8CAD678();
      swift_allocError();
      *v7 = 5;
      *(v7 + 8) = 256;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }
  }

  else
  {
    v8 = v5;
    v4 = sub_1D8CD7454();

    swift_willThrow();
    sub_1D8CAD678();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = 149;
    swift_willThrow();
  }

  return v4;
}

void *sub_1D8CA824C(void *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  v6 = OUTLINED_FUNCTION_67(v3, v4, v3, &type metadata for PegasusConfigFetchError, v5);
  if (!v6)
  {
    return sub_1D8CD7444();
  }

  OUTLINED_FUNCTION_64(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, HIBYTE(v17));
  OUTLINED_FUNCTION_86();
  return v1;
}

uint64_t sub_1D8CA82C8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t _s20PegasusConfiguration0A25ConfigControllerInternalsV05cleanC7OfNullsySDySSypGSgAEFZ_0(uint64_t a1)
{
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
  v3[0] = a1;

  sub_1D8CA8868(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8CADF40(v4, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }
}

void sub_1D8CA83C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC828, &qword_1D8CD9678);
    v2 = sub_1D8CD80C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_1D8C9785C(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1D8CA85A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC810, &qword_1D8CD9618);
    v2 = sub_1D8CD80C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1D8C9D24C(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D8CAD7DC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D8CAD7DC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D8CAD7DC(v31, v32);
    result = sub_1D8CD7F94();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1D8CAD7DC(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}