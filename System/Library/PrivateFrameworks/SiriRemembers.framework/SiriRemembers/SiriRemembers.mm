uint64_t sub_2313E2F68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2313E2FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static InteractionStore.inProcess()()
{
  v16 = &unk_28460C4B0;
  v0 = sub_2313E3100();
  v17 = v0;
  LOBYTE(v15[0]) = 0;
  v1 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v15);
  v16 = &unk_28460C4B0;
  v17 = v0;
  LOBYTE(v15[0]) = 2;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v15);
  v16 = &unk_28460C4B0;
  v17 = v0;
  LOBYTE(v15[0]) = 1;
  sub_231476D68();
  v2 = __swift_destroy_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_15_8(xmmword_231479AA0, v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, *v14, v14[4], v1 & 1, v11);
  return sub_2313EADE8(0, 2uLL);
}

unint64_t sub_2313E3100()
{
  result = qword_280C3D280[0];
  if (!qword_280C3D280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3D280);
  }

  return result;
}

const char *sub_2313E3188(char a1)
{
  if (!a1)
  {
    return "siri_remembers_use_intelligence_platform";
  }

  if (a1 == 1)
  {
    return "siri_remembers_private_to_shared_device_sync";
  }

  return "siri_remembers_private_device_sync";
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2313E325C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2313E3434;
  *(v8 + 24) = v7;
  v11[4] = sub_2313EAA4C;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2313E340C;
  v11[3] = &block_descriptor_35;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2313E33BC()
{

  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2313E3440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    return sub_2313EADE8(a4, a5);
  }

  return result;
}

Swift::Void __swiftcall AppIntentProcessor.main()()
{
  OUTLINED_FUNCTION_15();
  swift_getObjectType();
  v1 = sub_231477B48();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  if (([v0 isCancelled] & 1) == 0)
  {
    if (qword_280C3BD30 != -1)
    {
      swift_once();
    }

    sub_231477ED8();
    os_transaction_create();

    sub_2313E74F8("siriremembers.AppIntentProcessor", 32, 2, v7);

    sub_2313E325C(sub_2313E37E8, 0);

    if (![v0 isCancelled])
    {
      v12 = *&v0[OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_event];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D548, &qword_23147F900);
      sub_231478318();

      v8 = v18;
      v9 = v19;
      v10 = v20;
      v11 = v21;
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22;
      sub_2313F2408(v12, &v13, 0);
      sub_2313E3440(v8, *(&v8 + 1), v9, v10, v11);
      [objc_opt_self() _resetCache];
    }

    sub_2314783A8();
    if (qword_280C3CF48 != -1)
    {
      swift_once();
    }

    sub_231477B28();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_2313E3788(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

void *sub_2313E37E8(void *result)
{
  if (!*result)
  {
    v1 = result;
    sub_2313E3440(0, result[1], result[2], result[3], result[4]);
    result = static InteractionStore.inProcess()();
    *v1 = v2;
    *(v1 + 1) = v3;
    v1[4] = v4;
    *(v1 + 40) = v5;
  }

  return result;
}

uint64_t type metadata accessor for _InteractionStore(uint64_t a1)
{
  result = qword_280C3D7A8;
  if (!qword_280C3D7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2, void *a3)
{

  return sub_231444DEC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_16_8(float a1)
{
  *v1 = a1;

  return sub_2313EB684(0xD00000000000005BLL, v2 | 0x8000000000000000, (v3 - 80));
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_231478158();
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2)
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2)
{

  return sub_2314787C8();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2)
{

  return sub_231478648();
}

unint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_2313EB684(0xD000000000000016, v2 | 0x8000000000000000, (v3 - 120));
}

void OUTLINED_FUNCTION_15_8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a14, uint64_t a10, int a11, char a12, char a13, __n128 a15)
{
  a15 = a1;

  sub_2313E4D38(&a13, &a15, v15);
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_231405CC4(v0, type metadata accessor for _NewInteraction);
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = 1668183398;
  v2[11] = v1;

  return sub_231477E58();
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  return sub_2313F1184(a1, a2, 3, 1701667182, 0xE400000000000000, a6);
}

uint64_t OUTLINED_FUNCTION_2_11()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 72);
  *v3 = *(v0 - 144);
  v3[1] = v2;
  *(v3 + 25) = *(v0 - 119);

  return sub_2313F4F84(v0 - 144, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = 1668183398;
  v2[11] = v1;
  return v3 + 7;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return sub_2314788E8();
}

uint64_t OUTLINED_FUNCTION_2_17()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
  return v1;
}

void OUTLINED_FUNCTION_2_18()
{

  sub_23141CC58();
}

void OUTLINED_FUNCTION_14_3()
{

  sub_23141252C(0, v0, 0);
}

BOOL OUTLINED_FUNCTION_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void OUTLINED_FUNCTION_14_11(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_23145F320(a1, v8, v7, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2313EB380();
}

void OUTLINED_FUNCTION_8_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1, uint64_t a2)
{

  return sub_2314786F8();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_2313E3440(0, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_231477E58();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{

  return sub_231478498();
}

void OUTLINED_FUNCTION_10_4()
{
  v6 = *v1;
  *(v6 + 16) = v0 + 1;
  v7 = v6 + 32 * v0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1, uint64_t a2)
{

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 10) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
  return result;
}

void OUTLINED_FUNCTION_10_14()
{

  JUMPOUT(0x23192E060);
}

uint64_t OUTLINED_FUNCTION_10_17@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;

  return type metadata accessor for QueryValue(0);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_231478338();
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  v2 = *(v0 - 208);
  *(v0 - 272) = *(v0 - 224);
  *(v0 - 256) = v2;
  *(v0 - 247) = *(v0 - 199);

  return sub_2313F501C(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = MEMORY[0x277D0B770];
  v3 = *(v0 - 296);
  v4 = *(v0 - 312);
  v5 = *(v0 - 304);

  return sub_2313ED944(v3, v4, v5, v2);
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{

  return sub_2314786F8();
}

__n128 *OUTLINED_FUNCTION_7_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736D657469;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

void OUTLINED_FUNCTION_7_8()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_231477E58();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_2313E4AFC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2313E4B40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

__n128 OUTLINED_FUNCTION_22_0()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  result = *(v0 + 32);
  *(v1 - 112) = result;
  return result;
}

void OUTLINED_FUNCTION_22_1()
{
  *(v2 - 88) = v0;

  sub_23141252C(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2)
{

  return sub_2314786B8();
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return type metadata accessor for _InteractionStore(0);
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return type metadata accessor for QueryValue(0);
}

void OUTLINED_FUNCTION_32_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_2313E4D38(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v46[-v9];
  type metadata accessor for _InteractionStore(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_34();
  v14 = (v12 - v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v46[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v46[-v19];
  v21 = *a1;
  v50 = a1[1];
  v22 = a1[2];
  if (v21 != 1)
  {
    sub_231464B0C(v10);
    sub_231444FB4(v10, 1, v14);
    if (v3)
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    sub_2313E7328();
    *a3 = v32;
    *(a3 + 8) = 0;
    *(a3 + 9) = v50;
    *(a3 + 10) = v22;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 2;
    goto LABEL_6;
  }

  v49 = v22;
  v23 = *a2;
  v24 = a2[1];
  v47 = v23;
  v48 = v24;
  sub_2313E5218(0, &v47, 0, 0);
  if (v25)
  {
    *v20 = v25;
    v20[1] = v26;
    v20[2] = v27;
    swift_storeEnumTagMultiPayload();

    sub_2313E6AE4(v20, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74();
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    v29 = v28;
    type metadata accessor for SiriRemembersBiomeStreamDonator();
    swift_allocObject();
    sub_2313E6C34(v23, v24);
    v30 = SiriRemembersBiomeStreamDonator.init()();

    sub_2313EB404(v20);
    *a3 = v29;
    *(a3 + 8) = 1;
    v31 = v49;
    *(a3 + 9) = v50;
    *(a3 + 10) = v31;
    *(a3 + 16) = v30;
    *(a3 + 24) = v23;
    *(a3 + 32) = v24;
LABEL_6:
    *(a3 + 40) = 1;
    return;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v33 = sub_231477B68();
  OUTLINED_FUNCTION_38(v33, qword_280C3D970);
  v34 = sub_231477B58();
  v35 = sub_2314782A8();
  if (OUTLINED_FUNCTION_12_1(v35))
  {
    *OUTLINED_FUNCTION_102() = 0;
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v36, v37, "could not open IP InteractionStore");
    OUTLINED_FUNCTION_7_8();
  }

  v38 = sub_23141ECFC();
  OUTLINED_FUNCTION_17_4(&type metadata for InteractionStoreError, v38);
  v40 = v39;
  v41 = sub_231477E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
  inited = swift_initStackObject();
  v47 = OUTLINED_FUNCTION_6_9(inited, xmmword_23147CE20);
  v48 = v43;
  MEMORY[0x23192E060](46, 0xE100000000000000);
  MEMORY[0x23192E060](0xD000000000000014, 0x8000000231481E80);

  v44 = sub_231477E58();

  inited[3].n128_u64[0] = v44;
  inited[3].n128_u64[1] = 1701603686;
  inited[4].n128_u64[0] = 0xE400000000000000;
  inited[4].n128_u64[1] = sub_231477E58();
  inited[5].n128_u64[0] = 1668183398;
  inited[5].n128_u64[1] = 0xE400000000000000;
  inited[6].n128_u64[0] = sub_231477E58();
  inited[6].n128_u64[1] = 1701734764;
  inited[7].n128_u64[0] = 0xE400000000000000;
  inited[7].n128_u64[1] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
  sub_231477DC8();
  v45 = sub_231477DA8();

  AnalyticsSendEvent();

  *v40 = 1;
  swift_willThrow();
}

uint64_t sub_2313E5218(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v109 = a4;
  v110 = a3;
  LODWORD(v108) = a1;
  v100 = type metadata accessor for DBOpenError(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  v89 = v5 - v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  v101 = &v85 - v8;
  OUTLINED_FUNCTION_47();
  v90 = sub_231476E58();
  OUTLINED_FUNCTION_4();
  v106 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v104 = v11 - v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  v105 = &v85 - v14;
  OUTLINED_FUNCTION_47();
  v107 = sub_231477048();
  OUTLINED_FUNCTION_4();
  v91 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34();
  v88 = v17 - v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v102 = &v85 - v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  v103 = &v85 - v22;
  OUTLINED_FUNCTION_47();
  sub_231476AF8();
  OUTLINED_FUNCTION_4();
  v96 = v24;
  v97 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v95 = v26 - v25;
  OUTLINED_FUNCTION_47();
  sub_231478308();
  OUTLINED_FUNCTION_4();
  v93 = v28;
  v94 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v92 = v30 - v29;
  OUTLINED_FUNCTION_47();
  sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v32 = sub_231477D08();
  v33 = OUTLINED_FUNCTION_14(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v34 = sub_2314777F8();
  OUTLINED_FUNCTION_4();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  v40 = (v39 - v38);
  sub_231477008();
  OUTLINED_FUNCTION_4();
  v98 = v42;
  v99 = v41;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_34();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v85 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v50 = OUTLINED_FUNCTION_14(v49);
  MEMORY[0x28223BE20](v50);
  v52 = &v85 - v51;
  sub_2314779F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_2();
  v58 = v57 - v56;
  if (v108)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v59 = sub_231477B68();
    OUTLINED_FUNCTION_38(v59, qword_280C3D970);
    v60 = sub_231477B58();
    v61 = sub_2314782A8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_102();
      *v62 = 0;
      _os_log_impl(&dword_2313E1000, v60, v61, "initializing in-memory IP InteractionStore", v62, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    sub_231446A8C();

    return 0;
  }

  else
  {
    v108 = v58;
    v86 = v45;
    v87 = v55;
    v63 = v54;
    sub_2313E7A6C(v110, v109, v52);
    if (__swift_getEnumTagSinglePayload(v52, 1, v63) == 1)
    {
      sub_2313E7E10(v52);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v64 = sub_231477B68();
      OUTLINED_FUNCTION_38(v64, qword_280C3D970);
      v65 = sub_231477B58();
      v66 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v66))
      {
        v67 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v67);
        OUTLINED_FUNCTION_8(&dword_2313E1000, v68, v69, "initializing dummy IP InteractionStore (IP SiriRemembersView does not exist)");
        OUTLINED_FUNCTION_16_2();
      }

      sub_231446A8C();

      return 1;
    }

    else
    {
      v70 = *(v87 + 32);
      v85 = v63;
      v70(v108, v52, v63);
      sub_231476FF8();
      *v40 = 0x4014000000000000;
      (*(v36 + 104))(v40, *MEMORY[0x277D0B810], v34);
      sub_231476FC8();
      sub_231476FE8();
      sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
      sub_231477CD8();
      v111[0] = MEMORY[0x277D84F90];
      sub_2313EB8FC(&qword_280C3CEA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
      sub_2313E6ED0();
      sub_231478498();
      (*(v93 + 104))(v92, *MEMORY[0x277D85260], v94);
      sub_231478338();
      sub_231476FA8();
      sub_231476FB8();
      v71 = v95;
      sub_231477958();
      v72 = sub_231476AC8();
      v74 = v73;
      (*(v96 + 8))(v71, v97);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v75 = sub_231477B68();
      OUTLINED_FUNCTION_38(v75, qword_280C3D970);

      v76 = sub_231477B58();
      v77 = sub_2314782A8();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = OUTLINED_FUNCTION_16_4();
        v79 = OUTLINED_FUNCTION_23_3();
        v111[0] = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_2313EB684(v72, v74, v111);
        _os_log_impl(&dword_2313E1000, v76, v77, "opening IP InteractionStore. path=%s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      v81 = v98;
      v80 = v99;
      (*(v98 + 16))(v86, v48, v99);
      sub_2314770A8();
      swift_allocObject();
      sub_231477088();
      (*(v81 + 8))(v48, v80);
      v83 = OUTLINED_FUNCTION_32_1();
      v84(v83);

      return 0;
    }
  }
}

uint64_t sub_2313E6AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InteractionStore(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SiriRemembersBiomeStreamDonator.init()()
{
  v1 = v0;
  type metadata accessor for SiriInteractionHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v2 = swift_allocObject();
  sub_2313E73E8(&selRef_InteractionHistory);
  v1[2] = v2;
  type metadata accessor for SiriCallHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v3 = swift_allocObject();
  sub_2313E73E8(&selRef_CallHistory);
  v1[3] = v3;
  type metadata accessor for SiriMessageHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v4 = swift_allocObject();
  sub_2313E73E8(&selRef_MessageHistory);
  v1[4] = v4;
  type metadata accessor for SiriAssistantSuggestionsHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v5 = swift_allocObject();
  sub_2313E73E8(&selRef_AssistantSuggestions);
  v1[5] = v5;
  type metadata accessor for SiriAudioHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v6 = swift_allocObject();
  sub_2313E73E8(&selRef_AudioHistory);
  v1[6] = v6;
  v7 = type metadata accessor for CoreSuggestionsClient();
  v8 = swift_allocObject();
  v1[10] = v7;
  v1[11] = &off_284609528;
  v1[7] = v8;
  return v1;
}

uint64_t sub_2313E6C34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *OUTLINED_FUNCTION_9(void *result)
{
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return 1953066601;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_2313EF028(v0, type metadata accessor for _Entity);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2)
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_9_18()
{
  *(v1 - 192) = *(v1 - 248);

  return memcpy((v1 - 184), (v0 + 24), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_72_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D0B778];

  return sub_2313ED944(a1, a2, a3, v4);
}

unint64_t sub_2313E6E78()
{
  result = qword_280C3CEA0;
  if (!qword_280C3CEA0)
  {
    sub_2314782F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3CEA0);
  }

  return result;
}

unint64_t sub_2313E6ED0()
{
  result = qword_280C3CEB0;
  if (!qword_280C3CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD4EAA0, qword_23147F920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3CEB0);
  }

  return result;
}

void sub_2313E6F34()
{
  OUTLINED_FUNCTION_15();
  v12 = v2;
  v13 = v3;
  v11 = sub_231478308();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0();
  sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v8 = sub_231477D08();
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  v10 = sub_2313E6ED0();
  OUTLINED_FUNCTION_10_0(v10);
  (*(v5 + 104))(v1, *MEMORY[0x277D85260], v11);
  v0[2] = OUTLINED_FUNCTION_7();
  sub_2313E7340(v12, v0 + *(*v0 + 96), v13);
  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t result)
{
  v2[12] = result;
  v2[13] = 1701734764;
  v2[14] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_5_15()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_5_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  v1[6] = v0;
  v1[7] = 1701603686;
  v1[8] = 0xE400000000000000;

  return sub_231477E58();
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t a1, uint64_t a2)
{

  return sub_2314786F8();
}

uint64_t sub_2313E7340(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2313E73E8(SEL *a1)
{
  v3 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v4 = [v3 Remembers];
  swift_unknownObjectRelease();
  v5 = [v4 *a1];
  swift_unknownObjectRelease();
  *(v1 + 16) = v5;
  return v1;
}

uint64_t sub_2313E74F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_280C3CF48 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280C3CF48);
  }

  v8 = qword_280C3D700;
  sub_231477B38();
  v9 = sub_2314783B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4E218, &qword_23147D3F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_231479580;
  v11 = sub_231478508();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2313E796C();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_231477B18(v9, &dword_2313E1000, v8, a1, a2, a3, a4, "%@ enableTelemetry=YES", 22, 2, v10);
}

id AppIntentProcessor.init(event:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_ipStore;
  memset(v7, 0, 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D538, &unk_231479510);
  swift_allocObject();
  *&v1[v4] = sub_2313E76EC(v7);
  *&v1[OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_event] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2313E76EC(_OWORD *a1)
{
  v12 = a1;
  v11 = sub_231478308();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2314782F8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_231477D08();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  v13 = MEMORY[0x277D84F90];
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v11);
  *(v1 + 16) = sub_231478338();
  v7 = v12;
  v8 = v12[1];
  *(v1 + 24) = *v12;
  *(v1 + 40) = v8;
  *(v1 + 49) = *(v7 + 25);
  return v1;
}

unint64_t sub_2313E796C()
{
  result = qword_280C3C160;
  if (!qword_280C3C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C160);
  }

  return result;
}

void sub_2313E7A6C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  if (qword_280C3D380 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(dword_280C3D998);
  sub_2313E7C7C(&qword_280C3D9A0, v9);
  os_unfair_lock_unlock(dword_280C3D998);
  v10 = sub_2314779F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  sub_2313E7E10(v9);
  if (EnumTagSinglePayload == 1)
  {
    sub_2314750CC(a1, a2);
  }

  os_unfair_lock_lock(dword_280C3D998);
  sub_2313E7C7C(&qword_280C3D9A0, a3);
  os_unfair_lock_unlock(dword_280C3D998);
}

uint64_t type metadata accessor for DBOpenError(uint64_t a1)
{
  result = qword_280C3D1C8;
  if (!qword_280C3D1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2313E7C04()
{
  OUTLINED_FUNCTION_17_2();
  sub_231478908();
  if (v0)
  {
    OUTLINED_FUNCTION_14_5();
    sub_231477F38();
  }

  sub_231478918();
  v1 = OUTLINED_FUNCTION_36_0();

  return sub_2313E7D44(v1, v2, v3);
}

uint64_t sub_2313E7C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_2313E7C04(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_2314779F8();
    OUTLINED_FUNCTION_3();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = sub_2314779F8();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t sub_2313E7D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2314787C8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_2313E7E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313E7E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v129 = a7;
  v141 = a4;
  v142 = a5;
  v138 = a3;
  v116 = a8;
  v140 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v139 = v16 - v15;
  Value = type metadata accessor for QueryValue(0);
  OUTLINED_FUNCTION_4();
  v118 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = v108 - v23;
  v143 = sub_2314770C8();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v30 = (v29 - v28);
  v126 = sub_231477468();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_28(v35 - v34);
  v114 = sub_231476EB8();
  OUTLINED_FUNCTION_4();
  v113 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_28(v39 - v38);
  v40 = sub_231477668();
  MEMORY[0x28223BE20](v40 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_28(v42 - v41);
  v43 = sub_2314773C8();
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_2();
  v108[1] = v45 - v44;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA90, &qword_23147A7E0);
  OUTLINED_FUNCTION_4();
  v110 = v46;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v47);
  v109 = v108 - v48;
  v127 = a1;
  v128 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4();
  v117 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_34();
  v124 = v51 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = v108 - v54;
  v115 = v8;
  v56 = *(v8 + 5);
  v138(0);
  sub_2313F3500(v141, v142, a6);
  v130 = v55;
  sub_231476ED8();
  v123 = *(v56 + 16);
  if (v123)
  {
    v57 = 0;
    v122 = v56 + 32;
    v137 = v13 + 8;
    v138 = (v13 + 32);
    v141 = (v26 + 32);
    v121 = (v32 + 8);
    v120 = v117 + 8;
    v119 = v117 + 32;
    v142 = v30;
    do
    {
      v58 = v122 + 32 * v57;
      v60 = *v58;
      v59 = *(v58 + 8);
      v61 = *(v58 + 16);
      v134 = *v58;
      v135 = v61;
      v62 = *(v58 + 24);
      v63 = *(v62 + 16);
      v136 = v59;
      if (v63)
      {
        v133 = v57;
        sub_2313E8ABC(v60, v59);
        *&v149 = MEMORY[0x277D84F90];

        sub_2313E8C84(0, v63, 0);
        v64 = v149;
        OUTLINED_FUNCTION_6();
        v132 = v62;
        v66 = v62 + v65;
        v68 = *(v67 + 72);
        do
        {
          sub_2313EEFC8(v66, v24, type metadata accessor for QueryValue);
          sub_2313EEFC8(v24, v21, type metadata accessor for QueryValue);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              MEMORY[0x23192E2E0](*v21);
              break;
            case 2u:
              MEMORY[0x23192E290](*v21);
              break;
            case 3u:
              sub_231477EE8();

              break;
            case 4u:
              v69 = OUTLINED_FUNCTION_20_0();
              v70 = v140;
              v71(v69, v21, v140);
              v72 = sub_231476BC8();
              MEMORY[0x23192E290](v72);
              v73 = OUTLINED_FUNCTION_20_0();
              v74(v73, v70);
              break;
            default:
              sub_2314781B8();
              break;
          }

          sub_2313EF028(v24, type metadata accessor for QueryValue);
          *&v149 = v64;
          v76 = *(v64 + 16);
          v75 = *(v64 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_2313E8C84(v75 > 1, v76 + 1, 1);
            v64 = v149;
          }

          *(v64 + 16) = v76 + 1;
          (*(v26 + 32))(v64 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v76, v142, v143);
          v66 += v68;
          --v63;
        }

        while (v63);
        v57 = v133;
      }

      else
      {
        sub_2313E8ABC(v60, v136);

        v64 = MEMORY[0x277D84F90];
      }

      v77 = v57 + 1;
      *&v149 = sub_2313ED6C8();
      *(&v149 + 1) = v78;
      v79 = 0xE100000000000000;
      MEMORY[0x23192E060](32, 0xE100000000000000);
      v80 = 61;
      switch(v135)
      {
        case 1:
          v79 = 0xE200000000000000;
          v80 = 15649;
          break;
        case 2:
          v80 = 60;
          break;
        case 3:
          v79 = 0xE200000000000000;
          v80 = 15676;
          break;
        case 4:
          v80 = 62;
          break;
        case 5:
          v79 = 0xE200000000000000;
          v80 = 15678;
          break;
        case 6:
          v79 = 0xE200000000000000;
          v80 = 20041;
          break;
        case 7:
          v79 = 0xE400000000000000;
          v80 = 1162561868;
          break;
        default:
          break;
      }

      MEMORY[0x23192E060](v80, v79);

      MEMORY[0x23192E060](32, 0xE100000000000000);
      if (v135 == 6)
      {
        v81 = sub_231478058();
        v145 = v81;
        v146 = v82;
        v83 = HIBYTE(v82) & 0xF;
        if ((v82 & 0x2000000000000000) == 0)
        {
          v83 = v81 & 0xFFFFFFFFFFFFLL;
        }

        if (v83)
        {
          sub_231477F68();
          sub_231477FC8();
        }

        v84 = v77;
        sub_231477FB8();
        MEMORY[0x23192E060](41, 0xE100000000000000);
        sub_2313ED930(v134, v136);

        v85 = v145;
        v86 = v146;
      }

      else
      {
        v84 = v77;
        sub_2313ED930(v134, v136);

        v86 = 0xE100000000000000;
        v85 = 63;
      }

      MEMORY[0x23192E060](v85, v86);

      *&v149 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
      sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8, MEMORY[0x277D83970]);
      v87 = v125;
      sub_231477478();
      OUTLINED_FUNCTION_7_1();
      v88 = v124;
      v89 = v131;
      sub_2314771B8();

      (*v121)(v87, v126);
      v90 = OUTLINED_FUNCTION_20_0();
      v91(v90, v89);
      v92 = OUTLINED_FUNCTION_20_0();
      v93(v92, v88, v89);
      v57 = v84;
    }

    while (v84 != v123);
  }

  v94 = *(v115 + 32);
  if (v94 == 255)
  {
    return (*(v117 + 32))(v116, v130, v131);
  }

  v95 = v115[1];
  v149 = *v115;
  v150 = v95;
  sub_231477378();
  v96 = sub_231477368();
  LOBYTE(v151) = v94;
  v145 = sub_231423790(v96);
  v146 = v97;
  sub_231423704();
  sub_2314773B8();

  sub_231477368();
  sub_231477658();
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v98 = v109;
  sub_231476E78();
  v99 = v112;
  v100 = v111;
  sub_231476E68();
  v147 = sub_2314776A8();
  v148 = MEMORY[0x277D0B7F0];
  __swift_allocate_boxed_opaque_existential_1(&v145);
  sub_231477698();
  *(&v150 + 1) = sub_2314770D8();
  v151 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(&v149);
  v101 = v114;
  sub_231477208();
  OUTLINED_FUNCTION_13_1();
  v102(v99, v101);
  __swift_destroy_boxed_opaque_existential_0(&v145);
  OUTLINED_FUNCTION_7_1();
  v103 = v131;
  v104 = v130;
  sub_2314771C8();
  OUTLINED_FUNCTION_13_1();
  v105(v98, v100);
  OUTLINED_FUNCTION_13_1();
  v106(v104, v103);
  return __swift_destroy_boxed_opaque_existential_0(&v149);
}

uint64_t sub_2313E8ABC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
  }

  return result;
}

