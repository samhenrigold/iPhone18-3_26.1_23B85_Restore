void sub_1C04CE5D4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *a1;
  v36 = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_1C04B915C(v32, v33, v34, v35, a2);
    sub_1C0482080(v9, v10, v11, v12);
    goto LABEL_3;
  }

  v36 = v7;
  v13 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = v7;
    v17 = v7;
    if (swift_dynamicCast())
    {
      v18 = v36;
      sub_1C04CED34();
      v19 = swift_allocError();
      *v20 = v18;
      sub_1C04B9574(v19, a2);

      *v6 = v18;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EBE0CA18 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EBE0D490);
    v22 = v7;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v36 = v7;
      v27 = v7;
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "search failure: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

LABEL_3:
    *v6 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v14 = v32;
  v15 = v33;
  v16 = v34;
  sub_1C04B93C4(v32, v33, v34, a2);
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v14, v15, v16);
}

uint64_t sub_1C04CE964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v28 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1C04F6A80();
  OUTLINED_FUNCTION_0();
  v33 = v15;
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D4E8, &qword_1C04F9DC8);
  OUTLINED_FUNCTION_0();
  v32 = v19;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  v23 = sub_1C04CC1C0();
  v36 = sub_1C04CC268(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D4F0, &qword_1C04F9DD0);
  sub_1C047C1A4(&qword_1EBE0D4F8, &qword_1EBE0D4F0, &qword_1C04F9DD0, MEMORY[0x1E695BED8]);
  sub_1C04CED34();
  sub_1C04F6580();

  (*(v9 + 16))(v13, v30, v28);
  sub_1C04F6A90();
  v36 = v31;
  v24 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EBE0D508, &qword_1EBE0D4E8, &qword_1C04F9DC8, MEMORY[0x1E695BCF8]);
  sub_1C04B71BC(qword_1EDE41568, sub_1C04ABCD8, MEMORY[0x1E69E8028]);

  v25 = v29;
  sub_1C04F6550();

  sub_1C04A12B4(v7, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v33 + 8))(v18, v34);
  return (*(v32 + 8))(v22, v25);
}

unint64_t sub_1C04CED34()
{
  result = qword_1EBE0D500;
  if (!qword_1EBE0D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D500);
  }

  return result;
}

uint64_t sub_1C04CED88(uint64_t a1)
{
  v2 = sub_1C04CC1C0();
  v3 = sub_1C04CC268(a1, v2);

  return v3;
}

uint64_t PegasusProxyForLookup.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04CEE0C()
{
  result = qword_1EBE0D510;
  if (!qword_1EBE0D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForLookup.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04CEFF8(uint64_t a1)
{
  sub_1C04F5790();

  return sub_1C04CCB04(a1);
}

uint64_t sub_1C04CF094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5790() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04CCF78(a1, v2 + v6, v10, v11, (v2 + v9), v12, a2);
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C04CF194()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE44D60);
  __swift_project_value_buffer(v0, qword_1EDE44D60);
  OUTLINED_FUNCTION_0_12();
  return sub_1C04F63F0();
}

uint64_t sub_1C04CF1FC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0F6F0);
  __swift_project_value_buffer(v0, qword_1EBE0F6F0);
  return sub_1C04F63F0();
}

uint64_t sub_1C04CF278()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE44D90);
  __swift_project_value_buffer(v0, qword_1EDE44D90);
  OUTLINED_FUNCTION_0_12();
  return sub_1C04F63F0();
}

uint64_t sub_1C04CF324(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38[-v10];
  v12 = sub_1C04F5460();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1C04D2E10();
  v40 = 0xD000000000000014;
  v41 = 0x80000001C04FCE10;
  v44 = 45;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  sub_1C04D2E54();
  sub_1C04F6B90();
  *(v2 + 88) = sub_1C04F6B10();
  OUTLINED_FUNCTION_2();
  v20 = *(v19 + 136);
  v21 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v3 + v20, 1, 1, v21);
  OUTLINED_FUNCTION_2();
  v23 = *(v22 + 152);
  type metadata accessor for Locker();
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_44_0();
  *(v24 + 16) = v25;
  *v25 = 0;
  *(v3 + v23) = v24;
  LOBYTE(v23) = v39;
  sub_1C04F5450();
  OUTLINED_FUNCTION_2();
  (*(v14 + 32))(v3 + *(v26 + 144), v18, v12);
  swift_weakAssign();
  *(v3 + 80) = v23 & 1;
  v27 = *(v3 + 88);

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  OUTLINED_FUNCTION_2();
  v29 = *(v28 + 136);
  swift_beginAccess();
  sub_1C04D2EA8(v11, v3 + v29);
  swift_endAccess();
  v40 = v3;

  v30 = sub_1C04F6790();
  v32 = v31;
  v33 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v33);
  sub_1C04E786C(a1, v30, v32, v3, &off_1F3F85FC0);

  os_unfair_lock_unlock(v33);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v34 + 8))(v3, &off_1F3F85FC0, ObjectType, v34);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C04870FC(v3 + v29, v8);
  result = __swift_getEnumTagSinglePayload(v8, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v3 + 88);
    sub_1C04F6AE0();
    sub_1C04F63B0();

    (*(*(v21 - 8) + 8))(v8, v21);
    return v3;
  }

  return result;
}

id *sub_1C04CF79C(uint64_t a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v31 = sub_1C04F5460();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1C04D2E10();
  v34 = qword_1EDE44450;
  v35 = off_1EDE44458;
  v38 = 45;
  v39 = 0xE100000000000000;
  v36 = 95;
  v37 = 0xE100000000000000;
  sub_1C04D2E54();
  sub_1C04F6B90();

  *(v2 + 88) = sub_1C04F6B10();
  v13 = *(*v2 + 136);
  v14 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v3 + v13, 1, 1, v14);
  v15 = *(*v3 + 19);
  type metadata accessor for Locker();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(v3 + v15) = v16;
  sub_1C04F5450();
  v18 = v12;
  LOBYTE(v12) = v32;
  (*(v10 + 32))(v3 + *(*v3 + 18), v18, v31);
  swift_weakAssign();
  *(v3 + 80) = v12 & 1;
  v19 = v3[11];

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  v20 = *(*v3 + 17);
  swift_beginAccess();
  sub_1C04D2EA8(v9, v3 + v20);
  swift_endAccess();
  v34 = v3;

  v21 = sub_1C04F6790();
  v23 = v22;
  v24 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v24);
  sub_1C04E786C(a1, v21, v23, v3, &off_1F3F85FC0);

  os_unfair_lock_unlock(v24);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v3, &off_1F3F85FC0, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v27 = v33;
  sub_1C04870FC(v3 + v20, v33);
  result = __swift_getEnumTagSinglePayload(v27, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v3[11];
    sub_1C04F6AE0();
    sub_1C04F63B0();

    (*(*(v14 - 8) + 8))(v27, v14);
    return v3;
  }

  return result;
}

uint64_t *sub_1C04CFC5C()
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225(&qword_1EDE42870);
  }

  return &qword_1EDE42878;
}

uint64_t sub_1C04CFC9C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE42550);
  __swift_project_value_buffer(v0, qword_1EDE42550);
  return sub_1C04F63F0();
}

const char *sub_1C04CFD20(char a1)
{
  if (a1)
  {
    return "Fetch";
  }

  else
  {
    return "lifetime";
  }
}

uint64_t sub_1C04CFD4C()
{
  v0 = qword_1EDE44450;

  return v0;
}

uint64_t sub_1C04CFD84()
{
  v0 = aContextvendor_0[0];

  return v0;
}

void *sub_1C04CFDEC()
{
  type metadata accessor for ContextVendor();
  v0 = swift_allocObject();
  result = ContextVendor.init()();
  qword_1EDE42878 = v0;
  return result;
}

uint64_t ContextVendor.__allocating_init()(uint64_t a1)
{
  OUTLINED_FUNCTION_3_12();
  v1 = swift_allocObject();
  ContextVendor.init()();
  return v1;
}

uint64_t static ContextVendor.shared.getter()
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225(&qword_1EDE42870);
  }

  swift_beginAccess();
}

uint64_t static ContextVendor.shared.setter(uint64_t a1)
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225(&qword_1EDE42870);
  }

  swift_beginAccess();
  qword_1EDE42878 = a1;
}

uint64_t (*static ContextVendor.shared.modify())(uint64_t a1)
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225(&qword_1EDE42870);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C04CFFAC@<X0>(void *a1@<X8>)
{
  sub_1C04CFC5C();
  swift_beginAccess();
  *a1 = qword_1EDE42878;
}

uint64_t sub_1C04D0000(uint64_t *a1)
{
  v1 = *a1;

  sub_1C04CFC5C();
  swift_beginAccess();
  qword_1EDE42878 = v1;
}

uint64_t ContextVendor.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void *ContextVendor.init()()
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v0[2] = sub_1C04E72EC();
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D570, &qword_1C04F9F30);
  swift_allocObject();
  v0[4] = sub_1C047F5F0(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D578, &qword_1C04F9F38);
  OUTLINED_FUNCTION_29_1(v1);

  v0[3] = sub_1C04CF79C(v2, 0);

  return v0;
}

void *ContextVendor.deinit()
{
  v1 = MEMORY[0x1C68DC7C0]();
  sub_1C04CFDDC(0);
  objc_autoreleasePoolPop(v1);

  return v0;
}

uint64_t ContextVendor.__deallocating_deinit()
{
  ContextVendor.deinit();
  v0 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04D0244(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D598, &qword_1C04FA190);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5A0, &unk_1C04FA198);
  OUTLINED_FUNCTION_29_1(v12);

  sub_1C04F64C0();
  sub_1C047C1A4(&qword_1EDE40868, &qword_1EBE0D5A0, &unk_1C04FA198, MEMORY[0x1E695C038]);

  sub_1C04F64D0();
  sub_1C047C1A4(&qword_1EDE40860, &qword_1EBE0D598, &qword_1C04FA190, MEMORY[0x1E695C058]);
  v13 = sub_1C04F64E0();

  (*(v7 + 8))(v10, v5);
  return v13;
}

uint64_t sub_1C04D0438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);

  sub_1C04F61D0();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v14 = sub_1C0482EFC(v13, 15, v12, 0, 1);
  if (qword_1EDE42548 != -1)
  {
    swift_once();
  }

  v15 = sub_1C04F6400();
  __swift_project_value_buffer(v15, qword_1EDE42550);
  v16 = sub_1C04F63E0();
  v17 = sub_1C04F6A10();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C0479000, v16, v17, "XPC Fetch start: fetch Query Context", v18, 2u);
    MEMORY[0x1C68DCEB0](v18, -1, -1);
  }

  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE44DD0;
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = a1;
  v20[4] = a2;
  v21 = v19;

  sub_1C04A717C(a4, a5, 0, sub_1C04D2D68, v20);
}

uint64_t sub_1C04D0674(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v48 = a6;
  v49 = a5;
  v10 = sub_1C04F6300();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_1C04F54F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5A8, &qword_1C04FA1A8);
  MEMORY[0x1EEE9AC00](v47);
  v19 = (&v46 - v18);
  if (a3)
  {
    *(a4 + qword_1EDE44718) = 28;
    v20 = a3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EDE42550);
    v22 = a3;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v52 = v26;
      *v25 = 136315138;
      v50 = a3;
      v27 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v52);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "contextFetch failed: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

    sub_1C04D2D74();
    v31 = swift_allocError();
    *v32 = 0;
    *v19 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v49(v19);
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      sub_1C04A12A0(a1, a2);
      sub_1C048087C(a1, a2);
      sub_1C04F62F0();
      sub_1C04D2DC8(&qword_1EDE41558, 255, MEMORY[0x1E69BCB80], MEMORY[0x1E69BCB78]);
      sub_1C04F6340();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
      (*(v15 + 32))(v17, v13, v14);
      *(a4 + qword_1EDE44718) = 3;
      sub_1C0483574();
      (*(v15 + 16))(v19, v17, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v49(v19);
      sub_1C047E0BC(a1, a2, v39, v40, v41, v42, v43, v44, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53);
      sub_1C0482130(v19, &qword_1EBE0D5A8, &qword_1C04FA1A8);
      return (*(v15 + 8))(v17, v14);
    }

    *(a4 + qword_1EDE44718) = 18;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v33 = sub_1C04F6400();
    __swift_project_value_buffer(v33, qword_1EDE42550);
    v34 = sub_1C04F63E0();
    v35 = sub_1C04F6A20();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C0479000, v34, v35, "contextFetch failed: invalidResponse", v36, 2u);
      MEMORY[0x1C68DCEB0](v36, -1, -1);
    }

    sub_1C04D2D74();
    v37 = swift_allocError();
    *v38 = 1;
    *v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v49(v19);
  }

  return sub_1C0482130(v19, &qword_1EBE0D5A8, &qword_1C04FA1A8);
}

uint64_t sub_1C04D0D20()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_226(v1);

  return sub_1C04D0E9C();
}

uint64_t sub_1C04D0DB8()
{
  OUTLINED_FUNCTION_144();
  v1 = *v0;
  OUTLINED_FUNCTION_49();
  *v2 = v1;

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C04D0E9C()
{
  OUTLINED_FUNCTION_144();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1C04F6200();
  OUTLINED_FUNCTION_2_1(v5);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04D0F28);
}

uint64_t sub_1C04D0F28()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[5] + 16);

  sub_1C04F61D0();
  v5 = type metadata accessor for ResourceAccessSpan(0);
  OUTLINED_FUNCTION_29_1(v5);
  v6 = sub_1C0482EFC(v4, 15, v1, 0, 1);
  v0[7] = v6;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v6;
  v8 = swift_task_alloc();
  v0[9] = v8;
  sub_1C04F54F0();
  *v8 = v0;
  v8[1] = sub_1C04D107C;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE38](v9);
}

uint64_t sub_1C04D107C()
{
  OUTLINED_FUNCTION_144();
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v2 = v5;
  *(v5 + 80) = v0;

  if (v0)
  {
    v3 = sub_1C04D11F0;
  }

  else
  {

    v3 = sub_1C04D118C;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1C04D118C()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04D11F0()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

void sub_1C04D1260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  if (qword_1EDE42548 != -1)
  {
    swift_once();
  }

  v11 = sub_1C04F6400();
  __swift_project_value_buffer(v11, qword_1EDE42550);
  v12 = sub_1C04F63E0();
  v13 = sub_1C04F6A10();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = sub_1C04F6160();
    *(v14 + 12) = 2048;
    *(v14 + 14) = v20;
    _os_log_impl(&dword_1C0479000, v12, v13, "XPC Fetch start: fetch Query Context for client %lu proxy activity: %lu", v14, 0x16u);
    MEMORY[0x1C68DCEB0](v14, -1, -1);
  }

  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE44DD0;
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v8 + 32))(v17 + v16, v10, v7);
  v18 = v15;

  sub_1C04A717C(a2, v20, 0, sub_1C04D2F24, v17);
}

void sub_1C04D14F0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v9 = sub_1C04F6300();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_1C04F54F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  if (a3)
  {
    *(a4 + qword_1EDE44718) = 28;
    v20 = a3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EDE42550);
    v22 = a3;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v53 = v26;
      *v25 = 136315138;
      v51 = a3;
      v27 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v53);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "contextFetch failed: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

    sub_1C04D2FB8();
    v31 = swift_allocError();
    *v32 = 2;
    *&v53 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
    sub_1C04F6950();
  }

  else if (a2 >> 60 == 15)
  {
    *(a4 + qword_1EDE44718) = 18;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v33 = sub_1C04F6400();
    __swift_project_value_buffer(v33, qword_1EDE42550);
    v34 = sub_1C04F63E0();
    v35 = sub_1C04F6A20();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C0479000, v34, v35, "contextFetch failed: invalidResponse", v36, 2u);
      MEMORY[0x1C68DCEB0](v36, -1, -1);
    }

    sub_1C04D2FB8();
    v37 = swift_allocError();
    *v38 = 1;
    *&v53 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
    sub_1C04F6950();
  }

  else
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    sub_1C04A12A0(a1, a2);
    sub_1C048087C(a1, a2);
    sub_1C04F62F0();
    sub_1C04D2DC8(&qword_1EDE41558, 255, MEMORY[0x1E69BCB80], MEMORY[0x1E69BCB78]);
    sub_1C04F6340();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    (*(v14 + 32))(v19, v12, v13);
    *(a4 + qword_1EDE44718) = 3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v39 = sub_1C04F6400();
    __swift_project_value_buffer(v39, qword_1EDE42550);
    v40 = sub_1C04F63E0();
    v41 = sub_1C04F6A40();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C0479000, v40, v41, "fulfilling request with valid context", v42, 2u);
      MEMORY[0x1C68DCEB0](v42, -1, -1);
    }

    (*(v14 + 16))(v16, v19, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
    sub_1C04F6960();
    sub_1C047E0BC(a1, a2, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, *(&v54 + 1), v55);
    (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_1C04D1B90()
{

  v0 = sub_1C04D309C();

  return v0;
}

uint64_t sub_1C04D1BCC(uint64_t a1)
{

  sub_1C04D32BC();
}

BOOL sub_1C04D1C14()
{
  v1 = v0;
  sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v74 = v3;
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v6 = (v5 - v4);
  sub_1C04F6630();
  OUTLINED_FUNCTION_0();
  v72 = v8;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = v69 - v11;
  v12 = sub_1C04F6200();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = [objc_opt_self() processInfo];
  v25 = [v24 processName];

  v26 = sub_1C04F6750();
  v28 = v27;

  (*(v19 + 104))(v23, *MEMORY[0x1E69BDAF0], v17);
  v29 = sub_1C04F6120();
  v31 = v30;
  (*(v19 + 8))(v23, v17);
  if (v26 == v29 && v28 == v31)
  {

    goto LABEL_12;
  }

  v33 = sub_1C04F6D80();

  if (v33)
  {
LABEL_12:
    if (qword_1EDE42548 != -1)
    {
      OUTLINED_FUNCTION_2_15(&qword_1EDE42548);
    }

    v41 = sub_1C04F6400();
    __swift_project_value_buffer(v41, qword_1EDE42550);
    v35 = sub_1C04F63E0();
    v42 = sub_1C04F6A10();
    if (!OUTLINED_FUNCTION_19_1(v42))
    {
      goto LABEL_17;
    }

    v43 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v43);
    v40 = "Attempting to fetch deviceSetupState from within parsecd, will bypass";
    goto LABEL_16;
  }

  if (sub_1C04D1B90() == 2)
  {
    if (qword_1EDE42548 != -1)
    {
      OUTLINED_FUNCTION_2_15(&qword_1EDE42548);
    }

    v34 = sub_1C04F6400();
    __swift_project_value_buffer(v34, qword_1EDE42550);
    v35 = sub_1C04F63E0();
    v36 = sub_1C04F6A10();
    if (!OUTLINED_FUNCTION_19_1(v36))
    {
      goto LABEL_17;
    }

    v37 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v37);
    v40 = "Inferred deviceSetupState: completed";
LABEL_16:
    OUTLINED_FUNCTION_13_5(&dword_1C0479000, v38, v39, v40);
    OUTLINED_FUNCTION_13();
LABEL_17:

    return 1;
  }

  v45 = *(v1 + 16);

  sub_1C04F61D0();
  v46 = type metadata accessor for ResourceAccessSpan(0);
  OUTLINED_FUNCTION_29_1(v46);
  v47 = sub_1C0482EFC(v45, 15, v16, 0, 1);
  v48 = dispatch_group_create();
  dispatch_group_enter(v48);
  if (qword_1EDE42548 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_1EDE42548);
  }

  v49 = sub_1C04F6400();
  v69[1] = __swift_project_value_buffer(v49, qword_1EDE42550);
  v50 = sub_1C04F63E0();
  v51 = sub_1C04F6A10();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v52);
    _os_log_impl(&dword_1C0479000, v50, v51, "XPC Fetch start: fetch DeviceSetupComplete", v31, 2u);
    OUTLINED_FUNCTION_13();
  }

  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDE44DD0;
  v54 = swift_allocObject();
  v54[2] = v48;
  v54[3] = v47;
  v54[4] = v1;
  v55 = v53;
  v56 = v48;

  sub_1C04A772C(0, sub_1C04D2D44, v54);

  v57 = v70;
  sub_1C04F6620();
  *v6 = 250;
  v59 = v74;
  v58 = v75;
  (*(v74 + 104))(v6, *MEMORY[0x1E69E7F38], v75);
  v60 = v71;
  MEMORY[0x1C68DBEE0](v57, v6);
  (*(v59 + 8))(v6, v58);
  v61 = v73;
  v62 = *(v72 + 8);
  v62(v57, v73);
  sub_1C04F6A50();
  v62(v60, v61);
  if (sub_1C04F65D0())
  {
    v63 = sub_1C04F63E0();
    v64 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_19_1(v64))
    {
      v65 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_158(v65);
      OUTLINED_FUNCTION_13_5(&dword_1C0479000, v66, v67, "device Setup State fetch timed out, returning");
      OUTLINED_FUNCTION_13();
    }

    return 0;
  }

  else
  {
    v68 = sub_1C04D1B90();

    return v68 == 2;
  }
}

