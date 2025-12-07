uint64_t OUTLINED_FUNCTION_21_10()
{
}

uint64_t sub_19795BF88()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19795D348, v5, v4);
}

uint64_t sub_19795C0C4()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_197A35B34;
  }

  else
  {
    v7 = sub_19795D258;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_19795C1F8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(*(a1 + 16) + 24))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_197A82BA4();
    }

    sub_19795C27C((*(a1 + 16) + 16), *(a1 + 16) + 40);

    os_unfair_lock_unlock((a1 + 24));
  }

  else
  {
    __break(1u);
  }
}

void *sub_19795C27C(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 8 * v2);
    v5 = result[1];
    if (v3 >= *result)
    {
      v3 = 0;
    }

    result[2] = v3;
    if (!__OFSUB__(v5, 1))
    {
      result[1] = v5 - 1;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19795C2B8()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_19795C3CC(uint64_t a1)
{
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19795C2B8;

  return sub_19795C6D8(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_19795C4DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[13] = v19;
  v9[14] = v20;
  v9[11] = a8;
  v9[12] = v18;
  v9[9] = a5;
  v9[10] = a6;
  v9[7] = a3;
  v9[8] = a4;
  v9[5] = a1;
  v9[6] = a2;
  v9[15] = *(v18 - 8);
  v9[16] = swift_task_alloc();
  v9[17] = sub_197A88368();
  v11 = sub_197A87DB8();
  v9[18] = v11;
  v9[19] = *(v11 - 8);
  v12 = swift_task_alloc();
  v13 = *v8;
  v9[20] = v12;
  v9[21] = v13;
  v9[22] = *(a7 + 16);
  v9[23] = *(a7 + 24);
  v15 = sub_197A87B58();
  v9[24] = v15;
  v9[25] = v14;

  return MEMORY[0x1EEE6DFA0](sub_19795C9B4, v15, v14);
}

uint64_t sub_19795C6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v18;
  v8[18] = v19;
  v8[15] = v16;
  v8[16] = v17;
  v8[13] = v14;
  v8[14] = v15;
  v8[11] = a6;
  v8[12] = a8;
  v8[9] = a4;
  v8[10] = a5;
  v8[19] = *(v17 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = sub_197A88368();
  v9 = sub_197A87DB8();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_projectBox();
  v11 = sub_197A87B58();
  v8[29] = v11;
  v8[30] = v10;

  return MEMORY[0x1EEE6DFA0](sub_19795BBBC, v11, v10);
}

uint64_t sub_19795C88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19795C908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A877A8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19795C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v42 = v16;
  v40 = v16[22];
  v17 = v16[21];
  v18 = v16[17];
  v20 = v16[12];
  v19 = v16[13];
  v21 = v16[11];
  v38 = v16[23];
  v39 = v16[10];
  v22 = v16[8];
  v37 = v16[9];
  v24 = v16[6];
  v23 = v16[7];
  v25 = swift_allocBox();
  v16[26] = v25;
  v16[27] = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v18);
  os_unfair_lock_lock((v17 + 24));
  sub_19795CEE4((v17 + 16), v22, v24, v23, v17, v25, v37, v39, &v41, v40, v21, v20, v38, v19);
  v16[28] = 0;
  os_unfair_lock_unlock((v17 + 24));
  v16[29] = v41;
  v27 = swift_task_alloc();
  v16[30] = v27;
  *v27 = v16;
  v27[1] = sub_19795BF88;
  OUTLINED_FUNCTION_38_9();

  return MEMORY[0x1EEE6DA40](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_19795CB2C()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_62();
  sub_1979671F8(v11, v12, &qword_1EAF48AB0, &unk_197A89150);
  v13 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v0, &qword_1EAF48AB0, &unk_197A89150);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);
    OUTLINED_FUNCTION_47_0();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();
  OUTLINED_FUNCTION_47_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);

LABEL_9:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_19795CDE0()
{

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t InferenceProviderDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;
    sub_197A878A8();
    MEMORY[0x19A8EAC80](10272, 0xE200000000000000);
    MEMORY[0x19A8EAC80](v3, v2);
    MEMORY[0x19A8EAC80](41, 0xE100000000000000);
    return v5;
  }

  else
  {
    sub_197A878A8();
  }

  return v1;
}

void sub_19795CEE4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a6;
  v44 = a8;
  v41 = a7;
  v42 = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v38 - v21;
  v40 = a10;
  sub_197A87B68();
  v23 = *a1;
  v24 = *(*a1 + 24);
  v39 = a9;
  v46 = a4;
  v45 = a3;
  if (v24)
  {
    v25 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v25 < 0)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v25 >= v24)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v26 = sub_197963CE4();
    v38 = v14;
  }

  else
  {
    v38 = v14;
    v26 = 0;
  }

  v27 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a13;
  v29 = v41;
  v28[4] = v40;
  v28[5] = a11;
  v28[6] = a12;
  v28[7] = a13;
  v28[8] = a14;
  v28[9] = a2;
  v31 = v42;
  v30 = v43;
  v28[10] = v26;
  v28[11] = v31;
  v28[12] = v30;
  v28[13] = v29;
  v28[14] = v44;

  sub_197A878A8();
  swift_unknownObjectRetain_n();
  sub_19795CB2C();
  v33 = *(v23 + 24);
  v34 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v35 = v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  if (*(*a1 + 16) < v34 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_197A82164(isUniquelyReferenced_nonNull_native, v34, 0);
    v37 = *a1;
  }

  sub_19795BA78((v37 + 16), v37 + 40, v35);

  *v39 = v35;
}

uint64_t sub_19795D168()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19795D1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = sub_197A877A8();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_19795D258()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v3);
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_19795D348()
{
  v1 = v0[27];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  swift_beginAccess();
  (*(v3 + 16))(v2, v1, v4);
  result = __swift_getEnumTagSinglePayload(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[28];
    sub_19795BAE8(v0[17], v0[16], v0[5]);
    if (v7)
    {
      (*(v0[15] + 32))(v0[14], v0[16], v0[12]);
    }

    OUTLINED_FUNCTION_13();

    return v8();
  }

  return result;
}

void ModelXPCRequest.PrewarmSession.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A700, &unk_197A98548);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_197964B2C();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.PrewarmSession.CodingKeys, v3, v2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_58();
  sub_197A880E8();
  if (!v0)
  {
    type metadata accessor for ModelXPCRequest.PrewarmSession(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_197964788(&qword_1ED87FC00);
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_58();
    sub_197A88098();
  }

  v6 = OUTLINED_FUNCTION_79_4();
  v7(v6);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_19795D614()
{
  OUTLINED_FUNCTION_18();

  v1 = v0[18];
  sub_197963674(v0[32], v0[31], v0[30], v0[29], v0[28]);
  sub_197947A40(v1, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_19795D6D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 280) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 96);
  if (v0)
  {
    v6 = sub_197A3B718;
  }

  else
  {
    v6 = sub_19795D614;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, ...)
{

  return sub_197A878F8();
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return swift_allocError();
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19795D928(uint64_t a1)
{
  sub_197A882F8();
  UUIDIdentifier.hash(into:)(v2);
  return sub_197A88358();
}

uint64_t static InferenceProviderDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_197A88218(), result = 0, (v9 & 1) != 0))
  {
    v13[0] = v2;
    v13[1] = v3;
    v12[0] = v6;
    v12[1] = v5;
    sub_197A878A8();
    sub_197A878A8();
    v11 = static InferenceProviderDescriptor.Instance.== infix(_:_:)(v13, v12);

    if (v11)
    {
      return v4 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static InferenceProviderDescriptor.Instance.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_197A88218();
}

void *sub_19795DAAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 InferenceProviderDescriptor.init(id:instance:hostedOnServer:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, __n128 *a5@<X8>)
{
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  result = *a3;
  a5[1] = *a3;
  a5[2].n128_u8[0] = a4;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19795DB00(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t InferenceProviderDescriptor.instance.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_197A878A8();
}

uint64_t InferenceProviderAssetDescriptor.customAssetConfiguration.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceProviderAssetDescriptor(v0);
  return sub_1979487E0();
}

uint64_t OUTLINED_FUNCTION_158_1(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_158_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_155_1()
{

  return type metadata accessor for ModelServiceClient();
}

uint64_t sub_19795DC28(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v6 = sub_197A87768();
  v25[3] = *(v6 - 8);
  v25[4] = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v25[1] = v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v25[2] = v25 - v10;
  v11 = type metadata accessor for ModelManagerError(255);
  sub_19795E388();
  v25[0] = v11;
  v12 = sub_197A88368();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v16 = sub_197A88368();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  v20 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v19, v26, v16);
  sub_19795BAE8(v16, &v29, v22);
  (*(v20 + 16))(v15, v22, a5);
  swift_storeEnumTagMultiPayload();
  v28(v15);
  (*(v13 + 8))(v15, v12);
  return (*(v20 + 8))(v22, a5);
}

uint64_t sub_19795E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v6 = sub_197A87B98();
  v7 = type metadata accessor for ModelManagerError(0);
  v8 = sub_19795E388();
  return sub_19795E4BC(a1, v6, v7, v8);
}

void IPCResult<>.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v36 = v5;
  v38 = v6;
  v42 = v7;
  v9 = type metadata accessor for IPCResult(0, v6, v7, v8);
  OUTLINED_FUNCTION_2();
  v37 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27();
  v14 = (v12 - v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_171_1();
  sub_197A88388();
  if (v0)
  {
    v22 = v4;
  }

  else
  {
    v32 = v14;
    v33 = v18;
    v21 = v38;
    v31 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
    OUTLINED_FUNCTION_171_1();
    v23 = sub_197A881A8();
    v30 = v41;
    __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
    if (v23)
    {
      v24 = v33;
      OUTLINED_FUNCTION_176_0(v21, v21, v34);
      v25 = v37;
      v26 = v4;
      swift_storeEnumTagMultiPayload();
      v27 = v36;
    }

    else
    {
      v24 = v32;
      OUTLINED_FUNCTION_176_0(v42, v42, v35);
      v27 = v36;
      v25 = v37;
      v26 = v4;
      swift_storeEnumTagMultiPayload();
    }

    v28 = *(v25 + 32);
    v29 = v31;
    v28(v31, v24, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v28(v27, v29, v9);
    v22 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19795E388()
{
  result = qword_1ED8816D8;
  if (!qword_1ED8816D8)
  {
    v3 = type metadata accessor for ModelManagerError(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ModelManagerError, v3, v0, v1);
    atomic_store(result, &qword_1ED8816D8);
  }

  return result;
}

uint64_t sub_19795E3E0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v6 = *(sub_197A87B98() - 8);
  return sub_19795E0CC(a1, v1 + ((*(v6 + 80) + 72) & ~*(v6 + 80)), v3, v4, v5);
}

uint64_t sub_19795E4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_197A88368();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  (*(v18 + 16))(v23 - v16, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v12 + 32);
    v19(v14, v17, a3);
    v20 = swift_allocError();
    v19(v21, v14, a3);
    v23[3] = v20;
    return sub_197A87B78();
  }

  else
  {
    (*(v7 + 32))(v10, v17, v6);
    return sub_197A87B88();
  }
}

uint64_t sub_19795E71C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v4 = sub_197960638(a2), (v5 & 1) != 0))
  {
    sub_197961900(*(v2 + 56) + 40 * v4, &v13);
    sub_19795B378(&v13, &qword_1EAF49A40, &qword_197A92768);
    if (qword_1ED87E900 != -1)
    {
      OUTLINED_FUNCTION_0_13();
      swift_once();
    }

    v6 = sub_197A87608();
    __swift_project_value_buffer(v6, qword_1ED87DF90);
    v7 = sub_197A875E8();
    v8 = sub_197A87D48();
    v9 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_10_9();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_6(v11, 3.852e-34);
      _os_log_impl(&dword_197941000, v7, v8, "Message %llu done.", v11, 0xCu);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_197961C44(&v13, a2);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_19795B378(&v13, &qword_1EAF49A40, &qword_197A92768);
  }
}

uint64_t sub_19795E88C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_19795E9A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19795EAB0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_19795EB50(v1, v0[7], v0[8], v0[9], v0[10], v0[11], v0[12]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_13();

  return v4();
}