void sub_2313E8AD0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_3();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_37();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2313E8CDC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Value = type metadata accessor for QueryValue(0);
  v9 = OUTLINED_FUNCTION_29(Value);
  v34 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v35 = v1;
  sub_2313E93D4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v22);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 1;
      break;
    case 2u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v19);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 2;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v20);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 3;
      break;
    case 4u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v18);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 4;
      break;
    case 5u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v23);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 5;
      break;
    case 6u:
      v24 = *v14;
      v25 = *(*v14 + 16);
      if (v25)
      {
        v31 = v5;
        v32 = v3;
        v33 = v7;
        v37 = MEMORY[0x277D84F90];
        sub_2313FC060(0, v25, 0);
        v26 = 0;
        v16 = v37;
        v36 = v24 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        do
        {
          if (v26 >= *(v24 + 16))
          {
            __break(1u);
            JUMPOUT(0x2313E9204);
          }

          OUTLINED_FUNCTION_3_2();
          sub_2313EB328();
          v37 = v16;
          v28 = *(v16 + 16);
          v27 = *(v16 + 24);
          if (v28 >= v27 >> 1)
          {
            v29 = OUTLINED_FUNCTION_20(v27);
            sub_2313FC060(v29, v28 + 1, 1);
            v16 = v37;
          }

          ++v26;
          *(v16 + 16) = v28 + 1;
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
        }

        while (v25 != v26);

        sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
        v17 = 6;
        v3 = v32;
        v7 = v33;
        v5 = v31;
      }

      else
      {

        sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
        v16 = MEMORY[0x277D84F90];
        v17 = 6;
      }

      break;
    case 7u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v21);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 7;
      break;
    default:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v16 = OUTLINED_FUNCTION_15_1(v15);
      *(v16 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v35, &unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v17 = 0;
      break;
  }

  *v7 = v5;
  *(v7 + 8) = v3;
  *(v7 + 16) = v17;
  *(v7 + 24) = v16;
  OUTLINED_FUNCTION_16();
}