void sub_1C04D2274(uint64_t a1, id a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    *(a4 + qword_1EDE44718) = 28;
    v6 = a2;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v7 = sub_1C04F6400();
    __swift_project_value_buffer(v7, qword_1EDE42550);
    v8 = a2;
    v9 = sub_1C04F63E0();
    v10 = sub_1C04F6A20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      v13 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v14 = sub_1C04F6790();
      v16 = sub_1C047D76C(v14, v15, &v30);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1C0479000, v9, v10, "deviceSetupStatus fetch failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1C68DCEB0](v12, -1, -1);
      MEMORY[0x1C68DCEB0](v11, -1, -1);
    }

    else
    {
    }

LABEL_13:
    dispatch_group_leave(a3);
    return;
  }

  if (a1)
  {
    *(a4 + qword_1EDE44718) = 3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v18 = sub_1C04F6400();
    __swift_project_value_buffer(v18, qword_1EDE42550);
    v19 = sub_1C04F63E0();
    v20 = sub_1C04F6A40();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136446210;
      v23 = sub_1C04F6790();
      v25 = sub_1C047D76C(v23, v24, &v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1C0479000, v19, v20, "Got deviceSetupCompleteStatus: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1C68DCEB0](v22, -1, -1);
      MEMORY[0x1C68DCEB0](v21, -1, -1);
    }

    sub_1C04D1BCC(a1);
    goto LABEL_13;
  }

  *(a4 + qword_1EDE44718) = 18;
  sub_1C0483574();
  if (qword_1EDE42548 != -1)
  {
    swift_once();
  }

  v26 = sub_1C04F6400();
  __swift_project_value_buffer(v26, qword_1EDE42550);
  v27 = sub_1C04F63E0();
  v28 = sub_1C04F6A20();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1C0479000, v27, v28, "deviceSetupStatus fetch failed: unknown state", v29, 2u);
    MEMORY[0x1C68DCEB0](v29, -1, -1);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1C04D2670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04D300C;

  return sub_1C04D0D20();
}

uint64_t sub_1C04D271C(char a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_44_0();
  *(v1 + 24) = v2;
  return OUTLINED_FUNCTION_12_5(v2);
}

uint64_t sub_1C04D2740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = OUTLINED_FUNCTION_44_0();
  v3[5] = v4;
  return OUTLINED_FUNCTION_12_5(v4);
}

unint64_t sub_1C04D276C()
{
  result = qword_1EBE0D580;
  if (!qword_1EBE0D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D580);
  }

  return result;
}

uint64_t sub_1C04D27C0(uint64_t a1, uint64_t a2)
{
  result = sub_1C04D2DC8(&qword_1EBE0D588, a2, type metadata accessor for ContextVendor, &unk_1C04FA030);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C04D2840()
{
  result = qword_1EBE0D590;
  if (!qword_1EBE0D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D590);
  }

  return result;
}

uint64_t dispatch thunk of QueryContextFetcher.fetchContext(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 8) + **(a4 + 8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81(v8);
  *v9 = v10;
  v9[1] = sub_1C04D300C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContextVendor.fetchContext(for:)()
{
  v6 = (*(*v0 + 160) + **(*v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_81(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_226(v2);

  return v6(v4);
}

_BYTE *sub_1C04D2B38(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C04D2C18()
{
  result = qword_1EDE44440;
  if (!qword_1EDE44440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44440);
  }

  return result;
}

unint64_t sub_1C04D2C6C(uint64_t a1)
{
  *(a1 + 8) = sub_1C04D2C9C();
  result = sub_1C04D2CF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04D2C9C()
{
  result = qword_1EDE44448;
  if (!qword_1EDE44448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44448);
  }

  return result;
}

unint64_t sub_1C04D2CF0()
{
  result = qword_1EDE44438;
  if (!qword_1EDE44438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44438);
  }

  return result;
}

unint64_t sub_1C04D2D74()
{
  result = qword_1EBE0D5B0;
  if (!qword_1EBE0D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D5B0);
  }

  return result;
}

uint64_t sub_1C04D2DC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C04D2E10()
{
  result = qword_1EDE44770;
  if (!qword_1EDE44770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE44770);
  }

  return result;
}

unint64_t sub_1C04D2E54()
{
  result = qword_1EDE44788;
  if (!qword_1EDE44788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44788);
  }

  return result;
}

uint64_t sub_1C04D2EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C04D2F24(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
  OUTLINED_FUNCTION_2_1(v7);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  sub_1C04D14F0(a1, a2, a3, v9, v10);
}

unint64_t sub_1C04D2FB8()
{
  result = qword_1EBE0D5C0;
  if (!qword_1EBE0D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C04D3064()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t sub_1C04D309C()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v2;
}

id sub_1C04D30CC()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

void *sub_1C04D3130()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock(v0);
  return v2;
}

void sub_1C04D3164()
{
  OUTLINED_FUNCTION_31_2();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;

  os_unfair_lock_unlock(v3);
}

void sub_1C04D31AC()
{
  OUTLINED_FUNCTION_11_5();
  *(v1 + 16) = v0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v2);
}

void sub_1C04D31F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  os_unfair_lock_lock(v7);
  v8 = v3[2];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  os_unfair_lock_unlock(v7);
}

void sub_1C04D3274()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *(v1 + 16);
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

void sub_1C04D32BC()
{
  OUTLINED_FUNCTION_11_5();
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

uint64_t sub_1C04D32FC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D5C8);
  __swift_project_value_buffer(v0, qword_1EBE0D5C8);
  return sub_1C04F63F0();
}

double sub_1C04D3378()
{
  *&xmmword_1EBE0D5E0 = 0xD000000000000028;
  *(&xmmword_1EBE0D5E0 + 1) = 0x80000001C04FE060;
  strcpy(&xmmword_1EBE0D5F0, "LookupSearch");
  BYTE13(xmmword_1EBE0D5F0) = 0;
  HIWORD(xmmword_1EBE0D5F0) = -5120;
  result = 4.11941862e257;
  xmmword_1EBE0D600 = xmmword_1C04FA1C0;
  return result;
}

uint64_t sub_1C04D33CC()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EBE0D610 = v9;
  *algn_1EBE0D618 = v11;
  return result;
}

void *PegasusProxyForLookupSearch.__allocating_init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  swift_allocObject();
  if (qword_1EBE0CA58 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EBE0CA58);
  }

  v6 = OUTLINED_FUNCTION_11();
  return sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);
}

void *PegasusProxyForLookupSearch.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EBE0CA58 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EBE0CA58);
  }

  v6 = OUTLINED_FUNCTION_11();

  return sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);
}

void sub_1C04D368C()
{
  OUTLINED_FUNCTION_7_0();
  v16 = v1;
  v2 = sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_16();
  v6 = sub_1C04F5530();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v15 - v13;
  sub_1C04F5520();

  sub_1C04F5510();
  sub_1C04F57F0();
  (*(v8 + 16))(v11, v14, v6);
  sub_1C04F57D0();
  (*(v4 + 16))(v0, v16, v2);
  sub_1C04F57E0();
  (*(v8 + 8))(v14, v6);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04D3848(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C04D386C);
}

uint64_t sub_1C04D386C()
{
  OUTLINED_FUNCTION_144();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C04D3918;

  return sub_1C04D3A68();
}

uint64_t sub_1C04D3918()
{
  OUTLINED_FUNCTION_144();
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v2 = v5;
  *(v5 + 88) = v0;

  sub_1C04D4ADC(v5 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C04D3A44);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v3();
  }
}

uint64_t sub_1C04D3A68()
{
  OUTLINED_FUNCTION_144();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[36] = *v0;
  v5 = sub_1C04F5B60();
  v1[37] = v5;
  OUTLINED_FUNCTION_66(v5);
  v1[38] = v6;
  v1[39] = swift_task_alloc();
  v7 = sub_1C04F5BC0();
  v1[40] = v7;
  OUTLINED_FUNCTION_66(v7);
  v1[41] = v8;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v9 = sub_1C04F5830();
  v1[44] = v9;
  OUTLINED_FUNCTION_66(v9);
  v1[45] = v10;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v11 = sub_1C04F6130();
  v1[49] = v11;
  OUTLINED_FUNCTION_66(v11);
  v1[50] = v12;
  v1[51] = swift_task_alloc();
  sub_1C04F6200();
  v1[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04D3C94);
}

uint64_t sub_1C04D3C94()
{
  if (qword_1EBE0CA58 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EBE0CA58);
  }

  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 392);
  v4 = *(v0 + 400);
  v5 = *(v0 + 280);
  v6 = qword_1EBE0D610;
  v7 = *algn_1EBE0D618;

  sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C049FB48(v6, v7, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  v9 = *(v5 + 16);
  (*(v4 + 104))(v2, *MEMORY[0x1E69BDAB8], v3);

  sub_1C04F6230();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  *(v0 + 424) = sub_1C0482EFC(v9, 28, v1, 0, 1);
  v10 = sub_1C04B7294();
  if (v10)
  {
    v11 = v10;
    *(v0 + 88) = &unk_1F3F85D90;
    v12 = sub_1C04B6FD4();
    *(v0 + 96) = v12;
    *(v0 + 64) = 3;
    v13 = sub_1C04F60E0();
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    if (v13 & 1) != 0 && (v14 = sub_1C04F6740(), v15 = [v11 configBoolForKey_], v14, !v15) && ((OUTLINED_FUNCTION_192(), v24 = sub_1C04F6740(), v25 = objc_msgSend(v11, sel_configBoolForKey_, v24), v24, (v25) || (*(v0 + 128) = &unk_1F3F85D90, *(v0 + 136) = v12, *(v0 + 104) = 4, v26 = sub_1C04F60E0(), __swift_destroy_boxed_opaque_existential_1((v0 + 104)), (v26)))
    {
      sub_1C047ACAC();
      swift_beginAccess();

      v27 = sub_1C04D30CC();
      v29 = v28;
      v34 = v30;
      OUTLINED_FUNCTION_237();
      sub_1C04D4C24(v31, v32, v33);

      sub_1C04D31F4(v27, v29, v34);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  *(v0 + 432) = sub_1C047ACAC();
  if (qword_1EBE0CA50 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1EBE0D5F0;
  v16 = xmmword_1EBE0D600;
  *(v0 + 16) = xmmword_1EBE0D5E0;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v18 = sub_1C04B7354();
  *(v0 + 440) = v18;
  v19 = swift_task_alloc();
  *(v0 + 448) = v19;
  *v19 = v0;
  v19[1] = sub_1C04D4060;
  v20 = *(v0 + 384);
  v21 = *(v0 + 264);
  v22 = *(v0 + 272);

  return sub_1C0489E38(v20, v0 + 16, v21, v18, v22, 1);
}

uint64_t sub_1C04D4060()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1C04D46C4;
  }

  else
  {
    v2 = sub_1C04D41B0;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C04D41B0()
{
  v43 = v0;
  (*(v0[45] + 32))(v0[32], v0[48], v0[44]);
  if (qword_1EBE0CA48 != -1)
  {
    OUTLINED_FUNCTION_7_11(&qword_1EBE0CA48);
  }

  v1 = v0[45];
  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0D5C8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_237();
  v3();
  OUTLINED_FUNCTION_237();
  v3();
  v4 = sub_1C04F63E0();
  v5 = sub_1C04F6A40();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[46];
  v7 = v0[47];
  v10 = v0[44];
  v9 = v0[45];
  if (v6)
  {
    log = v4;
    v11 = v0[39];
    v38 = v0[38];
    v39 = v0[37];
    v40 = v5;
    v12 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v12 = 136315394;
    sub_1C04F5820();
    v13 = sub_1C04F6790();
    v15 = v14;
    v16 = *(v9 + 8);
    v16(v7, v10);
    v17 = sub_1C047D76C(v13, v15, v42);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_1C04F5810();
    v18 = sub_1C04F5B50();
    v20 = v19;
    (*(v38 + 8))(v11, v39);
    v16(v8, v10);
    v21 = sub_1C047D76C(v18, v20, v42);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1C0479000, log, v40, "received rpc response with search status: %s, error detail: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {

    v16 = *(v9 + 8);
    v16(v8, v10);
    v16(v7, v10);
  }

  v22 = v0[53];
  v24 = v0[42];
  v23 = v0[43];
  v25 = v0[40];
  v26 = v0[41];
  sub_1C04F5820();
  (*(v26 + 104))(v24, *MEMORY[0x1E69BCED0], v25);
  sub_1C04D7044(&qword_1EDE41530, MEMORY[0x1E69BCEE0], MEMORY[0x1E69BCEE8]);
  v27 = sub_1C04F6730();
  v28 = *(v26 + 8);
  v28(v24, v25);
  v28(v23, v25);
  if (v27)
  {
    v29 = v0[44];
    v30 = v0[32];
    *(v22 + qword_1EDE44718) = 19;
    sub_1C0483574();
    v31 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v31);
    OUTLINED_FUNCTION_33_0(v32, 6);

    v16(v30, v29);
    OUTLINED_FUNCTION_32_2(v0[52]);

    OUTLINED_FUNCTION_150();
  }

  else
  {
    *(v22 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v34 = sub_1C04F63E0();
    v35 = sub_1C04F6A40();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C0479000, v34, v35, "publishing successful rpc response", v36, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    OUTLINED_FUNCTION_150();
  }

  return v33();
}

uint64_t sub_1C04D46C4()
{
  v57 = v0;
  v1 = *(v0 + 456);
  *(v0 + 224) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 456);
  if (v3)
  {
    v5 = *(v0 + 424);

    v6 = OUTLINED_FUNCTION_26_2();
    sub_1C04B915C(v6, v7, v8, v9, v5);
    v10 = OUTLINED_FUNCTION_26_2();
    sub_1C0482080(v10, v11, v12, v13);
    v14 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v14);
    OUTLINED_FUNCTION_33_0(v15, 7);

    v16 = *(v0 + 224);
LABEL_7:

    goto LABEL_8;
  }

  *(v0 + 232) = v4;
  v17 = v4;
  v18 = swift_dynamicCast();
  v19 = *(v0 + 456);
  if (v18)
  {
    v20 = *(v0 + 424);

    v21 = *(v0 + 216);
    v22 = OUTLINED_FUNCTION_11();
    sub_1C04B93C4(v22, v23, v21, v20);
    v24 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v24);
    OUTLINED_FUNCTION_33_0(v25, 5);

    v26 = OUTLINED_FUNCTION_11();
    sub_1C0482070(v26, v27, v21);
    v16 = *(v0 + 232);
    goto LABEL_7;
  }

  *(v0 + 240) = v19;
  v28 = v19;
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 424);

    v30 = *(v0 + 169);
    sub_1C049FC7C();
    v31 = OUTLINED_FUNCTION_192();
    v33 = OUTLINED_FUNCTION_45(v31, v32);
    *v34 = v30;
    sub_1C04B9574(v33, v29);

    v35 = OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_45(v35, v36);
    *v37 = v30;
    swift_willThrow();

    v16 = *(v0 + 240);
    goto LABEL_7;
  }

  v40 = *(v0 + 424);

  *(v40 + qword_1EDE44718) = 51;
  sub_1C0483574();
  if (qword_1EBE0CA48 != -1)
  {
    OUTLINED_FUNCTION_7_11(&qword_1EBE0CA48);
  }

  v41 = *(v0 + 456);
  v42 = sub_1C04F6400();
  __swift_project_value_buffer(v42, qword_1EBE0D5C8);
  v43 = v41;
  v44 = sub_1C04F63E0();
  v45 = sub_1C04F6A20();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 456);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v56 = v48;
    *v47 = 136315138;
    *(v0 + 248) = v46;
    v49 = v46;
    v50 = sub_1C04F6790();
    v52 = sub_1C047D76C(v50, v51, &v56);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1C0479000, v44, v45, "search failure: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v53 = *(v0 + 456);
  v54 = sub_1C049FC7C();
  OUTLINED_FUNCTION_45(&type metadata for ProxyError, v54);
  OUTLINED_FUNCTION_33_0(v55, 1);

LABEL_8:
  OUTLINED_FUNCTION_32_2(*(v0 + 416));

  OUTLINED_FUNCTION_150();

  return v38();
}

uint64_t sub_1C04D4ADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE40, &qword_1C04F8900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PegasusProxyForLookupSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04D4B78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C04D0DB8;

  return sub_1C04D3848(a1, a2);
}

BOOL sub_1C04D4C24(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C04F6E60();
  OUTLINED_FUNCTION_237();
  sub_1C04F67E0();
  v8 = sub_1C04F6E80();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1C04F6D80() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  v17 = OUTLINED_FUNCTION_192();
  sub_1C04D5DA8(v17, v18, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t dispatch thunk of LookupSearchResponseFetcher.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 8) + **(a4 + 8));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81(v4);
  *v5 = v6;
  v5[1] = sub_1C04D300C;
  OUTLINED_FUNCTION_237();

  return v8();
}

uint64_t dispatch thunk of PegasusProxyForLookupSearch.send(_:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 552) + **(*v2 + 552));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v6[1] = sub_1C04D300C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PegasusProxyForLookupSearch.send(_:observer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(*v3 + 560) + **(*v3 + 560));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_81(v7);
  *v8 = v9;
  v8[1] = sub_1C04D0DB8;

  return v11(a1, a2, a3);
}

void sub_1C04D5174()
{
  OUTLINED_FUNCTION_7_0();
  v2 = sub_1C04F5DE0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_16();
  v4 = *v0;
  v5 = *(*v0 + 5);
  OUTLINED_FUNCTION_3_13();
  v8 = sub_1C04D7044(v6, v7, MEMORY[0x1E69BD6C0]);
  OUTLINED_FUNCTION_20_4(v8);
  OUTLINED_FUNCTION_5_10();
  do
  {
    OUTLINED_FUNCTION_9_6();
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v14 = OUTLINED_FUNCTION_14_3();
      v15(v14);
      v16 = OUTLINED_FUNCTION_13_6();
      sub_1C04D5F10(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_12_6();
      v20(v19);
      goto LABEL_7;
    }

    v10 = OUTLINED_FUNCTION_8_6();
    v1(v10);
    OUTLINED_FUNCTION_3_13();
    v12 = sub_1C04D7044(&qword_1EDE41DF8, v11, MEMORY[0x1E69BD6D0]);
    OUTLINED_FUNCTION_23_3(v12);
    v13 = OUTLINED_FUNCTION_19_2();
    v4(v13);
  }

  while ((v5 & 1) == 0);
  (v4)(v22, v2);
  v21 = OUTLINED_FUNCTION_15_4();
  v1(v21);
LABEL_7:
  OUTLINED_FUNCTION_6();
}

