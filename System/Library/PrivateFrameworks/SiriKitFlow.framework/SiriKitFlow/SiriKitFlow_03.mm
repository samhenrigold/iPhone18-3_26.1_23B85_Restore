uint64_t sub_1DCB420B8(uint64_t a1, char a2)
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

  sub_1DD0DEB3C();
LABEL_9:
  result = sub_1DD0DEC7C();
  *v2 = result;
  return result;
}

void sub_1DCB42158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void *, uint64_t, void, uint64_t))
{
  OUTLINED_FUNCTION_50();
  v66 = v27;
  v67 = v28;
  v69 = v29;
  LODWORD(v68) = v30;
  v65 = v31;
  OUTLINED_FUNCTION_102_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v33 = OUTLINED_FUNCTION_20_0(v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_37_6();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v64 - v39;
  memcpy(v74, v25, 0x48uLL);
  type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_41_2();
  v41 = swift_allocObject();
  *(v41 + 16) = v22;
  memcpy(v72, v25, 0x48uLL);
  v42 = v68;
  v68 = v41;
  v43 = a21(v72, v23, v65, v42);
  sub_1DCB4F1DC(v66, v40, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB4F1DC(v67, v73, &unk_1ECCA3280, &unk_1DD0E23D0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v45 = OUTLINED_FUNCTION_52_2(v44);
  OUTLINED_FUNCTION_67_2(v45, xmmword_1DD0E15D0);
  v72[10] = MEMORY[0x1E69E7CC0];
  v46 = v40;
  sub_1DCB4F1DC(v40, v26, &unk_1ECCA3270, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_10(v26);
  if (v47)
  {
    v49 = v43;
    v48 = v43;
    sub_1DCB16D50(v26, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v72[0] = 0;
    v49 = v43;
    v50 = v43;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v72);
    v51 = sub_1DCB41F98(v26);
    MEMORY[0x1E12A6920](v51);
    OUTLINED_FUNCTION_30_6();
    if (*(v52 + 16) >= *(v52 + 24) >> 1)
    {
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_100_1();
    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v46, v24, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_7_10(v24);
  if (v47)
  {
    sub_1DCB16D50(v24, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v53 = OUTLINED_FUNCTION_88_3();
    v54 = sub_1DCB41F98(v53);
    MEMORY[0x1E12A6920](v54);
    OUTLINED_FUNCTION_20_6();
    if (v55)
    {
      OUTLINED_FUNCTION_91(v56 > 1);
    }

    OUTLINED_FUNCTION_54_3();
    sub_1DD0DE3AC();
  }

  sub_1DCB41FF4(v45, sub_1DCB420B0, sub_1DCF77950);

  OUTLINED_FUNCTION_114(v57);

  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_32_0();
  sub_1DCBB6C68(v46, v21 + v58);
  v59 = OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_8_10(v59);
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  v60 = OUTLINED_FUNCTION_53();
  v61(v60);
  OUTLINED_FUNCTION_3_11();
  sub_1DCB6C5E8(v73, v62);
  OUTLINED_FUNCTION_48_3();
  *v21 = v46;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_58_2(v71);
  OUTLINED_FUNCTION_73_5(v72);
  sub_1DCBBF670(v74, &v70);
  v63 = sub_1DCB431E0(v72);
  OUTLINED_FUNCTION_72_0(v63, v71);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB42504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DCB193FC;

  return sub_1DCB425D8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_1DCB425D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return OUTLINED_FUNCTION_0_12(sub_1DCB425F4);
}

uint64_t sub_1DCB425F4()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "#LegacySiriKitOutputPublisher: deprecated implementation being used; please use SiriKitOutputPublisher instead");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[2];

  __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
  OUTLINED_FUNCTION_25_1();
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1DCB40AF4;
  v10 = OUTLINED_FUNCTION_19_33(v0[3]);

  return v12(v10);
}

id sub_1DCB42788(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9, char a10)
{
  if (a10 == 2)
  {
LABEL_5:
  }

  if (a10 != 1)
  {
    if (a10)
    {
      return result;
    }

    sub_1DCB40994(a7, a8);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1DCB428E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v25 - v9;
  if (!*a1)
  {
    v26 = v8;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    v14 = __swift_project_value_buffer(v13, qword_1EDE57E00);
    v15 = *(v13 - 8);
    (*(v15 + 16))(v10, v14, v13);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
    v16 = v10;
    v17 = v26;
    sub_1DCBCF6C8(v16, v26);
    if (__swift_getEnumTagSinglePayload(v17, 1, v13) == 1)
    {
      sub_1DCBCF738(v26);
    }

    else
    {
      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315650;
        v22 = sub_1DD0DEC3C();
        v24 = sub_1DCB10E9C(v22, v23, &v27);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 52;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_1DCB10E9C(0xD0000000000000DBLL, 0x80000001DD11A590, &v27);
        _os_log_impl(&dword_1DCAFC000, v18, v19, "FatalError at %s:%lu - %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v21, -1, -1);
        MEMORY[0x1E12A8390](v20, -1, -1);
      }

      (*(v15 + 8))(v26, v13);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000DBLL, 0x80000001DD11A590);
  }

  v11 = a1[1];
  *a2 = *a1;
  a2[1] = v11;
  return swift_unknownObjectRetain();
}

void sub_1DCB42C24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9, char a10)
{
  if (a10 == 2)
  {
LABEL_5:

    return;
  }

  if (a10 != 1)
  {
    if (a10)
    {
      return;
    }

    sub_1DCB409A8(a7, a8);
    goto LABEL_5;
  }
}

uint64_t sub_1DCB42D14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB42D6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB42DC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB42E18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t destroy for AceOutput(uint64_t a1, int *a2)
{

  sub_1DCB42C24(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (*(a1 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 88));
  }

  v4 = a1 + a2[7];
  v5 = type metadata accessor for NLContextUpdate(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {

    if (*(v4 + 256))
    {
    }

    v6 = *(v5 + 128);
    v7 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  v8 = a2[8];
  v9 = sub_1DD0DD15C();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
  v10 = a2[9];
  v11 = sub_1DD0DD10C();
  result = __swift_getEnumTagSinglePayload(a1 + v10, 1, v11);
  if (!result)
  {
    v13 = *(*(v11 - 8) + 8);

    return v13(a1 + v10, v11);
  }

  return result;
}

uint64_t initializeWithCopy for DialogEngineOutput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_1DCB42788(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return a1;
}

uint64_t sub_1DCB43248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    v10 = a1 + *(a3 + 128);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void OUTLINED_FUNCTION_42_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_42_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 912) = v1;
  *(v2 + 880) = a1;

  return type metadata accessor for SiriKitDefaultPresentationElementsProvider();
}

void OUTLINED_FUNCTION_42_8(void *a1)
{

  sub_1DCC65C8C(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1)
{

  return sub_1DD0DE02C();
}

id OUTLINED_FUNCTION_42_10(float a1)
{
  *v3 = a1;
  *(v2 + 80) = v1;

  return v1;
}

id OUTLINED_FUNCTION_42_11(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_42_12()
{
}

uint64_t OUTLINED_FUNCTION_42_13()
{
  v2 = *(v0 + 288);

  return sub_1DCD0ED08(v2, type metadata accessor for AceOutput);
}

void OUTLINED_FUNCTION_42_16()
{

  JUMPOUT(0x1E12A6780);
}

__n128 OUTLINED_FUNCTION_42_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(a1 + 16) = v11;
  result = a10;
  *(a1 + 24) = a10;
  *(a1 + 40) = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void OUTLINED_FUNCTION_23_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_19()
{

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_42_20(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v5;
  a2[6] = v8;
  return v4;
}

uint64_t OUTLINED_FUNCTION_42_21()
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  *(v1 + 256) = *(v2 + 40);
  *v0 = v3;
  *(v0 + 8) = v4;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 48) = v8;
  *(v0 + 56) = *(v1 + 256);

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_42_22(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 + 272));
}

uint64_t OUTLINED_FUNCTION_42_23(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DE0FC();
}

uint64_t OUTLINED_FUNCTION_42_25(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_26(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *v2 = a1;
  *(v2 + 8) = 256;
  return v3;
}

uint64_t OUTLINED_FUNCTION_42_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for PromptResult(0, a1, a3, a4);
}

uint64_t OUTLINED_FUNCTION_42_31()
{

  return sub_1DCB16D50(v2 + 136, v1, v0);
}

_OWORD *OUTLINED_FUNCTION_42_33()
{

  return sub_1DCB20B30(v0, v0 + 2);
}

void OUTLINED_FUNCTION_42_37(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a2);

  sub_1DD0DCF8C();
}

uint64_t type metadata accessor for AceOutput(uint64_t a1)
{
  result = qword_1EDE46580;
  if (!qword_1EDE46580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB43704()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DCE21B5C;
  }

  else
  {
    v2 = sub_1DCB43818;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DCB43818()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[18];
  v2 = v0[19] + 1;
  v0[19] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_29();

    return v3();
  }

  else
  {
    sub_1DCB17CA0(v0[17] + 40 * v2 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_12_4();
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_0_73(v5);

    return v7(v6);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for AceOutput(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v57 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  v13 = *(a2 + 80);

  sub_1DCB42788(v5, v6, v7, v8, v9, v10, v57, v11, v12, v13);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v14 = a2;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v57;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  v15 = a2[14];
  if (v15)
  {
    v16 = a2[15];
    *(a1 + 112) = v15;
    *(a1 + 120) = v16;
    (**(v15 - 8))(a1 + 88, a2 + 11);
  }

  else
  {
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 120) = a2[15];
  }

  v17 = a3;
  v18 = a3[7];
  v19 = (a1 + v18);
  v20 = a2 + v18;
  v21 = type metadata accessor for NLContextUpdate(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v19, v20, *(*(v22 - 8) + 64));
  }

  else
  {
    *v19 = *v20;
    v23 = *(v20 + 2);
    *(v19 + 1) = *(v20 + 1);
    *(v19 + 2) = v23;
    v24 = *(v20 + 4);
    v25 = *(v20 + 5);
    *(v19 + 3) = *(v20 + 3);
    *(v19 + 4) = v24;
    v27 = *(v20 + 7);
    v26 = *(v20 + 6);
    *(v19 + 5) = v25;
    *(v19 + 6) = v26;
    v28 = *(v20 + 8);
    v19[72] = v20[72];
    *(v19 + 7) = v27;
    *(v19 + 8) = v28;
    v29 = *(v20 + 11);
    *(v19 + 10) = *(v20 + 10);
    *(v19 + 11) = v29;
    v55 = *(v20 + 13);
    *(v19 + 12) = *(v20 + 12);
    *(v19 + 13) = v55;
    v30 = *(v20 + 15);
    *(v19 + 14) = *(v20 + 14);
    *(v19 + 15) = v30;
    v31 = *(v20 + 16);
    *(v19 + 16) = v31;
    v19[136] = v20[136];
    v32 = *(v20 + 19);
    v56 = *(v20 + 18);
    *(v19 + 18) = v56;
    *(v19 + 19) = v32;
    v33 = *(v20 + 21);
    *(v19 + 20) = *(v20 + 20);
    *(v19 + 21) = v33;
    v19[176] = v20[176];
    v34 = *(v20 + 24);
    *(v19 + 23) = *(v20 + 23);
    *(v19 + 24) = v34;
    v19[200] = v20[200];
    v35 = *(v20 + 27);
    *(v19 + 26) = *(v20 + 26);
    *(v19 + 27) = v35;
    v36 = *(v20 + 30);
    v37 = *(v20 + 29);
    *(v19 + 28) = *(v20 + 28);
    *(v19 + 29) = v37;
    *(v19 + 30) = v36;
    v38 = *(v20 + 32);

    v39 = v31;
    v40 = v56;

    if (v38)
    {
      *(v19 + 31) = *(v20 + 31);
      *(v19 + 32) = v38;
      *(v19 + 33) = *(v20 + 33);
    }

    else
    {
      *(v19 + 248) = *(v20 + 248);
      *(v19 + 33) = *(v20 + 33);
    }

    v41 = *(v20 + 35);
    *(v19 + 34) = *(v20 + 34);
    *(v19 + 35) = v41;
    v42 = v21[32];
    v43 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(&v20[v42], 1, v43))
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&v19[v42], &v20[v42], *(*(v44 - 8) + 64));
    }

    else
    {
      (*(*(v43 - 8) + 16))(&v19[v42], &v20[v42], v43);
      __swift_storeEnumTagSinglePayload(&v19[v42], 0, 1, v43);
    }

    v14 = a2;
    v19[v21[33]] = v20[v21[33]];
    v19[v21[34]] = v20[v21[34]];
    v45 = v21[35];
    v46 = &v19[v45];
    v47 = &v20[v45];
    v48 = v47[1];
    *v46 = *v47;
    v46[1] = v48;

    __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
    v17 = a3;
  }

  v49 = v17[8];
  v50 = sub_1DD0DD15C();
  (*(*(v50 - 8) + 16))(a1 + v49, v14 + v49, v50);
  v51 = v17[9];
  v52 = sub_1DD0DD10C();
  if (__swift_getEnumTagSinglePayload(v14 + v51, 1, v52))
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy((a1 + v51), v14 + v51, *(*(v53 - 8) + 64));
  }

  else
  {
    (*(*(v52 - 8) + 16))(a1 + v51, v14 + v51, v52);
    __swift_storeEnumTagSinglePayload(a1 + v51, 0, 1, v52);
  }

  *(a1 + v17[10]) = *(v14 + v17[10]);
  return a1;
}

uint64_t sub_1DCB43F10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    v8 = v5 + *(a4 + 128);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB44520()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB4465C, 0, 0);
}

uint64_t sub_1DCB445C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCB44520();
}

uint64_t sub_1DCB4465C()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(*(v0 + 144) + 16);
  *(swift_task_alloc() + 16) = v1;
  sub_1DCB44A98(sub_1DCB44BB8, v2, v0 + 16);

  sub_1DCB09910(v0 + 16, v0 + 96, &qword_1ECCA79F8, &qword_1DD0FA160);
  if (!*(v0 + 120))
  {
    sub_1DCB0E9D8(v0 + 96, &qword_1ECCA79F8, &qword_1DD0FA160);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = sub_1DD0DD8FC();
    v10 = __swift_project_value_buffer(v9, qword_1EDE57E00);
    v11 = *(v9 - 8);
    (*(v11 + 16))(v7, v10, v9);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    sub_1DCB09910(v7, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1DCB0E9D8(*(v0 + 152), &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_83();
        v19[0] = swift_slowAlloc();
        *v14 = 136315650;
        v15 = sub_1DD0DEC3C();
        v17 = sub_1DCB10E9C(v15, v16, v19);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2048;
        *(v14 + 14) = 106;
        *(v14 + 22) = 2080;
        *(v14 + 24) = sub_1DCB10E9C(0xD000000000000023, 0x80000001DD11F140, v19);
        _os_log_impl(&dword_1DCAFC000, v12, v13, "FatalError at %s:%lu - %s", v14, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_62();
      }

      (*(v11 + 8))(*(v0 + 152), v9);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000023, 0x80000001DD11F140);
  }

  sub_1DCAFF9E8((v0 + 96), v0 + 56);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v18 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_1DCB3FDDC;
  v5 = OUTLINED_FUNCTION_19_33(*(v0 + 136));

  return v18(v5);
}

uint64_t (*sub_1DCB44A98@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1DCB17CA0(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      if (v8)
      {
        return sub_1DCAFF9E8(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DCB44B50(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

uint64_t sub_1DCB44BD8(uint64_t a1)
{
  type metadata accessor for AceOutput(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DCB17CA0(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  v7 = swift_dynamicCast();
  if (v7)
  {
    OUTLINED_FUNCTION_0_7();
    sub_1DCB42D14(v6, v8);
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v7) = (*(v9 + 24))(ObjectType, v9);
  }

  return v7 & 1;
}

uint64_t sub_1DCB44CE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB3FF64;

  return sub_1DCB44D84(a1, v4);
}

uint64_t sub_1DCB44D84(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB44DA4, 0, 0);
}

uint64_t sub_1DCB44DA4()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v0[18] = v2;
  v0[19] = 0;
  if (v2)
  {
    sub_1DCB17CA0(v1 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_12_4();
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_0_73(v3);

    return v5(v4);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t sub_1DCB44EDC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return sub_1DCB44F74();
}

uint64_t sub_1DCB44F74()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCE3F80;

  return sub_1DCB45004();
}

uint64_t sub_1DCB45004()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v1[14] = OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  v1[15] = OUTLINED_FUNCTION_38();
  v3 = type metadata accessor for AceOutput(0);
  v1[16] = v3;
  OUTLINED_FUNCTION_99(v3);
  v1[17] = v4;
  v1[18] = *(v5 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v1[21] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DB04C();
  v1[22] = v6;
  OUTLINED_FUNCTION_99(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCB451A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42D0, &qword_1DD0EB878);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t initializeWithCopy for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  v9 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v9;
  *(a1 + 64) = v8;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  v11 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;
  v12 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v12;
  v31 = *(a2 + 128);
  *(a1 + 128) = v31;
  *(a1 + 136) = *(a2 + 136);
  v13 = *(a2 + 152);
  v30 = *(a2 + 144);
  *(a1 + 144) = v30;
  *(a1 + 152) = v13;
  v14 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v14;
  *(a1 + 176) = *(a2 + 176);
  v15 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v15;
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 232);
  v32 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v17;
  *(a1 + 240) = v32;
  v33 = *(a2 + 256);

  v18 = v31;
  v19 = v30;

  if (v33)
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v33;
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
  }

  v20 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v20;
  v21 = a3[32];
  v22 = sub_1DD0DD72C();

  if (__swift_getEnumTagSinglePayload(a2 + v21, 1, v22))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v21), (a2 + v21), *(*(v23 - 8) + 64));
  }

  else
  {
    (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
    __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v22);
  }

  v24 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[35];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;

  return a1;
}