void OUTLINED_FUNCTION_18_0(unint64_t a1@<X8>)
{

  sub_2313FA208(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_18_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return sub_231476798();
}

uint64_t OUTLINED_FUNCTION_18_7()
{
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  v3 = *(v2 + 8);
  *(v0 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v0 + 200) = v3;
  return result;
}

uint64_t type metadata accessor for QueryValue(uint64_t a1)
{
  result = qword_280C3D270;
  if (!qword_280C3D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313E937C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2313E93D4()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_149(v1, v2, v3, v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return v0;
}

void sub_2313E9424(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v5 = v4;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v19 - v13);
  v15 = *v5;
  v16 = *(v5 + 8);
  v17 = *(v5 + 16);
  v18 = *(v5 + 24);
  v19 = *(v5 + 40);
  *v14 = v20;
  v14[1] = a2;
  LOBYTE(v5) = *(v5 + 32);
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *a4 = v15;
  *(a4 + 8) = v16;
  *(a4 + 16) = v17;
  *(a4 + 24) = v18;
  *(a4 + 32) = v5;
  *(a4 + 40) = v19;
  sub_2313E9628(v14, v11, &unk_27DD4D680, &unk_2314795C0);

  sub_2313E9688(v15, v16, v17, v18, v5);

  sub_2313E8CDC();
  sub_2313F3390();
  sub_2313F34A0(*(*(a4 + 40) + 16));
  sub_2313E937C(v14, &unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_2313E95CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return a2;
}

uint64_t sub_2313E9628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2313E9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_231412700(a1, a2, a3, a4, a5);
  }

  return a1;
}

char *sub_2313E969C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

uint64_t sub_2313E96BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231424118(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2313E96E8(char a1, void (*a2)(), void *a3)
{
  sub_2314618AC();
  v6 = sub_2314618F0(0xD000000000000022, 0x8000000231483B80, 4096);
  v7 = [objc_opt_self() interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a2;
  v8[4] = a3;
  v25 = sub_231461E8C;
  v26 = v8;
  OUTLINED_FUNCTION_0_20();
  *(&aBlock + 1) = 1107296256;
  v23 = sub_2313FD2B8;
  v24 = &block_descriptor_5;
  v9 = _Block_copy(&aBlock);
  v10 = v6;

  [v10 setInterruptionHandler_];
  _Block_release(v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v25 = sub_231461E98;
  v26 = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v23 = sub_2313FD2B8;
  v24 = &block_descriptor_6_0;
  v12 = _Block_copy(&aBlock);
  v13 = v10;

  [v13 setInvalidationHandler_];
  _Block_release(v12);
  [v13 resume];
  if (a1)
  {
    v25 = a2;
    v26 = a3;
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_22();
    v23 = v14;
    v24 = &block_descriptor_12;
    v15 = _Block_copy(&aBlock);

    v16 = &selRef_remoteObjectProxyWithErrorHandler_;
  }

  else
  {
    v25 = a2;
    v26 = a3;
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_22();
    v23 = v17;
    v24 = &block_descriptor_9_0;
    v15 = _Block_copy(&aBlock);

    v16 = &selRef_synchronousRemoteObjectProxyWithErrorHandler_;
  }

  v18 = [v13 *v16];
  _Block_release(v15);
  sub_231478468();
  swift_unknownObjectRelease();

  sub_2313E9D3C(&aBlock, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EB80, &qword_23147FE68);
  swift_dynamicCast();
  return v20;
}

uint64_t sub_2313E9A08()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2313E9A48()
{

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t OUTLINED_FUNCTION_1_8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

unint64_t OUTLINED_FUNCTION_1_13()
{
  v1[6] = v0;
  v1[7] = 1701603686;
  v1[8] = 0xE400000000000000;
  return 0xD000000000000060;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_231477F38();
}

uint64_t OUTLINED_FUNCTION_1_19()
{
  v2 = v0[7];
  v0[3] = v0[6];
  v0[4] = v2;
  *(v0 + 73) = *(v0 + 121);

  return sub_2313F501C((v0 + 3));
}

__n128 *OUTLINED_FUNCTION_1_23(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6449726F727265;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{

  return swift_once();
}

_OWORD *sub_2313E9D3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Donation.donate(completionHandler:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_118();
  v4 = swift_allocObject();
  v22 = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_retain_n();
  v5 = dispatch_semaphore_create(1);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = sub_23141EC30;
  v7[5] = v4;
  OUTLINED_FUNCTION_118();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_23141EC64;
  *(v8 + 24) = v7;
  sub_2314767B8();
  OUTLINED_FUNCTION_74();
  swift_allocObject();

  v9 = v5;
  sub_2314767A8();
  v10 = OUTLINED_FUNCTION_97();
  type metadata accessor for Donation(v10);
  sub_2313F7138(&qword_27DD4D6B8, type metadata accessor for Donation, &protocol conformance descriptor for Donation);
  v11 = sub_231476798();
  v13 = v12;

  v14 = sub_231476B98();
  sub_2313EB8A4(v11, v13);
  OUTLINED_FUNCTION_118();
  v15 = swift_allocObject();
  v15[2] = sub_23141EC70;
  v15[3] = v8;
  v16 = v14;

  sub_2313E96E8(1, sub_23141ECB0, v15);

  OUTLINED_FUNCTION_118();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_23141EC70;
  *(v17 + 24) = v8;
  aBlock[4] = sub_23141ECB8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231416E68;
  aBlock[3] = &block_descriptor_24_0;
  v18 = _Block_copy(aBlock);

  OUTLINED_FUNCTION_138();
  [v19 v20];

  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2313EA0E8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2313EA130()
{

  OUTLINED_FUNCTION_118();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2313EA1A0@<X0>(uint64_t a1@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-v6];
  v8 = [objc_opt_self() defaultManager];
  v19[0] = 0;
  v9 = [v8 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v19];

  v10 = v19[0];
  if (v9)
  {
    sub_231476AA8();
    v11 = v10;

    v12 = 0;
  }

  else
  {
    v13 = v19[0];
    v14 = sub_231476A68();

    swift_willThrow();
    v12 = 1;
  }

  v15 = sub_231476AF8();
  __swift_storeEnumTagSinglePayload(v7, v12, 1, v15);
  sub_2313EA3E4(v7, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
  {
    sub_2313EA454(v7);
    sub_2313EA454(v5);
    v16 = 1;
  }

  else
  {
    sub_231476A88();
    sub_2313EA454(v7);
    (*(*(v15 - 8) + 8))(v5, v15);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v16, 1, v15);
}

uint64_t sub_2313EA3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2313EA454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313EA4BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  __swift_allocate_value_buffer(v1, qword_280C3CD28);
  v4 = __swift_project_value_buffer(v0, qword_280C3CD28);
  sub_2313EA1A0(v3);
  v5 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_2313E937C(v3, &qword_27DD4DA58, &unk_23147A530);
    v6 = 1;
  }

  else
  {
    sub_231476A88();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v4, v6, 1, v5);
}

uint64_t static KeyValueStore.lazy(namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for _KeyValueStore(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  if (qword_280C3CD20 != -1)
  {
    OUTLINED_FUNCTION_1_15();
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280C3CD28);
  sub_2313E9628(v14, v13, &qword_27DD4DA58, &unk_23147A530);
  *a3 = a1;
  a3[1] = a2;
  sub_2313E9628(v13, v9, &qword_27DD4DA58, &unk_23147A530);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D0, &qword_23147D2C8);
  OUTLINED_FUNCTION_74();
  swift_allocObject();

  sub_2313EAA04();
  v16 = v15;
  result = sub_2313E937C(v13, &qword_27DD4DA58, &unk_23147A530);
  a3[2] = v16;
  return result;
}

void sub_2313EA7D4(uint64_t a1)
{
  sub_2313EA8B4(319);
  if (v1 <= 0x3F)
  {
    sub_2314467E4();
    if (v2 <= 0x3F)
    {
      sub_2313FC190(319, &qword_280C3D808, &qword_27DD4DA58, &unk_23147A530);
      if (v3 <= 0x3F)
      {
        sub_2314770A8();
        if (v4 <= 0x3F)
        {
          sub_2313FC190(319, &qword_280C3D800, &qword_27DD4D640, &qword_23147FD10);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2313EA8B4(uint64_t a1)
{
  if (!qword_280C3D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DA58, &unk_23147A530);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C3D810);
    }
  }
}

uint64_t sub_2313EA92C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_83@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_2313E937C(v4, v1, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

__n128 OUTLINED_FUNCTION_26_4(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_231476E38();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_11_5@<Q0>(char a1@<W8>)
{
  *(v3 - 192) = v1;
  *(v3 - 184) = a1;
  *(v3 - 183) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 167) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return sub_231423790(a1);
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231478968();
}

BOOL OUTLINED_FUNCTION_12_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t a1, uint64_t a2)
{

  return sub_2314786F8();
}

uint64_t OUTLINED_FUNCTION_11_17(uint64_t a1, uint64_t a2)
{

  return sub_2314787C8();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_13SiriRemembers11UserDonatorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2313EADE8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_0_10()
{

  return sub_2313F0604();
}

void OUTLINED_FUNCTION_0_17()
{

  sub_23141CC58();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for Donation(uint64_t a1)
{
  result = qword_280C3C948;
  if (!qword_280C3C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  *(v0 - 120) = 0;
  *(v0 - 114) = 0;
  return v0 - 120;
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231478968();
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27()
{
}

uint64_t OUTLINED_FUNCTION_12_2()
{
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  return sub_2313F1184(v6, v7, 3, a4, a5, a6);
}

__n128 OUTLINED_FUNCTION_12_6@<Q0>(char a1@<W8>)
{
  *(v3 - 176) = v1;
  *(v3 - 168) = a1;
  *(v3 - 167) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 151) = result;
  return result;
}

void OUTLINED_FUNCTION_12_7()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_12_14()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1)
{

  return sub_231478818();
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_231478748();
}

void OUTLINED_FUNCTION_12_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2313EB328()
{
  OUTLINED_FUNCTION_73();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_17();
  v3(v2);
  return v0;
}

uint64_t sub_2313EB380()
{
  v1 = OUTLINED_FUNCTION_91();
  v2(v1);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2313EB404(uint64_t a1)
{
  v2 = type metadata accessor for _InteractionStore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

BOOL OUTLINED_FUNCTION_24_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2050;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_231477E58();
}

void OUTLINED_FUNCTION_23_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_23_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  v3 = *(v1 + 8);
  *(v0 + 192) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v0 + 200) = v3;
  return v2;
}

unint64_t sub_2313EB684(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2313EB748(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2313EB848(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2313EB748(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2313EF198(a5, a6);
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
    result = sub_231478558();
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

uint64_t sub_2313EB848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313EB8A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2313EB8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2313EB944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_19_3()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

id OUTLINED_FUNCTION_19_4(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_19_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v14);
}

void Donation.donateToSiriRemembersView(_:donationCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = v20;
  v221 = v27;
  OUTLINED_FUNCTION_97();
  v218 = sub_231478308();
  OUTLINED_FUNCTION_4();
  v217 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v30);
  v215 = sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v32);
  v33 = sub_231477D08();
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v34);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_0();
  v229 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39();
  v227 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39();
  v226 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39();
  v232 = v43;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v45);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v50 = OUTLINED_FUNCTION_29(v49);
  v213 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47_0(&v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v202 - v55;
  v228 = type metadata accessor for _NewInteraction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_141();
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D698, &qword_231479AD8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v59);
  v60 = OUTLINED_FUNCTION_142();
  Value = type metadata accessor for Interaction(v60);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v62);
  v64 = &v202 - v63;
  type metadata accessor for Donation(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_34();
  v67 = MEMORY[0x28223BE20](v66);
  v68 = *v20;
  v69 = *(v20 + 8);
  *v244 = *(v20 + 9);
  *&v244[3] = *(v20 + 12);
  v70 = *(v20 + 16);
  v243 = *(v20 + 24);
  v242 = *(v20 + 40);
  if ((v69 & 1) == 0)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v85 = sub_231477B68();
    __swift_project_value_buffer(v85, qword_280C3D970);
    v86 = sub_231477B58();
    sub_2314782A8();
    v87 = OUTLINED_FUNCTION_44();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_16;
    }

    v89 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v89);
    v92 = "Skip the donation to SiriRemembersView";
    goto LABEL_15;
  }

  if (!v70)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v93 = sub_231477B68();
    __swift_project_value_buffer(v93, qword_280C3D970);
    v86 = sub_231477B58();
    sub_2314782A8();
    v94 = OUTLINED_FUNCTION_44();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_16;
    }

    v96 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v96);
    v92 = "Skip the donation to SiriRemembersView due to NIL donator";
LABEL_15:
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v90, v91, v92);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
LABEL_16:

LABEL_36:
    OUTLINED_FUNCTION_62();
    return;
  }

  v206 = v69;
  v207 = v68;
  v210 = v67;
  v211 = v22;
  v71 = qword_280C3CF50;
  v209 = v70;

  if (v71 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v72 = sub_231477B68();
  v73 = __swift_project_value_buffer(v72, qword_280C3D970);
  OUTLINED_FUNCTION_11_3();
  sub_2313EB328();
  v202 = v73;
  v74 = sub_231477B58();
  v75 = sub_2314782A8();
  v76 = os_log_type_enabled(v74, v75);
  v203 = v56;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v205 = v25;
    v78 = v77;
    v79 = swift_slowAlloc();
    v233 = v79;
    *v78 = 136315138;
    OUTLINED_FUNCTION_11_3();
    sub_2313EB328();
    OUTLINED_FUNCTION_105();
    v80 = sub_231477EB8();
    v204 = v64;
    v81 = v26;
    v83 = v82;
    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
    v84 = sub_2313EB684(v80, v83, &v233);
    v26 = v81;
    v64 = v204;

    *(v78 + 4) = v84;
    _os_log_impl(&dword_2313E1000, v74, v75, "InteractionStore donation to IntelligencePlatform started. Donation: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    v25 = v205;
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {

    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
    v56 = v210;
  }

  v97 = *(v26 + *(v56 + 5));
  v98 = *(v26 + 64) == 0xD000000000000013 && 0x8000000231481CF0 == *(v26 + 72);
  v99 = v211;
  if (v98 || (sub_2314787C8() & 1) != 0)
  {
    v100 = *(v26 + 82);

    if (v100 == 1)
    {
      sub_2313F0604();
      if (v101)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v233 = v97;
        v97 = *(v97 + 24);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
        OUTLINED_FUNCTION_148(v102);
        OUTLINED_FUNCTION_147();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
        sub_231478608();
      }

      sub_2313F0604();
      if (v103)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v233 = v97;
        v97 = *(v97 + 24);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
        OUTLINED_FUNCTION_148(v104);
        OUTLINED_FUNCTION_147();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
        sub_231478608();
      }

      v99 = v211;
    }
  }

  else
  {
  }

  v233 = v207;
  LOBYTE(v234) = v206;
  *(&v234 + 1) = *v244;
  HIDWORD(v234) = *&v244[3];
  v235 = v209;
  v236 = v243;
  LOBYTE(v237) = v242;
  v105 = sub_2313F4D04();
  if (v25)
  {

    goto LABEL_36;
  }

  v106 = v105;
  OUTLINED_FUNCTION_14_1();
  sub_2313EB328();
  OUTLINED_FUNCTION_110();
  v108 = 0x30200u >> (8 * v107);
  if (v109)
  {
    LOBYTE(v108) = 1;
  }

  v64[*(Value + 64)] = v108;
  sub_2313F529C();
  *(v99 + *(v220 + 48)) = v110;
  sub_2313E93D4();

  OUTLINED_FUNCTION_23_0();
  sub_2313F31EC();
  v111 = v221;
  if (!v221)
  {
    if (qword_280C3CA98 != -1)
    {
      swift_once();
    }
  }

  v220 = v106;
  v204 = v64;
  v219 = v26;
  v205 = 0;
  v241 = v111;
  v112 = *(v228 + 52);

  Value = v112;
  sub_231476BE8();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_139();
  sub_231403238();
  v239 = 0;
  sub_2313E93D4();
  v113 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_150();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v113 = v190;
  }

  v115 = *(v113 + 16);
  v114 = *(v113 + 24);
  v207 = v97;
  if (v115 >= v114 >> 1)
  {
    OUTLINED_FUNCTION_20(v114);
    sub_2313F3244();
    v113 = v191;
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_83(&a15);
  sub_2313E937C(v222, &qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_107();
  v116 = v239;
  sub_231476BE8();
  swift_storeEnumTagMultiPayload();
  sub_231403238();
  v238 = v116;
  OUTLINED_FUNCTION_130();
  sub_2313E93D4();

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_150();
  v117 = v233;
  v118 = v234;
  v119 = v235;
  Value = v236;
  v120 = v113;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v120 = v192;
  }

  v122 = *(v120 + 16);
  v121 = *(v120 + 24);
  if (v122 >= v121 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v121);
    sub_2313F3244();
    v120 = v193;
  }

  sub_2313E937C(v225, &unk_27DD4D680, &unk_2314795C0);
  sub_2313E937C(v224, &qword_27DD4D568, &qword_2314795C8);
  *(v120 + 16) = v122 + 1;
  v123 = v120 + 32 * v122;
  *(v123 + 32) = v117;
  *(v123 + 40) = v118;
  *(v123 + 48) = v119;
  *(v123 + 56) = Value;
  v124 = v238;
  v125 = v208[5];
  v126 = v226;
  *v226 = v208[4];
  v126[1] = v125;
  Value = type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_104();
  swift_storeEnumTagMultiPayload();
  v239 = v124;
  sub_2313E93D4();

  OUTLINED_FUNCTION_106();
  sub_2313E8CDC();
  v127 = v234;
  v225 = v233;
  v128 = v235;
  v129 = v236;
  v130 = v120;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v130 = v194;
  }

  v132 = *(v130 + 16);
  v131 = *(v130 + 24);
  if (v132 >= v131 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v131);
    sub_2313F3244();
    v130 = v195;
  }

  sub_2313E937C(v226, &unk_27DD4D680, &unk_2314795C0);
  *(v130 + 16) = v132 + 1;
  v133 = v130 + 32 * v132;
  *(v133 + 32) = v225;
  *(v133 + 40) = v127;
  *(v133 + 48) = v128;
  *(v133 + 56) = v129;
  v134 = v239;
  v135 = v208[7];
  v136 = v227;
  *v227 = v208[6];
  v136[1] = v135;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_104();
  swift_storeEnumTagMultiPayload();
  v238 = v134;
  OUTLINED_FUNCTION_116();

  OUTLINED_FUNCTION_106();
  sub_2313E8CDC();
  v137 = v234;
  v226 = v233;
  v138 = v235;
  v139 = v236;
  v140 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v140 = v196;
  }

  v142 = *(v140 + 16);
  v141 = *(v140 + 24);
  if (v142 >= v141 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v141);
    sub_2313F3244();
    v140 = v197;
  }

  v143 = MEMORY[0x277D84F90];

  sub_2313E937C(v227, &unk_27DD4D680, &unk_2314795C0);
  *(v140 + 16) = v142 + 1;
  v144 = v140 + 32 * v142;
  *(v144 + 32) = v226;
  *(v144 + 40) = v137;
  *(v144 + 48) = v138;
  *(v144 + 56) = v139;
  v145 = v238;
  v146 = v208[9];
  v147 = v229;
  *v229 = v208[8];
  v147[1] = v146;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_104();
  swift_storeEnumTagMultiPayload();
  v239 = v145;
  OUTLINED_FUNCTION_116();

  OUTLINED_FUNCTION_106();
  sub_2313E8CDC();
  v148 = v233;
  v149 = v234;
  v150 = v235;
  v151 = v236;
  v152 = v140;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v152 = v198;
  }

  v154 = *(v152 + 16);
  v153 = *(v152 + 24);
  v155 = v154 + 1;
  if (v154 >= v153 >> 1)
  {
    OUTLINED_FUNCTION_20(v153);
    sub_2313F3244();
    v152 = v199;
  }

  sub_2313E937C(v229, &unk_27DD4D680, &unk_2314795C0);
  *(v152 + 16) = v155;
  v156 = v152 + 32 * v154;
  *(v156 + 32) = v148;
  *(v156 + 40) = v149;
  *(v156 + 48) = v150;
  *(v156 + 56) = v151;
  v157 = *(v228 + 64);
  v158 = *(v208 + v157);
  v240 = v239;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
  OUTLINED_FUNCTION_120();
  v159 = OUTLINED_FUNCTION_114();
  *(v159 + 16) = xmmword_231479580;
  *(v159 + v155) = v158;
  OUTLINED_FUNCTION_95();
  swift_storeEnumTagMultiPayload();

  v160 = v152;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v160 = v200;
  }

  v162 = *(v160 + 16);
  v161 = *(v160 + 24);
  v163 = v204;
  if (v162 >= v161 >> 1)
  {
    OUTLINED_FUNCTION_20(v161);
    sub_2313F3244();
    v160 = v201;
  }

  *(v160 + 16) = v162 + 1;
  v164 = v160 + 32 * v162;
  *(v164 + 32) = xmmword_231479A90;
  *(v164 + 48) = 0;
  *(v164 + 56) = v159;
  v233 = v143;
  v234 = v160;
  LOBYTE(v235) = v240;
  OUTLINED_FUNCTION_133();
  v165 = v205;
  sub_2313FEB98();
  if (v165)
  {

    sub_2313E937C(v211, &qword_27DD4D698, &qword_231479AD8);

    OUTLINED_FUNCTION_4_2();
    sub_2313EB380();
    OUTLINED_FUNCTION_5_1();
    sub_2313EB380();

    goto LABEL_36;
  }

  v231 = v157;
  v205 = 0;

  v232 = sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  v166 = v207;

  sub_231477CC8();
  v233 = v143;
  OUTLINED_FUNCTION_65_0();
  sub_2313F7138(v167, v168, MEMORY[0x277D85238]);
  v169 = OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(v169, v170);
  OUTLINED_FUNCTION_130();
  sub_2313FD260(v171, v172, v173);
  OUTLINED_FUNCTION_133();
  sub_231478498();
  (*(v217 + 104))(v216, *MEMORY[0x277D85260], v218);
  v232 = sub_231478338();
  sub_2313E93D4();
  v174 = (v214 + ((*(v213 + 80) + 24) & ~*(v213 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v175 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
  v176 = swift_allocObject();
  *(v176 + 16) = &v241;
  sub_2314030BC();
  v177 = v208;
  *(v176 + v174) = v208;
  *(v176 + v175) = v163;
  *(v176 + ((v175 + 15) & 0xFFFFFFFFFFFFFFF8)) = v166;
  OUTLINED_FUNCTION_118();
  v178 = swift_allocObject();
  *(v178 + 16) = sub_231406EF8;
  *(v178 + 24) = v176;
  *(&v236 + 1) = sub_2313EAA24;
  v237 = v178;
  v233 = MEMORY[0x277D85DD0];
  v234 = 1107296256;
  v235 = sub_2313E340C;
  *&v236 = &block_descriptor_0;
  v179 = _Block_copy(&v233);

  v180 = v232;
  dispatch_sync(v232, v179);

  _Block_release(v179);
  LOBYTE(v180) = swift_isEscapingClosureAtFileLocation();

  if ((v180 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_1();
    v181 = v212;
    sub_2313EB328();

    v182 = v205;
    sub_2313FD390(v181, v166, *(v219 + *(v210 + 7)), *(v177 + v231), 0, 0);
    v183 = v220;
    if (v182)
    {

      sub_2313EB380();
      sub_2313E937C(v203, &qword_27DD4D690, &qword_231479AD0);
      sub_2313E937C(v211, &qword_27DD4D698, &qword_231479AD8);
    }

    else
    {

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_4_2();
      sub_2313EB380();
      if (v242 == 1)
      {
        sub_2313FC2C0(v177, v183);
      }

      v184 = sub_231477B58();
      sub_2314782A8();
      v185 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v187);
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v188, v189, "InteractionStore donation to IntelligencePlatform succeeded");
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      sub_2313E937C(v203, &qword_27DD4D690, &qword_231479AD0);
      sub_2313E937C(v211, &qword_27DD4D698, &qword_231479AD8);

      OUTLINED_FUNCTION_4_2();
    }

    sub_2313EB380();
    OUTLINED_FUNCTION_5_1();
    sub_2313EB380();
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t sub_2313ED1F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_29(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = type metadata accessor for Interaction(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {

    v5 = *(v4 + 48);
    sub_231476CA8();
    OUTLINED_FUNCTION_3();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  return MEMORY[0x2821FE8E8](v0);
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_59_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return sub_231476CA8();
}

void OUTLINED_FUNCTION_99_0()
{

  JUMPOUT(0x23192D700);
}

void OUTLINED_FUNCTION_86()
{

  sub_2313FC060(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_6_1@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;
  v3 = *(v1 - 128);
  *(v1 - 224) = *(v1 - 144);
  *(v1 - 208) = v3;
  *(v1 - 199) = *(v1 - 119);

  return sub_2313F4F84(v1 - 144, v1 - 272);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2)
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 8 * v2 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_8@<X0>(char a3@<W8>)
{
  *(v3 - 80) = a3;

  return sub_231478718();
}

uint64_t OUTLINED_FUNCTION_6_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6449726F727265;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return sub_231478998();
}

__n128 *OUTLINED_FUNCTION_6_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2)
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_231477FB8();
}

uint64_t sub_2313ED930(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
  }

  return result;
}

uint64_t sub_2313ED944(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t INInteraction.asDonation()@<X0>(uint64_t a1@<X8>)
{
  v240 = a1;
  sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v247 = v4;
  v248 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_0();
  v246 = v5;
  v238 = sub_231476CE8();
  OUTLINED_FUNCTION_4();
  v237 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  *&v236 = v8;
  sub_2314767F8();
  OUTLINED_FUNCTION_4();
  v249 = v9;
  v250 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  v252 = v11;
  v12 = type metadata accessor for Interaction(0);
  v13 = (v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v239 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v232 - v16;
  *v17 = 0;
  *(v17 + 8) = 0xE000000000000000;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0xE000000000000000;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0xE000000000000000;
  *(v17 + 80) = 0;
  *(v17 + 82) = 2;
  v245 = v13[14];
  sub_231476C98();
  v242 = v13[15];
  *(v17 + v242) = 0;
  *(v17 + v13[16]) = 0;
  *(v17 + v13[17]) = 1;
  *(v17 + v13[18]) = 3;
  v18 = (v17 + v13[19]);
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v243 = v18;
  v19 = (v17 + v13[20]);
  v19->isa = 0;
  v19[1].isa = 0xE000000000000000;
  v244 = v19;
  v20 = v13[21];
  *(v17 + v20) = MEMORY[0x277D84F98];
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v21 = sub_231477B68();
  v22 = __swift_project_value_buffer(v21, qword_280C3D970);
  v23 = v1;
  v24 = sub_231477B58();
  v25 = sub_2314782A8();

  LODWORD(v251) = v25;
  v26 = os_log_type_enabled(v24, v25);
  v241 = v2;
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_16_4();
    v235 = OUTLINED_FUNCTION_23_3();
    v256[0] = v235;
    *v27 = 136315138;
    v28 = [v23 intent];
    v29 = v23;
    v30 = v17;
    v31 = v20;
    v32 = v22;
    v33 = [v28 0x1FBC40F92];

    v34 = sub_231477E68();
    v36 = v35;

    v22 = v32;
    v20 = v31;
    v17 = v30;
    v23 = v29;
    v37 = sub_2313EB684(v34, v36, v256);

    *(v27 + 4) = v37;
    OUTLINED_FUNCTION_18_3(&dword_2313E1000, v38, v251, "Converting interaction to donation (intent=%s)");
    __swift_destroy_boxed_opaque_existential_0(v235);
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
  }

  v39 = sub_2313F142C(v23);
  if (!v40)
  {
    v58 = v23;
    v59 = sub_231477B58();
    v60 = sub_2314782B8();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_16_4();
      v61 = OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_19_4(v61, 5.7779e-34);
      v63 = "Cannot convert INInteraction to Donation; invalid bundleId: %@";
LABEL_28:
      OUTLINED_FUNCTION_18_3(&dword_2313E1000, v62, v60, v63);
      sub_2313E937C(v61, &qword_27DD4EAF0, &qword_23147B980);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

LABEL_29:

    sub_2313F17E0();
    swift_allocError();
    *v65 = 0;
    swift_willThrow();
    return sub_2313F22F8(v17);
  }

  v41 = v39;
  v42 = v40;
  v43 = [v23 dateInterval];
  if (!v43)
  {

    v64 = v23;
    v59 = sub_231477B58();
    v60 = sub_2314782B8();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_16_4();
      v61 = OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_19_4(v61, 5.7779e-34);
      v63 = "Cannot convert INInteraction to Donation; missing dateInterval: %@";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v44 = v43;
  v235 = v22;
  sub_2314767C8();

  v251 = v23;
  v45 = [v23 intent];
  v46 = [v45 _className];

  v47 = sub_231477E68();
  v49 = v48;

  v50 = v47 == 0xD000000000000011 && 0x8000000231482700 == v49;
  if (v50 || (sub_2314787C8() & 1) != 0 || (v47 == 0xD000000000000016 ? (v51 = 0x80000002314828C0 == v49) : (v51 = 0), v51 || (sub_2314787C8())) && (v41 == 0x6C7070612E6D6F63 ? (v52 = v42 == 0xEF636973754D2E65) : (v52 = 0), !v52 && (sub_2314787C8() & 1) == 0))
  {
    v233 = v47;
    v74 = v236;
    sub_231476CD8();
    v56 = sub_231476CB8();
    v57 = v75;
    (*(v237 + 8))(v74, v238);

    v77 = OUTLINED_FUNCTION_20_1(v76);
    v78 = sub_2314782A8();

    LODWORD(v237) = v78;
    v79 = os_log_type_enabled(v77, v78);
    v234 = v20;
    if (v79)
    {
      v80 = v77;
      v81 = OUTLINED_FUNCTION_16_4();
      v82 = OUTLINED_FUNCTION_23_3();
      v238 = v56;
      v83 = v82;
      v256[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_2313EB684(v238, v57, v256);
      _os_log_impl(&dword_2313E1000, v80, v237, "[3pMediaWorkaround] setting random interaction ID. id=%s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      v56 = v238;
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }

    v47 = v233;
  }

  else
  {
    v53 = v251;
    v54 = sub_2313F1694([v251 intent], &selRef_identifier);
    if (!v55)
    {

      v66 = v53;
      v67 = OUTLINED_FUNCTION_20_1(v66);
      v68 = sub_2314782B8();

      if (OUTLINED_FUNCTION_24_0())
      {
        OUTLINED_FUNCTION_16_4();
        v69 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_19_4(v69, 5.7779e-34);
        OUTLINED_FUNCTION_18_3(&dword_2313E1000, v70, v68, "Cannot convert INInteraction to Donation; missing id: %@");
        sub_2313E937C(v69, &qword_27DD4EAF0, &qword_23147B980);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      sub_2313F17E0();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();
      v72 = OUTLINED_FUNCTION_2_6();
      v73(v72);
      return sub_2313F22F8(v17);
    }

    v56 = v54;
    v57 = v55;
    v234 = v20;
  }

  *v17 = v56;
  *(v17 + 8) = v57;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v84 = v251;
  v85 = [v251 intent];
  v86 = [v85 domain];

  v87 = sub_231477E68();
  v89 = v88;

  *(v17 + 32) = v87;
  *(v17 + 40) = v89;
  v90 = v84;
  *(v17 + 48) = v41;
  *(v17 + 56) = v42;
  *(v17 + 64) = v47;
  *(v17 + 72) = v49;

  *(v17 + 80) = [v84 _donatedBySiri];
  sub_23142F00C([v84 intentHandlingStatus], v256);
  *(v17 + 81) = v256[0];
  sub_23142F110([v84 direction], objc_msgSend(v84, sel__donatedBySiri), v256, v47, v49);

  *(v17 + 82) = v256[0];
  v91 = v246;
  sub_2314767D8();
  (*(v247 + 40))(&v245[v17], v91, v248);
  sub_2314767E8();
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_117;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (v92 >= 9.22337204e18)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(v17 + v242) = v92;
  v93 = sub_23142FDAC(v84);
  if (v94)
  {
    v95 = v93;
  }

  else
  {
    v95 = 0;
  }

  v96 = 0xE000000000000000;
  if (v94)
  {
    v96 = v94;
  }

  v97 = v243;
  *v243 = v95;
  v97[1] = v96;
  v98 = [v84 identifier];
  v99 = sub_231477E68();
  v101 = v100;

  v102 = v244;
  v244->isa = v99;
  v102[1].isa = v101;
  v103 = [v84 intent];
  v104 = INTypedIntentWithIntent();

  if (!v104)
  {
    v144 = MEMORY[0x277D84F98];
    v116 = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_13_6();
    v107 = v234;
    goto LABEL_53;
  }

  v259 = v104;
  sub_2313E4AFC(0, &qword_280C3BBD0, 0x277CD3D30);
  v105 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  v106 = swift_dynamicCast();
  v107 = v234;
  if ((v106 & 1) == 0)
  {

    v255 = 0;
    v253 = 0u;
    v254 = 0u;
    sub_2313E937C(&v253, &qword_27DD4D578, &qword_2314795E0);
    v144 = MEMORY[0x277D84F98];
    v116 = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_13_6();
    goto LABEL_53;
  }

  sub_2313F198C(&v253, v256);
  v108 = v257;
  v109 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  v110 = (*(v109 + 8))(v108, v109);
  if ((v110 & 1) == 0)
  {
    v133 = OUTLINED_FUNCTION_20_1(v110);
    v134 = sub_2314782A8();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_2313E1000, v133, v134, "Skipping donation because it's not donatable", v135, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    sub_2313F17E0();
    swift_allocError();
    *v136 = 3;
    swift_willThrow();

    v137 = OUTLINED_FUNCTION_2_6();
    v138(v137);
    goto LABEL_67;
  }

  v111 = v257;
  v112 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  v113 = v241;
  v114 = (*(v112 + 16))(v111, v112);
  if (v113)
  {
    v119 = OUTLINED_FUNCTION_2_6();
    v120(v119);

LABEL_67:
    __swift_destroy_boxed_opaque_existential_0(v256);
    return sub_2313F22F8(v17);
  }

  sub_2313F2910(v114);
  v116 = v115;
  v41 = 0;

  *(v17 + v107) = v116;
  v117 = v257;
  v118 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  v144 = (*(v118 + 24))(v117, v118);

  __swift_destroy_boxed_opaque_existential_0(v256);
  v90 = v251;
LABEL_53:
  v121 = [v90 intentResponse];
  if (!v121 || (v122 = v121, v123 = sub_2313F2714(v122), v122, v122, !v123))
  {
    v123 = 0;
    goto LABEL_60;
  }

  v259 = v123;
  sub_2313E4AFC(0, &qword_280C3BBD8, 0x277CD3D48);
  v124 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_60:
    v255 = 0;
    v253 = 0u;
    v254 = 0u;
LABEL_61:
    sub_2313E937C(&v253, &qword_27DD4D578, &qword_2314795E0);
    v124 = v123;
LABEL_62:
    sub_2313FA260(v17, v239);

    Donation.init(interaction:entities:)();

    v131 = OUTLINED_FUNCTION_2_6();
    v132(v131);
    goto LABEL_63;
  }

  if (!*(&v254 + 1))
  {
    goto LABEL_61;
  }

  v234 = v107;
  sub_2313F198C(&v253, v256);
  v125 = v41;
  v126 = v257;
  v127 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  v128 = (*(v127 + 16))(v126, v127);
  if (v125)
  {
    v129 = OUTLINED_FUNCTION_2_6();
    v130(v129);

    __swift_destroy_boxed_opaque_existential_0(v256);
LABEL_63:

    return sub_2313F22F8(v17);
  }

  sub_2313F2910(v128);
  v141 = v140;

  v142 = v257;
  v143 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  v243 = (*(v143 + 24))(v142, v143);
  v145 = v141 + 64;
  OUTLINED_FUNCTION_36();
  v148 = v147 & v146;
  v150 = ((v149 + 63) >> 6);

  v151 = 0;
  *&v152 = 136315138;
  v236 = v152;
  v241 = 0;
  v251 = v124;
  v237 = v141 + 64;
  v238 = v150;
  v242 = v141;
LABEL_70:
  v153 = v151;
  if (!v148)
  {
    goto LABEL_72;
  }

  do
  {
    v151 = v153;
LABEL_75:
    v154 = __clz(__rbit64(v148));
    v148 &= v148 - 1;
    v155 = v154 | (v151 << 6);
    v156 = *(v141 + 56);
    v157 = (*(v141 + 48) + 16 * v155);
    v158 = v157[1];
    v248 = *v157;
    v159 = v156 + 24 * v155;
    v161 = *v159;
    v160 = *(v159 + 8);
    v162 = *(v159 + 16);
    v244 = v116[2];

    v246 = v161;
    v247 = v160;
    v163 = v161;
    v164 = v158;
    sub_231401AEC(v163, v160, v162);
    LODWORD(v245) = v162;
    if (!v244 || (sub_2313F0604(), (v165 & 1) == 0))
    {

      sub_231401AEC(v246, v247, v162);
      v176 = v17;
      v177 = v234;
      swift_isUniquelyReferenced_nonNull_native();
      v178 = *&v176[v177];
      v17 = v176;
      *&v253 = v178;
      v244 = v164;
      v232 = sub_2313F0604();
      v179 = *(v178 + 16);
      LODWORD(v233) = v180;
      v124 = v251;
      if (__OFADD__(v179, (v180 & 1) == 0))
      {
        goto LABEL_121;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
      v150 = &v253;
      if (sub_2314785F8())
      {
        v150 = v253;
        sub_2313F0604();
        v141 = v242;
        if ((v233 & 1) != (v181 & 1))
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_21_1();
      }

      else
      {
        v141 = v242;
        OUTLINED_FUNCTION_21_1();
        v182 = v232;
        v183 = v233;
      }

      v116 = v253;
      if (v183)
      {
        v187 = *(v253 + 56) + 24 * v182;
        v188 = *v187;
        v189 = *(v187 + 8);
        *v187 = v185;
        *(v187 + 8) = v184;
        v190 = *(v187 + 16);
        *(v187 + 16) = v245;
        sub_231403090(v188, v189, v190);
      }

      else
      {
        *(v253 + 8 * (v182 >> 6) + 64) |= 1 << v182;
        v191 = (v116[6] + 16 * v182);
        v192 = v244;
        *v191 = v186;
        v191[1] = v192;
        v193 = v116[7] + 24 * v182;
        *v193 = v185;
        *(v193 + 8) = v184;
        *(v193 + 16) = v245;
        v194 = v116[2];
        v195 = __OFADD__(v194, 1);
        v196 = v194 + 1;
        if (v195)
        {
          goto LABEL_123;
        }

        v116[2] = v196;
      }

      sub_231403090(v246, v247, v245);
      *(v17 + v234) = v116;
      v145 = v237;
      goto LABEL_70;
    }

    v167 = OUTLINED_FUNCTION_20_1(v166);
    v168 = sub_2314782B8();

    v169 = os_log_type_enabled(v167, v168);
    v170 = v164;
    v124 = v251;
    if (v169)
    {
      v244 = v167;
      v171 = v170;
      v172 = swift_slowAlloc();
      v173 = OUTLINED_FUNCTION_23_3();
      *&v253 = v173;
      *v172 = v236;
      *(v172 + 4) = sub_2313EB684(v248, v171, &v253);
      v174 = v168;
      v175 = v244;
      _os_log_impl(&dword_2313E1000, v244, v174, "Conflicting field key in intent + response: %s", v172, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v173);
      OUTLINED_FUNCTION_13_6();
      OUTLINED_FUNCTION_16_2();
      v124 = v251;
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }

    sub_231403090(v246, v247, v245);
    v153 = v151;
    v141 = v242;
    v145 = v237;
    v150 = v238;
  }

  while (v148);
LABEL_72:
  while (1)
  {
    v151 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      break;
    }

    if (v151 >= v150)
    {

      v197 = v243;
      v245 = (v243 + 8);
      OUTLINED_FUNCTION_36();
      v200 = v199 & v198;
      v202 = (v201 + 63) >> 6;

      v203 = 0;
      v247 = v202;
LABEL_93:
      v204 = v203;
      if (!v200)
      {
        goto LABEL_95;
      }

      do
      {
        v203 = v204;
LABEL_98:
        v205 = __clz(__rbit64(v200));
        v200 &= v200 - 1;
        v206 = v205 | (v203 << 6);
        v207 = v197[7];
        v208 = v197[6] + 16 * v206;
        v209 = *v208;
        v210 = *(v208 + 8);
        v211 = *(v207 + 8 * v206);
        v212 = v144[2];

        v248 = v211;
        if (!v212 || (v213 = v209, sub_2313F0604(), (v214 & 1) == 0))
        {

          swift_isUniquelyReferenced_nonNull_native();
          *&v253 = v144;
          v246 = v209;
          v223 = sub_2313F0604();
          if (__OFADD__(v144[2], (v224 & 1) == 0))
          {
            goto LABEL_122;
          }

          v225 = v223;
          v226 = v224;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
          if (sub_2314785F8())
          {
            sub_2313F0604();
            OUTLINED_FUNCTION_10_8();
            if (!v50)
            {
              goto LABEL_125;
            }

            v225 = v227;
          }

          v228 = v246;
          v144 = v253;
          if (v226)
          {
            *(*(v253 + 56) + 8 * v225) = v248;
          }

          else
          {
            *(v253 + 8 * (v225 >> 6) + 64) |= 1 << v225;
            v229 = (v144[6] + 16 * v225);
            *v229 = v228;
            v229[1] = v210;
            *(v144[7] + 8 * v225) = v248;
            v230 = v144[2];
            v195 = __OFADD__(v230, 1);
            v231 = v230 + 1;
            if (v195)
            {
              goto LABEL_124;
            }

            v144[2] = v231;
          }

          OUTLINED_FUNCTION_13_6();
          v124 = v251;
          v197 = v243;

          v202 = v247;
          goto LABEL_93;
        }

        v216 = OUTLINED_FUNCTION_20_1(v215);
        v217 = sub_2314782B8();

        if (OUTLINED_FUNCTION_24_0())
        {
          v218 = OUTLINED_FUNCTION_16_4();
          v219 = OUTLINED_FUNCTION_23_3();
          v246 = v216;
          v220 = v219;
          *&v253 = v219;
          *v218 = v236;
          *(v218 + 4) = sub_2313EB684(v213, v210, &v253);
          v221 = v217;
          v222 = v246;
          _os_log_impl(&dword_2313E1000, v246, v221, "Conflicting entity key in intent + response: %s", v218, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v220);
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_13_6();
          OUTLINED_FUNCTION_16_2();
        }

        else
        {
        }

        v204 = v203;
        v124 = v251;
        v197 = v243;
        v202 = v247;
      }

      while (v200);
LABEL_95:
      while (1)
      {
        v203 = v204 + 1;
        if (__OFADD__(v204, 1))
        {
          goto LABEL_120;
        }

        if (v203 >= v202)
        {

          __swift_destroy_boxed_opaque_existential_0(v256);
          goto LABEL_62;
        }

        v200 = *&v245[8 * v203];
        ++v204;
        if (v200)
        {
          goto LABEL_98;
        }
      }
    }

    v148 = *(v145 + 8 * v151);
    ++v153;
    if (v148)
    {
      goto LABEL_75;
    }
  }

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
  result = sub_231478888();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Entity(uint64_t a1)
{
  result = qword_280C3CA80;
  if (!qword_280C3CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313EEFC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2313EF028(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2313EF080(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_231477FF8())
  {
    result = sub_2313F12D8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2314784D8();
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
          result = sub_231478558();
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

uint64_t sub_2313EF198(uint64_t a1, unint64_t a2)
{
  v3 = sub_2313EF080(a1, a2);
  sub_2313F1348(&unk_2846085C0);
  return v3;
}

uint64_t sub_2313EF1F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231476CA8();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_3()
{
}

uint64_t sub_2313EF320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_28_0(*(a1 + 8));
  }

  v7 = sub_231476CA8();
  v8 = a1 + *(a3 + 48);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0()
{
  v1 = v0;
  v2 = sub_231476A58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 nameComponents];
  if (v6)
  {
    v7 = v6;
    sub_231476A38();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D630, &qword_231479970);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_23147B9E0;
    *(v8 + 32) = sub_231476A18();
    *(v8 + 40) = v9;
    *(v8 + 48) = sub_2314769E8();
    *(v8 + 56) = v10;
    *(v8 + 64) = sub_231476A08();
    *(v8 + 72) = v11;
    *(v8 + 80) = sub_2314769F8();
    *(v8 + 88) = v12;
    *(v8 + 96) = sub_231476A28();
    *(v8 + 104) = v13;
    *(v8 + 112) = sub_231476A48();
    *(v8 + 120) = v14;
    (*(v3 + 8))(v5, v2);
    v15 = *(v8 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D630, &qword_231479970);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_231479580;
    v16 = [v1 displayName];
    v17 = sub_231477E68();
    v19 = v18;

    *(v8 + 32) = v17;
    *(v8 + 40) = v19;
    v15 = 1;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
LABEL_5:
  for (i = (v8 + 40 + 16 * v20); ; i += 2)
  {
    if (v15 == v20)
    {

      v31[1] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
      sub_2313EF69C();
      sub_231477E28();

      return;
    }

    if (v20 >= v15)
    {
      break;
    }

    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_21;
    }

    v24 = *i;
    if (*i)
    {
      v25 = *(i - 1);
      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23141CC58();
          v21 = v29;
        }

        v27 = *(v21 + 16);
        if (v27 >= *(v21 + 24) >> 1)
        {
          sub_23141CC58();
          v21 = v30;
        }

        *(v21 + 16) = v27 + 1;
        v28 = v21 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v20 = v23;
        goto LABEL_5;
      }
    }

    ++v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_2313EF69C()
{
  result = qword_280C3C138;
  if (!qword_280C3C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D638, qword_231479978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C138);
  }

  return result;
}

uint64_t sub_2313EF700@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x277D84F98];
  type metadata accessor for Entity(0);
  sub_231476C98();
  v5 = sub_231414BC8(v2, &selRef_contactIdentifier);
  if (v6 || (v5 = sub_231414BC8(v2, &selRef_customIdentifier), v6))
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = 0x6E6F73726550;
    a2[3] = 0xE600000000000000;
    _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
    v9 = v8;
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = a2[4];
      sub_2313F1184(v11, v9, 3, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
      a2[4] = v23;
    }

    else
    {
    }

    result = sub_2313EF980();
    if (v14)
    {
      v15 = v14;
      if (a1)
      {
        v16 = result;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v24 = a2[4];
        result = sub_2313F1184(v16, v15, 3, 0x6E6F6974616C6572, 0xEC00000070696873, v17);
        a2[4] = v24;
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v18 = sub_231477B68();
    __swift_project_value_buffer(v18, qword_280C3D970);
    v19 = sub_231477B58();
    v20 = sub_2314782B8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2313E1000, v19, v20, "Cannot convert INPerson to Entity; missing identifier.", v21, 2u);
      MEMORY[0x23192F1F0](v21, -1, -1);
    }

    sub_2313F17E0();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    return sub_2313F09B4(a2);
  }

  return result;
}

uint64_t sub_2313EF980()
{
  v1 = [v0 relationship];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();
  v5 = v4;

  sub_2313F1938();
  sub_2313F2600();
  if (sub_231477E18())
  {
    v6 = sub_231477F48();
    v7 = sub_2314300A0(v6, v3, v5);
    v3 = MEMORY[0x23192DFC0](v7);
  }

  return v3;
}

void sub_2313EFA7C()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_17_0();
  v132 = v4;
  OUTLINED_FUNCTION_40();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v123 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v123 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v123 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v141 = v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  v18 = (&v123 - v17);
  v19 = type metadata accessor for Entity(0);
  v133 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v127 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39();
  v125 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39();
  v126 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39();
  v130 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39();
  v136 = v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39();
  v129 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  v33 = &v123 - v32;
  v134 = v0;
  v34 = sub_231433338(v0);
  v135 = MEMORY[0x277D84F98];
  v137 = v19;
  if (!v34)
  {
LABEL_57:
    v56 = v132;
    goto LABEL_58;
  }

  v35 = v34;
  v124 = v33;
  v138 = v11;
  v139 = v8;
  v128 = v1;
  v144 = MEMORY[0x277D84F90];
  v36 = sub_2313F3038(v34);
  v37 = 0;
  v140 = v14;
  while (1)
  {
    if (v36 == v37)
    {

      v40 = v144;
      v143 = sub_2313F3038(v144);
      if (v143)
      {
        v41 = 0;
        v142 = v40 & 0xC000000000000001;
        v131 = MEMORY[0x277D84F90];
        v2 = v128;
        v42 = v137;
        v8 = v139;
        while (v143 != v41)
        {
          if (v142)
          {
            v43 = MEMORY[0x23192E5D0](v41, v40);
          }

          else
          {
            if (v41 >= *(v40 + 16))
            {
              goto LABEL_83;
            }

            v43 = *(v40 + 8 * v41 + 32);
          }

          v44 = v43;
          v45 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_82;
          }

          sub_2313EF700(1, v18);
          if (v2)
          {

            OUTLINED_FUNCTION_5_9(v18);
            sub_231426638(v18);
            v2 = 0;
            ++v41;
          }

          else
          {

            OUTLINED_FUNCTION_4_9(v18);
            v46 = v124;
            sub_2313F0804(v18, v124);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_0();
              sub_23141CB80();
              v131 = v52;
            }

            v48 = *(v131 + 16);
            v47 = *(v131 + 24);
            if (v48 >= v47 >> 1)
            {
              OUTLINED_FUNCTION_10(v47);
              sub_23141CB80();
              v131 = v53;
            }

            *(v131 + 16) = v48 + 1;
            OUTLINED_FUNCTION_11_11();
            sub_2313F0804(v46, v50 + v49 + *(v51 + 72) * v48);
            v41 = v45;
            v42 = v137;
          }
        }

        v54 = v131;
        if (*(v131 + 16))
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_9_11();
          sub_2313F0660(v54, 0x6E65697069636572, 0xEA00000000007374);
          v55 = v144;
        }

        else
        {

          v55 = MEMORY[0x277D84F98];
        }

        v135 = v55;
        v11 = v138;
        v57 = 0;
        v131 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v143 == v57)
          {

            v82 = v131;
            if (*(v131 + 16))
            {
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_9_11();
              sub_2313F0660(v82, 0xD000000000000010, 0x80000002314829A0);
              v135 = v144;
            }

            else
            {
            }

            goto LABEL_57;
          }

          if (v142)
          {
            v59 = MEMORY[0x23192E5D0](v57, v40);
            v58 = v141;
          }

          else
          {
            v58 = v141;
            if (v57 >= *(v40 + 16))
            {
              goto LABEL_85;
            }

            v59 = *(v40 + 8 * v57 + 32);
          }

          if (__OFADD__(v57, 1))
          {
            goto LABEL_84;
          }

          v60 = [v59 personHandle];
          if (v60)
          {
            v61 = v60;
            sub_2313F0A10(v14);
            if (!v2)
            {

              OUTLINED_FUNCTION_4_9(v14);
              v63 = v136;
              sub_2313F0804(v14, v136);
              _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
              v65 = v64;
              OUTLINED_FUNCTION_8_11();
              if (v67)
              {
                v68 = v66;
                swift_isUniquelyReferenced_nonNull_native();
                OUTLINED_FUNCTION_12_11();
                OUTLINED_FUNCTION_2_8(v68, v65, v69, v70, v71, v72);
                *(v63 + 32) = v144;
              }

              else
              {
              }

              v58 = v141;
              sub_2313F0804(v63, v141);
              v62 = 0;
              v14 = v140;
              v42 = v137;
              goto LABEL_46;
            }

            v2 = 0;
          }

          v62 = 1;
          OUTLINED_FUNCTION_5_9(v14);
          sub_231426638(v14);
LABEL_46:
          __swift_storeEnumTagSinglePayload(v58, v62, 1, v42);

          if (__swift_getEnumTagSinglePayload(v58, 1, v42) == 1)
          {
            sub_231426638(v58);
            ++v57;
            v11 = v138;
            v8 = v139;
          }

          else
          {
            v73 = v129;
            sub_2313F0804(v58, v129);
            sub_2313F0804(v73, v130);
            v74 = v131;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = v138;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_3_0();
              sub_23141CB80();
              v74 = v80;
            }

            v77 = *(v74 + 16);
            v76 = *(v74 + 24);
            if (v77 >= v76 >> 1)
            {
              OUTLINED_FUNCTION_10(v76);
              sub_23141CB80();
              v74 = v81;
            }

            *(v74 + 16) = v77 + 1;
            OUTLINED_FUNCTION_11_11();
            v131 = v74;
            sub_2313F0804(v130, v74 + v78 + *(v79 + 72) * v77);
            ++v57;
            v42 = v137;
            v8 = v139;
          }
        }
      }

      v135 = MEMORY[0x277D84F98];
      v2 = v128;
      v56 = v132;
      v11 = v138;
      v8 = v139;