void sub_1C04D5308()
{
  OUTLINED_FUNCTION_7_0();
  v2 = sub_1C04F6010();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_16();
  v4 = *v0;
  v5 = *(*v0 + 5);
  OUTLINED_FUNCTION_4_9();
  v8 = sub_1C04D7044(v6, v7, MEMORY[0x1E69BDA40]);
  OUTLINED_FUNCTION_20_4(v8);
  OUTLINED_FUNCTION_5_10();
  do
  {
    OUTLINED_FUNCTION_9_6();
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v14 = OUTLINED_FUNCTION_14_3();
      v15(v14);
      v16 = OUTLINED_FUNCTION_13_6();
      sub_1C04D61C0(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_12_6();
      v20(v19);
      goto LABEL_7;
    }

    v10 = OUTLINED_FUNCTION_8_6();
    v1(v10);
    OUTLINED_FUNCTION_4_9();
    v12 = sub_1C04D7044(&qword_1EDE414C8, v11, MEMORY[0x1E69BDA48]);
    OUTLINED_FUNCTION_23_3(v12);
    v13 = OUTLINED_FUNCTION_19_2();
    v4(v13);
  }

  while ((v5 & 1) == 0);
  (v4)(v22, v2);
  v21 = OUTLINED_FUNCTION_15_4();
  v1(v21);
LABEL_7:
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04D549C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D628, &qword_1C04FA278);
  result = sub_1C04F6C10();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1C04CB6D8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C04F6E60();
    sub_1C04F67E0();
    result = sub_1C04F6E80();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C04D56F8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1C04F5DE0();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE0D630, &unk_1C04FA280);
  result = sub_1C04F6C10();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1C04CB6D8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1C04D7044(&qword_1EDE41E00, MEMORY[0x1E69BD6B0], MEMORY[0x1E69BD6C0]);
    result = sub_1C04F6700();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C04D5A50(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1C04F6010();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D620, &qword_1C04FA270);
  result = sub_1C04F6C10();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1C04CB6D8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1C04D7044(&qword_1EDE414D0, MEMORY[0x1E69BDA38], MEMORY[0x1E69BDA40]);
    result = sub_1C04F6700();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1C04D5DA8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C04D549C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C04D67E0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1C04F6E60();
      sub_1C04F67E0();
      result = sub_1C04F6E80();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1C04F6D80() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1C04D6470();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1C04F6DC0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C04D5F10(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C04F5DE0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C04D56F8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C04D6A14(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C04D7044(&qword_1EDE41E00, MEMORY[0x1E69BD6B0], MEMORY[0x1E69BD6C0]);
      v14 = sub_1C04F6700();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C04D7044(&qword_1EDE41DF8, MEMORY[0x1E69BD6B0], MEMORY[0x1E69BD6D0]);
        v16 = sub_1C04F6730();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1C04D65C8();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1C04F6DC0();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1C04D61C0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C04F6010();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C04D5A50(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C04D6D2C(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C04D7044(&qword_1EDE414D0, MEMORY[0x1E69BDA38], MEMORY[0x1E69BDA40]);
      v14 = sub_1C04F6700();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C04D7044(&qword_1EDE414C8, MEMORY[0x1E69BDA38], MEMORY[0x1E69BDA48]);
        v16 = sub_1C04F6730();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1C04D65C8();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1C04F6DC0();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void *sub_1C04D6470()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D628, &qword_1C04FA278);
  v2 = *v0;
  v3 = sub_1C04F6C00();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void sub_1C04D65C8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v13 = *v0;
  v14 = sub_1C04F6C00();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v5;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    v31 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      (*(v9 + 16))(v12, *(v13 + 48) + *(v9 + 72) * (v24 | (v19 << 6)), v7);
      OUTLINED_FUNCTION_237();
      v27();
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v5 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v15;
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1C04D67E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D628, &qword_1C04FA278);
  result = sub_1C04F6C10();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1C04F6E60();

        sub_1C04F67E0();
        result = sub_1C04F6E80();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C04D6A14(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C04F5DE0();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE0D630, &unk_1C04FA280);
  v7 = sub_1C04F6C10();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C04D7044(&qword_1EDE41E00, MEMORY[0x1E69BD6B0], MEMORY[0x1E69BD6C0]);
        result = sub_1C04F6700();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C04D6D2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C04F6010();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D620, &qword_1C04FA270);
  v7 = sub_1C04F6C10();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1C04D7044(&qword_1EDE414D0, MEMORY[0x1E69BDA38], MEMORY[0x1E69BDA40]);
        result = sub_1C04F6700();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1C04D7044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_5_10()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_5()
{
  v2 = *(v0 + 24);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1C04F6700();
}

void OUTLINED_FUNCTION_22_5()
{
  v2 = *(v0 + 24);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_23_3(uint64_t a1)
{

  return sub_1C04F6730();
}

void OUTLINED_FUNCTION_31_2()
{
  v2 = *(v0 + 32);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_33_0@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

void *BasePommesProxy.init(descriptor:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 160) = *(a1 + 32);
  v4 = sub_1C04D7460();
  v6 = v5;
  if (qword_1EDE44538 != -1)
  {
    OUTLINED_FUNCTION_7(&qword_1EDE44538);
  }

  v7 = qword_1EDE44DC8;
  v8 = qword_1EDE44DC8;

  return sub_1C04B8AAC(v4, v6, 0, 0, 0xF000000000000000, v7);
}

void *BasePommesProxy.init(endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = 0xD000000000000024;
  *(v2 + 136) = 0x80000001C04FC7D0;
  *(v2 + 144) = 0x7261655369726953;
  *(v2 + 152) = 0xEA00000000006863;
  *(v2 + 160) = xmmword_1C04F80E0;
  if (qword_1EDE44538 != -1)
  {
    OUTLINED_FUNCTION_7(&qword_1EDE44538);
  }

  v5 = qword_1EDE44DC8;
  v6 = qword_1EDE44DC8;

  return sub_1C04B979C(a1, a2, 0, v5);
}

uint64_t BasePommesProxy.deinit()
{
  v0 = BasePegasusProxy.deinit();

  return v0;
}

uint64_t sub_1C04D7460()
{
  v0 = sub_1C04F6240();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C04F6260();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69BDB08], v0, v10);
  sub_1C04F6270();
  v13 = sub_1C04F6250();
  (*(v8 + 8))(v12, v6);
  return v13;
}

void sub_1C04D769C()
{
  OUTLINED_FUNCTION_0_14();

  v0 = sub_1C04F6EA0();
  MEMORY[0x1C68DC0D0](v0);

  OUTLINED_FUNCTION_2_17("Fatal error", v1, v2, 0xD00000000000002ALL, 0x80000001C04FE140, "PegasusKit/BasePommesProxy.swift");
  __break(1u);
}

void sub_1C04D7744()
{
  OUTLINED_FUNCTION_0_14();

  v0 = sub_1C04F6EA0();
  MEMORY[0x1C68DC0D0](v0);

  OUTLINED_FUNCTION_2_17("Fatal error", v1, v2, 0xD00000000000002ALL, 0x80000001C04FE110, "PegasusKit/BasePommesProxy.swift");
  __break(1u);
}

void sub_1C04D77EC()
{
  OUTLINED_FUNCTION_0_14();

  v0 = sub_1C04F6EA0();
  MEMORY[0x1C68DC0D0](v0);

  OUTLINED_FUNCTION_2_17("Fatal error", v1, v2, 0xD00000000000002FLL, 0x80000001C04FE0E0, "PegasusKit/BasePommesProxy.swift");
  __break(1u);
}

uint64_t sub_1C04D7894()
{
}

uint64_t BasePommesProxy.__deallocating_deinit()
{
  v0 = BasePommesProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C04F6CF0();
}

uint64_t type metadata accessor for CancellableStoreKey(uint64_t a1)
{
  result = qword_1EDE446E8;
  if (!qword_1EDE446E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04D7A3C(uint64_t a1)
{
  result = sub_1C04F54B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C04D7AAC(uint64_t a1)
{
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0_15();
  sub_1C04D7C60(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1C04F6710();
}

uint64_t sub_1C04D7B20()
{
  sub_1C04F6E60();
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0_15();
  sub_1C04D7C60(v0, v1, MEMORY[0x1E69695B8]);
  sub_1C04F6710();
  return sub_1C04F6E80();
}

uint64_t sub_1C04D7BA0(uint64_t a1)
{
  sub_1C04F6E60();
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0_15();
  sub_1C04D7C60(v1, v2, MEMORY[0x1E69695B8]);
  sub_1C04F6710();
  return sub_1C04F6E80();
}

uint64_t sub_1C04D7C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C04D7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6830];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C04D7D84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1C04D7DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C04D7E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C04D7F0C()
{
  v0 = sub_1C04855B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1C04D7F80(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C04D8034(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C04D80C8(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_1F3F86718 != a1);
  return v2 & 1;
}

uint64_t sub_1C04D80F0(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_1F3F86768 != a1);
  return v2 & 1;
}

void sub_1C04D8118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_2_18();
      sub_1C04F63A0();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_16(v25, xmmword_1C04F7BB0);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_16(v17, xmmword_1C04F7BA0);
      sub_1C04A61B0(v18, v19);
      v15 = OUTLINED_FUNCTION_4_10();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_16(v20, xmmword_1C04F8240);
      sub_1C04A61B0(v21, v22);
      v23 = OUTLINED_FUNCTION_4_10();
      sub_1C04A61B0(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_16(v10, xmmword_1C04F9620);
      sub_1C04A61B0(v11, v12);
      v13 = OUTLINED_FUNCTION_4_10();
      sub_1C04A61B0(v13, v14);
      sub_1C04A61B0(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_16(v26, xmmword_1C04FA4E0);
      sub_1C04A61B0(v27, v28);
      v29 = OUTLINED_FUNCTION_4_10();
      sub_1C04A61B0(v29, v30);
      sub_1C04A61B0(a10 + 112, &v26[7]);
      sub_1C04A61B0(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_1C04A61B0(v15, v16);
      OUTLINED_FUNCTION_2_18();
      sub_1C04F63A0();

      break;
    default:
      return;
  }
}

uint64_t sub_1C04D83F4()
{
  result = sub_1C04D841C(5);
  byte_1EDE44D78 = result & 1;
  return result;
}

uint64_t sub_1C04D841C(char a1)
{
  sub_1C04D84A8(a1);
  v1 = sub_1C04F6740();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1C04D84A8(char a1)
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

void sub_1C04D85D0()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v47 = v4;
  v48 = v5;
  v51 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = sub_1C04F5460();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
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
  sub_1C04B2C20(0, &qword_1EDE44770, 0x1E69E9BF8);
  v52 = 0xD000000000000010;
  v53 = 0x80000001C04FC670;
  v56 = 45;
  v57 = 0xE100000000000000;
  v54 = 95;
  v55 = 0xE100000000000000;
  v45 = sub_1C04D2E54();
  OUTLINED_FUNCTION_141();
  sub_1C04F6B90();
  *(v0 + 96) = sub_1C04F6B10();
  OUTLINED_FUNCTION_2();
  v25 = *(v24 + 136);
  v26 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  OUTLINED_FUNCTION_2();
  v28 = *(v27 + 152);
  type metadata accessor for Locker();
  v29 = swift_allocObject();
  v30 = swift_slowAlloc();
  *(v29 + 16) = v30;
  *v30 = 0;
  *(v1 + v28) = v29;
  sub_1C04F5450();
  OUTLINED_FUNCTION_2();
  v32 = v23;
  v33 = v51;
  (*(v19 + 32))(v1 + *(v31 + 144), v32, v17);
  swift_weakAssign();
  *(v1 + 80) = v33;
  v34 = *(v1 + 96);

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
  OUTLINED_FUNCTION_2();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_1C04D2EA8(v16, v1 + v36);
  swift_endAccess();
  v52 = v1;

  sub_1C04F6790();
  OUTLINED_FUNCTION_81_0();
  v37 = *(*(v8 + 32) + 16);
  os_unfair_lock_lock(v37);
  sub_1C04E786C(v8, v34, v16, v1, &off_1F3F85FC0);

  os_unfair_lock_unlock(v37);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v8 + 24);
    ObjectType = swift_getObjectType();
    (*(v38 + 8))(v1, &off_1F3F85FC0, ObjectType, v38);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C04A13B0(v1 + v36, v13, &qword_1EBE0CD58, &qword_1C04F8388);
  if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = *(v1 + 96);
    v41 = sub_1C04F6AE0();
    v42 = sub_1C0482AB0(v33);
    LOBYTE(v45) = v47;
    sub_1C04D8118(v41, v40, v42, v43, v44, v13, v48, v49, v45, v50);

    (*(*(v26 - 8) + 8))(v13, v26);
    sub_1C04D8F88();

    OUTLINED_FUNCTION_6();
  }
}

id *sub_1C04D8A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v44 = a4;
  v45 = a6;
  v42 = a5;
  v43 = a3;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  v15 = sub_1C04F5460();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_1C04B2C20(0, &qword_1EDE44770, 0x1E69E9BF8);
  v47 = 0xD000000000000010;
  v48 = 0x80000001C04FC670;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  v40 = sub_1C04D2E54();
  sub_1C04F6B90();
  *(v6 + 96) = sub_1C04F6B10();
  v19 = *(*v6 + 136);
  v20 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v7 + v19, 1, 1, v20);
  v21 = *(*v7 + 19);
  type metadata accessor for Locker();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v7 + v21) = v22;
  sub_1C04F5450();
  v24 = v18;
  v25 = v46;
  (*(v16 + 32))(v7 + *(*v7 + 18), v24, v15);
  swift_weakAssign();
  v7[10] = v25;
  v26 = v7[12];

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  v27 = *(*v7 + 17);
  swift_beginAccess();
  sub_1C04D2EA8(v14, v7 + v27);
  swift_endAccess();
  v47 = v7;

  v28 = sub_1C04F6790();
  v30 = v29;
  v31 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v31);
  sub_1C04E786C(a1, v28, v30, v7, &off_1F3F85FC0);

  os_unfair_lock_unlock(v31);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v7, &off_1F3F85FC0, ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C04A13B0(v7 + v27, v11, &qword_1EBE0CD58, &qword_1C04F8388);
  result = __swift_getEnumTagSinglePayload(v11, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v7[12];
    v36 = sub_1C04F6AE0();
    v37 = sub_1C0482AB0(v25);
    LOBYTE(v40) = v42;
    sub_1C04D8118(v36, v35, v37, v38, v39, v11, v43, v44, v40, v45);

    (*(*(v20 - 8) + 8))(v11, v20);
    return v7;
  }

  return result;
}

uint64_t sub_1C04D8F88()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_1F3F85C68;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, &type metadata for ResourceAccessActivity);
  if (sub_1C04D90F4(*v2))
  {
    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);

    MEMORY[0x1C68DC0D0](0x656372756F736572, 0xEE00737365636341);

    sub_1C0482AB0(v1);
    v3 = sub_1C04F6C50();
    MEMORY[0x1C68DC0D0](v3);

    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);

    sub_1C04D9158(0xD000000000000010, 0x80000001C04FC670, v0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

BOOL sub_1C04D90F4(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && qword_1F3F86740 != a1);
  return (v2 & 1) == 0;
}

uint64_t sub_1C04D9158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    *(a3 + 72) = os_transaction_create();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C04F6C30();
  }
}

uint64_t sub_1C04D9ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7E0, &qword_1C04FA790);
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1C04DA284(a1, a2, a3, a4, a5, &unk_1EBE0D7F0, &unk_1C04FA798, MEMORY[0x1E69BD1E8], &unk_1EBE0D7F8, MEMORY[0x1E69BD1E8], MEMORY[0x1E69BD1E0], &unk_1F3F879D8, &unk_1F3F87A00, sub_1C04E1004, MEMORY[0x1E69BD2E8], sub_1C04E1868, &unk_1EBE0D808, v21, v22, v23, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28, v29, v30);
  if (v5)
  {
    sub_1C04A13B0(a4, &v25, &qword_1EBE0CE40, &qword_1C04F8900);
    v16 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v17 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      (*(v17 + 24))(v5, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    else
    {
      sub_1C04A12B4(&v25, &qword_1EBE0CE40, &qword_1C04F8900);
    }

    return swift_willThrow();
  }

  else
  {
    v29 = v15;
    v23 = v14;
    sub_1C04A13B0(a4, &v25, &qword_1EBE0CE40, &qword_1C04F8900);
    v18 = swift_allocObject();
    v19 = v26;
    *(v18 + 16) = v25;
    *(v18 + 32) = v19;
    *(v18 + 48) = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7C0, &qword_1C04FA788);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    sub_1C047C1A4(&qword_1EBE0D7C8, &qword_1EBE0D7C0, &qword_1C04FA788, MEMORY[0x1E695BED8]);
    sub_1C04F6560();

    sub_1C047C1A4(&qword_1EBE0D7E8, &qword_1EBE0D7E0, &qword_1C04FA790, MEMORY[0x1E695BE58]);
    sub_1C04F64E0();

    (*(v24 + 8))(v13, v11);
    return v23;
  }
}