uint64_t sub_1DCB4554C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void *sub_1DCB455C0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      sub_1DD0DD15C();
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t initializeWithCopy for AceOutput(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v54 = a2[8];
  v55 = a2[2];
  v12 = *(a2 + 80);

  sub_1DCB42788(v5, v55, v6, v7, v8, v9, v10, v54, v11, v12);
  *(a1 + 8) = v5;
  *(a1 + 16) = v55;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v13 = a2;
  *(a1 + 56) = v10;
  *(a1 + 64) = v54;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  v14 = a2[14];
  if (v14)
  {
    v15 = a2[15];
    *(a1 + 112) = v14;
    *(a1 + 120) = v15;
    (**(v14 - 8))(a1 + 88, a2 + 11);
  }

  else
  {
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 120) = a2[15];
  }

  v16 = a3;
  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = type metadata accessor for NLContextUpdate(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v18, v19, *(*(v21 - 8) + 64));
  }

  else
  {
    v57 = a2;
    *v18 = *v19;
    v22 = *(v19 + 2);
    *(v18 + 1) = *(v19 + 1);
    *(v18 + 2) = v22;
    v23 = *(v19 + 4);
    *(v18 + 3) = *(v19 + 3);
    *(v18 + 4) = v23;
    v24 = *(v19 + 6);
    *(v18 + 5) = *(v19 + 5);
    *(v18 + 6) = v24;
    v25 = *(v19 + 8);
    v51 = *(v19 + 7);
    v18[72] = v19[72];
    *(v18 + 7) = v51;
    *(v18 + 8) = v25;
    v26 = *(v19 + 11);
    *(v18 + 10) = *(v19 + 10);
    *(v18 + 11) = v26;
    v27 = *(v19 + 13);
    *(v18 + 12) = *(v19 + 12);
    *(v18 + 13) = v27;
    v28 = *(v19 + 15);
    *(v18 + 14) = *(v19 + 14);
    *(v18 + 15) = v28;
    v53 = *(v19 + 16);
    *(v18 + 16) = v53;
    v18[136] = v19[136];
    v29 = *(v19 + 19);
    v52 = *(v19 + 18);
    *(v18 + 18) = v52;
    *(v18 + 19) = v29;
    v30 = *(v19 + 21);
    *(v18 + 20) = *(v19 + 20);
    *(v18 + 21) = v30;
    v18[176] = v19[176];
    v31 = *(v19 + 24);
    *(v18 + 23) = *(v19 + 23);
    *(v18 + 24) = v31;
    v18[200] = v19[200];
    v32 = *(v19 + 27);
    *(v18 + 26) = *(v19 + 26);
    *(v18 + 27) = v32;
    v34 = *(v19 + 30);
    v33 = *(v19 + 29);
    *(v18 + 28) = *(v19 + 28);
    *(v18 + 29) = v33;
    *(v18 + 30) = v34;
    v56 = *(v19 + 32);

    v35 = v53;
    v36 = v52;

    if (v56)
    {
      *(v18 + 31) = *(v19 + 31);
      *(v18 + 32) = v56;
      *(v18 + 33) = *(v19 + 33);
    }

    else
    {
      *(v18 + 248) = *(v19 + 248);
      *(v18 + 33) = *(v19 + 33);
    }

    v37 = *(v19 + 35);
    *(v18 + 34) = *(v19 + 34);
    *(v18 + 35) = v37;
    v38 = v20[32];
    v39 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(&v19[v38], 1, v39))
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&v18[v38], &v19[v38], *(*(v40 - 8) + 64));
    }

    else
    {
      (*(*(v39 - 8) + 16))(&v18[v38], &v19[v38], v39);
      __swift_storeEnumTagSinglePayload(&v18[v38], 0, 1, v39);
    }

    v13 = v57;
    v18[v20[33]] = v19[v20[33]];
    v18[v20[34]] = v19[v20[34]];
    v41 = v20[35];
    v42 = &v18[v41];
    v43 = &v19[v41];
    v44 = v43[1];
    *v42 = *v43;
    v42[1] = v44;

    __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
    v16 = a3;
  }

  v45 = v16[8];
  v46 = sub_1DD0DD15C();
  (*(*(v46 - 8) + 16))(a1 + v45, v13 + v45, v46);
  v47 = v16[9];
  v48 = sub_1DD0DD10C();
  if (__swift_getEnumTagSinglePayload(v13 + v47, 1, v48))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy((a1 + v47), v13 + v47, *(*(v49 - 8) + 64));
  }

  else
  {
    (*(*(v48 - 8) + 16))(a1 + v47, v13 + v47, v48);
    __swift_storeEnumTagSinglePayload(a1 + v47, 0, 1, v48);
  }

  *(a1 + v16[10]) = *(v13 + v16[10]);
  return a1;
}

uint64_t sub_1DCB45CB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB45D48(a1);
}

uint64_t sub_1DCB45D48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB45D68, 0, 0);
}

id NLContextUpdate.doConvertToServerContextUpdate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v61 - v4;
  v6 = sub_1DD0DD72C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_2();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v61 - v21;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v23 = sub_1DD0DD8FC();
  v24 = __swift_project_value_buffer(v23, qword_1EDE57E00);
  sub_1DCB46478(v1, v22);
  v65 = v24;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v26))
  {
    v27 = OUTLINED_FUNCTION_151();
    v64 = v13;
    v28 = v27;
    v29 = OUTLINED_FUNCTION_83();
    v63 = v8;
    v30 = v29;
    v66 = v29;
    *v28 = 136642819;
    sub_1DCB46478(v22, v19);
    v31 = sub_1DD0DE02C();
    v62 = v5;
    v32 = v1;
    v33 = v14;
    v34 = v6;
    v36 = v35;
    sub_1DCB41F98(v22);
    v37 = sub_1DCB10E9C(v31, v36, &v66);
    v6 = v34;
    v14 = v33;
    v1 = v32;
    v5 = v62;

    *(v28 + 4) = v37;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "NLContextUpdate.doConvertToServerContextUpdate(): input NL context update is %{sensitive}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v8 = v63;
    OUTLINED_FUNCTION_80();
    v13 = v64;
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCB41F98(v22);
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E69C7990]) init];
  v39 = *(v1 + 8);
  if (v39)
  {
    sub_1DCB10E5C(0, &qword_1EDE461F0, 0x1E69C77B8);
    OUTLINED_FUNCTION_75_0();
    v39 = sub_1DD0DE2DC();
  }

  [v38 setApplicationContext_];

  v40 = *(v1 + 16);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7488, &unk_1DD0F8960);
    OUTLINED_FUNCTION_75_0();
    v40 = sub_1DD0DE2DC();
  }

  [v38 setAttachments_];

  sub_1DCB09910(v1 + *(v14 + 128), v5, &unk_1ECCA73E0, &unk_1DD0F8320);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DCB0E9D8(v5, &unk_1ECCA73E0, &unk_1DD0F8320);
LABEL_16:
    v48 = sub_1DD0DD8EC();
    v49 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DCAFC000, v48, v49, "Generating NFCU prompt context data from NLContextUpdate fields", v50, 2u);
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB57994();
    if (v51 >> 60 == 15)
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_1DD0DAEFC();
      v53 = OUTLINED_FUNCTION_131();
      sub_1DCB2C520(v53, v54);
    }

    [v38 setPromptContextProto_];

    goto LABEL_22;
  }

  v41 = (*(v8 + 32))(v13, v5, v6);
  v42 = MEMORY[0x1E12A5D70](v41);
  if (v43 >> 60 == 15)
  {
    (*(v8 + 8))(v13, v6);
    goto LABEL_16;
  }

  v44 = v42;
  v45 = v43;
  v46 = sub_1DD0DD6FC();
  if (v47 >> 60 == 15)
  {
    (*(v8 + 8))(v13, v6);
    sub_1DCB2C520(v44, v45);
    goto LABEL_16;
  }

  v56 = v46;
  v57 = v47;
  v64 = v13;
  v58 = sub_1DD0DD8EC();
  v59 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v59))
  {
    v60 = swift_slowAlloc();
    v63 = v8;
    *v60 = 0;
    _os_log_impl(&dword_1DCAFC000, v58, v59, "Generating NFCU prompt context data from POMMES context", v60, 2u);
    v8 = v63;
    OUTLINED_FUNCTION_80();
  }

  sub_1DCE06D88(v56, v57, v38);
  sub_1DCE06DE0(v44, v45, v38);
  sub_1DCB2C520(v44, v45);
  sub_1DCB2C520(v56, v57);
  (*(v8 + 8))(v64, v6);
LABEL_22:
  [v38 setSiriKitMetrics_];
  [v38 setSystemDialogActOutput_];
  [v38 setResetFlowTaskState_];
  return v38;
}

uint64_t sub_1DCB46478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLContextUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of OutputPublisherAsync.publish(output:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_73_0(a1, a2, a3);
  OUTLINED_FUNCTION_25_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_51(v4);

  return v7(v6);
}

uint64_t sub_1DCB46690()
{
  OUTLINED_FUNCTION_42();
  v1[70] = v0;
  v1[69] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
  OUTLINED_FUNCTION_20_0(v3);
  v1[71] = OUTLINED_FUNCTION_38();
  v4 = sub_1DD0DD10C();
  v1[72] = v4;
  v1[73] = *(v4 - 8);
  v1[74] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for NLContextUpdate(0);
  v1[75] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v1[76] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DD15C();
  v1[77] = v6;
  v1[78] = *(v6 - 8);
  v1[79] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v7);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v8);
  v1[82] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for AceOutput(0);
  v1[83] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v1[84] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB46878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB417A0;

  return sub_1DCB46690();
}

uint64_t sub_1DCB46910()
{
  v55 = v0;
  sub_1DCB17CA0(v0[69], (v0 + 62));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  if (!swift_dynamicCast())
  {
    v13 = v0[82];
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v0[83]);
    sub_1DCB0E9D8(v13, &qword_1ECCA1BD0, &qword_1DD0EB860);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DCAFC000, v15, v16, "Output is not an AceOutput! handle() should have never been called.", v17, 2u);
      MEMORY[0x1E12A8390](v17, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000077;
    *(inited + 56) = 0x80000001DD112700;
    v19 = sub_1DD0DDE9C();
    v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DCF7E450(0xD000000000000016, 0x80000001DD1126E0, 1002, v19);
    swift_willThrow();
    OUTLINED_FUNCTION_3_14();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_16_1();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[70];
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v0[83]);
  sub_1DCB4554C(v3, v2, type metadata accessor for AceOutput);
  __swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56));
  v5 = OUTLINED_FUNCTION_20();
  if ((v6(v5) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_19_5();
  v7 = v0[81];
  v8 = v0[75];
  sub_1DCB09910(v10 + *(v9 + 28), v7, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DCB0E9D8(v0[81], &unk_1ECCA3270, &qword_1DD0E0F70);
LABEL_5:
    v11 = v0[84];

    goto LABEL_14;
  }

  v23 = v0[81];
  v54 = 0;
  v24 = NLContextUpdate.doConvertToAceContextUpdate(options:)(&v54);
  OUTLINED_FUNCTION_2_17();
  sub_1DCB42D14(v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD0E15D0;
  *(v26 + 32) = v24;
  v54 = v26;

  sub_1DCBB920C(v27);
  v12 = v54;
  v11 = v0[84];
LABEL_14:
  v0[85] = v12;
  v28 = v0[83];
  v29 = v0[80];
  v30 = v0[75];
  (*(v0[78] + 16))(v0[79], v11 + *(v28 + 32), v0[77]);
  sub_1DCB09910(v11 + *(v28 + 28), v29, &unk_1ECCA3270, &qword_1DD0E0F70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  v32 = v0[80];
  if (EnumTagSinglePayload != 1)
  {
    sub_1DCB4554C(v32, v0[76], type metadata accessor for NLContextUpdate);
    swift_getObjectType();
    v37 = swift_task_alloc();
    v0[86] = v37;
    *v37 = v0;
    v37[1] = sub_1DCB59CF0;
    OUTLINED_FUNCTION_16_1();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB0E9D8(v32, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_19_5();
  v33 = v0[72];
  v34 = v0[71];
  sub_1DCB09910(v36 + *(v35 + 36), v34, &unk_1ECCAAEC0, &qword_1DD103A40);
  if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
  {
    sub_1DCB0E9D8(v0[71], &unk_1ECCAAEC0, &qword_1DD103A40);
  }

  else
  {
    v40 = OUTLINED_FUNCTION_6_3();
    v41(v40);
    v28 = *(v1 + 56);
    __swift_project_boxed_opaque_existential_1((v1 + 32), v28);
    v42 = OUTLINED_FUNCTION_8_9();
    v43(v42);
    v44 = OUTLINED_FUNCTION_20();
    v45(v44);
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_26_1();
  if (v28)
  {
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_10_11();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_23_5();
    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_14_9(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_1_10(v47);
    OUTLINED_FUNCTION_16_1();

    __asm { BRAA            X4, X16 }
  }

  v51 = swift_task_alloc();
  v0[88] = v51;
  *v51 = v0;
  OUTLINED_FUNCTION_4_6(v51);
  OUTLINED_FUNCTION_16_1();

  return AceServiceInvokerAsync.submitAllSerial(_:executionSource:)();
}

_BYTE *initializeBufferWithCopyOfBuffer for NLContextUpdate(_BYTE *a1, uint64_t *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  v5 = a2[2];
  *(a1 + 1) = a2[1];
  *(a1 + 2) = v5;
  v6 = a2[4];
  *(a1 + 3) = a2[3];
  *(a1 + 4) = v6;
  v7 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v7;
  v8 = a2[8];
  v9 = a2[7];
  a1[72] = *(a2 + 72);
  *(a1 + 7) = v9;
  *(a1 + 8) = v8;
  v10 = a2[11];
  *(a1 + 10) = a2[10];
  *(a1 + 11) = v10;
  v11 = a2[13];
  *(a1 + 12) = a2[12];
  *(a1 + 13) = v11;
  v12 = a2[15];
  *(a1 + 14) = a2[14];
  *(a1 + 15) = v12;
  v31 = a2[16];
  *(a1 + 16) = v31;
  a1[136] = *(a2 + 136);
  v13 = a2[19];
  v30 = a2[18];
  *(a1 + 18) = v30;
  *(a1 + 19) = v13;
  v14 = a2[21];
  *(a1 + 20) = a2[20];
  *(a1 + 21) = v14;
  a1[176] = *(a2 + 176);
  v15 = a2[24];
  *(a1 + 23) = a2[23];
  *(a1 + 24) = v15;
  a1[200] = *(a2 + 200);
  v16 = a2[27];
  *(a1 + 26) = a2[26];
  *(a1 + 27) = v16;
  v17 = a2[29];
  v32 = a2[30];
  *(a1 + 28) = a2[28];
  *(a1 + 29) = v17;
  *(a1 + 30) = v32;
  v33 = a2[32];

  v18 = v31;
  v19 = v30;

  if (v33)
  {
    *(a1 + 31) = a2[31];
    *(a1 + 32) = v33;
    *(a1 + 33) = a2[33];
  }

  else
  {
    *(a1 + 248) = *(a2 + 31);
    *(a1 + 33) = a2[33];
  }

  v20 = a2[35];
  *(a1 + 34) = a2[34];
  *(a1 + 35) = v20;
  v21 = a3[32];
  v22 = sub_1DD0DD72C();

  if (__swift_getEnumTagSinglePayload(a2 + v21, 1, v22))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy(&a1[v21], a2 + v21, *(*(v23 - 8) + 64));
  }

  else
  {
    (*(*(v22 - 8) + 16))(&a1[v21], a2 + v21, v22);
    __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
  }

  v24 = a3[34];
  a1[a3[33]] = *(a2 + a3[33]);
  a1[v24] = *(a2 + v24);
  v25 = a3[35];
  v26 = &a1[v25];
  v27 = (a2 + v25);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;

  return a1;
}

uint64_t sub_1DCB473BC()
{
  OUTLINED_FUNCTION_42();
  v1 = (*(v0[4] + 16))(v0[2], v0[3]);
  v2 = v0[1];
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1DCB47434()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_129();

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_134_2()
{
}

uint64_t sub_1DCB47578()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_129();

  return v4(v3);
}

uint64_t sub_1DCB4765C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB4776C()
{
  OUTLINED_FUNCTION_42();
  v1 = (*(v0 + 16))(*(v0 + 56));
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 32) + 16))();
  }

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_6@<X0>(uint64_t a1@<X8>)
{
  v3[148] = v5;
  v3[149] = v1;
  v3[145] = v2;
  v3[153] = v6;
  v3[154] = v4;
  v3[150] = a1;

  return type metadata accessor for SiriKitAuthoredFlow();
}

id OUTLINED_FUNCTION_28_8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_28_12()
{
}

void OUTLINED_FUNCTION_28_13(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

__n128 OUTLINED_FUNCTION_28_15()
{
  *(v0 + v2[6]) = *(v1 + v2[6]);
  v3 = v2[7];
  v4 = v0 + v3;
  v5 = v1 + v3;
  result = *v5;
  v7 = *(v5 + 16);
  *v4 = *v5;
  *(v4 + 16) = v7;
  *(v4 + 32) = *(v5 + 32);
  *(v0 + v2[8]) = *(v1 + v2[8]);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_18(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v3 + 32);
  *(v3 + 72) = v2;
  *(v3 + 80) = v1;
  return result;
}

void OUTLINED_FUNCTION_28_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_28_22(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_28_23(uint64_t a1)
{

  return sub_1DD0DEC3C();
}

uint64_t OUTLINED_FUNCTION_28_26(uint64_t a1)
{
  v4 = v2 + *(a1 + 20);

  return sub_1DCC333DC(v1, v4);
}

uint64_t OUTLINED_FUNCTION_28_29()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 200) = 0;
  *(v0 - 208) = 0;
  return *(v0 - 264);
}

id OUTLINED_FUNCTION_28_32(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_28_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF24C();
}

void *OUTLINED_FUNCTION_28_36(void *result)
{
  result[2] = v2;
  result[3] = v1;
  v4 = *(v3 - 264);
  result[4] = *(v3 - 256);
  result[5] = v4;
  return result;
}

void *OUTLINED_FUNCTION_28_39(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

void *OUTLINED_FUNCTION_28_42(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __src, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return memcpy(va, &__src, 0x48uLL);
}

uint64_t sub_1DCB47C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1DCFAAD08;
  }

  else
  {
    v7 = sub_1DCB47D18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCB47D18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_11_67();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t storeEnumTagSinglePayload for Parse.DirectInvocation(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1DCB47DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_70();
  v29 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_10_2();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &a9 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v41);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &a9 - v44;
  v46 = [objc_allocWithZone(*v26) init];
  if (v46)
  {
    v47 = v46;
    v48 = [objc_allocWithZone(MEMORY[0x1E69CE9A8]) init];
    if (v48)
    {
      v49 = v48;
      [v48 *v24];
      sub_1DCB099BC(v28, v45, &qword_1ECCA2618, &unk_1DD0E5C50);
      if (__swift_getEnumTagSinglePayload(v45, 1, v29) == 1)
      {
        v50 = 0;
      }

      else
      {
        (*(v31 + 32))(v40, v45, v29);
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        (*(v31 + 16))(v36, v40, v29);
        v50 = sub_1DCB0DEDC(v36);
        (*(v31 + 8))(v40, v29);
      }

      [v49 setHypothesisId_];

      [v20 setExecutionCommitContext_];
      v57 = v20;
      goto LABEL_13;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v51 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v51, qword_1EDE57DA0);
  v52 = sub_1DD0DD8EC();
  v53 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v53))
  {
    v54 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v54);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v55, v56, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

void sub_1DCB48074(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DCB0D344();
  if (v7)
  {
    v8 = v7;
    sub_1DCB48144(v7, a1 & 1, a5);
  }
}

void sub_1DCB480D0(char a1)
{
  v3 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_20_0(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  sub_1DCB48074(a1, v5, v6, v7, v8);
}

void *sub_1DCB48144(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69CEA00]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E69CE9F8]) init];
    if (v13)
    {
      v14 = v13;
      [v12 setHasTopicChanged_];
      [v14 setEnded_];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v7 + 16))(v10, a3, v6);
      v15 = sub_1DCB0DEDC(v10);
      [v14 setHypothesisId_];

      [a1 setFlowPluginInputContext_];
      v16 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57DA0);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "[ConversationSELFHelper] Failed to create context SELF objects", v20, 2u);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_1DCB483A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v3 + 168) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCB4850C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCB4858C()
{
  sub_1DCB0D344();
  if (v1)
  {
    v2 = v1;
    sub_1DCB52F18();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v0[17] = v4;
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v12 = v0[9];
  v8 = v0[4];
  v9 = v0[3];
  (*(v7 + 16))(v5, v0[5], v6);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v0[18] = v11;
  *(v11 + 2) = v12;
  *(v11 + 3) = v9;
  *(v11 + 4) = v8;
  (*(v7 + 32))(&v11[v10], v5, v6);
  if (v4)
  {
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB487FC()
{
  v1 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_1DCB488BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (sub_1DCB48998(a1, a2, a3, a4))
  {
    OUTLINED_FUNCTION_27_14();
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    v24 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v14);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] buildEagerExecutionContextStartedMessage failed to be emitted", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void *sub_1DCB48998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DCB48A48(v6, a3, a4);

    return v8;
  }

  else
  {

    return 0;
  }
}

void *sub_1DCB48A48(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEA30]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x1E69CEA48]) init];
    if (v8)
    {
      v9 = v8;
      [v8 setPlugin_];
      [v7 setStartedOrChanged_];
      [a1 setIntentEagerExecutionContext_];

      v10 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57DA0);
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DCAFC000, v12, v13, "[ConversationSELFHelper] Failed to create context SELF objects", v14, 2u);
    MEMORY[0x1E12A8390](v14, -1, -1);
  }

  return 0;
}