LABEL_58:
      v83 = [v134 sender];
      if (v83)
      {
        v84 = v83;
        if (sub_23142FF28())
        {
        }

        else
        {
          sub_2313EF700(1, v11);
          if (v2)
          {

            OUTLINED_FUNCTION_5_9(v11);
            sub_231426638(v11);
            v2 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_4_9(v11);
            v85 = v126;
            sub_2313F0804(v11, v126);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
            OUTLINED_FUNCTION_0_9();
            v88 = v87 & ~v86;
            v89 = swift_allocObject();
            *(v89 + 16) = xmmword_231479580;
            sub_2313F0868(v85, v89 + v88);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_9_11();
            v90 = v89;
            v2 = 0;
            sub_2313F0660(v90, 0x7265646E6573, 0xE600000000000000);
            sub_2313F09B4(v85);
            v135 = v144;
          }

          v91 = [v84 personHandle];
          if (v91)
          {
            v92 = v91;
            sub_2313F0A10(v8);

            OUTLINED_FUNCTION_4_9(v8);
            v93 = v125;
            sub_2313F0804(v8, v125);
            _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
            v95 = v94;
            OUTLINED_FUNCTION_8_11();
            if (v97)
            {
              v98 = v96;
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_12_11();
              OUTLINED_FUNCTION_2_8(v98, v95, v99, v100, v101, v102);
              *(v93 + 32) = v144;
            }

            else
            {
            }

            v103 = v93;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
            OUTLINED_FUNCTION_0_9();
            v106 = v105 & ~v104;
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_231479580;
            sub_2313F0868(v103, v107 + v106);
            v108 = v135;
            swift_isUniquelyReferenced_nonNull_native();
            v144 = v108;
            sub_2313F0660(v107, 0x61487265646E6573, 0xEC000000656C646ELL);

            sub_2313F09B4(v103);
            v135 = v144;
            v2 = 0;
          }

          else
          {

            OUTLINED_FUNCTION_5_9(v8);
            sub_231426638(v8);
          }
        }
      }

      v109 = [v134 speakableGroupName];
      if (v109)
      {
        v110 = v109;
        v111 = v2;
        v112 = [v109 spokenPhrase];
        v113 = sub_231477E68();
        v115 = v114;

        v116 = HIBYTE(v115) & 0xF;
        if ((v115 & 0x2000000000000000) == 0)
        {
          v116 = v113 & 0xFFFFFFFFFFFFLL;
        }

        if (v116)
        {
          v117 = v110;
          sub_231432BA8(v117, v56);
          if (v111)
          {

            __swift_storeEnumTagSinglePayload(v56, 1, 1, v137);
            sub_231426638(v56);
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v56, 0, 1, v137);
            v118 = v127;
            sub_2313F0804(v56, v127);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
            OUTLINED_FUNCTION_0_9();
            v121 = v120 & ~v119;
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_231479580;
            sub_2313F0868(v118, v122 + v121);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_9_11();
            sub_2313F0660(v122, 0xD000000000000012, 0x8000000231482980);

            sub_2313F09B4(v118);
          }
        }

        else
        {
        }
      }

      return;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x23192E5D0](v37, v35);
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    v39 = v38;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (sub_23142FF28())
    {
    }

    else
    {
      sub_231478568();
      sub_2314785A8();
      v14 = v140;
      sub_2314785B8();
      sub_231478578();
    }

    ++v37;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

