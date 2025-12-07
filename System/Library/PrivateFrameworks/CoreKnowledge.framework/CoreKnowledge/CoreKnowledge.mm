void _GLOBAL__sub_I_CKVAppId_mm()
{
  v0 = objc_autoreleasePoolPush();
  CKVAppIdMessages = *MEMORY[0x1E69ABCA0];
  CKVAppIdContacts = *MEMORY[0x1E69ABC70];
  CKVAppIdApplications = *MEMORY[0x1E69ABC58];

  objc_autoreleasePoolPop(v0);
}

id sub_1C868515C()
{
  type metadata accessor for CKKnowledgeStore();
  v1 = xmmword_1C86FDDA0;
  v2 = 2;
  return sub_1C86851AC(&v1);
}

id sub_1C86851AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  objc_allocWithZone(type metadata accessor for CKKnowledgeStore());
  sub_1C86857FC(v4[0], v1, v2);
  return sub_1C8685320(v4);
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

uint64_t sub_1C86852D0()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C8685308(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_1C8685320(uint64_t *a1)
{
  v45 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  sub_1C86F916C();
  OUTLINED_FUNCTION_43_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_2();
  v10 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_3_2();
  v11 = *a1;
  v12 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  swift_unknownObjectWeakInit();
  v13 = &v1[OBJC_IVAR___CKKnowledgeStore_location];
  *v13 = v11;
  *(v13 + 1) = v12;
  v13[16] = a1;
  sub_1C8685A98();
  sub_1C86F8E2C();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0, &unk_1C86FE080);
  sub_1C8685ADC();
  v14 = v1;
  sub_1C86F92AC();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v45);
  *&v1[OBJC_IVAR___CKKnowledgeStore_sparqlQueue] = sub_1C86F91CC();
  v16 = *v13;
  v15 = *(v13 + 1);
  if (!v13[16])
  {
    v30 = v16 == 0x3A79726F6D656D3ALL && v15 == 0xE800000000000000;
    if (!v30 && (OUTLINED_FUNCTION_6_15(0x3A79726F6D656D3ALL, 0xE800000000000000) & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_4_17();
      v33 = v16 == v31 && v15 == v32;
      if (!v33 && (OUTLINED_FUNCTION_6_15(v31, v32) & 1) == 0)
      {
        if (!v16 && v15 == 0xE000000000000000 || (v34 = OUTLINED_FUNCTION_11_13(), (OUTLINED_FUNCTION_6_15(v34, v35) & 1) != 0))
        {
          v36 = type metadata accessor for CKSQLBackingStore();
          v37 = sub_1C86A225C();
LABEL_30:
          v38 = &off_1F484F640;
          goto LABEL_31;
        }

        v36 = type metadata accessor for CKSQLBackingStore();
        swift_allocObject();

        v41 = OUTLINED_FUNCTION_5_16();
LABEL_29:
        v37 = sub_1C86A1D30(v41, v42);
        goto LABEL_30;
      }

      goto LABEL_25;
    }

LABEL_26:
    v36 = type metadata accessor for CKInMemoryBackingStore();
    swift_allocObject();
    v37 = sub_1C868BFB0();
    v38 = &off_1F484E950;
    goto LABEL_31;
  }

  if (v13[16] == 1)
  {
    if (v16 || v15 != 0xE000000000000000)
    {
      v17 = OUTLINED_FUNCTION_11_13();
      if ((OUTLINED_FUNCTION_6_15(v17, v18) & 1) == 0)
      {
        v19 = qword_1ED5BC708;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = sub_1C86F8DBC();
        __swift_project_value_buffer(v20, qword_1ED5BC790);

        v21 = sub_1C86F8DAC();
        v22 = sub_1C86F912C();
        v23 = OUTLINED_FUNCTION_5_16();
        sub_1C8685308(v23, v24, 1u);
        if (os_log_type_enabled(v21, v22))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v47 = v26;
          *v25 = 136315138;
          OUTLINED_FUNCTION_5_16();
          v27 = sub_1C8685FDC();
          v28 = OUTLINED_FUNCTION_5_16();
          sub_1C8685308(v28, v29, 1u);
          *(v25 + 4) = v27;
          _os_log_impl(&dword_1C8683000, v21, v22, "creating named sqlSynched database is not supported. %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x1CCA7C540](v26, -1, -1);
          MEMORY[0x1CCA7C540](v25, -1, -1);
        }

        else
        {

          v39 = OUTLINED_FUNCTION_5_16();
          sub_1C8685308(v39, v40, 1u);
        }
      }
    }

    v36 = type metadata accessor for CKCloudKitBackingStore();
    swift_allocObject();
    v41 = OUTLINED_FUNCTION_3_9();
    v42 = 0xE700000000000000;
    goto LABEL_29;
  }

  if (!(v16 | v15))
  {
    goto LABEL_26;
  }

LABEL_25:
  v36 = type metadata accessor for CKUserDefaultsBackingStore();
  swift_allocObject();
  v37 = sub_1C8685B64();
  v38 = &off_1F484E7F0;
LABEL_31:
  v43 = &v14[OBJC_IVAR___CKKnowledgeStore_backingStore];
  v43[3] = v36;
  v43[4] = v38;
  *v43 = v37;
  v46.receiver = v14;
  v46.super_class = type metadata accessor for CKKnowledgeStore();
  return objc_msgSendSuper2(&v46, sel_init);
}

uint64_t sub_1C86857FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t sub_1C86859E8()
{
  result = qword_1ED5BC6D0;
  if (!qword_1ED5BC6D0)
  {
    sub_1C86F916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BC6D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{
  *(v1 - 160) = a1;

  return sub_1C86D0150();
}

void OUTLINED_FUNCTION_42_2()
{

  JUMPOUT(0x1CCA7B200);
}

unint64_t sub_1C8685A98()
{
  result = qword_1ED5BC6C8;
  if (!qword_1ED5BC6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5BC6C8);
  }

  return result;
}

unint64_t sub_1C8685ADC()
{
  result = qword_1ED5BC6D8;
  if (!qword_1ED5BC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2ADAE0, &unk_1C86FE080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BC6D8);
  }

  return result;
}

uint64_t sub_1C8685B64()
{
  v1 = v0;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v2 = sub_1C86F8DBC();
  __swift_project_value_buffer(v2, qword_1ED5BC790);
  v3 = sub_1C86F8DAC();
  v4 = sub_1C86F910C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315138;
    OUTLINED_FUNCTION_6_0();
    *(v5 + 4) = sub_1C8685FDC();
    _os_log_impl(&dword_1C8683000, v3, v4, "initializing .UserDefaults Store with suite name %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = OUTLINED_FUNCTION_6_0();
  v9 = sub_1C868637C(v7, v8);
  if (!v9)
  {
    v10 = sub_1C86F8DAC();
    v11 = sub_1C86F913C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v12 = 136315138;
      OUTLINED_FUNCTION_6_0();
      *(v12 + 4) = sub_1C8685FDC();
      _os_log_impl(&dword_1C8683000, v10, v11, "Can't initialize defaults with suiteName %s. Using standard user defaults", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  *(v1 + 16) = v9;
  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 40) = a1;
  v4 = *(v1 + 80) | 0x8000000000000000;

  return MEMORY[0x1EEDC5E80](0xD00000000000002ELL, v4, v2);
}

void OUTLINED_FUNCTION_6_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1CCA7C540);
}

void OUTLINED_FUNCTION_6_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1)
{
  *(v1 - 168) = 0;

  return sub_1C86F90DC();
}

void OUTLINED_FUNCTION_6_11()
{

  JUMPOUT(0x1CCA7B200);
}