void sub_1DCB48BD4()
{
  sub_1DCB0D344();
  if (v1 && (v2 = v1, v21 = sub_1DCB48CC8(v1), v2, v21))
  {
    (*(v0 + 16))();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v3 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v3, qword_1EDE57DA0);
    v22 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v4, v5, v6, v7, v8, v9, v10, v11, v19, v22))
    {
      v12 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v12);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v13, v14, "[ConversationSELFHelper] buildEagerExecutionContextEndedMessage failed to be emitted", v15, v16, v17, v18, v20, v21);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void *sub_1DCB48CC8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CEA30]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69CEA38]) init];
    if (v4)
    {
      v5 = v4;
      [v4 setExists_];
      [v3 setEnded_];
      [a1 setIntentEagerExecutionContext_];

      v6 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57DA0);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "[ConversationSELFHelper] Failed to create context SELF objects", v10, 2u);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  return 0;
}

void sub_1DCB48E34()
{
  sub_1DCB48EEC();
  if (v0)
  {
    OUTLINED_FUNCTION_27_14();
    v1();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57DA0);
    v21 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v3, v4, v5, v6, v7, v8, v9, v10, v18, v21))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v11);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v12, v13, "[ConversationSELFHelper] buildFinalExecutionContextStartedMessage failed to be emitted", v14, v15, v16, v17, v19, v20);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCB48EEC()
{
  OUTLINED_FUNCTION_50();
  v15 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  sub_1DCB099BC(v6, &v14 - v10, &qword_1ECCA2618, &unk_1DD0E5C50);

  sub_1DCB0D344();
  if (v12)
  {
    v13 = v12;
    sub_1DCB49054(v12, v15, v4, v2, v11);
  }

  else
  {
  }

  sub_1DCB0E9D8(v11, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_49();
}

id sub_1DCB49054(void *a1, unint64_t a2, __objc2_prot **a3, unint64_t a4, uint64_t a5)
{
  v50 = a5;
  v9 = sub_1DD0DB04C();
  v49 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v46 - v19;
  v21 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v22 = [objc_allocWithZone(MEMORY[0x1E69CEA50]) init];
  if (v22)
  {
    v23 = v22;
    v48 = v13;
    v24 = [objc_allocWithZone(MEMORY[0x1E69CEA68]) init];
    if (v24)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(a2))
      {
        v13 = v24;
        v47 = a1;
        [v24 setStackDepth_];
        v21 = a3;
        [v13 setPlugin_];
        if (qword_1EDE4D8C8 == -1)
        {
LABEL_6:
          v25 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v25, qword_1EDE57DA0);

          v26 = v13;
          v27 = sub_1DD0DD8EC();
          v28 = sub_1DD0DE6CC();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v46 = v16;
            v30 = v29;
            v31 = swift_slowAlloc();
            v51 = v31;
            *v30 = 136315394;
            *(v30 + 4) = sub_1DCB10E9C(v21, a4, &v51);
            *(v30 + 12) = 2080;
            [v26 plugin];
            v32 = sub_1DD0DE7BC();
            v34 = sub_1DCB10E9C(v32, v33, &v51);

            *(v30 + 14) = v34;
            _os_log_impl(&dword_1DCAFC000, v27, v28, "[ConversationSELFHelper] For plugin %s choosing plugin %s", v30, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A8390](v31, -1, -1);
            v35 = v30;
            v16 = v46;
            MEMORY[0x1E12A8390](v35, -1, -1);
          }

          v36 = v48;
          [v23 setStartedOrChanged_];
          sub_1DCB099BC(v50, v20, &qword_1ECCA2618, &unk_1DD0E5C50);
          if (__swift_getEnumTagSinglePayload(v20, 1, v9) == 1)
          {
            v37 = 0;
          }

          else
          {
            v43 = v49;
            (*(v49 + 32))(v16, v20, v9);
            sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
            (*(v43 + 16))(v36, v16, v9);
            v37 = sub_1DCB0DEDC(v36);
            (*(v43 + 8))(v16, v9);
          }

          [v23 setHypothesisId_];

          v42 = v47;
          [v47 setIntentFinalExecutionContext_];

          v44 = v42;
          return v42;
        }

LABEL_21:
        swift_once();
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v38 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v38, qword_1EDE57DA0);
  v39 = sub_1DD0DD8EC();
  v40 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DCAFC000, v39, v40, "[ConversationSELFHelper] Failed to create context SELF objects", v41, 2u);
    MEMORY[0x1E12A8390](v41, -1, -1);
  }

  return 0;
}

void sub_1DCB4955C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEE0, &qword_1DD10D518);
  swift_getKeyPath();
  OUTLINED_FUNCTION_80_10();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v1, v2, v3, &protocol conformance descriptor for UserIdentityProvider);
  OUTLINED_FUNCTION_68();
  sub_1DD0DCEDC();
}

void sub_1DCB4967C()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  type metadata accessor for IdentifiedUser(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1DCB49618();
}

uint64_t destroy for IdentifiedUser(id *a1, int *a2)
{
  v4 = a2[5];
  v5 = sub_1DD0DB0FC();
  if (!__swift_getEnumTagSinglePayload(a1 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  v6 = a2[14];
  v7 = sub_1DD0DD17C();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t IdentifiedUser.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for IdentifiedUser(0);
  v3 = v2[5];
  v4 = sub_1DD0DB0FC();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_27_42(v2[6]);
  v5 = v2[7];
  if (qword_1EDE49A88 != -1)
  {
    OUTLINED_FUNCTION_6_89(&qword_1EDE49A88);
  }

  v6 = (a1 + v5);
  v7 = *algn_1EDE49A98;
  v8 = qword_1EDE49AA0;
  *v6 = qword_1EDE49A90;
  v6[1] = v7;
  v6[2] = v8;
  OUTLINED_FUNCTION_27_42(v2[8]);
  *(a1 + v2[9]) = 0;
  OUTLINED_FUNCTION_27_42(v2[10]);
  OUTLINED_FUNCTION_27_42(v2[11]);
  OUTLINED_FUNCTION_27_42(v2[12]);
  *(a1 + v2[13]) = 0;
  v9 = v2[14];
  v10 = *MEMORY[0x1E69D06E8];
  sub_1DD0DD17C();
  OUTLINED_FUNCTION_2();
  (*(v11 + 104))(a1 + v9, v10);
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  v12 = a1 + v2[17];
  *v12 = 0;
  v12[4] = 1;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 0;
  v13 = a1 + v2[20];
  *v13 = 0;
  v13[4] = 1;
}

uint64_t sub_1DCB49DC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCB49E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_1DCB41F3C(v0 + 96, v0 + 256);
}

uint64_t OUTLINED_FUNCTION_23_8()
{
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_23_17(uint64_t a1)
{

  return sub_1DD0DEC3C();
}

uint64_t OUTLINED_FUNCTION_23_20(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_23_26()
{

  return memcpy((v0 + 240), v1, 0x48uLL);
}

double OUTLINED_FUNCTION_23_28()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_23_30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[2] = v2;

  sub_1DD0DCF8C();
}

double OUTLINED_FUNCTION_23_36()
{
  v2 = *(v0 + 344);

  return static ExecuteResponse.ongoing(requireInput:)(1, v2);
}

void OUTLINED_FUNCTION_23_39(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[13] = a1;
  v4[14] = a3;
  v4[10] = v3;
  __swift_project_boxed_opaque_existential_1(v4 + 10, a2);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_23_40()
{
}

void *OUTLINED_FUNCTION_198()
{

  return CommandFailure.init(errorCode:reason:)(-1, v0, v1);
}

void *OUTLINED_FUNCTION_198_0(void *result)
{
  v3 = *(v2 - 208);
  v4 = *(v2 - 200);
  result[2] = *(v2 - 176);
  result[3] = v3;
  v6 = *(v2 - 192);
  v5 = *(v2 - 184);
  result[4] = v4;
  result[5] = v6;
  result[6] = v5;
  result[7] = v1;
  return result;
}

void SiriEnvironment.userIdentity.getter()
{
  type metadata accessor for UserIdentityProvider();
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v0, v1, v2, &protocol conformance descriptor for UserIdentityProvider);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCB4A3FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DCB4A468()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

void sub_1DCB4A560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for Parse(0);
    OUTLINED_FUNCTION_11_1();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_1DCB4A6EC(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1DD0DD89C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v8 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if ((sub_1DD0DE92C() & 1) == 0)
  {

    (*(v10 + 8))(v15, v8);
    return;
  }

  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (HIDWORD(a2))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_76();
  if (!v18)
  {
    if (v17 >> 16 <= 0x10)
    {
LABEL_8:
      sub_1DD0DCF8C();
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Parse.DirectInvocation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t OUTLINED_FUNCTION_37_7()
{
  *v1 = v0;
  *(v1 + 8) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t a1)
{
  v2[143] = a1;
  v2[144] = v3;
  v2[140] = v1;

  return __swift_mutable_project_boxed_opaque_existential_1((v2 + 140), a1);
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x1EEDC6A10](v4, a2, a2, a4, a4);
}

void OUTLINED_FUNCTION_37_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t *OUTLINED_FUNCTION_37_17@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 344);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v4);
}

uint64_t OUTLINED_FUNCTION_37_25()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_26(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_37_28()
{
  result = *v1;
  *v0 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_30(uint64_t a1, void *a2)
{
  *a2 = v3;
  **(v2 + 120) = a1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_37_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_37_33()
{

  JUMPOUT(0x1E12A6780);
}

void *OUTLINED_FUNCTION_37_36(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 192) = a1;
  a1[2] = a17;
  a1[3] = a18;
  a1[4] = a15;
  a1[5] = a16;
  v20 = a1 + 6;

  return memcpy(v20, (v18 + 112), 0x50uLL);
}

void OUTLINED_FUNCTION_37_37()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 160));
}

void OUTLINED_FUNCTION_37_38(__n128 a1)
{
  v4[2] = a1;
  v4[3].n128_u64[0] = v3;
  v4[3].n128_u8[8] = v1;
  v4[4].n128_u64[0] = v2;
}

void OUTLINED_FUNCTION_37_39(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u8[8] = v2;
  v4[4].n128_u64[0] = v3;
}

uint64_t sub_1DCB4AD3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t destroy for PrepareResponse(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return sub_1DD0DD10C();
}

id OUTLINED_FUNCTION_74_13(uint64_t a1, uint64_t a2)
{

  return sub_1DCB89BB0(a1, a2, 0);
}

uint64_t OUTLINED_FUNCTION_74_17()
{
}

uint64_t OUTLINED_FUNCTION_74_19()
{
}

double OUTLINED_FUNCTION_74_20()
{

  return sub_1DCB90D40();
}

void OUTLINED_FUNCTION_102_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_1DCEB2C84(a1, a2, a3, a4, a5, a6, a7, a8, v14, v12, v13, a12);
}

unint64_t OUTLINED_FUNCTION_102_4(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_102_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 936));

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 976));
}

void OUTLINED_FUNCTION_57_3()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  *(v1 - 448) = v0;
}

uint64_t OUTLINED_FUNCTION_57_6(uint64_t a1, uint64_t a2)
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_57_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 88) = &a9 - v9;

  return sub_1DD0DE97C();
}

BOOL OUTLINED_FUNCTION_57_9()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_11()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 16), *(*(v0 + 72) + 40));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_57_12()
{
  v4 = *(v2 - 216);
  v3 = *(v2 - 208);
  *v0 = *(v2 - 176);
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
  *(v0 + 24) = *(v2 - 196);
  *(v0 + 32) = *(v2 - 192);
  *(v0 + 40) = *(v2 - 180);
  return v1;
}