void sub_1C04DA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(void), uint64_t a28, unint64_t *a29)
{
  OUTLINED_FUNCTION_52_0();
  v323 = v31;
  v311 = v30;
  v296 = v32;
  v302 = v33;
  v35 = v34;
  v312 = v36;
  v38 = v37;
  v335 = *MEMORY[0x1E69E9840];
  v298 = v39;
  v299 = v40;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  OUTLINED_FUNCTION_0();
  v300 = v41;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_2(&v283 - v43);
  v308 = sub_1C04F62E0();
  OUTLINED_FUNCTION_0();
  v307 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9_2(v47 - v46);
  v310 = sub_1C04F5230();
  OUTLINED_FUNCTION_0();
  v309 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1();
  v321 = v51 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  v53 = OUTLINED_FUNCTION_2_1(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v283 - v55;
  v320 = sub_1C04F5340();
  OUTLINED_FUNCTION_0();
  v317 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_2(&v283 - v62);
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1();
  sub_1C04F54A0();
  v314 = sub_1C04F5470();
  v319 = v64;
  v65 = OUTLINED_FUNCTION_238();
  v66(v65);
  v324 = v29;
  sub_1C04C9F04();
  OUTLINED_FUNCTION_81_0();
  v67 = sub_1C04F6740();
  LODWORD(v322) = [v29 BOOLForKey_];

  v69 = *(v38 + 16);
  v68 = *(v38 + 24);
  v315 = v38;
  v70 = v69 == 0x7261655369726953 && v68 == 0xEA00000000006863;
  if (v70 || (OUTLINED_FUNCTION_138(), (sub_1C04F6D80() & 1) != 0))
  {
    if (qword_1EDE41E20 != -1)
    {
      swift_once();
    }

    LODWORD(v322) = byte_1EDE44D78 | v322;
  }

  v71 = v320;
  v72 = v324;
  v73 = sub_1C047B774();
  v75 = v74;
  v76 = *(v315 + 8);
  *&v328 = *v315;
  *(&v328 + 1) = v76;

  MEMORY[0x1C68DC0D0](47, 0xE100000000000000);
  v77 = OUTLINED_FUNCTION_138();
  MEMORY[0x1C68DC0D0](v77);
  v78 = v328;
  *&v328 = v73;
  *(&v328 + 1) = v75;

  MEMORY[0x1C68DC0D0](v78, *(&v78 + 1));

  v79 = v328;
  sub_1C04F5330();
  if (__swift_getEnumTagSinglePayload(v56, 1, v71) == 1)
  {
    OUTLINED_FUNCTION_106_0();
    sub_1C04A12B4(v56, &qword_1EBE0CE60, &unk_1C04F9130);
    v80 = sub_1C04A0FF8();
    OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v80);
    *v81 = v79;
    *(v81 + 16) = 0;
    *(v81 + 24) = 0;
    swift_willThrow();
    goto LABEL_58;
  }

  v292 = a29;
  v291 = a28;
  v290 = a27;
  v289 = a25;
  v288 = a24;

  v82 = v317;
  v83 = v316;
  (*(v317 + 32))(v316, v56, v71);
  v84 = *(v82 + 16);
  v294 = v82 + 16;
  v293 = v84;
  v84(v313, v83, v71);
  OUTLINED_FUNCTION_49_0();
  sub_1C04F51F0();
  sub_1C04F51A0();
  sub_1C04F5210();
  sub_1C04F5210();
  v85 = (v323)(0);
  v86 = OUTLINED_FUNCTION_138();
  v88 = sub_1C04E0FBC(v86, v87, a23);
  v305 = v85;
  sub_1C04F6320();
  sub_1C04F5210();

  sub_1C047BB00();
  sub_1C04F51E0();
  v303 = sub_1C04F66F0();

  v89 = sub_1C04C9DFC();
  v304 = v88;
  if (v90)
  {
    LOBYTE(v91) = v89;
    v92 = v90;
    OUTLINED_FUNCTION_88_0();
  }

  else
  {
    OUTLINED_FUNCTION_88_0();
    v93 = sub_1C04E9F48(a23, 0xEC00000074756F65, v35);
    if (v94)
    {
      LOBYTE(v91) = v93;
      v92 = v94;
    }

    else
    {
      v92 = 0xE300000000000000;
      LOBYTE(v91) = 49;
    }
  }

  v287 = a26;
  v95 = 0xED00006775626544;
  swift_isUniquelyReferenced_nonNull_native();
  *&v328 = v35;
  v96 = OUTLINED_FUNCTION_138();
  sub_1C049FB48(v96, v97, a23, 0xEC00000074756F65, v98);
  p_cache = (v328 + 64);
  v100 = 1 << *(v328 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v328 + 64);
  v103 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
  v323 = v328;

  v318 = v103;
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v104 = 0;
  v105 = (v100 + 63) >> 6;
  while (v102)
  {
LABEL_24:
    v107 = __clz(__rbit64(v102));
    v102 &= v102 - 1;
    v108 = (v104 << 10) | (16 * v107);
    v109 = (*(v323 + 48) + v108);
    v72 = v109[1];
    v110 = (*(v323 + 56) + v108);
    v91 = *v110;
    v92 = v110[1];
    v111 = *v109 == 0x2D656C7070412D58 && v72 == v95;
    if (v111 || (OUTLINED_FUNCTION_82_0(), (sub_1C04F6D80() & 1) != 0))
    {

      v72 = v95;
      v112 = *&v324[v318];

      *&v328 = sub_1C04D30CC();
      *(&v328 + 1) = v113;
      *&v329 = v114;
      v115 = OUTLINED_FUNCTION_138();
      sub_1C04A49C4(v115, v116);

      v100 = v112;
      sub_1C04D31F4(v328, *(&v328 + 1), v329);
      v95 = v72;
    }

    else
    {

      OUTLINED_FUNCTION_138();
      v100 = v321;
      sub_1C04F5210();
    }
  }

  while (1)
  {
    v106 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      __break(1u);
LABEL_97:
      v274 = __OFSUB__(HIDWORD(v106), v106);
      v275 = HIDWORD(v106) - v106;
      if (v274)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
      }

      v230 = v275;
LABEL_100:
      *(v72 + 4) = v230;
      *(v72 + 12) = 2048;
      v278 = 0;
      v227 = v286;
      switch(v105 >> 62)
      {
        case 1uLL:
          LODWORD(v278) = HIDWORD(v286) - v286;
          if (__OFSUB__(HIDWORD(v286), v286))
          {
            goto LABEL_114;
          }

          v278 = v278;
LABEL_105:
          *(v72 + 14) = v278;
          sub_1C04A1144(v227, v105);
          _os_log_impl(&dword_1C0479000, v100, v91, "Request payload deflated in size from %ld to %ld", v72, 0x16u);
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          break;
        case 2uLL:
          v280 = *(v286 + 16);
          v279 = *(v286 + 24);
          v274 = __OFSUB__(v279, v280);
          v278 = v279 - v280;
          if (!v274)
          {
            goto LABEL_105;
          }

          goto LABEL_115;
        case 3uLL:
          goto LABEL_105;
        default:
          v278 = BYTE6(v105);
          goto LABEL_105;
      }

      goto LABEL_106;
    }

    if (v106 >= v105)
    {
      break;
    }

    v102 = p_cache[v106];
    ++v104;
    if (v102)
    {
      v104 = v106;
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_46_0();

  v117 = v324;
  sub_1C04C9F04();
  OUTLINED_FUNCTION_81_0();
  sub_1C04A4F08(v118, v119, v120);
  v122 = v121;

  p_cache = &OBJC_METACLASS____TtC10PegasusKit17ParsecdConnection.cache;
  if (v122)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
    }

    v123 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v123, qword_1EDE44DB0);

    v124 = sub_1C04F63E0();
    v92 = sub_1C04F6A40();

    if (os_log_type_enabled(v124, v92))
    {
      OUTLINED_FUNCTION_145();
      v125 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v126 = swift_slowAlloc();
      *&v328 = v126;
      *v125 = 136315138;
      v127 = OUTLINED_FUNCTION_20_5();
      *(v125 + 4) = sub_1C047D76C(v127, v128, v129);
      OUTLINED_FUNCTION_25_5();
      _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v126);
      p_cache = &OBJC_METACLASS____TtC10PegasusKit17ParsecdConnection.cache;
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    v135 = v320;
    v136 = v322;
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_73_0();
    sub_1C04F5210();
    if (v136)
    {
      v137 = v303;
      swift_isUniquelyReferenced_nonNull_native();
      *&v328 = v137;
      v138 = OUTLINED_FUNCTION_20_5();
      sub_1C049FB48(v138, v139, v140, v141, v142);
      v143 = v328;
      LODWORD(v322) = 1;
    }

    else
    {

      LODWORD(v322) = 0;
      v143 = v303;
    }

    v144 = v311;
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    v135 = v320;
    v143 = v303;
    v144 = v311;
  }

  v145 = sub_1C04F6350();
  if (v144)
  {
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_34_1();
    v147(v92, v310);
    v148 = OUTLINED_FUNCTION_23_4();
    v149(v148, v135);

    OUTLINED_FUNCTION_46_0();

    goto LABEL_58;
  }

  v150 = v146;
  v333 = v145;
  v334 = v146;
  v332 = xmmword_1C04F83F0;
  v327 = 0;
  v318 = v145;
  sub_1C048087C(v145, v146);
  v151 = sub_1C04C9E9C();
  v311 = v150;
  if ((v151 & 1) == 0)
  {
LABEL_51:
    v92 = 0;
    v166 = 1;
    goto LABEL_52;
  }

  sub_1C04F5210();
  sub_1C04F5210();
  if (MEMORY[0x1C68DAC70](v333, v334) < 1501)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
    }

    v157 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v157, qword_1EDE44DB0);
    v158 = sub_1C04F63E0();
    sub_1C04F6A10();
    v159 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v159, v160))
    {
      *OUTLINED_FUNCTION_25_0() = 0;
      OUTLINED_FUNCTION_25_5();
      _os_log_impl(v161, v162, v163, v164, v165, 2u);
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    goto LABEL_51;
  }

  v327 = 1;
  v92 = v334;
  v152 = OUTLINED_FUNCTION_238();
  sub_1C048087C(v152, v153);
  v154 = OUTLINED_FUNCTION_238();
  sub_1C04E2074(v154, v155);
  v105 = v156;
  v222 = OUTLINED_FUNCTION_238();
  v104 = v223;
  sub_1C04A1144(v222, v224);
  v286 = v104;
  v225 = MEMORY[0x1C68DAC70](v104, v105);
  if (v225 < 0)
  {
    __break(1u);
  }

  else
  {
    v92 = v225;
    v104 = v143;
    if (qword_1EDE44480 == -1)
    {
      goto LABEL_70;
    }
  }

  OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
LABEL_70:
  v226 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v226, qword_1EDE44DB0);
  v227 = v286;
  sub_1C048087C(v286, v105);
  v100 = sub_1C04F63E0();
  LOBYTE(v91) = sub_1C04F6A10();
  v228 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v228, v229))
  {
    v72 = OUTLINED_FUNCTION_74_0();
    *v72 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    v106 = v333;
    v230 = 0;
    switch(v334 >> 62)
    {
      case 1uLL:
        goto LABEL_97;
      case 2uLL:
        v276 = *(v333 + 16);
        v277 = *(v333 + 24);
        v274 = __OFSUB__(v277, v276);
        v230 = v277 - v276;
        if (!v274)
        {
          goto LABEL_100;
        }

        goto LABEL_113;
      case 3uLL:
        goto LABEL_100;
      default:
        v230 = BYTE6(v334);
        goto LABEL_100;
    }
  }

  sub_1C04A1144(v227, v105);
LABEL_106:

  swift_beginAccess();
  v281 = v333;
  v282 = v334;
  v333 = v227;
  v334 = v105;
  sub_1C04A1144(v281, v282);
  v166 = 0;
  v143 = v104;
LABEL_52:
  sub_1C04F5380();
  swift_beginAccess();
  v167 = MEMORY[0x1C68DAC70](v333, v334);
  swift_endAccess();
  if ((v167 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v286 = v92;
    if (!HIDWORD(v167))
    {
      v285 = v166;
      v326 = bswap32(v167);
      sub_1C04F5380();
      v168 = v333;
      v169 = v334;
      sub_1C048087C(v333, v334);
      sub_1C04F53E0();
      sub_1C04A1144(v168, v169);
      v170 = *(&v332 + 1);
      v171 = OUTLINED_FUNCTION_238();
      sub_1C048087C(v171, v172);
      OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_73_0();
      sub_1C04F5220();
      v173 = p_cache;
      if (sub_1C04F51D0())
      {
        v284 = sub_1C04F66E0();
        v312 = v174;
      }

      else
      {
        v284 = 0;
        v312 = 0xE000000000000000;
      }

      v175 = v308;
      v176 = OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions;
      v177 = v324;
      OUTLINED_FUNCTION_141();
      swift_beginAccess();
      v178 = v307;
      v179 = &v177[v176];
      v180 = v306;
      (v307[2].isa)(v306, v179, v175);
      v181 = sub_1C04F6330();
      v183 = v182;
      (v178[1].isa)(v180, v175);
      v184 = v173[144];
      v303 = v143;
      v308 = v181;
      if (v322)
      {
        if (v184 != -1)
        {
          OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
        }

        v185 = sub_1C04F6400();
        OUTLINED_FUNCTION_163(v185, qword_1EDE44DB0);
        OUTLINED_FUNCTION_91_0(&v325);
        OUTLINED_FUNCTION_36_0();
        v186();
        v187 = v319;

        v188 = v312;

        v307 = v181;
        v143 = sub_1C04F63E0();
        v189 = sub_1C04F6A40();

        if (os_log_type_enabled(v143, v189))
        {
          v190 = swift_slowAlloc();
          v306 = swift_slowAlloc();
          *&v328 = v306;
          *v190 = 136446978;
          LODWORD(v305) = v189;
          sub_1C04F52D0();
          OUTLINED_FUNCTION_81_0();
          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v191();
          v192 = OUTLINED_FUNCTION_238();
          v195 = sub_1C047D76C(v192, v193, v194);
          OUTLINED_FUNCTION_73_0();

          v196 = OUTLINED_FUNCTION_55_0();
          v198 = sub_1C047D76C(v196, v187, v197);
          v199 = OUTLINED_FUNCTION_70_0(v198);
          sub_1C047D76C(v199, v188, v200);
          OUTLINED_FUNCTION_27_1();

          *(v190 + 24) = v195;
          *(v190 + 32) = v180;
          v201 = OUTLINED_FUNCTION_91_0(v331);
          *(v190 + 34) = sub_1C047D76C(v201, v183, v202);
          _os_log_impl(&dword_1C0479000, v143, v305, "Querying %{public}s with request (requestId: %{public}s) : (headers: %{public}s) %{public}s", v190, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();

          p_cache = v187;
        }

        else
        {

          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v231();
          p_cache = v187;
          v180 = v308;
        }

        v232 = *(v315 + 16);
        v328 = *v315;
        v329 = v232;
        v330 = *(v315 + 32);
        v233 = sub_1C04CA360(v170, &v328, v180, v183, v303);
        v92 = v234;

        if (v92)
        {

          v235 = sub_1C04F63E0();
          v236 = sub_1C04F6A40();

          if (os_log_type_enabled(v235, v236))
          {
            OUTLINED_FUNCTION_145();
            v237 = swift_slowAlloc();
            OUTLINED_FUNCTION_149();
            v143 = swift_slowAlloc();
            *&v328 = v143;
            *v237 = 136315138;
            v238 = sub_1C047D76C(v233, v92, &v328);

            *(v237 + 4) = v238;
            _os_log_impl(&dword_1C0479000, v235, v236, "Debug curl: %s", v237, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v143);
            OUTLINED_FUNCTION_134();
            MEMORY[0x1C68DCEB0]();
            p_cache = v319;
            OUTLINED_FUNCTION_134();
            MEMORY[0x1C68DCEB0]();
          }

          else
          {
          }
        }

        else
        {
          v235 = sub_1C04F63E0();
          v92 = sub_1C04F6A20();
          v240 = OUTLINED_FUNCTION_143();
          if (os_log_type_enabled(v240, v241))
          {
            *OUTLINED_FUNCTION_25_0() = 0;
            OUTLINED_FUNCTION_25_5();
            _os_log_impl(v242, v243, v244, v245, v246, 2u);
            OUTLINED_FUNCTION_134();
            MEMORY[0x1C68DCEB0]();
          }
        }
      }

      else
      {
        if (v184 != -1)
        {
          OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
        }

        v203 = sub_1C04F6400();
        OUTLINED_FUNCTION_163(v203, qword_1EDE44DB0);
        OUTLINED_FUNCTION_91_0(&v326);
        OUTLINED_FUNCTION_36_0();
        v204();
        v143 = v319;

        v92 = v312;

        v205 = sub_1C04F63E0();
        v206 = sub_1C04F6A40();

        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          v315 = swift_slowAlloc();
          *&v328 = v315;
          *v207 = 136446979;
          v307 = v205;
          sub_1C04F52D0();
          LODWORD(v306) = v206;
          v208 = v92;
          v92 = v209;
          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v210();
          v211 = OUTLINED_FUNCTION_238();
          sub_1C047D76C(v211, v212, v213);

          v214 = OUTLINED_FUNCTION_55_0();
          v216 = sub_1C047D76C(v214, v143, v215);
          v217 = OUTLINED_FUNCTION_70_0(v216);
          v219 = sub_1C047D76C(v217, v208, v218);

          *(v207 + 24) = v219;
          *(v207 + 32) = 2085;
          v220 = sub_1C047D76C(v308, v183, &v328);

          *(v207 + 34) = v220;
          v221 = v307;
          _os_log_impl(&dword_1C0479000, v307, v306, "Querying %{public}s with request (requestId: %{public}s) : (headers: %{public}s) %{sensitive}s", v207, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
        }

        else
        {

          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v239();
        }

        p_cache = v143;
      }

      if (qword_1EDE44480 == -1)
      {
        goto LABEL_85;
      }

      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_109:
  OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
LABEL_85:
  v247 = sub_1C04F6400();
  __swift_project_value_buffer(v247, qword_1EDE44DB0);
  OUTLINED_FUNCTION_27_1();

  v248 = sub_1C04F63E0();
  v249 = sub_1C04F6A10();

  if (os_log_type_enabled(v248, v249))
  {
    OUTLINED_FUNCTION_74_0();
    v92 = OUTLINED_FUNCTION_75_0();
    *&v328 = v92;
    *v143 = 136315394;
    v250 = sub_1C047D6CC();
    v252 = p_cache;
    v253 = sub_1C047D76C(v250, v251, &v328);

    *(v143 + 4) = v253;
    *(v143 + 12) = 2080;
    *(v143 + 14) = sub_1C047D76C(v314, v252, &v328);
    OUTLINED_FUNCTION_46_0();

    _os_log_impl(&dword_1C0479000, v248, v249, "Using session %s for requestId: %s", v143, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    OUTLINED_FUNCTION_46_0();
  }

  OUTLINED_FUNCTION_73_0();
  v254 = v295;
  v255 = sub_1C04E3AA8(v92, 0, v296 & 1);
  v257 = v256;
  LODWORD(v258) = *MEMORY[0x1E696A9C8];
  [v255 setPriority_];
  sub_1C04A13B0(v302, &v328, &qword_1EBE0CE40, &qword_1C04F8900);
  if (*(&v329 + 1))
  {
    v324 = v257;
    __swift_project_boxed_opaque_existential_1(&v328, *(&v329 + 1));
    sub_1C04F5200();
    v259 = v320;
    if (__swift_getEnumTagSinglePayload(v254, 1, v320))
    {
      sub_1C04A12B4(v254, &qword_1EBE0CE60, &unk_1C04F9130);
    }

    else
    {
      v262 = v313;
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_36_0();
      v263();
      sub_1C04A12B4(v254, &qword_1EBE0CE60, &unk_1C04F9130);
      sub_1C04F52D0();
      v322(v262, v259);
    }

    sub_1C04F51D0();
    v260 = v319;
    v264 = OUTLINED_FUNCTION_138();
    v261 = v314;
    v265(v264);

    __swift_destroy_boxed_opaque_existential_1(&v328);
    v257 = v324;
  }

  else
  {

    sub_1C04A12B4(&v328, &qword_1EBE0CE40, &qword_1C04F8900);
    v260 = v319;
    v261 = v314;
  }

  v325 = v257;
  sub_1C04A13B0(v302, &v328, &qword_1EBE0CE40, &qword_1C04F8900);
  v266 = swift_allocObject();
  v267 = v329;
  *(v266 + 16) = v328;
  *(v266 + 32) = v267;
  *(v266 + 48) = v330;
  *(v266 + 56) = v255;
  *(v266 + 64) = v261;
  *(v266 + 72) = v260;
  v268 = swift_allocObject();
  *(v268 + 16) = v287;
  *(v268 + 24) = v266;
  v255;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D800, &unk_1C04FA7A8);
  v290(0);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v269, &qword_1EBE0D800, &unk_1C04FA7A8, v270);
  v271 = v297;
  sub_1C04F6520();

  sub_1C047C1A4(v292, v298, v299, MEMORY[0x1E695BE28]);
  OUTLINED_FUNCTION_91_0(&v328);
  sub_1C04F64E0();
  OUTLINED_FUNCTION_96_0();

  (*(v300 + 8))(v271, v260);
  OUTLINED_FUNCTION_34_1();
  v272 = OUTLINED_FUNCTION_85_0();
  v273(v272);
  v322(v316, v320);
  sub_1C04A1144(v332, *(&v332 + 1));
  sub_1C04A1144(v333, v334);
LABEL_58:
  OUTLINED_FUNCTION_53_0();
}

void sub_1C04DC064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t *a28, uint64_t (*a29)(uint64_t), uint64_t a30)
{
  OUTLINED_FUNCTION_52_0();
  v41 = OUTLINED_FUNCTION_26_3(v38, v39, v40);
  v42 = OUTLINED_FUNCTION_2_1(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_84_0();
  v30(0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v43);
  if (OUTLINED_FUNCTION_50_0() != 200)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
    }

    v58 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v58, qword_1EDE44DB0);
    v59 = v33;
    v60 = sub_1C04F63E0();
    sub_1C04F6A20();
    v61 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v61, v62))
    {
      OUTLINED_FUNCTION_145();
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      *(v63 + 4) = OUTLINED_FUNCTION_103_0();

      OUTLINED_FUNCTION_99_0(&dword_1C0479000, v64, v65, "Non 200 HTTP status %ld");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    else
    {

      v60 = v59;
    }

    v66 = OUTLINED_FUNCTION_103_0();
    v67 = v59;
    v68 = [v67 description];
    v69 = sub_1C04F6750();
    v71 = v70;

    v72 = sub_1C04A0FF8();
    OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v72);
    *v73 = v66;
    v73[1] = v69;
    v73[2] = v71;
    v74 = OUTLINED_FUNCTION_299(v73, 2);
    OUTLINED_FUNCTION_18_3(v74, v75, &qword_1EBE0CE40, &qword_1C04F8900);
    if (v175)
    {
      v76 = __swift_project_boxed_opaque_existential_1(v174, v175);
      MEMORY[0x1EEE9AC00](v76);
      OUTLINED_FUNCTION_3_15();
      v77 = OUTLINED_FUNCTION_29_2();
      v78(v77);
LABEL_31:
      sub_1C04A12B4(v176, &qword_1EBE0CB20, &unk_1C04F8B20);
      __swift_destroy_boxed_opaque_existential_1(v174);
LABEL_61:
      OUTLINED_FUNCTION_53_0();
      return;
    }

    goto LABEL_60;
  }

  v44 = OUTLINED_FUNCTION_42_1();
  v45 = OUTLINED_FUNCTION_57_0(v44);

  if (v45)
  {
    OUTLINED_FUNCTION_89_0();
    sub_1C04F6750();

    v46 = OUTLINED_FUNCTION_86_0();
    v48 = sub_1C048728C(v46, v47);
    if ((v49 & 1) == 0)
    {
      v50 = v48;
      if (v48)
      {
        v51 = OUTLINED_FUNCTION_51_0();
        v52 = OUTLINED_FUNCTION_46_0();
        v54 = [v52 v53];

        if (v54)
        {
          v55 = sub_1C04F6750();
          v57 = v56;
        }

        else
        {
          v55 = 0;
          v57 = 0xE000000000000000;
        }

        if (qword_1EDE44480 != -1)
        {
          OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
        }

        v87 = sub_1C04F6400();
        __swift_project_value_buffer(v87, qword_1EDE44DB0);
        OUTLINED_FUNCTION_27_1();

        v88 = sub_1C04F63E0();
        v89 = sub_1C04F6A20();

        if (os_log_type_enabled(v88, v89))
        {
          OUTLINED_FUNCTION_74_0();
          v174[0] = OUTLINED_FUNCTION_75_0();
          *v36 = 136315394;
          v90 = OUTLINED_FUNCTION_86_0();
          sub_1C047D76C(v90, v91, v92);

          *(v36 + 14) = OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_95_0(&dword_1C0479000, v93, v94, "RPC error: %s: %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
        }

        else
        {
        }

        v95 = OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v95);
        *v96 = v50;
        v96[1] = v55;
        v96[2] = v57;
        v97 = OUTLINED_FUNCTION_299(v96, 3);
        OUTLINED_FUNCTION_18_3(v97, v98, &qword_1EBE0CE40, &qword_1C04F8900);
        if (v175)
        {
          goto LABEL_29;
        }

LABEL_60:
        sub_1C04A12B4(v176, &qword_1EBE0CB20, &unk_1C04F8B20);
        sub_1C04A12B4(v174, &qword_1EBE0CE40, &qword_1C04F8900);
        goto LABEL_61;
      }
    }
  }

  if (v31 >> 60 == 15)
  {
    v79 = sub_1C04A0FF8();
    OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v79);
    v80[1] = 0;
    v80[2] = 0;
    *v80 = 0;
    v81 = OUTLINED_FUNCTION_299(v80, 5);
    OUTLINED_FUNCTION_18_3(v81, v82, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v175)
    {
      goto LABEL_60;
    }