unint64_t sub_2313F0604()
{
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_14_5();
  sub_231477F38();
  sub_231478918();
  v0 = OUTLINED_FUNCTION_36_0();

  return sub_2313F08CC(v0, v1, v2);
}

uint64_t sub_2313F0660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_7(a1, a2);
  sub_2313F0604();
  OUTLINED_FUNCTION_0_7();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
  OUTLINED_FUNCTION_11_9();
  if (sub_2314785F8())
  {
    sub_2313F0604();
    OUTLINED_FUNCTION_10_8();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a1;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    sub_2313F0980(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_2313F0784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231476CA8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2313F0804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2313F0868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2313F08CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2314787C8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2313F0980(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_1_8(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_2313F09B4(uint64_t a1)
{
  v2 = type metadata accessor for Entity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313F0A10@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F98];
  type metadata accessor for Entity(0);
  sub_231476C98();
  strcpy((a1 + 16), "PersonHandle");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  v3 = INPersonHandle.entityIdentifier()();
  if (v4)
  {
    return sub_2313F09B4(a1);
  }

  *a1 = v3;
  v6 = sub_2313F1088();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_9();
    sub_2313F1184(v8, v9, 3, 0x6C6562616CLL, 0xE500000000000000, v10);
    *(a1 + 32) = v18;
  }

  if ([v1 type] == 2)
  {
    v11 = 0x656E6F6870;
  }

  else
  {
    if ([v1 type] != 1)
    {
      goto LABEL_10;
    }

    v11 = 0x6C69616D65;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_9();
  sub_2313F1184(v11, 0xE500000000000000, 3, 1701869940, 0xE400000000000000, v12);
  *(a1 + 32) = v18;
LABEL_10:
  result = [v1 type];
  if (result == 2)
  {
    result = sub_2313F24D8(v3._countAndFlagsBits, v3._object);
    if (result)
    {

      v13 = sub_2313F2654(10, v3._countAndFlagsBits, v3._object);
      v14 = MEMORY[0x23192DFC0](v13);
      v16 = v15;

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_9();
      result = sub_2313F1184(v14, v16, 3, 0x437972746E756F63, 0xEB0000000065646FLL, v17);
      *(a1 + 32) = v18;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> INPersonHandle.entityIdentifier()()
{
  v2 = sub_2313F0EFC(v0);
  if (v3)
  {
    v1 = v2;
    v4 = v3;
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [v0 type];
      if (v6)
      {
        if (v6 == 1)
        {
          v14 = *MEMORY[0x277CFBCE0];
          v15 = sub_231477E58();

          v16 = (*(v14 + 16))(v14, v15);

          v8 = sub_231477E68();
          v1 = v17;

          goto LABEL_24;
        }

        if (v6 == 2)
        {
          sub_2313F0F60();

          v7 = sub_2313F0FA4(v1, v4);
          v8 = sub_2313F1018(v7);
          v1 = v9;

          if (!v1)
          {
            v8 = 0;
            v1 = 0xE000000000000000;
          }

          goto LABEL_24;
        }

        if (qword_280C3CF50 != -1)
        {
          OUTLINED_FUNCTION_5(&qword_280C3CF50);
        }

        v18 = sub_231477B68();
        __swift_project_value_buffer(v18, qword_280C3D970);
        v19 = sub_231477B58();
        v20 = sub_2314782B8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2313E1000, v19, v20, "Unhandled INPersonHandleType variant when converting INPersonHandle", v21, 2u);
          MEMORY[0x23192F1F0](v21, -1, -1);
        }
      }

      v8 = sub_23143018C(v1, v4);
      v1 = v22;

      goto LABEL_24;
    }
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v10 = sub_231477B68();
  __swift_project_value_buffer(v10, qword_280C3D970);
  v11 = sub_231477B58();
  v8 = sub_2314782B8();
  if (os_log_type_enabled(v11, v8))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2313E1000, v11, v8, "Could not convert INPersonHandle to entity because its value is missing.", v12, 2u);
    MEMORY[0x23192F1F0](v12, -1, -1);
  }

  sub_2313F17E0();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
LABEL_24:
  v23 = v8;
  v24 = v1;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t sub_2313F0EFC(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();

  return v3;
}

unint64_t sub_2313F0F60()
{
  result = qword_280C3BC00;
  if (!qword_280C3BC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BC00);
  }

  return result;
}

id sub_2313F0FA4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231477E58();

  v4 = [v2 initWithStringValue_];

  return v4;
}

uint64_t sub_2313F1018(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231477E68();

  return v3;
}

uint64_t sub_2313F1088()
{
  v1 = [v0 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();
  v5 = v4;

  sub_2313F1938();
  sub_2313F2600();
  if (sub_231477E18())
  {
    v6 = sub_231477F48();
    v7 = sub_2314300A0(v6, v3, v5);
    v3 = MEMORY[0x23192DFC0](v7);
  }

  return v3;
}

uint64_t sub_2313F1184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a3;
  sub_2313F0604();
  OUTLINED_FUNCTION_0_7();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
  if (sub_2314785F8())
  {
    sub_2313F0604();
    OUTLINED_FUNCTION_9_9();
    if (!v18)
    {
      goto LABEL_14;
    }

    v15 = v17;
  }

  v19 = *v6;
  if (v16)
  {
    v20 = v19[7] + 24 * v15;
    v21 = *v20;
    v22 = *(v20 + 8);
    *v20 = a1;
    *(v20 + 8) = a2;
    v23 = *(v20 + 16);
    *(v20 + 16) = v9;

    return sub_231403090(v21, v22, v23);
  }

  else
  {
    sub_2313F2484(v15, a4, a5, a1, a2, v9, v19);
  }
}

void *sub_2313F12D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D670, &qword_231479A68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_2313F1348(uint64_t result)
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

    result = sub_23142F340(result, v7, 1, v3);
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

uint64_t sub_2313F142C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_2313F1694([a1 intent], &selRef_launchId);
  v7 = v6;
  if (v6)
  {
    v8 = [a1 intent];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 preferredCallProvider];

      if (v10 == 2)
      {

        return 0xD000000000000012;
      }
    }

    else
    {
    }

    v15 = v5;
    v16 = v7;
    v13 = 0xD000000000000010;
    v14 = 0x80000002314828E0;
    sub_2313F1938();
    sub_2313F2600();
    if (sub_231477E18() & 1) != 0 || (v15 = v5, v16 = v7, v13 = 0xD000000000000016, v14 = 0x8000000231482900, (sub_231477E18()))
    {
      sub_231476AE8();

      v11 = sub_231476AF8();
      if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
      {
        sub_2313E937C(v4, &qword_27DD4DA58, &unk_23147A530);
        return 0;
      }

      else
      {
        v5 = sub_231476AB8();
        (*(*(v11 - 8) + 8))(v4, v11);
      }
    }
  }

  return v5;
}