void OUTLINED_FUNCTION_57_13(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

BOOL OUTLINED_FUNCTION_57_17(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_57_20()
{
  *(v0 + 144) = v1;
  *(v0 + 120) = v2;
  sub_1DCB20B30((v0 + 120), (v0 + 152));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_22(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_6()
{
  v1 = *(v0 + 80);
  *v1 = 0;
  *(v1 + 8) = 512;
  return v1;
}

void OUTLINED_FUNCTION_55_7()
{

  sub_1DCC1EF90(v0, 4);
}

uint64_t OUTLINED_FUNCTION_55_9()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_55_11()
{
  v3 = *(v1 - 464);

  return sub_1DCB29E58(v0, v3);
}

uint64_t OUTLINED_FUNCTION_55_12()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t a1)
{
  *(v2 + 72) = a1;
}

id OUTLINED_FUNCTION_55_19()
{
  v2 = *v0;

  return v2;
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t result)
{
  *(v3 + 64) = result;
  *(result + 16) = v2;
  *(result + 24) = v7;
  *(result + 32) = v5 & 1;
  *(result + 33) = HIBYTE(v5) & 1;
  *(result + 40) = v6;
  *(result + 48) = v4 & 1;
  *(result + 49) = BYTE1(v4) & 1;
  *(result + 50) = BYTE2(v4) & 1;
  *(result + 56) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a14 = 0;
  a18 = 4;

  sub_1DCC88D00(&a12);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_17_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_17_27@<D0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2 * a2;
  *(a1 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_17_33(uint64_t a1)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_36()
{
  v3 = *(v1 + 120);
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_17_38(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_39()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

void OUTLINED_FUNCTION_17_42()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_17_43()
{
}

uint64_t OUTLINED_FUNCTION_17_51(uint64_t a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  sub_1DCB20B30((v2 + 56), (v2 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_17_52()
{
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 29;

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_17_53(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_54()
{

  return sub_1DCCE6C28(v0 + 144);
}

uint64_t sub_1DCB4BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23 - v10;
  sub_1DCB17C3C(a1, &v24, &qword_1ECCA1C08, &qword_1DD0E16D0);
  if (!v25)
  {
    sub_1DCB185D0(&v24, &qword_1ECCA1C08, &qword_1DD0E16D0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    v14 = __swift_project_value_buffer(v13, qword_1EDE57E00);
    v15 = *(v13 - 8);
    (*(v15 + 16))(v11, v14, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    sub_1DCB17C3C(v11, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
    {
      sub_1DCB185D0(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v24 = v26;
        *v18 = 136315650;
        v19 = sub_1DD0DEC3C();
        v21 = sub_1DCB10E9C(v19, v20, &v24);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 870;
        *(v18 + 22) = 2080;
        *(v18 + 24) = sub_1DCB10E9C(0xD0000000000000D5, 0x80000001DD112DC0, &v24);
        _os_log_impl(&dword_1DCAFC000, v16, v17, "FatalError at %s:%lu - %s", v18, 0x20u);
        v22 = v26;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v22, -1, -1);
        MEMORY[0x1E12A8390](v18, -1, -1);
      }

      (*(v15 + 8))(v8, v13);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000D5, 0x80000001DD112DC0);
  }

  return sub_1DCAFF9E8(&v24, a2);
}

uint64_t Flow.eraseToAnyFlow()()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  type metadata accessor for AnyFlow();
  (*(v4 + 16))(v2, v0, v1);
  OUTLINED_FUNCTION_116();
  return sub_1DCB4BF14();
}

uint64_t sub_1DCB4BF14()
{
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_57_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_116();
  sub_1DCAFF5AC(v1, v2, v3);
  return v0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_1();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_1DCB4C0D4(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(a2, v3, v4);
}

unint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_1DCBB5C20();
}

uint64_t OUTLINED_FUNCTION_39_3()
{
  *(v0 + 120) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;

  return sub_1DCB6C5E8(v1 - 128, v0 + 88);
}

uint64_t OUTLINED_FUNCTION_148()
{
}

uint64_t OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_39_8()
{

  JUMPOUT(0x1E12A6960);
}

uint64_t OUTLINED_FUNCTION_39_10()
{
}

uint64_t OUTLINED_FUNCTION_39_12(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_39_13()
{

  return sub_1DD0DBDEC();
}

uint64_t OUTLINED_FUNCTION_39_15()
{

  return sub_1DD0DB3EC();
}

void OUTLINED_FUNCTION_39_17()
{
}

uint64_t OUTLINED_FUNCTION_39_20(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_39_22()
{
  v2 = *(v0 + 624);
}

void *OUTLINED_FUNCTION_39_23@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 192), (a1 + 192), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_39_24()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_39_33()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 184));
}

void OUTLINED_FUNCTION_39_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1DCC60044();
}

uint64_t OUTLINED_FUNCTION_92_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCB17CA0(v2, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_92_6()
{
}

__n128 OUTLINED_FUNCTION_92_9()
{
  v1 = *(v0 + 80);
  result = *(v1 + 25);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_11()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0[5]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0[6]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0[7]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0[11]);

  return sub_1DCB84C58(v1 - 208);
}

uint64_t OUTLINED_FUNCTION_92_12(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_92_13()
{
  sub_1DCB51C9C(v0);
}

uint64_t OUTLINED_FUNCTION_92_14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_92_15(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_92_16(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_25_7(uint64_t a1@<X8>)
{
  *(v2 + 712) = a1;
  *(v2 + 680) = v3;
  *(v1 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return sub_1DCC65B64(v0);
}

unint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DCB10E9C(v4, v5, va);
}

void OUTLINED_FUNCTION_25_11(uint64_t a1@<X8>)
{
  v6 = *(*(v3 + a1) + 17);

  ExecuteOnRemotePayload.makeExecuteOnRemoteRequest(targetDeviceId:currentRequest:device:shouldSendSpeechPackage:)(v2, v1, v4, (v3 + 32), v6);
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  v3 = *(v1 - 312);

  return sub_1DCD58BCC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_25_16()
{
  v3 = *(v1 - 96);

  return sub_1DCB2479C(v0, v3, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_25_26(_WORD *a1)
{
  *a1 = 0;

  return sub_1DD0DD83C();
}

uint64_t OUTLINED_FUNCTION_25_27()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_29(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_25_34()
{
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  *(v0 + v1[9]) = 256;
  *(v0 + v1[11]) = 0;

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_25_35(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = v1;
  sub_1DCB20B30((v2 + 56), (v2 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 OUTLINED_FUNCTION_25_39()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  v0[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_40@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_25_43()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a2, ...)
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1DD0DEDFC();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{
  v2[108] = a1;
  v2[109] = v3;
  v2[105] = v1;

  return __swift_mutable_project_boxed_opaque_existential_1((v2 + 105), a1);
}

uint64_t OUTLINED_FUNCTION_36_15()
{

  return sub_1DD0DD8FC();
}

__n128 OUTLINED_FUNCTION_36_22(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, __int16 a10, unsigned __int8 a11)
{
  *(v13 + 80) = a1;
  result = *(v13 + 40);
  a1[1] = result;
  a1[2].n128_u64[0] = v19;
  a1[2].n128_u64[1] = v11;
  a1[3].n128_u64[0] = v18;
  a1[3].n128_u8[8] = v17;
  a1[3].n128_u8[9] = v16;
  a1[4].n128_u64[0] = v15;
  a1[4].n128_u8[8] = v14;
  a1[4].n128_u8[9] = a9;
  a1[4].n128_u8[10] = a11;
  a1[5].n128_u64[0] = v12;
  return result;
}

void *OUTLINED_FUNCTION_36_24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCE1A10C(v4, a2, a3, a4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_36_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DEFBC();
}

void OUTLINED_FUNCTION_36_26()
{
  v2 = *(v0 + 448);
}

uint64_t OUTLINED_FUNCTION_36_28()
{

  return sub_1DD0DF22C();
}

void *OUTLINED_FUNCTION_36_30()
{
  v2 = (*(v0 + 448) + 16);

  return memcpy((v0 + 16), v2, 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_36_33@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[131] = a2;
  v2[130] = result;
  v2[127] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_37(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v4, v5 + 56, a3, a4);
}

__n128 OUTLINED_FUNCTION_36_39()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  result = *(v4 - 128);
  v6 = *(v4 - 112);
  *(v0 + 40) = result;
  *(v0 + 56) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_40(uint64_t a1)
{

  return sub_1DD0DDA9C();
}

uint64_t OUTLINED_FUNCTION_36_41(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 80) = v2;
  *(v3 + 64) = a2;
  sub_1DCB20B30((v3 + 56), (v3 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_36_42@<D0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = 0;
  *v2 = v1;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 3;
  return result;
}

void *OUTLINED_FUNCTION_38_5()
{

  return memcpy((v1 - 160), v0, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t a1)
{

  return sub_1DD0DE8EC();
}

__n128 OUTLINED_FUNCTION_38_8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = result;
  *(v0 + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCC7243C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return sub_1DD0DB04C();
}

uint64_t OUTLINED_FUNCTION_38_17(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = result;
  *(v6 + 56) = a2;
  v7 = *a3;
  *(v6 + 80) = v5;
  *(v6 + 88) = v7;
  *(v6 + 43) = *(a3 + 8);
  *(v6 + 44) = *(a3 + 9);
  *(v6 + 96) = a3[2];
  *(v6 + 45) = *(a3 + 24);
  *(v6 + 46) = *(a3 + 25);
  *(v6 + 47) = *(a3 + 26);
  return result;
}

void OUTLINED_FUNCTION_38_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  PatternFlowProviding.makeResponseFlowWithListPrompt<A>(items:paginationParameters:strategy:)();
}

uint64_t OUTLINED_FUNCTION_38_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_38_22()
{
  v2 = *(v0 + 376);
}

void OUTLINED_FUNCTION_38_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_38_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_38_30()
{
}

void OUTLINED_FUNCTION_38_31()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 208));
}

void OUTLINED_FUNCTION_38_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1DCC60044();
}

__n128 OUTLINED_FUNCTION_38_33(__n128 *a1)
{
  v3[6].n128_u64[1] = a1;
  result = v3[5];
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u64[0] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_36()
{
}

void sub_1DCB4D2A4()
{
  sub_1DCB0DF6C(v0 + 32, v11);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD8, &qword_1DD0EDF50);
  if (OUTLINED_FUNCTION_86_5(v1, v2, v3, v1, v4, v5, v6, v7, v8, *(&v8 + 1), v9, *(&v9 + 1), v10, v11[0]))
  {
    sub_1DCAFF9E8(&v8, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    OUTLINED_FUNCTION_20();
    sub_1DD0DCADC();
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  sub_1DCB0E9D8(&v8, &qword_1ECCA4AE0, &qword_1DD0EDF58);
  if (*(v0 + 144))
  {
    sub_1DD0DCF8C();
  }

  sub_1DD0DCA6C();
}

uint64_t OUTLINED_FUNCTION_82_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 104) = a1;

  return type metadata accessor for WindowingAction(255, a9, a3, a4);
}

void OUTLINED_FUNCTION_82_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

__n128 OUTLINED_FUNCTION_82_5(uint64_t a1)
{
  *(v2 + 64) = a1;
  result = *(v2 + 32);
  v4 = *(v2 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_10()
{
}

uint64_t OUTLINED_FUNCTION_82_11()
{

  return swift_task_alloc();
}

uint64_t sub_1DCB4D4A0(uint64_t a1)
{
  sub_1DCB0DF6C(v1 + 32, v14);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD8, &qword_1DD0EDF50);
  if (OUTLINED_FUNCTION_86_5(v3, v4, v5, v3, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v14[0]))
  {
    sub_1DCAFF9E8(&v11, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_20();
    sub_1DD0DCAEC();
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1DCB0E9D8(&v11, &qword_1ECCA4AE0, &qword_1DD0EDF58);
  *(v1 + 144) = a1;
}

uint64_t sub_1DCB4D598()
{
  v1 = sub_1DCB0DF6C(v0 + 32, v11);
  v9 = OUTLINED_FUNCTION_66_3(v1, v2, v3, v4, v5, v6, v7, v8, v11[0]);
  return OUTLINED_FUNCTION_87_4(v9);
}

void static SiriKitEventSender.current.getter(uint64_t *a1@<X8>)
{
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57DF8;
  a1[3] = type metadata accessor for RefreshableSiriKitEventSending();
  a1[4] = &off_1F5873940;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB4D6B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70(v2 + 16, a2);
  *(v2 + 16) = a1;
}

uint64_t SiriKitEvent.SiriKitOverridesEventBuilder.__deallocating_deinit()
{
  SiriKitEvent.SiriKitOverridesEventBuilder.deinit();
  OUTLINED_FUNCTION_136();

  return swift_deallocClassInstance();
}

uint64_t SiriKitEvent.SiriKitOverridesEventBuilder.deinit()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_163()
{
}

void OUTLINED_FUNCTION_163_0()
{

  JUMPOUT(0x1E12A4D20);
}

uint64_t sub_1DCB4D7CC()
{
  type metadata accessor for SiriKitEvent.SiriKitOverridesEventBuilder();
  OUTLINED_FUNCTION_136();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_156((v0 + 6), v8);
  v3 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  OUTLINED_FUNCTION_156((v0 + 14), v7);
  v5 = v0[14];
  v4 = v0[15];
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;

  return v1;
}

uint64_t SiriKitEvent.SiriKitEventBuilder.deinit()
{

  return v0;
}

uint64_t sub_1DCB4D8F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_75_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_103_1()
{

  JUMPOUT(0x1E12A72C0);
}

void OUTLINED_FUNCTION_103_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_103_10()
{

  return sub_1DD0DBB3C();
}

uint64_t Input.inputOrAlternativesInterpretableAsUniversalAction.getter()
{
  v2 = v0;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_7_50();
  v6 = type metadata accessor for USOParse(v5);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v9 = type metadata accessor for Input(0);
  sub_1DCB29E58(v0 + *(v9 + 20), v0);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    OUTLINED_FUNCTION_4_42();
    sub_1DCB283D8(v0, v13);
    goto LABEL_5;
  }

  sub_1DCC6D300(v0, v1);
  v10 = sub_1DD0DB49C();
  OUTLINED_FUNCTION_0_22();
  sub_1DCB283D8(v1, v11);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    v12 = Array<A>.interpretableAsUniversalAction.getter(*(v2 + *(v9 + 24)));
    return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t Array<A>.interpretableAsUniversalAction.getter(uint64_t a1)
{
  v3 = type metadata accessor for USOParse(0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v6 = OUTLINED_FUNCTION_7_50();
  type metadata accessor for Parse(v6);
  OUTLINED_FUNCTION_4_16();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_8_60();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_10_56();
    v18 = a1 + v17;
    v20 = *(v19 + 72);
    do
    {
      sub_1DCB29E58(v18, v15);
      sub_1DCB29E58(v15, v11);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1DCC6D300(v11, v1);
        v21 = sub_1DD0DB49C();
        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v1, v22);
        OUTLINED_FUNCTION_4_42();
        sub_1DCB283D8(v15, v23);
        if (v21)
        {
          return 1;
        }
      }

      else
      {
        sub_1DCB283D8(v15, type metadata accessor for Parse);
        sub_1DCB283D8(v11, type metadata accessor for Parse);
      }

      v18 += v20;
      --v16;
    }

    while (v16);
  }

  return 0;
}

uint64_t sub_1DCB4DCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D0, &qword_1DD105B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCB4DD44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB514AC(a1, v2);
  OUTLINED_FUNCTION_1_124(qword_1EDE4B5E8);
  sub_1DD0DCF8C();
}

uint64_t dispatch thunk of AnyFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v6 = (*(v0 + 208) + **(v0 + 208));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return v6(v4);
}

uint64_t sub_1DCB4DF50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB4DF64()
{
  OUTLINED_FUNCTION_42();
  v6 = (*(*(v0 + 24) + 96) + **(*(v0 + 24) + 96));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_76_6(v1);
  *v2 = v3;
  v2[1] = sub_1DCB3F98C;
  v4 = *(v0 + 16);

  return v6(v4);
}

uint64_t RefreshableDeviceState.isCarPlay.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isPhone.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

void static FlowSearchResult.flow(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for FlowSearchResult(0) + 24);
  v5 = type metadata accessor for NamedParseTransformer(0);
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  *a2 = a1;
  a2[4] = type metadata accessor for FlowToActingFlowAdapter(0);
  a2[5] = &off_1EECFDA20;
  swift_allocObject();
  v6 = swift_retain_n();
  sub_1DCB4E3B8(v6);
}

uint64_t type metadata accessor for FlowSearchResult(uint64_t a1)
{
  result = qword_1EDE4B158;
  if (!qword_1EDE4B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NamedParseTransformer(uint64_t a1)
{
  result = qword_1EDE483B8;
  if (!qword_1EDE483B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB4E2DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_1DCB4E3B8(uint64_t a1)
{
  *(v1 + 16) = 0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

double sub_1DCB4E5AC@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCB0DF6C(v3 + 32, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void static Device.current.getter(uint64_t *a1@<X8>)
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v2 = qword_1EDE46630;
  sub_1DCB4E718(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  a1[3] = type metadata accessor for RefreshableDeviceState();
  a1[4] = &protocol witness table for RefreshableDeviceState;
  *a1 = v2;
  sub_1DD0DCF8C();
}

void sub_1DCB4E718(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 14);
  sub_1DCB4E778(&v3[4], a1);

  os_unfair_lock_unlock(v3 + 14);
}

uint64_t sub_1DCB4E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23 - v10;
  sub_1DCB099BC(a1, &v24, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (!v25)
  {
    sub_1DCB0E9D8(&v24, &qword_1ECCA8AB0, &qword_1DD0E23E0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    v14 = __swift_project_value_buffer(v13, qword_1EDE57E00);
    v15 = *(v13 - 8);
    (*(v15 + 16))(v11, v14, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    sub_1DCB099BC(v11, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
    {
      sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v24 = v26;
        *v18 = 136315650;
        v19 = sub_1DD0DEC3C();
        v21 = sub_1DCB10E9C(v19, v20, &v24);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 516;
        *(v18 + 22) = 2080;
        *(v18 + 24) = sub_1DCB10E9C(0xD0000000000000C9, 0x80000001DD119080, &v24);
        _os_log_impl(&dword_1DCAFC000, v16, v17, "FatalError at %s:%lu - %s", v18, 0x20u);
        v22 = v26;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v22, -1, -1);
        MEMORY[0x1E12A8390](v18, -1, -1);
      }

      (*(v15 + 8))(v8, v13);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000C9, 0x80000001DD119080);
  }

  return sub_1DCB18FF0(&v24, a2);
}

uint64_t RefreshableDeviceState.siriLocale.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t RefreshableDeviceState.isHomePod.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isMac.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isAppleTV.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.isTextToSpeechEnabled.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t RefreshableDeviceState.siriVoiceGender.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t initializeWithCopy for UnlockDevicePolicy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

uint64_t RefreshableDeviceState.isWatch.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t sub_1DCB4F190(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DCB4F1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t destroy for FlowSearchResult(void *a1, uint64_t a2)
{

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for NamedParseTransformer(0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (!__swift_getEnumTagSinglePayload(v4, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v4, v7);
    }

    sub_1DD0DCF7C();
  }

  return result;
}

uint64_t sub_1DCB4F370()
{

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB4F3E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB4F438(uint64_t *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 0:
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    case 1:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      goto LABEL_9;
    case 2:

      goto LABEL_9;
    case 3:
LABEL_9:

    case 4:
      goto LABEL_5;
    case 5:
      v4 = *a1;
      v5 = a1[1];
      v6 = *(a1 + 16);

      return sub_1DCD21390(v4, v5, v6);
    case 6:

      v7 = type metadata accessor for PluginAction(0);
      v8 = a1 + v7[5];
      v9 = sub_1DD0DB04C();
      v39 = *(*(v9 - 8) + 8);
      v39(v8, v9);
      v10 = type metadata accessor for Input(0);
      v11 = &v8[*(v10 + 20)];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          goto LABEL_19;
        case 1u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 8))(v11, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_29;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v12 = sub_1DD0DB1EC();
          goto LABEL_19;
        case 5u:
          v17 = *v11;
          goto LABEL_35;
        case 6u:
          v18 = sub_1DD0DB4BC();
          (*(*(v18 - 8) + 8))(v11, v18);
          v19 = *(type metadata accessor for USOParse(0) + 20);
          v20 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v11 + v19, 1, v20))
          {
            (*(*(v20 - 8) + 8))(v11 + v19, v20);
          }

          goto LABEL_29;
        case 7u:
          v13 = sub_1DD0DB4BC();
          (*(*(v13 - 8) + 8))(v11, v13);
          v14 = *(type metadata accessor for USOParse(0) + 20);
          v15 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v11 + v14, 1, v15))
          {
            (*(*(v15 - 8) + 8))(v11 + v14, v15);
          }

          type metadata accessor for LinkParse(0);

LABEL_29:

          break;
        case 8u:
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 8))(v11, v21);
          v22 = type metadata accessor for NLRouterParse(0);

          v23 = v11 + *(v22 + 24);
          v24 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
          {
            v25 = sub_1DD0DB4BC();
            (*(*(v25 - 8) + 8))(v23, v25);
            v26 = *(v24 + 20);
            v27 = sub_1DD0DB3EC();
            v38 = v26;
            v28 = v23 + v26;
            v29 = v27;
            if (!__swift_getEnumTagSinglePayload(v28, 1, v27))
            {
              (*(*(v29 - 8) + 8))(v23 + v38, v29);
            }
          }

          v17 = *(v11 + *(v22 + 28));
LABEL_35:

          break;
        case 9u:
          v12 = sub_1DD0DD08C();
LABEL_19:
          (*(*(v12 - 8) + 8))(v11, v12);
          break;
        default:
          break;
      }

      v30 = &v8[*(v10 + 28)];
      if (*(v30 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
      }

      v31 = a1 + v7[9];
      v32 = type metadata accessor for ActionParaphrase(0);
      if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
      {

        v33 = &v31[*(v32 + 20)];
        v34 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v33, 1, v34))
        {

          v35 = *(v34 + 24);
          v36 = sub_1DD0DB66C();
          (*(*(v36 - 8) + 8))(v33 + v35, v36);
        }
      }

      v37 = v7[10];
      result = __swift_getEnumTagSinglePayload(a1 + v37, 1, v9);
      if (!result)
      {

        return (v39)(a1 + v37, v9);
      }

      return result;
    case 7:

LABEL_5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCB4FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t Parse.usoTasks.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v97 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v97 - v13;
  sub_1DD0DB5BC();
  OUTLINED_FUNCTION_10_57();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = type metadata accessor for USOParse(0);
  v23 = OUTLINED_FUNCTION_20_0(v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_16();
  v27 = v26 - v25;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_16();
  v32 = (v31 - v30);
  sub_1DCB29E58(v1, v31 - v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v36 = *v32;
    v37 = v32[1];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_7_51();
    v40 = v40 && v39 == v37;
    if (v40)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89(v38);
      OUTLINED_FUNCTION_13_52();
      if ((v2 & 1) == 0)
      {
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_7_51();
        if (v40 && v42 == v37)
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_3_89(v41);
        OUTLINED_FUNCTION_13_52();
        if (v2)
        {
          goto LABEL_59;
        }

        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_7_51();
        if (v40 && v45 == v37)
        {
LABEL_58:

          goto LABEL_59;
        }

        OUTLINED_FUNCTION_3_89(v44);
        OUTLINED_FUNCTION_13_52();
        if (v2)
        {
          goto LABEL_59;
        }

        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_7_51();
        if (v40 && v48 == v37)
        {
        }

        else
        {
          OUTLINED_FUNCTION_3_89(v47);
          OUTLINED_FUNCTION_13_52();
          if ((v2 & 1) == 0)
          {
            sub_1DD0DDFBC();
            OUTLINED_FUNCTION_7_51();
            if (v40 && v51 == v37)
            {
            }

            else
            {
              OUTLINED_FUNCTION_3_89(v50);
              OUTLINED_FUNCTION_13_52();
              if ((v2 & 1) == 0)
              {
                sub_1DD0DDFBC();
                OUTLINED_FUNCTION_7_51();
                if (v40 && v54 == v37)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_3_89(v53);
                  OUTLINED_FUNCTION_13_52();
                  if ((v2 & 1) == 0)
                  {
                    if (sub_1DD0DDFBC() == v36 && v56 == v37)
                    {

                      goto LABEL_59;
                    }

                    v58 = v36;
                    v59 = sub_1DD0DF0AC();

                    if ((v59 & 1) == 0)
                    {
                      v60 = sub_1DD0DDFBC();
                      if (v60 != v58 || v61 != v37)
                      {
                        v63 = OUTLINED_FUNCTION_17_33(v60);

                        if ((v63 & 1) == 0)
                        {
                          v64 = sub_1DD0DDFBC();
                          if (v64 == v58 && v65 == v37)
                          {
                          }

                          else
                          {
                            v67 = OUTLINED_FUNCTION_17_33(v64);

                            if ((v67 & 1) == 0)
                            {

                              return MEMORY[0x1E69E7CC0];
                            }
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
                          v86 = OUTLINED_FUNCTION_11_52();
                          OUTLINED_FUNCTION_99(v86);
                          *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
                          v87 = sub_1DD0DBB6C();
                          OUTLINED_FUNCTION_73_1(v87);
                          v70 = OUTLINED_FUNCTION_15_50() & 0xFFFFFFFFFFFFLL | 0x575F000000000000;
                          v71 = 0xEE0074756F6B726FLL;
                          v72 = 0x627265566F6ELL;
                          goto LABEL_65;
                        }

                        goto LABEL_59;
                      }

                      goto LABEL_58;
                    }

LABEL_59:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
                    v74 = OUTLINED_FUNCTION_11_52();
                    OUTLINED_FUNCTION_99(v74);
                    *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
                    v75 = OUTLINED_FUNCTION_18_38();
                    OUTLINED_FUNCTION_73_1(v75);
                    OUTLINED_FUNCTION_16_40();
                    v71 = v14 | 0x8000000000000000;
                    v70 = 0xD000000000000010;
LABEL_60:
                    v73 = 0xE900000000000065;
                    goto LABEL_61;
                  }
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
                v83 = OUTLINED_FUNCTION_11_52();
                OUTLINED_FUNCTION_99(v83);
                *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
                v84 = OUTLINED_FUNCTION_18_38();
                OUTLINED_FUNCTION_73_1(v84);
                OUTLINED_FUNCTION_9_58();
                OUTLINED_FUNCTION_16_40();
                v70 = v85 | 3;
                v71 = v14 | 0x8000000000000000;
                goto LABEL_60;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
            v80 = OUTLINED_FUNCTION_11_52();
            OUTLINED_FUNCTION_99(v80);
            *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
            v81 = OUTLINED_FUNCTION_18_38();
            OUTLINED_FUNCTION_73_1(v81);
            OUTLINED_FUNCTION_9_58();
            v70 = v82 | 3;
            v71 = v14 | 0x8000000000000000;
LABEL_57:
            v72 = 1684104562;
            v73 = 0xE400000000000000;
            goto LABEL_61;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
        v77 = OUTLINED_FUNCTION_11_52();
        OUTLINED_FUNCTION_99(v77);
        *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
        v78 = OUTLINED_FUNCTION_18_38();
        OUTLINED_FUNCTION_73_1(v78);
        OUTLINED_FUNCTION_9_58();
        v72 = 0x627265566F6ELL;
        v70 = v79 | 1;
        v71 = v14 | 0x8000000000000000;
LABEL_65:
        v73 = 0xE600000000000000;
LABEL_61:
        MEMORY[0x1E12A41B0](v70, v71, v72, v73);
        sub_1DCE33DD0();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
    v68 = OUTLINED_FUNCTION_11_52();
    OUTLINED_FUNCTION_99(v68);
    *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
    v69 = sub_1DD0DBB6C();
    OUTLINED_FUNCTION_73_1(v69);
    v70 = OUTLINED_FUNCTION_15_50() & 0xFFFFFFFFFFFFLL | 0x4D5F000000000000;
    v71 = 0xEE00656761737365;
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v35 = sub_1DCE33A70(*v32);
    swift_unknownObjectRelease();
    return v35;
  }

  if (EnumCaseMultiPayload != 6)
  {
    sub_1DCB283D8(v32, type metadata accessor for Parse);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DCC6D300(v32, v27);
  v34 = sub_1DD0DB46C();
  sub_1DCC621EC(v34);

  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    sub_1DCB0E9D8(v14, &qword_1ECCA29B8, &qword_1DD0E96C0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v88 = sub_1DD0DD8FC();
    v89 = __swift_project_value_buffer(v88, qword_1EDE57E00);
    v90 = *(v88 - 8);
    (*(v90 + 16))(v9, v89, v88);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v88);
    sub_1DCBCF6C8(v9, v0);
    if (__swift_getEnumTagSinglePayload(v0, 1, v88) == 1)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v91 = sub_1DD0DD8EC();
      v92 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v93 = 136315650;
        v94 = sub_1DD0DEC3C();
        v96 = sub_1DCB10E9C(v94, v95, &v98);

        *(v93 + 4) = v96;
        *(v93 + 12) = 2048;
        *(v93 + 14) = 64;
        *(v93 + 22) = 2080;
        *(v93 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD117620, &v98);
        _os_log_impl(&dword_1DCAFC000, v91, v92, "FatalError at %s:%lu - %s", v93, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v90 + 8))(v0, v88);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD117620);
  }

  (*(v16 + 32))(v21, v14, v2);
  v35 = sub_1DCE33C20(v21);
  (*(v16 + 8))(v21, v2);
  sub_1DCB283D8(v27, type metadata accessor for USOParse);
  return v35;
}

uint64_t FlowPluginBundleImpl.bundlePath.getter()
{
  v1 = *v0;

  return v1;
}

SiriKitFlow::HandcraftedPluginManifestEntry_optional static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)@<W0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v12 = OUTLINED_FUNCTION_3_62(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = OUTLINED_FUNCTION_2_55(v12, MEMORY[0x1E69E6158], v13, v12, v14, v15, v16, v17, v28);
  v19 = sub_1DCB1D5C0(v18);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_6;
  }

  if (qword_1EDE46960 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_1EDE46960);
  }

  v22 = sub_1DCB508E0(v19, v21, qword_1EDE46968);

  if (v22 && (v23 = *(v22 + 32), v24 = *(v22 + 40), , , v25._countAndFlagsBits = v23, v25._object = v24, result.value = HandcraftedPluginManifestEntry.init(rawValue:)(v25).value, v29 != 38))
  {
    *a9 = v29;
  }

  else
  {
LABEL_6:

    v27._countAndFlagsBits = a1;
    v27._object = a2;
    return HandcraftedPluginManifestEntry.init(rawValue:)(v27);
  }

  return result;
}

uint64_t sub_1DCB508E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB21038(a1, a2);
  if (v4)
  {
    OUTLINED_FUNCTION_5_14(v3);
    sub_1DD0DCF8C();
  }

  return 0;
}

SiriKitFlow::HandcraftedPluginManifestEntry_optional __swiftcall HandcraftedPluginManifestEntry.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DF0FC();

  v5 = 0;
  v6 = 20;
  switch(v3)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 1;
      goto LABEL_34;
    case 2:
      v5 = 2;
      goto LABEL_34;
    case 3:
      v5 = 3;
      goto LABEL_34;
    case 4:
      v5 = 4;
      goto LABEL_34;
    case 5:
      v5 = 5;
      goto LABEL_34;
    case 6:
      v5 = 6;
      goto LABEL_34;
    case 7:
      v5 = 7;
      goto LABEL_34;
    case 8:
      v5 = 8;
      goto LABEL_34;
    case 9:
      v5 = 9;
      goto LABEL_34;
    case 10:
      v5 = 10;
      goto LABEL_34;
    case 11:
      v5 = 11;
      goto LABEL_34;
    case 12:
      v5 = 12;
      goto LABEL_34;
    case 13:
      v5 = 13;
      goto LABEL_34;
    case 14:
      v5 = 14;
      goto LABEL_34;
    case 15:
      v5 = 15;
      goto LABEL_34;
    case 16:
      v5 = 16;
      goto LABEL_34;
    case 17:
      v5 = 17;
      goto LABEL_34;
    case 18:
      v5 = 18;
      goto LABEL_34;
    case 19:
      v5 = 19;
LABEL_34:
      v6 = v5;
      break;
    case 20:
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    default:
      v6 = 38;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for HandcraftedPluginManifestEntry(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DCB50C00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v29 - v7;
  v9 = *v0;
  if (qword_1EDE4D9B8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE4D9C0;
  LOBYTE(v31) = v9;
  v11 = HandcraftedPluginManifestEntry.rawValue.getter();
  v13 = sub_1DCB508E0(v11, v12, v10);

  if (!v13)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v31 = 0xD00000000000001DLL;
    v32 = 0x80000001DD11BC30;
    LOBYTE(v30) = v9;
    v15 = HandcraftedPluginManifestEntry.rawValue.getter();
    MEMORY[0x1E12A6780](v15);

    MEMORY[0x1E12A6780](0x7373696D20736920, 0xEC00000021676E69);
    v16 = v31;
    v17 = v32;
    v18 = qword_1EDE4F900;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    v20 = __swift_project_value_buffer(v19, qword_1EDE57E00);
    v21 = *(v19 - 8);
    (*(v21 + 16))(v8, v20, v19);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
    sub_1DCBCF6C8(v8, v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v19) == 1)
    {
      sub_1DCBCF738(v5);
    }

    else
    {

      v22 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v24 = 136315650;
        v25 = sub_1DD0DEC3C();
        v27 = sub_1DCB10E9C(v25, v26, &v30);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2048;
        *(v24 + 14) = 451;
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1DCB10E9C(v16, v17, &v30);
        _os_log_impl(&dword_1DCAFC000, v22, v23, "FatalError at %s:%lu - %s", v24, 0x20u);
        v28 = v29;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v28, -1, -1);
        MEMORY[0x1E12A8390](v24, -1, -1);
      }

      (*(v21 + 8))(v5, v19);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v16, v17);
  }

  return v13;
}

uint64_t HandcraftedPluginManifestEntry.isPersonalDomain.getter()
{
  OUTLINED_FUNCTION_1_59();
  v0 = *(sub_1DCB50C00() + 48);

  return v0;
}

unint64_t HandcraftedPluginManifestEntry.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 2:
    case 5:
    case 0x23:
      result = 0xD00000000000002CLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 7:
    case 0x18:
    case 0x1C:
      result = 0xD000000000000029;
      break;
    case 8:
    case 0xF:
    case 0x21:
      result = 0xD00000000000002FLL;
      break;
    case 9:
    case 0xC:
    case 0x22:
    case 0x24:
      result = 0xD000000000000026;
      break;
    case 0xA:
    case 0xD:
    case 0x13:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD000000000000022;
      break;
    case 0xE:
    case 0x1A:
    case 0x1E:
      result = 0xD000000000000027;
      break;
    case 0x10:
      result = 0xD000000000000032;
      break;
    case 0x11:
    case 0x16:
    case 0x1D:
    case 0x25:
      result = 0xD000000000000021;
      break;
    case 0x12:
      result = 0xD000000000000016;
      break;
    case 0x14:
      result = 0xD000000000000025;
      break;
    case 0x15:
      result = 0xD000000000000031;
      break;
    case 0x17:
      result = 0xD00000000000002ELL;
      break;
    case 0x19:
      result = 0xD00000000000002ALL;
      break;
    case 0x1B:
      result = 0xD00000000000001FLL;
      break;
    case 0x1F:
      result = 0xD000000000000023;
      break;
    case 0x20:
      result = 0xD000000000000033;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HandcraftedPluginManifestEntry.sensitivityPolicy.getter()
{
  OUTLINED_FUNCTION_1_59();
  v0 = *(sub_1DCB50C00() + 56);

  return v0;
}

_BYTE *storeEnumTagSinglePayload for HandcraftedPluginManifestEntry(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
        JUMPOUT(0x1DCB51460);
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB514AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D0, &qword_1DD105B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCB51540()
{
  result = qword_1EDE4F210;
  if (!qword_1EDE4F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F210);
  }

  return result;
}

void Parse.DirectInvocation.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v21[2] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D70, &qword_1DD0FB028);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  v20 = *(v0 + 16);
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCB34FA8();
  sub_1DD0DF24C();
  LOBYTE(v21[0]) = 0;
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFBC();
  if (!v1)
  {
    if (v20)
    {
      v8 = objc_opt_self();
      v9 = sub_1DD0DDE4C();
      v21[0] = 0;
      v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:v21];

      v11 = v21[0];
      if (v10)
      {
        v12 = sub_1DD0DAF2C();
        v14 = v13;

        v21[0] = v12;
        v21[1] = v14;
        sub_1DCB51540();
        OUTLINED_FUNCTION_56_2();
        sub_1DD0DEFFC();
        v15 = OUTLINED_FUNCTION_53_16();
        v16(v15);
        sub_1DCB21A14(v12, v14);
        goto LABEL_8;
      }

      v17 = v11;
      sub_1DD0DAE0C();

      swift_willThrow();
    }

    v18 = OUTLINED_FUNCTION_53_16();
    v19(v18);
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_53_16();
  v7(v6);
LABEL_8:
  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCB5181C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4A468;

  return v7(v1);
}

void OUTLINED_FUNCTION_70_0()
{

  sub_1DCFF21F0();
}

uint64_t OUTLINED_FUNCTION_70_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[12] = result;
  v2[13] = a2;
  v2[9] = v3;
  return result;
}

void *OUTLINED_FUNCTION_70_5(uint64_t a1, uint64_t a2, size_t a3)
{

  return memcpy(v3, v4, a3);
}

BOOL OUTLINED_FUNCTION_45_1()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_70_6()
{

  return static ExecuteResponse.complete()();
}

uint64_t *OUTLINED_FUNCTION_70_8(uint64_t a1)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 + 40));
}

void OUTLINED_FUNCTION_70_10()
{

  sub_1DCB38954();
}

void *OUTLINED_FUNCTION_70_13()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_70_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
}

uint64_t OUTLINED_FUNCTION_70_16(uint64_t result)
{
  v3 = *(v1 + 336);
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1)
{

  return sub_1DD0DE33C();
}

void OUTLINED_FUNCTION_65_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_65_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF23C();
}

uint64_t OUTLINED_FUNCTION_65_5()
{
}

void OUTLINED_FUNCTION_65_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_65_11()
{
  v2 = *(v0 + 440);

  sub_1DCE40918(v2);
}

uint64_t OUTLINED_FUNCTION_65_12(uint64_t a1)
{
  *(v1 + 96) = a1;

  return sub_1DD0DB04C();
}

uint64_t OUTLINED_FUNCTION_65_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_65_15()
{
}

uint64_t OUTLINED_FUNCTION_65_16()
{

  return sub_1DCB0E9D8(v0 + 16, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_17()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_65_18()
{
  v6 = (v3 + *(v4 + 68));
  *v6 = v1;
  v6[1] = v2;
  *(v3 + v0) = 0;

  return type metadata accessor for ResponseFactory();
}

void OUTLINED_FUNCTION_65_19(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_65_21(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_2()
{

  return type metadata accessor for AceOutput(0);
}

void OUTLINED_FUNCTION_241(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_76_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void x5_0, void x6_0, void x7_0, __int128 a7, uint64_t a8)
{

  return sub_1DCCC9D0C();
}

__n128 OUTLINED_FUNCTION_76_7()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v3;
  *(v0 + 32) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_14()
{
}

uint64_t OUTLINED_FUNCTION_76_17(uint64_t result, uint64_t a2)
{
  v2[29] = v4;
  v2[30] = result;
  v2[31] = a2;
  v2[32] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_19(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DCB51EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB51F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DCB193FC;

  return sub_1DCB52040(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DCB52040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCB52064, 0, 0);
}

void sub_1DCB52064()
{
  v3 = v0;
  v2 = v0[10];
  v1 = v0[11];
  sub_1DD0DDF8C();
  v0[6] = v2;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DCB52430;
  v0[5] = &block_descriptor_2;
  _Block_copy(v0 + 2);
  sub_1DD0DCF8C();
}

void block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

void block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB524BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4230, &unk_1DD0EB268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 0x7954746E65746E69;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_1DD0DDF8C();
  sub_1DCB525A0();
  return sub_1DD0DDE9C();
}

unint64_t sub_1DCB525A0()
{
  result = qword_1EDE4D6A8;
  if (!qword_1EDE4D6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE4D6A8);
  }

  return result;
}

uint64_t CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v21 = *(v7 + 16);
  v15 = *(a1 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  *(v16 + 72) = a6;
  *(v16 + 80) = a7;
  *(v16 + 88) = a5;
  OUTLINED_FUNCTION_88_0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1DCCD78F4;
  *(v17 + 24) = v16;
  sub_1DCCD7934(v12, v13, v14, v15);

  v21(0xD000000000000022, 0x80000001DD117C60, sub_1DCB52574, v17);
}

uint64_t sub_1DCB5280C()
{
  sub_1DCCD6E9C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1DCB52854()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

void SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v26 = v5;
  v25 = v6;
  v8 = v7;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  type metadata accessor for SiriKitEvent.SiriKitEventBuilder();
  v11 = swift_allocObject();
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v35 = v11;
  if (v2)
  {
    v2(&v35);
    v12 = v35;
  }

  else
  {
    v12 = v11;
  }

  OUTLINED_FUNCTION_156((v12 + 1), &v33);
  v13 = *(v12 + 2);
  OUTLINED_FUNCTION_156(v12 + 24, &v32);
  v14 = *(v12 + 4);
  *&v15 = v13;
  *(&v15 + 1) = *(v12 + 3);
  v24 = v15;
  OUTLINED_FUNCTION_156(v12 + 40, &v31);
  v16 = *(v12 + 5);
  OUTLINED_FUNCTION_156((v12 + 4), &v30);
  *&v17 = v14;
  *(&v17 + 1) = v16;
  v22 = v17;
  v18 = *(v12 + 9);
  v23 = *(v12 + 8);
  OUTLINED_FUNCTION_156((v12 + 5), &v29);
  v27 = v12[5];
  OUTLINED_FUNCTION_156((v12 + 6), &v28);
  v19 = *(v12 + 12);
  v20 = *(v12 + 13);
  v34 = BYTE4(v4) & 1;
  *v0 = v8;
  *(v0 + 8) = v25;
  *(v0 + 16) = v26;
  *(v0 + 40) = v22;
  *(v0 + 24) = v24;
  *&v21 = v23;
  *(&v21 + 1) = v18;
  *(v0 + 72) = v27;
  *(v0 + 56) = v21;
  *(v0 + 88) = v19;
  *(v0 + 96) = v20;
  *(v0 + 104) = v4;
  *(v0 + 108) = v34;
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t SiriKitEvent.SiriKitEventBuilder.__deallocating_deinit()
{
  SiriKitEvent.SiriKitEventBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB52B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DCB52BCC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_40();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1DCB52C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a6;
  v9 = v7;
  v43 = a4;
  v44 = a5;
  v45 = a7;
  v47 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  v20 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  v48 = a1;
  v49 = a2;
  sub_1DCB0D344();
  if (v25)
  {
    v26 = v25;
    sub_1DCB52F18();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v22 + 16);
  v51 = v20;
  v29(v8, a3, v20);
  if (v28)
  {
    v30 = *(v9 + 16);
    v31 = v28;
    v30();
  }

  v50 = v28;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v32 = sub_1DD0DD88C();
  v33 = __swift_project_value_buffer(v32, qword_1EDE57DD0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v43;
  v35 = v44;
  *(&v42 - 4) = v46;
  *(&v42 - 3) = v36;
  *(&v42 - 2) = v35;
  sub_1DD0DD84C();
  sub_1DCB2A488("execution_find_flow_time", 24, 2, v19, sub_1DCB54844);
  (*(v14 + 8))(v19, v47);
  sub_1DCB0D344();
  if (v37)
  {
    v38 = v37;
    sub_1DCB52F18();
    v40 = v39;

    if (v40)
    {
      (*(v9 + 16))(v40);
    }
  }

  return (*(v22 + 8))(v8, v51);
}

void sub_1DCB52F18()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_70();
  v11 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  v19 = [objc_allocWithZone(*v8) init];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(*v6) init];
    if (v21)
    {
      v22 = v21;
      [v21 *v4];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v13 + 16))(v18, v10, v11);
      v23 = sub_1DCB0DEDC(v18);
      [v22 setHypothesisId_];

      [v0 *v2];
      v24 = v0;
      goto LABEL_10;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v25 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v25, qword_1EDE57DA0);
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v27))
  {
    v28 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v28);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v29, v30, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

LABEL_10:
  OUTLINED_FUNCTION_49();
}

void Parse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_3();
  v168 = v21;
  v24 = v23;
  v166 = v25;
  v153 = type metadata accessor for IFClientActionParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_11_2();
  v154 = v28;
  v29 = OUTLINED_FUNCTION_12();
  v155 = type metadata accessor for NLRouterParse(v29);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_11_2();
  v156 = v32;
  v33 = OUTLINED_FUNCTION_12();
  v157 = type metadata accessor for LinkParse(v33);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_11_2();
  v158 = v36;
  v37 = OUTLINED_FUNCTION_12();
  v165 = type metadata accessor for USOParse(v37);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_11_2();
  v159 = v40;
  v41 = OUTLINED_FUNCTION_12();
  v161 = type metadata accessor for Parse.PegasusResult(v41);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_11_2();
  v160 = v44;
  v45 = OUTLINED_FUNCTION_12();
  v162 = type metadata accessor for NLv3ServerParse(v45);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_11_2();
  v164 = v48;
  OUTLINED_FUNCTION_12();
  v49 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  v163 = v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C98, qword_1DD0FAFC0);
  OUTLINED_FUNCTION_9();
  v167 = v54;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v149 - v57;
  v59 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v60, v61);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  v62 = v24[3];
  v169 = v24;
  OUTLINED_FUNCTION_57_1(v24, v62);
  sub_1DCB34864();
  v63 = v168;
  sub_1DD0DF23C();
  if (!v63)
  {
    v64 = v22;
    v65 = v164;
    v151 = v49;
    v152 = v20;
    v168 = v59;
    v66 = v166;
    LOBYTE(v170) = 0;
    OUTLINED_FUNCTION_33_20();
    v68 = sub_1DD0DEF0C();
    v69 = v67;
    v70 = v68 == 0x7974706D65 && v67 == 0xE500000000000000;
    if (v70 || (sub_1DD0DF0AC() & 1) != 0)
    {
      v71 = OUTLINED_FUNCTION_3_87();
      v72(v71);

      v73 = v66;
      v64 = v152;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1DCB541A0(v64, v73);
      goto LABEL_9;
    }

    v150 = v68;
    v74 = v68 == 0x65746E4933766C6ELL && v69 == 0xEE00796C6E4F746ELL;
    if (v74 || (OUTLINED_FUNCTION_79_10(0x65746E4933766C6ELL, 0xEE00796C6E4F746ELL) & 1) != 0)
    {

      OUTLINED_FUNCTION_54_15();
      sub_1DCB5414C();
      OUTLINED_FUNCTION_8_59(MEMORY[0x1E6969080]);
      v75 = v167;
      v76 = v151;
      v77 = v163;
      v78 = v64;
      sub_1DD0DC74C();
      (*(v75 + 8))(v58, v53);
      v64 = v152;
      (*(v77 + 32))(v152, v78, v76);
LABEL_22:
      v73 = v66;
      goto LABEL_8;
    }

    v79 = v150 == 0xD000000000000014 && 0x80000001DD11F4E0 == v69;
    if (v79 || (OUTLINED_FUNCTION_79_10(0xD000000000000014, 0x80000001DD11F4E0) & 1) != 0)
    {

      OUTLINED_FUNCTION_17_32();
      OUTLINED_FUNCTION_29_24();
      sub_1DCE2FDA8(v80, v81, &unk_1DD0FB734);
      OUTLINED_FUNCTION_18_37();
      v82 = v162;
      OUTLINED_FUNCTION_33_20();
      sub_1DD0DEF4C();
      v83 = OUTLINED_FUNCTION_3_87();
      v84(v83);
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48);
      v64 = v152;
      (*(v163 + 32))(v152, v65, v151);
      *(v64 + v85) = *(v65 + *(v82 + 20));
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_49_15();
    if (v70 && v69 == 0xEE00796C6E4F746ELL)
    {

      v73 = v66;
    }

    else
    {
      v87 = v150;
      v164 = v69;
      v73 = v66;
      if ((sub_1DD0DF0AC() & 1) == 0)
      {
        OUTLINED_FUNCTION_67_12();
        v90 = v87 == OUTLINED_FUNCTION_68_13() && v164 == v89;
        if (v90 || (sub_1DD0DF0AC() & 1) != 0)
        {

          OUTLINED_FUNCTION_17_32();
          OUTLINED_FUNCTION_21_27();
          sub_1DCE2FDA8(v91, v92, &protocol conformance descriptor for Parse.PegasusResult);
          OUTLINED_FUNCTION_18_37();
          v93 = v160;
          OUTLINED_FUNCTION_33_20();
          sub_1DD0DEF4C();
          v94 = OUTLINED_FUNCTION_3_87();
          v95(v94);
          OUTLINED_FUNCTION_5_74();
          OUTLINED_FUNCTION_40_22(v93);
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_72_11();
        v99 = v150 == OUTLINED_FUNCTION_74_9() && v164 == v98;
        if (!v99 && (sub_1DD0DF0AC() & 1) == 0)
        {
          OUTLINED_FUNCTION_76_10();
          OUTLINED_FUNCTION_50_14();
          v108 = v70 && v107 == v164;
          if (v108 || (OUTLINED_FUNCTION_15_49(0xD000000000000010, v107) & 1) != 0)
          {

            OUTLINED_FUNCTION_54_15();
            sub_1DCB53E04();
            OUTLINED_FUNCTION_8_59(&type metadata for Parse.DirectInvocation);
            v109 = OUTLINED_FUNCTION_3_87();
            v110(v109);
            v111 = v171;
            v64 = v152;
            *v152 = v170;
            *(v64 + 16) = v111;
          }

          else
          {
            OUTLINED_FUNCTION_50_14();
            v117 = v70 && v164 == 0xE300000000000000;
            if (v117 || (OUTLINED_FUNCTION_15_49(7304053, 0xE300000000000000) & 1) != 0)
            {

              OUTLINED_FUNCTION_17_32();
              OUTLINED_FUNCTION_26_25();
              sub_1DCE2FDA8(v118, v119, &protocol conformance descriptor for USOParse);
              OUTLINED_FUNCTION_18_37();
              OUTLINED_FUNCTION_33_20();
              sub_1DD0DEF4C();
              v120 = OUTLINED_FUNCTION_3_87();
              v121(v120);
              OUTLINED_FUNCTION_28_25();
              OUTLINED_FUNCTION_40_22(v159);
            }

            else
            {
              OUTLINED_FUNCTION_50_14();
              v125 = v70 && v164 == 0xE400000000000000;
              if (v125 || (OUTLINED_FUNCTION_15_49(1802398060, 0xE400000000000000) & 1) != 0)
              {

                OUTLINED_FUNCTION_17_32();
                OUTLINED_FUNCTION_30_28();
                sub_1DCE2FDA8(v126, v127, &protocol conformance descriptor for LinkParse);
                OUTLINED_FUNCTION_18_37();
                OUTLINED_FUNCTION_9_57(v157, v128);
                v129 = OUTLINED_FUNCTION_3_87();
                v130(v129);
                OUTLINED_FUNCTION_32_21();
                OUTLINED_FUNCTION_40_22(v158);
              }

              else
              {
                OUTLINED_FUNCTION_77_8();
                OUTLINED_FUNCTION_49_15();
                v132 = v70 && v164 == 0xE800000000000000;
                if (v132 || (OUTLINED_FUNCTION_15_49(v131, 0xE800000000000000) & 1) != 0)
                {

                  OUTLINED_FUNCTION_17_32();
                  OUTLINED_FUNCTION_24_26();
                  sub_1DCE2FDA8(v133, v134, &protocol conformance descriptor for NLRouterParse);
                  OUTLINED_FUNCTION_18_37();
                  OUTLINED_FUNCTION_9_57(v155, v135);
                  v136 = OUTLINED_FUNCTION_3_87();
                  v137(v136);
                  OUTLINED_FUNCTION_25_20();
                  OUTLINED_FUNCTION_40_22(v156);
                }

                else
                {
                  OUTLINED_FUNCTION_64_11();
                  OUTLINED_FUNCTION_65_10();
                  OUTLINED_FUNCTION_49_15();
                  v140 = v70 && v164 == v139;
                  if (!v140 && (OUTLINED_FUNCTION_15_49(v138, v139) & 1) == 0)
                  {
                    *&v170 = 0;
                    *(&v170 + 1) = 0xE000000000000000;
                    sub_1DD0DEC1C();

                    *&v170 = 0xD000000000000013;
                    *(&v170 + 1) = 0x80000001DD11F500;
                    MEMORY[0x1E12A6780](v150, v164);

                    MEMORY[0x1E12A6780](0xD000000000000017, 0x80000001DD11F520);
                    v146 = v170;
                    v147 = sub_1DCE0E1C0();
                    OUTLINED_FUNCTION_34(&type metadata for ParseCodingErrors, v147);
                    *v148 = v146;
                    *(v148 + 16) = 1;
                    swift_willThrow();
                    (*(v167 + 8))(v58, v53);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_17_32();
                  OUTLINED_FUNCTION_19_34();
                  sub_1DCE2FDA8(v141, v142, &protocol conformance descriptor for IFClientActionParse);
                  OUTLINED_FUNCTION_18_37();
                  OUTLINED_FUNCTION_9_57(v153, v143);
                  v144 = OUTLINED_FUNCTION_3_87();
                  v145(v144);
                  OUTLINED_FUNCTION_20_23();
                  OUTLINED_FUNCTION_40_22(v154);
                }
              }
            }
          }

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_54_15();
        sub_1DCB5414C();
        OUTLINED_FUNCTION_8_59(MEMORY[0x1E6969080]);
        v165 = v58;
        v105 = v170;
        sub_1DCB10E5C(0, &qword_1EDE461C0, 0x1E696ACD0);
        OUTLINED_FUNCTION_26_6();
        sub_1DD0DD74C();
        v106 = sub_1DD0DE71C();
        v112 = v106;
        if (v106)
        {
          v113 = OUTLINED_FUNCTION_13_51();
          v114(v113);
          v115 = OUTLINED_FUNCTION_53_16();
          sub_1DCB21A14(v115, v116);
          v64 = v152;
          *v152 = v112;
          v73 = v66;
          goto LABEL_8;
        }

        v122 = OUTLINED_FUNCTION_80_7();
        OUTLINED_FUNCTION_34(&type metadata for ParseCodingErrors, v122);
        OUTLINED_FUNCTION_76_10();
        OUTLINED_FUNCTION_34_28(v124, v123 + 53);
        v104 = v105 >> 64;
        v103 = v105;
LABEL_48:
        sub_1DCB21A14(v103, v104);
        (*(v167 + 8))(v165, v53);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_54_15();
    sub_1DCB5414C();
    OUTLINED_FUNCTION_8_59(MEMORY[0x1E6969080]);
    v165 = v58;
    v88 = v170;
    sub_1DCB10E5C(0, &qword_1EDE461C0, 0x1E696ACD0);
    sub_1DD0DE72C();
    if (v172)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
      if (swift_dynamicCast())
      {
        v96 = OUTLINED_FUNCTION_13_51();
        v97(v96);
        sub_1DCB21A14(v88, *(&v88 + 1));
        v64 = v152;
        *v152 = a10;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1DCC8BC14(&v170);
    }

    v100 = OUTLINED_FUNCTION_80_7();
    OUTLINED_FUNCTION_34(&type metadata for ParseCodingErrors, v100);
    OUTLINED_FUNCTION_76_10();
    OUTLINED_FUNCTION_34_28(v102, v101 + 49);
    v104 = v88 >> 64;
    v103 = v88;
    goto LABEL_48;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v169);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCB53E04()
{
  result = qword_1EDE46648;
  if (!qword_1EDE46648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46648);
  }

  return result;
}

void Parse.DirectInvocation.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v30 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D68, &unk_1DD0FB018);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  v7 = sub_1DCB34FA8();
  OUTLINED_FUNCTION_61_2(&_s10CodingKeysON_0, v8, v7);
  if (!v0)
  {
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_52_19();
    v11 = sub_1DD0DEF0C();
    v13 = v12;
    LOBYTE(v27) = 1;
    sub_1DCB5414C();
    OUTLINED_FUNCTION_52_19();
    sub_1DD0DEEFC();
    v26 = v29;
    if (v29 >> 60 == 15)
    {
      v14 = OUTLINED_FUNCTION_13_45();
      v15(v14);
      v16 = 0;
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v28;
      v23 = sub_1DD0DAEFC();
      v28 = 0;
      v17 = [v24 propertyListWithData:v23 options:0 format:0 error:&v28];

      if (!v17)
      {
        v22 = v28;

        sub_1DD0DAE0C();

        swift_willThrow();
        sub_1DCB2C520(v25, v26);
        v9 = OUTLINED_FUNCTION_13_45();
        v10(v9);
        goto LABEL_8;
      }

      v18 = v28;
      sub_1DD0DEA6C();
      sub_1DCB2C520(v25, v26);
      swift_unknownObjectRelease();
      v19 = OUTLINED_FUNCTION_13_45();
      v20(v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      v21 = swift_dynamicCast();
      v16 = v27;
      if (!v21)
      {
        v16 = 0;
      }
    }

    *v4 = v11;
    v4[1] = v13;
    v4[2] = v16;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCB5414C()
{
  result = qword_1EDE4F1F0;
  if (!qword_1EDE4F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F1F0);
  }

  return result;
}

uint64_t sub_1DCB541A0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DCB541FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCB54260()
{
  result = qword_1EDE481C8;
  if (!qword_1EDE481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE481C8);
  }

  return result;
}

void InputContinuationState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  a22 = v26;
  a23 = v27;
  v73 = v23;
  v29 = v28;
  v70 = v30;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49C8, &qword_1DD0EDE40);
  OUTLINED_FUNCTION_9();
  v69 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49D0, &qword_1DD0EDE48);
  OUTLINED_FUNCTION_9();
  v68 = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_15_3();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49D8, &qword_1DD0EDE50);
  OUTLINED_FUNCTION_9();
  v71 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_57_1(v29, v29[3]);
  sub_1DCB347BC();
  OUTLINED_FUNCTION_79_5();
  v44 = v73;
  sub_1DD0DF23C();
  if (v44)
  {
    goto LABEL_10;
  }

  v66 = v36;
  v67 = v25;
  v73 = v29;
  v45 = v72;
  v46 = sub_1DD0DEF5C();
  sub_1DCB547F8(v46, 0);
  if (v49 == v50 >> 1)
  {
    v72 = v47;
LABEL_9:
    sub_1DD0DECAC();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v61 = &type metadata for InputContinuationState;
    v62 = sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0(v62);
    OUTLINED_FUNCTION_112();
    (*(v63 + 104))(v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v24, v40);
    v29 = v73;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
LABEL_11:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  v65[1] = 0;
  if (v49 < (v50 >> 1))
  {
    v51 = *(v48 + v49);
    v52 = sub_1DCB54800(v49 + 1, v50 >> 1, v47, v48, v49, v50);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    if (v54 == v56 >> 1)
    {
      if (v51)
      {
        a13 = 1;
        sub_1DCD1BA84();
        v57 = v35;
        OUTLINED_FUNCTION_68_8(&type metadata for InputContinuationState.ContinuationCodingKeys, &a13);
        v58 = v70;
        v59 = v71;
        swift_unknownObjectRelease();
        (*(v69 + 8))(v57, v45);
      }

      else
      {
        a12 = 0;
        sub_1DCB34810();
        v64 = v67;
        OUTLINED_FUNCTION_68_8(&type metadata for InputContinuationState.InitialInputCodingKeys, &a12);
        v58 = v70;
        v59 = v71;
        swift_unknownObjectRelease();
        (*(v68 + 8))(v64, v66);
      }

      (*(v59 + 8))(v24, v54);
      *v58 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      goto LABEL_11;
    }

    v72 = v52;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1DCB54700@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DCB54728(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DCB54728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C616974696E69 && a2 == 0xEC0000007475706ELL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61756E69746E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void UserIdentityProvider.init(storage:)()
{
  OUTLINED_FUNCTION_50();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  v2 = OUTLINED_FUNCTION_20_0(v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  *(v0 + 16) = 0;
  type metadata accessor for IdentifiedUser(0);
  OUTLINED_FUNCTION_12_76();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEE0, &qword_1DD10D518);
  OUTLINED_FUNCTION_73_1(v6);
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB54C30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1DD0DD17C();
    v10 = a4[14];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void FlowTaskProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_18_3();
  swift_allocObject();
  FlowTaskProvider.init(storage:)(a1);
}

void FlowTaskProvider.init(storage:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  *(v1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v6);
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB54EBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)()
{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.handleIntentFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

void TCCResponses.init()(uint64_t *a1@<X8>)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57D40;
  a1[3] = type metadata accessor for CATTemplateExecutor();
  a1[4] = &off_1F58563F0;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 160), *(v1 + 168));
  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

void *ProtectedAppCheck.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  sub_1DCB0E9D8((v0 + 9), &qword_1ECCA2568, &unk_1DD0FE510);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);

  OUTLINED_FUNCTION_2_80();
  sub_1DCB551D4(v0 + v1, v2);
  sub_1DCB5524C(*(v0 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult), *(v0 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult + 8));

  return v0;
}

uint64_t sub_1DCB551D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DCB5524C(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1DCB79378(result, a2 & 1);
  }
}

uint64_t sub_1DCB55264()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_1DCB7FCDC(v1);
  v5 = type metadata accessor for ConditionalFlowResult(0, v2, v3, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 2, v5);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v7 = sub_1DD0DD8FC();
      v8 = OUTLINED_FUNCTION_59_0(v7, qword_1EDE57E00);
      v9 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v9))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v10, v11, "ConditionalFlow is ongoing while waiting for pre-condition Flow.");
        OUTLINED_FUNCTION_62();
      }

      OUTLINED_FUNCTION_55_1();
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    v22 = OUTLINED_FUNCTION_59_0(v21, qword_1EDE57E00);
    v23 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v24, v25, "ConditionalFlow is ongoing while waiting for executable Flow.");
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_55_1();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  v13 = OUTLINED_FUNCTION_59_0(v12, qword_1EDE57E00);
  v14 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v14))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v15, v16, "ConditionalFlow is complete");
    OUTLINED_FUNCTION_62();
  }

  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];

  v20 = static ExecuteResponse.complete()();
  (*(v18 + 8))(v17, v19, v20);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1DCB55544()
{
  v109 = v0;
  sub_1DCB7AC2C(v0[91]);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v2 = v0[91];
      v3 = v0[86];
      OUTLINED_FUNCTION_60_14();
      v0[92] = swift_getAssociatedTypeWitness();
      v4 = OUTLINED_FUNCTION_4_11();
      v0[93] = *(v2 + *(OUTLINED_FUNCTION_88_2(v4, v5, v6) + 48));
      sub_1DCC333DC(v2, v3);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v7 = sub_1DD0DD8FC();
      v0[94] = __swift_project_value_buffer(v7, qword_1EDE57E00);
      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v9))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v10, v11, "RCHFlow received direct input. Proceeding to app resolution.");
        OUTLINED_FUNCTION_80();
      }

      v12 = swift_task_alloc();
      v0[95] = v12;
      *v12 = v0;
      v12[1] = sub_1DCEE6620;
      OUTLINED_FUNCTION_33_5();

      return sub_1DCEB7328(v13, v14, v15);
    case 2u:
      v26 = v0[91];
      v27 = v0[90];
      v28 = v26[1];
      *v27 = *v26;
      v27[1] = v28;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1DCB7C864(v27);
    case 4u:
      v55 = v0[91];
      v56 = v0[83];
      OUTLINED_FUNCTION_60_14();
      swift_getAssociatedTypeWitness();
      v57 = OUTLINED_FUNCTION_6_0();
      type metadata accessor for RCHFlowSharedData(v57, v58, v59, v60);
      OUTLINED_FUNCTION_6_0();
      sub_1DD0DE97C();
      v61 = OUTLINED_FUNCTION_4_11();
      v64 = OUTLINED_FUNCTION_88_2(v61, v62, v63);
      v65 = *(v55 + *(v64 + 48));
      sub_1DCC333DC(v55, v56);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v66 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v66, qword_1EDE57E00);
      v67 = sub_1DD0DD8EC();
      v68 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v69);
        _os_log_impl(&dword_1DCAFC000, v67, v68, "RCHFlow is replanning based on new input", v1, 2u);
        OUTLINED_FUNCTION_37();
      }

      v70 = v0[90];
      v71 = v0[83];

      v72 = *(v64 + 48);
      sub_1DCEED3F8(v71, v70, type metadata accessor for Input);
      *(v70 + v72) = v65;
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 5u:
      v73 = v0[91];
      v74 = v0[85];
      OUTLINED_FUNCTION_60_14();
      swift_getAssociatedTypeWitness();
      v75 = OUTLINED_FUNCTION_6_0();
      type metadata accessor for RCHFlowSharedData(v75, v76, v77, v78);
      OUTLINED_FUNCTION_6_0();
      sub_1DD0DE97C();
      v79 = OUTLINED_FUNCTION_80_8();
      v82 = *(v73 + *(OUTLINED_FUNCTION_88_2(v79, v80, v81) + 48));
      v0[97] = v82;
      sub_1DCC333DC(v73, v74);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v83 = sub_1DD0DD8FC();
      v0[98] = __swift_project_value_buffer(v83, qword_1EDE57E00);
      v84 = sub_1DD0DD8EC();
      v85 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v85))
      {
        v86 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v86);
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v87, v88, "RCHFlow received input. Attempting to extract intent.");
        OUTLINED_FUNCTION_37();
      }

      v89 = v0[87];
      v90 = v0[85];
      v91 = v0[84];
      v92 = v0[82];
      v93 = v0[81];
      v94 = v0[77];
      v95 = v0[71];

      OUTLINED_FUNCTION_2_94();
      sub_1DCEED3F8(v90, v91, v96);
      v97 = (*(v93 + 80) + 40) & ~*(v93 + 80);
      v98 = swift_allocObject();
      v0[99] = v98;
      v98[2] = v94;
      v98[3] = v89;
      v98[4] = v95;
      sub_1DCC333DC(v91, v98 + v97);
      *(v98 + ((v92 + v97 + 7) & 0xFFFFFFFFFFFFFFF8)) = v82;
      sub_1DD0DCF8C();
    case 6u:
      *v0[90] = *v0[91];
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 8u:
      v19 = v0[91];
      v20 = *v19;
      v0[107] = *v19;
      v21 = v19[1];
      v0[108] = v21;
      v22 = v19[2];
      v0[109] = v22;
      v0[57] = v20;
      v0[58] = v21;
      v0[59] = v22;
      v23 = swift_task_alloc();
      v0[110] = v23;
      *v23 = v0;
      v23[1] = sub_1DCEE6E0C;
      OUTLINED_FUNCTION_33_5();

      return sub_1DCEB65FC(v24);
    case 0xAu:
      v29 = v0[91];
      v30 = v29[2];
      v31 = *v29 >> 62;
      if (v31)
      {
        if (v31 == 1)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v32 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
          v33 = sub_1DD0DD8EC();
          v34 = sub_1DD0DE6DC();
          if (!OUTLINED_FUNCTION_44_22(v34))
          {
            goto LABEL_49;
          }

          v35 = "RCHFlow is in an error state. Exiting...";
        }

        else
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v101 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v101, qword_1EDE57E00);
          v33 = sub_1DD0DD8EC();
          v102 = sub_1DD0DE6DC();
          if (!OUTLINED_FUNCTION_44_22(v102))
          {
LABEL_50:

            static ExecuteResponse.complete()();
            OUTLINED_FUNCTION_4_95();

            OUTLINED_FUNCTION_29();
            OUTLINED_FUNCTION_33_5();

            __asm { BRAA            X1, X16 }
          }

          v35 = "RCHFlow was cancelled. Exiting...";
        }
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v99 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v99, qword_1EDE57E00);
        v33 = sub_1DD0DD8EC();
        v100 = sub_1DD0DE6DC();
        if (!OUTLINED_FUNCTION_44_22(v100))
        {
          goto LABEL_49;
        }

        v35 = "RCHFlow complete. Exiting...";
      }

      v103 = OUTLINED_FUNCTION_50_0();
      *v103 = 0;
      _os_log_impl(&dword_1DCAFC000, v33, v1, v35, v103, 2u);
      OUTLINED_FUNCTION_80();