void OUTLINED_FUNCTION_6_12()
{

  JUMPOUT(0x1CCA7B200);
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_6_14(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1, uint64_t a2)
{

  return sub_1C86F948C();
}

unint64_t sub_1C8685FDC()
{
  OUTLINED_FUNCTION_10();

  v3 = sub_1C8686220(v8, 0, 0, 1, v2, v1);
  v4 = v8[0];
  if (v3)
  {
    v5 = v3;

    ObjectType = swift_getObjectType();
    v8[0] = v5;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v8[0] = v2;
    v8[1] = v1;
  }

  v6 = *v0;
  if (*v0)
  {
    sub_1C8686320(v8, *v0);
    *v0 = v6 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_10_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_10_3(__n128 *a1)
{
  result = v1[4];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_10_12()
{

  sub_1C86C4B00();
}

unint64_t sub_1C8686220(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C868FF60(a5, a6);
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
    result = sub_1C86F938C();
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

uint64_t sub_1C8686320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1C868637C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C86F8EEC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t CKKnowledgeStore.value(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v5 = *(v2 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR___CKKnowledgeStore_backingStore), v6);
  return (*(*(v5 + 16) + 24))(a1, a2, v6);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_1C86867D8@<D0>(_OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = sub_1C86F8EEC();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C8686898()
{
  MEMORY[0x1CCA7C580](v0 + 16);
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C86868D0()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686908()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686968()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C86869A0()
{

  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C86869F4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8686A38()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8686BA0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686BD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8686C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8686C54()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686C88()
{

  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8686CBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8686D04()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686D64()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8686E44()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8686E8C()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686EC4()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8686EF8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8686F2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  OUTLINED_FUNCTION_11_6(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_1C86F8B5C();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_13_3();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C8687068()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C86870A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C86870E4()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C868716C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C86871A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C86871EC()
{
  sub_1C868BED4(*(v0 + 24), *(v0 + 32));
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8687264()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C868729C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C86872FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8687344()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C868739C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C86873D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C868744C()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8687480()
{

  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C86874B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C86874FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C868753C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8687598()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C86875CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8687608()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C8687658()
{

  OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C86876A0()
{
  MEMORY[0x1CCA7C580](v0 + 16);
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C86876D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C868771C()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8687758()
{

  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C868778C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8687864()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C868789C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C86878EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8687958()
{

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C86879D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8687A0C()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8687A44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8687A7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8687AB4()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

char *sub_1C8687B4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_6(a3, result);
  }

  return result;
}

uint64_t sub_1C8687B6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C8687BE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1C8687C3C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v2(v3);
}

uint64_t sub_1C8687CF0(uint64_t a1)
{
  v3 = OBJC_IVAR___CKAppInteractionsContext_numberOfDiscardedDonationsByIntentTypeAndBundleId;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id CKAppInteractionsContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKAppInteractionsContext.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD800, &qword_1C86FCC80);
  *&v0[OBJC_IVAR___CKAppInteractionsContext__outOfAppLaunchBoundaryDonationsCountByIntentTypeAndBundleId] = sub_1C86F8EBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD808, &qword_1C86FCC88);
  *&v0[OBJC_IVAR___CKAppInteractionsContext_numberOfDiscardedDonationsByIntentTypeAndBundleId] = sub_1C86F8EBC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAppInteractionsContext();
  return objc_msgSendSuper2(&v2, sel_init);
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

void *CKAppInteractionsContext.init(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  *&v2[OBJC_IVAR___CKAppInteractionsContext__outOfAppLaunchBoundaryDonationsCountByIntentTypeAndBundleId] = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x78))();
  *&v2[OBJC_IVAR___CKAppInteractionsContext_numberOfDiscardedDonationsByIntentTypeAndBundleId] = (*((*v4 & *a1) + 0x80))();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CKAppInteractionsContext();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

void sub_1C868805C(void *a1)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD800, &qword_1C86FCC80);
  v3 = sub_1C86F8E8C();

  v4 = sub_1C86F8EEC();
  [a1 encodeObject:v3 forKey:v4];

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD808, &qword_1C86FCC88);
  v5 = sub_1C86F8E8C();

  v6 = OUTLINED_FUNCTION_11_0();
  [a1 encodeObject:v5 forKey:v6];
}

char *CKAppInteractionsContext.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C86F8EEC();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    sub_1C86885EC(&v30);
    goto LABEL_9;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD818, &qword_1C86FCC98);
  if ((OUTLINED_FUNCTION_10_0(v6, v7, v8, v6, v9) & 1) == 0)
  {
LABEL_9:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v12 = sub_1C86F8DBC();
    __swift_project_value_buffer(v12, qword_1ED5BC790);
    v13 = sub_1C86F8DAC();
    v14 = sub_1C86F912C();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "unexpected value for outOfAppLaunchBoundaryDonationsCountByIntentTypeAndBundleId when decoding CKAppInteractionsContext object";
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_11_0();
  v11 = [a1 decodeObjectForKey_];

  if (v11)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

    sub_1C86885EC(&v30);
LABEL_19:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v25 = sub_1C86F8DBC();
    __swift_project_value_buffer(v25, qword_1ED5BC790);
    v13 = sub_1C86F8DAC();
    v14 = sub_1C86F912C();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "unexpected value for numberOfDiscardedDonationsByIntentTypeAndBundleId when decoding CKAppInteractionsContext object";
LABEL_23:
    _os_log_impl(&dword_1C8683000, v13, v14, v16, v15, 2u);
    MEMORY[0x1CCA7C540](v15, -1, -1);
LABEL_24:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD820, &qword_1C86FCCA0);
  if ((OUTLINED_FUNCTION_10_0(v17, v18, v19, v17, v20) & 1) == 0)
  {

    goto LABEL_19;
  }

  v21 = [v2 init];

  v22 = OBJC_IVAR___CKAppInteractionsContext__outOfAppLaunchBoundaryDonationsCountByIntentTypeAndBundleId;
  swift_beginAccess();
  *&v21[v22] = v27;
  v23 = v21;

  v24 = OBJC_IVAR___CKAppInteractionsContext_numberOfDiscardedDonationsByIntentTypeAndBundleId;
  swift_beginAccess();
  *&v23[v24] = v27;

  return v23;
}

uint64_t sub_1C86885EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C868868C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(swift_getObjectType() + 152);
  v4 = v3(v1);
  result = type metadata accessor for CKAppInteractionsContext();
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1C8688754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CKAppInteractionsContext__outOfAppLaunchBoundaryDonationsCountByIntentTypeAndBundleId;
  swift_beginAccess();
  v11 = *(v4 + v10);

  v12 = sub_1C8688A68(a3, a4, v11);

  if (v12)
  {
    v13 = sub_1C8688A10(a1, a2, v12);
    v15 = v14;

    if (v15)
    {
      OUTLINED_FUNCTION_6(v16, v17, v18, v19, v20, v21, v22, v23, v93, v99, v105, v106, v107, v108, v109);
      sub_1C8687B84();
      OUTLINED_FUNCTION_2();
      v34 = sub_1C8688B1C(v24, v25, v26);
      v35 = *v27;
      if (*v27)
      {
        v36 = v27;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3();
        v35 = sub_1C8689110(1, a1, a2, v37);
        *v36 = v100;
      }

      v38 = OUTLINED_FUNCTION_8_0(v35, v27, v28, v29, v30, v31, v32, v33, v94, v100, v105);
      v39 = (v34)(v38);
      v47 = OUTLINED_FUNCTION_4(v39, v40, v41, v42, v43, v44, v45, v46, v95, v101, v105, v106, v107, v108, v109);
      return v5(v47);
    }

    else
    {
      OUTLINED_FUNCTION_6(v16, v17, v18, v19, v20, v21, v22, v23, v93, v99, v105, v106, v107, v108, v109);
      v52 = sub_1C8687B84();
      v60 = sub_1C8688B1C(&v105, a3, a4);
      result = *v53;
      if (*v53)
      {
        v61 = __OFADD__(v13, 1);
        v62 = v13 + 1;
        if (v61)
        {
          __break(1u);
        }

        else
        {
          v63 = v53;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_3();
          v65 = sub_1C8689110(v62, a1, a2, v64);
          *v63 = v102;
          v73 = OUTLINED_FUNCTION_8_0(v65, v66, v67, v68, v69, v70, v71, v72, v96, v102, v105);
          v74 = (v60)(v73);
          v82 = OUTLINED_FUNCTION_4(v74, v75, v76, v77, v78, v79, v80, v81, v97, v103, v105, v106, v107, v108, v109);
          return (v52)(v82);
        }
      }

      else
      {
        v83 = OUTLINED_FUNCTION_8_0(0, v53, v54, v55, v56, v57, v58, v59, v96, v102, v105);
        v84 = (v60)(v83);
        v92 = OUTLINED_FUNCTION_4(v84, v85, v86, v87, v88, v89, v90, v91, v98, v104, v105, v106, v107, v108, v109);
        return (v52)(v92);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2AD828, &qword_1C86FCCA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C86FCC70;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = 1;

    v50 = sub_1C86F8EBC();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v5 + v10);
    sub_1C8689364(v50, a3, a4, isUniquelyReferenced_nonNull_native, &unk_1EC2AD8C0, &unk_1C86FCD20, sub_1C869F3DC);
    *(v5 + v10) = v105;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C8688A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C869C918(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8688A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C869C918(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1C8688AB8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_1C869C918(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_1C8686320(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t (*sub_1C8688B1C(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C8688F7C(v6, a2, a3);
  return sub_1C8689DB4;
}

uint64_t (*sub_1C8688B90(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C8689014(v6, a2, a3);
  return sub_1C8688C04;
}

void sub_1C8688C08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1C8688C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x80))();
  v13 = sub_1C8688A68(a1, a2, v12);

  if (v13)
  {
  }

  else
  {
    v14 = sub_1C86F8EBC();
    OUTLINED_FUNCTION_7_0();
    v23 = OUTLINED_FUNCTION_6(v15, v16, v17, v18, v19, v20, v21, v22, v73, v77, v81, v85, v88, v91, v94);
    v25 = v24(v23);
    v27 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *v27;
    v29 = sub_1C8689364(v14, a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EC2AD8B0, &qword_1C86FCD10, sub_1C869F3DC);
    *v27 = v82;
    v37 = OUTLINED_FUNCTION_4(v29, v30, v31, v32, v33, v34, v35, v36, v74, v78, v82, v86, v89, v92, v95);
    v25(v37);
  }

  OUTLINED_FUNCTION_7_0();
  v46 = OUTLINED_FUNCTION_6(v38, v39, v40, v41, v42, v43, v44, v45, v73, v77, v81, v85, v88, v91, v94);
  v47(v46);
  OUTLINED_FUNCTION_2();
  v58 = sub_1C8688B90(v48, v49, v50);
  v59 = *v51;
  if (*v51)
  {
    v60 = v51;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3();
    v59 = sub_1C8689238(a3, a4, v61, a5);
    *v60 = v79;
  }

  v62 = OUTLINED_FUNCTION_8_0(v59, v51, v52, v53, v54, v55, v56, v57, v75, v79, v83);
  v63 = (v58)(v62);
  v71 = OUTLINED_FUNCTION_4(v63, v64, v65, v66, v67, v68, v69, v70, v76, v80, v84, v87, v90, v93, v96);
  return v6(v71);
}

id CKAppInteractionsContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAppInteractionsContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1C8688F7C(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1C8689CFC(v6);
  v6[9] = sub_1C8689940(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1C8689DB8;
}

uint64_t (*sub_1C8689014(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1C8689D24(v6);
  v6[9] = sub_1C8689AA8(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1C86890AC;
}

void sub_1C86890B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1C8689110(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1C869C918(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8B8, &qword_1C86FCD18);
  result = sub_1C86F93FC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C869C918(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = a1;
  }

  else
  {
    sub_1C869CC24(v12, a2, a3, a1, v16);
  }

  return result;
}

uint64_t sub_1C8689238(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1C869C918(a1, a2);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A8, &qword_1C86FCD08);
  result = sub_1C86F93FC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C869C918(a1, a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = a4;
  }

  else
  {
    sub_1C869CC50(v12, a1, a2, v16);
  }

  return result;
}

uint64_t sub_1C8689364(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_5(a1, a2, a3);
  OUTLINED_FUNCTION_1_0();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_1C86F93FC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1C869C918(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    *(*(v20 + 56) + 8 * v16) = a1;
  }

  else
  {
    a7(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_1C868968C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5(a1, a2, a3);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0, &qword_1C86FCD00);
  if ((OUTLINED_FUNCTION_9(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1C869C918(a2, a3);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  v16 = *v3;
  if (v11)
  {
    v17 = (*(v16 + 56) + 32 * v10);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_1C8689930(a1, v17);
  }

  else
  {
    sub_1C869CCA0(v10, a2, a3, a1, v16, v13);
  }
}

uint64_t sub_1C86897AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5(a1, a2, a3);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD838, &qword_1C86FD100);
  if ((OUTLINED_FUNCTION_9(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1C869C918(a2, a3);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    v16 = *(v15 + 56) + 32 * v10;

    return sub_1C86898C0(a1, v16);
  }

  else
  {
    sub_1C869CCE4(v10, a2, a3, a1, v15);
  }
}

uint64_t sub_1C86898C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C8689930(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void (*sub_1C8689940(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_1C869C918(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2AD8C0, &unk_1C86FCD20);
  if (sub_1C86F93FC())
  {
    v15 = sub_1C869C918(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1C8689A80;
}

void (*sub_1C8689AA8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_1C869C918(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8B0, &qword_1C86FCD10);
  if (sub_1C86F93FC())
  {
    v15 = sub_1C869C918(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C86F94BC();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1C8689BE8;
}

void sub_1C8689C10(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = **a1;
  v9 = *(*a1 + 40);
  if (v8)
  {
    v10 = v7[4];
    v11 = *v7[3];
    if (v9)
    {
      *(*(v11 + 56) + 8 * v10) = v8;
    }

    else
    {
      a3(v10, v7[1], v7[2], v8, v11);
    }
  }

  else if ((*a1)[5])
  {
    sub_1C8689D58(*(*v7[3] + 48) + 16 * v7[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1C86F940C();
  }

  free(v7);
}

uint64_t (*sub_1C8689CFC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C8689DAC;
}

uint64_t (*sub_1C8689D24(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C8689D4C;
}

unint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C869C918(a2, a3);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1)
{

  return sub_1C86F93FC();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_beginAccess();
}

id sub_1C8689E94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKKnowledgeStoreUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t static CKKnowledgeStoreUtils.isHexaKey(_:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C86F8FAC();
  result = sub_1C86F8FAC();
  if (result < v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (v5 <= 5)
  {
    v6 = v5 + 1;

    MEMORY[0x1CCA7B200](14906, 0xE200000000000000);

    v7 = sub_1C86F902C();

    if (v7)
    {
      v4 = 1;
      if (v5++ == 5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      ++v5;
      if (v6 == 6)
      {
        if ((v4 & 1) == 0)
        {
          return 0;
        }

LABEL_11:
        sub_1C868A058();
        v9 = *(sub_1C86F927C() + 16);

        return v9 == 4;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C868A058()
{
  result = qword_1EC2AD740;
  if (!qword_1EC2AD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD740);
  }

  return result;
}

id CKKnowledgeStoreUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKKnowledgeStoreUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C868A174()
{
  result = [*(v0 + 16) dictionaryRepresentation];
  if (result)
  {
    v2 = result;
    v3 = [result allKeys];

    v4 = sub_1C86F909C();
    v5 = sub_1C8693A04(v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C868A214(void *a1)
{
  v3 = [*(v1 + 16) dictionaryRepresentation];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 allKeys];

    v6 = sub_1C86F909C();
    v7 = 0;
    v8 = *(v6 + 16);
    v9 = v6 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if (v8 == v7)
      {

        sub_1C8693A04(v10);

        return;
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      sub_1C8686320(v9, v18);
      sub_1C8686320(v18, v17);
      v12 = (*((*v11 & *a1) + 0xC8))(v17);
      sub_1C86885EC(v17);
      if (v12)
      {
        sub_1C8689930(v18, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C869CEE8(0, *(v10 + 16) + 1, 1);
          v10 = v19;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          v16 = OUTLINED_FUNCTION_8_1(v14);
          sub_1C869CEE8(v16, v15 + 1, 1);
          v10 = v19;
        }

        *(v10 + 16) = v15 + 1;
        sub_1C8689930(v17, (v10 + 32 * v15 + 32));
        v11 = MEMORY[0x1E69E7D40];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v18);
      }

      v9 += 32;
      ++v7;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1C868A404()
{
  result = [*(v0 + 16) dictionaryRepresentation];
  if (result)
  {
    v2 = result;
    v3 = [result allValues];

    v4 = sub_1C86F909C();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C868A490(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C869CF08(0, v2, 0);
    v3 = v13;
    for (i = a1 + 40; ; i += 16)
    {

      sub_1C86867D8(v12);
      if (v1)
      {
        break;
      }

      v13 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v10 = OUTLINED_FUNCTION_8_1(v6);
        sub_1C869CF08(v10, v7 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 32 * v7;
      v9 = v12[1];
      *(v8 + 32) = v12[0];
      *(v8 + 48) = v9;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

void sub_1C868A5A8(void *a1)
{
  v3 = sub_1C868A174();
  if (!v1)
  {
    v4 = v3;
    v5 = 0;
    v27 = v3[2];
    v6 = (v3 + 5);
    v25 = (v3 + 5);
    v26 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = &v6[16 * v5];
    while (v27 != v5)
    {
      if (v5 >= v4[2])
      {
        __break(1u);
        goto LABEL_24;
      }

      v8 = *(v7 - 1);
      v9 = *v7;
      v31 = MEMORY[0x1E69E6158];
      *&v30 = v8;
      *(&v30 + 1) = v9;
      v10 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC8);
      swift_bridgeObjectRetain_n();
      v11 = v10(&v30);
      sub_1C86885EC(&v30);
      if (v11)
      {
        v12 = v26;
        *&v28 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C869CE68(0, *(v26 + 16) + 1, 1);
          v12 = v28;
        }

        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        if (v14 >= v13 >> 1)
        {
          v16 = OUTLINED_FUNCTION_8_1(v13);
          sub_1C869CE68(v16, v14 + 1, 1);
          v12 = v28;
        }

        ++v5;
        *(v12 + 16) = v14 + 1;
        v26 = v12;
        v15 = v12 + 16 * v14;
        *(v15 + 32) = v8;
        *(v15 + 40) = v9;
        v6 = v25;
        goto LABEL_3;
      }

      v7 += 16;
      ++v5;
    }

    v17 = *(v26 + 16);
    if (!v17)
    {

      return;
    }

    v32 = MEMORY[0x1E69E7CC0];
    sub_1C869CEE8(0, v17, 0);
    v18 = v26;
    v19 = 0;
    v20 = v32;
    v21 = v26 + 40;
    while (v19 < *(v18 + 16))
    {

      sub_1C86867D8(&v28);
      if (!v29)
      {
        goto LABEL_25;
      }

      sub_1C8689930(&v28, &v30);
      v32 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        v24 = OUTLINED_FUNCTION_8_1(v22);
        sub_1C869CEE8(v24, v23 + 1, 1);
        v20 = v32;
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      sub_1C8689930(&v30, (v20 + 32 * v23 + 32));
      v21 += 16;
      v18 = v26;
      if (v17 == v19)
      {

        return;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_1C868A858()
{
  v1 = [*(v0 + 16) dictionaryRepresentation];
  v2 = sub_1C86F8E9C();

  return v2;
}

void *sub_1C868A8CC(void *a1)
{
  result = sub_1C868A174();
  if (v1)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v24 = sub_1C86F8EBC();
  v25 = v4[2];
  v6 = v4 + 5;
  while (2)
  {
    for (i = &v6[2 * v5]; ; i += 2)
    {
      if (v25 == v5)
      {

        return v24;
      }

      if (v5 >= v4[2])
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = *(i - 1);
      v8 = *i;
      v28 = MEMORY[0x1E69E6158];
      *&v27 = v9;
      *(&v27 + 1) = v8;
      v10 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC8);
      swift_bridgeObjectRetain_n();
      LOBYTE(v10) = v10(&v27);
      sub_1C86885EC(&v27);
      if (v10)
      {
        break;
      }

      ++v5;
    }

    sub_1C86867D8(&v27);
    if (!v28)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C8689930(&v27, v26);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v24;
    v11 = sub_1C869C918(v9, v8);
    if (__OFADD__(*(v24 + 16), (v12 & 1) == 0))
    {
      goto LABEL_22;
    }

    v13 = v11;
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0, &qword_1C86FCD00);
    if ((sub_1C86F93FC() & 1) == 0)
    {
      v16 = v23;
LABEL_14:
      v17 = v29;
      if (v16)
      {
        v18 = (v29[7] + 32 * v13);
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_1C8689930(v26, v18);

LABEL_18:
        ++v5;
        v24 = v17;
        v6 = v4 + 5;
        continue;
      }

      v29[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v17[6] + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      sub_1C8689930(v26, (v17[7] + 32 * v13));

      v20 = v17[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (!v21)
      {
        v17[2] = v22;
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    break;
  }

  v14 = sub_1C869C918(v9, v8);
  v16 = v23;
  if ((v23 & 1) == (v15 & 1))
  {
    v13 = v14;
    goto LABEL_14;
  }

LABEL_25:
  result = sub_1C86F94BC();
  __break(1u);
  return result;
}

uint64_t sub_1C868ABCC()
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v0 = sub_1C86F8DBC();
  __swift_project_value_buffer(v0, qword_1ED5BC790);
  v1 = sub_1C86F8DAC();
  v2 = sub_1C86F913C();
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_7_1();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C8683000, v1, v2, ".UserDefaults store is not meant to store triples", v3, 2u);
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v4, v5);
  return swift_willThrow();
}

void sub_1C868ACBC(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_1C86F8DBC();
  __swift_project_value_buffer(v3, qword_1ED5BC790);
  v4 = sub_1C86F8DAC();
  v5 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v5))
  {
    OUTLINED_FUNCTION_7_1();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_0(v6);
    OUTLINED_FUNCTION_2_0(&dword_1C8683000, v7, v8, ".UserDefaults store is not meant to store graphs");
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v9, v10);
  a2();
}

uint64_t sub_1C868ADB4()
{
  v4 = type metadata accessor for CKUserDefaultsBackingStore();
  v5 = &off_1F484E7F0;
  *&v3 = v0;
  type metadata accessor for CKUserDefaultsWriteBatch();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C8687B6C(&v3, v1 + 24);

  return v1;
}

void sub_1C868AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_1C86F8DBC();
  __swift_project_value_buffer(v8, qword_1ED5BC790);
  v9 = sub_1C86F8DAC();
  v10 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v10))
  {
    OUTLINED_FUNCTION_7_1();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_0(v11);
    OUTLINED_FUNCTION_2_0(&dword_1C8683000, v12, v13, ".UserDefaults store is not meant to store graphs");
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v14, v15);
  a7();
}

id sub_1C868AF24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1C86F8EEC();
  [v3 removeObjectForKey_];

  return [*(v2 + 16) synchronize];
}

id sub_1C868AFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {
      v4 = *(v1 + 16);

      v5 = v4;
      v6 = sub_1C86F8EEC();

      [v5 removeObjectForKey_];

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return [*(v1 + 16) synchronize];
}

void *sub_1C868B050(void *a1)
{
  v3 = v1;
  result = sub_1C868A174();
  if (!v2)
  {
    v6 = result[2];
    if (v6)
    {
      v14[5] = 0;
      v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC8);
      v8 = result + 5;
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v14[3] = MEMORY[0x1E69E6158];
        v14[0] = v10;
        v14[1] = v9;
        swift_bridgeObjectRetain_n();
        v11 = v7(v14);
        sub_1C86885EC(v14);
        if (v11)
        {
          v12 = *(v3 + 16);
          v13 = sub_1C86F8EEC();

          [v12 removeObjectForKey_];
        }

        else
        {
        }

        v8 += 2;
        --v6;
      }

      while (v6);
    }

    else
    {
    }

    return [*(v3 + 16) synchronize];
  }

  return result;
}

void *sub_1C868B1A8()
{
  result = sub_1C868A174();
  if (!v1)
  {
    v3 = result[2];
    if (v3)
    {
      v4 = result + 5;
      do
      {
        v5 = *(v0 + 16);

        v6 = v5;
        v7 = sub_1C86F8EEC();

        [v6 removeObjectForKey_];

        v4 += 2;
        --v3;
      }

      while (v3);
    }

    return [*(v0 + 16) synchronize];
  }

  return result;
}

void sub_1C868B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v8 = sub_1C86F8DBC();
  __swift_project_value_buffer(v8, qword_1ED5BC790);
  v9 = sub_1C86F8DAC();
  v10 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v10))
  {
    OUTLINED_FUNCTION_7_1();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_0(v11);
    OUTLINED_FUNCTION_2_0(&dword_1C8683000, v12, v13, ".UserDefaults store is not meant to store graphs");
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v14, v15);
  a7();
}

void sub_1C868B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v6 = sub_1C86F8DBC();
  __swift_project_value_buffer(v6, qword_1ED5BC790);
  v7 = sub_1C86F8DAC();
  v8 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v8))
  {
    OUTLINED_FUNCTION_7_1();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_0(v9);
    OUTLINED_FUNCTION_2_0(&dword_1C8683000, v10, v11, ".UserDefaults store is not meant to store graphs");
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x1CCA7C540]();
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v12, v13);
  a5();
}

void sub_1C868B454(void (*a1)(void))
{
  sub_1C868B6E4();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v2, v3);
  a1();
}

unint64_t sub_1C868B6E4()
{
  result = qword_1EC2ADC70;
  if (!qword_1EC2ADC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADC70);
  }

  return result;
}

void OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_5_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C868B7E0()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C86F8F4C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = objc_opt_self();
  v3 = *(v0 + 16);
  v18[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = sub_1C86F8CAC();
    v8 = v7;

    v9 = sub_1C86F8C2C();
    v11 = v10;
    sub_1C86F8F3C();
    v12 = sub_1C86F8F1C();
    if (v13)
    {
      v0 = v12;
      sub_1C868BED4(v9, v11);
    }

    else
    {
      sub_1C868B6E4();
      v15 = swift_allocError();
      v16[3] = MEMORY[0x1E6969080];
      *v16 = v9;
      v16[1] = v11;
      OUTLINED_FUNCTION_0_1(v15, v16);
    }

    sub_1C868BED4(v6, v8);
  }

  else
  {
    v14 = v5;
    sub_1C86F8BAC();

    swift_willThrow();
  }

  return v0;
}

uint64_t INInteractionEncoder.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C868B9FC(uint64_t a1, uint64_t a2)
{
  sub_1C86F8C7C();
  if (v6 >> 60 == 15)
  {
    sub_1C868B6E4();
    v7 = swift_allocError();
    v8[3] = MEMORY[0x1E69E6158];
    *v8 = a1;
    v8[1] = a2;
    OUTLINED_FUNCTION_0_1(v7, v8);
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v10 = OUTLINED_FUNCTION_1_2();
    sub_1C868BE68(v10, v11);
    v12 = OUTLINED_FUNCTION_1_2();
    v14 = sub_1C869C600(v12, v13);
    if (!v2)
    {
      v18 = v14;
      sub_1C868BF2C();
      sub_1C86F8EFC();
      v3 = sub_1C86F920C();

      if (v3)
      {
        [v18 finishDecoding];

        v19 = OUTLINED_FUNCTION_1_2();
        sub_1C868BEC0(v19, v20);
        return v3;
      }

      sub_1C868B6E4();
      v21 = swift_allocError();
      v22[3] = MEMORY[0x1E69E6158];
      *v22 = a1;
      v22[1] = a2;
      OUTLINED_FUNCTION_0_1(v21, v22);
    }

    v15 = OUTLINED_FUNCTION_1_2();
    sub_1C868BEC0(v15, v16);
  }

  return v3;
}

id CKPermanentEventStore.__allocating_init(knowledgeStore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___CKPermanentEventStore_knowledgeStore] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id CKPermanentEventStore.init(knowledgeStore:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CKPermanentEventStore_knowledgeStore] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CKPermanentEventStore();
  return objc_msgSendSuper2(&v3, sel_init);
}

id static CKPermanentEventStore.defaultStore()()
{
  type metadata accessor for CKKnowledgeStore();
  v0 = sub_1C86D1228(0, 0xE000000000000000);
  v1 = type metadata accessor for CKPermanentEventStore();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___CKPermanentEventStore_knowledgeStore] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id CKPermanentEventStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPermanentEventStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPermanentEventStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C868BE68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1C868BEC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C868BED4(result, a2);
  }

  return result;
}

uint64_t sub_1C868BED4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1C868BF2C()
{
  result = qword_1EC2ADCA0;
  if (!qword_1EC2ADCA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC2ADCA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 2;

  return swift_willThrow();
}

char *sub_1C868BFB0()
{
  v1 = type metadata accessor for CKPersistentStoreHandler();
  result = sub_1C8694120(v1);
  if (result)
  {
    *(v0 + 16) = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C868BFF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  (*(v3 + 128))();
  v4 = OUTLINED_FUNCTION_1_3();
  v2(v4);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1C868C0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  (*(v4 + 136))();
  v5 = OUTLINED_FUNCTION_1_3();
  v3(v5);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1C868C190(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD998, &unk_1C86FD0B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C86FCC70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  OUTLINED_FUNCTION_3_1();
  v8 = *(v7 + 184);

  v9 = v8(v6);

  sub_1C868C2F8(v9, &v12);

  if (v13)
  {
    sub_1C8689930(&v12, &v14);
    sub_1C86A1B2C(&v14, &v12);
    v11 = OUTLINED_FUNCTION_7_2();
    a3(v11);
    sub_1C86885EC(&v12);
    return __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1C868C2F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C8686320(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C868C318(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  (*(v3 + 144))();
  v4 = OUTLINED_FUNCTION_1_3();
  v2(v4);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1C868C3E8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  v3 = (*(v2 + 184))();
  v4 = sub_1C8693C2C(v3);

  v1(0, v4);
}

uint64_t sub_1C868C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  (*(v4 + 152))();
  v5 = OUTLINED_FUNCTION_1_3();
  v3(v5);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1C868C5A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  (*(v3 + 160))();
  v4 = OUTLINED_FUNCTION_1_3();
  v2(v4);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1C868C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  (*(v4 + 168))();
  v5 = OUTLINED_FUNCTION_1_3();
  v3(v5);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1C868C744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  (*(v4 + 248))();
  v5 = OUTLINED_FUNCTION_1_3();
  v3(v5);
  OUTLINED_FUNCTION_9_1();
}

void sub_1C868C814(CoreKnowledge::CKPath a1)
{
  v1 = *&a1.fromSubject;
  v2 = *(a1.path._rawValue + 8);
  v3 = *(a1.path._rawValue + 9);
  v7 = *a1.path._rawValue;
  v8 = v2;
  v9 = v3;
  a1.path._rawValue = &v7;
  CKPersistentStoreHandler.verify(path:)(a1);
  if (v4)
  {
    v5 = v4;
    (v1)(v4, 0);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_7_2();
    v1(v6);
  }
}

uint64_t sub_1C868C8D0(uint64_t a1)
{
  v5 = type metadata accessor for CKInMemoryBackingStore();
  v6 = &off_1F484E950;
  *&v4 = v1;
  type metadata accessor for CKInMemoryWriteBatch();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C8687B6C(&v4, v2 + 24);

  return v2;
}

uint64_t sub_1C868C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  v9 = (*(v8 + 264))();
  if (v9 != -1)
  {
    return a7(0, v9);
  }

  OUTLINED_FUNCTION_8_2();
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v11 = sub_1C86F8DBC();
  __swift_project_value_buffer(v11, qword_1ED5BC790);
  sub_1C868D528(v22, v21);
  v12 = sub_1C86F8DAC();
  v13 = sub_1C86F912C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v14 = 136315138;
    sub_1C868B6E4();
    sub_1C86F94EC();
    sub_1C868D584(v21);
    v15 = sub_1C8685FDC();

    *(v14 + 4) = v15;
    OUTLINED_FUNCTION_10_1(&dword_1C8683000, v16, v17, "%s");
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  else
  {

    sub_1C868D584(v21);
  }

  sub_1C868B6E4();
  v18 = swift_allocError();
  sub_1C868D528(v22, v19);
  a7(v18, 0);

  return sub_1C868D584(v22);
}

uint64_t sub_1C868CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  v9 = (*(v8 + 272))();
  if (v9 != -1)
  {
    return a7(0, v9);
  }

  OUTLINED_FUNCTION_8_2();
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v11 = sub_1C86F8DBC();
  __swift_project_value_buffer(v11, qword_1ED5BC790);
  sub_1C868D528(v22, v21);
  v12 = sub_1C86F8DAC();
  v13 = sub_1C86F912C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v14 = 136315138;
    sub_1C868B6E4();
    sub_1C86F94EC();
    sub_1C868D584(v21);
    v15 = sub_1C8685FDC();

    *(v14 + 4) = v15;
    OUTLINED_FUNCTION_10_1(&dword_1C8683000, v16, v17, "%s");
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  else
  {

    sub_1C868D584(v21);
  }

  sub_1C868B6E4();
  v18 = swift_allocError();
  sub_1C868D528(v22, v19);
  a7(v18, 0);

  return sub_1C868D584(v22);
}

uint64_t sub_1C868CD64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  (*(v4 + 200))();
  v5 = OUTLINED_FUNCTION_7_2();
  return a3(v5);
}

uint64_t sub_1C868CE20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 216))();
  v3 = OUTLINED_FUNCTION_7_2();
  return v1(v3);
}

uint64_t sub_1C868CED4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 232))();
  v3 = OUTLINED_FUNCTION_7_2();
  return v1(v3);
}

uint64_t sub_1C868CF88(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 240))();
  v3 = OUTLINED_FUNCTION_7_2();
  return v1(v3);
}

uint64_t sub_1C868D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  (*(v8 + 288))();
  v9 = OUTLINED_FUNCTION_7_2();
  return a7(v9);
}

uint64_t sub_1C868D100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  (*(v6 + 296))();
  v7 = OUTLINED_FUNCTION_7_2();
  return a5(v7);
}

void sub_1C868D1C4(void (*a1)(void))
{
  sub_1C868B6E4();
  v2 = swift_allocError();
  *v3 = 1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  a1();
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x1CCA7C540);
}

uint64_t CKKnowledgeStore.writeBatch()()
{
  v1 = *(v0 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v2 = *(v0 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___CKKnowledgeStore_backingStore), v1);
  return (*(v2 + 40))(v1, v2);
}

void sub_1C868D734(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  _Block_copy(a5);
  if (sub_1C868DFB0(a1))
  {
    v10 = [a4 writeBatch];
    sub_1C868FEF0(a1, aBlock);
    v11 = v31;
    if (v31)
    {
      v12 = __swift_project_boxed_opaque_existential_0(aBlock, v31);
      v13 = *(v11 - 1);
      MEMORY[0x1EEE9AC00](v12);
      v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v15);
      v16 = sub_1C86F947C();
      (*(v13 + 8))(v15, v11);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      v16 = 0;
    }

    v27 = sub_1C86F8EEC();
    [v10 setObject:v16 forKey:v27];
    swift_unknownObjectRelease();

    v32 = sub_1C869040C;
    v33 = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C868E054;
    v31 = &block_descriptor_69;
    v28 = _Block_copy(aBlock);

    [v10 writeWithCompletionHandler_];
    _Block_release(v28);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v17 = sub_1C86F8DBC();
    __swift_project_value_buffer(v17, qword_1ED5BC790);
    sub_1C868FEF0(a1, aBlock);

    v18 = sub_1C86F8DAC();
    v19 = sub_1C86F912C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = a2;
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315394;
      sub_1C868FEF0(aBlock, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
      sub_1C86F8F5C();
      sub_1C86885EC(aBlock);
      v22 = sub_1C8685FDC();

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1C8685FDC();
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v21, -1, -1);
      MEMORY[0x1CCA7C540](v20, -1, -1);
    }

    else
    {

      sub_1C86885EC(aBlock);
    }

    sub_1C868B6E4();
    v23 = swift_allocError();
    v25 = v24;
    sub_1C868FEF0(a1, v24);
    *(v25 + 32) = 2;
    v26 = sub_1C86F8B9C();
    (a5)[2](a5, v26);
  }

  _Block_release(a5);
}

void CKKnowledgeStore.setValue(_:forKey:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (sub_1C868DFB0(a1))
  {
    v9 = [v5 writeBatch];
    sub_1C868FEF0(a1, aBlock);
    v10 = v28;
    if (v28)
    {
      v11 = __swift_project_boxed_opaque_existential_0(aBlock, v28);
      v12 = *(v10 - 1);
      MEMORY[0x1EEE9AC00](v11);
      OUTLINED_FUNCTION_3_2();
      v15 = v14 - v13;
      (*(v12 + 16))(v14 - v13);
      v16 = sub_1C86F947C();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      v16 = 0;
    }

    OUTLINED_FUNCTION_13();
    v25 = sub_1C86F8EEC();
    [v9 setObject:v16 forKey:v25];
    swift_unknownObjectRelease();

    v29 = a4;
    v30 = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C868E054;
    v28 = &block_descriptor;
    v26 = _Block_copy(aBlock);

    [v9 writeWithCompletionHandler_];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v17 = sub_1C86F8DBC();
    __swift_project_value_buffer(v17, qword_1ED5BC790);
    sub_1C868FEF0(a1, aBlock);

    v18 = sub_1C86F8DAC();
    v19 = sub_1C86F912C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v20 = 136315394;
      sub_1C868FEF0(aBlock, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
      sub_1C86F8F5C();
      sub_1C86885EC(aBlock);
      v21 = sub_1C8685FDC();

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      OUTLINED_FUNCTION_13();
      *(v20 + 14) = sub_1C8685FDC();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
    }

    else
    {

      sub_1C86885EC(aBlock);
    }

    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v22 = swift_allocError();
    v24 = v23;
    sub_1C868FEF0(a1, v23);
    *(v24 + 32) = 2;
    a4(v22);
  }
}

uint64_t sub_1C868DFB0(uint64_t a1)
{
  sub_1C868FEF0(a1, &v3);
  if (v4)
  {
    sub_1C8689930(&v3, v5);
    sub_1C8689930(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A8, &unk_1C86FCF58);
    v1 = swift_dynamicCast();
    if (v1)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1C86885EC(&v3);
    return 1;
  }

  return v1;
}

void sub_1C868E054(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void CKKnowledgeStore.setValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (sub_1C868DFB0(a1))
  {
    v4 = [v3 writeBatch];
    OUTLINED_FUNCTION_19();
    v5 = v36;
    if (v36)
    {
      v6 = __swift_project_boxed_opaque_existential_0(v35, v36);
      v7 = *(v5 - 8);
      MEMORY[0x1EEE9AC00](v6);
      OUTLINED_FUNCTION_3_2();
      v10 = v9 - v8;
      (*(v7 + 16))(v9 - v8);
      v11 = sub_1C86F947C();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      v11 = 0;
    }

    v17 = sub_1C86F8EEC();
    [v4 setObject:v11 forKey:v17];
    swift_unknownObjectRelease();

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v18 = sub_1C86F8DBC();
    __swift_project_value_buffer(v18, qword_1ED5BC790);
    OUTLINED_FUNCTION_19();

    v19 = sub_1C86F8DAC();
    v20 = sub_1C86F910C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v21 = 136315394;
      sub_1C868FEF0(v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
      sub_1C86F8F5C();
      sub_1C86885EC(v35);
      OUTLINED_FUNCTION_15();
      v22 = sub_1C8685FDC();

      *(v21 + 4) = v22;
      *(v21 + 12) = 2080;
      OUTLINED_FUNCTION_15();
      *(v21 + 14) = sub_1C8685FDC();
      _os_log_impl(&dword_1C8683000, v19, v20, "setting value=%s for key=%s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();
    }

    else
    {

      sub_1C86885EC(v35);
    }

    v35[0] = 0;
    if ([v4 writeAndReturnError_])
    {
      v23 = v35[0];
      swift_unknownObjectRelease();
      return;
    }

    v24 = v35[0];
    v25 = sub_1C86F8BAC();

    swift_willThrow();
    OUTLINED_FUNCTION_19();

    v26 = v25;
    v27 = sub_1C86F8DAC();
    v28 = sub_1C86F912C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v29 = 136315650;
      sub_1C868FEF0(v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
      sub_1C86F8F5C();
      sub_1C86885EC(v35);
      v30 = sub_1C8685FDC();

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      OUTLINED_FUNCTION_15();
      *(v29 + 14) = sub_1C8685FDC();
      *(v29 + 22) = 2080;
      swift_getErrorValue();
      sub_1C86F94EC();
      v31 = sub_1C8685FDC();

      *(v29 + 24) = v31;
      _os_log_impl(&dword_1C8683000, v27, v28, "error setting value=%s for key=%s. %s", v29, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v12 = sub_1C86F8DBC();
    __swift_project_value_buffer(v12, qword_1ED5BC790);
    OUTLINED_FUNCTION_19();

    v13 = sub_1C86F8DAC();
    v14 = sub_1C86F912C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136315394;
      sub_1C868FEF0(v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
      sub_1C86F8F5C();
      sub_1C86885EC(v35);
      v16 = sub_1C8685FDC();

      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      OUTLINED_FUNCTION_15();
      *(v15 + 14) = sub_1C8685FDC();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_11_1();

      return;
    }
  }

  sub_1C86885EC(v35);
}

uint64_t CKKnowledgeStore.removeEntity(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v9 = sub_1C86F8DBC();
  __swift_project_value_buffer(v9, qword_1ED5BC790);

  v10 = sub_1C86F8DAC();
  v11 = sub_1C86F911C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v12 = 136380675;
    OUTLINED_FUNCTION_13();
    *(v12 + 4) = sub_1C8685FDC();
    _os_log_impl(&dword_1C8683000, v10, v11, "[$? <%{private}s> $?]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  v13 = type metadata accessor for CKTripleCondition();
  v14 = objc_allocWithZone(v13);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_3();
  CKTripleCondition.init(subject:predicate:object:)(v15, v16, v17, v18, 0, 0);
  v37 = v19;
  v20 = objc_allocWithZone(v13);
  OUTLINED_FUNCTION_8_3();
  CKTripleCondition.init(subject:predicate:object:)(v21, v22, v23, v24, a1, a2);
  v38 = v25;
  v36 = sub_1C86BC268();
  OUTLINED_FUNCTION_6_1();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = (v5 + OBJC_IVAR___CKKnowledgeStore_backingStore);
  v28 = *(v5 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_0(v27, v28);
  v30 = *&v36[OBJC_IVAR___CKTripleCondition_rawCondition];
  v31 = swift_allocObject();
  v31[2] = v26;
  v31[3] = a3;
  v31[4] = a4;
  v32 = *(v29 + 8);
  v33 = *(v32 + 104);
  v34 = v30;

  v33(v34, sub_1C8690324, v31, v28, v32);
}

uint64_t CKKnowledgeStore.removeValue(forKey:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v10 = *(v4 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR___CKKnowledgeStore_backingStore), v9);
  return (*(*(v10 + 8) + 88))(a1, a2, a3, a4, v9);
}

uint64_t sub_1C868ECDC(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1C86F8EFC();
  v13 = v12;
  OUTLINED_FUNCTION_6_1();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_1C868EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_17();
  v29 = v6;
  v30 = v7;
  v28 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_1C86F8E6C();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_2();
  v15 = OUTLINED_FUNCTION_20();

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;

  v20 = v18;
  sub_1C868EFC0(v28, v19, v15, v12, v10, v29, v30);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    if (!*v17)
    {

      v26 = OUTLINED_FUNCTION_7();
      v27(v26);
      goto LABEL_6;
    }

    v23 = *v17;
  }

  swift_willThrow();

  v24 = OUTLINED_FUNCTION_7();
  v25(v24);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C868EFC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = sub_1C86F8EEC();
  v19 = a1;
  v20 = a2;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v17 = v13;
  v18 = a6;
  v14 = _Block_copy(&v15);

  [a3 *a7];
  _Block_release(v14);
}

uint64_t sub_1C868F0A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = a1;
  a5(v7, v9);

  return 1;
}

uint64_t CKKnowledgeStore.removeValues(forKeys:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKKnowledgeStore.removeValues(forKeys:)(Swift::OpaquePointer forKeys)
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v5 = sub_1C86F8E6C();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = OUTLINED_FUNCTION_20();

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_11();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v9;

  v11 = v9;
  sub_1C868F3FC(sub_1C8690408, v10, v7, v4);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v12, v13);
LABEL_5:
    swift_willThrow();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  v14 = *v2;
  if (v14)
  {
    v15 = v14;
    goto LABEL_5;
  }

LABEL_6:

  v16 = OUTLINED_FUNCTION_7();
  v17(v16);
  OUTLINED_FUNCTION_16();
}

void sub_1C868F3FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1C86F908C();
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C868E054;
  v9[3] = &block_descriptor_72;
  v8 = _Block_copy(v9);

  [a3 removeValuesForKeys:v7 completionHandler:v8];
  _Block_release(v8);
}

uint64_t CKKnowledgeStore.removeValues(matching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

void CKKnowledgeStore.removeValues(matching:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v5 = sub_1C86F8E6C();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = OUTLINED_FUNCTION_20();
  v8 = v4;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v10;
  v23[4] = sub_1C8690408;
  v23[5] = v11;
  OUTLINED_FUNCTION_5_2();
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v23[2] = v12;
  v23[3] = &block_descriptor_27;
  v13 = _Block_copy(v23);

  v14 = v10;

  [v7 removeValuesMatching:v8 completionHandler:v13];
  _Block_release(v13);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    v17 = *v2;
    if (!v17)
    {

      v21 = OUTLINED_FUNCTION_7();
      v22(v21);
      goto LABEL_6;
    }

    v18 = v17;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_7();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

uint64_t CKKnowledgeStore.removeAllValues(completionHandler:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_1();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v2 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v7 = *(v2 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR___CKKnowledgeStore_backingStore), v6);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v7 + 8);
  v10 = *(v9 + 112);

  v10(sub_1C86903EC, v8, v6, v9);
}

uint64_t sub_1C868FA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_8_3();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x70))();

    if (v7)
    {
      [v7 linkedDataDidChange];
      swift_unknownObjectRelease();
    }
  }

  return a3(a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKKnowledgeStore.removeAllValues()()
{
  OUTLINED_FUNCTION_17();
  v0 = sub_1C86F8E6C();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_2();
  v2 = OUTLINED_FUNCTION_20();
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v17[4] = sub_1C8690408;
  v17[5] = v5;
  OUTLINED_FUNCTION_5_2();
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v17[2] = v6;
  v17[3] = &block_descriptor_39;
  v7 = _Block_copy(v17);

  v8 = v4;

  [v2 removeAllValuesWithCompletionHandler_];
  _Block_release(v7);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_4_2(v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_8_3();
    swift_beginAccess();
    v11 = *(v3 + 16);
    if (!v11)
    {

      v15 = OUTLINED_FUNCTION_7();
      v16(v15);
      goto LABEL_6;
    }

    v12 = v11;
  }

  swift_willThrow();

  v13 = OUTLINED_FUNCTION_7();
  v14(v13);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

uint64_t CKKnowledgeStore.disableSyncAndDeleteCloudData(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v6 = *(v2 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR___CKKnowledgeStore_backingStore), v5);
  return (*(v6 + 96))(a1, a2, v5, v6);
}

uint64_t sub_1C868FE60(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1C868FEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C868FF60(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C868FFAC(a1, a2);
  sub_1C86900C4(&unk_1F484E650);
  return v3;
}

uint64_t sub_1C868FFAC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C86F8FEC())
  {
    result = sub_1C86901A8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C86F935C();
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
          result = sub_1C86F938C();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C86900C4(uint64_t result)
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

    result = sub_1C8690218(result, v7, 1, v3);
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

void *sub_1C86901A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A0, &unk_1C86FCF48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C8690218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A0, &unk_1C86FCF48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 3;
  return result;
}

dispatch_semaphore_t OUTLINED_FUNCTION_18(uint64_t a1)
{
  *(a1 + 16) = 0;

  return dispatch_semaphore_create(0);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_1C868FEF0(v0, v1 - 120);
}

id OUTLINED_FUNCTION_20()
{

  return v0;
}

void sub_1C8690560()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_43(v2, v3, v4);
  v6(v5);
  if (v1)
  {
    v7 = v1;
    v8 = OUTLINED_FUNCTION_5_1();
    v0(v8);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_3();
    v0(v11);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_1C8690620()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_5_1();
    v0(v4);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_3();
    v0(v7);
    OUTLINED_FUNCTION_9_1();
  }
}

uint64_t sub_1C86906E0()
{
  OUTLINED_FUNCTION_45();
  (*(v1 + 24))(&v4);
  v2 = OUTLINED_FUNCTION_7_2();
  v0(v2);
  return sub_1C86885EC(&v4);
}

void sub_1C869078C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_43(v2, v3, v4);
  v6(v5);
  if (v1)
  {
    v7 = v1;
    v8 = OUTLINED_FUNCTION_5_1();
    v0(v8);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_3();
    v0(v11);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_1C869084C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_5_1();
    v0(v4);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_3();
    v0(v7);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_1C869090C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_5_1();
    v0(v4);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_3();
    v0(v7);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_1C86909CC()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_43(v2, v3, v4);
  v6(v5);
  if (v1)
  {
    v7 = v1;
    sub_1C86F8EBC();
    v8 = OUTLINED_FUNCTION_46();
    v0(v8);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_3();
    v0(v11);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_1C8690AB4()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    sub_1C86F8EBC();
    v4 = OUTLINED_FUNCTION_46();
    v0(v4);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_3();
    v0(v7);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_1C8690B9C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_5_1();
    v0(v4);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_3();
    v0(v7);
    OUTLINED_FUNCTION_9_1();
  }
}

uint64_t sub_1C8690C5C()
{
  OUTLINED_FUNCTION_45();
  (*(v1 + 80))();
  v2 = OUTLINED_FUNCTION_7_2();
  return v0(v2);
}

void sub_1C8690D08()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_5_1();
    v0(v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_2();
    v0(v5);
  }
}

void sub_1C8690DAC()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_25();
  v2();
  if (v1)
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_5_1();
    v0(v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_2();
    v0(v5);
  }
}

void sub_1C8690E50()
{
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_43(v2, v3, v4);
  v6(v5);
  if (v1)
  {
    v7 = v1;
    v8 = OUTLINED_FUNCTION_5_1();
    v0(v8);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_2();
    v0(v9);
  }
}

void sub_1C8690F08()
{
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  v4 = OUTLINED_FUNCTION_34();
  v7 = sub_1C8692880(v4, v5, v6);
  OUTLINED_FUNCTION_42(v7);
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v8);
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_41(v9, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_21_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_33(v11);
  OUTLINED_FUNCTION_11();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_40(v12);

  v13 = v10;

  v14 = OUTLINED_FUNCTION_17_0();
  v15(v14);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v16 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!*v0)
    {

      OUTLINED_FUNCTION_26(v1, &v23);

      v21 = OUTLINED_FUNCTION_8();
      v22(v21);
      goto LABEL_6;
    }

    v18 = *v0;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_8();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16();
}

void sub_1C8691180()
{
  OUTLINED_FUNCTION_17();
  v24 = v0;
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v27 = v6;
  v7 = sub_1C86F8E6C();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_2();

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v25 = (v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  v23 = v10 + 16;
  *(v10 + 32) = 0u;
  v11 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_21_0();
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  v13 = *(*(v3 + 8) + 8);
  v14 = *(v13 + 24);

  v15 = v11;
  v14(v27, v5, sub_1C86934C8, v12, v26, v13);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v16 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_26(v25, &v29);
    if (!*v25)
    {

      OUTLINED_FUNCTION_26(v23, &v28);
      sub_1C868FEF0(v23, v24);

      v21 = OUTLINED_FUNCTION_44();
      v22(v21);
      goto LABEL_6;
    }

    v18 = *v25;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_44();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C8691410()
{
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  v4 = OUTLINED_FUNCTION_34();
  v7 = sub_1C8692A68(v4, v5, v6);
  OUTLINED_FUNCTION_42(v7);
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v8);
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_41(v9, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_21_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_33(v11);
  OUTLINED_FUNCTION_11();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_40(v12);

  v13 = v10;

  v14 = OUTLINED_FUNCTION_17_0();
  v15(v14);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v16 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!*v0)
    {

      OUTLINED_FUNCTION_26(v1, &v23);

      v21 = OUTLINED_FUNCTION_8();
      v22(v21);
      goto LABEL_6;
    }

    v18 = *v0;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_8();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16();
}

void sub_1C8691640()
{
  OUTLINED_FUNCTION_17();
  v1 = sub_1C86F8E6C();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_5();

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v3);
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_30(v4, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_21_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27(v6);

  v7 = v5;
  v8 = OUTLINED_FUNCTION_35();
  sub_1C8692B88(v8, v9, v10, v11, v12, v13);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v14 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    v16 = *v0;
    if (!v16)
    {

      OUTLINED_FUNCTION_19_0();

      v20 = OUTLINED_FUNCTION_13_0();
      v21(v20);
      goto LABEL_6;
    }

    v17 = v16;
  }

  swift_willThrow();

  v18 = OUTLINED_FUNCTION_13_0();
  v19(v18);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C869186C()
{
  OUTLINED_FUNCTION_17();
  v28 = v3;
  v29 = v4;
  v26 = v5;
  v27 = v6;
  v25 = v0;
  v8 = v7;
  v9 = sub_1C86F8E6C();
  v10 = OUTLINED_FUNCTION_2_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_5();
  v11 = v8;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v12);
  OUTLINED_FUNCTION_6_1();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_30(v13, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_21_0();
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v13;
  v15[4] = v14;

  v16 = v14;
  v29(v27, v15, v25, v11, v26, v28);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v17 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    v19 = *v2;
    if (!v19)
    {

      OUTLINED_FUNCTION_19_0();

      v23 = OUTLINED_FUNCTION_7();
      v24(v23);
      goto LABEL_6;
    }

    v20 = v19;
  }

  swift_willThrow();

  v21 = OUTLINED_FUNCTION_7();
  v22(v21);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C8691A88()
{
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  v4 = OUTLINED_FUNCTION_34();
  v7 = sub_1C8692D18(v4, v5, v6);
  OUTLINED_FUNCTION_42(v7);
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v8);
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_41(v9, MEMORY[0x1E69E7CC8]);
  OUTLINED_FUNCTION_21_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_33(v11);
  OUTLINED_FUNCTION_11();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_40(v12);

  v13 = v10;

  v14 = OUTLINED_FUNCTION_17_0();
  v15(v14);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v16 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!*v0)
    {

      OUTLINED_FUNCTION_26(v1, &v23);

      v21 = OUTLINED_FUNCTION_8();
      v22(v21);
      goto LABEL_6;
    }

    v18 = *v0;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_8();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16();
}