void sub_19795EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for TaskCancellableMessage(0, a3, a6, a7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v12 = sub_197A87608();
  __swift_project_value_buffer(v12, qword_1ED880470);
  (*(v9 + 16))(v11, a1, v8);
  v13 = sub_197A875E8();
  v14 = sub_197A87D48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = sub_1979BA440(v8);
    (*(v9 + 8))(v11, v8);
    *(v15 + 4) = v16;
    _os_log_impl(&dword_197941000, v13, v14, "Returning response from message %llu.", v15, 0xCu);
    MEMORY[0x19A8EBE00](v15, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_19795ED34()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[8];
  sub_19795B62C(v0[9]);
  v2 = v0[5];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_36_0();
  (*(v4 + 16))();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_153_2(uint64_t a1)
{
  v1[5] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t sub_19795EE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Session.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_92();
  v77 = v23;
  v25 = v24;
  v71 = v26;
  sub_197A87298();
  OUTLINED_FUNCTION_2();
  v72 = v28;
  v73 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  v69 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v68 - v32;
  v34 = sub_197A87118();
  OUTLINED_FUNCTION_2();
  v74 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A258, &qword_197A96B98);
  OUTLINED_FUNCTION_2();
  v70 = v40;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v41);
  v75 = type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1_0();
  v78 = v25;
  v79 = v44 - v43;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1979548A8();
  v45 = v77;
  sub_197A883A8();
  if (v45)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
  }

  else
  {
    v77 = v33;
    LOBYTE(v80) = 0;
    OUTLINED_FUNCTION_18_9();
    sub_1979548FC(v46, v47, MEMORY[0x1E6968FD0]);
    sub_197A87FD8();
    v48 = v79;
    (*(v74 + 32))(v79, v39, v34);
    OUTLINED_FUNCTION_12_9(1);
    v49 = sub_197A87FA8();
    v50 = v48;
    v51 = v75;
    v52 = (v50 + v75[5]);
    *v52 = v49;
    v52[1] = v53;
    OUTLINED_FUNCTION_12_9(2);
    *(v50 + v51[6]) = sub_197A87FE8();
    OUTLINED_FUNCTION_12_9(3);
    *(v50 + v51[7]) = sub_197A87FC8();
    OUTLINED_FUNCTION_12_9(4);
    v54 = sub_197A87FA8();
    v55 = (v50 + v51[8]);
    *v55 = v54;
    v55[1] = v56;
    LOBYTE(v80) = 5;
    sub_1979542E4(&qword_1ED87FC80, protocol conformance descriptor for UUIDIdentifier<A>);
    v57 = v77;
    sub_197A87FD8();
    sub_19795EE70(v57, v79 + v51[9]);
    LOBYTE(v80) = 6;
    OUTLINED_FUNCTION_3_11();
    sub_1979548FC(v58, v59, MEMORY[0x1E69695D0]);
    v60 = v69;
    v61 = v73;
    OUTLINED_FUNCTION_52_6();
    sub_197A87FD8();
    v62 = v51[10];
    v63 = v79;
    (*(v72 + 32))(v79 + v62, v60, v61);
    sub_19795F5C4();
    sub_197A87FD8();
    v64 = v81;
    v65 = v63 + v75[11];
    *v65 = v80;
    *(v65 + 8) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_197954774(&qword_1ED87DD78, &qword_1ED87DE58, protocol conformance descriptor for CustomAssetConfiguration, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_52_6();
    sub_197A87F88();
    v66 = OUTLINED_FUNCTION_24_9();
    v67(v66);
    *(v63 + v75[12]) = v80;
    sub_19795F818();
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    sub_19795F870(v63, type metadata accessor for Session.Metadata);
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_19795F5C4()
{
  result = qword_1ED87E520[0];
  if (!qword_1ED87E520[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, qword_1ED87E520);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t Version.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49148, &qword_197A8CEB8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197954698();
  sub_197A883A8();
  if (!v2)
  {
    v18 = 0;
    v11 = OUTLINED_FUNCTION_1_5(&v18);
    v17 = 1;
    v13 = OUTLINED_FUNCTION_1_5(&v17);
    v16 = 2;
    v14 = OUTLINED_FUNCTION_1_5(&v16);
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_19795F818()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_19795F870(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_19795F8C8()
{
  result = qword_1ED87F890;
  if (!qword_1ED87F890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderDescriptor, &type metadata for InferenceProviderDescriptor, v0, v1);
    atomic_store(result, &qword_1ED87F890);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_156_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883A8();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_197A87608();
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *(v5 - 440) = v4;
  v7 = *(v5 - 392);

  return sub_1979444C8(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_79_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

void Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:customAssetConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21, uint64_t a22)
{
  OUTLINED_FUNCTION_67();
  v133 = v22;
  v26 = v25;
  OUTLINED_FUNCTION_84_1(v27, v28, v29, v159);
  v149 = v30;
  v146 = v31;
  v143 = v32;
  v34 = v33;
  v35 = type metadata accessor for ModelManagerError(0);
  v36 = OUTLINED_FUNCTION_28(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v38);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_29_1();
  v138 = sub_197A87118();
  OUTLINED_FUNCTION_2();
  v137 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_5(v42);
  v136 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v49 = OUTLINED_FUNCTION_10_7(v48, v157);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v54 = OUTLINED_FUNCTION_28(v53);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_35();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v122 - v59;
  v61 = a21[1];
  v142 = *a21;
  v141 = v61;
  v140 = a21[2];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
  v63 = OUTLINED_FUNCTION_74_4(v62);
  v126 = xmmword_197A88E50;
  *(v63 + 16) = xmmword_197A88E50;
  v64 = sub_197A870F8();
  v65 = v149;
  *(v63 + 32) = v64;
  *(v63 + 40) = v66;
  if (v65 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v65 <= 0x7FFFFFFF)
  {
    v124 = v62;
    v150 = v23;
    v125 = v24;
    v128 = v44;
    v131 = v34;
    v62 = a22;
    v130 = v26;
    sub_1979444C8(v26, v60, &qword_1EAF499A8, &qword_197A92B00);
    v24 = v60;
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_20:
  OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
LABEL_4:
  v67 = qword_1ED880258;
  v68 = &type metadata for VoucherProvider;
  v159[1] = &type metadata for VoucherProvider;
  v159[2] = &off_1F0C11F50;

  v69 = v148;
  v70 = v145;
  v71 = v147;
  sub_197945194(v63, v145, v147);

  sub_1979444C8(v69, v150, &qword_1EAF499A0, &qword_197A920D8);
  v129 = v24;
  v139 = v57;
  sub_1979444C8(v24, v57, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v157[1] = &type metadata for VoucherProvider;
  v157[2] = &off_1F0C11F50;
  v72 = OUTLINED_FUNCTION_37_2();
  __swift_mutable_project_boxed_opaque_existential_1(&v156, &type metadata for VoucherProvider);
  v155[3] = type metadata accessor for ModelServiceClient();
  v155[4] = &protocol witness table for ModelServiceClient;
  v154[1] = &off_1F0C11F50;
  v155[0] = v67;
  v73 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v73, v72 + 16);
  v74 = (v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v75 = v146;
  *v74 = v143;
  v74[1] = v75;
  *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v144;
  v76 = (v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v76 = v70;
  v76[1] = v71;
  sub_197A878A8();
  sub_197A878A8();
  v77 = v132;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v78 = v128;
  v79 = *(v128 + 32);
  v133 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v80 = v136;
  v79(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v77);
  OUTLINED_FUNCTION_54_2((v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion));
  *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = v62;
  v81 = v149;
  v82 = v62;
  v123 = v79;
  if (v149 == -1)
  {
    __swift_project_boxed_opaque_existential_1(v152, v154[0]);
    sub_197A878A8();
    v71 = 0;
    v149 = sub_197A1101C();
    v84 = v80;
    if (qword_1ED87D2E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
    }

    v86 = sub_197A87608();
    v81 = OUTLINED_FUNCTION_80_2(v86, qword_1ED87D2E8);
    v79 = sub_197A87D78();
    v87 = os_log_type_enabled(v81, v79);
    v85 = v134;
    if (v87)
    {
      v71 = OUTLINED_FUNCTION_65_2();
      *v71 = 67109120;
      v68 = v149;
      *(v71 + 4) = v149;
      _os_log_impl(&dword_197941000, v81, v79, "No onBehalfOfPID specified, using originator PID: %d", v71, 8u);
      OUTLINED_FUNCTION_44();

      OUTLINED_FUNCTION_69_2();
    }

    else
    {

      OUTLINED_FUNCTION_66_4();
      v83 = v149;
    }
  }

  else
  {
    sub_197A878A8();
    OUTLINED_FUNCTION_69_2();
    v84 = v80;
    v85 = v134;
  }

  v149 = v83;
  *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v83;
  v88 = OUTLINED_FUNCTION_101_0(&v158);
  sub_1979444C8(v88, v85, v89, v90);
  OUTLINED_FUNCTION_39_3();
  if (v91)
  {
    sub_197947A40(v85, &qword_1EAF499A8, &qword_197A92B00);
    (*(v78 + 16))(v68, v72 + v133, v84);
  }

  else
  {
    v92 = OUTLINED_FUNCTION_43_4();
    v123(v92);
  }

  v93 = v137;
  v94 = v150;
  sub_1979444C8(v150, v71, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_12_4();
    v95 = v71;
    v96 = v127;
    sub_19794B170(v95, v127, v97);
    sub_197947A40(v79, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v94, &qword_1EAF499A0, &qword_197A920D8);
    (*(v78 + 8))(v68, v84);
    __swift_destroy_boxed_opaque_existential_1Tm(v155);
    *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    sub_19794B170(v96, v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
    v98 = v138;
  }

  else
  {
    v99 = *(v93 + 32);
    v100 = v135;
    v132 = v82;
    v98 = v138;
    v99();
    v101 = OUTLINED_FUNCTION_74_4(v124);
    *(v101 + 16) = v126;
    v102 = sub_197A870F8();
    *(v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v101;
    *(v101 + 32) = v102;
    *(v101 + 40) = v103;
    v104 = v72 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    OUTLINED_FUNCTION_97_0();
    v105(v104, v100, v98);
    v106 = type metadata accessor for Session.Metadata(0);
    v107 = *(v78 + 16);
    v107(v104 + v106[9], v72 + v133, v84);
    v107(v104 + v106[10], v68, v84);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_34_2(v108);
    *(v104 + v106[6]) = v149;
    OUTLINED_FUNCTION_46_3(v106[7]);
    OUTLINED_FUNCTION_34_2(v109);
    OUTLINED_FUNCTION_54_2((v104 + v106[11]));
    *(v104 + v106[12]) = v132;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_93_1(v110);
    sub_197A87C08();
    v111 = OUTLINED_FUNCTION_101_0(&v151);
    OUTLINED_FUNCTION_21_3(v111, v112, v113, v114);
    OUTLINED_FUNCTION_53_3();
    v115 = swift_allocObject();
    OUTLINED_FUNCTION_61_5(v115);
    *(v104 + 72) = v72;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v139, &qword_1EAF499A8, &qword_197A92B00);
    v116 = OUTLINED_FUNCTION_58_4();
    sub_197947A40(v116, v117, v118);
    (*(v93 + 8))(v135, v98);
    (*(v78 + 8))(v68, v84);
    __swift_destroy_boxed_opaque_existential_1Tm(v155);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  OUTLINED_FUNCTION_48_3(v154);
  (*(v93 + 8))(v131, v98);
  v119 = OUTLINED_FUNCTION_72_3();
  sub_197947A40(v119, v120, v121);
  OUTLINED_FUNCTION_48_3(&v153);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

unint64_t sub_197960638(uint64_t a1)
{
  sub_197A882E8();
  v1 = OUTLINED_FUNCTION_46_5();

  return sub_197960824(v1, v2);
}

uint64_t sub_19796068C(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87298();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

unint64_t OUTLINED_FUNCTION_57_8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v3 - 96) = a2;
  *(v3 - 80) = a1;
  *(v3 - 72) = v2;
  *(v3 - 97) = 0;

  return sub_1979C437C();
}

uint64_t OUTLINED_FUNCTION_57_9()
{

  return swift_beginAccess();
}

uint64_t sub_1979607E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_197960824(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_197947A40(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_75_3@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;

  return sub_1979487E0();
}

uint64_t OUTLINED_FUNCTION_75_5()
{

  return swift_allocError();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.requestPrewarm()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v0);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_58_7(v6);
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_197960A4C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v3[1] = sub_197960FB0;
  v5 = OUTLINED_FUNCTION_81();

  return sub_197960AEC(v5, v6, v7, v1);
}

uint64_t sub_197960B0C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_10(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_6(v1);
  OUTLINED_FUNCTION_113_1();

  return v2();
}

void *OUTLINED_FUNCTION_62_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 256);
  *v2 = a1;
  return v2;
}

void OUTLINED_FUNCTION_62_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_197960CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87298();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t Session.Metadata.id.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Session.Metadata(v0);
  return sub_197944528();
}

uint64_t UUIDIdentifier.hash(into:)(uint64_t a1)
{
  sub_197A87298();
  sub_197954654(&qword_1ED880FE0, MEMORY[0x1E69695B8]);

  return sub_197A878F8();
}

uint64_t sub_197960E00(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197960E38()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t OUTLINED_FUNCTION_109_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;
  *(v3 - 448) = a1;

  return type metadata accessor for ModelManagerError(0);
}

void OUTLINED_FUNCTION_109_1(float a1)
{
  *v1 = a1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{

  return sub_197958DA4(a1, v1);
}

void IPCResult<>.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_34_0();
  v21 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  OUTLINED_FUNCTION_61();
  sub_197A883B8();
  (*(v11 + 16))(v15, v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = OUTLINED_FUNCTION_61_3();
    v18(v17);
    OUTLINED_FUNCTION_179_1();
    sub_197A881D8();
    if (!v1)
    {
      OUTLINED_FUNCTION_179_1();
      OUTLINED_FUNCTION_61_3();
      sub_197A881E8();
    }

    v19 = OUTLINED_FUNCTION_61_3();
    v20(v19);
  }

  else
  {
    (*(v21 + 32))(v2, v15, v7);
    OUTLINED_FUNCTION_179_1();
    sub_197A881D8();
    if (!v1)
    {
      OUTLINED_FUNCTION_179_1();
      sub_197A881E8();
    }

    (*(v21 + 8))(v2, v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19796127C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TaskCancellingXPCReceivedMessage(0, v3, *(AssociatedConformanceWitness + 8), *(AssociatedConformanceWitness + 16));
  sub_197961900(v4, v0 + 16);
  (*(v2 + 16))(v1, v5, v3);
  *(v0 + 208) = sub_1979623AC((v0 + 16), v1);
  if ((*(AssociatedConformanceWitness + 48))(v3, AssociatedConformanceWitness))
  {
    v7 = *(v0 + 160);
    sub_197961900(*(v0 + 136), v0 + 96);
    OUTLINED_FUNCTION_34_4();
    v8 = swift_allocObject();
    *(v0 + 216) = v8;
    *(v8 + 16) = v7;
    sub_197945EF8((v0 + 96), v8 + 24);
    v9 = swift_task_alloc();
    *(v0 + 224) = v9;
    *v9 = v0;
    v9[1] = sub_197977368;
    v10 = OUTLINED_FUNCTION_29_3();

    return sub_1979D7DBC(v10, v11, v12, v8);
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_19795B69C;

    return sub_1979614C8();
  }
}

uint64_t sub_197961494()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1979614C8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[8] = v5;
  OUTLINED_FUNCTION_14_7();
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v11 = (*(v7 + 24) + **(v7 + 24));
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_19795B534;

  return v11(v1 + 2, v3, v8, v7);
}

__n128 TaskCancellingXPCReceivedMessage.auditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 20);
  v3 = *(v1 + 36);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t UUIDIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v8 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v24 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUIDIdentifier(0, a2, a3, v12);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A88398();
  if (!v4)
  {
    v22 = v13;
    v23 = v15;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_197954654(&qword_1ED880270, MEMORY[0x1E69695D0]);
    v19 = v27;
    sub_197A88238();
    (*(v24 + 32))(v18, v19, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    (*(v23 + 32))(v25, v18, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_197961900(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_36_0();
  (*v3)(a2);
  return a2;
}

void sub_197961964(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-1] - v11;
  OUTLINED_FUNCTION_7_2();
  v14 = *(v4 + *(v13 + 112));
  os_unfair_lock_lock(v14 + 6);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_197A87E58();

  strcpy(v21, "IPC Message ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  v20 = a1;
  v15 = sub_197A88148();
  MEMORY[0x19A8EAC80](v15);

  MEMORY[0x19A8EAC80](0x6B73615420, 0xE500000000000000);
  v16 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  OUTLINED_FUNCTION_34_4();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;

  sub_19795CB2C();
  v19 = v18;
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  v21[4] = &off_1F0C10D50;
  v21[0] = v19;
  sub_197961C44(v21, a1);
  os_unfair_lock_unlock(v14 + 6);
}

uint64_t sub_197961B4C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197961B88()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_5(v5);

  return sub_197961F14(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t sub_197961C44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_197945EF8(a1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    result = sub_197961DA0(v10, a2);
    *v2 = v8;
  }

  else
  {
    sub_19795B378(a1, &qword_1EAF49A40, &qword_197A92768);
    v5 = sub_197960638(a2);
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A48, &qword_197A92770);
      sub_197A87EB8();
      sub_197945EF8((*(v9 + 56) + 40 * v7), v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49190, &unk_197A925E0);
      sub_197A87EC8();
      *v2 = v9;
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
    }

    return sub_19795B378(v10, &qword_1EAF49A40, &qword_197A92768);
  }

  return result;
}

uint64_t sub_197961DA0(uint64_t a1, uint64_t a2)
{
  sub_197960638(a2);
  OUTLINED_FUNCTION_5_8();
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A48, &qword_197A92770);
  if ((OUTLINED_FUNCTION_85_5(v8) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = OUTLINED_FUNCTION_78_6();
  v10 = sub_197960638(v9);
  if ((v7 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_197A88288();
    __break(1u);
    return result;
  }

  v6 = v10;
LABEL_5:
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(*v2 + 56) + 40 * v6));
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_165();

    return sub_197961F10(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_165();

    return sub_197961EA4(v16, v17, v18, v19);
  }
}

uint64_t sub_197961EA4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_197961F10(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_197961F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 57) = a5;
  *(v7 + 16) = a4;
  return OUTLINED_FUNCTION_32_0(sub_197961F38, 0);
}

uint64_t sub_197961F38()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_197A87608();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  v3 = sub_197A87D48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    OUTLINED_FUNCTION_10_9();
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_197941000, v2, v3, "Starting task for message %llu.", v5, 0xCu);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v6 = *(v0 + 57);

  if (v6 == 1)
  {
    v7 = sub_197A875E8();
    sub_197A87D48();
    v8 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_10_9();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_6(v10, 3.852e-34);
      OUTLINED_FUNCTION_20_1(&dword_197941000, v11, v12, "Precancelling task for message %llu.");
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    sub_197A87F08();
  }

  v15 = (*(v0 + 24) + **(v0 + 24));
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_19795B188;

  return v15();
}

uint64_t sub_197962198()
{
  OUTLINED_FUNCTION_18();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_5(v1);

  return sub_19796228C(v3, v4, v5, v6);
}

uint64_t sub_19796228C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = *a3;
  v4[21] = *(*a3 + 88);
  v4[22] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[23] = AssociatedTypeWitness;
  v4[24] = *(AssociatedTypeWitness - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19796127C, 0, 0);
}

uint64_t sub_1979623AC(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_19796241C(a1, a2);
  return v4;
}

uint64_t *sub_19796241C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  *(v2 + 16) = (*(v7 + 32))(v6, v7) & 1;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *(v2 + 20) = (*(v9 + 48))(v8, v9);
  *(v2 + 28) = v10;
  *(v2 + 36) = v11;
  *(v2 + 44) = v12;
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 120), a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_19796255C()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_46(v1 + 24, v0 + 184);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_112();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

double sub_197962638@<D0>(uint64_t a1@<X8>)
{
  CountedSet.makeIterator()(v4);

  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t CountedSet.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_197A878A8();
  v3 = -1 << *(v2 + 32);
  v4 = ~v3;
  *a1 = v2;
  v7 = *(v2 + 64);
  result = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = result;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
  return result;
}

uint64_t Session.Metadata.customAssetConfigurations.getter()
{
  type metadata accessor for Session.Metadata(0);

  return sub_197A878A8();
}

uint64_t Session.Metadata.useCaseID.getter()
{
  type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197962758()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197962878()
{
  OUTLINED_FUNCTION_18();
  sub_19794B118();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_197962918()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v2[37] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_67_10(v2[30]);
  }

  else
  {
    v6 = v2[31];
    OUTLINED_FUNCTION_67_10(v2[30]);
    sub_197947A40(v6, &qword_1EAF49130, &qword_197A969C0);
  }

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197962A70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_197962AC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_197962B20()
{
  result = qword_1ED87FD60;
  if (!qword_1ED87FD60)
  {
    result = swift_getWitnessTable(asc_197A9DE7C, &type metadata for ModelXPCRequest.CreateSessionRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FD60);
  }

  return result;
}

uint64_t sub_197962BA8()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_197962C08()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

void ModelXPCRequest.CreateSessionRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_9(v4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6C8, &qword_197A98510);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_0();
  Session = type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response(v6);
  v8 = OUTLINED_FUNCTION_28(Session);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197962B20();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0(v9, v10, v11);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80, &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v12 = OUTLINED_FUNCTION_34_7();
    v13(v12);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197962E18()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197962F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_29_4();
  sub_1979D9E24(v19, &qword_1EAF49C08, &qword_197A92C98);
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &qword_1EAF49C08);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v36);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  v22 = sub_197955F04(v20, v21);
  v23 = OUTLINED_FUNCTION_56_4(v22);
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49C08);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v24);
  OUTLINED_FUNCTION_98_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5(v25))
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v37 = sub_197A87608();
    v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v38);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v39 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v40 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v40);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v41, v42, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v39, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v43 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v43, v44);
    v45 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201(v45);

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v54 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v54, qword_1ED87FB48);
      sub_197A878A8();
      v55 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v56, v57);
        OUTLINED_FUNCTION_146(&dword_197941000, v58, v59, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v60 = OUTLINED_FUNCTION_49_6();
      v62 = OUTLINED_FUNCTION_55_4(v60, v61);
      OUTLINED_FUNCTION_226(v62);
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v46 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v46, qword_1ED87FB48);
      sub_197A878A8();
      v47 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v48, v49);
        OUTLINED_FUNCTION_146(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v53)
      {
        sub_197947900(v52, &qword_1EAF499A8);
      }

      else
      {
        v78 = OUTLINED_FUNCTION_14_8();
        v79(v78);
        sub_197A21F90();
        v80 = OUTLINED_FUNCTION_60_3();
        v81(v80);
      }

      v82 = OUTLINED_FUNCTION_46_4();
      v84 = OUTLINED_FUNCTION_54_3(v82, v83);
      OUTLINED_FUNCTION_201(v84);
      v35 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v27 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v27, qword_1ED87FB48);
      sub_197A875E8();
      v28 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v28))
      {
        v29 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v29);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v30, v31, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v32 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v32, v33);
      v34 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201(v34);
      v35 = v23;
      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v63 = OUTLINED_FUNCTION_221();
      v64 = __swift_project_value_buffer(v63, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v55 = sub_197A875E8();
      v65 = sub_197A87D58();
      v66 = OUTLINED_FUNCTION_118_1(v65);
      v67 = *(v16 + 88);
      if (v66)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v68 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v67, v69);
        v70 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v70);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C10, &qword_197A92CA0);
        v72 = OUTLINED_FUNCTION_231(v71);
        OUTLINED_FUNCTION_232(v72, v73, v74, v75);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v68;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v67, v85);
      }

      v86 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v86;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v64, v87);
      break;
  }

  v35 = v55;