LABEL_49:
      v104 = OUTLINED_FUNCTION_20();
      sub_1DCB070E0(v104, v105, v30);
      goto LABEL_50;
    case 0xBu:
      v36 = *v0[91];
      v0[112] = v36;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v37 = sub_1DD0DD8FC();
      v0[113] = OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
      v38 = v36;
      v39 = sub_1DD0DD8EC();
      v40 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_151();
        v42 = OUTLINED_FUNCTION_83();
        v108 = v42;
        *v41 = 136315138;
        swift_getErrorValue();
        v43 = sub_1DD0DF18C();
        v45 = sub_1DCB10E9C(v43, v44, &v108);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1DCAFC000, v39, v40, "RCHFlow attempting to send error dialog for error: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37();
      }

      v46 = v0[71];
      __swift_project_boxed_opaque_existential_1((v46 + *(*v46 + 136)), *(v46 + *(*v46 + 136) + 24));
      v47 = swift_task_alloc();
      v0[114] = v47;
      *(v47 + 16) = v46;
      *(v47 + 24) = v36;
      v48 = swift_task_alloc();
      v0[115] = v48;
      *v48 = v0;
      v48[1] = sub_1DCEE70E0;
      OUTLINED_FUNCTION_33_5();

      return sub_1DCB63BBC(v49, v50, v51, v52, v53);
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v18 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCB56628()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB56670()
{
  v2 = type metadata accessor for Input(0);
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);

  sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 8))(v0 + v3);
  v5 = (v0 + v3 + *(v2 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v14 + 8))(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_17;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v15 = *v5;
      goto LABEL_23;
    case 6u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v16 + 8))(v5);
      v17 = type metadata accessor for USOParse(0);
      v18 = *(v17 + 20);
      v19 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v19))
      {
        OUTLINED_FUNCTION_112();
        (*(v20 + 8))(v5 + v18, v1);
      }

      v13 = *(v17 + 24);
      goto LABEL_16;
    case 7u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v7 + 8))(v5);
      v8 = type metadata accessor for USOParse(0);
      v9 = *(v8 + 20);
      v10 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v10))
      {
        OUTLINED_FUNCTION_112();
        (*(v11 + 8))(v5 + v9, v1);
      }

      OUTLINED_FUNCTION_9_23(*(v8 + 24));

      v12 = type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_9_23(v12[5]);

      OUTLINED_FUNCTION_9_23(v12[6]);

      v13 = v12[7];