LABEL_29:
    __swift_project_boxed_opaque_existential_1(v174, v175);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v99);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_8_7();
LABEL_30:
    v100();
    goto LABEL_31;
  }

  v172 = v34;
  v173 = v31;
  sub_1C048087C(v34, v31);
  v83 = sub_1C049E6A8();
  if (v37)
  {
    v84 = sub_1C04A1144(v34, v31);
    OUTLINED_FUNCTION_18_3(v84, v85, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v175)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v86 = v83;
  sub_1C049E7E0();
  OUTLINED_FUNCTION_89_0();
  v102 = bswap32(v101);
  v103 = OUTLINED_FUNCTION_21_5();
  if (MEMORY[0x1C68DAC70](v103) != v102)
  {
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_68_0();
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    MEMORY[0x1C68DC0D0](v32 | 1, 0x80000001C04FCCB0);
    MEMORY[0x1C68DAC70](v172, v31);
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    v120 = v174[1];
    v121 = sub_1C04A0FF8();
    v122 = OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v121);
    *v123 = v174[0];
    v123[1] = v120;
    OUTLINED_FUNCTION_31_3(v122, v123);
    v124 = sub_1C04A1144(v172, v173);
    OUTLINED_FUNCTION_18_3(v124, v125, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v175)
    {
      goto LABEL_60;
    }

LABEL_44:
    __swift_project_boxed_opaque_existential_1(v174, v175);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v131);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_93_0();
    goto LABEL_30;
  }

  if (!v86)
  {
    goto LABEL_58;
  }

  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
  }

  v104 = sub_1C04F6400();
  __swift_project_value_buffer(v104, qword_1EDE44DB0);
  v105 = sub_1C04F63E0();
  v106 = sub_1C04F6A10();
  if (os_log_type_enabled(v105, v106))
  {
    *OUTLINED_FUNCTION_25_0() = 0;
    OUTLINED_FUNCTION_94_0(&dword_1C0479000, v107, v108, "Response indicates compressed payload, attempting to inflate");
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v109 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v109, v110);
  v111 = OUTLINED_FUNCTION_102_0();
  v112 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v112, v113);
  if ((v111 & 1) == 0)
  {
    v126 = sub_1C04A0FF8();
    v127 = OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v126);
    *v128 = 0xD000000000000043;
    v128[1] = 0x80000001C04FCCD0;
    OUTLINED_FUNCTION_31_3(v127, v128);
    v129 = sub_1C04A1144(v172, v173);
    OUTLINED_FUNCTION_18_3(v129, v130, &qword_1EBE0CE40, &qword_1C04F8900);
    OUTLINED_FUNCTION_49_0();
    if (!v175)
    {
      goto LABEL_60;
    }

    goto LABEL_44;
  }

  v114 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v114, v115);
  v116 = OUTLINED_FUNCTION_21_5();
  sub_1C04E2498(v116, v117);
  OUTLINED_FUNCTION_49_0();
  v132 = v118;
  v133 = v119;
  v134 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v134, v135);
  v136 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v136, v137);
  v138 = sub_1C04F63E0();
  sub_1C04F6A10();
  v139 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = OUTLINED_FUNCTION_74_0();
    *v141 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    switch(v173 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v172), v172))
        {
          goto LABEL_63;
        }

        break;
      case 2uLL:
        if (__OFSUB__(*(v172 + 24), *(v172 + 16)))
        {
          goto LABEL_64;
        }

        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_92_0();
    v144 = 0;
    switch(v145)
    {
      case 1:
        LODWORD(v144) = HIDWORD(v132) - v132;
        if (__OFSUB__(HIDWORD(v132), v132))
        {
          goto LABEL_65;
        }

        v144 = v144;
        break;
      case 2:
        v147 = *(v132 + 16);
        v146 = *(v132 + 24);
        v148 = __OFSUB__(v146, v147);
        v144 = v146 - v147;
        if (v148)
        {
          goto LABEL_66;
        }

        break;
      case 3:
        break;
      default:
        v144 = BYTE6(v133);
        break;
    }

    *(v141 + 14) = v144;
    v149 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v149, v150);
    OUTLINED_FUNCTION_25_5();
    _os_log_impl(v151, v152, v153, v154, v155, 0x16u);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    v142 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v142, v143);
  }

  OUTLINED_FUNCTION_101_0();
  v172 = v132;
  v173 = v133;
  v156 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v156, v157);
  v158 = OUTLINED_FUNCTION_238();
  sub_1C04A1144(v158, v159);
  v160 = OUTLINED_FUNCTION_20_5();
  v161 = MEMORY[0x1C68DAC70](v160);
  v162 = OUTLINED_FUNCTION_20_5();
  sub_1C04A1144(v162, v163);
  if ((v161 & 0x8000000000000000) == 0)
  {
LABEL_58:
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    OUTLINED_FUNCTION_69_0();
    sub_1C04F62F0();
    v164 = sub_1C04E0FBC(a28, a29, a30);
    OUTLINED_FUNCTION_37_1(v164);
    v175 = a30;
    __swift_allocate_boxed_opaque_existential_0(v174);
    OUTLINED_FUNCTION_59_0();
    v165();
    sub_1C04A12B4(v176, &qword_1EBE0CB20, &unk_1C04F8B20);
    v166 = OUTLINED_FUNCTION_47_0();
    v167(v166);
    v168 = sub_1C04A1144(v172, v173);
    OUTLINED_FUNCTION_18_3(v168, v169, &qword_1EBE0CE40, &qword_1C04F8900);
    v170 = v175;
    OUTLINED_FUNCTION_49_0();
    if (v170)
    {
      __swift_project_boxed_opaque_existential_1(v174, v170);
      OUTLINED_FUNCTION_10_4();
      MEMORY[0x1EEE9AC00](v171);
      OUTLINED_FUNCTION_0_17();
      OUTLINED_FUNCTION_40_0();
      goto LABEL_30;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_1C04DCD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21, uint64_t (*a22)(uint64_t), uint64_t a23)
{
  OUTLINED_FUNCTION_52_0();
  v34 = OUTLINED_FUNCTION_26_3(v31, v32, v33);
  v35 = OUTLINED_FUNCTION_2_1(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_84_0();
  v23(0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v36);
  if (OUTLINED_FUNCTION_50_0() != 200)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
    }

    v51 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v51, qword_1EDE44DB0);
    v52 = v26;
    v53 = sub_1C04F63E0();
    sub_1C04F6A20();
    v54 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_145();
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = OUTLINED_FUNCTION_103_0();

      OUTLINED_FUNCTION_99_0(&dword_1C0479000, v57, v58, "Non 200 HTTP status %ld");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    else
    {

      v53 = v52;
    }

    v59 = OUTLINED_FUNCTION_103_0();
    v60 = v52;
    v61 = [v60 description];
    v62 = sub_1C04F6750();
    v64 = v63;

    v65 = sub_1C04A0FF8();
    OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v65);
    *v66 = v59;
    v66[1] = v62;
    v66[2] = v64;
    v67 = OUTLINED_FUNCTION_299(v66, 2);
    OUTLINED_FUNCTION_18_3(v67, v68, &qword_1EBE0CE40, &qword_1C04F8900);
    if (v168)
    {
      v69 = __swift_project_boxed_opaque_existential_1(v167, v168);
      MEMORY[0x1EEE9AC00](v69);
      OUTLINED_FUNCTION_3_15();
      v70 = OUTLINED_FUNCTION_29_2();
      v71(v70);
LABEL_31:
      sub_1C04A12B4(v169, &qword_1EBE0CB20, &unk_1C04F8B20);
      __swift_destroy_boxed_opaque_existential_1(v167);
LABEL_61:
      OUTLINED_FUNCTION_53_0();
      return;
    }

    goto LABEL_60;
  }

  v37 = OUTLINED_FUNCTION_42_1();
  v38 = OUTLINED_FUNCTION_57_0(v37);

  if (v38)
  {
    OUTLINED_FUNCTION_89_0();
    sub_1C04F6750();

    v39 = OUTLINED_FUNCTION_86_0();
    v41 = sub_1C048728C(v39, v40);
    if ((v42 & 1) == 0)
    {
      v43 = v41;
      if (v41)
      {
        v44 = OUTLINED_FUNCTION_51_0();
        v45 = OUTLINED_FUNCTION_46_0();
        v47 = [v45 v46];

        if (v47)
        {
          v48 = sub_1C04F6750();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0xE000000000000000;
        }

        if (qword_1EDE44480 != -1)
        {
          OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
        }

        v80 = sub_1C04F6400();
        __swift_project_value_buffer(v80, qword_1EDE44DB0);
        OUTLINED_FUNCTION_27_1();

        v81 = sub_1C04F63E0();
        v82 = sub_1C04F6A20();

        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_74_0();
          v167[0] = OUTLINED_FUNCTION_75_0();
          *v29 = 136315394;
          v83 = OUTLINED_FUNCTION_86_0();
          sub_1C047D76C(v83, v84, v85);

          *(v29 + 14) = OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_95_0(&dword_1C0479000, v86, v87, "RPC error: %s: %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
        }

        else
        {
        }

        v88 = OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v88);
        *v89 = v43;
        v89[1] = v48;
        v89[2] = v50;
        v90 = OUTLINED_FUNCTION_299(v89, 3);
        OUTLINED_FUNCTION_18_3(v90, v91, &qword_1EBE0CE40, &qword_1C04F8900);
        if (v168)
        {
          goto LABEL_29;
        }

LABEL_60:
        sub_1C04A12B4(v169, &qword_1EBE0CB20, &unk_1C04F8B20);
        sub_1C04A12B4(v167, &qword_1EBE0CE40, &qword_1C04F8900);
        goto LABEL_61;
      }
    }
  }

  if (v24 >> 60 == 15)
  {
    v72 = sub_1C04A0FF8();
    OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v72);
    v73[1] = 0;
    v73[2] = 0;
    *v73 = 0;
    v74 = OUTLINED_FUNCTION_299(v73, 5);
    OUTLINED_FUNCTION_18_3(v74, v75, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v168)
    {
      goto LABEL_60;
    }

LABEL_29:
    __swift_project_boxed_opaque_existential_1(v167, v168);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v92);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_8_7();
LABEL_30:
    v93();
    goto LABEL_31;
  }

  v165 = v27;
  v166 = v24;
  sub_1C048087C(v27, v24);
  v76 = sub_1C049E6A8();
  if (v30)
  {
    v77 = sub_1C04A1144(v27, v24);
    OUTLINED_FUNCTION_18_3(v77, v78, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v168)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v79 = v76;
  sub_1C049E7E0();
  OUTLINED_FUNCTION_89_0();
  v95 = bswap32(v94);
  v96 = OUTLINED_FUNCTION_21_5();
  if (MEMORY[0x1C68DAC70](v96) != v95)
  {
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_68_0();
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    MEMORY[0x1C68DC0D0](v25 | 1, 0x80000001C04FCCB0);
    MEMORY[0x1C68DAC70](v165, v24);
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    v113 = v167[1];
    v114 = sub_1C04A0FF8();
    v115 = OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v114);
    *v116 = v167[0];
    v116[1] = v113;
    OUTLINED_FUNCTION_31_3(v115, v116);
    v117 = sub_1C04A1144(v165, v166);
    OUTLINED_FUNCTION_18_3(v117, v118, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v168)
    {
      goto LABEL_60;
    }

LABEL_44:
    __swift_project_boxed_opaque_existential_1(v167, v168);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v124);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_93_0();
    goto LABEL_30;
  }

  if (!v79)
  {
    goto LABEL_58;
  }

  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
  }

  v97 = sub_1C04F6400();
  __swift_project_value_buffer(v97, qword_1EDE44DB0);
  v98 = sub_1C04F63E0();
  v99 = sub_1C04F6A10();
  if (os_log_type_enabled(v98, v99))
  {
    *OUTLINED_FUNCTION_25_0() = 0;
    OUTLINED_FUNCTION_94_0(&dword_1C0479000, v100, v101, "Response indicates compressed payload, attempting to inflate");
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v102 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v102, v103);
  v104 = OUTLINED_FUNCTION_102_0();
  v105 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v105, v106);
  if ((v104 & 1) == 0)
  {
    v119 = sub_1C04A0FF8();
    v120 = OUTLINED_FUNCTION_45(&type metadata for GRPCClient.Error, v119);
    *v121 = 0xD000000000000043;
    v121[1] = 0x80000001C04FCCD0;
    OUTLINED_FUNCTION_31_3(v120, v121);
    v122 = sub_1C04A1144(v165, v166);
    OUTLINED_FUNCTION_18_3(v122, v123, &qword_1EBE0CE40, &qword_1C04F8900);
    OUTLINED_FUNCTION_49_0();
    if (!v168)
    {
      goto LABEL_60;
    }

    goto LABEL_44;
  }

  v107 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v107, v108);
  v109 = OUTLINED_FUNCTION_21_5();
  sub_1C04E2498(v109, v110);
  OUTLINED_FUNCTION_49_0();
  v125 = v111;
  v126 = v112;
  v127 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v127, v128);
  v129 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v129, v130);
  v131 = sub_1C04F63E0();
  sub_1C04F6A10();
  v132 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = OUTLINED_FUNCTION_74_0();
    *v134 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    switch(v166 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v165), v165))
        {
          goto LABEL_63;
        }

        break;
      case 2uLL:
        if (__OFSUB__(*(v165 + 24), *(v165 + 16)))
        {
          goto LABEL_64;
        }

        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_92_0();
    v137 = 0;
    switch(v138)
    {
      case 1:
        LODWORD(v137) = HIDWORD(v125) - v125;
        if (__OFSUB__(HIDWORD(v125), v125))
        {
          goto LABEL_65;
        }

        v137 = v137;
        break;
      case 2:
        v140 = *(v125 + 16);
        v139 = *(v125 + 24);
        v141 = __OFSUB__(v139, v140);
        v137 = v139 - v140;
        if (v141)
        {
          goto LABEL_66;
        }

        break;
      case 3:
        break;
      default:
        v137 = BYTE6(v126);
        break;
    }

    *(v134 + 14) = v137;
    v142 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v142, v143);
    OUTLINED_FUNCTION_25_5();
    _os_log_impl(v144, v145, v146, v147, v148, 0x16u);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    v135 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v135, v136);
  }

  OUTLINED_FUNCTION_101_0();
  v165 = v125;
  v166 = v126;
  v149 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v149, v150);
  v151 = OUTLINED_FUNCTION_238();
  sub_1C04A1144(v151, v152);
  v153 = OUTLINED_FUNCTION_20_5();
  v154 = MEMORY[0x1C68DAC70](v153);
  v155 = OUTLINED_FUNCTION_20_5();
  sub_1C04A1144(v155, v156);
  if ((v154 & 0x8000000000000000) == 0)
  {
LABEL_58:
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    OUTLINED_FUNCTION_69_0();
    sub_1C04F62F0();
    v157 = sub_1C04E0FBC(a21, a22, a23);
    OUTLINED_FUNCTION_37_1(v157);
    v168 = a23;
    __swift_allocate_boxed_opaque_existential_0(v167);
    OUTLINED_FUNCTION_59_0();
    v158();
    sub_1C04A12B4(v169, &qword_1EBE0CB20, &unk_1C04F8B20);
    v159 = OUTLINED_FUNCTION_47_0();
    v160(v159);
    v161 = sub_1C04A1144(v165, v166);
    OUTLINED_FUNCTION_18_3(v161, v162, &qword_1EBE0CE40, &qword_1C04F8900);
    v163 = v168;
    OUTLINED_FUNCTION_49_0();
    if (v163)
    {
      __swift_project_boxed_opaque_existential_1(v167, v163);
      OUTLINED_FUNCTION_10_4();
      MEMORY[0x1EEE9AC00](v164);
      OUTLINED_FUNCTION_0_17();
      OUTLINED_FUNCTION_40_0();
      goto LABEL_30;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1C04DDAAC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40950);
  __swift_project_value_buffer(v0, qword_1EDE40950);
  return sub_1C04F63F0();
}

uint64_t sub_1C04DDB34()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE41AC8 = v9;
  *algn_1EDE41AD0 = v11;
  return result;
}