LABEL_37:
  sub_197947900(v35, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19796361C()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

void sub_197963674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {

    sub_197955620(a2, a3, a4, a5);
  }
}

uint64_t sub_1979636E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_197963740()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197963824()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A29500, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v5();
  }
}

uint64_t sub_197963948()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  OUTLINED_FUNCTION_53_3();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_10_13();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197963BD0()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v1 + 240);
  v5 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_197963D18, v5, v4);
}

uint64_t sub_197963D18()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_20();
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_1_15(v2);

  return v5(v3);
}

uint64_t sub_197963DB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t CountedSet.count(of:)(uint64_t a1, uint64_t a2)
{
  sub_197A878C8();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t UUIDIdentifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_197A87298();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_197963EFC()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_197963F8C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD8, &qword_197A92C50);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197965364, v2, 0);
}

uint64_t CountedSet.add(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_34_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = *v2;
  if (*(v12 + 16) && (v13 = sub_197964450(a1, v5, *(a2 + 24)), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = 0;
  }

  result = (*(v7 + 16))(v11, a1, v5);
  if (v15 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_197A878B8();
    return sub_197A878D8();
  }

  return result;
}

uint64_t Session.Metadata.assetBundleURI.getter()
{
  OUTLINED_FUNCTION_58_0();
  sub_197A87118();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

void ModelXPCRequest.CreateSessionRequest.alreadyLockedInferenceProvider.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for ModelXPCRequest.CreateSessionRequest(v2) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = *(v3 + 32);

  sub_19794A620(v4, v5, v6, v7);
}

BOOL Session.Metadata.useFoundationModelsExtensionEntitlement.getter()
{
  if (sub_197A870F8() != 0xD000000000000026 || 0x8000000197AA3E20 != v1)
  {
    v3 = sub_197A88218();

    if (v3)
    {
      goto LABEL_13;
    }

    if (sub_197A870F8() != 0xD000000000000030 || 0x8000000197AA3E50 != v4)
    {
      v6 = sub_197A88218();

      if ((v6 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  v7 = *(v0 + *(type metadata accessor for Session.Metadata(0) + 48));
  if (v7)
  {
    return *(v7 + 16) != 0;
  }

  return 0;
}

unint64_t sub_197964450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_197A878E8();

  return sub_1979644AC(a1, v6, a2, a3);
}

unint64_t sub_1979644AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a1;
  v14[1] = a4;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4;
  v16 = v4 + 64;
  v9 = ~(-1 << *(v4 + 32));
  for (i = v10 & v9; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * i, a3);
    v12 = sub_197A87918();
    (*(v6 + 8))(v8, a3);
    if (v12)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197964634()
{
  OUTLINED_FUNCTION_121_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return OUTLINED_FUNCTION_172_0(v8);
  }
}

uint64_t sub_1979646E0(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_19796471C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B58, &qword_197A89650);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197964788(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B58, &qword_197A89650);
    v8[0] = v6;
    v8[1] = v6;
    result = swift_getWitnessTable(v5, v7, v8);
    atomic_store(result, v1);
  }

  return result;
}

void ModelXPCRequest.PrewarmSession.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A708, &qword_197A98558);
  OUTLINED_FUNCTION_2();
  v14 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_88_0();
  v7 = type metadata accessor for ModelXPCRequest.PrewarmSession(v6);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197964B2C();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80, &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_140_2();
    sub_197A87FD8();
    sub_19794B118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    OUTLINED_FUNCTION_112_4();
    sub_197964788(&qword_1ED87F888);
    sub_197A87F88();
    v12 = OUTLINED_FUNCTION_167_0();
    v13(v12, v14);
    *(v11 + *(v7 + 20)) = v15;
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19795130C(v11, type metadata accessor for ModelXPCRequest.PrewarmSession);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

unint64_t sub_197964AD8()
{
  result = qword_1ED87F8F8;
  if (!qword_1ED87F8F8)
  {
    result = swift_getWitnessTable(asc_197A9E05C, &type metadata for ModelXPCRequest.PrewarmSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8F8);
  }

  return result;
}

unint64_t sub_197964B2C()
{
  result = qword_1ED87F928;
  if (!qword_1ED87F928)
  {
    result = swift_getWitnessTable(byte_197A9DCEC, &type metadata for ModelXPCRequest.PrewarmSession.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F928);
  }

  return result;
}

uint64_t sub_197964BC0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 96);
  if (v0)
  {
    v6 = sub_197A3B65C;
  }

  else
  {
    v6 = sub_19795ADB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197964CDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 144);
  if (v0)
  {
    v6 = sub_197A3F818;
  }

  else
  {
    v6 = sub_197964E24;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197964E24()
{
  OUTLINED_FUNCTION_122();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = v0[16];
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);

  v3 = sub_197A875E8();
  v4 = sub_197A87D38();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = v0[16];
    OUTLINED_FUNCTION_56();
    v22 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    sub_197A87298();
    OUTLINED_FUNCTION_3_14();
    (*(v8 + 16))(v5, v6 + v7);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
    v9 = OUTLINED_FUNCTION_90();
    sub_197948834(v9, v10, v11);
    OUTLINED_FUNCTION_77_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_31(&dword_197941000, v12, v13, "Sending session prewarm request message for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v14 = v0[19];
  v15 = v0[16];
  OUTLINED_FUNCTION_6_11(v0[18]);
  v16 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_3_14();
  (*(v17 + 16))(v14, v15 + v16);
  OUTLINED_FUNCTION_23();
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_19797623C;
  OUTLINED_FUNCTION_32_1(v0[19]);
  OUTLINED_FUNCTION_118_4();

  return v21();
}

void OUTLINED_FUNCTION_115_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_115_4()
{
}

uint64_t ModelXPCSender.prewarmSession(id:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_250(v1, v2);
  v4 = type metadata accessor for ModelXPCRequest.PrewarmSession(v3);
  *(v0 + 40) = v4;
  OUTLINED_FUNCTION_28(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979651C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.prewarmSession(id:metadata:)();
}

uint64_t sub_19796526C()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  sub_197944528();
  *(v1 + *(v2 + 20)) = v3;
  sub_197A878A8();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_268(v4);

  return sub_197965340(v5, v6);
}

uint64_t sub_197965340(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197963EFC, 0, 0);
}

uint64_t sub_197965364()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979653E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979654FC()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A0508C();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_197975858;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void sub_197965638()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