void sub_1C8691CB8()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v3 = sub_1C86F8E6C();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_5();
  v5 = v2;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v6);
  OUTLINED_FUNCTION_6_1();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_30(v7, MEMORY[0x1E69E7CC8]);
  OUTLINED_FUNCTION_21_0();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_27(v9);

  v10 = v8;
  v11 = OUTLINED_FUNCTION_35();
  sub_1C8692E38(v11, v12, v13, v14, v15, v16);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v17 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    v19 = *v0;
    if (!v19)
    {

      OUTLINED_FUNCTION_19_0();

      v23 = OUTLINED_FUNCTION_13_0();
      v24(v23);
      goto LABEL_6;
    }

    v20 = v19;
  }

  swift_willThrow();

  v21 = OUTLINED_FUNCTION_13_0();
  v22(v21);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C8691EB4()
{
  OUTLINED_FUNCTION_17();
  v21 = v0;
  v22 = v3;
  v23 = v4;
  v6 = v5;
  v7 = sub_1C86F8E6C();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_5();
  v24 = v6;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v9);
  OUTLINED_FUNCTION_6_1();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_30(v10, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_21_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_27(v12);

  v13 = v11;
  sub_1C8692F00(sub_1C869360C, v2, v21, v6, v22, v23);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v14 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!*v1)
    {

      OUTLINED_FUNCTION_19_0();

      v19 = OUTLINED_FUNCTION_13_0();
      v20(v19);
      goto LABEL_6;
    }

    v16 = *v1;
  }

  swift_willThrow();

  v17 = OUTLINED_FUNCTION_13_0();
  v18(v17);