uint64_t PegasusProxyForIntelligencePlatform.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04DDD50()
{
  *&xmmword_1EBE0D738 = 0xD000000000000024;
  *(&xmmword_1EBE0D738 + 1) = 0x80000001C04FE310;
  qword_1EBE0D748 = 0x6863726165534449;
  unk_1EBE0D750 = 0xE800000000000000;
  *&xmmword_1EBE0D758 = 0xD000000000000018;
  *(&xmmword_1EBE0D758 + 1) = 0x80000001C04FE340;
}

void *PegasusProxyForIntelligencePlatform.init()()
{
  if (qword_1EDE41AC0 != -1)
  {
    OUTLINED_FUNCTION_32_3(&qword_1EDE41AC0);
  }

  OUTLINED_FUNCTION_141();

  return sub_1C04B8AAC(v0, v1, v2, v3, 0xF000000000000000, 0);
}

void *PegasusProxyForIntelligencePlatform.__allocating_init(endpoint:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_141();
  return sub_1C04B979C(v0, v1, v2, v3);
}

uint64_t sub_1C04DDEC0()
{
  v2 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1C04F6200();
  v10 = OUTLINED_FUNCTION_2_1(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_84_0();
  v11 = *(v0 + 16);
  (*(v4 + 104))(v8, *MEMORY[0x1E69BDAD8], v2);

  sub_1C04F6230();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v11, 21, v1, 0, 1);
}

void sub_1C04DDFF8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D790, &qword_1C04FA760);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *v3;
  if (qword_1EDE40948 != -1)
  {
    OUTLINED_FUNCTION_35_1(&qword_1EDE40948);
  }

  v10 = sub_1C04F6400();
  __swift_project_value_buffer(v10, qword_1EDE40950);
  v11 = sub_1C04F63E0();
  v12 = sub_1C04F6A20();
  v13 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_145();
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = v15;
    OUTLINED_FUNCTION_149();
    v26 = swift_slowAlloc();
    v27 = v1;
    v30 = v26;
    *v16 = 136315138;
    v29 = v9;
    v17 = sub_1C04F6790();
    v19 = v9;
    v20 = sub_1C047D76C(v17, v18, &v30);

    *(v16 + 4) = v20;
    v9 = v19;
    _os_log_impl(&dword_1C0479000, v11, v12, "Pegasus for Intelligence platform is disabled: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v1 = v27;
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  if (v9 == 1)
  {
    v21 = 34;
  }

  else
  {
    v21 = 47;
  }

  if (v9 == 1)
  {
    v22 = 3;
  }

  else
  {
    v22 = 4;
  }

  *(v1 + qword_1EDE44718) = v21;
  sub_1C0483574();
  *v6 = v22;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760, MEMORY[0x1E695C008]);
  sub_1C04F64E0();
  v23 = OUTLINED_FUNCTION_21_5();
  v24(v23);
  OUTLINED_FUNCTION_6();
}

void sub_1C04DE2C8()
{
  OUTLINED_FUNCTION_7_0();
  v36 = v0;
  v45 = v2;
  v40 = v3;
  v39 = sub_1C04F5CE0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v38 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_90_0();
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_84_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D040, &qword_1C04F9540);
  OUTLINED_FUNCTION_0();
  v44 = v13;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D780, &unk_1C04FA748);
  OUTLINED_FUNCTION_0();
  v42 = v17;
  v43 = v18;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v46 = BasePegasusProxy.EnabledState.statusPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
  OUTLINED_FUNCTION_3();
  v23 = v22;
  sub_1C047C1A4(v24, &qword_1EBE0D1E0, &qword_1C04F9180, v25);
  sub_1C04F6570();

  sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60, MEMORY[0x1E695BD78]);
  sub_1C04F6510();
  (*(v11 + 8))(v1, v9);
  v26 = v37;
  v27 = v39;
  (*(v5 + 16))(v37, v40, v39);
  v28 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v29 = (v38 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v36;
  (*(v5 + 32))(v30 + v28, v26, v27);
  *(v30 + v29) = v45;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D770, &qword_1C04FA620);
  sub_1C047C1A4(&qword_1EDE408F8, &qword_1EBE0D040, &qword_1C04F9540, MEMORY[0x1E695BDB8]);
  sub_1C047C1A4(&qword_1EDE40888, &qword_1EBE0D770, &qword_1C04FA620, v23);
  v31 = v41;
  sub_1C04F65B0();

  (*(v44 + 8))(v16, v31);
  OUTLINED_FUNCTION_2_8();
  sub_1C047C1A4(v32, &qword_1EBE0D780, &unk_1C04FA748, v33);
  v34 = v42;
  sub_1C04F64E0();
  (*(v43 + 8))(v21, v34);
  OUTLINED_FUNCTION_6();
}

void sub_1C04DE740(unsigned __int8 *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  if (qword_1EDE40948 != -1)
  {
    swift_once();
  }

  v6 = sub_1C04F6400();
  __swift_project_value_buffer(v6, qword_1EDE40950);
  v7 = sub_1C04F63E0();
  v8 = sub_1C04F6A10();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_1C04F6790();
    v13 = sub_1C047D76C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C0479000, v7, v8, "Retrying with enabledState status: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1C68DCEB0](v10, -1, -1);
    MEMORY[0x1C68DCEB0](v9, -1, -1);
  }

  if (v5 == 4)
  {
    v17 = 0;
LABEL_10:
    sub_1C04DDFF8();
    goto LABEL_11;
  }

  if (v5 != 5)
  {
    v16 = v5;
    goto LABEL_10;
  }

  sub_1C04DE914();
LABEL_11:
  *a4 = v14;
}

void sub_1C04DE914()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v48 = v4;
  v44 = *v0;
  v41 = sub_1C04F5CE0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_90_0();
  v42 = v9;
  v43 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7A0, &unk_1C04FA768);
  OUTLINED_FUNCTION_0();
  v46 = v11;
  v47 = v10;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v40 - v13;
  if (qword_1EDE41AC0 != -1)
  {
    OUTLINED_FUNCTION_32_3(&qword_1EDE41AC0);
  }

  v14 = qword_1EDE41AC8;
  v15 = *algn_1EDE41AD0;

  v16 = sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v16;
  sub_1C049FB48(v14, v15, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  if (qword_1EDE40948 != -1)
  {
    OUTLINED_FUNCTION_35_1(&qword_1EDE40948);
  }

  v18 = sub_1C04F6400();
  __swift_project_value_buffer(v18, qword_1EDE40950);

  v19 = sub_1C04F63E0();
  v20 = sub_1C04F6A10();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_145();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v22 = swift_slowAlloc();
    v51 = v22;
    *v21 = 136315138;
    sub_1C04F6490();
    v49 = v50;
    v23 = sub_1C04F6790();
    v25 = sub_1C047D76C(v23, v24, &v51);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1C0479000, v19, v20, "Processing enabledState status: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  sub_1C04F6490();
  if (v51 == 4)
  {
    sub_1C04DE2C8();
  }

  else if (v51 == 5)
  {
    v40 = v3;
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_141();
    swift_beginAccess();

    v26 = sub_1C04D0244(19, 0);

    v50 = v26;
    v27 = v43;
    v28 = v41;
    (*(v6 + 16))(v43, v48, v41);
    v29 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v30 = (v42 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    (*(v6 + 32))(v32 + v29, v27, v28);
    *(v32 + v30) = v1;
    *(v32 + v31) = v40;
    *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;

    sub_1C04F6410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D770, &qword_1C04FA620);
    v33 = MEMORY[0x1E695BED8];
    sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350, MEMORY[0x1E695BED8]);
    sub_1C047C1A4(&qword_1EDE40888, &qword_1EBE0D770, &qword_1C04FA620, v33);
    v34 = v45;
    sub_1C04F65B0();

    OUTLINED_FUNCTION_2_8();
    sub_1C047C1A4(v35, v36, v37, v38);
    v39 = v47;
    sub_1C04F64E0();
    (*(v46 + 8))(v34, v39);
  }

  else
  {
    LOBYTE(v50) = v51;
    sub_1C04DDFF8();
  }

  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04DEE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v87 = a5;
  v88 = a3;
  v96 = a1;
  v100 = a6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v79 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D790, &qword_1C04FA760);
  v94 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v79 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7B0, &qword_1C04FA778);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v79 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7B8, &qword_1C04FA780);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = (&v79 - v13);
  v14 = sub_1C04F54F0();
  v90 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v79 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v79 - v23);
  v25 = sub_1C04F5CE0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v30;
  v98 = v29;
  (*(v30 + 16))(v28, a2, v26);
  sub_1C04A13B0(v96, v24, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v28;
    v32 = *v24;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EDE40948 != -1)
    {
      swift_once();
    }

    v33 = sub_1C04F6400();
    __swift_project_value_buffer(v33, qword_1EDE40950);
    v34 = v32;
    v35 = sub_1C04F63E0();
    v36 = sub_1C04F6A20();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v103[0] = v38;
      *v37 = 136315138;
      *&v101[0] = v32;
      v39 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v40 = sub_1C04F6790();
      v42 = sub_1C047D76C(v40, v41, v103);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1C0479000, v35, v36, "context fetch failure: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1C68DCEB0](v38, -1, -1);
      MEMORY[0x1C68DCEB0](v37, -1, -1);
    }

    v28 = v31;
    *v91 = 7;
    swift_storeEnumTagMultiPayload();
    v43 = v93;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760, MEMORY[0x1E695C008]);
    v44 = v99;
    v45 = sub_1C04F64E0();

    v94[1](v43, v44);
  }

  else
  {
    v80 = a4;
    v46 = v90;
    v47 = *(v90 + 32);
    v47(v21, v24, v14);
    sub_1C04F5CC0();
    v48 = v95;
    sub_1C0482664(21, v16, v95);
    v49 = *(v46 + 8);
    v96 = v46 + 8;
    v49(v16, v14);
    if (__swift_getEnumTagSinglePayload(v48, 1, v14) == 1)
    {
      sub_1C04A12B4(v95, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v80 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EDE40948 != -1)
      {
        swift_once();
      }

      v50 = sub_1C04F6400();
      __swift_project_value_buffer(v50, qword_1EDE40950);
      v51 = sub_1C04F63E0();
      v52 = sub_1C04F6A20();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = v49;
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1C0479000, v51, v52, "unable to create unified query context", v54, 2u);
        v55 = v54;
        v49 = v53;
        MEMORY[0x1C68DCEB0](v55, -1, -1);
      }

      *v91 = 8;
      swift_storeEnumTagMultiPayload();
      v56 = v93;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760, MEMORY[0x1E695C008]);
      v57 = v99;
      v45 = sub_1C04F64E0();
      v94[1](v56, v57);
      v49(v21, v14);
    }

    else
    {
      v79 = v49;
      v58 = v89;
      v47(v89, v95, v14);
      v59 = *(v90 + 16);
      v95 = v14;
      v59(v16, v58, v14);
      sub_1C04F5CD0();
      sub_1C047ACAC();
      if (qword_1EBE0CA68 != -1)
      {
        swift_once();
      }

      v103[0] = xmmword_1EBE0D738;
      v103[1] = *&qword_1EBE0D748;
      v103[2] = xmmword_1EBE0D758;
      v60 = sub_1C04B7354();
      v102 = 0;
      memset(v101, 0, sizeof(v101));
      v61 = sub_1C04D9ED0(v103, v28, v60, v101, 1);
      v62 = v80;
      v63 = v61;
      v65 = v64;
      sub_1C04A12B4(v101, &qword_1EBE0CE40, &qword_1C04F8900);

      v66 = v63;
      v94 = v21;
      v67 = v66;

      v68 = nw_activity_create();
      v69 = v67;
      sub_1C04E0B04(v69, v68, 0, 0xE000000000000000, v62);
      swift_unknownObjectRelease();

      *&v101[0] = v65;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7C0, &qword_1C04FA788);
      sub_1C047C1A4(&qword_1EBE0D7C8, &qword_1EBE0D7C0, &qword_1C04FA788, MEMORY[0x1E695BED8]);
      sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760, MEMORY[0x1E695C008]);
      v70 = v81;
      sub_1C04F6530();

      v71 = swift_allocObject();
      v72 = v87;
      *(v71 + 16) = v62;
      *(v71 + 24) = v72;
      sub_1C047C1A4(&qword_1EBE0D7D0, &qword_1EBE0D7B0, &qword_1C04FA778, MEMORY[0x1E695BE40]);

      v73 = v82;
      v74 = v84;
      sub_1C04F6500();

      (*(v83 + 8))(v70, v74);
      sub_1C047C1A4(&qword_1EBE0D7D8, &qword_1EBE0D7B8, &qword_1C04FA780, MEMORY[0x1E695BDA0]);
      v75 = v86;
      v45 = sub_1C04F64E0();

      (*(v85 + 8))(v73, v75);
      v76 = v95;
      v77 = v79;
      v79(v89, v95);
      v77(v94, v76);
    }
  }

  result = (*(v97 + 8))(v28, v98);
  *v100 = v45;
  return result;
}

uint64_t sub_1C04DFDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  *(a2 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EDE40948 != -1)
  {
    swift_once();
  }

  v7 = sub_1C04F6400();
  __swift_project_value_buffer(v7, qword_1EDE40950);
  v8 = sub_1C04F63E0();
  v9 = sub_1C04F6A40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C0479000, v8, v9, "publishing successful rpc response", v10, 2u);
    MEMORY[0x1C68DCEB0](v10, -1, -1);
  }

  v11 = sub_1C04F5D10();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04DFFAC(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *a1;
  v36 = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_1C04B915C(v32, v33, v34, v35, a2);
    sub_1C0482080(v9, v10, v11, v12);
    goto LABEL_3;
  }

  v36 = v7;
  v13 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = v7;
    v17 = v7;
    if (swift_dynamicCast())
    {
      v18 = v36;
      sub_1C04E06CC();
      v19 = swift_allocError();
      *v20 = v18;
      sub_1C04B9574(v19, a2);

      *v6 = v18;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EDE40948 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EDE40950);
    v22 = v7;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v36 = v7;
      v27 = v7;
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "search failure: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

LABEL_3:
    *v6 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v14 = v32;
  v15 = v33;
  v16 = v34;
  sub_1C04B93C4(v32, v33, v34, a2);
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v14, v15, v16);
}

void sub_1C04E033C()
{
  OUTLINED_FUNCTION_7_0();
  v32 = v0;
  v30 = v1;
  v35 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_2_1(v3);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v28 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1C04F6A80();
  OUTLINED_FUNCTION_0();
  v33 = v14;
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D768, "b\"");
  OUTLINED_FUNCTION_0();
  v31 = v18;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  sub_1C04DDEC0();
  sub_1C04DE914();
  v36 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D770, &qword_1C04FA620);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v23, &qword_1EBE0D770, &qword_1C04FA620, v24);
  sub_1C04E06CC();
  sub_1C04F6580();

  (*(v8 + 16))(v12, v30, v28);
  sub_1C04F6A90();
  v36 = v32;
  v25 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v25);
  sub_1C04B2C20(0, &qword_1EDE44168, 0x1E69E9610);
  sub_1C047C1A4(&qword_1EDE40918, &qword_1EBE0D768, "b\"", MEMORY[0x1E695BCF8]);
  sub_1C04B2C60();

  v26 = v29;
  sub_1C04F6550();

  sub_1C04A12B4(v6, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v33 + 8))(v17, v34);
  (*(v31 + 8))(v21, v26);
  OUTLINED_FUNCTION_6();
}

unint64_t sub_1C04E06CC()
{
  result = qword_1EDE40A48[0];
  if (!qword_1EDE40A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE40A48);
  }

  return result;
}

uint64_t sub_1C04E0720()
{
  sub_1C04DDEC0();
  sub_1C04DE914();
  v1 = v0;

  return v1;
}

uint64_t PegasusProxyForIntelligencePlatform.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04E07A4()
{
  result = qword_1EBE0D778;
  if (!qword_1EBE0D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForIntelligencePlatform.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_1C04E0990(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C04F5CE0();

  sub_1C04DE740(a1, a2);
}

uint64_t sub_1C04E0A40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5CE0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04DEE90(a1, v2 + v6, v9, v10, v11, a2);
}

uint64_t sub_1C04E0B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_unknownObjectRetain();

    *(a5 + qword_1EDE44DF8) = sub_1C04E0BD8(v11, a5, a1, a2, a3, a4);
  }

  return result;
}

id *sub_1C04E0BD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v53 = a1;
  v7 = sub_1C04F6200();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a2 + 80);
  v12 = *(v8 + 16);
  v12(v11, a2 + qword_1EDE44DE8, v7, v9);
  v56 = a2;
  v13 = *(a2 + qword_1EDE44DF0);
  v14 = *(a2 + qword_1EDE44DF0 + 8);
  type metadata accessor for ResourceAccessNetworkSpan(0);
  v15 = swift_allocObject();
  v16 = v15 + qword_1EDE44D58;
  *v16 = 0;
  *(v16 + 8) = 1;
  (v12)(v15 + qword_1EDE44D50, v11, v7);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C04F7BA0;
    v18 = sub_1C04F61E0();
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1C0483A94();
    *(inited + 32) = v18;
    *(inited + 40) = v20;
    *(inited + 96) = v21;
    *(inited + 104) = v22;
    v24 = v50;
    v23 = v51;
    *(inited + 64) = v22;
    *(inited + 72) = v24;
    *(inited + 80) = v23;
    *(v15 + *(*v15 + 472)) = 0;
    v25 = *(*v15 + 480);
    *(v15 + v25) = 0;
    v26 = (v15 + *(*v15 + 464));
    v27 = v54;
    *v26 = v54;
    v26[1] = &off_1F3F85900;
    v28 = v27;
    v29 = v55;
    [v28 set:v55 nw:? activity:?];
    *(v15 + v25) = v29;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v30 = "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s";
    v32 = v52;
    v31 = v53;
    v33 = 99;
  }

  else
  {
    *v16 = v13;
    *(v16 + 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C04F8240;
    v34 = sub_1C04F61E0();
    v36 = v35;
    v37 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    v38 = sub_1C0483A94();
    *(inited + 32) = v34;
    *(inited + 40) = v36;
    *(inited + 96) = v37;
    *(inited + 104) = v38;
    v39 = v50;
    v40 = v51;
    *(inited + 64) = v38;
    *(inited + 72) = v39;
    v41 = MEMORY[0x1E69E76D8];
    v42 = MEMORY[0x1E69E7738];
    *(inited + 80) = v40;
    *(inited + 136) = v41;
    *(inited + 144) = v42;
    *(inited + 112) = v13;
    *(v15 + *(*v15 + 472)) = 0;
    v43 = *(*v15 + 480);
    *(v15 + v43) = 0;
    v44 = (v15 + *(*v15 + 464));
    v27 = v54;
    *v44 = v54;
    v44[1] = &off_1F3F85900;
    v45 = v27;
    v46 = v55;
    [v45 set:v55 nw:? activity:?];
    *(v15 + v43) = v46;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v30 = "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v32 = v52;
    v31 = v53;
    v33 = 155;
  }

  v47 = sub_1C04D8A8C(v31, v32, v30, v33, 2, inited);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);

  return v47;
}

uint64_t sub_1C04E0FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t OUTLINED_FUNCTION_5_11(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BE58];

  return sub_1C047C1A4(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{
  v3 = *(v1 - 104);
  *(a1 + 16) = *(v1 - 120);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 - 88);
}

void OUTLINED_FUNCTION_12_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(void), uint64_t a28, unint64_t *a29)
{

  sub_1C04DA284(v34, v33, v31, v32, v30, a6, a7, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C04F6560();
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 272);

  return sub_1C04A13B0(v6, v4 - 176, a3, a4);
}