unint64_t sub_197965700()
{
  result = qword_1ED87FBF8;
  if (!qword_1ED87FBF8)
  {
    result = swift_getWitnessTable(asc_197A9DD8C, &type metadata for ModelXPCRequest.DeleteSessionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FBF8);
  }

  return result;
}

uint64_t sub_19796576C()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960E38;
  v4 = OUTLINED_FUNCTION_81();

  return sub_197965958(v4, v5, v6, v7, v8);
}

uint64_t sub_197965850()
{
  OUTLINED_FUNCTION_33();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75(v1);
  *v2 = v3;
  v2[1] = sub_19796D708;
  v4 = OUTLINED_FUNCTION_5(*(v0 + 24));

  return v5(v4);
}

uint64_t sub_197965958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_197965850, 0, 0);
}

uint64_t sub_197965978(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_197960FB0;

  return ModelServiceClient.deleteSessionRequest(id:)();
}

uint64_t ModelServiceClient.deleteSessionRequest(id:)()
{
  OUTLINED_FUNCTION_18();
  v1[10] = v2;
  v1[11] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v3);
  v1[12] = OUTLINED_FUNCTION_90_4();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t a1)
{

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_124_1()
{

  return sub_19796F6D0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_124_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t ModelXPCSender.deleteSession(id:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197965BD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.deleteSession(id:)();
}

uint64_t sub_197965C68()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_197944528();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_197965D90(v3, v4);
}

uint64_t sub_197965D00()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_197965D90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197965D00, 0, 0);
}

uint64_t sub_197965DB4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BF8, &qword_197A92C80);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197965FAC, v2, 0);
}

uint64_t sub_197965FAC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_197966030()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197966144()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A053E4();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_19796C954;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void ModelXPCRequest.DeleteSessionRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6E8, &qword_197A98530);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197965700();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  v1 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v3 = OUTLINED_FUNCTION_20_0();
  v4(v3);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

uint64_t Session.deinit()
{
  sub_1979585F0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_197947A40(v0 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, &qword_1EAF499B0, &qword_197A96BA0);

  v1 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_197966494()
{
  result = qword_1ED87FBC8;
  if (!qword_1ED87FBC8)
  {
    result = swift_getWitnessTable(byte_197A9E00C, &type metadata for ModelXPCRequest.DeleteSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FBC8);
  }

  return result;
}

void ModelXPCRequest.DeleteSessionRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_9(v4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6F0, &qword_197A98538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_0();
  v7 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v6);
  v8 = OUTLINED_FUNCTION_28(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197965700();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0(v9, v10, v11);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80, &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v12 = OUTLINED_FUNCTION_34_7();
    v13(v12);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979666C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_197966744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  v24[14] = swift_initStackObject();
  v24[15] = sub_1979489D4("Client deleting session", 23, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v28 = sub_197A87608();
  v24[16] = __swift_project_value_buffer(v28, qword_1ED880220);
  OUTLINED_FUNCTION_22();
  sub_197A44A54();
  v29 = sub_197A875E8();
  v30 = sub_197A87D78();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v24[13];
  if (v31)
  {
    v33 = v24[12];
    OUTLINED_FUNCTION_56();
    v34 = OUTLINED_FUNCTION_41_0();
    a12 = v34;
    *v25 = 136315138;
    sub_197A44A54();
    v35 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v37 = v36;
    sub_197947A40(v33, &qword_1EAF49130, &qword_197A969C0);
    sub_197947A40(v32, &qword_1EAF49130, &qword_197A969C0);
    sub_197948834(v35, v37, &a12);
    OUTLINED_FUNCTION_77_0();
    *(v25 + 4) = &qword_1EAF49130;
    OUTLINED_FUNCTION_31(&dword_197941000, v38, v39, "Sending delete session for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    sub_197947A40(v32, &qword_1EAF49130, &qword_197A969C0);
  }

  OUTLINED_FUNCTION_6_11(v24[11]);
  OUTLINED_FUNCTION_23();
  v52 = v41 + *v41;
  v53 = v40;
  v42 = swift_task_alloc();
  v24[17] = v42;
  *v42 = v24;
  v42[1] = sub_19796D268;
  OUTLINED_FUNCTION_5(v24[10]);
  OUTLINED_FUNCTION_30_0();

  return v47(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, a12, a13, a14, a15, a16);
}

uint64_t sub_1979669FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197966B10()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05238();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_19796D83C;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

unint64_t sub_197966C38()
{
  result = qword_1ED87FA58;
  if (!qword_1ED87FA58)
  {
    result = swift_getWitnessTable(asc_197A9E0AC, &type metadata for ModelXPCRequest.CancelSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA58);
  }

  return result;
}

void ModelXPCRequest.CancelSessionRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A718, &qword_197A98568);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197966DA8();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  v1 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v3 = OUTLINED_FUNCTION_20_0();
  v4(v3);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_197966DA8()
{
  result = qword_1ED87FA88;
  if (!qword_1ED87FA88)
  {
    result = swift_getWitnessTable(aM_22, &type metadata for ModelXPCRequest.CancelSessionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA88);
  }

  return result;
}

uint64_t dispatch thunk of InferenceProviderXPCSender.transitionAsset(withDescriptor:to:from:requestIdentifier:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43(v1);
  OUTLINED_FUNCTION_73_4();

  return v3();
}

uint64_t sub_197966F14()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v0;
  *(v1 + 16) = v7;
  v8 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  *(v1 + 40) = v8;
  OUTLINED_FUNCTION_28(v8);
  *(v1 + 48) = OUTLINED_FUNCTION_78_0();
  *(v1 + 72) = *v5;
  *(v1 + 73) = *v3;
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197966FB4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  sub_197967254(*(v0 + 16), v3, type metadata accessor for InferenceProviderAssetDescriptor);
  sub_1979671F8(v5, v3 + v4[7], &qword_1EAF49128, &unk_197A8CE70);
  *(v3 + v4[5]) = v2;
  *(v3 + v4[6]) = v1;
  OUTLINED_FUNCTION_17(&unk_197A92190);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_19796FA3C;
  OUTLINED_FUNCTION_112();

  return v7(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1979670B4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_197967768;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979671F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_197967254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t sub_1979672B0()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_18_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_197967424(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197967440, v1);
}

uint64_t sub_197967440()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[11];
  OUTLINED_FUNCTION_153_0();
  v0[12] = *(v1 + 112);

  v2 = swift_task_alloc();
  v0[13] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v2 = v0;
  v2[1] = sub_1979675F4;
  v3 = OUTLINED_FUNCTION_132_0();

  return MEMORY[0x1EEE6DA10](v3);
}

uint64_t OUTLINED_FUNCTION_157_0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + a1);
  *v5 = *(v3 - 120);
  v5[1] = v1;

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_157_1()
{
}

void OUTLINED_FUNCTION_132_1()
{
}

uint64_t OUTLINED_FUNCTION_132_3(uint64_t a1, uint64_t a2)
{

  return sub_197A88098();
}

uint64_t sub_1979675F4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);

    v8 = sub_1979CD968;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 88);
    v8 = sub_197967700;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_197967700()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 80);

  sub_197945EF8((v0 + 16), v1);
  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_197967768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19796787C()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void OUTLINED_FUNCTION_147_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t OUTLINED_FUNCTION_147_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A88218();
}

void sub_197967A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  v22 = v21;
  v24 = v23;
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v22);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v26);
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19796361C();
    OUTLINED_FUNCTION_2_10();
    sub_1979557E8();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v27, v28);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v20, v29);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197967B68()
{
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_82_5();
  sub_1979698F8(v2, v1);
  OUTLINED_FUNCTION_63();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = *(v0 + 176);
      v57 = *(v0 + 24);
      v58 = *(v56 + 8);
      *(v0 + 440) = *v56;
      *(v0 + 448) = v58;
      *(v57 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
      *(v57 + 32) = sub_1979D6B88();
      v59 = sub_197A10AEC();
      OUTLINED_FUNCTION_153_2(v59);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 304) = v60;
      *v60 = v61;
      v60[1] = sub_197A0BD14;
      OUTLINED_FUNCTION_112();

      result = sub_197A6CBAC(v62, v63);
      break;
    case 2u:
      v30 = *(v0 + 24);
      OUTLINED_FUNCTION_31_7();
      sub_197958DA4(v31, v32);
      *(v30 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
      *(v30 + 32) = sub_1979D69DC();
      v33 = sub_197A109E8();
      OUTLINED_FUNCTION_153_2(v33);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 320) = v34;
      *v34 = v35;
      v34[1] = sub_197A0BED0;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197A6D0B0(v36, v37);
      break;
    case 3u:
      v39 = *(v0 + 24);
      OUTLINED_FUNCTION_30_8();
      sub_197958DA4(v40, v41);
      *(v39 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v39 + 32) = sub_19796E3DC();
      v42 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v42);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 336) = v43;
      *v43 = v44;
      v43[1] = sub_1979711BC;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197975480(v45, v46);
      break;
    case 4u:
      v16 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), *(v0 + 160));
      *(v16 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v16 + 32) = sub_19796E3DC();
      v17 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v17);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 200) = v18;
      *v18 = v19;
      v18[1] = sub_19796EC60;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_19796E528();
      break;
    case 5u:
      v65 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), *(v0 + 152));
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
      *(v0 + 216) = v66;
      v65[3] = v66;
      OUTLINED_FUNCTION_38_6();
      v65[4] = sub_197979574(v67);
      OUTLINED_FUNCTION_37_5();
      v65[5] = sub_197979574(v68);
      *(v0 + 224) = __swift_allocate_boxed_opaque_existential_1(v65);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 232) = v69;
      *v69 = v70;
      v69[1] = sub_197979DD8;
      OUTLINED_FUNCTION_112();

      result = sub_1979794A8();
      break;
    case 6u:
      v72 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), *(v0 + 64));
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
      *(v0 + 376) = v73;
      v72[3] = v73;
      OUTLINED_FUNCTION_38_6();
      v72[4] = sub_197979574(v74);
      OUTLINED_FUNCTION_37_5();
      v72[5] = sub_197979574(v75);
      *(v0 + 384) = __swift_allocate_boxed_opaque_existential_1(v72);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 392) = v76;
      *v76 = v77;
      v76[1] = sub_197A0C2B8;
      OUTLINED_FUNCTION_112();

      result = sub_197A763CC();
      break;
    case 7u:
      v48 = *(v0 + 24);
      OUTLINED_FUNCTION_29_5();
      sub_197958DA4(v49, v50);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v0 + 408) = v51;
      *(v48 + 24) = v51;
      *(v48 + 32) = sub_19796E3DC();
      v52 = sub_19796E2D8();
      *(v0 + 416) = OUTLINED_FUNCTION_153_2(v52);
      v53 = swift_task_alloc();
      *(v0 + 424) = v53;
      *v53 = v0;
      v53[1] = sub_197A0C588;
      OUTLINED_FUNCTION_152_0(*(v0 + 48));
      OUTLINED_FUNCTION_112();

      result = sub_197A76E18(v54);
      break;
    case 8u:
      v86 = *(v0 + 24);
      OUTLINED_FUNCTION_26_5();
      sub_197958DA4(v87, v88);
      *(v86 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v86 + 32) = sub_19796E3DC();
      v89 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v89);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 248) = v90;
      *v90 = v91;
      v90[1] = sub_197A0B784;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197A6E1A0();
      break;
    case 9u:
      v21 = *(v0 + 24);
      OUTLINED_FUNCTION_32_5();
      sub_197958DA4(v22, v23);
      *(v21 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
      OUTLINED_FUNCTION_38_6();
      *(v21 + 32) = sub_197A10BF0(v24);
      OUTLINED_FUNCTION_37_5();
      v26 = sub_197A10BF0(v25);
      OUTLINED_FUNCTION_153_2(v26);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 264) = v27;
      *v27 = v28;
      v27[1] = sub_197A0B95C;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197A6D890();
      break;
    case 0xAu:
      v79 = *(v0 + 24);
      OUTLINED_FUNCTION_27_7();
      sub_197958DA4(v80, v81);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v0 + 280) = v82;
      *(v79 + 24) = v82;
      *(v79 + 32) = sub_19796E3DC();
      v83 = sub_19796E2D8();
      *(v0 + 288) = OUTLINED_FUNCTION_153_2(v83);
      v84 = swift_task_alloc();
      *(v0 + 296) = v84;
      *v84 = v0;
      v84[1] = sub_197A0BB34;
      OUTLINED_FUNCTION_152_0(*(v0 + 104));
      OUTLINED_FUNCTION_112();

      result = sub_197A77ACC();
      break;
    case 0xBu:
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), v9);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v0 + 352) = v12;
      v11[3] = v12;
      v11[4] = sub_19796E3DC();
      v11[5] = sub_19796E2D8();
      *(v0 + 360) = __swift_allocate_boxed_opaque_existential_1(v11);
      v13 = *(v9 + *(v10 + 20));
      *(v0 + 16) = v13;
      sub_1979D559C(v13);
      v14 = swift_task_alloc();
      *(v0 + 368) = v14;
      *v14 = v0;
      v14[1] = sub_197A0C0A8;
      OUTLINED_FUNCTION_152_0(*(v0 + 80));
      OUTLINED_FUNCTION_112();

      result = sub_197A79130();
      break;
    default:
      v3 = *(v0 + 24);
      *(v3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v3 + 32) = sub_19796E3DC();
      v4 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 184) = v5;
      *v5 = v6;
      v5[1] = sub_197A0B598;
      OUTLINED_FUNCTION_112();

      result = sub_197A6C6D8();
      break;
  }

  return result;
}