LABEL_6:
  OUTLINED_FUNCTION_16();
}

void sub_1C86920C8()
{
  OUTLINED_FUNCTION_17();
  v23 = v2;
  v24 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C86F8E6C();
  v9 = OUTLINED_FUNCTION_2_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_5();

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_11_2(v10);
  v11 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = v11;
  v13 = *(*(v5 + 8) + 8);
  v14 = *(v13 + 88);

  v15 = v11;
  v14(v24, v7, sub_1C8690408, v12, v23, v13);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v16 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!*v1)
    {

      v21 = OUTLINED_FUNCTION_7();
      v22(v21);
      goto LABEL_6;
    }

    v18 = *v1;
  }

  swift_willThrow();

  v19 = OUTLINED_FUNCTION_7();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C86922D8()
{
  OUTLINED_FUNCTION_17();
  v2 = sub_1C86F8E6C();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_2();

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_37(v6);
  v7 = *(v1 + 96);

  v8 = v5;
  v9 = OUTLINED_FUNCTION_29();
  v7(v9);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v10 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_26(v0, &v17);
    if (!*v0)
    {

      v15 = OUTLINED_FUNCTION_14_0();
      v16(v15);
      goto LABEL_6;
    }

    v12 = *v0;
  }

  swift_willThrow();

  v13 = OUTLINED_FUNCTION_14_0();
  v14(v13);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C86924BC()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = sub_1C86F8E6C();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2();
  v6 = v3;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_37(v9);
  v10 = *(v1 + 104);

  v11 = v8;
  v12 = OUTLINED_FUNCTION_29();
  v10(v12);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v13 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_26(v0, &v21);
    if (!*v0)
    {

      v18 = OUTLINED_FUNCTION_14_0();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v0;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_14_0();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

void sub_1C86926A0()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C86F8E6C();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_5();
  v7 = sub_1C8692FC8(v0, v4, v2);
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;

  v12 = v10;
  (v7)(sub_1C8690344, v11);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v13 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_2(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_26(v9, &v20);
    if (!*v9)
    {

      v18 = OUTLINED_FUNCTION_7();
      v19(v18);
      goto LABEL_6;
    }

    v15 = *v9;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_7();
  v17(v16);
LABEL_6:
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_16();
}

uint64_t (*sub_1C8692880(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1C86935AC;
}

uint64_t sub_1C86929A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = *(v12 + 16);

  v13(a4, sub_1C86934E0, v11, a5, v12);
}

uint64_t (*sub_1C8692A68(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1C8693470;
}

uint64_t sub_1C8692B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = *(v12 + 40);

  v13(a4, sub_1C8693614, v11, a5, v12);
}

uint64_t sub_1C8692C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = *(v12 + 48);

  v13(a4, sub_1C8693614, v11, a5, v12);
}

uint64_t (*sub_1C8692D18(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1C8693418;
}

uint64_t sub_1C8692E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = *(v12 + 64);

  v13(a4, sub_1C86933E0, v11, a5, v12);
}

uint64_t sub_1C8692F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = *(v12 + 72);

  v13(a4, sub_1C8693614, v11, a5, v12);
}

uint64_t (*sub_1C8692FC8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1C86932D8;
}

uint64_t sub_1C86932D8()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10_2();
  return (*(v0 + 112))();
}

uint64_t sub_1C8693330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  *(a4 + 16) = a2;

  return sub_1C86F91FC();
}

uint64_t sub_1C86933E0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1C8693418()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10_2();
  return (*(v0 + 56))();
}

uint64_t sub_1C8693470()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10_2();
  return (*(v0 + 32))();
}

uint64_t objectdestroy_27Tm()
{

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C86935AC()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10_2();
  return (*(v0 + 8))();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  result = v0;
  *(v2 - 144) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_28()
{
  *(v1 - 168) = v0;

  return sub_1C86F8E6C();
}

dispatch_semaphore_t OUTLINED_FUNCTION_30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;

  return dispatch_semaphore_create(0);
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return swift_allocError();
}

void *OUTLINED_FUNCTION_33(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_37(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(v4 - 152) = v2;
}

dispatch_semaphore_t OUTLINED_FUNCTION_41@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;

  return dispatch_semaphore_create(0);
}

dispatch_semaphore_t OUTLINED_FUNCTION_47(uint64_t a1)
{
  *(a1 + 16) = 0;

  return dispatch_semaphore_create(0);
}