LABEL_16:
      OUTLINED_FUNCTION_9_23(v13);
LABEL_17:

      break;
    case 8u:
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v21 + 8))(v5);
      v22 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_9_23(v22[5]);

      v23 = v5 + v22[6];
      v24 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
      {
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v25 + 8))(v23);
        v26 = *(v24 + 20);
        v27 = sub_1DD0DB3EC();
        v33 = v26;
        v28 = v23 + v26;
        v29 = v27;
        if (!__swift_getEnumTagSinglePayload(v28, 1, v27))
        {
          OUTLINED_FUNCTION_112();
          (*(v30 + 8))(v23 + v33, v29);
        }
      }

      v15 = *(v5 + v22[7]);
LABEL_23:

      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v6 + 8))(v5);
      break;
    default:
      break;
  }

  v31 = (v0 + v3 + *(v2 + 28));
  if (v31[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  return swift_deallocObject();
}

void sub_1DCB56B14(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*(*(*v9 + 80) - 8) + 32))(v9 + *(*v9 + 96), a1);
  OUTLINED_FUNCTION_66();
  *(v9 + *(v17 + 104)) = a2;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a6, v9 + *(v18 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v9 + *(v19 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v9 + *(v20 + 128));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a5, v9 + *(v21 + 136));
  OUTLINED_FUNCTION_66();
  *(v9 + *(v22 + 144)) = a7;
  OUTLINED_FUNCTION_66();
  v24 = v9 + *(v23 + 152);
  *v24 = a8;
  *(v24 + 8) = a9;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 16) = 0;
  *(v24 + 40) = 0;
  OUTLINED_FUNCTION_49();
}