uint64_t sub_2313F1694(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231477E68();

  return v4;
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_2314788E8();
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_2314471F0(v0);
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2050;
  *(v1 + 24) = 40;
  return result;
}

unint64_t sub_2313F17E0()
{
  result = qword_280C3BC90;
  if (!qword_280C3BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC90);
  }

  return result;
}

uint64_t sub_2313F1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_91();
  type metadata accessor for Interaction(v6);
  OUTLINED_FUNCTION_85();
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

unint64_t sub_2313F1938()
{
  result = qword_280C3BC30;
  if (!qword_280C3BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC30);
  }

  return result;
}

uint64_t sub_2313F198C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2313F19FC(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v63 = a4;
  v7 = *a3;
  v61 = a3[1];
  v58 = v7;
  v60 = *(a3 + 4);
  HIDWORD(v59) = *(a3 + 40);
  v8 = type metadata accessor for Interaction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D550, &qword_231479550);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = type metadata accessor for Donation(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 timestamp];
  v18 = v17;
  v19 = [a1 eventBody];
  if (v19)
  {
    v64 = v19;
    v20 = sub_2313F3E7C(v19);
    if (v4)
    {

LABEL_4:
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v21 = sub_231477B68();
      __swift_project_value_buffer(v21, qword_280C3D970);
      v22 = sub_231477B58();
      v23 = sub_2314782B8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v70[0] = v25;
        *v24 = 136315138;
        v26 = sub_231478998();
        v28 = sub_2313EB684(v26, v27, v70);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_2313E1000, v22, v23, "cannot extract INInteraction from BMIntentEvent. event=%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x23192F1F0](v25, -1, -1);
        MEMORY[0x23192F1F0](v24, -1, -1);
      }

      return;
    }

    if (!v20)
    {
      goto LABEL_4;
    }

    v41 = v20;
    INInteraction.asDonation()(v13);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    sub_2313E7340(v13, v16, type metadata accessor for Donation);
    if (v18 > 0.0 && sub_2313FA388(v16, v18))
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v42 = sub_231477B68();
      __swift_project_value_buffer(v42, qword_280C3D970);
      v43 = sub_231477B58();
      v44 = sub_2314782B8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v66 = v46;
        *v45 = 136315138;
        swift_beginAccess();
        sub_2313F4BF8(v16, v10, type metadata accessor for Interaction);
        v47 = sub_231477EB8();
        v49 = sub_2313EB684(v47, v48, &v66);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_2313E1000, v43, v44, "Skip the appIntent interaction. interaction=%s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x23192F1F0](v46, -1, -1);
        MEMORY[0x23192F1F0](v45, -1, -1);
      }
    }

    else
    {
      *(v16 + *(v14 + 28)) = 1;
      v50 = *a3;
      if (*a3)
      {
        v51 = *(a3 + 24);
        v67 = *(a3 + 8);
        v68 = v51;
        v69 = *(a3 + 40);
        v66 = v50;
        v70[0] = v58;
        v70[1] = v61;
        v71 = v60;
        v72 = BYTE4(v59);
        sub_2313F4F84(v70, v65);
        Donation.donateToSiriRemembersView(_:donationCache:)(&v66, v63, v52, v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, v63, v64, v65[0], v65[1], v65[2]);

        sub_2313E937C(a3, &qword_27DD4D548, &qword_23147F900);
LABEL_25:
        sub_231404F7C(v16);
        return;
      }
    }

    goto LABEL_25;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v29 = sub_231477B68();
  __swift_project_value_buffer(v29, qword_280C3D970);
  v30 = a1;
  v31 = sub_231477B58();
  v32 = sub_2314782B8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v70[0] = v34;
    *v33 = 136315138;
    v35 = v30;
    v36 = [v35 description];
    v37 = sub_231477E68();
    v39 = v38;

    v40 = sub_2313EB684(v37, v39, v70);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_2313E1000, v31, v32, "AppIntent event has no body. event=%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23192F1F0](v34, -1, -1);
    MEMORY[0x23192F1F0](v33, -1, -1);
  }
}

uint64_t sub_2313F22A0()
{
  sub_2313F410C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2313F22F8(uint64_t a1)
{
  v2 = type metadata accessor for Interaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2313F2368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_97();
  type metadata accessor for Interaction(v8);
  OUTLINED_FUNCTION_85();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v9);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_2313F2408(void *a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[1];
  v8 = *a2;
  v9[0] = v6;
  *(v9 + 9) = *(a2 + 25);
  v7 = MEMORY[0x23192EB00]();
  sub_2313F19FC(a1, v3, &v8, a3);

  objc_autoreleasePoolPop(v7);
}

unint64_t sub_2313F2484(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_2313F24D8(uint64_t a1, uint64_t a2)
{
  sub_2313F1938();
  sub_2313F2600();
  if ((sub_231477E18() & 1) == 0 || sub_231477F48() < 12)
  {
    return 0;
  }

  while (1)
  {
    v2 = sub_231477FE8();
    if (!v3)
    {
      break;
    }

    v4 = v2;
    v5 = v3;
    if ((sub_231477E08() & 1) != 0 || (v4 == 43 ? (v6 = v5 == 0xE100000000000000) : (v6 = 0), v6))
    {
    }

    else
    {
      v7 = sub_2314787C8();

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }
  }

  return 1;
}

unint64_t sub_2313F2600()
{
  result = qword_280C3BC38;
  if (!qword_280C3BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC38);
  }

  return result;
}

uint64_t sub_2313F2654(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_231477F78();
    v3 = sub_231478088();

    return v3;
  }

  return result;
}

id sub_2313F2714(void *a1)
{
  ObjectType = swift_getObjectType();
  if (ObjectType != sub_2313E4AFC(0, &qword_280C3BBD8, 0x277CD3D48))
  {
    return a1;
  }

  v5 = [a1 _instanceDescription];
  if (!v5)
  {
    return a1;
  }

  v6 = v5;
  v7 = [v5 facadeClass];

  if (!v7)
  {
    return a1;
  }

  swift_getObjCClassMetadata();
  if (!swift_dynamicCastMetatype())
  {
    return a1;
  }

  v8 = [a1 backingStore];
  if (!v8)
  {
    return a1;
  }

  v9 = v8;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBackingStore_];

  return v3;
}

__n128 OUTLINED_FUNCTION_21_0()
{
  v2 = *(v0 + 16);
  *(v1 - 128) = *v0;
  *(v1 - 112) = v2;
  result = *(v0 + 32);
  *(v1 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t a1)
{

  return sub_2314786B8();
}

void sub_2313F2910(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  v2 = 0;
  v28 = sub_231478628();
  v29 = a1;
  v3 = a1 + 64;
  OUTLINED_FUNCTION_36();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v27 = v9 + 64;
  if (v6)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_8:
      v13 = v10 | (v2 << 6);
      v14 = *(v29 + 56);
      v15 = (*(v29 + 48) + 16 * v13);
      v16 = v15[1];
      v36 = *v15;
      sub_2314137BC(v14 + 40 * v13, v33);
      v17 = v34;
      v18 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v19 = *(v18 + 8);

      v19(v31, v17, v18);
      v20 = v31[0];
      v21 = v31[1];
      LOBYTE(v17) = v32;
      __swift_destroy_boxed_opaque_existential_0(v33);
      *(v27 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v28[6] + 16 * v13);
      *v22 = v36;
      v22[1] = v16;
      v23 = v28[7] + 24 * v13;
      *v23 = v20;
      *(v23 + 8) = v21;
      *(v23 + 16) = v17;
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      v6 = v30;
      if (!v30)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v2;
    while (1)
    {
      v2 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v2 >= v8)
      {
        return;
      }

      v12 = *(v3 + 8 * v2);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v30 = (v12 - 1) & v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2313F2AD4()
{
  v1 = type metadata accessor for Entity(0);
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2313F2F94(v0);
  v5 = MEMORY[0x277D84F98];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v7 = sub_2313F3038(v4);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {

    v11 = MEMORY[0x277D84F90];
LABEL_13:
    v22 = v11[2];
    if (v22)
    {
      v54 = v8;
      sub_2313FA208(0, v22, 0);
      v47 = v11;
      v23 = v11 + 5;
      v24 = v54;
      while (1)
      {
        v51 = v24;
        v52 = v22;
        v26 = *(v23 - 1);
        v25 = *v23;
        v50 = v23;
        v3[4] = v5;

        sub_231476C98();
        v3[1] = v25;
        v3[2] = 0x6567617373654DLL;
        v3[3] = 0xE700000000000000;
        *v3 = v26;
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v53 = v3[4];
        v27 = v53;
        v28 = OUTLINED_FUNCTION_0_10();
        if (__OFADD__(v27[2], (v29 & 1) == 0))
        {
          break;
        }

        v30 = v28;
        v31 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
        if (sub_2314785F8())
        {
          v32 = OUTLINED_FUNCTION_0_10();
          if ((v31 & 1) != (v33 & 1))
          {
            goto LABEL_33;
          }

          v30 = v32;
        }

        v34 = v53;
        if (v31)
        {
          v35 = v53[7] + 24 * v30;
          v36 = *v35;
          v37 = *(v35 + 8);
          *v35 = v26;
          *(v35 + 8) = v25;
          v38 = *(v35 + 16);
          *(v35 + 16) = 3;
          sub_231403090(v36, v37, v38);
        }

        else
        {
          v53[(v30 >> 6) + 8] |= 1 << v30;
          v39 = (v34[6] + 16 * v30);
          *v39 = 0x696669746E656469;
          v39[1] = 0xEA00000000007265;
          v40 = v34[7] + 24 * v30;
          *v40 = v26;
          *(v40 + 8) = v25;
          *(v40 + 16) = 3;
          v41 = v34[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_31;
          }

          v34[2] = v43;
        }

        v3[4] = v34;
        v24 = v51;
        v54 = v51;
        v45 = *(v51 + 16);
        v44 = *(v51 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2313FA208(v44 > 1, v45 + 1, 1);
          v24 = v54;
        }

        *(v24 + 16) = v45 + 1;
        sub_2313F0804(v3, v24 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45);
        v23 = v50 + 2;
        v22 = v52 - 1;
        if (v52 == 1)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_28:
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v5;
    sub_2313F0660(v24, 0x7373654D746E6573, 0xEC00000073656761);
    return v54;
  }

  v9 = v7;
  v54 = MEMORY[0x277D84F90];
  sub_2313F3060(0, v7 & ~(v7 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v52 = v3;
    v10 = 0;
    v11 = v54;
    do
    {
      v12 = v11;
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23192E5D0](v10, v6);
      }

      else
      {
        v13 = *(v6 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = [v13 identifier];
      v16 = sub_231477E68();
      v18 = v17;

      v11 = v12;
      v54 = v12;
      v19 = v12[2];
      v20 = v11[3];
      if (v19 >= v20 >> 1)
      {
        sub_2313F3060(v20 > 1, v19 + 1, 1);
        v11 = v54;
      }

      ++v10;
      v11[2] = v19 + 1;
      v21 = &v11[2 * v19];
      v21[4] = v16;
      v21[5] = v18;
    }

    while (v9 != v10);

    v5 = MEMORY[0x277D84F98];
    v3 = v52;
    v8 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_231478888();
  __break(1u);
  return result;
}

uint64_t sub_2313F2F94(void *a1)
{
  v1 = [a1 sentMessages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2313F2FF4();
  v3 = sub_231478128();

  return v3;
}

unint64_t sub_2313F2FF4()
{
  result = qword_280C3BBB8;
  if (!qword_280C3BBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BBB8);
  }

  return result;
}

uint64_t sub_2313F303C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231478618();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  return sub_2313F1184(a1, a2, a3, a4, 0xE900000000000065, a6);
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_2313FC214();
}

unint64_t OUTLINED_FUNCTION_13_11(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_2313EB684(0xD000000000000016, v2 | 0x8000000000000000, (v3 - 80));
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2)
{

  return sub_231478748();
}

id OUTLINED_FUNCTION_13_14()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_2313F31EC()
{
  OUTLINED_FUNCTION_73();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_17();
  v3(v2);
  return v0;
}

void sub_2313F3244()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D998, &qword_23147A280);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_101(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2313F33A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_2313F3390();
}

uint64_t sub_2313F34B8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2313F3500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_13SiriRemembers9FTSFilterOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void EntityQuery.fetchOne(_:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v4 = type metadata accessor for _Entity(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  v43 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA88, &qword_23147A6D8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_21_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_6(v19);
    sub_2313F3918();
  }

  else
  {
    v41 = v20;
    v42 = v18;
    v40 = v3;
    OUTLINED_FUNCTION_12_6(v19);
    v21 = sub_2313F4D04();
    if (!v0)
    {
      v22 = v21;
      OUTLINED_FUNCTION_5_3();
      v28 = sub_2313E7E78(v23, v24, v25, v26, type metadata accessor for _Entity, &unk_23148073C, v27, v1);
      MEMORY[0x28223BE20](v28);
      OUTLINED_FUNCTION_23_1();
      sub_231477098();
      v39 = v22;
      sub_2313E9628(v16, v13, &qword_27DD4DA88, &qword_23147A6D8);
      if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
      {
        sub_2313E937C(v16, &qword_27DD4DA88, &qword_23147A6D8);
      }

      else
      {
        sub_231423674(v13, v50, type metadata accessor for _Entity);
        v29 = v43;
        sub_2313EEFC8(v50, v43, type metadata accessor for _Entity);
        sub_23142011C(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);

        sub_2313EF028(v50, type metadata accessor for _Entity);
        sub_2313E937C(v16, &qword_27DD4DA88, &qword_23147A6D8);
      }

      v37 = type metadata accessor for Entity(0);
      OUTLINED_FUNCTION_25_0(v37);
      (*(v41 + 8))(v1, v42);
    }
  }

  OUTLINED_FUNCTION_62();
}

void sub_2313F3918()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v53 = v4;
  v54 = sub_2314779E8();
  OUTLINED_FUNCTION_4();
  v52 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA8, &qword_23147A7F0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_34();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  v24 = v3[1];
  v56 = *v3;
  *v57 = v24;
  *&v57[9] = *(v3 + 25);
  OUTLINED_FUNCTION_21_0();
  v25 = sub_2313F4D04();
  if (!v0)
  {
    v50 = v12;
    v51 = v16;
    v49 = v9;
    v26 = v54;
    v58 = v22;
    v27 = v25;
    OUTLINED_FUNCTION_4_3();
    v33 = sub_2313E7E78(v28, v29, v30, v31, MEMORY[0x277D1F258], MEMORY[0x277D1F248], v32, v1);
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_23_1();
    sub_231477098();
    v55 = v27;
    v34 = v51;
    sub_2313E9628(v19, v51, &qword_27DD4DAA8, &qword_23147A7F0);
    v35 = v26;
    v36 = v20;
    if (__swift_getEnumTagSinglePayload(v34, 1, v26) == 1)
    {
      sub_2313E937C(v19, &qword_27DD4DAA8, &qword_23147A7F0);
    }

    else
    {
      v37 = v52;
      v38 = v50;
      (*(v52 + 32))(v50, v34, v35);
      v39 = v49;
      (*(v37 + 16))(v49, v38, v35);
      sub_2314204D8(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), *v57, *&v57[8]);
      v22 = v58;

      (*(v37 + 8))(v38, v35);
      sub_2313E937C(v19, &qword_27DD4DAA8, &qword_23147A7F0);
    }

    v47 = type metadata accessor for Entity(0);
    OUTLINED_FUNCTION_25_0(v47);
    (*(v22 + 8))(v1, v36);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313F3D2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2313EB8A4(result, a2);
  }

  return result;
}

uint64_t sub_2313F3DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 64);
  return sub_2313F3E1C(v4, v5, v6, v7, v8);
}

uint64_t sub_2313F3E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    return sub_2313E6C34(a4, a5);
  }

  return result;
}

uint64_t sub_2313F3E7C(void *a1)
{
  v3 = sub_2313F3F70(a1);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2313F3FD4(v5, v6);
  v8 = sub_2313F402C(v5, v6);
  if (!v1)
  {
    v9 = v8;
    sub_2313E4AFC(0, &qword_280C3BBF8, 0x277CD3D58);
    sub_231477E68();
    v2 = sub_2314783F8();
  }

  sub_2313F3D2C(v5, v6);
  return v2;
}

uint64_t sub_2313F3F70(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231476BA8();

  return v3;
}

double sub_2313F3FD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

id sub_2313F402C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231476B98();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_231476A68();

    swift_willThrow();
  }

  sub_2313EB8A4(a1, a2);
  return v7;
}