uint64_t sub_1C86938C8()
{
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    sub_1C8689930(v1, &v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_35_0();
    sub_1C868968C(v3, v4, v5);

    *v0 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_67();
    sub_1C869DEA8(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_92();
    sub_1C869CA44(v10, v11, v12);

    OUTLINED_FUNCTION_67();
    return sub_1C869DEA8(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1C8693964()
{
  OUTLINED_FUNCTION_96();
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_67();
    sub_1C869DEA8(v2, v3, v4);
    v5 = OUTLINED_FUNCTION_92();
    sub_1C869CB2C(v5, v6, v7);

    OUTLINED_FUNCTION_67();
    return sub_1C869DEA8(v8, v9, v10);
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_35_0();
    sub_1C86897AC(v12, v13, v14);

    *v0 = v15;
  }

  return result;
}

uint64_t sub_1C8693A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_46_0();
    sub_1C869CE68(v4, v5, v6);
    v2 = v17;
    v7 = a1 + 32;
    do
    {
      sub_1C8686320(v7, v14);
      swift_dynamicCast();
      v8 = v15;
      v9 = v16;
      v17 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C869CE68((v10 > 1), v11 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C8693B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C869CF28(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA30, &qword_1C86FD150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA68, &qword_1C86FD188);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C869CF28((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C8693C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_46_0();
    sub_1C869CF08(v4, v5, v6);
    v2 = v20;
    v7 = a1 + 32;
    do
    {
      sub_1C8686320(v7, v17);
      v8 = OUTLINED_FUNCTION_91();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      swift_dynamicCast();
      v20 = v2;
      v10 = *(v2 + 16);
      if (v10 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_36_0();
        sub_1C869CF08(v13, v14, v15);
        v2 = v20;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 32 * v10;
      v12 = v19;
      *(v11 + 32) = v18;
      *(v11 + 48) = v12;
      v7 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C8693D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1C869CF48(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8, &unk_1C86FD090);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C869CF48((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C8693E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_46_0();
    sub_1C869CEE8(v4, v5, v6);
    v2 = v12;
    v7 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA30, &qword_1C86FD150);
      swift_dynamicCast();
      v12 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C869CEE8((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v9 + 1;
      sub_1C8689930(&v11, (v2 + 32 * v9 + 32));
      v7 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C8693F5C()
{
  sub_1C86B132C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C86FD030;
  *(v0 + 32) = sub_1C869F398(0, &qword_1ED5BC4A0, 0x1E696AEC0);
  *(v0 + 40) = sub_1C869F398(0, &qword_1ED5BC4B0, 0x1E696AD98);
  *(v0 + 48) = sub_1C869F398(0, &qword_1EC2AD7C0, 0x1E695DFD8);
  *(v0 + 56) = sub_1C869F398(0, &qword_1EC2AD7B8, 0x1E695DFF8);
  *(v0 + 64) = sub_1C869F398(0, &qword_1EC2AD7B0, 0x1E696AFB0);
  *(v0 + 72) = sub_1C869F398(0, &unk_1ED5BC4E0, 0x1E695DEF0);
  *(v0 + 80) = sub_1C869F398(0, &qword_1ED5BC4B8, 0x1E695DEC8);
  *(v0 + 88) = sub_1C869F398(0, &unk_1ED5BC4F0, 0x1E695DF20);
  *(v0 + 96) = sub_1C869F398(0, &unk_1ED5BC4D0, 0x1E695DF00);
  *(v0 + 104) = type metadata accessor for CKHistoricEvent(0);
  *(v0 + 112) = type metadata accessor for CKAppInteractionsContext();
  result = type metadata accessor for CKTriple();
  *(v0 + 120) = result;
  qword_1ED5BC508 = v0;
  return result;
}

uint64_t BlobValueAllowedClasses.getter()
{
  if (qword_1ED5BC500 != -1)
  {
    OUTLINED_FUNCTION_19_1();
    swift_once();
  }
}

char *sub_1C8694120(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for CKPersistentStoreHandler()) init];
  v2 = sub_1C86941B4(0, 0);
  if (v2)
  {
    *&v1[OBJC_IVAR___CKPersistentStoreHandler_connection] = v2;
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1C86941B4(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Connection();
  swift_allocObject();
  sub_1C869F384(a1, a2);
  v4 = sub_1C86AA058(a1, a2, 0);

  sub_1C86AA77C(v5, v5, 0xD0000000000001ADLL, 0x80000001C86FFDF0);
  return v4;
}

id sub_1C8694870()
{
  *&v0[OBJC_IVAR___CKPersistentStoreHandler_connection] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPersistentStoreHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

void CKPersistentStoreHandler.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_84());
  OUTLINED_FUNCTION_57();
  CKPersistentStoreHandler.init(name:)();
}

void CKPersistentStoreHandler.init(name:)()
{
  OUTLINED_FUNCTION_107();
  v96 = v1;
  v3 = v2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8, &unk_1C86FD080);
  OUTLINED_FUNCTION_43_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v90 - v5;
  sub_1C86F8C1C();
  OUTLINED_FUNCTION_99();
  v94 = v8;
  v95 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v90 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v90 - v13;
  sub_1C86F8AFC();
  OUTLINED_FUNCTION_99();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v98 = OBJC_IVAR___CKPersistentStoreHandler_connection;
  v99 = v0;
  *&v0[OBJC_IVAR___CKPersistentStoreHandler_connection] = 0;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD48]) init];
  sub_1C86F8ACC();
  v18 = sub_1C86F8ADC();
  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_91();
  v19(v20);
  [v17 formUnionWithCharacterSet_];

  v21 = sub_1C86F8EEC();
  [v17 addCharactersInString_];

  v22 = sub_1C86F8EEC();
  [v17 addCharactersInString_];

  v101 = v3;
  v102 = v96;
  v97 = v17;
  v23 = [v17 invertedSet];
  sub_1C86F8AEC();

  sub_1C868A058();
  v24 = sub_1C86F926C();
  v25 = OUTLINED_FUNCTION_91();
  v19(v25);
  v101 = v24;
  v26 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_3();
  sub_1C869F33C(v28, &qword_1EC2AD9C0, &unk_1C86FD6A0, v29);
  v30 = sub_1C86F8EDC();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v47 = sub_1C86F8DBC();
    OUTLINED_FUNCTION_83(v47, qword_1ED5BC790);

    v39 = sub_1C86F8DAC();
    v48 = sub_1C86F913C();

    if (!os_log_type_enabled(v39, v48))
    {

      goto LABEL_20;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v101 = v50;
    *v49 = 136315138;
    v51 = sub_1C8685FDC();

    *(v49 + 4) = v51;
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    OUTLINED_FUNCTION_11_1();
LABEL_15:
    OUTLINED_FUNCTION_29_0();
LABEL_20:

LABEL_21:

    type metadata accessor for CKPersistentStoreHandler();
    swift_deallocPartialClassInstance();
    goto LABEL_22;
  }

  if (qword_1EC2AD758 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v93, qword_1EC2AEFB0);
  swift_beginAccess();
  sub_1C869CE88(v34, v6, &qword_1EC2AD9B8, &unk_1C86FD080);
  v35 = v95;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v95);
  v37 = v94;
  if (EnumTagSinglePayload == 1)
  {

    sub_1C869DEA8(v6, &qword_1EC2AD9B8, &unk_1C86FD080);
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v38 = sub_1C86F8DBC();
    OUTLINED_FUNCTION_83(v38, qword_1ED5BC790);
    v39 = sub_1C86F8DAC();
    v40 = sub_1C86F913C();
    if (!OUTLINED_FUNCTION_71(v40))
    {
      goto LABEL_20;
    }

    v41 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_61(v41);
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v42, v43, v44, v45, v46, 2u);
    goto LABEL_15;
  }

  (*(v94 + 32))();
  v57 = type metadata accessor for CKPersistentStoreHandler();
  v58 = sub_1C86F8C0C();
  v60 = sub_1C86951A8(v58, v59);

  if ((v60 & 1) == 0)
  {

    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v69 = sub_1C86F8DBC();
    OUTLINED_FUNCTION_83(v69, qword_1ED5BC790);
    v70 = sub_1C86F8DAC();
    v71 = sub_1C86F913C();
    if (OUTLINED_FUNCTION_71(v71))
    {
      v72 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_61(v72);
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    else
    {
    }

    v78 = OUTLINED_FUNCTION_64();
    v79(v78);
    goto LABEL_21;
  }

  v61 = v90;
  sub_1C86F8BDC();

  swift_beginAccess();

  v62 = v91;
  OUTLINED_FUNCTION_91();
  sub_1C86F8BEC();

  v63 = *(v37 + 8);
  v63(v61, v35);
  sub_1C86F8C0C();
  v63(v62, v35);
  v64 = OUTLINED_FUNCTION_82();
  v66 = sub_1C86941B4(v64, v65);

  if (!v66)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v80 = sub_1C86F8DBC();
    OUTLINED_FUNCTION_83(v80, qword_1ED5BC790);
    v81 = sub_1C86F8DAC();
    v82 = sub_1C86F912C();
    if (OUTLINED_FUNCTION_71(v82))
    {
      v83 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_61(v83);
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v84, v85, v86, v87, v88, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    else
    {
    }

    v89 = OUTLINED_FUNCTION_64();
    (v63)(v89);
    goto LABEL_21;
  }

  v67 = v99;
  *&v99[v98] = v66;

  v100.receiver = v67;
  v100.super_class = v57;
  objc_msgSendSuper2(&v100, sel_init);

  v68 = OUTLINED_FUNCTION_64();
  (v63)(v68);
LABEL_22:
  OUTLINED_FUNCTION_108();
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

id sub_1C86951A8(uint64_t a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1C86F8EEC();
  v4 = sub_1C86F8EEC();
  v19[0] = 0;
  v5 = [v2 createDataVaultDirectoryAtPath:v3 withStorageClass:v4 error:v19];

  if (v5)
  {
    v6 = v19[0];
  }

  else
  {
    v7 = v19[0];
    v8 = sub_1C86F8BAC();

    swift_willThrow();
    v19[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA80, &qword_1C86FD198);
    sub_1C869F398(0, &qword_1EC2ADA88, 0x1E696ABC0);
    swift_dynamicCast();
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v9 = sub_1C86F8DBC();
    __swift_project_value_buffer(v9, qword_1ED5BC790);
    v10 = v18;
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F913C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[1] = v14;
      *v13 = 136315138;
      v15 = [v10 localizedDescription];
      sub_1C86F8EFC();

      v16 = sub_1C8685FDC();

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1C8683000, v11, v12, "error creating data vault: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1CCA7C540](v14, -1, -1);
      MEMORY[0x1CCA7C540](v13, -1, -1);
    }

    else
    {
    }
  }

  return v5;
}

void sub_1C869549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_54();
  a32 = v35;
  a33 = v36;
  v37 = *(v33 + OBJC_IVAR___CKPersistentStoreHandler_connection);
  if (!v37)
  {
    sub_1C868B6E4();
    v62 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_3(v62, v63);
    goto LABEL_24;
  }

  *&a13 = MEMORY[0x1E69E7CC0];
  a23 = v37;

  v38 = OUTLINED_FUNCTION_7_4();
  sub_1C869CE68(v38, v39, v40);
  v41 = 0;
  v42 = a13;
  do
  {
    v43 = *(&unk_1F484E6A0 + v41 + 32);
    OUTLINED_FUNCTION_21_1();
    sub_1C86F936C();

    OUTLINED_FUNCTION_18_0();
    a17 = v44 & 0xFFFFFFFFFFFFLL | 0x6B20000000000000;
    OUTLINED_FUNCTION_13_1();
    a18 = v45;
    v46 = 0xE600000000000000;
    v47 = 0x6C6176746E69;
    switch(v43)
    {
      case 1:
        v46 = 0xE700000000000000;
        v48 = OUTLINED_FUNCTION_32_0();
        goto LABEL_7;
      case 2:
        v46 = 0xE700000000000000;
        v48 = OUTLINED_FUNCTION_31_0();
        goto LABEL_7;
      case 3:
        v46 = 0xE700000000000000;
        v48 = OUTLINED_FUNCTION_30_0();
LABEL_7:
        v47 = OUTLINED_FUNCTION_42_0(v48);
        break;
      default:
        break;
    }

    MEMORY[0x1CCA7B200](v47, v46);

    v49 = a17;
    v50 = a18;
    *&a13 = v42;
    v52 = *(v42 + 16);
    v51 = *(v42 + 24);
    if (v52 >= v51 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v51);
      OUTLINED_FUNCTION_38();
      sub_1C869CE68(v54, v55, v56);
      v42 = a13;
    }

    ++v41;
    *(v42 + 16) = v52 + 1;
    v53 = v42 + 16 * v52;
    *(v53 + 32) = v49;
    *(v53 + 40) = v50;
  }

  while (v41 != 4);
  a17 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C0, &unk_1C86FD6A0);
  OUTLINED_FUNCTION_0_3();
  sub_1C869F33C(v57, &qword_1EC2AD9C0, &unk_1C86FD6A0, v58);
  OUTLINED_FUNCTION_3_4();
  sub_1C86F8EDC();

  OUTLINED_FUNCTION_48();
  sub_1C86A9000(v59, v60, v61);
  if (v34)
  {

LABEL_24:
    OUTLINED_FUNCTION_55();
    return;
  }

  sub_1C86D49F8(0);

  v64 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C86C4548();
    if (!v65)
    {

      OUTLINED_FUNCTION_28_0();

      goto LABEL_24;
    }

    if (!*(v65 + 16))
    {
      break;
    }

    sub_1C869CE88(v65 + 32, &a13, &qword_1EC2AD9C8, &unk_1C86FD090);
    if (!a15)
    {
      goto LABEL_26;
    }

    sub_1C8687B6C(&a13, &a17);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0, &unk_1C86FE280);
    OUTLINED_FUNCTION_68(v66, v67, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4A44();
      v64 = v72;
    }

    v70 = *(v64 + 16);
    v69 = *(v64 + 24);
    if (v70 >= v69 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v69);
      OUTLINED_FUNCTION_26_0();
      sub_1C86C4A44();
      v64 = v73;
    }

    *(v64 + 16) = v70 + 1;
    v71 = v64 + 16 * v70;
    *(v71 + 32) = a11;
    *(v71 + 40) = a12;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C86957EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_54();
  a32 = v35;
  a33 = v36;
  v37 = *(v33 + OBJC_IVAR___CKPersistentStoreHandler_connection);
  if (!v37)
  {
    sub_1C868B6E4();
    v64 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_3(v64, v65);
    goto LABEL_24;
  }

  *&a13 = MEMORY[0x1E69E7CC0];
  a23 = v37;

  v38 = OUTLINED_FUNCTION_7_4();
  sub_1C869CE68(v38, v39, v40);
  v41 = 0;
  v42 = a13;
  do
  {
    v43 = *(&unk_1F484E6A0 + v41 + 32);
    OUTLINED_FUNCTION_21_1();
    sub_1C86F936C();

    OUTLINED_FUNCTION_18_0();
    a17 = v44 & 0xFFFFFFFFFFFFLL | 0x6B20000000000000;
    OUTLINED_FUNCTION_13_1();
    a18 = v45;
    v46 = 0xE600000000000000;
    v47 = OUTLINED_FUNCTION_17_1();
    switch(v43)
    {
      case 1:
        v46 = 0xE700000000000000;
        v48 = OUTLINED_FUNCTION_32_0();
        goto LABEL_7;
      case 2:
        v46 = 0xE700000000000000;
        v48 = OUTLINED_FUNCTION_31_0();
        goto LABEL_7;
      case 3:
        v46 = 0xE700000000000000;
        v48 = OUTLINED_FUNCTION_30_0();
LABEL_7:
        v47 = OUTLINED_FUNCTION_42_0(v48);
        break;
      default:
        break;
    }

    MEMORY[0x1CCA7B200](v47, v46);

    v49 = OUTLINED_FUNCTION_5_3();
    MEMORY[0x1CCA7B200](v49);
    v50 = sub_1C86B9470();
    MEMORY[0x1CCA7B200](v50);

    v52 = a17;
    v51 = a18;
    *&a13 = v42;
    v54 = *(v42 + 16);
    v53 = *(v42 + 24);
    if (v54 >= v53 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v53);
      OUTLINED_FUNCTION_38();
      sub_1C869CE68(v56, v57, v58);
      v42 = a13;
    }

    ++v41;
    *(v42 + 16) = v54 + 1;
    v55 = v42 + 16 * v54;
    *(v55 + 32) = v52;
    *(v55 + 40) = v51;
  }

  while (v41 != 4);
  a17 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C0, &unk_1C86FD6A0);
  OUTLINED_FUNCTION_0_3();
  sub_1C869F33C(v59, &qword_1EC2AD9C0, &unk_1C86FD6A0, v60);
  OUTLINED_FUNCTION_3_4();
  sub_1C86F8EDC();

  OUTLINED_FUNCTION_48();
  sub_1C86A9000(v61, v62, v63);
  if (v34)
  {

LABEL_24:
    OUTLINED_FUNCTION_55();
    return;
  }

  sub_1C86D49F8(0);

  v66 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C86C4548();
    if (!v67)
    {

      OUTLINED_FUNCTION_28_0();

      goto LABEL_24;
    }

    if (!*(v67 + 16))
    {
      break;
    }

    sub_1C869CE88(v67 + 32, &a13, &qword_1EC2AD9C8, &unk_1C86FD090);
    if (!a15)
    {
      goto LABEL_26;
    }

    sub_1C8687B6C(&a13, &a17);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0, &unk_1C86FE280);
    OUTLINED_FUNCTION_68(v68, v69, v70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4A44();
      v66 = v74;
    }

    v72 = *(v66 + 16);
    v71 = *(v66 + 24);
    if (v72 >= v71 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v71);
      OUTLINED_FUNCTION_26_0();
      sub_1C86C4A44();
      v66 = v75;
    }

    *(v66 + 16) = v72 + 1;
    v73 = v66 + 16 * v72;
    *(v73 + 32) = a11;
    *(v73 + 40) = a12;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_1C8695F0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  OUTLINED_FUNCTION_82();
  sub_1C86F908C();
  OUTLINED_FUNCTION_84();

  return 0;
}

id sub_1C869638C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  OUTLINED_FUNCTION_82();
  sub_1C86F908C();
  OUTLINED_FUNCTION_84();

  return 0;
}

void sub_1C86970BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104();
  v42 = v4;
  v43 = v5;
  sub_1C8697478(63, 0xE100000000000000, *(v6 + 16));
  v7 = OUTLINED_FUNCTION_63();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_0_3();
  sub_1C869F33C(v9, &qword_1EC2AD9C0, &unk_1C86FD6A0, v10);
  v41 = sub_1C86F8EDC();
  v12 = v11;

  v13 = sub_1C86F8EDC();
  v15 = v14;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = OUTLINED_FUNCTION_7_4();
  sub_1C869CE68(v16, v17, v18);
  v19 = 0;
  do
  {
    v20 = *(&unk_1F484E6A0 + v19 + 32);
    sub_1C86F936C();

    OUTLINED_FUNCTION_18_0();
    v44 = v21 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    MEMORY[0x1CCA7B200](v13, v15);
    MEMORY[0x1CCA7B200](0x206D6F726620, 0xE600000000000000);
    v22 = OUTLINED_FUNCTION_17_1();
    switch(v20)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_25_0();
        goto LABEL_6;
      case 2:
        v23 = OUTLINED_FUNCTION_23();
        goto LABEL_6;
      case 3:
        v23 = OUTLINED_FUNCTION_24();
LABEL_6:
        v22 = OUTLINED_FUNCTION_42_0(v23);
        break;
      default:
        break;
    }

    MEMORY[0x1CCA7B200](v22, 0xE600000000000000);

    v24 = OUTLINED_FUNCTION_5_3();
    MEMORY[0x1CCA7B200](v24);
    MEMORY[0x1CCA7B200](v42, v43);
    MEMORY[0x1CCA7B200](0x28206E6920, 0xE500000000000000);
    MEMORY[0x1CCA7B200](v41, v12);
    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
    v26 = *(v45 + 16);
    v25 = *(v45 + 24);
    if (v26 >= v25 >> 1)
    {
      v28 = OUTLINED_FUNCTION_8_1(v25);
      sub_1C869CE68(v28, v26 + 1, 1);
    }

    ++v19;
    *(v45 + 16) = v26 + 1;
    v27 = v45 + 16 * v26;
    *(v27 + 32) = v44;
    *(v27 + 40) = 0xE700000000000000;
  }

  while (v19 != 4);

  OUTLINED_FUNCTION_3_4();
  sub_1C86F8EDC();

  v30 = sub_1C8697510(v29, 4);
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = *(v30 + 16);
  while (1)
  {
    if (v33 == v31)
    {

      OUTLINED_FUNCTION_101();
      return;
    }

    if (v31 >= *(v30 + 16))
    {
      break;
    }

    v34 = *(v30 + 8 * v31 + 32);
    v35 = *(v34 + 16);
    v36 = *(v32 + 16);
    if (__OFADD__(v36, v35))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > *(v32 + 24) >> 1)
    {
      sub_1C86C4B00();
      v32 = v37;
    }

    if (*(v34 + 16))
    {
      if ((*(v32 + 24) >> 1) - *(v32 + 16) < v35)
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8, &unk_1C86FD090);
      swift_arrayInitWithCopy();

      if (v35)
      {
        v38 = *(v32 + 16);
        v39 = __OFADD__(v38, v35);
        v40 = v38 + v35;
        if (v39)
        {
          goto LABEL_29;
        }

        *(v32 + 16) = v40;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_27;
      }
    }

    ++v31;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1C8697478(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_1C86F90BC();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v6;
  }

  return result;
}

uint64_t sub_1C8697510(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA60, &qword_1C86FD180);
      v4 = sub_1C86F90BC();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

void sub_1C8697B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_104();
  a26 = v28;
  a27 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *v27;
  sub_1C8688AB8(*v27, &a11, v34, v32);
  if (!*(&a12 + 1))
  {
    goto LABEL_10;
  }

  sub_1C8689930(&a11, &a13);
  sub_1C8688AB8(v36, &a11, v35, v33);
  if (!*(&a12 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&a13);
LABEL_10:
    sub_1C869DEA8(&a11, &qword_1EC2AD810, &qword_1C86FCC90);
    sub_1C8686320(v31, &a13);

    sub_1C86938C8();
    goto LABEL_18;
  }

  sub_1C869DEA8(&a11, &qword_1EC2AD810, &qword_1C86FCC90);
  sub_1C8686320(&a13, &a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA58, &qword_1C86FD178);
  v37 = MEMORY[0x1E69E7CA0];
  v38 = MEMORY[0x1E69E7CA0] + 8;
  if (swift_dynamicCast())
  {
    *(&a12 + 1) = v38;
    OUTLINED_FUNCTION_76();
    *&a11 = swift_allocObject();
    sub_1C8686320(v31, a11 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4C68();
      a10 = v48;
    }

    v41 = *(a10 + 16);
    v40 = *(a10 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v40);
      OUTLINED_FUNCTION_86();
      sub_1C86C4C68();
      a10 = v49;
    }

    __swift_destroy_boxed_opaque_existential_0(&a13);
    *(a10 + 16) = v41 + 1;
    sub_1C8689930(&a11, (a10 + 32 * v41 + 32));
  }

  else
  {
    *(&a12 + 1) = v38;
    OUTLINED_FUNCTION_76();
    *&a11 = swift_allocObject();
    sub_1C8686320(&a13, a11 + 16);
    OUTLINED_FUNCTION_47_0();
    sub_1C86C4C68();
    v43 = v42;
    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v44);
      OUTLINED_FUNCTION_26_0();
      sub_1C86C4C68();
      v43 = v50;
    }

    *(v43 + 16) = v46;
    sub_1C8689930(&a11, (v43 + 32 * v45 + 32));
    *(&a12 + 1) = v37 + 8;
    OUTLINED_FUNCTION_76();
    *&a11 = swift_allocObject();
    sub_1C8686320(v31, a11 + 16);
    v47 = *(v43 + 24);
    if ((v45 + 2) > (v47 >> 1))
    {
      OUTLINED_FUNCTION_8_1(v47);
      OUTLINED_FUNCTION_26_0();
      sub_1C86C4C68();
      v43 = v51;
    }

    *(v43 + 16) = v45 + 2;
    sub_1C8689930(&a11, (v43 + 32 * v46 + 32));
    if ((swift_dynamicCast() & 1) == 0)
    {
      a11 = 0u;
      a12 = 0u;
    }

    sub_1C86938C8();
    __swift_destroy_boxed_opaque_existential_0(&a13);
  }