id sub_1DCB56C84()
{
  [v0 copy];
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
  if (swift_dynamicCast())
  {
    return v11;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v10 = v0;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    v7 = INIntent.debugDescriptionLite.getter();
    v9 = sub_1DCB10E9C(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Unexpected failure when cloning intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return v10;
}

uint64_t RCHChildFlowProducersAsync.needsValueFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t initializeWithCopy for CATINLRepresentationProducer.ProducerError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t sub_1DCB56EFC(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  sub_1DCB56B14(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t sub_1DCB56FE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 80, v3);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t sub_1DCB57028()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 96, v3);
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

uint64_t sub_1DCB57098()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 48, v3);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

_BYTE *storeEnumTagSinglePayload for ActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 119 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 119) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x89)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x88)
  {
    v6 = ((a2 - 137) >> 8) + 1;
    *result = a2 + 119;
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
        JUMPOUT(0x1DCB571A8);
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
          *result = a2 + 119;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB57244()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 112, v3);
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.deinit()
{
  SiriKitEvent.SiriKitEventBuilder.deinit();
  sub_1DCB0E9D8(v0 + 128, &dword_1ECCA3CE0, &unk_1DD0E4F80);

  sub_1DCB0E9D8(v0 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
  return v0;
}

void *OUTLINED_FUNCTION_250(void *result)
{
  v2 = *(v1 - 224);
  result[2] = *(v1 - 216);
  result[3] = v2;
  v3 = *(v1 - 248);
  result[4] = *(v1 - 232);
  result[5] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x89)
  {
    if (a2 + 119 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 119) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 120;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x78;
  v5 = v6 - 120;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  v13 = *v10;
  v19 = *v4;
  type metadata accessor for SiriKitEvent.SiriKitHybridEventBuilder();
  v14 = swift_allocObject();
  bzero(v14 + 2, 0xC0uLL);
  v29 = v14;
  if (v2)
  {
    v2(&v29);
    v14 = v29;
  }

  *v0 = v13;
  *(v0 + 8) = v8;
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_156((v14 + 2), &v28);
  *(v0 + 24) = v14[2];
  OUTLINED_FUNCTION_156((v14 + 3), &v27);
  v15 = v14[4];
  *(v0 + 32) = v14[3];
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_156((v14 + 16), &v26);
  sub_1DCB09970((v14 + 16), v0 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  OUTLINED_FUNCTION_156((v14 + 20), &v25);
  *(v0 + 80) = v14[20];
  OUTLINED_FUNCTION_156((v14 + 5), &v24);
  *(v0 + 88) = v14[5];
  OUTLINED_FUNCTION_156((v14 + 21), &v23);
  sub_1DCB09970((v14 + 21), v0 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  OUTLINED_FUNCTION_156((v14 + 8), &v22);
  v16 = v14[9];
  *(v0 + 136) = v14[8];
  *(v0 + 144) = v16;
  OUTLINED_FUNCTION_156((v14 + 10), &v21);
  v17 = v14[11];
  *(v0 + 152) = v14[10];
  *(v0 + 160) = v17;
  OUTLINED_FUNCTION_156((v14 + 12), &v20);
  v18 = v14[13];
  *(v0 + 168) = v14[12];
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB57634()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 24, v3);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

void sub_1DCB5769C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70(v2 + 40, a2);
  v4 = *(v2 + 40);
  *(v2 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[2] = a11;
  v12[3] = a12;
  v12[18] = 0;
}

uint64_t OUTLINED_FUNCTION_48_6()
{
}

uint64_t OUTLINED_FUNCTION_48_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD0DEFFC();
}

uint64_t OUTLINED_FUNCTION_48_13(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 24);
  *(v2 + 64) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_14()
{

  return sub_1DCB6B180(1701869940, 0xE400000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_48_15()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_48_20(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_48_22(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 0;
  *(v1 + 56) = a1;
}

uint64_t sub_1DCB578A0(uint64_t a1)
{
  *(v1 + 16) = sub_1DD0DDE9C();
  v3 = OBJC_IVAR____TtC11SiriKitFlow21IntentServicesAdapter_appIntentRegistry;
  sub_1DD0DD39C();
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t NLContextUpdate.weightedPromptTargetDomain.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.__deallocating_deinit()
{
  SiriKitEvent.SiriKitHybridEventBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB57994()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v151 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v150 = &v149 - v7;
  v167 = sub_1DD0DB93C();
  v181 = *(v167 - 8);
  v9 = MEMORY[0x1EEE9AC00](v167, v8);
  v163 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v166 = &v149 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v149 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA74C0, &qword_1DD0F8B38);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v149 - v19;
  v170 = sub_1DD0DB83C();
  v158 = *(v170 - 8);
  v22 = MEMORY[0x1EEE9AC00](v170, v21);
  v157 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v182 = &v149 - v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v153 = &v149 - v28;
  v29 = sub_1DD0DD61C();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1DD0DB8EC();
  v155 = *(v156 - 8);
  v34 = MEMORY[0x1EEE9AC00](v156, v33);
  v154 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v161 = &v149 - v37;
  sub_1DD0DB8DC();
  v38 = *(v0 + 40);
  if (v38)
  {
    v39 = *(v0 + 32);

    sub_1DD0DB85C();
    sub_1DD0DB84C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DD0E07C0;
    *(v40 + 32) = v39;
    *(v40 + 40) = v38;
    sub_1DD0DB86C();
    v42 = *(v0 + 48);
    if (v42)
    {

      v42 = sub_1DD0DB8AC();
    }

    if (*(v0 + 24))
    {
      MEMORY[0x1EEE9AC00](v42, v41);
      v148 = v0;
      sub_1DCB58C90(sub_1DCB59498, (&v149 - 4), v43);
    }

    v160 = 0;
    sub_1DD0DB89C();
  }

  else
  {
    v160 = 0;
  }

  v45 = *(v0 + 88);
  v44 = *(v0 + 96);
  if (v44)
  {

    sub_1DD0DB85C();
    sub_1DD0DB84C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1DD0E07C0;
    *(v46 + 32) = v45;
    *(v46 + 40) = v44;
    sub_1DD0DB86C();
    if ((*(v0 + 72) & 1) == 0)
    {
      v47 = *(v0 + 64);
      if (v47 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v47 <= 0x7FFFFFFF)
      {
        sub_1DD0DD62C();
        sub_1DD0DB88C();
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_73;
    }

LABEL_13:
    if (*(v0 + 80))
    {

      sub_1DD0DB8AC();
    }

    v48 = sub_1DD0DB8CC();
    if (*(v0 + 56))
    {
      MEMORY[0x1EEE9AC00](v48, v49);
      v148 = v0;
      v50 = v160;
      sub_1DCB58C90(sub_1DCB58F84, (&v149 - 4), v51);
      v160 = v50;
    }

    sub_1DD0DB89C();
  }

  v52 = *(v0 + 192);
  if (v52)
  {
    v180 = v44;
    v53 = *(v0 + 184);

    sub_1DD0DB84C();
    sub_1DD0DB85C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1DD0E07C0;
    *(v54 + 32) = v53;
    *(v54 + 40) = v52;
    sub_1DD0DB86C();
    v56 = *(v0 + 160);
    if (v56)
    {

      v56 = sub_1DD0DB8AC();
    }

    if (*(v0 + 168))
    {
      MEMORY[0x1EEE9AC00](v56, v55);
      v148 = v0;
      v57 = v160;
      sub_1DCB58C90(sub_1DCB59498, (&v149 - 4), v58);
      v160 = v57;
    }

    sub_1DD0DB89C();
    if (*(v0 + 280))
    {
      v59 = v181;
      goto LABEL_28;
    }

    v183 = v53;
    v184 = v52;
    v187 = 46;
    v188 = 0xE100000000000000;
    sub_1DCB1C4D8();
    v112 = sub_1DD0DEA0C();
    sub_1DCB1D5C0(v112);
    v114 = v113;

    if (v114)
    {

      sub_1DCB598EC(1);
      v115 = sub_1DD0DE98C();
      v117 = v116;

      v118 = sub_1DCB594B0(1uLL);
      v187 = v115;
      v188 = v117;
      v183 = v118;
      v184 = v119;
      v185 = v120;
      v186 = v121;
      sub_1DCB59970();

      sub_1DD0DE11C();

      sub_1DD0DB8BC();
      v59 = v181;
      goto LABEL_30;
    }

    v44 = v180;
    v59 = v181;
    if (v180)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v59 = v181;
    if (*(v0 + 280))
    {
LABEL_28:

LABEL_29:
      sub_1DD0DB8BC();
      goto LABEL_30;
    }

    if (v44)
    {
LABEL_63:
      v183 = v45;
      v184 = v44;
      v187 = 46;
      v188 = 0xE100000000000000;
      sub_1DCB1C4D8();
      v122 = sub_1DD0DEA0C();
      sub_1DCB1D5C0(v122);
      v124 = v123;

      if (v124)
      {

        sub_1DCB598EC(1);
        v125 = v59;
        v126 = sub_1DD0DE98C();
        v128 = v127;

        v129 = sub_1DCB594B0(1uLL);
        v187 = v126;
        v188 = v128;
        v59 = v125;
        v183 = v129;
        v184 = v130;
        v185 = v131;
        v186 = v132;
        sub_1DCB59970();

        sub_1DD0DE11C();

        goto LABEL_29;
      }
    }
  }

  v32 = v59;
  if (qword_1EDE4F900 != -1)
  {
LABEL_73:
    swift_once();
  }

  v133 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v133, qword_1EDE57E00);
  v134 = sub_1DD0DD8EC();
  v135 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_1DCAFC000, v134, v135, "NLContextUpdate currentDomainName, weightedPromptTargetDomain, and disambiguationPromptTargetDomain are all nil. The previous domain for the NL context will not be set.", v136, 2u);
    MEMORY[0x1E12A8390](v136, -1, -1);
  }

  v59 = v32;
LABEL_30:
  v60 = *(v1 + 104);
  if (v60)
  {
    v61 = 0;
    v168 = *(v60 + 16);
    v165 = (v59 + 16);
    v164 = (v59 + 8);
    v169 = (v158 + 32);
    v159 = MEMORY[0x1E69E7CC0];
    v62 = v60 + 64;
    v176 = v60;
    v162 = v20;
    v152 = v60 + 64;
LABEL_32:
    v63 = (v62 + 96 * v61);
    while (v168 != v61)
    {
      if (v61 >= *(v60 + 16))
      {
        __break(1u);
        goto LABEL_70;
      }

      v64 = *(v63 - 4);
      v65 = *(v63 - 3);
      v66 = *(v63 - 2);
      v67 = *(v63 - 1);
      v68 = *v63;
      v69 = v63[1];
      v70 = v63[2];
      v71 = v63[3];
      v175 = v61;
      v72 = v20;
      v73 = v16;
      v75 = v63[4];
      v74 = v63[5];
      v76 = v63[6];
      v77 = v63[7];
      v179 = v64;
      v180 = v69;
      v171 = v67;
      v172 = v66;
      v177 = v68;
      sub_1DCB2502C(v64, v65, v66, v67, v68, v69);
      v178 = v70;
      v173 = v71;
      v174 = v75;
      v78 = v75;
      v16 = v73;
      v20 = v72;
      v60 = v176;
      v181 = v77;
      sub_1DCB2502C(v70, v71, v78, v74, v76, v77);
      sub_1DD0DB82C();
      if (v65 != 1)
      {
        sub_1DD0DB92C();
        if (v180)
        {

          sub_1DD0DB91C();
        }

        if (v65)
        {

          sub_1DD0DB8FC();
        }

        v79 = v167;
        (*v165)(v166, v16, v167);
        sub_1DD0DB81C();
        (*v164)(v16, v79);
        v60 = v176;
      }

      v80 = v173;
      if (v173 != 1)
      {
        v81 = v163;
        sub_1DD0DB92C();
        if (v181)
        {

          sub_1DD0DB91C();
        }

        if (v80)
        {

          sub_1DD0DB8FC();
        }

        v82 = v167;
        (*v165)(v166, v81, v167);
        sub_1DD0DB80C();
        (*v164)(v81, v82);
        v20 = v162;
        v60 = v176;
      }

      v83 = *v169;
      v84 = v170;
      (*v169)(v20, v182, v170);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v84);
      sub_1DCB22A50(v179, v65, v172, v171, v177, v180);
      sub_1DCB22A50(v178, v80, v174, v74, v76, v181);
      if (__swift_getEnumTagSinglePayload(v20, 1, v84) != 1)
      {
        v85 = v153;
        v86 = v170;
        v83(v153, v20, v170);
        v83(v157, v85, v86);
        v87 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v175;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DCE18870();
          v87 = v92;
        }

        v90 = *(v87 + 16);
        if (v90 >= *(v87 + 24) >> 1)
        {
          sub_1DCE18870();
          v87 = v93;
        }

        v61 = v89 + 1;
        *(v87 + 16) = v90 + 1;
        v91 = (*(v158 + 80) + 32) & ~*(v158 + 80);
        v159 = v87;
        v83((v87 + v91 + *(v158 + 72) * v90), v157, v170);
        v62 = v152;
        goto LABEL_32;
      }

      sub_1DCB0E9D8(v20, &unk_1ECCA74C0, &qword_1DD0F8B38);
      v63 += 12;
      v61 = v175 + 1;
    }
  }

  sub_1DD0DB87C();
  if (qword_1EDE4F900 != -1)
  {
LABEL_70:
    swift_once();
  }

  v94 = sub_1DD0DD8FC();
  v95 = __swift_project_value_buffer(v94, qword_1EDE57E00);
  v96 = sub_1DD0DD8EC();
  v97 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v183 = v99;
    *v98 = 136315138;
    v100 = v161;
    swift_beginAccess();
    sub_1DCB4D8F4(&qword_1EDE464D8, MEMORY[0x1E69D1500]);
    v101 = v156;
    v102 = sub_1DD0DD64C();
    v104 = sub_1DCB10E9C(v102, v103, &v183);

    *(v98 + 4) = v104;
    _os_log_impl(&dword_1DCAFC000, v96, v97, "Produced prompt context: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1E12A8390](v99, -1, -1);
    MEMORY[0x1E12A8390](v98, -1, -1);

    v105 = v155;
    v106 = v154;
  }

  else
  {

    v101 = v156;
    v105 = v155;
    v106 = v154;
    v100 = v161;
  }

  swift_beginAccess();
  (*(v105 + 16))(v106, v100, v101);
  sub_1DCB4D8F4(&qword_1EDE464D8, MEMORY[0x1E69D1500]);
  v107 = v160;
  v108 = sub_1DD0DD63C();
  if (v107)
  {

    (*(v105 + 8))(v106, v101);
    v137 = *(v94 - 8);
    v138 = v150;
    (*(v137 + 16))(v150, v95, v94);
    __swift_storeEnumTagSinglePayload(v138, 0, 1, v94);
    v139 = v138;
    v140 = v151;
    sub_1DCB09910(v139, v151, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v140, 1, v94) == 1)
    {
      sub_1DCB0E9D8(v151, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v141 = sub_1DD0DD8EC();
      v142 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v189 = v144;
        *v143 = 136315650;
        v145 = sub_1DD0DEC3C();
        v147 = sub_1DCB10E9C(v145, v146, &v189);

        *(v143 + 4) = v147;
        *(v143 + 12) = 2048;
        *(v143 + 14) = 213;
        *(v143 + 22) = 2080;
        *(v143 + 24) = sub_1DCB10E9C(0xD00000000000002BLL, 0x80000001DD11E890, &v189);
        _os_log_impl(&dword_1DCAFC000, v141, v142, "FatalError at %s:%lu - %s", v143, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v144, -1, -1);
        MEMORY[0x1E12A8390](v143, -1, -1);
      }

      (*(v137 + 8))(v151, v94);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000002BLL, 0x80000001DD11E890);
  }

  v109 = v108;
  v110 = *(v105 + 8);
  v110(v106, v101);
  v110(v100, v101);
  return v109;
}