void InferenceProviderXPCRequest.encode(to:)()
{
  v5 = OUTLINED_FUNCTION_54_4();
  type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v58 = v7;
  v8 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v57 = v10;
  v11 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v11);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v56 = v13;
  v14 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v14);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v55 = v16;
  v17 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.ConvertData(v17);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v54 = v19;
  v20 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v20);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v53 = v22;
  v23 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(v23);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v52 = v25;
  v26 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v26);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_0();
  v51 = v28;
  v29 = OUTLINED_FUNCTION_74_5();
  type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(v29);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_6();
  type metadata accessor for InferenceProviderXPCRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_197A883B8();
  OUTLINED_FUNCTION_82_5();
  sub_1979698F8(v59, v0);
  OUTLINED_FUNCTION_179_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_43_5(1);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        sub_197A0DB24();
        goto LABEL_24;
      }

      break;
    case 2u:
      OUTLINED_FUNCTION_31_7();
      v34 = v54;
      sub_197958DA4(v0, v54);
      OUTLINED_FUNCTION_43_5(2);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_95_4();
        sub_19796A788(v42);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.ConvertData;
      goto LABEL_37;
    case 3u:
      OUTLINED_FUNCTION_30_8();
      v34 = v55;
      sub_197958DA4(v0, v55);
      OUTLINED_FUNCTION_43_5(3);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_94_2();
        sub_19796A788(v43);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle;
      goto LABEL_37;
    case 4u:
      v37 = OUTLINED_FUNCTION_71_6();
      sub_197958DA4(v37, v4);
      OUTLINED_FUNCTION_43_5(4);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_98_3();
        sub_19796A788(v38);
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      OUTLINED_FUNCTION_33_7();
      v40 = v4;
      goto LABEL_38;
    case 5u:
      v45 = OUTLINED_FUNCTION_71_6();
      sub_197958DA4(v45, v3);
      OUTLINED_FUNCTION_43_5(5);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_88_3();
        sub_19796A788(v46);
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      OUTLINED_FUNCTION_10_11();
      v40 = v3;
      goto LABEL_38;
    case 6u:
      v47 = OUTLINED_FUNCTION_71_6();
      v34 = v57;
      sub_197958DA4(v47, v57);
      OUTLINED_FUNCTION_43_5(10);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_85_4();
        sub_19796A788(v48);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest;
      goto LABEL_37;
    case 7u:
      OUTLINED_FUNCTION_29_5();
      v34 = v58;
      sub_197958DA4(v0, v58);
      OUTLINED_FUNCTION_43_5(11);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_100_2();
        sub_19796A788(v44);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest;
      goto LABEL_37;
    case 8u:
      OUTLINED_FUNCTION_26_5();
      v34 = v51;
      sub_197958DA4(v0, v51);
      OUTLINED_FUNCTION_43_5(6);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_86_3();
        sub_19796A788(v50);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake;
      goto LABEL_37;
    case 9u:
      OUTLINED_FUNCTION_32_5();
      v34 = v52;
      sub_197958DA4(v0, v52);
      OUTLINED_FUNCTION_43_5(7);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_91_4();
        sub_19796A788(v41);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest;
      goto LABEL_37;
    case 0xAu:
      OUTLINED_FUNCTION_27_7();
      v34 = v53;
      sub_197958DA4(v0, v53);
      OUTLINED_FUNCTION_43_5(8);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_84_4();
        sub_19796A788(v49);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest;
      goto LABEL_37;
    case 0xBu:
      v33 = OUTLINED_FUNCTION_71_6();
      v34 = v56;
      sub_197958DA4(v33, v56);
      OUTLINED_FUNCTION_43_5(9);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_97_3();
        sub_19796A788(v35);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v36 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification;
LABEL_37:
      v39 = v36;
      v40 = v34;
LABEL_38:
      sub_1979699A8(v40, v39);
      break;
    default:
      OUTLINED_FUNCTION_51_5();
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        sub_197A0DB78();
LABEL_24:
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  OUTLINED_FUNCTION_130_1();
}

unint64_t sub_197968FC4()
{
  result = qword_1ED87DE08;
  if (!qword_1ED87DE08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.WireCode, &type metadata for InferenceProviderXPCRequest.WireCode, v0, v1);
    atomic_store(result, &qword_1ED87DE08);
  }

  return result;
}

uint64_t sub_197969018@<X0>(_BYTE *a1@<X8>)
{
  result = InferenceProviderXPCRequest.WireCode.rawValue.getter();
  *a1 = result;
  return result;
}

void ModelXPCRequest.CancelSessionRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_9(v4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A720, &qword_197A98570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_0();
  v7 = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v6);
  v8 = OUTLINED_FUNCTION_28(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197966DA8();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0(v9, v10, v11);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80, &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v12 = OUTLINED_FUNCTION_34_7();
    v13(v12);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

void *sub_197969210(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void *CountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_34_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  result = sub_197A878C8();
  if ((v11 & 1) == 0)
  {
    (*(v5 + 16))(v9, a1, v3);
    sub_197A878B8();
    return sub_197A878D8();
  }

  return result;
}

uint64_t sub_1979693D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_177_1()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_177_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_162(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_162_0(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t InferenceProviderAssetDescriptor.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49018, &qword_197A8BB48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  v2 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v2, v3);
  v4 = sub_19796A970();
  OUTLINED_FUNCTION_125(&type metadata for InferenceProviderAssetDescriptor.CodingKeys, v5, v4);
  OUTLINED_FUNCTION_101();
  sub_197A880B8();
  if (!v0)
  {
    OUTLINED_FUNCTION_101();
    sub_197A880B8();
    type metadata accessor for InferenceProviderAssetDescriptor(0);
    type metadata accessor for CustomAssetConfiguration(0);
    OUTLINED_FUNCTION_15_1();
    sub_19796AA70(v6);
    sub_197A88098();
    OUTLINED_FUNCTION_101();
    sub_197A88068();
  }

  v7 = OUTLINED_FUNCTION_79_4();
  return v8(v7);
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1)
{

  return _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
}

BOOL OUTLINED_FUNCTION_110_1()
{

  return os_log_type_enabled(v1, v0);
}

unint64_t sub_19796976C()
{
  result = qword_1EAF48500;
  if (!qword_1EAF48500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LoadState, &type metadata for LoadState, v0, v1);
    atomic_store(result, &qword_1EAF48500);
  }

  return result;
}

uint64_t sub_197969810@<X0>(uint64_t *a1@<X8>)
{
  result = LoadState.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1979698F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_197969950()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_1979699A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_197969A00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_170()
{

  return sub_197944528();
}

unint64_t sub_197969A90()
{
  result = qword_1ED87DE28;
  if (!qword_1ED87DE28)
  {
    result = swift_getWitnessTable(aUsW, &type metadata for InferenceProviderXPCRequest.TransitionAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

void InferenceProviderXPCRequest.TransitionAsset.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DF8, &qword_197A92E18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v3 = sub_197969A90();
  OUTLINED_FUNCTION_125(&type metadata for InferenceProviderXPCRequest.TransitionAsset.CodingKeys, v4, v3);
  v17[5] = 0;
  type metadata accessor for InferenceProviderAssetDescriptor(0);
  OUTLINED_FUNCTION_101_1();
  sub_19796A788(v5);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_33_3(v1, v6, v7, v8, v9);
  if (!v0)
  {
    v10 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
    v17[4] = *(v1 + v10[5]);
    v17[3] = 1;
    sub_19796976C();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v17[2] = *(v1 + v10[6]);
    v17[1] = 2;
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v11 = v10[7];
    v17[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    v12 = OUTLINED_FUNCTION_23_7(&qword_1ED87FC98);
    OUTLINED_FUNCTION_33_3(v1 + v11, v17, v13, v14, v12);
  }

  v15 = OUTLINED_FUNCTION_79_4();
  v16(v15);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_197969D64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_197969DC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_197969E24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-1] - v10;
  v12 = *(v4 + 120);
  os_unfair_lock_lock(v12 + 6);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_197A87E58();

  strcpy(v19, "IPC Message ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v18 = a1;
  v13 = sub_197A88148();
  MEMORY[0x19A8EAC80](v13);

  MEMORY[0x19A8EAC80](0x6B73615420, 0xE500000000000000);
  v14 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;

  sub_19795CB2C();
  v17 = v16;
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  v19[4] = &off_1F0C10D50;
  v19[0] = v17;
  sub_197961C44(v19, a1);
  os_unfair_lock_unlock(v12 + 6);
}

uint64_t sub_19796A008()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19796A048()
{
  OUTLINED_FUNCTION_18();
  v0 = type metadata accessor for InferenceProviderXPCRequest(0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_6_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_4(v2);

  return sub_19796A130(v4, v5, v6, v7);
}

uint64_t sub_19796A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  type metadata accessor for InferenceProviderXPCRequest(0);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19796A1C4, 0, 0);
}

uint64_t sub_19796A1C4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[16];
  v2 = v0[13];
  sub_197947C44(v0[12], (v0 + 2));
  sub_197969DC4(v2, v1, type metadata accessor for InferenceProviderXPCRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C0, &qword_197A8D338);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_16_2();
  v0[17] = v3;
  v4 = OUTLINED_FUNCTION_19();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_19796F170;
  v5 = v0[15];

  return v7(v0 + 7, v3, v5);
}

uint64_t sub_19796A2C8(void *a1, uint64_t a2, void (*a3)(void))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  *(v3 + 16) = (*(v8 + 32))(v7, v8) & 1;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  *(v3 + 20) = (*(v10 + 48))(v9, v10);
  *(v3 + 28) = v11;
  *(v3 + 36) = v12;
  *(v3 + 44) = v13;
  sub_197969D64(a2, v3 + *(*v3 + 120), a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_19796A3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19796A3D4, v3, 0);
}

uint64_t sub_19796A3D4()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_19796EF54;

  return sub_19796A470();
}

uint64_t sub_19796A470()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[4] = v3;
  *v3 = v4;
  v3[1] = sub_19796EE3C;
  OUTLINED_FUNCTION_83_7();

  return sub_19796A528();
}

uint64_t sub_19796A528()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v4;
  v5 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(0);
  OUTLINED_FUNCTION_28(v5);
  v1[6] = OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_28(v6);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(0);
  v1[9] = v7;
  OUTLINED_FUNCTION_28(v7);
  v1[10] = OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(0);
  OUTLINED_FUNCTION_28(v8);
  v1[11] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for InferenceProviderXPCRequest.ConvertData(0);
  OUTLINED_FUNCTION_28(v9);
  v1[12] = OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(0);
  OUTLINED_FUNCTION_28(v10);
  v1[13] = OUTLINED_FUNCTION_78_0();
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v1[14] = OUTLINED_FUNCTION_78_0();
  v12 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(0);
  OUTLINED_FUNCTION_28(v12);
  v1[15] = OUTLINED_FUNCTION_78_0();
  v13 = type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_28(v13);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v14 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
  v1[18] = v14;
  OUTLINED_FUNCTION_28(v14);
  v1[19] = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  OUTLINED_FUNCTION_28(v15);
  v1[20] = OUTLINED_FUNCTION_78_0();
  v16 = type metadata accessor for InferenceProviderXPCRequest(0);
  v1[21] = v16;
  OUTLINED_FUNCTION_28(v16);
  v1[22] = OUTLINED_FUNCTION_78_0();

  return MEMORY[0x1EEE6DFA0](sub_197967B68, v3, 0);
}

unint64_t sub_19796A734()
{
  result = qword_1ED87F450[0];
  if (!qword_1ED87F450[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.WireCode, &type metadata for InferenceProviderXPCRequest.WireCode, v0, v1);
    atomic_store(result, qword_1ED87F450);
  }

  return result;
}

unint64_t sub_19796A788(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_19796A7D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x19796A89CLL);
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
          result = OUTLINED_FUNCTION_165_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_19796A8D4(char a1)
{
  result = 0x657461745377656ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6574617453646C6FLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_19796A970()
{
  result = qword_1ED87DDF8;
  if (!qword_1ED87DDF8)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for InferenceProviderAssetDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDF8);
  }

  return result;
}

unint64_t sub_19796A9CC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t sub_19796AA70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4(v3);
    v5 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19796AAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_19796AAF8()
{
  result = qword_1ED87DDA0;
  if (!qword_1ED87DDA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LoadState, &type metadata for LoadState, v0, v1);
    atomic_store(result, &qword_1ED87DDA0);
  }

  return result;
}

unint64_t sub_19796AB4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49128, &unk_197A8CE70);
    result = swift_getWitnessTable(v4, v5);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19796AB98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v5 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_174_2(uint64_t a1)
{

  return sub_197979D80();
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderXPCRequest.WireCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x19796AD04);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