id *sub_2313F410C()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t SiriRemembersBiomeStreamDonator.__deallocating_deinit()
{
  SiriRemembersBiomeStreamDonator.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void *SiriRemembersBiomeStreamDonator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t SiriCallHistoryDonator.__deallocating_deinit()
{
  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t InteractionStore.opened()@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v80 = sub_231476AF8();
  OUTLINED_FUNCTION_4();
  v76 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v79 = v6 - v5;
  type metadata accessor for _InteractionStore(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_34();
  v78 = v12 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v73[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v73[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v73[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v73[-v25];
  MEMORY[0x28223BE20](v24);
  v77 = &v73[-v27];
  v28 = v1[1];
  v83 = *v1;
  *v84 = v28;
  *&v84[9] = *(v1 + 25);
  v29 = *(v83 + 16);
  v81 = v83;
  sub_231478318();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_21_5();
      if (!v32)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v52 = sub_231477B68();
      OUTLINED_FUNCTION_38(v52, qword_280C3D970);
      v53 = sub_231477B58();
      v54 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12_1(v54))
      {
        *OUTLINED_FUNCTION_102() = 0;
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v55, v56, "opening a lazy IP InteractionStore");
        OUTLINED_FUNCTION_7_8();
      }

      MEMORY[0x28223BE20](v57);
      *&v73[-32] = xmmword_231479AA0;
      *&v73[-16] = 0;
      *&v73[-8] = 0;
      OUTLINED_FUNCTION_16_6(sub_231446908, &v73[-48], sub_231446920);
      if (!v2)
      {
        OUTLINED_FUNCTION_2_11();
      }

      goto LABEL_29;
    case 2u:

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E198, &unk_23147CE48);
      sub_2314222CC(v10 + *(v31 + 48), v17);
      OUTLINED_FUNCTION_21_5();
      if (!v32)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v33 = sub_231477B68();
      OUTLINED_FUNCTION_38(v33, qword_280C3D970);
      v34 = sub_231477B58();
      v35 = sub_2314782A8();
      OUTLINED_FUNCTION_12_1(v35);
      v10 = v77;
      OUTLINED_FUNCTION_20_4();
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_102();
        *v37 = 0;
        _os_log_impl(&dword_2313E1000, v34, v29, "reopening a dummy InteractionStore", v37, 2u);
        OUTLINED_FUNCTION_16_2();
      }

      v38 = 1;
      v39 = v80;
      goto LABEL_23;
    case 3u:
    case 5u:
      sub_2313EB404(v10);
      goto LABEL_3;
    case 4u:
      v40 = *(v10 + 8);
      v41 = *(v10 + 16);

      MEMORY[0x28223BE20](v42);
      *&v73[-32] = xmmword_231479AA0;
      *&v73[-16] = v40;
      *&v73[-8] = v41;
      OUTLINED_FUNCTION_16_6(sub_231446628, &v73[-48], sub_231446920);

      if (!v2)
      {
LABEL_3:
        result = OUTLINED_FUNCTION_2_11();
      }

      break;
    default:
      v75 = v2;
      v74 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E190, &qword_23147CE40) + 48));
      sub_2314222CC(v10, v26);
      OUTLINED_FUNCTION_21_5();
      if (!v32)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v43 = sub_231477B68();
      OUTLINED_FUNCTION_38(v43, qword_280C3D970);
      sub_2313EA3E4(v26, v23);
      v44 = sub_231477B58();
      v45 = sub_2314782A8();
      v46 = os_log_type_enabled(v44, v45);
      v10 = v77;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v82[0] = v48;
        *v47 = 136315138;
        sub_2313EA3E4(v23, v20);
        v49 = sub_231477EB8();
        v20 = v50;
        sub_2313EA454(v23);
        v51 = sub_2313EB684(v49, v20, v82);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_2313E1000, v44, v45, "opening a lazy InteractionStore with the URL: %s ", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_7_8();
      }

      else
      {

        sub_2313EA454(v23);
      }

      v17 = v26;
      v39 = v80;
      OUTLINED_FUNCTION_20_4();
      v38 = v74;
LABEL_23:
      sub_2314222CC(v17, v10);
      sub_2313EA3E4(v10, v23);
      if (__swift_getEnumTagSinglePayload(v23, 1, v39) == 1)
      {
        sub_2313EA454(v23);
        OUTLINED_FUNCTION_21_5();
        if (!v32)
        {
          OUTLINED_FUNCTION_5(&qword_280C3CF50);
        }

        v58 = sub_231477B68();
        OUTLINED_FUNCTION_38(v58, qword_280C3D970);
        v59 = sub_231477B58();
        v60 = sub_2314782B8();
        if (OUTLINED_FUNCTION_12_1(v60))
        {
          *OUTLINED_FUNCTION_102() = 0;
          OUTLINED_FUNCTION_32_0(&dword_2313E1000, v61, v62, "lazy InteractionStore has no URL set.");
          OUTLINED_FUNCTION_7_8();
        }

        v63 = sub_23141ECFC();
        OUTLINED_FUNCTION_17_4(&type metadata for InteractionStoreError, v63);
        v65 = v64;
        v66 = sub_231477E58();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
        inited = swift_initStackObject();
        v82[0] = OUTLINED_FUNCTION_6_9(inited, xmmword_23147CE20);
        v82[1] = v68;
        MEMORY[0x23192E060](46, 0xE100000000000000);
        MEMORY[0x23192E060](0xD000000000000014, 0x8000000231481E80);

        v69 = sub_231477E58();

        inited[3].n128_u64[0] = v69;
        inited[3].n128_u64[1] = 1701603686;
        inited[4].n128_u64[0] = 0xE400000000000000;
        inited[4].n128_u64[1] = sub_231477E58();
        inited[5].n128_u64[0] = 1668183398;
        inited[5].n128_u64[1] = 0xE400000000000000;
        inited[6].n128_u64[0] = sub_231477E58();
        inited[6].n128_u64[1] = 1701734764;
        inited[7].n128_u64[0] = 0xE400000000000000;
        inited[7].n128_u64[1] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
        sub_231477DC8();
        v70 = sub_231477DA8();

        AnalyticsSendEvent();

        *v65 = 1;
        swift_willThrow();
LABEL_29:
        result = sub_2313EA454(v10);
      }

      else
      {
        v71 = v76;
        v72 = (*(v76 + 32))(v20, v23, v39);
        MEMORY[0x28223BE20](v72);
        *&v73[-16] = v20;
        v73[-8] = v38;
        OUTLINED_FUNCTION_16_6(sub_231446648, &v73[-32], sub_231446920);
        sub_2313EA454(v10);
        if (!v2)
        {
          OUTLINED_FUNCTION_2_11();
        }

        result = (*(v71 + 8))(v20, v39);
      }

      break;
  }

  return result;
}

uint64_t sub_2313F4BF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return sub_231477B58();
}

uint64_t *sub_2313F4D04()
{
  type metadata accessor for _InteractionStore(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v5 = (v4 - v3);
  v6 = *v0;
  v15 = *(v0 + 1);
  v16 = *(v0 + 3);
  v17 = *(v0 + 40);
  v14 = v6;
  v7 = &v14;
  InteractionStore.opened()(&v18);
  if (!v1)
  {
    v12 = v18;
    v13[0] = v19[0];
    *(v13 + 9) = *(v19 + 9);
    sub_2313F501C(&v12);
    v7 = *(v6 + 16);
    sub_231478318();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        v7 = *v5;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E198, &unk_23147CE48);
        sub_2313EA454(v5 + *(v11 + 48));
        break;
      case 3u:
        v7 = *v5;
        break;
      case 4u:
      case 5u:
        v7 = *v5;

        break;
      default:
        v9 = sub_23141ECFC();
        OUTLINED_FUNCTION_17_4(&type metadata for InteractionStoreError, v9);
        *v10 = 3;
        swift_willThrow();
        sub_2313EA454(v5);
        break;
    }
  }

  return v7;
}

uint64_t sub_2313F4EBC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 96);
  swift_beginAccess();
  return sub_2313F4BF8(a1 + v6, a3, a2);
}

uint64_t JSONValue.description.getter(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      sub_23141F9C4();
      v3 = sub_231478458();
      goto LABEL_9;
    case 2:
      v3 = sub_2314781C8();
LABEL_9:
      v2 = v3;
      break;
    case 3:

      break;
    case 4:
      sub_2314767B8();
      swift_allocObject();
      sub_2314767A8();
      v2 = sub_231447358();

      break;
    case 5:
      sub_2314767B8();
      swift_allocObject();
      sub_2314767A8();
      v2 = sub_2313F6380();

      break;
    default:
      if (v2)
      {
        v2 = 1702195828;
      }

      else
      {
        v2 = 0x65736C6166;
      }

      break;
  }

  return v2;
}

void OUTLINED_FUNCTION_101_0(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v2 - 320);
  *(a1 + 40) = v1;
  *(a1 + 48) = *(v2 - 328);
}

void sub_2313F529C()
{
  OUTLINED_FUNCTION_64();
  v216 = v2;
  v217 = v1;
  v3 = v0;
  v5 = v4;
  v189 = v6;
  v225 = *MEMORY[0x277D85DE8];
  v203 = sub_231477D58();
  OUTLINED_FUNCTION_4();
  v202 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v9);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210);
  OUTLINED_FUNCTION_4();
  v200 = v10;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  v218 = &v178 - v12;
  v13 = OUTLINED_FUNCTION_47();
  v198 = type metadata accessor for _NewEntity(v13);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v16 = OUTLINED_FUNCTION_28(v15);
  v196 = type metadata accessor for Entity(v16);
  OUTLINED_FUNCTION_4();
  v204 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  v219 = v19;
  OUTLINED_FUNCTION_47();
  v209 = sub_231477D88();
  OUTLINED_FUNCTION_4();
  v205 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  v208 = v22;
  OUTLINED_FUNCTION_47();
  v23 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = v5[1];
  v194 = *v5;
  v31 = v5[3];
  v193 = v5[2];
  v32 = v5[5];
  v192 = v5[4];
  v33 = v5[9];
  v191 = v5[8];
  v34 = v5[7];
  v188 = v5[6];
  v220 = v34;
  v182 = type metadata accessor for Donation(0);
  v35 = v182[7];
  v210 = v3;
  LODWORD(v185) = *(v3 + v35);
  LODWORD(v184) = *(v5 + 80);
  v187 = *(v5 + 82);
  OUTLINED_FUNCTION_140(*(v5 + 81));
  v36 = type metadata accessor for Interaction(0);
  v37 = v36[12];
  v211 = v25;
  v39 = *(v25 + 16);
  v38 = v25 + 16;
  v215 = v29;
  v206 = v23;
  v195 = v39;
  v39(v29, v5 + v37, v23);
  v183 = *(v5 + v36[13]);
  v40 = *(v5 + v36[19]);
  v41 = sub_2314767B8();
  OUTLINED_FUNCTION_74();
  swift_allocObject();

  v212 = v31;

  v213 = v32;

  v214 = v33;

  sub_2314767A8();
  v42 = v217;
  v43 = sub_2313F6380();
  if (!v42)
  {
    v179 = v44;
    v180 = v43;
    v181 = v30;
    v45 = v220;
    v207 = v41;
    v190 = v38;

    v46 = *(v210 + v182[9]);
    v47 = *(v210 + v182[10]);
    v48 = *(v210 + v182[8] + 8);
    v217 = 0;
    if (v48 > 2)
    {
      v49 = 1;
    }

    else
    {
      v49 = qword_23147A348[v48];
    }

    v210 = v49;
    v50 = v215;
    OUTLINED_FUNCTION_135();
    v51 = v191;
    v52 = v188;
    v53 = v187;
    v54 = v186;
    v55 = v185;
    v56 = v184;
    v57 = v183;
    *v58 = v60;
    *(v58 + 8) = v59;
    *(v58 + 16) = v62;
    *(v58 + 24) = v61;
    *(v58 + 32) = v64;
    *(v58 + 40) = v63;
    *(v58 + 48) = v51;
    *(v58 + 56) = v65;
    *(v58 + 64) = v52;
    *(v58 + 72) = v45;
    *(v58 + 80) = v55;
    *(v58 + 81) = v56;
    *(v58 + 88) = v53;
    *(v58 + 96) = v54;
    v66 = v58;
    v67 = type metadata accessor for _NewInteraction(0);
    v68 = OUTLINED_FUNCTION_125(v67);
    v69(v68, v50, v206);
    *(v66 + v222) = v57;
    v70 = (v66 + SHIDWORD(v222));
    v71 = v179;
    *v70 = v180;
    v70[1] = v71;
    v72 = v223;
    *(v66 + v223) = 0;
    *(v66 + v224) = v46;
    *(v66 + v225) = v47;
    *(v66 + SHIDWORD(v225)) = v210;
    v73 = v208;
    sub_231477D78();
    v221 = sub_231401864(v40);
    v74 = v217;
    sub_231401B20(&v221);
    if (!v74)
    {
      v185 = v72;
      v75 = v221;
      v76 = v209;
      v77 = v216;
      v215 = *(v221 + 16);
      v213 = 0;
      if (!v215)
      {
LABEL_51:

        v221 = sub_2314023CC(v77);
        v121 = v213;
        sub_2314025F0(&v221);
        v122 = v121;
        if (!v121)
        {
          v123 = v201;
          v124 = v205;
          OUTLINED_FUNCTION_140(*(v221 + 16));
          if (v126)
          {
            v127 = 0;
            v128 = v125 + 32;
            v220 = MEMORY[0x277D84F90];
            v188 = v125;
            v184 = v125 + 32;
            do
            {
              if (v127 >= *(v125 + 16))
              {
                goto LABEL_80;
              }

              v129 = (v128 + 24 * v127);
              v130 = v129[1];
              v191 = *v129;
              v131 = v129[2];
              v187 = v127 + 1;
              v194 = *(v131 + 16);
              v193 = v130;

              v132 = 0;
              v192 = v131;
              while (v194 != v132)
              {
                if (v132 >= *(v131 + 16))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_59();
                v216 = v133;
                OUTLINED_FUNCTION_63_0();
                v135 = v134;
                sub_2313EB328();
                v136 = v135[2];
                v137 = v135[3];

                v215 = v136;
                sub_231401D64(v136, v137);
                OUTLINED_FUNCTION_126();
                sub_2314027B0(v138, v139, v73);
                v140 = OUTLINED_FUNCTION_17();
                sub_2313EB8A4(v140, v141);
                v142 = v73;
                v144 = *v135;
                v143 = v135[1];

                sub_231401D64(v144, v143);
                OUTLINED_FUNCTION_126();
                sub_2314027B0(v145, v146, v142);
                v147 = OUTLINED_FUNCTION_17();
                sub_2313EB8A4(v147, v148);
                sub_231402974();
                v150 = v149;
                OUTLINED_FUNCTION_74();
                swift_allocObject();
                sub_2314767A8();
                v151 = sub_2313F6380();
                if (v122)
                {

                  OUTLINED_FUNCTION_145();

                  OUTLINED_FUNCTION_5_1();
                  OUTLINED_FUNCTION_96();
                  sub_2313EB380();
                  (*(v205 + 8))(v208, v209);

                  OUTLINED_FUNCTION_13_4();
                  sub_2313EB380();
                  goto LABEL_67;
                }

                v217 = 0;
                v213 = v152;
                v214 = v151;

                v221 = v150;
                v222 = 0;
                LOBYTE(v223) = 5;

                v153 = sub_231402B08(0, 0xE000000000000000);
                v211 = v154;
                v212 = v153;

                sub_231403090(v221, v222, v223);
                v155 = *(v196 + 28);
                v156 = v198;
                v157 = v197;
                v158 = v197 + *(v198 + 32);
                v159 = v144;
                v160 = v206;
                v210 = v137;
                v161 = v195;
                v195(v158, v135 + v155, v206);
                v161(v157 + *(v156 + 36), v135 + v155, v160);
                *v157 = v159;
                v157[1] = v143;
                v162 = v214;
                v163 = v210;
                v157[2] = v215;
                v157[3] = v163;
                v165 = v212;
                v164 = v213;
                v157[4] = v162;
                v157[5] = v164;
                v166 = v211;
                v157[6] = v165;
                v157[7] = v166;
                OUTLINED_FUNCTION_57_0();
                sub_2313F31EC();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v169 = OUTLINED_FUNCTION_3_0();
                  v220 = sub_231403A1C(v169, v170, v171, v172);
                }

                v123 = v201;
                v73 = v208;
                v76 = v209;
                v168 = *(v220 + 16);
                v167 = *(v220 + 24);
                v124 = v205;
                v122 = v217;
                if (v168 >= v167 >> 1)
                {
                  v173 = OUTLINED_FUNCTION_20(v167);
                  v220 = sub_231403A1C(v173, v168 + 1, 1, v220);
                }

                *(v220 + 16) = v168 + 1;
                OUTLINED_FUNCTION_59();
                sub_2314030BC();
                OUTLINED_FUNCTION_13_4();
                sub_2313EB380();
                v132 = v216 + 1;
                v131 = v192;
              }

              OUTLINED_FUNCTION_145();

              v127 = v187;
              v125 = v188;
              v128 = v184;
            }

            while (v187 != v186);
          }

          else
          {

            v220 = MEMORY[0x277D84F90];
          }

          sub_231477D68();
          v174 = sub_231403B58(v123);
          v175 = OUTLINED_FUNCTION_90();
          v176(v175);
          (*(v124 + 8))(v73, v76);
          *(v189 + v185) = v174;
          goto LABEL_67;
        }

        v177 = v121;
LABEL_84:

        __break(1u);
        JUMPOUT(0x2313F6328);
      }

      v78 = 0;
      v79 = (v221 + 64);
      v214 = v221;
      while (2)
      {
        if (v78 >= *(v75 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
        }

        v81 = *(v79 - 2);
        v80 = *(v79 - 1);
        v82 = *v79;
        v220 = v78 + 1;
        v84 = *(v79 - 4);
        v83 = *(v79 - 3);

        v217 = v80;
        sub_231401AEC(v81, v80, v82);
        v85 = sub_231401D64(v84, v83);
        v86 = v85;
        v88 = v87;
        switch(v87 >> 62)
        {
          case 1uLL:
            if (v85 >> 32 < v85)
            {
              goto LABEL_72;
            }

            if (!sub_231476848() || !__OFSUB__(v86, sub_231476868()))
            {
              goto LABEL_21;
            }

            goto LABEL_78;
          case 2uLL:
            v94 = *(v85 + 16);
            v93 = *(v85 + 24);
            if (sub_231476848() && __OFSUB__(v94, sub_231476868()))
            {
              goto LABEL_76;
            }

            if (__OFSUB__(v93, v94))
            {
              goto LABEL_73;
            }

LABEL_21:
            sub_231476858();
            OUTLINED_FUNCTION_78();
            sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            OUTLINED_FUNCTION_17();
            v73 = v208;
            v76 = v209;
LABEL_22:
            sub_231477D48();
            sub_2313EB8A4(v86, v88);
            switch(v82)
            {
              case 1:
                v221 = v81;
                sub_23141F9C4();
                v105 = sub_231478458();
                goto LABEL_34;
              case 2:
                v105 = sub_2314781C8();
LABEL_34:
                v81 = v105;
                goto LABEL_38;
              case 3:
                v97 = v217;
                goto LABEL_38;
              case 4:
                OUTLINED_FUNCTION_74();
                swift_allocObject();
                sub_2314767A8();
                v74 = v213;
                v98 = sub_231447358();
                v213 = v74;
                if (v74)
                {
                  goto LABEL_81;
                }

                v100 = v98;
                v101 = v99;

                v102 = v81;
                v103 = v217;
                v104 = 4;
                goto LABEL_37;
              case 5:
                OUTLINED_FUNCTION_74();
                swift_allocObject();
                sub_2314767A8();
                v74 = v213;
                v106 = sub_2313F6380();
                v213 = v74;
                if (!v74)
                {
                  v100 = v106;
                  v101 = v107;

                  v102 = v81;
                  v103 = v217;
                  v104 = 5;
LABEL_37:
                  sub_231403090(v102, v103, v104);
                  v81 = v100;
                  v97 = v101;
LABEL_38:
                  v108 = sub_231401D64(v81, v97);
                  v109 = v108;
                  v111 = v110;
                  switch(v110 >> 62)
                  {
                    case 1uLL:
                      if (v108 >> 32 < v108)
                      {
                        goto LABEL_74;
                      }

                      if (!sub_231476848() || !__OFSUB__(v109, sub_231476868()))
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_79;
                    case 2uLL:
                      v116 = *(v108 + 16);
                      v117 = *(v108 + 24);
                      if (sub_231476848() && __OFSUB__(v116, sub_231476868()))
                      {
                        goto LABEL_77;
                      }

                      if (__OFSUB__(v117, v116))
                      {
                        goto LABEL_75;
                      }

LABEL_49:
                      sub_231476858();
                      OUTLINED_FUNCTION_78();
                      sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
                      OUTLINED_FUNCTION_17();
LABEL_50:
                      sub_231477D48();
                      v119 = OUTLINED_FUNCTION_109();
                      sub_2313EB8A4(v119, v120);
                      v77 = v216;
                      v75 = v214;
                      v79 += 40;
                      v78 = v220;
                      if (v215 == v220)
                      {
                        goto LABEL_51;
                      }

                      continue;
                    case 3uLL:
                      OUTLINED_FUNCTION_2_3();
                      sub_2313F7138(&qword_280C3C920, v118, MEMORY[0x277CC5538]);
                      OUTLINED_FUNCTION_30_0();
                      goto LABEL_50;
                    default:
                      LOBYTE(v221) = v108;
                      OUTLINED_FUNCTION_129(SBYTE1(v108));
                      OUTLINED_FUNCTION_127(SBYTE4(v109));
                      OUTLINED_FUNCTION_123(SBYTE6(v109));
                      HIBYTE(v221) = v112;
                      LOBYTE(v222) = v111;
                      OUTLINED_FUNCTION_121(SBYTE1(v111));
                      BYTE3(v222) = v113;
                      BYTE4(v222) = v114;
                      BYTE5(v222) = BYTE5(v111);
                      OUTLINED_FUNCTION_2_3();
                      sub_2313F7138(&qword_280C3C920, v115, MEMORY[0x277CC5538]);
                      OUTLINED_FUNCTION_77();
                      goto LABEL_50;
                  }
                }

LABEL_81:

                OUTLINED_FUNCTION_131();
                swift_unexpectedError();
                __break(1u);
                break;
              default:
                v96 = (v81 & 1) == 0;
                if (v81)
                {
                  v81 = 1702195828;
                }

                else
                {
                  v81 = 0x65736C6166;
                }

                if (v96)
                {
                  v97 = 0xE500000000000000;
                }

                else
                {
                  v97 = 0xE400000000000000;
                }

                goto LABEL_38;
            }

            break;
          case 3uLL:
            OUTLINED_FUNCTION_2_3();
            sub_2313F7138(&qword_280C3C920, v95, MEMORY[0x277CC5538]);
            OUTLINED_FUNCTION_30_0();
            goto LABEL_22;
          default:
            LOBYTE(v221) = v85;
            OUTLINED_FUNCTION_129(SBYTE1(v85));
            OUTLINED_FUNCTION_127(SBYTE4(v86));
            OUTLINED_FUNCTION_123(SBYTE6(v86));
            HIBYTE(v221) = v89;
            LOBYTE(v222) = v88;
            OUTLINED_FUNCTION_121(SBYTE1(v88));
            BYTE3(v222) = v90;
            BYTE4(v222) = v91;
            BYTE5(v222) = BYTE5(v88);
            OUTLINED_FUNCTION_2_3();
            sub_2313F7138(&qword_280C3C920, v92, MEMORY[0x277CC5538]);
            OUTLINED_FUNCTION_77();
            goto LABEL_22;
        }

        break;
      }
    }

    v177 = v74;
    goto LABEL_84;
  }

  (*(v211 + 8))(v215, v206);