uint64_t sub_1DCB58C90(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v36[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42C0, &qword_1DD0EB7B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = sub_1DD0DB93C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  v35 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v30 - v17;
  v32 = v18;
  v19 = *(a3 + 16);
  v34 = (v18 + 32);
  v20 = (a3 + 40);
  v21 = MEMORY[0x1E69E7CC0];
  v33 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = *v20;
      v36[0] = *(v20 - 1);
      v36[1] = v22;

      a1(v36);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_1DCCE3EFC(v9);
      }

      else
      {
        v23 = v10;
        v24 = *v34;
        v25 = v31;
        (*v34)(v31, v9, v23);
        v24(v35, v25, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DCB59728();
          v21 = v27;
        }

        v26 = *(v21 + 16);
        if (v26 >= *(v21 + 24) >> 1)
        {
          sub_1DCB59728();
          v21 = v28;
        }

        *(v21 + 16) = v26 + 1;
        v24((v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26), v35, v23);
        v10 = v23;
        a1 = v33;
      }

      v20 += 2;
      if (!--v19)
      {
        return v21;
      }
    }
  }

  return v21;
}

uint64_t sub_1DCB58F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCB58FA0(*a1, a1[1], a2);
  sub_1DD0DB93C();
  v2 = OUTLINED_FUNCTION_61_0();
  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_1DCB58FA0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD0DB93C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_151();
    v36 = OUTLINED_FUNCTION_83();
    *v17 = 136315138;
    *(v17 + 4) = OUTLINED_FUNCTION_31_20();
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Converting %s to semantic value", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  sub_1DD0DB92C();
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = sub_1DD0DE1AC();

  if ((v19 & 1) == 0)
  {
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a3;
      v34 = OUTLINED_FUNCTION_151();
      v38 = OUTLINED_FUNCTION_83();
      *v34 = 136315138;
      *(v34 + 4) = OUTLINED_FUNCTION_31_20();
      _os_log_impl(&dword_1DCAFC000, v31, v32, "The responseValue=%s cannot be converted to a SemanticValue. It doesn't have prefix 'com.apple.siri.nl'", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_80();
      a3 = v33;
      OUTLINED_FUNCTION_80();
    }

    goto LABEL_19;
  }

  v35 = v6;
  v20 = sub_1DD0DE0CC();
  v21 = sub_1DCB594B0(v20);
  MEMORY[0x1E12A66E0](v21);

  sub_1DCB1C4D8();
  v22 = sub_1DD0DEA0C();

  if (v22[2] <= 2uLL)
  {

    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_151();
      v37 = OUTLINED_FUNCTION_83();
      *v25 = 136315138;
      *(v25 + 4) = OUTLINED_FUNCTION_31_20();
      _os_log_impl(&dword_1DCAFC000, v23, v24, "The responseValue=%s seems malformed. It should be of type 'com.apple.siri.nl.OntologyNodePojoClassName.InnerClass.serializedValue'", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    if (!v22[2])
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v26 = a3;
  v27 = v22[4];
  v28 = v22[5];

  MEMORY[0x1E12A6780](v27, v28);

  sub_1DD0DB91C();

  MEMORY[0x1E12A6780](36, 0xE100000000000000);

  if (v22[2] < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v22[6];
  v30 = v22[7];

  MEMORY[0x1E12A6780](v29, v30);

  sub_1DD0DB90C();
  if (v22[2] >= 3uLL)
  {

    sub_1DD0DB8FC();
    a3 = v26;
    v6 = v35;
LABEL_19:
    (*(v8 + 32))(a3, v13, v6);
    return;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_1DCB594B0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_41_20();
    if ((v4 & 0x2000000000000000) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = OUTLINED_FUNCTION_42_23(v2, v3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      sub_1DD0DE1EC();
      OUTLINED_FUNCTION_35_26();
      return OUTLINED_FUNCTION_40_21();
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_3(uint64_t a1)
{

  return sub_1DD0DE02C();
}

void OUTLINED_FUNCTION_63_4()
{
}

void OUTLINED_FUNCTION_63_6()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
}

uint64_t OUTLINED_FUNCTION_63_7(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_63_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_63_13(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
}

uint64_t OUTLINED_FUNCTION_63_15()
{

  return sub_1DCF17518(v0, v1);
}

void OUTLINED_FUNCTION_63_16()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_63_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return swift_allocObject();
}

void sub_1DCB59728()
{
  OUTLINED_FUNCTION_6_54();
  if (v4)
  {
    OUTLINED_FUNCTION_3_83();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_18_35();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_27(v2, v5, &qword_1ECCA7990, &qword_1DD0F98B8);
  OUTLINED_FUNCTION_21_26();
  sub_1DD0DB93C();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_19_32();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_80(v8);
    sub_1DCB5E9F0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_52();
  }
}

void *sub_1DCB597F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB598EC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_42_23(v1, v2);
    sub_1DD0DE1EC();
    OUTLINED_FUNCTION_35_26();
    return OUTLINED_FUNCTION_40_21();
  }

  return result;
}

unint64_t sub_1DCB59970()
{
  result = qword_1EDE4F220;
  if (!qword_1EDE4F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F220);
  }

  return result;
}

void NLContextUpdate.undoDirectInvocation.getter(uint64_t *a1@<X8>)
{
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[33];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1DCB599D8(v2, v3, v4);
}

void sub_1DCB599D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1DCB59A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NLContextUpdate.pommesContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLContextUpdate(0) + 128);

  return sub_1DCB59A1C(v3, a1);
}

uint64_t NLContextUpdate.contextUpdateScope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NLContextUpdate(0);
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t NLContextUpdate.restoreSessionForRequestId.getter()
{
  type metadata accessor for NLContextUpdate(0);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t storeEnumTagSinglePayload for ActionGroupTransition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DCB59B90()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {
    v5 = sub_1DCD3A300;
  }

  else
  {
    v5 = sub_1DCB59C94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCB59C94()
{
  OUTLINED_FUNCTION_42();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCB59CF0()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v2 + 696) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB59DFC()
{
  OUTLINED_FUNCTION_2_17();
  sub_1DCB42D14(v3, v4);
  OUTLINED_FUNCTION_19_5();
  v5 = v0[72];
  v6 = v0[71];
  sub_1DCB09910(v8 + *(v7 + 36), v6, &unk_1ECCAAEC0, &qword_1DD103A40);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_1DCB0E9D8(v0[71], &unk_1ECCAAEC0, &qword_1DD103A40);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_3();
    v10(v9);
    v1 = *(v2 + 56);
    __swift_project_boxed_opaque_existential_1((v2 + 32), v1);
    v11 = OUTLINED_FUNCTION_8_9();
    v12(v11);
    v13 = OUTLINED_FUNCTION_20();
    v14(v13);
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_26_1();
  if (v1)
  {
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_10_11();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_22_7();
    v15 = *(v6 + 16);
    sub_1DCB41F3C((v0 + 12), (v0 + 32));
    v22 = (v15 + *v15);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_14_9(v16);
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_1_10(v17);

    return v22(v19);
  }

  else
  {
    v21 = swift_task_alloc();
    v0[88] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_4_6(v21);

    return AceServiceInvokerAsync.submitAllSerial(_:executionSource:)();
  }
}

uint64_t AceServiceInvokerAsync.submitAllSerial(_:executionSource:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v4, v5, v6, v7);
  OUTLINED_FUNCTION_8();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_30_1(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_31_0(v10);

  return v13(v3, 1, v2, v1, v0);
}

uint64_t sub_1DCB5A140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCB5A1F0(a1, v5, a3);
}

uint64_t sub_1DCB5A1F0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 96) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB5A314()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB5A3A4(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCB5A444(a1);
}

uint64_t sub_1DCB5A444(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB5A84C(a1);
}

uint64_t sub_1DCB5A4E0()
{
  v25 = v0;
  v1 = v0[9];
  v2 = v1[2];
  v0[10] = v2;
  if (v2)
  {
    v3 = v1[3];
    v0[11] = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v1[5];
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 40);
      v7 = swift_unknownObjectRetain();
      v6(v7, v3, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v14 = sub_1DD0DD8FC();
    v0[12] = __swift_project_value_buffer(v14, qword_1EDE57E00);
    swift_unknownObjectRetain();
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      swift_getObjectType();
      v0[7] = v2;
      v19 = sub_1DD0DF0BC();
      v21 = sub_1DCB10E9C(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DCAFC000, v15, v16, "Running action: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v22 = swift_task_alloc();
    v0[13] = v22;
    *(v22 + 16) = v2;
    *(v22 + 24) = v3;
    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_1DCB5ABA0;

    return MEMORY[0x1EEE6DE38](v23);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "No more actions in action group. Action handling frame is complete", v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCB5A84C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB5A4E0, 0, 0);
}

uint64_t sub_1DCB5A874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  (*(a3 + 24))(sub_1DCB5AAF4, v12, ObjectType, a3);
}

uint64_t sub_1DCB5A9EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB5AA80(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCB5AAF4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);

  return sub_1DCB5AA80(a1);
}

uint64_t sub_1DCB5ABA0()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v2 = v5;
  *(v5 + 120) = v0;

  if (v0)
  {
    v3 = sub_1DCBFD028;
  }

  else
  {

    v3 = sub_1DCB5ACB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}