ModelManagerServices::InferenceProviderXPCRequest::WireCode_optional __swiftcall InferenceProviderXPCRequest.WireCode.init(rawValue:)(ModelManagerServices::InferenceProviderXPCRequest::WireCode_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= ModelManagerServices_InferenceProviderXPCRequest_WireCode_unknownDefault)
  {
    value = ModelManagerServices_InferenceProviderXPCRequest_WireCode_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

void sub_19796ADC0()
{
  OUTLINED_FUNCTION_157();
  v4 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for InferenceProviderAssetDescriptor(v4);
  OUTLINED_FUNCTION_70();
  if (*(v5 + 84) != v3)
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  }

  OUTLINED_FUNCTION_122_2();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void sub_19796AE94()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
    v3 = OUTLINED_FUNCTION_73_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_19796AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for InferenceProviderAssetDescriptor(v6);
  OUTLINED_FUNCTION_70();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 253)
    {
      v11 = *(v4 + *(a3 + 20));
      if (v11 >= 3)
      {
        return v11 - 2;
      }

      else
      {
        return 0;
      }
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    v10 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_19796AFFC()
{
  OUTLINED_FUNCTION_111();
  if (v0)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  v2 = OUTLINED_FUNCTION_73_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

unint64_t OUTLINED_FUNCTION_95_2(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_197948834(v10, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_95_5(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_95_7()
{
  *(v0 - 96) = 3;

  return type metadata accessor for ClientData(0);
}

void InferenceProviderXPCRequest.TransitionAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_92();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v48 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_29_1();
  type metadata accessor for InferenceProviderAssetDescriptor(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  v49 = v37;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E00, &qword_197A92E20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_64_1();
  v39 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_16_7();
  sub_197969A90();
  OUTLINED_FUNCTION_69_5();
  sub_197A883A8();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    a16 = 0;
    OUTLINED_FUNCTION_101_1();
    sub_19796A788(v41);
    OUTLINED_FUNCTION_140_2();
    v42 = OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_171_0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_103_1();
    sub_197958DA4(v49, v26);
    a14 = 1;
    sub_19796BA5C();
    OUTLINED_FUNCTION_171_0(&type metadata for LoadState, &a14, v50, &type metadata for LoadState);
    *(v26 + v39[5]) = a15;
    a12 = 2;
    sub_197A87FD8();
    *(v26 + v39[6]) = a13;
    a11 = 3;
    OUTLINED_FUNCTION_22_3(&qword_1ED87FC90);
    OUTLINED_FUNCTION_171_0(v34, &a11, v50, v34);
    v46 = OUTLINED_FUNCTION_63();
    v47(v46);
    sub_19794BDF8(v28, v26 + v39[7], &qword_1EAF49128, &unk_197A8CE70);
    sub_1979698F8(v26, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_1979699A8(v26, type metadata accessor for InferenceProviderXPCRequest.TransitionAsset);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

void InferenceProviderAssetDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49020, &qword_197A8BB50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_19796A970();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_110();
    *v10 = sub_197A87FA8();
    v10[1] = v11;
    OUTLINED_FUNCTION_110();
    v10[2] = sub_197A87FA8();
    v10[3] = v12;
    type metadata accessor for CustomAssetConfiguration(0);
    OUTLINED_FUNCTION_15_1();
    sub_19796AA70(v13);
    OUTLINED_FUNCTION_118();
    sub_197A87F88();
    sub_19794B0C4();
    OUTLINED_FUNCTION_110();
    v14 = sub_197A87F48();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_67_0();
    v18(v17);
    v19 = (v10 + *(v6 + 28));
    *v19 = v14;
    v19[1] = v16;
    sub_19796B948();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19796B99C();
  }

  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_97_4()
{

  return sub_197A87F88();
}

uint64_t OUTLINED_FUNCTION_97_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return type metadata accessor for ClientData(0);
}

uint64_t sub_19796B948()
{
  v1 = OUTLINED_FUNCTION_43_1();
  v2(v1);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t sub_19796B99C()
{
  v1 = OUTLINED_FUNCTION_97();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_19796BA5C()
{
  result = qword_1ED87D7B0;
  if (!qword_1ED87D7B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LoadState, &type metadata for LoadState, v0, v1);
    atomic_store(result, &qword_1ED87D7B0);
  }

  return result;
}

_BYTE *sub_19796BAB8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x19796BB84);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Version.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

ModelManagerServices::LoadState_optional __swiftcall LoadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_19796BD08()
{
  OUTLINED_FUNCTION_92();
  v1 = v0;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_165_1(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_65_0();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_141();
  sub_197A883D8();
  v8 = OUTLINED_FUNCTION_107_3();
  v9(v8);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19796BE4C()
{
  result = qword_1EAF48848;
  if (!qword_1EAF48848)
  {
    result = swift_getWitnessTable(byte_197A9DC9C, &type metadata for ModelXPCRequest.CancelSessionRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48848);
  }

  return result;
}

uint64_t sub_19796C5B0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19796C6D0()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_19796C728()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  sub_197947A40(*(v2 + 120), &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_135_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19796C89C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();

  return v2();
}

uint64_t sub_19796C954()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19796D144()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19796D268()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 88);
  if (v0)
  {
    v6 = sub_197A3F404;
  }

  else
  {
    v6 = sub_19796D3B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_19796D3B0()
{
  OUTLINED_FUNCTION_72();
  v17 = v1;
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_144_3();
  sub_19796D494(v14);
  OUTLINED_FUNCTION_143_3(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v15);
  os_unfair_lock_unlock(v2 + 50);
  OUTLINED_FUNCTION_60_5(v0 + 24);
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v11();
}

double sub_19796D494@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_19794B040();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F8, &qword_197A969C8);
    sub_197A87EB8();
    v6 = *(v13 + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    sub_197947A40(v6 + *(*(v7 - 8) + 72) * v5, &qword_1EAF49130, &qword_197A969C0);
    v8 = *(v13 + 56) + 48 * v5;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 16);
    *a1 = *v8;
    *(a1 + 16) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    sub_19796AB98(&qword_1ED87FE60, &qword_1EAF49130, &qword_197A969C0);
    sub_197A87EC8();
    *v1 = v13;
  }

  else
  {
    *a1 = 1;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_7(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_58_12()
{

  return swift_beginAccess();
}

uint64_t sub_19796D708()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

unint64_t sub_19796D7E8()
{
  result = qword_1EAF48820;
  if (!qword_1EAF48820)
  {
    result = swift_getWitnessTable(byte_197A9DDDC, &type metadata for ModelXPCRequest.DeleteSessionRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48820);
  }

  return result;
}

uint64_t sub_19796D83C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_142_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_142_3()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 1024;

  return sub_197969A00(v2, v0);
}

uint64_t sub_19796DA58()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for InferenceProviderPrewarmInformation(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_19796DAA4()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_197A87298();
    v3 = OUTLINED_FUNCTION_73_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_19796DB24()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for InferenceProviderPrewarmInformation(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_19796DB74()
{
  OUTLINED_FUNCTION_111();
  if (v0)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  sub_197A87298();
  v2 = OUTLINED_FUNCTION_73_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void InferenceProviderXPCRequest.PrewarmBundle.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  type metadata accessor for InferenceProviderPrewarmInformation(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DF0, &qword_197A92E10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_21_6();
  v8 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v7);
  v9 = OUTLINED_FUNCTION_28(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  v10 = sub_19796FBF0();
  OUTLINED_FUNCTION_45_5(&type metadata for InferenceProviderXPCRequest.PrewarmBundle.CodingKeys, v11, v10);
  if (!v1)
  {
    OUTLINED_FUNCTION_102_2();
    v13 = sub_19796A788(v12);
    OUTLINED_FUNCTION_17_7(v13, v14);
    v15 = OUTLINED_FUNCTION_19_9();
    v16(v15);
    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_30_8();
    v17 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v17, v18);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19796DD70@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v10 = OUTLINED_FUNCTION_28(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_200();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  sub_19796EA88(v1 + 112, v53);
  if ((v54 & 1) == 0)
  {
    return sub_197945EF8(v53, a1);
  }

  sub_197A7510C(v53);
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v52[4] = v2;
  v55 = v4;
  v19 = sub_197A87608();
  __swift_project_value_buffer(v19, qword_1ED87D2C0);
  v20 = sub_197A875E8();
  v21 = sub_197A87D68();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_95_8();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_197941000, v20, v21, "Inference Provider service was never configured with a .configureBuiltInProvider message", v22, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v23 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v24, 255, v25);
  v52[2] = v23;
  OUTLINED_FUNCTION_52_9();
  v52[3] = swift_allocError();
  v52[1] = v26;
  v27 = sub_197A87898();
  v28 = sub_197A87258();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  v32 = OUTLINED_FUNCTION_108_3();
  sub_197947A40(v32, v33, &qword_197A89620);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v28);
  sub_197944528();
  *v8 = 0xD000000000000058;
  *(v8 + 8) = 0x8000000197AA4A80;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = 0;
  *(v8 + 40) = v27;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  sub_197944528();
  v37 = OUTLINED_FUNCTION_96();
  LODWORD(v27) = __swift_getEnumTagSinglePayload(v37, v38, v28);
  sub_197947A40(v18, &qword_1EAF48B20, &qword_197A89620);
  v39 = OUTLINED_FUNCTION_108_3();
  sub_197947A40(v39, v40, &qword_197A89620);
  if (v27 == 1)
  {
    v41 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v28);
    v44 = OUTLINED_FUNCTION_96();
    if (__swift_getEnumTagSinglePayload(v44, v45, v28) != 1)
    {
      sub_197947A40(v13, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    v47 = OUTLINED_FUNCTION_100_0();
    v48(v47);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v28);
  }

  sub_19794B118();
  OUTLINED_FUNCTION_34_8();
  sub_197979D80();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_19796E1D4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

unint64_t sub_19796E2D8()
{
  result = qword_1ED87D7D0;
  if (!qword_1ED87D7D0)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499F8, &unk_197A92360);
    v4[0] = sub_1979766D4();
    v4[1] = sub_197976728();
    v4[2] = sub_19796A788(&qword_1ED8813C8);
    v4[3] = sub_19796A788(&qword_1ED8813D0);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1ED87D7D0);
  }

  return result;
}

unint64_t sub_19796E3DC()
{
  result = qword_1ED87E908;
  if (!qword_1ED87E908)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499F8, &unk_197A92360);
    v4[0] = sub_1979766D4();
    v4[1] = sub_197976728();
    v4[2] = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    v4[3] = sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1ED87E908);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_149()
{

  return swift_slowAlloc();
}

uint64_t sub_19796E528()
{
  OUTLINED_FUNCTION_9();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for InferenceError(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_28(v4);
  v1[26] = OUTLINED_FUNCTION_225_0();
  v1[27] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_158_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return sub_197A87FA8();
}

uint64_t OUTLINED_FUNCTION_60_5(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_19796E650()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  sub_197961900(v1 + 16, v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B300, &qword_197AA1A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B308, &qword_197AA1A58);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 192);
    sub_197945EF8((v1 + 136), v1 + 56);
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v5 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
    *(v1 + 241) = *(v4 + *(v5 + 20));
    *(v1 + 242) = *(v4 + *(v5 + 24));
    OUTLINED_FUNCTION_17_2();
    v6 = swift_task_alloc();
    *(v1 + 224) = v6;
    *v6 = v1;
    v6[1] = sub_197A6D580;
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X7, X16 }
  }

  v9 = *(v1 + 192);
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  sub_197947A40(v1 + 136, &qword_1EAF4B310, &qword_197AA1A60);
  OUTLINED_FUNCTION_67_12();
  *(v1 + 240) = *(v9 + *(type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0) + 20));
  OUTLINED_FUNCTION_17_2();
  v10 = swift_task_alloc();
  *(v1 + 232) = v10;
  *v10 = v1;
  v10[1] = sub_19796EACC;
  OUTLINED_FUNCTION_32_1(*(v1 + 192));
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X5, X16 }
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2)
{

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_72_4(unint64_t *a1)
{

  return sub_197955EBC(a1, v1, protocol conformance descriptor for InferenceProviderXPCRequest.Notification);
}

uint64_t sub_19796EACC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v3 + 184);
  if (v0)
  {
    v8 = sub_197A6D7DC;
  }

  else
  {
    v8 = sub_19796EBC8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_19796EBC8()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  OUTLINED_FUNCTION_105();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_19796EC60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19796ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_33_7();
  sub_1979699A8(v14, v15);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19796EE3C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_197A7513C, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v8();
  }
}

uint64_t sub_19796EF54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_19796F054, v2, 0);
}

uint64_t sub_19796F054()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[8];
  sub_19796F110(v0[10]);
  v2 = v0[5];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_36_0();
  (*(v4 + 16))();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13();

  return v5();
}

void sub_19796F110(uint64_t a1)
{
  v3 = *(v1 + 120);
  os_unfair_lock_lock((v3 + 24));
  sub_19795E71C((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_19796F170()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_19796F25C, 0, 0);
}

uint64_t sub_19796F25C()
{
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_8_3(&qword_1ED87E900);
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  v3 = sub_197A87D48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_20_1(&dword_197941000, v6, v7, "Replying to message %llu.");
    OUTLINED_FUNCTION_44();
  }

  v8 = v0[12];

  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = v0[10];
  v12 = v0[11];
  v13 = __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
  (*(v10 + 16))(v13, v11, v12, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_13();

  return v14();
}

void InferenceProviderXPCRequest.EmptyResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49D28, &qword_197A92DB0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113_0(a1, a1[3]);
  sub_19796F530();
  OUTLINED_FUNCTION_159_0();
  sub_197A883D8();
  (*(v5 + 8))(v1, v3);
  OUTLINED_FUNCTION_113_3();
}

uint64_t OUTLINED_FUNCTION_126_0(uint64_t a1, uint64_t a2)
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_126_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return sub_197A49444();
}

unint64_t sub_19796F530()
{
  result = qword_1ED87D8F0;
  if (!qword_1ED87D8F0)
  {
    result = swift_getWitnessTable(aEqW, &type metadata for InferenceProviderXPCRequest.EmptyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D8F0);
  }

  return result;
}