uint64_t OUTLINED_FUNCTION_26_3@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *(v3 - 280) = a2;
  *(v3 - 272) = a1;
  *(v3 - 304) = a3;

  return sub_1C04F6300();
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1)
{

  return sub_1C04F6340();
}

uint64_t OUTLINED_FUNCTION_42_1()
{
  *(v1 - 288) = v0;

  return sub_1C04F6740();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *(v5 - 136) = a1;

  return sub_1C04A13B0(v4, v5 - 120, a3, a4);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return sub_1C04F64E0();
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v1 = *(v0 - 160);
  *(v0 - 128) = *(v0 - 176);
  *(v0 - 112) = v1;
  return *(v0 - 304);
}

id OUTLINED_FUNCTION_50_0()
{
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;

  return [v0 statusCode];
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return sub_1C04F6740();
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;
  return *(v2 - 392);
}

id OUTLINED_FUNCTION_57_0(uint64_t a1)
{
  *(v2 - 320) = v1;

  return [v1 valueForHTTPHeaderField_];
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v3 + 4) = v2;
  *(v3 + 12) = 2080;

  return sub_1C047D76C(v0, v1, (v4 - 176));
}

void OUTLINED_FUNCTION_68_0()
{

  JUMPOUT(0x1C68DC0D0);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;

  return sub_1C048087C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1)
{
  *(v2 + 14) = a1;
  *(v2 + 22) = v1;
  return *(v3 - 648);
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C04A13B0(v4, v5 - 120, a3, a4);
}

uint64_t OUTLINED_FUNCTION_80_0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C047C1A4(a1, v4, v5, a4);
}

void OUTLINED_FUNCTION_94_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_95_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 416);

  return sub_1C04A1144(v2, v3);
}

unint64_t OUTLINED_FUNCTION_97_0()
{

  return sub_1C04A0FF8();
}

void OUTLINED_FUNCTION_98_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_99_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_100_0()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_1C04F6C40();
}

uint64_t OUTLINED_FUNCTION_101_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_102_0()
{
  v4 = *(v2 - 344);

  return sub_1C04CAAA4(v4, v0, v1);
}

id OUTLINED_FUNCTION_103_0()
{

  return [v0 (v1 + 1272)];
}

uint64_t OUTLINED_FUNCTION_106_0()
{
}

uint64_t sub_1C04E2074(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  v5 = a1;
  v6 = a1 >> 32;
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      v8 = a1;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
LABEL_6:
      if (v8 != v7)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      if ((sub_1C04CAAA4(&unk_1F3F86798, a1, a2) & 1) == 0)
      {
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_0_18(v12);
        if (v2 == 2)
        {
          v14 = *(a1 + 16);
          v15 = *(a1 + 24);
          v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          if (v2 != 1)
          {
            *v12 = &v42;
LABEL_17:
            v16 = OUTLINED_FUNCTION_238();
            v17 = MEMORY[0x1C68DAC70](v16);
            if ((v17 & 0x8000000000000000) == 0)
            {
              if (HIDWORD(v17))
              {
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              *(v12 + 8) = v17;
              v18 = deflateInit2_(v12, 1, 8, 31, 9, 0, "1.2.12", 112);
              if (v18)
              {
                v19 = v18;
                sub_1C04E328C();
                swift_allocError();
                *v20 = v19;
                swift_willThrow();
                OUTLINED_FUNCTION_10_0();
                return OUTLINED_FUNCTION_238();
              }

              sub_1C04F52B0();
              swift_allocObject();
              v21 = sub_1C04F52A0() | 0x4000000000000000;
              v42 = 0;
              v43 = v21;
              if (*(v12 + 32))
              {
LABEL_52:
                deflateEnd(v12);
                if ((*(v12 + 40) & 0x8000000000000000) == 0)
                {
                  sub_1C04F5370();
                  v38 = OUTLINED_FUNCTION_238();
                  sub_1C048087C(v38, v39);
                  v40 = OUTLINED_FUNCTION_238();
                  sub_1C04A1144(v40, v41);
                  OUTLINED_FUNCTION_10_0();
                  return OUTLINED_FUNCTION_238();
                }

                goto LABEL_69;
              }

              v22 = 0;
              while (2)
              {
                v23 = *(v12 + 40);
                if (v23 < 0)
                {
                  __break(1u);
LABEL_55:
                  __break(1u);
LABEL_56:
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
LABEL_59:
                  __break(1u);
                }

                else
                {
                  v24 = v21 >> 62;
                  v25 = 0;
                  switch(v21 >> 62)
                  {
                    case 1uLL:
                      LODWORD(v26) = HIDWORD(v22) - v22;
                      if (__OFSUB__(HIDWORD(v22), v22))
                      {
                        goto LABEL_62;
                      }

                      v26 = v26;
LABEL_29:
                      if (v23 < v26)
                      {
                        goto LABEL_41;
                      }

                      if (v24 == 2)
                      {
                        v31 = *(v22 + 16);
                        v30 = *(v22 + 24);
                        v25 = v30 - v31;
                        if (__OFSUB__(v30, v31))
                        {
                          goto LABEL_68;
                        }
                      }

                      else if (v24 == 1)
                      {
                        if (__OFSUB__(HIDWORD(v22), v22))
                        {
LABEL_67:
                          __break(1u);
LABEL_68:
                          __break(1u);
LABEL_69:
                          __break(1u);
LABEL_70:
                          __break(1u);
                        }

                        v25 = HIDWORD(v22) - v22;
                      }

                      else
                      {
                        v25 = BYTE6(v21);
                      }

LABEL_38:
                      if (__OFADD__(v25, 0x4000))
                      {
                        goto LABEL_59;
                      }

                      if (((v25 + 0x4000) & 0x8000000000000000) == 0)
                      {
                        sub_1C04F5370();
LABEL_41:
                        sub_1C04E2A7C(&v42, v12);
                        v22 = v42;
                        v21 = v43;
                        LODWORD(v32) = 0;
                        switch(v43 >> 62)
                        {
                          case 1uLL:
                            LODWORD(v32) = HIDWORD(v42) - v42;
                            if (__OFSUB__(HIDWORD(v42), v42))
                            {
                              goto LABEL_64;
                            }

                            v32 = v32;
LABEL_46:
                            if ((v32 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_55;
                            }

                            if (HIDWORD(v32))
                            {
                              goto LABEL_56;
                            }

LABEL_48:
                            v35 = *(v12 + 40);
                            if (HIDWORD(v35))
                            {
                              goto LABEL_57;
                            }

                            v36 = v32 >= v35;
                            v37 = v32 - v35;
                            if (!v36)
                            {
                              goto LABEL_58;
                            }

                            *(v12 + 32) = v37;
                            deflate(v12, 4);
                            if (*(v12 + 32))
                            {
                              goto LABEL_52;
                            }

                            continue;
                          case 2uLL:
                            v34 = *(v42 + 16);
                            v33 = *(v42 + 24);
                            v29 = __OFSUB__(v33, v34);
                            v32 = v33 - v34;
                            if (!v29)
                            {
                              goto LABEL_46;
                            }

                            goto LABEL_63;
                          case 3uLL:
                            goto LABEL_48;
                          default:
                            LODWORD(v32) = BYTE6(v43);
                            goto LABEL_48;
                        }
                      }

                      break;
                    case 2uLL:
                      v28 = *(v22 + 16);
                      v27 = *(v22 + 24);
                      v29 = __OFSUB__(v27, v28);
                      v26 = v27 - v28;
                      if (!v29)
                      {
                        goto LABEL_29;
                      }

                      goto LABEL_61;
                    case 3uLL:
                      goto LABEL_38;
                    default:
                      v26 = BYTE6(v21);
                      goto LABEL_29;
                  }
                }

                break;
              }

              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
            }

            __break(1u);
            goto LABEL_66;
          }

          if (v6 < a1)
          {
            goto LABEL_70;
          }

          v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          v14 = v5;
          v15 = v6;
        }

        sub_1C04E3210(v14, v15, v13, v12);
        goto LABEL_17;
      }

LABEL_8:
      v9 = OUTLINED_FUNCTION_238();
      sub_1C048087C(v9, v10);
      return OUTLINED_FUNCTION_238();
  }
}

BOOL sub_1C04E2444(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1C04E2498(uint64_t a1, unint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  v5 = a1;
  v6 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      v8 = a1;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
LABEL_6:
      if (v8 != v7)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    case 3uLL:
      goto LABEL_14;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_7:
      if ((sub_1C04CAAA4(&unk_1F3F867C0, a1, a2) & 1) == 0)
      {
LABEL_14:
        sub_1C048087C(v5, a2);
        return v5;
      }

      v9 = swift_slowAlloc();
      v23[0] = v9;
      OUTLINED_FUNCTION_0_18(v9);
      if (v3 == 2)
      {
        v13 = *(v5 + 16);
        v14 = *(v5 + 24);

        v10 = sub_1C04F5270();
        if (v10)
        {
          v15 = sub_1C04F5290();
          if (__OFSUB__(v13, v15))
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v10 += v13 - v15;
        }

        if (!__OFSUB__(v14, v13))
        {
LABEL_20:
          sub_1C04F5280();
          if (v10)
          {
            v9->next_in = v10;
          }

          goto LABEL_23;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v3 == 1)
      {
        if (v6 <= v5 >> 32)
        {

          v10 = sub_1C04F5270();
          if (!v10)
          {
            goto LABEL_20;
          }

          v11 = sub_1C04F5290();
          if (!__OFSUB__(v6, v11))
          {
            v10 += v6 - v11;
            goto LABEL_20;
          }

LABEL_29:
          __break(1u);
        }

        __break(1u);
        goto LABEL_27;
      }

      v17 = v5;
      v18 = a2;
      v19 = BYTE2(a2);
      v20 = BYTE3(a2);
      v21 = BYTE4(a2);
      v22 = BYTE5(a2);
      v9->next_in = &v17;
LABEL_23:
      v16 = sub_1C04E2710(v23, v5, a2);
      sub_1C04A1144(v5, a2);
      if (!v2)
      {
        v5 = v16;
      }

      OUTLINED_FUNCTION_10_0();
      return v5;
  }
}

unint64_t sub_1C04E2710(z_stream **a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  result = MEMORY[0x1C68DAC70](a2, a3);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(result))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v6->avail_in = result;
  v32 = inflateInit2_(v6, 47, "1.2.12", 112);
  v8 = MEMORY[0x1C68DAC70](a2, a3);
  v9 = MEMORY[0x1C68DAC70](a2, a3);
  v10 = __OFADD__(v8, v9 / 2);
  result = v8 + v9 / 2;
  if (v10)
  {
    goto LABEL_46;
  }

  result = sub_1C04F5390();
  v29 = result;
  v30 = v11;
  v12 = __OFSUB__(HIDWORD(a2), a2);
  v31 = v12;
  v13 = BYTE6(a3);
  v14 = a3 >> 62;
  while (2)
  {
    total_out = v6->total_out;
    if (total_out < 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    switch(v30 >> 62)
    {
      case 1uLL:
        LODWORD(v16) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          goto LABEL_38;
        }

        v16 = v16;
        goto LABEL_14;
      case 2uLL:
        v18 = *(v29 + 16);
        v17 = *(v29 + 24);
        v10 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (v10)
        {
          goto LABEL_39;
        }

        goto LABEL_14;
      case 3uLL:
        goto LABEL_15;
      default:
        v16 = BYTE6(v30);
LABEL_14:
        if (total_out < v16)
        {
          goto LABEL_28;
        }

LABEL_15:
        v19 = 0;
        switch(v14)
        {
          case 1uLL:
            v19 = HIDWORD(a2) - a2;
            if (v31)
            {
              goto LABEL_40;
            }

            break;
          case 2uLL:
            v21 = *(a2 + 16);
            v20 = *(a2 + 24);
            v10 = __OFSUB__(v20, v21);
            v19 = v20 - v21;
            if (v10)
            {
              goto LABEL_41;
            }

            break;
          case 3uLL:
            break;
          default:
            v19 = v13;
            break;
        }

        v22 = 0;
        switch(v30 >> 62)
        {
          case 1uLL:
            if (__OFSUB__(HIDWORD(v29), v29))
            {
              goto LABEL_43;
            }

            v22 = HIDWORD(v29) - v29;
            break;
          case 2uLL:
            v24 = *(v29 + 16);
            v23 = *(v29 + 24);
            v22 = v23 - v24;
            if (__OFSUB__(v23, v24))
            {
              goto LABEL_42;
            }

            break;
          case 3uLL:
            break;
          default:
            v22 = BYTE6(v30);
            break;
        }

        result = v22 + v19 / 2;
        if (__OFADD__(v22, v19 / 2))
        {
          goto LABEL_36;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        sub_1C04F5370();
LABEL_28:
        result = sub_1C04E2DBC(&v29, a1, &v32);
        v25 = v32;
        if (!v32)
        {
          continue;
        }

        v26 = inflateEnd(v6);
        if (v25 != 1 || v26)
        {
          sub_1C04E328C();
          swift_allocError();
          *v28 = v25;
          swift_willThrow();
          sub_1C04A1144(v29, v30);
        }

        else
        {
          result = v6->total_out;
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          sub_1C04F5370();
          v25 = v29;
          v27 = v30;
          sub_1C048087C(v29, v30);
          sub_1C04A1144(v25, v27);
        }

        result = v25;
        break;
    }

    return result;
  }
}

uint64_t sub_1C04E29E8(uint64_t result, uint64_t a2, z_streamp *a3, _DWORD *a4)
{
  if (!result)
  {
    goto LABEL_6;
  }

  total_out = (*a3)->total_out;
  if ((total_out & 0x8000000000000000) == 0)
  {
    (*a3)->next_out = (total_out + result);
    v6 = a2 - result;
    if (a2 - result < 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (!HIDWORD(v6))
    {
LABEL_7:
      v7 = (*a3)->total_out;
      if (!HIDWORD(v7))
      {
        v8 = v6 >= v7;
        v9 = v6 - v7;
        if (v8)
        {
          (*a3)->avail_out = v9;
          result = inflate(*a3, 2);
          *a4 = result;
          return result;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
LABEL_6:
    LODWORD(v6) = 0;
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t *sub_1C04E2A7C(uint64_t *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:
      v10 = v2 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C04A1144(v3, v2);
      *v5 = xmmword_1C04F83F0;
      sub_1C04A1144(0, 0xC000000000000000);
      v11 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v11 < v3)
      {
        goto LABEL_18;
      }

      if (sub_1C04F5270() && __OFSUB__(v3, sub_1C04F5290()))
      {
        goto LABEL_19;
      }

      sub_1C04F52B0();
      swift_allocObject();
      v12 = sub_1C04F5260();

      v10 = v12;
      v11 = v3 >> 32;
LABEL_12:
      if (v11 < v3)
      {
        goto LABEL_17;
      }

      sub_1C04E317C(v3, v11, v10, a2);

      *v5 = v3;
      v5[1] = v10 | 0x4000000000000000;
      break;
    case 2uLL:

      sub_1C04A1144(v3, v2);
      v14 = v3;
      v15 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1C04F83F0;
      sub_1C04A1144(0, 0xC000000000000000);
      sub_1C04F5350();
      v8 = v15;
      result = sub_1C04E317C(*(v14 + 16), *(v14 + 24), v15, a2);
      *v5 = v14;
      v5[1] = v8 | 0x8000000000000000;
      return result;
    case 3uLL:
      v9 = *(a2 + 40);
      if (v9 < 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      *(a2 + 24) = &v14 + v9;
      break;
    default:
      result = sub_1C04A1144(v3, v2);
      v14 = v3;
      LOWORD(v15) = v2;
      BYTE2(v15) = BYTE2(v2);
      BYTE3(v15) = BYTE3(v2);
      BYTE4(v15) = BYTE4(v2);
      BYTE5(v15) = BYTE5(v2);
      BYTE6(v15) = BYTE6(v2);
      v6 = *(a2 + 40);
      if (v6 < 0)
      {
        goto LABEL_16;
      }

      *(a2 + 24) = &v14 + v6;
      v7 = v15 | ((WORD2(v15) | (BYTE6(v15) << 16)) << 32);
      *v5 = v14;
      v5[1] = v7;
      return result;
  }

  return result;
}

uint64_t sub_1C04E2DBC(uint64_t *a1, z_streamp *a2, _DWORD *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v19 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C04A1144(v4, v3);
      *a1 = xmmword_1C04F83F0;
      sub_1C04A1144(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v4 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      if (v21 < v4)
      {
        goto LABEL_29;
      }

      if (sub_1C04F5270() && __OFSUB__(v4, sub_1C04F5290()))
      {
        goto LABEL_30;
      }

      sub_1C04F52B0();
      swift_allocObject();
      v22 = sub_1C04F5260();

      v19 = v22;
      v21 = v4 >> 32;
LABEL_16:
      v23 = a2;
      v24 = v21 - v4;
      if (v21 < v4)
      {
        goto LABEL_26;
      }

      result = sub_1C04F5270();
      if (!result)
      {
        goto LABEL_32;
      }

      v25 = result;
      v26 = sub_1C04F5290();
      v27 = v4 - v26;
      if (__OFSUB__(v4, v26))
      {
        goto LABEL_28;
      }

      v28 = sub_1C04F5280();
      if (v28 >= v24)
      {
        v29 = v24;
      }

      else
      {
        v29 = v28;
      }

      sub_1C04E29E8(v25 + v27, v25 + v27 + v29, v23, a3);

      v18 = v19 | 0x4000000000000000;
      *a1 = v4;
      goto LABEL_23;
    case 2uLL:

      sub_1C04A1144(v4, v3);
      *&v33 = v4;
      *(&v33 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C04F83F0;
      sub_1C04A1144(0, 0xC000000000000000);
      sub_1C04F5350();
      v9 = *(v33 + 16);
      v10 = *(v33 + 24);
      result = sub_1C04F5270();
      if (!result)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v11 = result;
      v12 = sub_1C04F5290();
      v13 = v9 - v12;
      if (__OFSUB__(v9, v12))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v14 = __OFSUB__(v10, v9);
      v15 = v10 - v9;
      if (v14)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v16 = sub_1C04F5280();
      if (v16 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      result = sub_1C04E29E8(v11 + v13, v11 + v13 + v17, a2, a3);
      v18 = *(&v33 + 1) | 0x8000000000000000;
      *a1 = v33;
LABEL_23:
      a1[1] = v18;
      return result;
    case 3uLL:
      *(&v33 + 7) = 0;
      *&v33 = 0;
      return sub_1C04E29E8(&v33, &v33, a2, a3);
    default:
      sub_1C04A1144(v4, v3);
      *&v33 = v4;
      WORD4(v33) = v3;
      BYTE10(v33) = BYTE2(v3);
      BYTE11(v33) = BYTE3(v3);
      BYTE12(v33) = BYTE4(v3);
      BYTE13(v33) = BYTE5(v3);
      BYTE14(v33) = BYTE6(v3);
      result = sub_1C04E29E8(&v33, &v33 + BYTE6(v3), a2, a3);
      v8 = DWORD2(v33) | ((WORD6(v33) | (BYTE14(v33) << 16)) << 32);
      *a1 = v33;
      a1[1] = v8;
      return result;
  }
}

uint64_t sub_1C04E317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C04F5270();
  if (!result)
  {
    goto LABEL_9;
  }

  v8 = result;
  result = sub_1C04F5290();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a2, a1))
  {
    result = sub_1C04F5280();
    v10 = *(a4 + 40);
    if ((v10 & 0x8000000000000000) == 0)
    {
      *(a4 + 24) = v8 + v9 + v10;
      return result;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C04E3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_1C04F5270();
  v8 = result;
  if (result)
  {
    result = sub_1C04F5290();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C04F5280();
  if (v8)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_1C04E328C()
{
  result = qword_1EBE0D8B8;
  if (!qword_1EBE0D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D8B8);
  }

  return result;
}

uint64_t sub_1C04E32F0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1C04F6C40();
    MEMORY[0x1C68DC0D0](0xD000000000000016, 0x80000001C04FE3C0);
    [a1 code];
    v5 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v5);

    MEMORY[0x1C68DC0D0](0x3A6E69616D6F6420, 0xE900000000000020);
    v6 = [a1 domain];
    v7 = sub_1C04F6750();
    v9 = v8;

    MEMORY[0x1C68DC0D0](v7, v9);

    MEMORY[0x1C68DC0D0](0x7069726373656420, 0xEE00203A6E6F6974);
    v10 = [a1 description];
    v11 = sub_1C04F6750();
    v13 = v12;

    sub_1C0482070(a1, a2, 1);
    MEMORY[0x1C68DC0D0](v11, v13);

    return 0;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8D0, &qword_1C04FA9D0);
    return sub_1C04F6790();
  }
}

uint64_t sub_1C04E34C0(char a1)
{
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 16) = Lock.init()();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1C04E3514(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 137) = a5;
  *(v5 + 136) = a4;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = a1;
  v6 = sub_1C04F61C0();
  *(v5 + 88) = v6;
  OUTLINED_FUNCTION_66(v6);
  *(v5 + 96) = v7;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04E35E4);
}

uint64_t sub_1C04E35E4()
{
  v1 = *(v0 + 136);
  sub_1C04F69F0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = **(&unk_1E8117BF0 + v1);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1C04E36D8;
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);
  v8.n128_u32[0] = v4;

  return MEMORY[0x1EEE28270](v6, v7, v2, v3, v8);
}

uint64_t sub_1C04E36D8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1C04E3990;
  }

  else
  {
    v2 = sub_1C04E37EC;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C04E37EC()
{
  v1 = *(v0[12] + 32);
  v1(v0[14], v0[13], v0[11]);
  v2 = sub_1C04F61B0();
  if (v2 && (v3 = v2, objc_opt_self(), v4 = swift_dynamicCastObjCClass(), v3, v4))
  {
    v1(v0[8], v0[14], v0[11]);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v5 = v0[1];
  }

  else
  {
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[12];
    v0[7] = sub_1C04F61B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
    v9 = sub_1C04F6790();
    v11 = v10;
    sub_1C04E5978();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    *(v12 + 16) = 0;
    swift_willThrow();
    (*(v8 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_1C04E3990()
{
  if (*(v0 + 137) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v1 = sub_1C04F6170();
    if (v1)
    {
      v2 = v1;
      sub_1C04E42C0(*(v0 + 128), v1);
    }
  }

  v3 = *(v0 + 128);
  v4 = sub_1C04F52C0();
  sub_1C04E5978();
  swift_allocError();
  *v5 = v4;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

id sub_1C04E3AA8(uint64_t a1, char a2, char a3)
{
  v38 = sub_1C04F5230();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v36 = v9;
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8E0, &qword_1C04FA9F8);
  OUTLINED_FUNCTION_0();
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8E8, &qword_1C04FAA00);
  OUTLINED_FUNCTION_0();
  v40 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  _s20PegasusResponseStateCMa();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  *(v19 + 32) = 0;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 40) = 0;
  *(v19 + 64) = -1;
  v37 = a1;
  v20 = sub_1C04F51C0();
  v47 = sub_1C04E59D4;
  v48 = v19;
  OUTLINED_FUNCTION_1_10();
  v44 = 1107296256;
  v45 = sub_1C047DCE8;
  v46 = &block_descriptor_9;
  v21 = _Block_copy(aBlock);

  v22 = [v35 dataTaskWithRequest:v20 completionHandler:v21];
  _Block_release(v21);

  LODWORD(v23) = **(&unk_1E8117BF0 + a2);
  [v22 setPriority_];
  if (a3)
  {
    v24 = v22;
    sub_1C04E4FAC(v19, v24);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v22;

  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8F0, &unk_1C04FAA08);
  sub_1C047C1A4(&qword_1EDE41628, &qword_1EBE0D8F0, &unk_1C04FAA08, MEMORY[0x1E695C038]);
  sub_1C04F64D0();
  v27 = v38;
  (*(v7 + 16))(v10, v37, v38);
  v28 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = (v36 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v28, v10, v27);
  *(v30 + v29) = v26;
  v31 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  sub_1C047C1A4(&qword_1EDE41620, &qword_1EBE0D8E0, &qword_1C04FA9F8, MEMORY[0x1E695C058]);
  v32 = v41;
  sub_1C04F6560();

  (*(v39 + 8))(v14, v32);
  sub_1C047C1A4(&unk_1EDE41640, &qword_1EBE0D8E8, &qword_1C04FAA00, MEMORY[0x1E695BE58]);
  v33 = v42;
  sub_1C04F64E0();

  (*(v40 + 8))(v18, v33);
  return v31;
}

uint64_t sub_1C04E3FA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE0D918, &qword_1C04FAA48);
  swift_allocObject();
  result = sub_1C04D3018(MEMORY[0x1E69E7CC8]);
  qword_1EDE44028 = result;
  return result;
}

uint64_t sub_1C04E3FF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D910, &qword_1C04FAA40);
  swift_allocObject();
  result = sub_1C04E34C0(0);
  qword_1EDE44D80 = result;
  return result;
}