LABEL_18:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C8697F28(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR___CKPersistentStoreHandler_connection];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    swift_retain_n();

    sub_1C86A954C(1, v2, a1, &v7, v2, v1);
  }

  else
  {
    sub_1C868B6E4();
    v5 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v5, v6);
  }
}

uint64_t sub_1C8697FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v99 = a3;
  v100 = a2;
  v116 = *MEMORY[0x1E69E9840];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v98 = "delete from link";
  v101 = a1;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CA0];
  v97 = xmmword_1C86FCC70;
  v96 = xmmword_1C86FD040;
  v102 = v5;
  v103 = v9;
  while (1)
  {
    if (!v8)
    {
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v9)
        {
          v8 = 0;
          v112 = 0u;
          v113 = 0u;
          v111 = 0u;
          goto LABEL_11;
        }

        v8 = *(v5 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:

      sub_1C868B6E4();
      OUTLINED_FUNCTION_31(&type metadata for CKError);
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_106(v88, v89);

      __swift_destroy_boxed_opaque_existential_0(v107);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0(&v109);
      return __swift_destroy_boxed_opaque_existential_0(v108);
    }

    v12 = v10;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v101 + 48) + 16 * v14);
    v16 = *v15;
    v4 = v15[1];
    sub_1C8686320(*(v101 + 56) + 32 * v14, v107);
    *&v111 = v16;
    *(&v111 + 1) = v4;
    sub_1C8689930(v107, &v112);

LABEL_11:
    v114 = v111;
    v115[0] = v112;
    v115[1] = v113;
    v17 = *(&v111 + 1);
    if (!*(&v111 + 1))
    {
      break;
    }

    v18 = v114;
    sub_1C8689930(v115, &v109);
    sub_1C8686320(&v109, v108);
    sub_1C869F398(0, &qword_1ED5BC4C0, 0x1E695DFB0);
    OUTLINED_FUNCTION_11_3();
    if (swift_dynamicCast())
    {

      v19 = v100;
      v4 = *v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_8_4();
        sub_1C86C4A44();
        v4 = v84;
        *v100 = v84;
      }

      v22 = v4[2];
      v21 = v4[3];
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_8_1(v21);
        OUTLINED_FUNCTION_26_0();
        sub_1C86C4A44();
        v4 = v85;
        *v100 = v85;
      }

      v4[2] = v22 + 1;
      v23 = &v4[2 * v22];
      v23[4] = v18;
      v23[5] = v17;
      __swift_destroy_boxed_opaque_existential_0(&v109);
      __swift_destroy_boxed_opaque_existential_0(v108);
      v5 = v102;
      v9 = v103;
      v11 = MEMORY[0x1E69E7CA0];
    }

    else
    {
      OUTLINED_FUNCTION_11_3();
      v24 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        v95 = v111;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA50, &qword_1C86FD170);
        v26 = OUTLINED_FUNCTION_70(v25);
        OUTLINED_FUNCTION_10_3(v26);
        *(v27 + 56) = MEMORY[0x1E69E6158];
        v4[8] = sub_1C869F268();
        v4[4] = 0x6C6176746E69;
        OUTLINED_FUNCTION_6_3(0xE600000000000000);
        OUTLINED_FUNCTION_87();
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
        v29 = OUTLINED_FUNCTION_69(v28);
        OUTLINED_FUNCTION_15_0(v29);
        *(v30 + 64) = &off_1F4850E78;
        *(v30 + 32) = v18;
        *(v30 + 40) = v17;
        *(v30 + 96) = MEMORY[0x1E69E6530];
LABEL_22:
        *(v30 + 104) = &off_1F4850E98;
        *(v30 + 72) = v95;
        v9 = v103;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_11_3();
      if (swift_dynamicCast())
      {
        v95 = v111;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA50, &qword_1C86FD170);
        v32 = OUTLINED_FUNCTION_70(v31);
        OUTLINED_FUNCTION_10_3(v32);
        *(v33 + 56) = MEMORY[0x1E69E6158];
        v4[8] = sub_1C869F268();
        v4[4] = 0x6C6176746E69;
        v11 = OUTLINED_FUNCTION_6_3(0xE600000000000000);
        v34 = v24;
        v24 = v35;
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
        v30 = OUTLINED_FUNCTION_69(v36);
        v4 = v30;
        *(v30 + 16) = v96;
        *(v30 + 56) = MEMORY[0x1E69E6158];
        *(v30 + 64) = &off_1F4850E78;
        *(v30 + 32) = v18;
        *(v30 + 40) = v17;
        *(v30 + 96) = v34;
        goto LABEL_22;
      }

      v95 = v18;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA48, &qword_1C86FD168);
      v38 = OUTLINED_FUNCTION_11_3();
      if (OUTLINED_FUNCTION_114(v38, v39, v40))
      {
        sub_1C8687B6C(&v111, v107);
        sub_1C869F2D8(v107, &v106);
        v41 = swift_dynamicCast();
        v42 = MEMORY[0x1E69E6158];
        v9 = v103;
        if ((v41 & 1) == 0)
        {
          goto LABEL_40;
        }

        v94 = v105;
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA50, &qword_1C86FD170);
        v44 = OUTLINED_FUNCTION_70(v43);
        OUTLINED_FUNCTION_10_3(v44);
        *(v45 + 56) = v42;
        v4[8] = sub_1C869F268();
        v4[4] = 0x6C6176746E69;
        OUTLINED_FUNCTION_6_3(0xE600000000000000);
        OUTLINED_FUNCTION_87();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
        v47 = OUTLINED_FUNCTION_69(v46);
        OUTLINED_FUNCTION_15_0(v47);
        v49 = OUTLINED_FUNCTION_45_0(v48, &off_1F4850E78);
        v49[12] = MEMORY[0x1E69E7360];
        v49[13] = &off_1F4850E70;
        v49[9] = v94;
        __swift_destroy_boxed_opaque_existential_0(v107);
      }

      else
      {
        OUTLINED_FUNCTION_11_3();
        v50 = swift_dynamicCast();
        v51 = MEMORY[0x1E69E6158];
        v9 = v103;
        if (v50)
        {
          v52 = v111;
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA50, &qword_1C86FD170);
          v54 = OUTLINED_FUNCTION_70(v53);
          OUTLINED_FUNCTION_10_3(v54);
          *(v55 + 56) = v51;
          v4[8] = sub_1C869F268();
          v4[4] = 0x6C61766C616572;
          OUTLINED_FUNCTION_6_3(0xE700000000000000);
          OUTLINED_FUNCTION_87();
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
          v57 = OUTLINED_FUNCTION_69(v56);
          OUTLINED_FUNCTION_15_0(v57);
          v59 = OUTLINED_FUNCTION_45_0(v58, &off_1F4850E78);
          v59[12] = MEMORY[0x1E69E63B0];
          v59[13] = &off_1F4850E58;
          v59[9] = v52;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_11_3();
        if (swift_dynamicCast())
        {
          v92 = *(&v111 + 1);
          v94 = v111;
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA50, &qword_1C86FD170);
          v61 = OUTLINED_FUNCTION_70(v60);
          OUTLINED_FUNCTION_10_3(v61);
          *(v62 + 56) = v51;
          v4[8] = sub_1C869F268();
          v4[4] = 0x6C617674786574;
          OUTLINED_FUNCTION_6_3(0xE700000000000000);
          OUTLINED_FUNCTION_87();
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
          v64 = OUTLINED_FUNCTION_69(v63);
          OUTLINED_FUNCTION_15_0(v64);
          v65[8] = &off_1F4850E78;
          v65[4] = v95;
          v65[5] = v17;
          v65[12] = v51;
          v65[13] = &off_1F4850E78;
          v66 = v92;
          v65[9] = v94;
          v65[10] = v66;
          goto LABEL_23;
        }

        v67 = objc_opt_self();
        __swift_project_boxed_opaque_existential_0(&v109, v110);
        v68 = sub_1C86F947C();
        *&v111 = 0;
        v69 = [v67 archivedDataWithRootObject:v68 requiringSecureCoding:1 error:&v111];
        swift_unknownObjectRelease();
        v70 = v111;
        if (!v69)
        {
          v90 = v70;

          sub_1C86F8BAC();

          swift_willThrow();

          goto LABEL_42;
        }

        v71 = sub_1C86F8CAC();
        v94 = v72;

        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA50, &qword_1C86FD170);
        v74 = OUTLINED_FUNCTION_70(v73);
        OUTLINED_FUNCTION_10_3(v74);
        v75 = MEMORY[0x1E69E6158];
        *(v76 + 56) = MEMORY[0x1E69E6158];
        v69[8] = sub_1C869F268();
        v69[4] = 0x6C6176626F6C62;
        v92 = OUTLINED_FUNCTION_6_3(0xE700000000000000);
        v24 = v77;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
        v4 = OUTLINED_FUNCTION_69(v78);
        v91[1] = v91;
        *(v4 + 1) = v96;
        v4[7] = v75;
        v79 = OUTLINED_FUNCTION_45_0(v4, &off_1F4850E78);
        MEMORY[0x1EEE9AC00](v79);
        v80 = v71;
        v91[-2] = v71;
        v81 = v94;
        v91[-1] = v94;
        v82 = v104;
        sub_1C86F8C8C();
        v104 = v82;
        v83 = v111;
        v4[12] = &type metadata for Blob;
        v11 = v92;
        v4[13] = &off_1F4850EA0;
        v4[9] = v83;
        sub_1C868BED4(v80, v81);
      }

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(v108);
      v37 = v104;
      sub_1C86A90CC(v11, v24, v4);
      v104 = v37;
      if (v37)
      {

        return __swift_destroy_boxed_opaque_existential_0(&v109);
      }

      __swift_destroy_boxed_opaque_existential_0(&v109);
      v5 = v102;
      v11 = MEMORY[0x1E69E7CA0];
    }
  }

  if (*(*v100 + 16))
  {

    sub_1C8698DC0(v87);
  }

  return result;
}

uint64_t sub_1C8698A20(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    OUTLINED_FUNCTION_28_0();
    swift_retain_n();

    OUTLINED_FUNCTION_49();
    sub_1C86A9154();
  }

  else
  {
    sub_1C868B6E4();
    v4 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v4, v5);
  }
}

uint64_t sub_1C8698AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = MEMORY[0x1E69E7CC0];
  v4 = OUTLINED_FUNCTION_7_4();
  sub_1C869CE68(v4, v5, v6);
  v7 = 0;
  do
  {
    v8 = *(&unk_1F484E6A0 + v7 + 32);
    sub_1C86F936C();

    OUTLINED_FUNCTION_27_0();
    v28 = v9;
    OUTLINED_FUNCTION_51();
    v29 = v10;
    v11 = 0xE600000000000000;
    v12 = OUTLINED_FUNCTION_17_1();
    switch(v8)
    {
      case 1:
        v11 = 0xE700000000000000;
        v13 = OUTLINED_FUNCTION_32_0();
        goto LABEL_6;
      case 2:
        v11 = 0xE700000000000000;
        v13 = OUTLINED_FUNCTION_31_0();
        goto LABEL_6;
      case 3:
        v11 = 0xE700000000000000;
        v13 = OUTLINED_FUNCTION_30_0();
LABEL_6:
        v12 = OUTLINED_FUNCTION_42_0(v13);
        break;
      default:
        break;
    }

    MEMORY[0x1CCA7B200](v12, v11);

    v14 = OUTLINED_FUNCTION_85();
    result = MEMORY[0x1CCA7B200](v14, 0xEC0000003F203D20);
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = OUTLINED_FUNCTION_8_1(v16);
      result = sub_1C869CE68(v19, v17 + 1, 1);
    }

    ++v7;
    *(v30 + 16) = v17 + 1;
    v18 = v30 + 16 * v17;
    *(v18 + 32) = v28;
    *(v18 + 40) = v29;
  }

  while (v7 != 4);
  v20 = 0;
  v21 = v30 + 40;
  v22 = v17 + 1;
  while (1)
  {
    if (v22 == v20)
    {
    }

    if (v20 >= *(v30 + 16))
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C86FCC70;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F4850E78;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v24 = OUTLINED_FUNCTION_62();
    sub_1C86A90CC(v24, v25, inited);
    if (v3)
    {

      swift_setDeallocating();
      return sub_1C869C874();
    }

    ++v20;
    swift_setDeallocating();
    result = sub_1C869C874();
    v21 += 16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8698DC0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    v4 = v2;
    v5 = *(a1 + 16);

    sub_1C8697478(63, 0xE100000000000000, v5);
    v6 = OUTLINED_FUNCTION_62();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_0_3();
    sub_1C869F33C(v8, &qword_1EC2AD9C0, &unk_1C86FD6A0, v9);
    v42 = sub_1C86F8EDC();
    v43 = v10;

    v11 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v44 = MEMORY[0x1E69E7CC0];
      sub_1C869CF48(0, v5, 0);
      v12 = v44;
      v13 = (a1 + 40);
      do
      {
        v15 = *(v13 - 1);
        v14 = *v13;
        v17 = *(v44 + 16);
        v16 = *(v44 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_1C869CF48((v16 > 1), v17 + 1, 1);
        }

        *(v44 + 16) = v17 + 1;
        v18 = (v44 + 40 * v17);
        v18[4] = v15;
        v18[5] = v14;
        v18[7] = MEMORY[0x1E69E6158];
        v18[8] = &off_1F4850E78;
        v13 += 2;
        --v5;
      }

      while (v5);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v47 = v11;
    v22 = OUTLINED_FUNCTION_7_4();
    sub_1C869CE68(v22, v23, v24);
    v25 = 0;
    do
    {
      sub_1C86F936C();

      OUTLINED_FUNCTION_27_0();
      v45 = v26;
      OUTLINED_FUNCTION_51();
      v46 = v27;
      v28 = 0xE600000000000000;
      v29 = OUTLINED_FUNCTION_14_1();
      switch(v30)
      {
        case 1:
          v28 = 0xE700000000000000;
          v31 = OUTLINED_FUNCTION_32_0();
          goto LABEL_15;
        case 2:
          v28 = 0xE700000000000000;
          v31 = OUTLINED_FUNCTION_31_0();
          goto LABEL_15;
        case 3:
          v28 = 0xE700000000000000;
          v31 = OUTLINED_FUNCTION_30_0();
LABEL_15:
          v29 = OUTLINED_FUNCTION_42_0(v31);
          break;
        default:
          break;
      }

      MEMORY[0x1CCA7B200](v29, v28);

      v32 = OUTLINED_FUNCTION_85();
      MEMORY[0x1CCA7B200](v32, 0xED000028206E6920);
      MEMORY[0x1CCA7B200](v42, v43);
      MEMORY[0x1CCA7B200](41, 0xE100000000000000);
      v34 = v47[2];
      v33 = v47[3];
      if (v34 >= v33 >> 1)
      {
        v36 = OUTLINED_FUNCTION_8_1(v33);
        sub_1C869CE68(v36, v34 + 1, 1);
      }

      ++v25;
      v47[2] = v34 + 1;
      v35 = &v47[2 * v34];
      v35[4] = v45;
      v35[5] = v46;
    }

    while (v25 != 4);

    v37 = 0;
    v38 = v47[2];
    for (i = v47 + 5; ; i += 2)
    {
      if (v38 == v37)
      {
        goto LABEL_25;
      }

      if (v37 >= v47[2])
      {
        break;
      }

      v40 = *(i - 1);
      v41 = *i;

      sub_1C86A90CC(v40, v41, v12);
      if (v4)
      {

LABEL_25:
      }

      ++v37;
    }

    __break(1u);
  }

  else
  {
    sub_1C868B6E4();
    v19 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v19, v20);
  }

  return result;
}

uint64_t sub_1C8699148(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR___CKPersistentStoreHandler_connection];
  if (v2)
  {
    v4 = v1;

    sub_1C86A92AC(1, v2, v4, a1);
  }

  else
  {
    sub_1C868B6E4();
    v6 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v6, v7);
  }
}