uint64_t sub_19796F590()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19796F6D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19796F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  v17 = OUTLINED_FUNCTION_21_4();
  sub_19796FA14(v17);
  v18 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v18, &qword_1EAF499F8);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  v21 = sub_197955EBC(v19, v20, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_28_3(v21);
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v22, v23);
  sub_197947900(v18, &qword_1EAF499F8);
  OUTLINED_FUNCTION_81_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5(v24))
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v18, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
    }

    v34 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v34, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v35 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v36 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v37);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_197947900(v36, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v25 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v25, qword_1ED87DD88);
  sub_197A878A8();
  v26 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v27 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v27, v28, v29);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v30, v31, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v32 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v32, v33);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_19796FA3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19796FB78()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_19796FBD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_19796FBF0()
{
  result = qword_1ED87DE38;
  if (!qword_1ED87DE38)
  {
    result = swift_getWitnessTable(aSW_1, &type metadata for InferenceProviderXPCRequest.PrewarmBundle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_164(uint64_t a1)
{

  return swift_allocObject();
}

void InferenceProviderPrewarmInformation.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  sub_197A87298();
  OUTLINED_FUNCTION_2();
  v22 = v4;
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49038, &unk_197A8BB60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v24 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_113_0(v13, v14);
  sub_1979701EC();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v26) = 0;
    OUTLINED_FUNCTION_87();
    *v12 = sub_197A87FA8();
    *(v12 + 8) = v15;
    OUTLINED_FUNCTION_112_0();
    sub_1979705E8();
    OUTLINED_FUNCTION_87();
    sub_197A87FD8();
    *(v12 + 16) = v26;
    *(v12 + 32) = v27;
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v16);
    OUTLINED_FUNCTION_41_1();
    sub_197A87FD8();
    (*(v22 + 32))(v12 + v24[6], v7, v23);
    OUTLINED_FUNCTION_87();
    v17 = sub_197A87FA8();
    v18 = (v12 + v24[7]);
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(v25) = 4;
    OUTLINED_FUNCTION_87();
    *(v12 + v24[8]) = sub_197A87FE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_197964788(&qword_1ED87F888);
    OUTLINED_FUNCTION_41_1();
    sub_197A87F88();
    *(v12 + v24[9]) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_1979546EC(&qword_1ED87DD78);
    OUTLINED_FUNCTION_41_1();
    sub_197A87F88();
    v20 = OUTLINED_FUNCTION_30_1();
    v21(v20);
    *(v12 + v24[10]) = v25;
    sub_19796B948();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19796B99C();
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_1979701EC()
{
  result = qword_1ED87DDE0;
  if (!qword_1ED87DDE0)
  {
    result = swift_getWitnessTable(byte_197A8CD30, &type metadata for InferenceProviderPrewarmInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDE0);
  }

  return result;
}

uint64_t type metadata accessor for _OSTransaction(uint64_t a1)
{
  result = qword_1ED87D170;
  if (!qword_1ED87D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_197970294(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static _OSTransaction.named<A>(_:closure:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[7] = a8;
  v9[8] = v8;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v9[9] = *(a8 - 8);
  v9[10] = swift_task_alloc();
  swift_getObjectType();
  v11 = sub_197A87B58();
  v9[11] = v11;
  v9[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1979704B4, v11, v10);
}

uint64_t sub_1979704B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v0[13] = swift_allocObject();
  sub_197A878A8();
  _OSTransaction.init(_:)(v3, v2);
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_19797677C;
  v5 = v0[10];

  return v7(v5);
}

unint64_t sub_1979705E8()
{
  result = qword_1ED87E470;
  if (!qword_1ED87E470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuditToken, &type metadata for AuditToken, v0, v1);
    atomic_store(result, &qword_1ED87E470);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderPrewarmInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x197970708);
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

uint64_t _OSTransaction.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v38 = a1;
  sub_197A87298();
  OUTLINED_FUNCTION_3_20();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31[-v12];
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  if (qword_1EAF482C8 != -1)
  {
    OUTLINED_FUNCTION_1_19(&qword_1EAF482C8);
  }

  v14 = sub_197A87608();
  __swift_project_value_buffer(v14, qword_1EAF482D0);
  v37 = *(v7 + 16);
  v37(v11, v13, v3);
  sub_197A878A8();
  v15 = sub_197A875E8();
  v16 = sub_197A87D78();

  v17 = os_log_type_enabled(v15, v16);
  v36 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v35 = v4;
    v19 = v18;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v19 = 136315394;
    OUTLINED_FUNCTION_2_19(&qword_1ED87E510);
    v32 = v16;
    v20 = sub_197A88148();
    v21 = v7;
    v23 = v22;
    v33 = *(v21 + 8);
    v33(v11, v3);
    sub_197948834(v20, v23, &v39);

    OUTLINED_FUNCTION_4_13();
    v24 = v38;
    *(v19 + 14) = sub_197948834(v38, a2, v25);
    _os_log_impl(&dword_197941000, v15, v32, "Beginning transaction: %s (%s)", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    v4 = v35;
    OUTLINED_FUNCTION_44();

    v26 = v33;
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v11, v3);
    v24 = v38;
  }

  v37((v4 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__uuid), v13, v3);
  v27 = (v4 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name);
  *v27 = v24;
  v27[1] = a2;
  sub_197A879A8();
  sub_197A878A8();
  v28 = os_transaction_create();

  if (v28)
  {
    *(v4 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__transaction) = v28;
    if (qword_1EAF48670 != -1)
    {
      result = OUTLINED_FUNCTION_0_26(&qword_1EAF48670);
    }

    v30 = qword_1EAF48678;
    MEMORY[0x1EEE9AC00](result);
    *&v31[-32] = v13;
    *&v31[-24] = v24;
    *&v31[-16] = a2;
    os_unfair_lock_lock((v30 + 24));
    sub_197970B6C((v30 + 16));
    os_unfair_lock_unlock((v30 + 24));

    v26(v13, v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceError.Context.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

void sub_197970B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197A878A8();
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *a1;
  sub_197970C10();
  *a1 = v5;
}

void sub_197970C10()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v21 = v3;
  v5 = v4;
  v6 = sub_197A87298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  sub_197970E74();
  OUTLINED_FUNCTION_5_8();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F0, &qword_197AA1270);
  OUTLINED_FUNCTION_29_6();
  if ((sub_197A87EB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_197970E74();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v0;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = v5;
    v19[1] = v21;
    OUTLINED_FUNCTION_66();
  }

  else
  {
    (*(v7 + 16))(v10, v2, v6);
    sub_197970EF8(v14, v10, v5, v21, v18);
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_197970DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_119_2(*(v14 + 88));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

unint64_t sub_197970E74()
{
  sub_197A87298();
  OUTLINED_FUNCTION_14_11();
  sub_19794A664(v0, 255, v1);
  OUTLINED_FUNCTION_76_7();
  sub_197A878E8();
  v2 = OUTLINED_FUNCTION_133_0();

  return sub_197971764(v2, v3);
}

uint64_t sub_197970EF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_197A87298();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_197970FB8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  v3 = OUTLINED_FUNCTION_81();

  return sub_197971148(v3, v4, v5, v6);
}

uint64_t sub_197971050()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197971148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_32_0(sub_197971164, 0);
}

uint64_t sub_197971164()
{
  OUTLINED_FUNCTION_9();
  sub_197947C44(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1979711BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 344) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t _s20ModelManagerServices35InferenceProviderPrewarmInformationV16internalMetadataSDyS2SGSgvg_0()
{
  type metadata accessor for InferenceProviderPrewarmInformation(0);

  return sub_197A878A8();
}

uint64_t sub_197971328()
{
  OUTLINED_FUNCTION_114_0();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = v0(v8, v1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v10;
}

uint64_t sub_197971430()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1979714B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  type metadata accessor for InferenceProviderXPCSender();
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_1979715F8(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_1979715F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v16 - v9;
  v17[3] = a3;
  v17[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  v12 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  sub_197947C44(v17, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_197945EF8(v16, v13 + 32);
  v14 = sub_1979CC2F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  *(a2 + 112) = v14;
  return a2;
}

unint64_t sub_197971764(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_197A87298();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_19794A664(&qword_1EAF488E8, 255, MEMORY[0x1E69695A8]);
    v9 = sub_197A87918();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197971968()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197971AA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

unint64_t sub_197971C00()
{
  result = qword_1EAF48898;
  if (!qword_1EAF48898)
  {
    result = swift_getWitnessTable(asc_197A9DD3C, &type metadata for ModelXPCRequest.PrewarmSession.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48898);
  }

  return result;
}

uint64_t sub_197971CB8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

double InferenceProviderExtension.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_197971D04@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = InferenceProviderExtension.configuration.getter();
  *a1 = v3;
  return result;
}

uint64_t InferenceProviderExtension.handleConnection(_:)(_xpc_connection_s *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_197A87658();
  MEMORY[0x1EEE9AC00](v7 - 8);
  pid = xpc_connection_get_pid(a1);
  sub_1979722FC(v18);
  type metadata accessor for InferenceProviderXPCRequestDispatcher();
  swift_allocObject();
  InferenceProviderXPCRequestDispatcher.init(configuration:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49180, &qword_197A8D170);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49188, &unk_197A8D178);
  swift_allocObject();

  *(v9 + 16) = sub_197973B0C(v10);
  sub_197A876C8();
  *(swift_allocObject() + 16) = pid;
  swift_unknownObjectRetain();

  sub_197A87638();
  v11 = sub_197A87628();
  v12 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_197A87BE8();

  v13 = sub_197A87BD8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v2;
  v14[5] = v11;
  sub_19795CB2C();
}

uint64_t sub_197972118()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.prewarmBundle(information:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t sub_197972264()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979722FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for InferenceProvider);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = *(v5 + 8);
    *(a1 + 24) = &type metadata for InferenceProviderAdapter;
    *(a1 + 32) = &protocol witness table for InferenceProviderAdapter;
    v9 = swift_allocObject();
    *a1 = v9;
    v9[5] = v6;
    v9[6] = v7;
    __swift_allocate_boxed_opaque_existential_1(v9 + 2);
    result = v8(v6, v7);
LABEL_5:
    *(a1 + 40) = 0;
    return result;
  }

  result = dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for InferenceProviding);
  if (result)
  {
    v12 = result;
    v13 = v11;
    v14 = *(v11 + 8);
    *(a1 + 24) = result;
    *(a1 + 32) = v11;
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = v14(v12, v13);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_197972410()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OUTLINED_FUNCTION_15_2();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197972484()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_98_1();
  sub_197967254(v0, v1, type metadata accessor for InferenceProviderPrewarmInformation);
  OUTLINED_FUNCTION_17(&unk_197A92178);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_139(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_38_3(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t InferenceProviderXPCRequestDispatcher.init(configuration:)()
{
  OUTLINED_FUNCTION_150_2();
  swift_defaultActor_initialize();
  *(v1 + 160) = MEMORY[0x1E69E7CD0];
  *(v1 + 168) = 0;
  type metadata accessor for RequestKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  sub_197973734(&qword_1ED87DF18, 255, type metadata accessor for RequestKey);
  *(v1 + 176) = sub_197A87898();
  type metadata accessor for InferenceProviderRequestStream(0);
  *(v1 + 184) = sub_197A87898();
  v2 = v0[1];
  *(v1 + 112) = *v0;
  *(v1 + 128) = v2;
  *(v1 + 137) = *(v0 + 25);
  return v1;
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_197A880E8();
}

void sub_19797271C(uint64_t a1)
{
  sub_1979728D4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_197972790(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_197972C1C;

  return sub_197967424((v3 + 2));
}

void sub_1979728D4(uint64_t a1)
{
  if (!qword_1ED87FE68)
  {
    v2 = type metadata accessor for RequestMetadata(255);
    v4 = type metadata accessor for UUIDIdentifier(a1, v2, &protocol witness table for RequestMetadata, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED87FE68);
    }
  }
}

void sub_197972934(uint64_t a1)
{
  type metadata accessor for ClientData(319);
  if (v1 <= 0x3F)
  {
    sub_197A87298();
    if (v2 <= 0x3F)
    {
      sub_197972B10(319);
      if (v3 <= 0x3F)
      {
        sub_197973688(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for RequestKey(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_197972A4C(uint64_t a1)
{
  sub_197972AB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_197972AB8(uint64_t a1)
{
  if (!qword_1ED8813F0[0])
  {
    sub_197A877A8();
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, qword_1ED8813F0);
    }
  }
}

void sub_197972B10(uint64_t a1)
{
  if (!qword_1ED880248)
  {
    v2 = type metadata accessor for Session(255);
    v4 = type metadata accessor for UUIDIdentifier(a1, v2, &protocol witness table for Session, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED880248);
    }
  }
}

void sub_197972B70(uint64_t a1)
{
  if (!qword_1ED8816E0)
  {
    type metadata accessor for Session.Metadata(255);
    type metadata accessor for ModelManagerError(255);
    sub_1979548FC(&qword_1ED8816D8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    v1 = sub_197A88368();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8816E0);
    }
  }
}

uint64_t sub_197972C1C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_197972D30(uint64_t a1)
{
  sub_197972B70(319);
  if (v1 <= 0x3F)
  {
    sub_197A87298();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_197972E40()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void sub_197972F30(uint64_t a1)
{
  sub_197A87118();
  if (v1 <= 0x3F)
  {
    sub_197972B10(319);
    if (v2 <= 0x3F)
    {
      sub_197A87298();
      if (v3 <= 0x3F)
      {
        sub_197973084(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_197973018(uint64_t a1)
{
  result = sub_197A87298();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_197973084(uint64_t a1)
{
  if (!qword_1ED881018[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49030, &qword_197A96B90);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, qword_1ED881018);
    }
  }
}

void sub_1979730E8(uint64_t a1)
{
  sub_197A877A8();
  if (v1 <= 0x3F)
  {
    sub_19797317C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19797317C()
{
  if (!qword_1ED881628[0])
  {
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, qword_1ED881628);
    }
  }
}

uint64_t sub_1979731CC(uint64_t a1)
{
  v1 = type metadata accessor for InferenceError(319);
  if (v2 <= 0x3F)
  {
    sub_19797352C();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = sub_197A87298();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_197973584(319);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1979735FC();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            v1 = sub_197973660();
            if (v11 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1979732F8(uint64_t a1)
{
  result = type metadata accessor for InferenceError.Context(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_197973380(uint64_t a1)
{
  sub_19797347C();
  if (v1 <= 0x3F)
  {
    sub_1979734D8(319, qword_1ED8811F0, MEMORY[0x1E698C278]);
    if (v2 <= 0x3F)
    {
      sub_1979734D8(319, &qword_1ED8813D8, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19797347C()
{
  if (!qword_1ED8811E8)
  {
    v0 = sub_197A878B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8811E8);
    }
  }
}

void sub_1979734D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_197A87DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19797352C()
{
  if (!qword_1ED881778)
  {
    v0 = sub_197A87D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED881778);
    }
  }
}

void sub_197973584(uint64_t a1)
{
  if (!qword_1ED8815D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8815D8);
    }
  }
}

void sub_1979735FC()
{
  if (!qword_1ED8815D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8815D0);
    }
  }
}

uint64_t sub_197973660()
{
  result = qword_1ED8813E8;
  if (!qword_1ED8813E8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ED8813E8);
  }

  return result;
}

void sub_197973688(uint64_t a1)
{
  if (!qword_1ED8813E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8813E0);
    }
  }
}

uint64_t sub_1979736EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197973734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    v5 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1979737E4(uint64_t a1)
{
  result = sub_197A87298();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RequestKey(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void InferenceProviderXPCRequest.PrewarmBundle.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DE8, &qword_197A92E08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  v1 = sub_19796FBF0();
  OUTLINED_FUNCTION_50_6(&type metadata for InferenceProviderXPCRequest.PrewarmBundle.CodingKeys, v2, v1);
  type metadata accessor for InferenceProviderPrewarmInformation(0);
  OUTLINED_FUNCTION_102_2();
  v4 = sub_19796A788(v3);
  OUTLINED_FUNCTION_24_7(v4, v5);
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_197973A60(uint64_t a1)
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

uint64_t sub_197973B0C(uint64_t a1)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49190, &unk_197A925E0);
  v3 = sub_197A87898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49198, &qword_197A8D2D0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 112) = a1;
  *(v1 + 120) = v4;
  return v1;
}

void sub_197973BB8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_197973C04()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_14_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_5(v2);

  return sub_197973C9C(v4, v5, v6, v7, v0);
}

uint64_t sub_197973C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_197A87BE8();
  v5[4] = sub_197A87BD8();
  v7 = sub_197A87B58();

  return MEMORY[0x1EEE6DFA0](sub_197973D4C, v7, v6);
}

uint64_t sub_197973D4C()
{
  v5 = v0;
  v1 = *(v0 + 24);

  v4[3] = sub_197A876C8();
  v4[4] = &protocol witness table for XPCSession;
  v4[0] = v1;

  sub_197973DDC(v4);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197973DDC(uint64_t a1)
{
  swift_beginAccess();
  sub_197973E2C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_197973E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49178, &unk_197A8D160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InferenceProviderPrewarmInformation.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49028, &qword_197A8BB58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  v2 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v2, v3);
  v4 = sub_1979701EC();
  OUTLINED_FUNCTION_125(&type metadata for InferenceProviderPrewarmInformation.CodingKeys, v5, v4);
  OUTLINED_FUNCTION_55();
  sub_197A880B8();
  if (!v0)
  {
    sub_1979741F8();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    type metadata accessor for InferenceProviderPrewarmInformation(0);
    sub_197A87298();
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v6);
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    OUTLINED_FUNCTION_55();
    sub_197A880F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_197964788(&qword_1ED87FC00);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_55();
    sub_197A88098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_1979546EC(&qword_1ED87FB40);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_55();
    sub_197A88098();
  }

  v7 = OUTLINED_FUNCTION_79_4();
  return v8(v7);
}

uint64_t sub_19797418C(uint64_t a1)
{
  result = sub_197A87818();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1979741F8()
{
  result = qword_1ED87E478;
  if (!qword_1ED87E478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuditToken, &type metadata for AuditToken, v0, v1);
    atomic_store(result, &qword_1ED87E478);
  }

  return result;
}

uint64_t sub_19797424C(uint64_t a1)
{
  result = type metadata accessor for InferenceProviderXPCRequest.EndOfStreamNotification(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InferenceProviderXPCRequest.ClientTerminatedNotification(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AuditToken.encode(to:)(void *a1)
{
  v2 = v1;
  v15 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B258, &qword_197AA0FA8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797450C();
  sub_197A883D8();
  v12 = *v2;
  v13 = *(v2 + 1);
  v14 = v2[3];
  sub_197974560(&v12);
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_19797447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_19797450C()
{
  result = qword_1ED87DF30;
  if (!qword_1ED87DF30)
  {
    result = swift_getWitnessTable(byte_197AA119C, &type metadata for AuditToken.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DF30);
  }

  return result;
}

uint64_t sub_197974560(uint64_t a1)
{
  v3 = sub_197974728(a1, a1 + 32);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B258, &qword_197AA0FA8);
  sub_1979747FC();
  sub_197A880E8();
  return sub_197974AFC(v3, v4);
}

uint64_t sub_1979745E8(uint64_t a1)
{
  result = type metadata accessor for InferenceProviderXPCRequest.ConvertData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

  return result;
}

uint64_t sub_197974728(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_197A87128();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x19A8EA400]();
    }

    else
    {
      v6 = MEMORY[0x19A8EA410]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

unint64_t sub_1979747FC()
{
  result = qword_1EAF488F8;
  if (!qword_1EAF488F8)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969090], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EAF488F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuditToken.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1979748ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_197974914(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_114(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_133_0();
    v6 = sub_197A87DB8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_197974974(uint64_t a1)
{
  sub_197A87298();
  if (v1 <= 0x3F)
  {
    sub_197974914(319, &qword_1ED8811E0, &qword_1EAF48B58);
    if (v2 <= 0x3F)
    {
      sub_197974914(319, qword_1ED881018, &qword_1EAF49030);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197974A68(uint64_t a1)
{
  type metadata accessor for InferenceProviderAssetDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1979728D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_197974AFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_197974B54(uint64_t a1)
{
  sub_197974C5C(319);
  if (v1 <= 0x3F)
  {
    sub_197974CB4(319, &qword_1ED87EA08);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_127()
{

  return sub_197A879B8();
}

void sub_197974C5C(uint64_t a1)
{
  if (!qword_1ED87F050)
  {
    type metadata accessor for CustomAssetConfiguration(255);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED87F050);
    }
  }
}

void sub_197974CB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_197A87DB8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_197974D20(uint64_t a1)
{
  type metadata accessor for ClientData(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InferenceProviderRequestConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1979728D4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197974DCC(uint64_t a1)
{
  sub_19797352C();
  if (v1 <= 0x3F)
  {
    sub_197A87298();
    if (v2 <= 0x3F)
    {
      sub_197974CB4(319, qword_1ED881628);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197974EC8(uint64_t a1)
{
  sub_197A0F34C(319, &qword_1ED87EA00, type metadata accessor for ClientData, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RequestMetadata(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceProviderRequestConfiguration(319);
      if (v3 <= 0x3F)
      {
        sub_1979728D4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_197974FC4(uint64_t a1)
{
  result = type metadata accessor for RequestKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_197975040(uint64_t a1)
{
  result = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AuditToken.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B250, &qword_197AA0FA0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797450C();
  sub_197A883A8();
  if (!v2)
  {
    sub_1979752CC();
    sub_197A87FD8();
    v11 = v18;
    v14 = 0u;
    v15 = 0u;
    v16 = v18;
    sub_197975320();
    sub_197A87008();
    (*(v7 + 8))(v10, v5);
    sub_197974AFC(v11, *(&v11 + 1));
    v12 = v15;
    v16 = v14;
    v17 = v15;
    *a2 = v14;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1979752CC()
{
  result = qword_1ED87DD50;
  if (!qword_1ED87DD50)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69690B0], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1ED87DD50);
  }

  return result;
}

unint64_t sub_197975320()
{
  result = qword_1ED87E518;
  if (!qword_1ED87E518)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969068], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1ED87E518);
  }

  return result;
}

void OUTLINED_FUNCTION_102_1()
{
  *(v0 + 16) = v1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_102_5(uint64_t a1)
{

  return sub_197A87F08();
}

uint64_t sub_197975480(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_32_0(sub_19797549C, a2);
}

uint64_t sub_19797549C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {
    OUTLINED_FUNCTION_28_11();
LABEL_9:

    return v2();
  }

  sub_197961900((v1 + 2), (v1 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B300, &qword_197AA1A50);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B308, &qword_197AA1A58);
  if (OUTLINED_FUNCTION_128_3(v3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 12);
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v4 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v4, qword_1ED87D2C0);
    v5 = sub_197A875E8();
    v6 = sub_197A87D38();
    if (OUTLINED_FUNCTION_65(v6))
    {
      OUTLINED_FUNCTION_95_8();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v7);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
    OUTLINED_FUNCTION_133_0();
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
    OUTLINED_FUNCTION_15();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_67_12();
  OUTLINED_FUNCTION_17_2();
  v14 = swift_task_alloc();
  v1[20] = v14;
  *v14 = v1;
  v14[1] = sub_197971050;
  v15 = OUTLINED_FUNCTION_81_7(v1[19]);

  return v16(v15);
}

unint64_t sub_1979756EC()
{
  result = qword_1ED87DE18;
  if (!qword_1ED87DE18)
  {
    result = swift_getWitnessTable(byte_197A9454C, &type metadata for InferenceProviderXPCRequest.TransitionAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE18);
  }

  return result;
}

unint64_t sub_197975744()
{
  result = qword_1ED87DE20;
  if (!qword_1ED87DE20)
  {
    result = swift_getWitnessTable(byte_197A94574, &type metadata for InferenceProviderXPCRequest.TransitionAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE20);
  }

  return result;
}

unint64_t sub_1979757AC()
{
  result = qword_1ED87DDE8;
  if (!qword_1ED87DDE8)
  {
    result = swift_getWitnessTable(byte_197A8C62C, &type metadata for InferenceProviderAssetDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDE8);
  }

  return result;
}

unint64_t sub_197975804()
{
  result = qword_1ED87DDF0;
  if (!qword_1ED87DDF0)
  {
    result = swift_getWitnessTable(byte_197A8C654, &type metadata for InferenceProviderAssetDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDF0);
  }

  return result;
}

uint64_t sub_197975858()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197976048()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87DF90);
  __swift_project_value_buffer(v0, qword_1ED87DF90);
  return sub_197A875F8();
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

uint64_t sub_19797611C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19797623C()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 208) = v0;

  sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_261();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979763E4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_46(v1 + 24, v0 + 104);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();

  return v2();
}

uint64_t sub_1979764A4(uint64_t a1)
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

void sub_19797654C(uint64_t a1)
{
  type metadata accessor for RequestKey(319);
  if (v1 <= 0x3F)
  {
    sub_197A0F34C(319, &qword_1ED880E68, MEMORY[0x1E69E84A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_197A0F34C(319, &qword_1ED880FB0, type metadata accessor for ClientData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_197976658(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1979766D4()
{
  result = qword_1ED87EE68;
  if (!qword_1ED87EE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.EmptyResponse, &type metadata for InferenceProviderXPCRequest.EmptyResponse, v0, v1);
    atomic_store(result, &qword_1ED87EE68);
  }

  return result;
}

unint64_t sub_197976728()
{
  result = qword_1ED87EE70[0];
  if (!qword_1ED87EE70[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.EmptyResponse, &type metadata for InferenceProviderXPCRequest.EmptyResponse, v0, v1);
    atomic_store(result, qword_1ED87EE70);
  }

  return result;
}

uint64_t sub_19797677C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_197A6C120;
  }

  else
  {
    v5 = sub_1979768B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1979768B8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[2];

  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t _OSTransaction.__deallocating_deinit()
{
  _OSTransaction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _OSTransaction.deinit()
{
  v2 = v0;
  sub_197A87298();
  OUTLINED_FUNCTION_3_20();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v33 = OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__uuid;
  v34 = v4;
  v11 = *(v4 + 16);
  v11(&v29 - v9, v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__uuid, v1);
  v12 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name + 8);
  v31 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name);
  v32 = v0 + OBJC_IVAR____TtC20ModelManagerServices14_OSTransaction__name;
  v13 = qword_1EAF482C8;
  sub_197A878A8();
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_1_19(&qword_1EAF482C8);
  }

  v14 = sub_197A87608();
  __swift_project_value_buffer(v14, qword_1EAF482D0);
  v11(v8, v10, v1);
  sub_197A878A8();
  v15 = sub_197A875E8();
  v16 = sub_197A87D78();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v2;
    v18 = v17;
    v29 = swift_slowAlloc();
    v35 = v29;
    *v18 = 136315394;
    OUTLINED_FUNCTION_2_19(&qword_1ED87E510);
    v19 = sub_197A88148();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_5_16();
    (v11)(v22);
    sub_197948834(v19, v21, &v35);

    OUTLINED_FUNCTION_4_13();
    v24 = sub_197948834(v31, v12, v23);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_197941000, v15, v16, "Ending transaction: %s (%s)", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    v2 = v30;
    OUTLINED_FUNCTION_44();
  }

  else
  {

    v26 = OUTLINED_FUNCTION_5_16();
    v25 = (v11)(v26);
  }

  if (qword_1EAF48670 != -1)
  {
    v25 = OUTLINED_FUNCTION_0_26(&qword_1EAF48670);
  }

  v27 = qword_1EAF48678;
  MEMORY[0x1EEE9AC00](v25);
  *(&v29 - 2) = v10;
  os_unfair_lock_lock((v27 + 24));
  sub_197976E50((v27 + 16));
  os_unfair_lock_unlock((v27 + 24));
  (v11)(v10, v1);
  (v11)(v2 + v33, v1);

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_197976D20(uint64_t *a1)
{
  result = sub_197970E74();
  if (v3)
  {
    v4 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F0, &qword_197AA1270);
    sub_197A87EB8();
    v5 = *(v7 + 48);
    v6 = sub_197A87298();
    (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
    sub_197954654(&qword_1ED880FE0, MEMORY[0x1E69695B8]);
    sub_197A87EC8();

    *a1 = v7;
  }

  return result;
}

unint64_t sub_197976E80()
{
  result = qword_1ED87E640;
  if (!qword_1ED87E640)
  {
    result = swift_getWitnessTable(aVW, &type metadata for InferenceProviderXPCRequest.PrewarmBundle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E640);
  }

  return result;
}

unint64_t sub_197976ED8()
{
  result = qword_1ED87DE30;
  if (!qword_1ED87DE30)
  {
    result = swift_getWitnessTable(aUrW, &type metadata for InferenceProviderXPCRequest.PrewarmBundle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE30);
  }

  return result;
}

unint64_t sub_197976F44()
{
  result = qword_1ED87DDD0;
  if (!qword_1ED87DDD0)
  {
    result = swift_getWitnessTable(asc_197A8C6E4, &type metadata for InferenceProviderPrewarmInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDD0);
  }

  return result;
}

unint64_t sub_197976F9C()
{
  result = qword_1ED87DDD8;
  if (!qword_1ED87DDD8)
  {
    result = swift_getWitnessTable(asc_197A8C70C, &type metadata for InferenceProviderPrewarmInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDD8);
  }

  return result;
}

unint64_t sub_197977018()
{
  result = qword_1ED87DF20;
  if (!qword_1ED87DF20)
  {
    result = swift_getWitnessTable(aE_16, &type metadata for AuditToken.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DF20);
  }

  return result;
}

unint64_t sub_197977070()
{
  result = qword_1ED87DE40;
  if (!qword_1ED87DE40)
  {
    result = swift_getWitnessTable(aEzW, &type metadata for InferenceProviderXPCRequest.EmptyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE40);
  }

  return result;
}

unint64_t sub_1979770C4()
{
  result = qword_1ED87DF28;
  if (!qword_1ED87DF28)
  {
    result = swift_getWitnessTable(asc_197AA10D4, &type metadata for AuditToken.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DF28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_111_2(uint64_t a1)
{

  return swift_allocError();
}

unint64_t sub_19797716C()
{
  result = qword_1ED87D8E8;
  if (!qword_1ED87D8E8)
  {
    result = swift_getWitnessTable(aVWx, &type metadata for InferenceProviderXPCRequest.EmptyResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D8E8);
  }

  return result;
}

uint64_t sub_1979771C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t RequestMetadata.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for RequestMetadata(v0);
  OUTLINED_FUNCTION_177(*(v1 + 28));
  return sub_197944528();
}

uint64_t sub_19797726C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197977368()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}