uint64_t sub_1C04E4048()
{
  v0 = sub_1C04F6AA0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6A60();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C04F6610();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C04B2C20(0, &qword_1EDE44168, 0x1E69E9610);
  sub_1C04F6600();
  v7[1] = 0;
  sub_1C047C15C(&qword_1EDE44170, MEMORY[0x1E69E8030], MEMORY[0x1E69E8048]);
  sub_1C04F6E90();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1C04F6AC0();
  qword_1EDE44D88 = result;
  return result;
}

uint64_t sub_1C04E4258()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1C04E5CB0(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_1C04E42C0(void *a1, void *a2)
{
  v4 = sub_1C04F6740();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1C04E59CC;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C04E4AF4;
  v9[3] = &block_descriptor_1;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_1C04E43C8(void *a1, void *a2)
{
  v4 = sub_1C04F5460();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = sub_1C04F52C0();
  v12 = [v11 domain];

  v13 = sub_1C04F6750();
  v15 = v14;

  if (v13 == sub_1C04F6750() && v15 == v16)
  {
    goto LABEL_16;
  }

  v18 = sub_1C04F6D80();

  if (v18)
  {
LABEL_17:
    v41 = 1;
    goto LABEL_18;
  }

  v19 = sub_1C04F52C0();
  v20 = [v19 domain];

  v21 = sub_1C04F6750();
  v23 = v22;

  if (v21 == sub_1C04F6750() && v23 == v24)
  {
LABEL_16:

    goto LABEL_17;
  }

  v26 = sub_1C04F6D80();

  if (v26)
  {
    goto LABEL_17;
  }

  if (qword_1EBE0CA38 != -1)
  {
    swift_once();
  }

  v27 = sub_1C04F6400();
  __swift_project_value_buffer(v27, qword_1EBE0F6F0);
  v28 = a1;
  v29 = sub_1C04F63E0();
  v30 = sub_1C04F6A20();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v53 = v31;
    v55 = swift_slowAlloc();
    v56 = v55;
    *v31 = 136446210;
    v32 = sub_1C04F52C0();
    v54 = v30;
    v33 = v32;
    v34 = [v32 domain];

    v35 = sub_1C04F6750();
    v37 = v36;

    v38 = sub_1C047D76C(v35, v37, &v56);

    v39 = v53;
    *(v53 + 1) = v38;
    _os_log_impl(&dword_1C0479000, v29, v54, "skipping error code for unexpected networkFailure domain %{public}s", v39, 0xCu);
    v40 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1C68DCEB0](v40, -1, -1);
    MEMORY[0x1C68DCEB0](v39, -1, -1);
  }

  v41 = 0;
LABEL_18:
  v42 = sub_1C04AE604(a2, &selRef_networkProtocolName);
  sub_1C04E49DC(v42, v43);
  v44 = [a2 connectStartDate];
  if (v44)
  {
    v45 = v44;
    sub_1C04F5440();

    v46 = [a2 connectEndDate];
    if (v46)
    {
      v47 = v46;
      sub_1C04F5440();

      sub_1C04F5420();
      v48 = *(v5 + 8);
      v48(v7, v4);
      v48(v10, v4);
    }

    else
    {
      (*(v5 + 8))(v10, v4);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D410, &qword_1C04FA9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C04FA890;
  *(inited + 32) = 0x4474736575716572;
  *(inited + 40) = 0xEF6E6F6974617275;
  *(inited + 48) = sub_1C04F69C0();
  *(inited + 56) = 0x72616C756C6C6563;
  *(inited + 64) = 0xE800000000000000;
  [a2 isCellular];
  *(inited + 72) = sub_1C04F6930();
  strcpy((inited + 80), "cfnErrorCode");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (v41)
  {
    v50 = sub_1C04F52C0();
    [v50 code];
  }

  *(inited + 96) = sub_1C04F69E0();
  *(inited + 104) = 0x74617069746C756DLL;
  *(inited + 112) = 0xE900000000000068;
  [a2 isMultipath];
  *(inited + 120) = sub_1C04F6930();
  *(inited + 128) = 0x6574736973726570;
  *(inited + 136) = 0xEA0000000000746ELL;
  [a2 isReusedConnection];
  *(inited + 144) = sub_1C04F6930();
  strcpy((inited + 152), "protocolName");
  *(inited + 165) = 0;
  *(inited + 166) = -5120;
  *(inited + 168) = sub_1C04F69E0();
  sub_1C04B2C20(0, &qword_1EDE446A0, 0x1E69E58C0);
  return sub_1C04F66F0();
}

uint64_t sub_1C04E49DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0x312E312F70747468 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C04F6D80() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 12904 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C04F6D80() & 1) != 0)
    {

      return 2;
    }

    else if (a1 == 13160 && a2 == 0xE200000000000000)
    {

      return 3;
    }

    else
    {
      v8 = sub_1C04F6D80();

      if (v8)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

id sub_1C04E4AF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1C04B2C20(0, &qword_1EDE446A0, 0x1E69E58C0);
    v4 = sub_1C04F66B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1C04E4B9C(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    v6 = sub_1C04F52C0();
    sub_1C04E5978();
    v7 = swift_allocError();
    *v8 = v6;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    sub_1C04E4D68(v7, 0, 0, 1);

    v9 = a4;

LABEL_4:

    return;
  }

  if (a3)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v27 = a3;
      sub_1C04A12A0(a1, a2);
      sub_1C04E4D68(v14, a1, a2, 0);

      sub_1C047E0BC(a1, a2, v15, v16, v17, v18, v19, v20, v27, v29, v30, v31, v32, v33, v34, v35, vars0);
      v9 = v28;

      goto LABEL_4;
    }
  }

  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
  v22 = sub_1C04F6790();
  v24 = v23;
  sub_1C04E5978();
  v25 = swift_allocError();
  *v26 = v22;
  *(v26 + 8) = v24;
  *(v26 + 16) = 0;
  sub_1C04E4D68(v25, 0, 0, 1);
}

uint64_t sub_1C04E4D68(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  os_unfair_lock_lock((v4 + 32));
  sub_1C04E5B4C(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), v9, v10, v11, v12, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  v13 = a4 & 1;
  *(v4 + 64) = v13;
  swift_beginAccess();
  v14 = *(v4 + 24);
  *(v4 + 24) = MEMORY[0x1E69E7CC0];
  sub_1C04E5AF8(a1, a2, a3, v13);
  os_unfair_lock_unlock((v4 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);
      v20 = a1;
      v21 = a2;
      v22 = a3;
      LOBYTE(v23) = v13;

      v17(&v20);

      v16 += 16;
      --v15;
    }

    while (v15);
  }
}

void sub_1C04E4E70(void *a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  if (a4)
  {
    sub_1C04E5AF8(a1, a2, a3, 1);
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (swift_dynamicCast())
    {
      v14 = v22;
      v15 = v23;
      if (v24 == 1)
      {
        v16 = v22;
        v17 = [a5 _incompleteCurrentTaskTransactionMetrics];
        sub_1C04E42C0(v16, v17);
        sub_1C04E5B64(a1, a2, a3, 1, v18, v19, v20, v21, v22, v23, v24, a1, v26, v27, v28, v29, v30);

        sub_1C0482070(v14, v15, 1);
        sub_1C0482070(v14, v15, 1);
        return;
      }

      sub_1C0482070(v22, v23, 0);
    }

    sub_1C04E5B64(a1, a2, a3, 1, v10, v11, v12, v13, v22, v23, v24, a1, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1C04E4FAC(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a2;
  os_unfair_lock_lock((a1 + 32));
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v9 == 255)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1C04E5AD0;
    *(v32 + 24) = v4;
    swift_beginAccess();

    sub_1C04B2B38();
    v33 = *(*(a1 + 24) + 16);
    sub_1C04B30AC(v33);
    v34 = *(a1 + 24);
    *(v34 + 16) = v33 + 1;
    v35 = v34 + 16 * v33;
    *(v35 + 32) = sub_1C04E5ADC;
    *(v35 + 40) = v32;
    *(a1 + 24) = v34;
    swift_endAccess();
    sub_1C04E5AE0(v7, v6, v8, 255);
    os_unfair_lock_unlock((a1 + 32));
LABEL_13:
  }

  sub_1C04E5AE0(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  os_unfair_lock_unlock((a1 + 32));
  if (v9)
  {
    v14 = v7;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (swift_dynamicCast())
    {
      v20 = v39;
      v21 = v41;
      if (v43 == 1)
      {
        v22 = v39;
        v23 = [v5 _incompleteCurrentTaskTransactionMetrics];
        sub_1C04E42C0(v22, v23);
        sub_1C04E5B4C(v7, v6, v8, v9, v24, v25, v26, v27, v7, v39, v41, v43, v45, v47, v49, v51, v53);

        sub_1C0482070(v20, v21, 1);
        sub_1C0482070(v20, v21, 1);
LABEL_12:
        sub_1C04E5B4C(v7, v6, v8, v9, v28, v29, v30, v31, v38, v40, v42, v44, v46, v48, v50, v52, v54);
        goto LABEL_13;
      }

      sub_1C0482070(v39, v41, 0);
    }

    sub_1C04E5B4C(v7, v6, v8, v9, v16, v17, v18, v19, v7, v39, v41, v43, v45, v47, v49, v51, v53);
    goto LABEL_12;
  }

  sub_1C04E5B4C(v7, v6, v8, v9, v10, v11, v12, v13, v37, v39, v41, v43, v45, v47, v49, v51, v53);
}

uint64_t sub_1C04E5260(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  os_unfair_lock_lock((a1 + 32));
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  if (v10 == 255)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C04E5BC0;
    *(v15 + 24) = v6;
    swift_beginAccess();

    sub_1C04B2B38();
    v16 = *(*(a1 + 24) + 16);
    sub_1C04B30AC(v16);
    v17 = *(a1 + 24);
    *(v17 + 16) = v16 + 1;
    v18 = v17 + 16 * v16;
    *(v18 + 32) = sub_1C04E5CE4;
    *(v18 + 40) = v15;
    *(a1 + 24) = v17;
    swift_endAccess();
    sub_1C04E5AE0(v8, v7, v9, 255);
    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    sub_1C04E5AE0(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    os_unfair_lock_unlock((a1 + 32));
    v20 = v8;
    v21 = v7;
    v22 = v9;
    LOBYTE(v23) = v10 & 1;
    a2(&v20);
    sub_1C04E5B4C(v8, v7, v9, v10, v11, v12, v13, v14, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

id sub_1C04E5404@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8F0, &unk_1C04FAA08);
  swift_allocObject();

  result = sub_1C04F64C0();
  v7 = result;
  v8 = 0;
  atomic_compare_exchange_strong((a1 + 16), &v8, 1u);
  if (!v8)
  {
    result = [a2 resume];
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C04E54AC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{

  return sub_1C04E5260(a3, a1, a2);
}

id sub_1C04E5500@<X0>(void **a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_1C04F51D0();
  if (v6 && (v7 = sub_1C04E9F48(0xD000000000000011, 0x80000001C04FCBF0, v6), v9 = v8, , v9))
  {

    sub_1C04F6C40();

    v27[0] = 0xD000000000000010;
    v27[1] = 0x80000001C04FE450;
    MEMORY[0x1C68DC0D0](v7, v9);
    swift_bridgeObjectRelease_n();
    v11 = 0xD000000000000010;
    v10 = 0x80000001C04FE450;
  }

  else
  {

    v11 = 0;
    v10 = 0xE000000000000000;
  }

  if (qword_1EDE41A10 != -1)
  {
    swift_once();
  }

  v12 = sub_1C04F6400();
  __swift_project_value_buffer(v12, qword_1EDE44D60);
  v13 = a2;

  v14 = sub_1C04F63E0();
  v15 = sub_1C04F6A20();

  if (os_log_type_enabled(v14, v15))
  {
    v26 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27[0] = v17;
    *v16 = 136315394;
    v18 = [v13 description];
    v19 = sub_1C04F6750();
    v21 = v20;

    v22 = sub_1C047D76C(v19, v21, v27);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = sub_1C047D76C(v11, v10, v27);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_1C0479000, v14, v15, "Download for %s %s failed", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v17, -1, -1);
    v24 = v16;
    a3 = v26;
    MEMORY[0x1C68DCEB0](v24, -1, -1);
  }

  else
  {
  }

  *a3 = v5;

  return v5;
}

uint64_t sub_1C04E57B8()
{

  sub_1C04CBB84(v0 + 40, &qword_1EBE0D8D8, &qword_1C04FA9D8);
  return v0;
}

uint64_t sub_1C04E57F0()
{
  sub_1C04E57B8();

  return MEMORY[0x1EEE6BDC0](v0, 65, 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C04E5868(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C04E58A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_1C04E5934(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1C04E5978()
{
  result = qword_1EDE41E10;
  if (!qword_1EDE41E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41E10);
  }

  return result;
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

id sub_1C04E5A2C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C04F5230();
  OUTLINED_FUNCTION_66(v5);
  v8 = *(v2 + ((*(v7 + 64) + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04E5500(a1, v8, a2);
}

id sub_1C04E5AE0(id result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1C04E5AF8(result, a2, a3, a4 & 1);
  }

  return result;
}

id sub_1C04E5AF8(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
    v8 = a1;

    return sub_1C04A12A0(a2, a3);
  }
}

void sub_1C04E5B4C(void *result, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a4 != -1)
  {
    sub_1C04E5B64(result, a2, a3, a4 & 1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

void sub_1C04E5B64(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a4)
  {
  }

  else
  {

    sub_1C047E0BC(a2, a3, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_1C04E5BC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

uint64_t sub_1C04E5C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C04E5908(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C04E5C84@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1C04E5934(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  result = pthread_mutex_init(v1, 0);
  if (!result)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x1C68DCEB0](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void Lock.withLock<A>(_:)()
{
  OUTLINED_FUNCTION_3_16();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  OUTLINED_FUNCTION_3_16();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v2;
}

char *ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ConditionLock.deinit()
{
  v1 = *v0;
  MEMORY[0x1C68DCEB0](*(v0 + *(*v0 + 112)), -1, -1);
  OUTLINED_FUNCTION_4();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 96));
  OUTLINED_FUNCTION_4();

  return v0;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v19[1] = v3;
  v19[2] = v2;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2_19();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  ConditionLock.lock()();
  OUTLINED_FUNCTION_0_1();
  v12 = *(v11 + 96);
  v14 = *(v13 + 112);
  v15 = *(v13 + 104);
  swift_beginAccess();
  v16 = *(v7 + 16);
  while (1)
  {
    v16(v10, v1 + v12, v5);
    v17 = OUTLINED_FUNCTION_4_11();
    result = (*(v7 + 8))(v10, v5);
    if (v17)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v14), *(*(v1 + v15) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}