LABEL_67:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313F6380()
{
  v1 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
  OUTLINED_FUNCTION_0_14();
  v5 = sub_2313F6580(v2, v3, v4, MEMORY[0x277D83508]);
  OUTLINED_FUNCTION_18_6(v5);
  if (!v0)
  {
    sub_231477E98();
    OUTLINED_FUNCTION_16_5();
    sub_231477E88();
    if (v6)
    {
      OUTLINED_FUNCTION_23_7();
      v7 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v7, v8);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v10 = sub_231477B68();
      __swift_project_value_buffer(v10, qword_280C3D970);
      v11 = sub_231477B58();
      v12 = sub_2314782B8();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_26_6();
        swift_slowAlloc();
        v13 = OUTLINED_FUNCTION_16_8(4.8754e-34);
        v14 = OUTLINED_FUNCTION_13_11(v13);
        OUTLINED_FUNCTION_17_6(v14);
        OUTLINED_FUNCTION_13_0(&dword_2313E1000, v15, v16, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
      v17 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v17, v18);
    }
  }

  return OUTLINED_FUNCTION_7_10();
}

uint64_t sub_2313F6580(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DA30, &qword_23147D060);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JSONValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_231478958();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_1_14();
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      sub_231478858();
      break;
    case 2:
      OUTLINED_FUNCTION_19_8(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24, v25, v26);
      sub_231478848();
      break;
    case 3:
      __swift_mutable_project_boxed_opaque_existential_1(&v23, v26);
      sub_231478828();
      break;
    case 4:
      OUTLINED_FUNCTION_19_8(v4, v5, v6, v7, v8, v9, v10, v11, v2, v23, v24, v25, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1B8, &qword_23147D068);
      OUTLINED_FUNCTION_0_14();
      sub_23144878C(v14, v15);
      goto LABEL_8;
    case 5:
      OUTLINED_FUNCTION_19_8(v4, v5, v6, v7, v8, v9, v10, v11, v2, v23, v24, v25, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
      OUTLINED_FUNCTION_0_14();
      sub_2313F6580(v18, v19, v20, MEMORY[0x277D83508]);
LABEL_8:
      sub_231478868();
      break;
    default:
      OUTLINED_FUNCTION_1_14();
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      sub_231478838();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(&v23);
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

uint64_t OUTLINED_FUNCTION_114()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_114_0@<Q0>(char a1@<W8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  *(v3 - 127) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 111) = result;
  return result;
}

uint64_t sub_2313F68E0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v10, v6 + 32, v3, a1);
  v8 = v10;

  sub_231401B18(v8);
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

double static ActivityHeartbeat.instance.getter()
{
  if (qword_280C3BE20 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_2313F6A60()
{
  v1 = v0;
  *(v0 + 32) = (*(v0 + 16))();
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);

  oslog = sub_231477B58();
  v3 = sub_2314782A8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 32);

    _os_log_impl(&dword_2313E1000, oslog, v3, "ActivityHeartbeat: updated %ld", v4, 0xCu);
    MEMORY[0x23192F1F0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2313F6BB4()
{
  v0 = sub_231476CA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231476C98();
  sub_231476BC8();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = round(v5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Donation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  v25 = v24;
  v54 = v26;
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v55 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D720, &qword_231479B00);
  OUTLINED_FUNCTION_4();
  v56 = v29;
  v57 = v30;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v31);
  v33 = &v52 - v32;
  type metadata accessor for Donation(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  v39 = v38[6];
  *(v37 + v39) = 0;
  v40 = (v36 - v35 + v38[8]);
  v59 = v38;
  v60 = v40;
  *v40 = xmmword_231479AA0;
  v41 = v38[10];
  v42 = v37;
  *(v37 + v41) = 0;
  v43 = v25[3];
  v61 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v43);
  sub_2313F7180();
  v58 = v33;
  sub_231478948();
  if (v23)
  {
    v46 = v60;
    __swift_destroy_boxed_opaque_existential_0(v61);
    sub_2313EADE8(*v46, *(v46 + 1));
  }

  else
  {
    v53 = v41;
    LOBYTE(v62) = 0;
    OUTLINED_FUNCTION_62_0();
    sub_2313F7138(v44, v45, &protocol conformance descriptor for Interaction);
    sub_2314786B8();
    OUTLINED_FUNCTION_9_2();
    sub_2313F31EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    OUTLINED_FUNCTION_122();
    sub_23141EF64();
    sub_2314786B8();
    v47 = v60;
    *(v42 + v59[5]) = v62;
    sub_23141F0C0();
    OUTLINED_FUNCTION_44_0(&type metadata for UpdateStrategy);
    *(v42 + v39) = v62;
    sub_23141F114();
    OUTLINED_FUNCTION_44_0(&type metadata for DonorStream);
    *(v42 + v59[7]) = v62;
    sub_2313F8A58();
    OUTLINED_FUNCTION_44_0(&type metadata for UserDonator);
    v48 = v62;
    v49 = v63;
    sub_2313EADE8(*v47, *(v47 + 1));
    *v47 = v48;
    *(v47 + 1) = v49;
    LOBYTE(v62) = 5;
    *(v42 + v59[9]) = sub_231478698() & 1;
    sub_2313F9030();
    OUTLINED_FUNCTION_44_0(&type metadata for InteractionDevicePlatform);
    v50 = OUTLINED_FUNCTION_72();
    v51(v50);
    *(v42 + v53) = v62;
    OUTLINED_FUNCTION_11_3();
    sub_2313EB328();
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313F7138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2313F7180()
{
  result = qword_27DD4D6D0;
  if (!qword_27DD4D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D6D0);
  }

  return result;
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_57_0()
{
  v3 = *(v1 - 256);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_2313F7244(char a1)
{
  result = 0x7463617265746E69;
  switch(a1)
  {
    case 1:
      result = 0x7365697469746E65;
      break;
    case 2:
      result = 0x7453657461647075;
      break;
    case 3:
      result = 0x727453726F6E6F64;
      break;
    case 4:
      result = 0x616E6F4472657375;
      break;
    case 5:
      result = 0x6C61636F4C7369;
      break;
    case 6:
      result = 0x6C50656369766564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Donation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x2313F7428);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractionHandlingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_2313F74D8()
{
  result = qword_27DD4DFD0;
  if (!qword_27DD4DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFD0);
  }

  return result;
}

uint64_t sub_2313F7534(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x656369766564;
      goto LABEL_11;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      v3 = 0x656C646E7562;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0x6574616E6F447369;
      break;
    case 6:
      result = 0x676E696C646E6168;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0x7461447472617473;
      break;
    case 9:
      result = 0x6E6F697461727564;
      break;
    case 10:
      result = 0x6C50656369766564;
      break;
    case 11:
      result = 0x6C61636F4C7369;
      break;
    case 12:
      result = 0x616E6F4472657375;
      break;
    case 13:
      result = 0x65644970756F7267;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0x73646C656966;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Interaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x2313F781CLL);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2313F7844()
{
  result = qword_27DD4DFF8;
  if (!qword_27DD4DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_2313F7980()
{
  result = qword_27DD4E078;
  if (!qword_27DD4E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E078);
  }

  return result;
}

uint64_t Interaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v53 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v51 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v52 = v6 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DFF0, &qword_23147C530);
  OUTLINED_FUNCTION_4();
  v54 = v7;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Interaction(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  *v15 = 0;
  *(v15 + 8) = 0xE000000000000000;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0xE000000000000000;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0xE000000000000000;
  *(v15 + 80) = 0;
  *(v15 + 82) = 2;
  v50 = v12[14];
  sub_231476C98();
  v49 = v12[15];
  *(v15 + v49) = 0;
  v48 = v12[16];
  *(v15 + v48) = 0;
  v47 = v12[17];
  *(v15 + v47) = 1;
  v16 = v12[18];
  *(v15 + v16) = 3;
  v17 = (v15 + v12[19]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v15 + v12[20]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = v12[21];
  v58 = a1;
  v59 = v15;
  *(v15 + v19) = MEMORY[0x277D84F98];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F74D8();
  v55 = v10;
  v20 = v57;
  sub_231478948();
  if (!v20)
  {
    v57 = v16;
    v21 = v54;
    LOBYTE(v60) = 0;
    v22 = sub_231478688();
    v24 = v59;
    *v59 = v22;
    v24[1] = v25;
    OUTLINED_FUNCTION_3_5(1);
    v24[2] = sub_231478688();
    v24[3] = v26;
    OUTLINED_FUNCTION_3_5(2);
    v24[4] = sub_231478688();
    v24[5] = v27;
    OUTLINED_FUNCTION_3_5(3);
    v24[6] = sub_231478688();
    v24[7] = v28;
    OUTLINED_FUNCTION_3_5(4);
    v24[8] = sub_231478688();
    v24[9] = v29;
    OUTLINED_FUNCTION_3_5(5);
    *(v24 + 80) = sub_231478698() & 1;
    v61 = 6;
    sub_2313F7844();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_22_3(v30, v31);
    *(v24 + 81) = v60;
    v61 = 7;
    sub_2313F8000();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_22_3(v32, v33);
    *(v24 + 82) = v60;
    LOBYTE(v60) = 8;
    OUTLINED_FUNCTION_12_13();
    sub_2313F81DC(v34, v35, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_22_3(v53, &v60);
    (*(v51 + 40))(v24 + v50, v52, v53);
    OUTLINED_FUNCTION_3_5(9);
    *(v59 + v49) = sub_2314786A8();
    v61 = 10;
    sub_2313F9030();
    OUTLINED_FUNCTION_20_2();
    sub_2314786B8();
    *(v59 + v48) = v60;
    OUTLINED_FUNCTION_27_2(11);
    *(v59 + v47) = sub_231478698() & 1;
    v61 = 12;
    sub_23143AF70();
    OUTLINED_FUNCTION_20_2();
    sub_2314786B8();
    *(v59 + v57) = v60;
    LOBYTE(v60) = 13;
    *v17 = sub_231478688();
    v17[1] = v36;
    OUTLINED_FUNCTION_27_2(14);
    *v18 = sub_231478688();
    v18[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    v61 = 15;
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v38, v39, v40, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_20_2();
    v41 = v56;
    v42 = v55;
    sub_2314786B8();
    (*(v21 + 8))(v42, v41);
    v43 = v59;
    *(v59 + v19) = v60;
    OUTLINED_FUNCTION_10_11();
    sub_231405434(v43, v46, v44);
  }

  __swift_destroy_boxed_opaque_existential_0(v58);
  OUTLINED_FUNCTION_0_12();
  return sub_2313FC214();
}

unint64_t sub_2313F8000()
{
  result = qword_27DD4E000;
  if (!qword_27DD4E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E000);
  }

  return result;
}

unint64_t sub_2313F80B4()
{
  result = qword_27DD4E080;
  if (!qword_27DD4E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceEngineInteractionStore.EventId.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2313F8198(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231476CA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2313F81DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2313F8224(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DonorStream(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t UserDonator.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED68, &qword_2314812A8);
  OUTLINED_FUNCTION_4();
  v69 = v3;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13();
  v72 = v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED70, &qword_2314812B0);
  OUTLINED_FUNCTION_4();
  v64 = v6;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v68 = v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED78, &qword_2314812B8);
  OUTLINED_FUNCTION_4();
  v65 = v9;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED80, &qword_2314812C0);
  OUTLINED_FUNCTION_4();
  v63 = v14;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED88, &unk_2314812C8);
  OUTLINED_FUNCTION_4();
  v71 = v19;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F8AC4();
  v23 = v74;
  sub_231478948();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v60 = v13;
  v61 = v17;
  v62 = v12;
  v24 = v72;
  v25 = v73;
  v74 = a1;
  v26 = sub_2314786D8();
  sub_2313F8D60(v26, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_7;
  }

  v59 = 0;
  if (v28 >= (v29 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2313F8968);
  }

  v30 = *(v27 + v28);
  sub_2313F8D58(v28 + 1);
  v32 = v31;
  v34 = v33;
  swift_unknownObjectRelease();
  if (v32 != v34 >> 1)
  {
LABEL_7:
    v43 = sub_231478548();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870);
    *v45 = &type metadata for UserDonator;
    sub_231478658();
    sub_231478538();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_1_25();
    v47(v46);
    a1 = v74;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = v30;
  v37 = v69;
  v36 = v70;
  switch(v35)
  {
    case 1:
      v76 = 1;
      sub_231473224();
      OUTLINED_FUNCTION_3_13(&type metadata for UserDonator.RecognizedUserCodingKeys, &v76);
      v54 = sub_231478688();
      v55 = v71;
      v41 = v54;
      v42 = v56;
      swift_unknownObjectRelease();
      v57 = OUTLINED_FUNCTION_8_22();
      v58(v57);
      (*(v55 + 8))(v22, v18);
      break;
    case 2:
      v77 = 2;
      sub_2314731D0();
      v49 = v68;
      OUTLINED_FUNCTION_3_13(&type metadata for UserDonator.UnrecognizedUserCodingKeys, &v77);
      swift_unknownObjectRelease();
      (*(v64 + 8))(v49, v66);
      v50 = OUTLINED_FUNCTION_1_25();
      v51(v50);
      v41 = 0;
      v42 = 1;
      break;
    case 3:
      v78 = 3;
      sub_2313F8E2C();
      OUTLINED_FUNCTION_3_13(&type metadata for UserDonator.DefaultUserCodingKeys, &v78);
      swift_unknownObjectRelease();
      (*(v37 + 8))(v24, v25);
      v52 = OUTLINED_FUNCTION_1_25();
      v53(v52);
      v41 = 0;
      v42 = 2;
      break;
    default:
      v75 = 0;
      sub_231473278();
      v38 = v61;
      OUTLINED_FUNCTION_3_13(&type metadata for UserDonator.UnknownCodingKeys, &v75);
      swift_unknownObjectRelease();
      (*(v63 + 8))(v38, v60);
      v39 = OUTLINED_FUNCTION_1_25();
      v40(v39);
      v41 = 0;
      v42 = 0;
      break;
  }

  *v36 = v41;
  v36[1] = v42;
  return __swift_destroy_boxed_opaque_existential_0(v74);
}

unint64_t sub_2313F89D8()
{
  result = qword_280C3C628;
  if (!qword_280C3C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C628);
  }

  return result;
}

uint64_t sub_2313F8A2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2313F8224(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2313F8A58()
{
  result = qword_27DD4D758;
  if (!qword_27DD4D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D758);
  }

  return result;
}

unint64_t sub_2313F8AC4()
{
  result = qword_27DD4ED40;
  if (!qword_27DD4ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED40);
  }

  return result;
}

uint64_t sub_2313F8B18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2313F8B40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2313F8B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7A696E676F636572 && a2 == 0xEE00726573556465;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000231483F50 == a2;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x55746C7561666564 && a2 == 0xEB00000000726573)
      {

        return 3;
      }

      else
      {
        v9 = sub_2314787C8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}