void sub_1C86992AC(uint64_t a1)
{
  OUTLINED_FUNCTION_103();
  if (!*(v1 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    sub_1C868B6E4();
    v4 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_3(v4, v5);
LABEL_22:
    OUTLINED_FUNCTION_102();
    return;
  }

  v3 = MEMORY[0x1E69E7CC0];
  sub_1C86A90CC(0xD000000000000021, 0x80000001C86FFA90, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
LABEL_21:

    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_7_4();
  sub_1C869CE68(v6, v7, v8);
  v9 = 0;
  do
  {
    sub_1C86F936C();

    OUTLINED_FUNCTION_27_0();
    v25 = v10;
    OUTLINED_FUNCTION_51();
    v26 = v11;
    v12 = 0xE600000000000000;
    v13 = OUTLINED_FUNCTION_14_1();
    switch(v14)
    {
      case 1:
        v12 = 0xE700000000000000;
        v15 = OUTLINED_FUNCTION_32_0();
        goto LABEL_10;
      case 2:
        v12 = 0xE700000000000000;
        v15 = OUTLINED_FUNCTION_31_0();
        goto LABEL_10;
      case 3:
        v12 = 0xE700000000000000;
        v15 = OUTLINED_FUNCTION_30_0();
LABEL_10:
        v13 = OUTLINED_FUNCTION_42_0(v15);
        break;
      default:
        break;
    }

    MEMORY[0x1CCA7B200](v13, v12);

    v16 = OUTLINED_FUNCTION_5_3();
    MEMORY[0x1CCA7B200](v16);
    v17 = sub_1C86B9470();
    MEMORY[0x1CCA7B200](v17);

    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      v21 = OUTLINED_FUNCTION_8_1(v18);
      sub_1C869CE68(v21, v19 + 1, 1);
    }

    ++v9;
    *(v3 + 16) = v19 + 1;
    v20 = v3 + 16 * v19;
    *(v20 + 32) = v25;
    *(v20 + 40) = v26;
  }

  while (v9 != 4);
  v22 = 0;
  for (i = v3 + 40; ; i += 16)
  {
    if (v19 + 1 == v22)
    {
      goto LABEL_20;
    }

    if (v22 >= *(v3 + 16))
    {
      break;
    }

    v24 = *(i - 8);

    OUTLINED_FUNCTION_73();
    if (v24)
    {

LABEL_20:

      goto LABEL_21;
    }

    ++v22;
  }

  __break(1u);
}

uint64_t sub_1C8699500(void *a1)
{
  v2 = *&v1[OBJC_IVAR___CKPersistentStoreHandler_connection];
  if (v2)
  {
    v4 = v1;
    v5 = a1;

    sub_1C86A93FC(1, v2, v4, v5);
  }

  else
  {
    sub_1C868B6E4();
    v7 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v7, v8);
  }
}

uint64_t sub_1C8699654(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    OUTLINED_FUNCTION_28_0();
    swift_retain_n();
    v2 = OUTLINED_FUNCTION_49();
    sub_1C86A9D34(v2, v3, v4);
  }

  else
  {
    sub_1C868B6E4();
    v6 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v6, v7);
  }
}

void sub_1C86996C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_103();
  a22 = v24;
  a23 = v25;
  v26 = v23;
  a13 = MEMORY[0x1E69E7CC0];
  v27 = OUTLINED_FUNCTION_7_4();
  sub_1C869CE68(v27, v28, v29);
  v30 = 0;
  v31 = a13;
  do
  {
    v32 = *(&unk_1F484E6A0 + v30 + 32);
    strcpy(&a11, "delete from ");
    BYTE13(a11) = 0;
    HIWORD(a11) = -5120;
    v33 = 0x6C6176746E69;
    switch(v32)
    {
      case 1:
        v34 = OUTLINED_FUNCTION_25_0();
        goto LABEL_6;
      case 2:
        v34 = OUTLINED_FUNCTION_23();
        goto LABEL_6;
      case 3:
        v34 = OUTLINED_FUNCTION_24();
LABEL_6:
        v33 = OUTLINED_FUNCTION_42_0(v34);
        break;
      default:
        break;
    }

    MEMORY[0x1CCA7B200](v33, 0xE600000000000000);

    v35 = a11;
    a13 = v31;
    v37 = v31[2];
    v36 = v31[3];
    if (v37 >= v36 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v36);
      OUTLINED_FUNCTION_36_0();
      sub_1C869CE68(v38, v39, v40);
      v31 = a13;
    }

    ++v30;
    v31[2] = v37 + 1;
    *&v31[2 * v37 + 4] = v35;
  }

  while (v30 != 4);
  v41 = 0;
  v42 = v31 + 5;
  v43 = v37 + 1;
  while (1)
  {
    if (v43 == v41)
    {

      sub_1C86A90CC(0xD000000000000010, 0x80000001C86FFD70, MEMORY[0x1E69E7CC0]);
      if (!v26)
      {
LABEL_18:
      }

      OUTLINED_FUNCTION_102();
      return;
    }

    if (v41 >= v31[2])
    {
      break;
    }

    v44 = *(v42 - 1);

    OUTLINED_FUNCTION_73();
    v26 = v44;
    if (v44)
    {

      goto LABEL_18;
    }

    ++v41;
    v42 += 2;
  }

  __break(1u);
}

void sub_1C8699924(char *a1)
{
  if (*(v1 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    v4 = 0xD000000000000018;
    v39 = MEMORY[0x1E69E7CD0];

    sub_1C86A90CC(0xD000000000000021, 0x80000001C86FFA90, MEMORY[0x1E69E7CC0]);
    if (v2)
    {
    }

    else
    {

      v7 = 0x80000001C86FFAC0;
      v37 = 0xD000000000000018;
      v38 = 0x80000001C86FFAC0;
      if (a1)
      {
        v35[0] = 0x20657265687720;
        v35[1] = 0xE700000000000000;
        v8 = *&a1[OBJC_IVAR___CKTripleCondition_rawCondition];
        v9 = a1;
        v10 = v8;
        v11 = sub_1C86B9470();
        v13 = v12;

        MEMORY[0x1CCA7B200](v11, v13);

        MEMORY[0x1CCA7B200](0x20657265687720, 0xE700000000000000);

        v4 = v37;
        v7 = v38;
      }

      v14 = sub_1C86A9000(v4, v7, MEMORY[0x1E69E7CC0]);

      sub_1C86D49F8(0);

      while (1)
      {
        sub_1C86C4548();
        if (!v15)
        {

          sub_1C869CDA8(v39, sub_1C86B8174, sub_1C86D5E04);
          OUTLINED_FUNCTION_58();

          return;
        }

        OUTLINED_FUNCTION_77();
        if (v16 < 2)
        {
          __break(1u);
          return;
        }

        sub_1C869CE88(v14 + 72, v35, &qword_1EC2AD9C8, &unk_1C86FD090);
        if (!v36)
        {

          sub_1C869DEA8(v35, &qword_1EC2AD9C8, &unk_1C86FD090);
          goto LABEL_18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0, &unk_1C86FE280);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v35[0] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D8, &unk_1C86FD0A0);
        OUTLINED_FUNCTION_67();
        sub_1C869F33C(v17, v18, v19, v20);
        sub_1C86F8CBC();
        objc_allocWithZone(MEMORY[0x1E696ACD0]);
        v21 = OUTLINED_FUNCTION_81();
        sub_1C868BE68(v21, v22);
        v23 = OUTLINED_FUNCTION_81();
        v25 = sub_1C869C600(v23, v24);
        type metadata accessor for CKTriple();
        sub_1C86F8EFC();
        v26 = sub_1C86F920C();

        if (v26)
        {
          sub_1C869E05C(v35, v26, type metadata accessor for CKTriple, &qword_1EC2ADA40, &qword_1C86FD160, type metadata accessor for CKTriple);
        }

        [v25 finishDecoding];

        v27 = OUTLINED_FUNCTION_81();
        sub_1C868BED4(v27, v28);
      }

LABEL_18:
      sub_1C868B6E4();
      OUTLINED_FUNCTION_31(&type metadata for CKError);
      v30 = v29;
      sub_1C869CE88(v14 + 72, v35, &qword_1EC2AD9C8, &unk_1C86FD090);

      v31 = v36;
      if (v36)
      {
        v32 = __swift_project_boxed_opaque_existential_0(v35, v36);
        *(v30 + 24) = v31;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
        (*(*(v31 - 8) + 16))(boxed_opaque_existential_0, v32, v31);
        __swift_destroy_boxed_opaque_existential_0(v35);
      }

      else
      {
        sub_1C869DEA8(v35, &qword_1EC2AD9C8, &unk_1C86FD090);
        *v30 = 0u;
        *(v30 + 16) = 0u;
      }

      *(v30 + 32) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1C868B6E4();
    v5 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_3(v5, v6);
  }
}

uint64_t sub_1C8699F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + OBJC_IVAR___CKPersistentStoreHandler_connection);
  if (v9)
  {

    v16 = OUTLINED_FUNCTION_37_0();
    sub_1C86AC7C0(v16, v17, v18, v19, v20, v21, 4);
    v72 = a4;
    v73 = a5;
    v23 = v22;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
    inited = swift_initStackObject();
    v27 = a1;
    v28 = inited;
    v29 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1C86FD050;
    *(inited + 56) = v29;
    *(inited + 64) = &off_1F4850E78;
    *(inited + 32) = v23;
    *(inited + 40) = v25;
    v31 = v72;
    v30 = v73;
    *(inited + 96) = v29;
    *(inited + 104) = &off_1F4850E78;
    v70 = v27;
    v71 = a3;
    *(inited + 72) = a3;
    *(inited + 80) = v72;
    *(inited + 136) = v29;
    *(inited + 144) = &off_1F4850E78;
    *(inited + 112) = v27;
    *(inited + 120) = a2;
    *(inited + 176) = v29;
    *(inited + 184) = &off_1F4850E78;
    v32 = MEMORY[0x1E69E6530];
    *(inited + 152) = v73;
    *(inited + 160) = a6;
    *(inited + 216) = v32;
    *(inited + 224) = &off_1F4850E98;
    *(inited + 192) = a7;

    sub_1C86A99C0(1, v9, v9, 0xD00000000000005ALL, 0x80000001C86FFAE0, v28);
    v33 = v8;
    if (v8)
    {

      swift_setDeallocating();
      return sub_1C869C874();
    }

    else
    {
      swift_setDeallocating();
      sub_1C869C874();
      v69 = type metadata accessor for CKTriple();
      v37 = objc_allocWithZone(v69);

      v38 = OUTLINED_FUNCTION_37_0();
      v68 = CKTriple.init(subject:predicate:object:weight:)(v38, v39, v40, v41, v42, v43, a7);
      v44 = MEMORY[0x1E69E7CC8];
      v45 = a3;
      v46 = a2;
      v47 = v70;
      while (1)
      {
        v48 = v31;
        v49 = a6;
        sub_1C86AC7C0(v45, v48, v47, v46, v30, a6, byte_1F484E678[v33 + 32]);
        v51 = v50;
        v53 = v52;
        v76 = v69;
        *&v75 = v68;
        sub_1C8689930(&v75, v74);
        v66 = v68;
        swift_isUniquelyReferenced_nonNull_native();
        v77 = v44;
        v54 = sub_1C869C918(v51, v53);
        if (__OFADD__(v44[2], (v55 & 1) == 0))
        {
          break;
        }

        v56 = v54;
        v57 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0, &qword_1C86FCD00);
        if (sub_1C86F93FC())
        {
          v58 = sub_1C869C918(v51, v53);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_18;
          }

          v56 = v58;
        }

        v44 = v77;
        if (v57)
        {
          v60 = (v77[7] + 32 * v56);
          __swift_destroy_boxed_opaque_existential_0(v60);
          sub_1C8689930(v74, v60);
        }

        else
        {
          OUTLINED_FUNCTION_52(&v77[v56 >> 6]);
          v61 = (v44[6] + 16 * v56);
          *v61 = v51;
          v61[1] = v53;
          sub_1C8689930(v74, (v44[7] + 32 * v56));
          v62 = v44[2];
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
            goto LABEL_17;
          }

          v44[2] = v64;
        }

        ++v33;
        a6 = v49;
        v31 = v72;
        v30 = v73;
        v47 = v70;
        v45 = v71;
        v46 = a2;
        if (v33 == 6)
        {
          OUTLINED_FUNCTION_3_1();
          (*(v65 + 192))(v44);
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_1C86F94BC();
      __break(1u);
    }
  }

  else
  {
    sub_1C868B6E4();
    v35 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v35, v36);
  }

  return result;
}

void sub_1C869A420()
{
  OUTLINED_FUNCTION_107();
  v7 = v0;
  v8 = *(v0 + OBJC_IVAR___CKPersistentStoreHandler_connection);
  if (!v8)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v27 = sub_1C86F8DBC();
    OUTLINED_FUNCTION_83(v27, qword_1ED5BC790);
    v28 = sub_1C86F8DAC();
    v29 = sub_1C86F912C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_61(v30);
      OUTLINED_FUNCTION_111(&dword_1C8683000, v31, v32, "connection not ready");
      OUTLINED_FUNCTION_29_0();
    }

LABEL_13:
    OUTLINED_FUNCTION_108();
    return;
  }

  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  v103 = v7;

  sub_1C86AC7C0(v12, v11, v14, v13, v10, v9, 4);
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C86FD050;
  v20 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F4850E78;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  *(inited + 96) = v20;
  *(inited + 104) = &off_1F4850E78;
  v112 = v12;
  *(inited + 72) = v12;
  *(inited + 80) = v11;
  *(inited + 136) = v20;
  *(inited + 144) = &off_1F4850E78;
  *(inited + 112) = v14;
  *(inited + 120) = v13;
  *(inited + 176) = v20;
  *(inited + 184) = &off_1F4850E78;
  *(inited + 152) = v10;
  *(inited + 160) = v9;
  *(inited + 216) = v20;
  *(inited + 224) = &off_1F4850E78;
  *(inited + 192) = v16;
  *(inited + 200) = v18;
  swift_bridgeObjectRetain_n();

  v21 = OUTLINED_FUNCTION_49();
  sub_1C86A99C0(v21, v22, v23, v24, v25, inited);
  v26 = 0;
  v108 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD998, &unk_1C86FD0B0);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1C86FCC70;
  *(v33 + 32) = v16;
  *(v33 + 40) = v18;
  v34 = sub_1C8693D30(v33);
  sub_1C86A9000(0xD000000000000023, 0x80000001C86FFBD0, MEMORY[0x1E69E7CC0]);
  sub_1C86D452C(v34);

  sub_1C86D49F8(0);
  for (i = MEMORY[0x1E69E7CC0]; ; *(i + 8 * v26 + 32) = v43)
  {
    sub_1C86C4548();
    if (!v42)
    {
      break;
    }

    if (!*(v42 + 16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
LABEL_9:
      v35 = sub_1C86F8DBC();
      OUTLINED_FUNCTION_83(v35, qword_1ED5BC790);
      v36 = v26;
      v37 = sub_1C86F8DAC();
      v38 = sub_1C86F912C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v117 = v40;
        *v39 = 136315138;
        swift_getErrorValue();
        sub_1C86F94EC();
        v41 = sub_1C8685FDC();

        *(v39 + 4) = v41;
        _os_log_impl(&dword_1C8683000, v37, v38, "SQL error %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }

      goto LABEL_13;
    }

    sub_1C869CE88(v42 + 32, &v115, &qword_1EC2AD9C8, &unk_1C86FD090);
    if (!v116)
    {
      goto LABEL_43;
    }

    sub_1C8687B6C(&v115, &v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0, &unk_1C86FE280);
    swift_dynamicCast();
    v43 = v119;
    v44 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4D28();
      v44 = v46;
    }

    v26 = *(v44 + 16);
    v45 = *(v44 + 24);
    i = v44;
    if (v26 >= v45 >> 1)
    {
      OUTLINED_FUNCTION_8_1(v45);
      OUTLINED_FUNCTION_36_0();
      sub_1C86C4D28();
      i = v47;
    }

    *(i + 16) = v26 + 1;
  }

  swift_setDeallocating();
  sub_1C869C8D4();
  if (*(i + 16))
  {
    v48 = *(i + 32);
    v105 = type metadata accessor for CKTriple();
    v49 = objc_allocWithZone(v105);

    v58 = OUTLINED_FUNCTION_79(v50, v51, v52, v53, v54, v55, v56, v57, v99, v8, 0, v103, v105, v9, v108, v11, v14, v112);
    v63 = CKTriple.init(subject:predicate:object:weight:)(v58, v59, v60, v61, v62, v9, v48);
    v70 = v63;
    v71 = 0;
    v72 = MEMORY[0x1E69E7CC8];
    do
    {
      v73 = OUTLINED_FUNCTION_79(v63, v64, v65, v66, v67, v68, byte_1F484E678[v71 + 32], v69, v100, v101, v102, v104, v106, v107, v109, v110, v111, v113);
      sub_1C86AC7C0(v73, v74, v75, v76, v77, v107, v78);
      v80 = v79;
      v82 = v81;
      v118 = v106;
      *&v117 = v70;
      sub_1C8689930(&v117, &v115);
      v83 = v70;
      swift_isUniquelyReferenced_nonNull_native();
      v119 = v72;
      v84 = OUTLINED_FUNCTION_13();
      v86 = sub_1C869C918(v84, v85);
      if (__OFADD__(v72[2], (v87 & 1) == 0))
      {
        __break(1u);
        goto LABEL_38;
      }

      v26 = v86;
      v88 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0, &qword_1C86FCD00);
      if (sub_1C86F93FC())
      {
        v89 = OUTLINED_FUNCTION_13();
        v91 = sub_1C869C918(v89, v90);
        if ((v88 & 1) != (v92 & 1))
        {
          goto LABEL_44;
        }

        v26 = v91;
      }

      v72 = v119;
      if (v88)
      {
        v93 = (v119[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_0(v93);
        sub_1C8689930(&v115, v93);
      }

      else
      {
        OUTLINED_FUNCTION_52(&v119[v26 >> 6]);
        v94 = (v72[6] + 16 * v26);
        *v94 = v80;
        v94[1] = v82;
        v63 = sub_1C8689930(&v115, (v72[7] + 32 * v26));
        v95 = v72[2];
        v96 = __OFADD__(v95, 1);
        v97 = v95 + 1;
        if (v96)
        {
          goto LABEL_39;
        }

        v72[2] = v97;
      }

      ++v71;
    }

    while (v71 != 6);
    OUTLINED_FUNCTION_3_1();
    (*(v98 + 192))(v72);
    if (v102)
    {
      v26 = v102;

      if (qword_1ED5BC708 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_9;
    }

    if (!*(i + 16))
    {
      goto LABEL_42;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_1C86F94BC();
  __break(1u);
}

uint64_t sub_1C869ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    OUTLINED_FUNCTION_44_0();
    v13 = v12;
    type metadata accessor for CKPersistentStoreHandler();
    OUTLINED_FUNCTION_57();

    v14 = sub_1C869B300(v13, v9, v8, v7, a5, a6);
    v16 = v15;
    v56 = v13;
    v18 = v17;
    v62[0] = 0;
    v62[1] = 0xE000000000000000;
    sub_1C86F936C();
    MEMORY[0x1CCA7B200](0xD000000000000034, 0x80000001C86FFC00);
    MEMORY[0x1CCA7B200](v14, v16);
    sub_1C86A9000(0, 0xE000000000000000, MEMORY[0x1E69E7CC0]);
    v55 = v9;
    sub_1C86D452C(v18);

    sub_1C86D49F8(0);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = &unk_1C86FD090;
    v54 = a6;
    while (1)
    {
      sub_1C86C4548();
      if (!v28)
      {

        if (*(v26 + 16))
        {
          v22 = *(v26 + 32);

          return v22;
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      v29 = v28;
      v30 = OUTLINED_FUNCTION_13();
      sub_1C86AC7C0(v30, v31, v56, v55, a5, a6, 4);
      if (*(v29 + 16) < 3uLL)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      result = sub_1C869CE88(v29 + 112, &v60, &qword_1EC2AD9C8, &unk_1C86FD090);
      if (!v61)
      {
        goto LABEL_44;
      }

      sub_1C8687B6C(&v60, v62);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0, &unk_1C86FE280);
      swift_dynamicCast();
      v27 = v58;
      a5 = v59;
      sub_1C869CE88(v29 + 72, v62, &qword_1EC2AD9C8, &unk_1C86FD090);
      if (!v62[3])
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      v34 = v60;
      if (v60 < 2)
      {
        goto LABEL_20;
      }

      v35 = v57;
      v36 = v34 - 1;
      v37 = OUTLINED_FUNCTION_95();
      a6 = v54;
      v38(v37);
      if (v58)
      {

LABEL_33:

        if (qword_1ED5BC708 == -1)
        {
          goto LABEL_34;
        }

LABEL_42:
        OUTLINED_FUNCTION_0(&qword_1ED5BC708);
LABEL_34:
        v47 = sub_1C86F8DBC();
        __swift_project_value_buffer(v47, qword_1ED5BC790);
        v48 = OUTLINED_FUNCTION_57();
        v49 = sub_1C86F8DAC();
        v50 = sub_1C86F912C();

        if (os_log_type_enabled(v49, v50))
        {
          v22 = -1;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v62[0] = v52;
          *v51 = 136315138;
          swift_getErrorValue();
          sub_1C86F94EC();
          v53 = sub_1C8685FDC();

          *(v51 + 4) = v53;
          _os_log_impl(&dword_1C8683000, v49, v50, "SQL error %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          OUTLINED_FUNCTION_11_1();
          OUTLINED_FUNCTION_11_1();

          return v22;
        }

        return -1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_4();
        sub_1C86C4D28();
      }

      OUTLINED_FUNCTION_39();
      if (v41)
      {
        OUTLINED_FUNCTION_8_1(v40);
        OUTLINED_FUNCTION_38();
        sub_1C86C4D28();
        v39 = v42;
      }

LABEL_28:
      v27 = &unk_1C86FD090;
      v26 = v39;
      *(v39 + 16) = v33;
      *(v39 + 8 * v35 + 32) = v36;
    }

    sub_1C869DEA8(v62, &qword_1EC2AD9C8, &unk_1C86FD090);
LABEL_20:
    if (*(v29 + 16) < 4uLL)
    {
      goto LABEL_41;
    }

    result = sub_1C869CE88(v29 + 152, &v60, &qword_1EC2AD9C8, &unk_1C86FD090);
    if (!v61)
    {
      goto LABEL_45;
    }

    sub_1C8687B6C(&v60, v62);
    swift_dynamicCast();
    v35 = v57;
    v33 = v59;
    v43 = OUTLINED_FUNCTION_95();
    v44(v43);
    a6 = v54;
    if (v58)
    {

      goto LABEL_33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_4();
      sub_1C86C4D28();
    }

    OUTLINED_FUNCTION_39();
    if (v41)
    {
      OUTLINED_FUNCTION_8_1(v45);
      OUTLINED_FUNCTION_38();
      sub_1C86C4D28();
      v39 = v46;
    }

    v36 = 0;
    goto LABEL_28;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v19 = sub_1C86F8DBC();
  OUTLINED_FUNCTION_83(v19, qword_1ED5BC790);
  v20 = sub_1C86F8DAC();
  v21 = sub_1C86F912C();
  if (!os_log_type_enabled(v20, v21))
  {

    return -1;
  }

  v22 = -1;
  v23 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61(v23);
  OUTLINED_FUNCTION_111(&dword_1C8683000, v24, v25, "connection not ready");
  OUTLINED_FUNCTION_29_0();

  return v22;
}

uint64_t sub_1C869B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_1C86AC7C0(a3, a4, a1, a2, a5, a6, 4);
    v11 = v10;
    v13 = v12;
    sub_1C86C4B00();
    v15 = v14;
    v16 = *(v14 + 16);
    if (v16 >= *(v14 + 24) >> 1)
    {
      sub_1C86C4B00();
      v15 = v21;
    }

    *(v15 + 16) = v16 + 1;
    v17 = (v15 + 40 * v16);
    v17[4] = v11;
    v17[5] = v13;
    v17[7] = MEMORY[0x1E69E6158];
    v17[8] = &off_1F4850E78;
    return 0x3F203D206469;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C86FD040;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = &off_1F4850E78;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    *(v19 + 96) = v20;
    *(v19 + 104) = &off_1F4850E78;
    *(v19 + 72) = a5;
    *(v19 + 80) = a6;

    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C869B484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1C86F8EFC();
  v10 = v9;
  v11 = sub_1C86F8EFC();
  v13 = v12;
  v14 = sub_1C86F8EFC();
  v16 = v15;
  v17 = a1;
  v18 = a6(v8, v10, v11, v13, v14, v16);

  return v18;
}

void sub_1C869B548(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  if (*(v6 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    v9 = v7;

    OUTLINED_FUNCTION_64();
    v35 = a1;
    OUTLINED_FUNCTION_66();
    v36 = a5;
    sub_1C86AC7C0(v14, v15, v16, v17, a5, a6, 4);
    v19 = v18;
    v21 = v20;

    v22 = OUTLINED_FUNCTION_50();
    sub_1C86A9BA0(v22, v23, v24, 0xD00000000000001DLL, v25, v19, v21);
    if (v9)
    {
    }

    else
    {

      v28 = objc_allocWithZone(type metadata accessor for CKTripleCondition());
      OUTLINED_FUNCTION_84();

      v29 = OUTLINED_FUNCTION_64();
      CKTripleCondition.init(subject:predicate:object:)(v29, v30, v35, a2, v36, a6);
      v32 = v31;
      v33 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xE8);
      v34 = *&v31[OBJC_IVAR___CKTripleCondition_rawCondition];
      v33();
    }
  }

  else
  {
    sub_1C868B6E4();
    v26 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_3(v26, v27);
  }
}

uint64_t sub_1C869B71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C86FCC70;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F4850E78;
  *(inited + 32) = v6;
  *(inited + 40) = a5;

  sub_1C86A90CC(v8, v7, inited);
  if (!v5)
  {
  }

  swift_setDeallocating();
  return sub_1C869C874();
}

uint64_t sub_1C869B8E8(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    sub_1C868B6E4();
    v24 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    return OUTLINED_FUNCTION_4_3(v24, v25);
  }

  v8 = a3;
  if (a2)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    v11 = sub_1C86F900C();

    v12 = MEMORY[0x1CCA7B260](v8, a4);
    v14 = __OFADD__(v11, v12);
    v15 = v11 + v12;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v16 = MEMORY[0x1CCA7B260](a1, a2);
      v14 = __OFADD__(v15, v16);
      v17 = v15 + v16;
      if (!v14)
      {
        v18 = sub_1C86F900C();
        v13 = 0x4000000000000000;
        if (v18 + 0x4000000000000000 >= 0)
        {
          v14 = __OFADD__(v17, 2 * v18);
          v19 = v17 + 2 * v18;
          if (!v14)
          {
            v6 = 0xE90000000000003FLL;
            v42 = 0x20656B696C206469;
            MEMORY[0x1CCA7B1D0](v19);
            MEMORY[0x1CCA7B200](7304048, 0xE300000000000000);
            MEMORY[0x1CCA7B200](14906, 0xE200000000000000);
            MEMORY[0x1CCA7B200](v8, a4);
            MEMORY[0x1CCA7B200](14906, 0xE200000000000000);
            MEMORY[0x1CCA7B200](a1, a2);
            v5 = v45;

            v4 = &v44;
            MEMORY[0x1CCA7B200](37, 0xE100000000000000);

            v8 = v44;
            v20 = v45;
            OUTLINED_FUNCTION_47_0();
            sub_1C86C4B00();
            OUTLINED_FUNCTION_88();
            if (v22)
            {
              OUTLINED_FUNCTION_8_1(v21);
              OUTLINED_FUNCTION_86();
              sub_1C86C4B00();
              v5 = v23;
            }

            goto LABEL_13;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v6 = 0xEB000000003F203DLL;
  v42 = 0x207463656A627573;

  OUTLINED_FUNCTION_47_0();
  sub_1C86C4B00();
  OUTLINED_FUNCTION_88();
  if (v22)
  {
LABEL_21:
    OUTLINED_FUNCTION_8_1(v13);
    OUTLINED_FUNCTION_86();
    sub_1C86C4B00();
    v5 = v39;
  }

  v20 = a4;
LABEL_13:
  *(v5 + 16) = v4;
  v27 = (v5 + 40 * a1);
  v27[4] = v8;
  v27[5] = v20;
  v27[7] = MEMORY[0x1E69E6158];
  v27[8] = &off_1F4850E78;
  v46 = v5;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C86F936C();

  OUTLINED_FUNCTION_78();
  v44 = 0xD000000000000017;
  v45 = v28;
  MEMORY[0x1CCA7B200](v42, v6);

  v30 = v44;
  v29 = v45;

  v31 = OUTLINED_FUNCTION_50();
  sub_1C86A9E70(v31, v32, v33, v30, v29, v34);

  if (v43)
  {
  }

  else
  {
    v35 = objc_allocWithZone(type metadata accessor for CKTripleCondition());
    OUTLINED_FUNCTION_58();

    CKTripleCondition.init(subject:predicate:object:)(a3, a4, a1, a2, 0, 0);
    v37 = v36;
    v38 = *&v36[OBJC_IVAR___CKTripleCondition_rawCondition];
    sub_1C86992AC(v38);
  }
}

uint64_t sub_1C869BC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;

  sub_1C86A90CC(a2, a3, v7);

  if (!v4)
  {
  }

  return result;
}

void sub_1C869BDD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_103();
  if (*(v2 + OBJC_IVAR___CKPersistentStoreHandler_connection))
  {
    OUTLINED_FUNCTION_44_0();
    v8 = v7;
    type metadata accessor for CKPersistentStoreHandler();

    v25 = v8;
    v27 = v5;
    v9 = sub_1C869B300(0, 0, v8, v6, v5, v4);
    v11 = v10;
    v13 = v12;
    sub_1C86F936C();

    OUTLINED_FUNCTION_78();
    v26 = v14;
    MEMORY[0x1CCA7B200](v9, v11);

    v15 = OUTLINED_FUNCTION_50();
    sub_1C86A9FDC(v15, v16, v17, 0xD000000000000017, v26, v13);
    if (v3)
    {
    }

    else
    {

      v20 = objc_allocWithZone(type metadata accessor for CKTripleCondition());
      OUTLINED_FUNCTION_58();

      CKTripleCondition.init(subject:predicate:object:)(v25, v6, 0, 0, v27, v4);
      v22 = v21;
      v23 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
      v24 = *&v21[OBJC_IVAR___CKTripleCondition_rawCondition];
      v23();
    }
  }

  else
  {
    sub_1C868B6E4();
    v18 = OUTLINED_FUNCTION_31(&type metadata for CKError);
    OUTLINED_FUNCTION_4_3(v18, v19);
  }

  OUTLINED_FUNCTION_102();
}

uint64_t sub_1C869BFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C86A90CC(a2, a3, a4);
  if (!v4)
  {
  }

  return result;
}

uint64_t sub_1C869C0F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C869CE88(a1, v82, &qword_1EC2AD9C8, &unk_1C86FD090);
  if (v83)
  {
    sub_1C869CE88(v82, v80, &qword_1EC2AD9C8, &unk_1C86FD090);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D0, &unk_1C86FE280);
    v6 = MEMORY[0x1E69E63B0];
    v14 = OUTLINED_FUNCTION_20_0(v5, v7, v8, v9, v10, v11, v12, v13, v69, v73, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v78[4], v79);
    if (OUTLINED_FUNCTION_114(v14, v15, v16))
    {
      v17 = v79;
      a2[3] = v6;
      *a2 = v17;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0(v80);
      return sub_1C869DEA8(v82, &qword_1EC2AD9C8, &unk_1C86FD090);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA48, &qword_1C86FD168);
    v26 = OUTLINED_FUNCTION_20_0(v18, v19, v20, v21, v22, v23, v24, v25, v70, v73, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v78[4], v79);
    v29 = OUTLINED_FUNCTION_114(v26, v27, v28);
    if (v29)
    {
      sub_1C8687B6C(&v79, v78);
      sub_1C869F2D8(v78, &v73);
      if (swift_dynamicCast())
      {
        sub_1C869F2D8(v78, &v73);
        swift_dynamicCast();
        v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        a2[3] = sub_1C869F398(0, &qword_1ED5BC4B0, 0x1E696AD98);
        *a2 = v37;
      }

      else
      {
        sub_1C868B6E4();
        OUTLINED_FUNCTION_31(&type metadata for CKError);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_106(v50, v51);
      }

      __swift_destroy_boxed_opaque_existential_0(v78);
      goto LABEL_11;
    }

    v38 = MEMORY[0x1E69E6158];
    v39 = OUTLINED_FUNCTION_20_0(v29, v30, v31, v32, v33, v34, v35, v36, v71, v73, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v78[4], v79);
    v42 = OUTLINED_FUNCTION_114(v39, v40, v41);
    if (v42)
    {
      v49 = v79;
      a2[3] = v38;
      *a2 = v49;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_20_0(v42, v43, v44, &type metadata for Blob, v45, v46, v47, v48, v72, v73, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v78[4], v79);
    if (swift_dynamicCast())
    {
      sub_1C869C4C4(v79);
      v52 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      v53 = OUTLINED_FUNCTION_13();
      sub_1C868BE68(v53, v54);
      v55 = OUTLINED_FUNCTION_13();
      v57 = sub_1C869C600(v55, v56);
      if (v2)
      {
        v58 = OUTLINED_FUNCTION_13();
        sub_1C868BED4(v58, v59);
      }

      else
      {
        v66 = v57;
        if (qword_1ED5BC500 != -1)
        {
          OUTLINED_FUNCTION_19_1();
          swift_once();
        }

        sub_1C8693B00(qword_1ED5BC508);
        sub_1C86F8EFC();
        sub_1C86F921C();

        [v66 finishDecoding];
        v67 = OUTLINED_FUNCTION_13();
        sub_1C868BED4(v67, v68);
      }

      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  sub_1C868B6E4();
  OUTLINED_FUNCTION_31(&type metadata for CKError);
  v61 = v60;
  sub_1C869CE88(a1, v80, &qword_1EC2AD9C8, &unk_1C86FD090);
  v62 = v81;
  if (v81)
  {
    v63 = __swift_project_boxed_opaque_existential_0(v80, v81);
    *(v61 + 24) = v62;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
    (*(*(v62 - 8) + 16))(boxed_opaque_existential_0, v63, v62);
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    sub_1C869DEA8(v80, &qword_1EC2AD9C8, &unk_1C86FD090);
    *v61 = 0u;
    *(v61 + 16) = 0u;
  }

  *(v61 + 32) = 2;
  swift_willThrow();
  return sub_1C869DEA8(v82, &qword_1EC2AD9C8, &unk_1C86FD090);
}

uint64_t sub_1C869C4C4(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9D8, &unk_1C86FD0A0);
  v8 = sub_1C869F33C(&qword_1EC2ADA78, &qword_1EC2AD9D8, &unk_1C86FD0A0, MEMORY[0x1E6969E08]);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v6, v7);
  sub_1C869F1E8(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

id CKPersistentStoreHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPersistentStoreHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C869C600(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C86F8C9C();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1C86F8BAC();

    swift_willThrow();
  }

  sub_1C868BED4(a1, a2);
  return v7;
}

uint64_t sub_1C869C710(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1C869C79C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_1C869C7E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_6(a3, result);
  }

  return result;
}

char *sub_1C869C804(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_6(a3, result);
  }

  return result;
}

char *sub_1C869C824(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_6(a3, result);
  }

  return result;
}

char *sub_1C869C84C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_6(a3, result);
  }

  return result;
}

uint64_t sub_1C869C874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8, &unk_1C86FD090);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C869C8D4()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C869C918(uint64_t a1, uint64_t a2)
{
  sub_1C86F954C();
  sub_1C86F8F9C();
  v4 = sub_1C86F956C();

  return sub_1C869C990(a1, a2, v4);
}

unint64_t sub_1C869C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C86F948C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

double sub_1C869CA44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1C869C918(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD8A0, &qword_1C86FCD00);
    sub_1C86F93FC();

    sub_1C8689930((*(v9 + 56) + 32 * v7), a3);
    sub_1C86F940C();
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

uint64_t sub_1C869CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C869C918(a1, a2);
  if (v6)
  {
    v7 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD838, &qword_1C86FD100);
    sub_1C86F93FC();

    v8 = (*(v10 + 56) + 32 * v7);
    v9 = v8[1];
    *a3 = *v8;
    *(a3 + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
    result = sub_1C86F940C();
    *v3 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }

  return result;
}

void sub_1C869CC24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_9_3(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_72(v6, v11);
  }
}

void sub_1C869CC50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_52(a4 + 8 * (a1 >> 6));
  v6 = (v4[6] + 16 * v5);
  *v6 = v7;
  v6[1] = v8;
  *(v4[7] + 8 * v5) = v9;
  v10 = v4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v12;
  }
}

_OWORD *sub_1C869CCA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OUTLINED_FUNCTION_9_3(a1, a2, a3, a4, a5);
  result = sub_1C8689930(v9, (v8 + 32 * v7));
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

void sub_1C869CCE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_9_3(a1, a2, a3, a4, a5);
  v8 = (v7 + 32 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_72(v6, v13);
  }
}

uint64_t sub_1C869CD18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C86FD060;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

char *sub_1C869CDA8(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1C86F92EC();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1C869F260();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

char *sub_1C869CE68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C869CE88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_43_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

char *sub_1C869CEE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C869CF08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D23C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C869CF28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D36C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C869CF48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D46C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *sub_1C869CFC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D5A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C869CFE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D6DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C869D008(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C869D814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C869D028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD998, &unk_1C86FD0B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C869D130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB70, &qword_1C86FD110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D23C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9F8, &qword_1C86FD108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD810, &qword_1C86FCC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C869D36C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA70, &qword_1C86FD190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}