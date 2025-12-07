uint64_t sub_1DCFE4148()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD80D4(v3);
}

uint64_t sub_1DCFE41CC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCFD8208(v3, v4);
}

_BYTE *storeEnumTagSinglePayload for SiriLocationAccessCheckFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFE437C()
{
  result = qword_1ECCABDD0;
  if (!qword_1ECCABDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDD0);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_105_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1DCB10E9C(v12, v13, va);
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_107_6(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_109_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

void SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:)(char a1)
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(&v1);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1);
  swift_retain_n();
  sub_1DCB82888();
}

void SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)(char a1, void *a2)
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  swift_retain_n();
  sub_1DCB82888();
}

uint64_t LocationAccessFailureReason.debugDescription.getter()
{
  v1 = 0x68747541746F6E2ELL;
  if (*v0 != 1)
  {
    v1 = 0x656C65636E61632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t LocationAccessFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCFE47CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DCB4AE1C;

  return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)();
}

uint64_t sub_1DCFE487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3[33] = a1;
  v6 = sub_1DD0DB04C();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = type metadata accessor for OutputGenerationManifest(0);
  v3[38] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[39] = v7;
  *v7 = v3;
  v7[1] = sub_1DCFE49AC;

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a2, v4);
}

uint64_t sub_1DCFE49AC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 320) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCFE4AF4()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 320);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v5 = *(v0 + 320);
    OUTLINED_FUNCTION_151();
    v23 = OUTLINED_FUNCTION_10_0();
    *v3 = 136315138;
    v6 = [v5 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v7, v8, &v23);
    OUTLINED_FUNCTION_81_11();
    *(v3 + 1) = v6;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  v14 = [*(v0 + 320) dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v15 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v15))
  {
    OUTLINED_FUNCTION_41_13();
    if (v14)
    {
      MEMORY[0x1E12A72C0](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    OUTLINED_FUNCTION_103();

    v17 = [v14 fullPrint];

    v18 = sub_1DD0DDFBC();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v0 + 328) = v18;
  *(v0 + 336) = v20;
  v21 = swift_task_alloc();
  *(v0 + 344) = v21;
  *v21 = v0;
  v21[1] = sub_1DCFE4D3C;

  return static TCCTemplates.locationServicesSettingsLabel()();
}

uint64_t sub_1DCFE4D3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  OUTLINED_FUNCTION_76_17(v5, v6);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCFE4E38()
{
  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
  }

  OUTLINED_FUNCTION_26_37();
  v2 = qword_1EDE4EBE8;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  v26 = v2;
  *(v0 + v1[9]) = 256;
  v3 = OUTLINED_FUNCTION_52_29();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_10_79();
  *(v0 + v7) = MEMORY[0x1E69E7CC0];
  v8 = v1[29];
  v9 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v10 + 104))(v0 + v8, v9);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v15 = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_25(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  sub_1DCB67914();
}

uint64_t sub_1DCFE50BC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFE512C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 192));
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCFE5250()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 304);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = v3;
  v0[33] = v5;
  v0[34] = sub_1DD0DB04C();
  OUTLINED_FUNCTION_24_0();
  v0[35] = v6;
  v0[36] = OUTLINED_FUNCTION_38();
  v0[37] = type metadata accessor for OutputGenerationManifest(0);
  v0[38] = OUTLINED_FUNCTION_38();
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_1DCFE53E0;

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(v4, v2);
}

uint64_t sub_1DCFE53E0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 320) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DCFE5528()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 320);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v5 = *(v0 + 320);
    OUTLINED_FUNCTION_151();
    v23 = OUTLINED_FUNCTION_10_0();
    *v3 = 136315138;
    v6 = [v5 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v7, v8, &v23);
    OUTLINED_FUNCTION_81_11();
    *(v3 + 1) = v6;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  v14 = [*(v0 + 320) dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v15 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v15))
  {
    OUTLINED_FUNCTION_41_13();
    if (v14)
    {
      MEMORY[0x1E12A72C0](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    OUTLINED_FUNCTION_103();

    v17 = [v14 fullPrint];

    v18 = sub_1DD0DDFBC();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v0 + 328) = v18;
  *(v0 + 336) = v20;
  v21 = swift_task_alloc();
  *(v0 + 344) = v21;
  *v21 = v0;
  v21[1] = sub_1DCFE5770;

  return static TCCTemplates.locationServicesSettingsLabel()();
}

uint64_t sub_1DCFE5770()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  OUTLINED_FUNCTION_76_17(v5, v6);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCFE586C()
{
  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
  }

  OUTLINED_FUNCTION_26_37();
  v2 = qword_1EDE4EBE8;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  v26 = v2;
  *(v0 + v1[9]) = 256;
  v3 = OUTLINED_FUNCTION_52_29();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_10_79();
  *(v0 + v7) = MEMORY[0x1E69E7CC0];
  v8 = v1[29];
  v9 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v10 + 104))(v0 + v8, v9);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v15 = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_25(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  sub_1DCB67914();
}

uint64_t sub_1DCFE5AF0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 192));
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCFE5C14(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)();
}

uint64_t sub_1DCFE5CAC(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1DD0DB04C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for OutputGenerationManifest(0);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCFE5D9C, 0, 0);
}

void sub_1DCFE5D9C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[17] = v2;
  v0[18] = &off_1F58563F0;
  v0[14] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_103();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFE5EE8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 224) = v6;
  *(v7 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCFE6024()
{
  v40 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = *(v0 + 224);
  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v7 = *(v0 + 224);
    OUTLINED_FUNCTION_151();
    v39 = OUTLINED_FUNCTION_10_0();
    *v5 = 136315138;
    v8 = [v7 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v9, v10, &v39);
    OUTLINED_FUNCTION_81_11();
    *(v5 + 1) = v8;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
  }

  OUTLINED_FUNCTION_53_20();
  v16 = OUTLINED_FUNCTION_25_34();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_11_70();
  *(v1 + v20) = MEMORY[0x1E69E7CC0];
  v21 = *(v2 + 116);
  v22 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v23 + 104))(v1 + v21, v22);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v28 = __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_49_25(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_1DCB67914();
}

uint64_t sub_1DCFE6324()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFE6398()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCFE64B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 192);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0[19] = v1;
  v0[20] = sub_1DD0DB04C();
  OUTLINED_FUNCTION_24_0();
  v0[21] = v2;
  v0[22] = OUTLINED_FUNCTION_38();
  v0[23] = type metadata accessor for OutputGenerationManifest(0);
  v0[24] = OUTLINED_FUNCTION_38();
  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCFE65FC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[17] = v2;
  v0[18] = &off_1F58563F0;
  v0[14] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_103();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFE6748()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 224) = v6;
  *(v7 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCFE6884()
{
  v40 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = *(v0 + 224);
  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v7 = *(v0 + 224);
    OUTLINED_FUNCTION_151();
    v39 = OUTLINED_FUNCTION_10_0();
    *v5 = 136315138;
    v8 = [v7 catId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    OUTLINED_FUNCTION_87_3(v9, v10, &v39);
    OUTLINED_FUNCTION_81_11();
    *(v5 + 1) = v8;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
  }

  OUTLINED_FUNCTION_53_20();
  v16 = OUTLINED_FUNCTION_25_34();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_11_70();
  *(v1 + v20) = MEMORY[0x1E69E7CC0];
  v21 = *(v2 + 116);
  v22 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v23 + 104))(v1 + v21, v22);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  v28 = __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_49_25(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_1DCB67914();
}

uint64_t sub_1DCFE6B84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCFE6CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCFE487C(a1, a2, a3);
}

uint64_t sub_1DCFE6D64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return (sub_1DCFE5CAC)(a1, a2);
}

uint64_t sub_1DCFE6E1C()
{
  if (qword_1EDE47FC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDE57D20;
  if (*(qword_1EDE57D20 + 16) && (v1 = sub_1DCC5F8E4(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v5[3] = &type metadata for AFFeatureFlagDefinitions;
    v5[4] = sub_1DCFEBC10();
    v3 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

void sub_1DCFE6EE8()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFE7088(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v1 + 224);
  v3 = *(v1 + 232);
  *(v1 + 224) = *a1;
  v5 = *(v1 + 240);
  *(v1 + 240) = v2;
  sub_1DCFEB434(v4, v3, v5);

  sub_1DCFE6EE8();
}

uint64_t sub_1DCFE70CC()
{
  sub_1DCFE7148(v2);
  v0 = v2[0];

  return v0;
}

void sub_1DCFE7108(_BYTE *a1@<X8>)
{
  sub_1DCFE7148(v3);
  v2 = v3[1];

  *a1 = v2;
}

id sub_1DCFE7148@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 240) == 1)
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = v3 >> 8;
    v6 = v3 & 1;
    result = v4;
  }

  else
  {
    sub_1DCFEBBA8();
    result = swift_allocError();
    v4 = result;
    LOBYTE(v5) = 3;
    v6 = 1;
  }

  *a1 = v6;
  *(a1 + 1) = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DCFE71CC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCFE7220()
{
  v2 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 104) = OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFE759C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFE7694()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);
  sub_1DCFEB434(*(v0 + 112), *(v0 + 120), 0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCFE7704()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 144);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 112);
  if (v5)
  {
    v10 = OUTLINED_FUNCTION_151();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "#SiriLocationAccessGuardFlow execute - failed to issue response; error=%@", v10, 0xCu);
    sub_1DCB16D50(v11, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
    sub_1DCFEB434(v9, v8, 0);
  }

  else
  {
    sub_1DCFEB434(*(v0 + 112), *(v0 + 120), 0);
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v14();
}

void sub_1DCFE788C(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((~a1 & 0xF000000000000006) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      *v7 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_80();
    }

    sub_1DCFEBBA8();
    v12 = swift_allocError();
LABEL_7:
    v13 = 3;
LABEL_8:
    v14 = 1;
    goto LABEL_17;
  }

  if ((a1 >> 62) >= 2)
  {
    if (a1 >> 62 == 2)
    {
      v12 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1DCDCB08C(a1);
      sub_1DCBF4488(a1);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v27 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
      sub_1DCBF4488(a1);
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6EC();
      sub_1DCBB1234(a1);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_151();
        v31 = OUTLINED_FUNCTION_83();
        v53 = v31;
        *v30 = 136315138;
        sub_1DCBF4488(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        v32 = sub_1DD0DE02C();
        v34 = sub_1DCB10E9C(v32, v33, &v53);

        *(v30 + 4) = v34;
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v35, v36, "#SiriLocationAccessGuardFlow convertOutcomeFrom - error-LocationAuthorizationResult; error=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      sub_1DCBB1234(a1);

      goto LABEL_7;
    }

    if (a1 >> 1 != 0x6000000000000000)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v45 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6CC();
      if (OUTLINED_FUNCTION_5(v47))
      {
        v48 = OUTLINED_FUNCTION_50_0();
        *v48 = 0;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v49, v50, v51, v52, v48, 2u);
        OUTLINED_FUNCTION_80();
        sub_1DCBB1234(0xC000000000000008);
      }

      v12 = 0;
      v13 = 2;
      goto LABEL_8;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v37 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v38, v39))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_51();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCBB1234(a1);

    v12 = 0;
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v16 = a2 ^ 1;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v17 = v16 | a1;
    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      v21[1] = v17 & 1;
      OUTLINED_FUNCTION_51();
      _os_log_impl(v22, v23, v24, v25, v26, 8u);
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCBB1234(a1);

    v12 = 0;
    v14 = (v17 & 1) == 0;
    if (v17)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_17:
  *a3 = v14;
  *(a3 + 1) = v13;
  *(a3 + 8) = v12;
}

void sub_1DCFE7CC0()
{
  v2 = *(v1 + 16);
  sub_1DCB17CA0(v1 + 24, v23);
  sub_1DCB4F1DC(v1 + 184, v22, &qword_1ECCABDD8, &qword_1DD1092C8);
  sub_1DCB17CA0(v1 + 64, v21);
  sub_1DCB17CA0(v1 + 104, v20);
  v19[3] = &type metadata for AnalyticsSchemaLogger;
  v19[4] = &off_1F5875420;
  type metadata accessor for SiriLocationAccessCheckFlow();
  v3 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for AnalyticsSchemaLogger);
  v18[3] = &type metadata for AnalyticsSchemaLogger;
  v18[4] = &off_1F5875420;
  LOBYTE(v11) = v2;
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDF0, &unk_1DD1094D0);
  v4 = swift_allocObject();
  *(v4 + 60) = 0;
  sub_1DCFE359C(&v11, v4 + 16);
  sub_1DCFE35D4(&v11);
  *(v3 + 216) = v4;
  sub_1DCB17CA0(v23, v3 + 16);
  sub_1DCB4F1DC(v22, &v15, &qword_1ECCABDD8, &qword_1DD1092C8);
  if (v16)
  {
    sub_1DCAFF9E8(&v15, &v11);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E698D188]) init];
    v12 = &unk_1F5863648;
    v13 = &off_1F5863810;
    v6 = swift_allocObject();
    *&v11 = v6;
    v6[5] = sub_1DCB10E5C(0, &qword_1EDE461C8, 0x1E698D188);
    v6[6] = &off_1F5863490;
    v6[2] = v5;
    if (v16)
    {
      sub_1DCB16D50(&v15, &qword_1ECCABDD8, &qword_1DD1092C8);
    }
  }

  sub_1DCAFF9E8(&v11, v3 + 56);
  sub_1DCB17CA0(v21, v3 + 96);
  sub_1DCB17CA0(v20, v3 + 136);
  *(v3 + 176) = sub_1DCFD8488;
  *(v3 + 184) = 0;
  sub_1DCB17CA0(v18, &v11);
  __swift_mutable_project_boxed_opaque_existential_1(&v11, v12);
  v16 = &type metadata for AnalyticsSchemaLogger;
  v17 = &off_1F5875420;
  type metadata accessor for PermissionPromptSchemaLogger();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v15, &type metadata for AnalyticsSchemaLogger);
  *(v7 + 40) = &type metadata for AnalyticsSchemaLogger;
  *(v7 + 48) = &off_1F5875420;
  *(v7 + 56) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  *(v3 + 200) = v7;
  *&v11 = 0;
  v13 = &type metadata for FeatureFlagDefinitions.Core;
  v14 = &off_1F585CB38;
  BYTE8(v11) = 0;
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  *(v3 + 192) = ((*(v9 + 248))(&v11, v8, v9) & 1) == 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  sub_1DCB16D50(v22, &qword_1ECCABDD8, &qword_1DD1092C8);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  sub_1DCC4B20C(&v11);
  *(v3 + 208) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DCFEBB30;
  *(v10 + 24) = v1;
  sub_1DD0DCF8C();
}

void sub_1DCFE804C(unint64_t a1)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  sub_1DCDCB08C(a1);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  sub_1DCBB1234(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v14[0] = v7;
    *v6 = 136315138;
    v16 = a1;
    sub_1DCDCB08C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EB0, &qword_1DD0E9360);
    v8 = sub_1DD0DE02C();
    v10 = sub_1DCB10E9C(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "#SiriLocationAccessGuardFlow onAuthorizationResult - incoming authorizationResult=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v11 = *(v1 + 240);
  if (v11 == 2)
  {
    if (!*(v1 + 232) && *(v1 + 224) == 1)
    {
      v14[0] = a1;
      v14[1] = 0;
      v15 = 0;
      sub_1DCDCB08C(a1);
      sub_1DCFE7088(v14);
    }
  }

  else if (v11 == 1)
  {
    v12 = *(v1 + 224);
    v13 = *(v1 + 232);
    sub_1DCDCB08C(a1);
    sub_1DCFEB414(v12, v13, 1);
    sub_1DD0DCF8C();
  }

  sub_1DCDCB08C(a1);
  sub_1DD0DCF8C();
}

BOOL sub_1DCFE8480(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a2[1];
  v6 = *(a2 + 1);
  if (v3 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v3 != v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {
      v8 = v6;
      v9 = v4;
      v10 = sub_1DCD0632C(v4, v6);

      return v10 & 1;
    }

    return 0;
  }

  return !v6;
}

unint64_t sub_1DCFE8534()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DEC1C();

  if (v1)
  {
    v3 = 1818845542;
  }

  else
  {
    v3 = 1936941424;
  }

  MEMORY[0x1E12A6780](v3, 0xE400000000000000);

  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD129480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE28, &unk_1DD109720);
  v4 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v4);

  MEMORY[0x1E12A6780](0x3D726F727265203BLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
  v5 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v5);

  return 0xD000000000000010;
}

double sub_1DCFE8690@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DD0DB04C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  sub_1DD0DB03C();
  v9 = sub_1DD0DAFFC();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_1DCB4D8E8(v9, v11, v8);
  v13 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  sub_1DCE56BF0(v8);
  if (v14)
  {
    v7 = v14;
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_82_10();
  }

  else
  {
    v11 = 0;
  }

  [v13 setRefId_];

  v15 = v13;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  OUTLINED_FUNCTION_73_15();
  v12(v6, v2);
  sub_1DCB4D8E8(v11, v7, v15);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v17 = OUTLINED_FUNCTION_52_2(v16);
  v34 = xmmword_1DD0E15D0;
  *(v17 + 16) = xmmword_1DD0E15D0;
  *(v17 + 32) = v15;
  v18 = v15;
  sub_1DCB6BBC0(v17, v8);
  v19 = OUTLINED_FUNCTION_52_2(v16);
  *(v19 + 16) = v34;
  *(v19 + 32) = v8;
  v20 = type metadata accessor for AceOutput(0);
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  a1[3] = v20;
  a1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = *(v20 + 32);
  v31 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v32 + 104))(boxed_opaque_existential_1Tm + v30, v31);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v35, (boxed_opaque_existential_1Tm + 11));

  *(boxed_opaque_existential_1Tm + *(v20 + 40)) = 0;
  *boxed_opaque_existential_1Tm = v19;
  result = 0.0;
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  return result;
}

uint64_t sub_1DCFE89A0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 424) = v0;
  *(v1 + 432) = sub_1DD0DED7C();
  OUTLINED_FUNCTION_24_0();
  *(v1 + 440) = v4;
  v5 = OUTLINED_FUNCTION_38();
  *(v1 + 576) = *v3;
  *(v1 + 577) = *(v3 + 1);
  v6 = *(v3 + 8);
  *(v1 + 448) = v5;
  *(v1 + 456) = v6;
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFE8A60()
{
  OUTLINED_FUNCTION_51_4();
  v66 = v0;
  *(v0 + 16) = 0u;
  v1 = (v0 + 16);
  v2 = *(v0 + 576);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  if ((v2 & 1) == 0)
  {
    v16 = &dword_1DD0E0F78;
    sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
    *v1 = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_1DCB4F1DC(v0 + 16, v0 + 136, &qword_1ECCA1810, &dword_1DD0E0F78);
    v17 = *(v0 + 160);
    sub_1DCB16D50(v0 + 136, &qword_1ECCA1810, &dword_1DD0E0F78);
    if (!v17)
    {
      v18 = *(v0 + 424);
      v16 = v18[6];
      v19 = v18[7];
      __swift_project_boxed_opaque_existential_1(v18 + 3, v16);
      if ((*(v19 + 32))(v16, v19))
      {
        sub_1DCFE8690(v64);
        sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
        v20 = v64[1];
        *v1 = v64[0];
        *(v0 + 32) = v20;
        *(v0 + 48) = v65;
      }
    }

    sub_1DCB4F1DC(v0 + 16, v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
    if (*(v0 + 240))
    {
      sub_1DCAFF9E8((v0 + 216), v0 + 176);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      sub_1DCB17CA0(v0 + 176, v0 + 256);
      v22 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_151();
        v24 = OUTLINED_FUNCTION_10_0();
        *&v64[0] = v24;
        *v16 = 136315138;
        sub_1DCB17CA0(v0 + 256, v0 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_61_4();
        v25 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
        v27 = OUTLINED_FUNCTION_87_3(v25, v26, v64);

        *(v16 + 4) = v27;
        _os_log_impl(&dword_1DCAFC000, v22, v23, "#SiriLocationAccessGuardFlow issueResponse - output=%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_62();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 424) + 64), *(*(v0 + 424) + 88));
      OUTLINED_FUNCTION_24_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 560) = v56;
      *v56 = v57;
      OUTLINED_FUNCTION_1_133(v56);
      OUTLINED_FUNCTION_121_0();

      __asm { BRAA            X3, X16 }
    }

    sub_1DCB16D50(v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v46 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v48))
    {
      v49 = OUTLINED_FUNCTION_50_0();
      *v49 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v50, v51, v52, v53, v49, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_121_0();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0 + 577) != 2)
  {
    v28 = *(v0 + 456);
    if (v28)
    {
      v29 = v28;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v30 = sub_1DD0DD8FC();
      *(v0 + 520) = OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
      v31 = v28;
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_151();
        v35 = OUTLINED_FUNCTION_83();
        *&v64[0] = v35;
        *v34 = 136315138;
        *(v0 + 416) = v28;
        v36 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        v37 = sub_1DD0DE02C();
        v39 = sub_1DCB10E9C(v37, v38, v64);

        *(v34 + 4) = v39;
        OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v40, v41, "#SiriLocationAccessGuardFlow issueResponse - for error=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 424) + 144), *(*(v0 + 424) + 168));
      OUTLINED_FUNCTION_24_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 528) = v42;
      *v42 = v43;
      v42[1] = sub_1DCFE9AD4;
      OUTLINED_FUNCTION_121_0();

      __asm { BRAA            X4, X16 }
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 424) + 144), *(*(v0 + 424) + 168));
    OUTLINED_FUNCTION_24_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 544) = v60;
    *v60 = v61;
    v60[1] = sub_1DCFE9FD8;
    OUTLINED_FUNCTION_121_0();

    __asm { BRAA            X5, X16 }
  }

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  *v1 = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = sub_1DD0DD8FC();
  *(v0 + 464) = __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v5))
  {
    v6 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v6);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_62();
  }

  v12 = *(v0 + 424);

  __swift_project_boxed_opaque_existential_1((v12 + 104), *(v12 + 128));
  *(v0 + 472) = [objc_allocWithZone(MEMORY[0x1E69C7B18]) init];
  v13 = swift_task_alloc();
  *(v0 + 480) = v13;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v13 = v0;
  v13[1] = sub_1DCFE930C;
  OUTLINED_FUNCTION_121_0();

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCFE930C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v9 + 488) = v8;
  *(v9 + 496) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCFE9420()
{
  v21 = v0;
  v1 = *(v0 + 488);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_245())
  {
    v3 = *(v0 + 488);
    OUTLINED_FUNCTION_151();
    v20 = OUTLINED_FUNCTION_10_0();
    *v1 = 136315138;
    v4 = v3;
    v5 = [v4 description];
    v6 = sub_1DD0DDFBC();
    v8 = v7;

    v9 = sub_1DCB10E9C(v6, v8, &v20);

    *(v1 + 1) = v9;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_62();
  }

  sub_1DD0DF15C();
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  *v15 = v0;
  v15[1] = sub_1DCFE95D0;
  OUTLINED_FUNCTION_24();

  return sub_1DCFEAA30(v16, v17, v18, 0, 1);
}

uint64_t sub_1DCFE95D0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[56];
  v6 = v4[55];
  v7 = v4[54];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 512) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCFE9724()
{
  OUTLINED_FUNCTION_51_4();
  v49 = v1;

  OUTLINED_FUNCTION_44_32();
  OUTLINED_FUNCTION_42_31();
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_16_60();
    if (v4(v3))
    {
      sub_1DCFE8690(&v47);
      v5 = sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
      OUTLINED_FUNCTION_21_51(v5, v6, v7, v8, v9, v10, v11, v12, v13, v44, v45, v46, v14, v47, v48);
    }
  }

  sub_1DCB4F1DC(v1 + 16, v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v1 + 240))
  {
    sub_1DCAFF9E8((v1 + 216), v1 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
    sub_1DCB17CA0(v1 + 176, v1 + 256);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v17))
    {
      v18 = OUTLINED_FUNCTION_151();
      *&v47 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_62_15(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
      sub_1DD0DE02C();
      OUTLINED_FUNCTION_73_15();
      v19 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
      OUTLINED_FUNCTION_64_20(v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_82_10();
      *(v18 + 4) = v2;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v25, v26, v27, v28, v18, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
    }

    OUTLINED_FUNCTION_12_69();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v1 + 560) = v40;
    *v40 = v41;
    OUTLINED_FUNCTION_1_133(v40);
    OUTLINED_FUNCTION_20_36();
    OUTLINED_FUNCTION_56_24();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB16D50(v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v29 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v31))
  {
    v32 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v32);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v33, v34, v35, v36, v37, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_56_24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCFE9A58()
{
  OUTLINED_FUNCTION_42();

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFE9AD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCFE9BCC()
{
  OUTLINED_FUNCTION_51_4();
  v59 = v1;
  sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v3 = *(v1 + 352);
  *(v1 + 16) = *(v1 + 336);
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v1 + 368);
  sub_1DCB4F1DC(v1 + 16, v1 + 376, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v1 + 400))
  {

    sub_1DCB16D50(v1 + 376, &qword_1ECCA1810, &dword_1DD0E0F78);
  }

  else
  {
    sub_1DCB16D50(v1 + 376, &qword_1ECCA1810, &dword_1DD0E0F78);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6DC();
    v6 = OUTLINED_FUNCTION_5(v5);
    v7 = *(v1 + 456);
    if (v6)
    {
      v8 = OUTLINED_FUNCTION_50_0();
      *v8 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v9, v10, v11, v12, v8, 2u);
      OUTLINED_FUNCTION_92_0();
    }
  }

  OUTLINED_FUNCTION_44_32();
  OUTLINED_FUNCTION_42_31();
  if (!v0)
  {
    v13 = OUTLINED_FUNCTION_16_60();
    if (v14(v13))
    {
      sub_1DCFE8690(&v57);
      v15 = sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
      OUTLINED_FUNCTION_21_51(v15, v16, v17, v18, v19, v20, v21, v22, v23, v54, v55, v56, v24, v57, v58);
    }
  }

  sub_1DCB4F1DC(v1 + 16, v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v1 + 240))
  {
    sub_1DCAFF9E8((v1 + 216), v1 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
    sub_1DCB17CA0(v1 + 176, v1 + 256);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v27))
    {
      v28 = OUTLINED_FUNCTION_151();
      *&v57 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_62_15(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
      sub_1DD0DE02C();
      OUTLINED_FUNCTION_73_15();
      v29 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
      OUTLINED_FUNCTION_64_20(v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_82_10();
      *(v28 + 4) = v2;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v35, v36, v37, v38, v28, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
    }

    OUTLINED_FUNCTION_12_69();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v1 + 560) = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_1_133(v50);
    OUTLINED_FUNCTION_20_36();
    OUTLINED_FUNCTION_56_24();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB16D50(v1 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v39 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v41))
  {
    v42 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v42);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB16D50(v1 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_56_24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCFE9FD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 552) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCFEA0D0()
{
  OUTLINED_FUNCTION_51_4();
  v59 = v0;
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 88);
  sub_1DCB4F1DC(v0 + 16, v0 + 96, &qword_1ECCA1810, &dword_1DD0E0F78);
  v3 = *(v0 + 120);
  sub_1DCB16D50(v0 + 96, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (!v3)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  OUTLINED_FUNCTION_44_32();
  OUTLINED_FUNCTION_42_31();
  if (!v3)
  {
    v13 = OUTLINED_FUNCTION_16_60();
    if (v14(v13))
    {
      sub_1DCFE8690(&v57);
      v15 = sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
      OUTLINED_FUNCTION_21_51(v15, v16, v17, v18, v19, v20, v21, v22, v23, v54, v55, v56, v24, v57, v58);
    }
  }

  sub_1DCB4F1DC(v0 + 16, v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (*(v0 + 240))
  {
    sub_1DCAFF9E8((v0 + 216), v0 + 176);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
    sub_1DCB17CA0(v0 + 176, v0 + 256);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v27))
    {
      v28 = OUTLINED_FUNCTION_151();
      *&v57 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_62_15(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
      sub_1DD0DE02C();
      OUTLINED_FUNCTION_73_15();
      v29 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
      OUTLINED_FUNCTION_64_20(v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_82_10();
      *(v28 + 4) = v1;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v35, v36, v37, v38, v28, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    }

    OUTLINED_FUNCTION_12_69();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 560) = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_1_133(v50);
    OUTLINED_FUNCTION_20_36();
    OUTLINED_FUNCTION_56_24();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB16D50(v0 + 216, &qword_1ECCA1810, &dword_1DD0E0F78);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v39 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v41))
  {
    v42 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v42);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_56_24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCFEA4C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFEA5C0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCFEA638()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFEA6AC()
{
  OUTLINED_FUNCTION_42();

  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFEA728()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFEA79C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  sub_1DCB16D50(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t SiriLocationAccessGuardFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  sub_1DCB16D50(v0 + 184, &qword_1ECCABDD8, &qword_1DD1092C8);
  sub_1DCFEB434(*(v0 + 224), *(v0 + 232), *(v0 + 240));
  return v0;
}

uint64_t SiriLocationAccessGuardFlow.__deallocating_deinit()
{
  SiriLocationAccessGuardFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFEA944()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCFE71CC(v2);
}

uint64_t sub_1DCFEA9D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCFE70CC();
  *a1 = result;
  return result;
}

uint64_t sub_1DCFEAA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DD0DED6C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DCFEAB30, 0, 0);
}

uint64_t sub_1DCFEAB30()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1DD0DED7C();
  v5 = sub_1DCFEBB60(&qword_1ECCABDF8, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1DD0DF13C();
  sub_1DCFEBB60(&qword_1ECCABE00, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1DD0DED8C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DCFEACC4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1DCFEACC4()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v14();
  }
}

uint64_t sub_1DCFEAE60()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCFEAEC4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v18 = a9;
  v45[4] = &protocol witness table for RefreshableDeviceState;
  v45[3] = type metadata accessor for RefreshableDeviceState();
  v45[0] = a2;
  v44[3] = &type metadata for OutputPublishers;
  v44[4] = &off_1F5866A08;
  v44[0] = a3;
  v43[3] = type metadata accessor for RefreshableAceServiceInvoker();
  v43[4] = &protocol witness table for RefreshableAceServiceInvoker;
  v43[0] = a4;
  *(a10 + 16) = a1;
  sub_1DCB17CA0(v45, a10 + 24);
  sub_1DCB17CA0(v44, a10 + 64);
  sub_1DCB17CA0(v43, a10 + 104);
  sub_1DCB4F1DC(a9, a10 + 184, &qword_1ECCABDD8, &qword_1DD1092C8);
  sub_1DCB4F1DC(a5, &v39, &qword_1ECCABE10, &qword_1DD1094E8);
  if (v40)
  {
    sub_1DCAFF9E8(&v39, &v41);
    sub_1DCAFF9E8(&v41, a10 + 144);
  }

  else
  {
    sub_1DCB16D50(&v39, &qword_1ECCABE10, &qword_1DD1094E8);
    *(a10 + 168) = &type metadata for DefaultStrategy;
    *(a10 + 176) = &off_1F58757E8;
  }

  if (v10 == -1)
  {
    if (RefreshableDeviceState.isHomePod.getter())
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_23;
      }

      v31 = a9;
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "#SiriLocationAccessGuardFlow init - no support for NLv3+HomePod";
    }

    else
    {
      if (sub_1DCFE6E1C())
      {
        sub_1DCB16D50(a9, &qword_1ECCABDD8, &qword_1DD1092C8);
        sub_1DCB16D50(a5, &qword_1ECCABE10, &qword_1DD1094E8);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        *(a10 + 224) = 0;
        *(a10 + 232) = 0;
        v34 = 2;
LABEL_24:
        *(a10 + 240) = v34;
        goto LABEL_25;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v35, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_23:

        sub_1DCB16D50(v18, &qword_1ECCABDD8, &qword_1DD1092C8);
        sub_1DCB16D50(a5, &qword_1ECCABE10, &qword_1DD1094E8);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        *(a10 + 224) = xmmword_1DD109290;
        v34 = 1;
        goto LABEL_24;
      }

      v31 = a9;
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "#SiriLocationAccessGuardFlow - feature is OFF";
    }

    _os_log_impl(&dword_1DCAFC000, v29, v30, v33, v32, 2u);
    v36 = v32;
    v18 = v31;
    MEMORY[0x1E12A8390](v36, -1, -1);
    goto LABEL_23;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);
  sub_1DCFEB414(a6, a7, v10);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6EC();
  sub_1DCFEBBFC(a6, a7, v10);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v39 = v23;
    *v22 = 136315138;
    *&v41 = a6;
    *(&v41 + 1) = a7;
    v42 = v10;
    sub_1DCFEB414(a6, a7, v10);
    v24 = sub_1DD0DE02C();
    v38 = a5;
    v26 = sub_1DCB10E9C(v24, v25, &v39);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "#SiriLocationAccessGuardFlow - starting with overridden state=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A8390](v23, -1, -1);
    MEMORY[0x1E12A8390](v22, -1, -1);

    sub_1DCB16D50(a9, &qword_1ECCABDD8, &qword_1DD1092C8);
    v27 = v38;
  }

  else
  {

    sub_1DCB16D50(a9, &qword_1ECCABDD8, &qword_1DD1092C8);
    v27 = a5;
  }

  sub_1DCB16D50(v27, &qword_1ECCABE10, &qword_1DD1094E8);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  *(a10 + 224) = a6;
  *(a10 + 232) = a7;
  *(a10 + 240) = v10;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return a10;
}

id sub_1DCFEB414(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  if (!a3)
  {
    return sub_1DCDCB08C(result);
  }

  return result;
}

void sub_1DCFEB434(unint64_t a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1DCBB1234(a1);
  }
}

unint64_t sub_1DCFEB458()
{
  result = qword_1ECCABDE0;
  if (!qword_1ECCABDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDE0);
  }

  return result;
}

uint64_t sub_1DCFEB4AC(uint64_t a1, uint64_t a2)
{
  result = sub_1DCFEBB60(&qword_1ECCABDE8, a2, type metadata accessor for SiriLocationAccessGuardFlow, &protocol conformance descriptor for SiriLocationAccessGuardFlow);
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationAccessFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  v15 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_1DCB4AE1C;

  return v15(v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_24_0();
  v13 = (v9 + *v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1DCB4AD3C;

  return v13(v8, v6, v4, v2);
}

uint64_t dispatch thunk of SiriLocationAccessGuardFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v7 = (*(*v0 + 208) + **(*v0 + 208));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v3);
}

uint64_t sub_1DCFEBA34(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCFEB414(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for SiriLocationAccessGuardFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCFEB414(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCFEB434(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SiriLocationAccessGuardFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCFEB434(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCFEBB60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1DCFEBBA8()
{
  result = qword_1ECCABE08;
  if (!qword_1ECCABE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE08);
  }

  return result;
}

void sub_1DCFEBBFC(unint64_t a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1DCFEB434(a1, a2, a3);
  }
}

unint64_t sub_1DCFEBC10()
{
  result = qword_1EDE47FC0;
  if (!qword_1EDE47FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE47FC0);
  }

  return result;
}

uint64_t sub_1DCFEBC84(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_68_0();
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

_BYTE *sub_1DCFEBCD0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCFEBD84(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 8);
  v4 = v3;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t assignWithCopy for SiriLocationAccessGuardFlow.Outcome(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v4;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for SiriLocationAccessGuardFlow.Outcome(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t sub_1DCFEBE78()
{
  result = qword_1ECCABE18;
  if (!qword_1ECCABE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE18);
  }

  return result;
}

unint64_t sub_1DCFEBED0()
{
  result = qword_1ECCABE20;
  if (!qword_1ECCABE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_81_11()
{
}

uint64_t sub_1DCFEBF5C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = byte_1F5850450[v4++ + 32];
    v6 = "egy.buttonWhileSiri";
    v7 = 0xD000000000000049;
    switch(v5)
    {
      case 1:
        v7 = 0xD00000000000004ELL;
        v6 = ".firstTimePrompt/";
        break;
      case 2:
        v7 = 0xD000000000000053;
        v6 = "ionAccessPromptView";
        break;
      case 3:
        v7 = 0xD00000000000004FLL;
        v6 = "ationAccessStrategy.buttonOnce";
        break;
      default:
        break;
    }

    if (v7 == a1 && (v6 | 0x8000000000000000) == a2)
    {
      break;
    }

    v9 = sub_1DD0DF0AC();

    if (v9)
    {
      goto LABEL_14;
    }

    if (v4 == 4)
    {

      return 4;
    }
  }

LABEL_14:

  return v5;
}

const char *SiriNLUTypesFeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "SKESiriNLUTypesSDAAdoption";
  }

  else
  {
    return "SKESiriNLUTypesUserParseAdoption";
  }
}

uint64_t SiriNLUTypesFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  if (qword_1EDE4EFF0 != -1)
  {
    OUTLINED_FUNCTION_0_124();
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDE57DE8;
  if (*(qword_1EDE57DE8 + 16) && (v3 = sub_1DCC5F9DC(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7[3] = &type metadata for SiriNLUTypesFeatureFlag;
    v7[4] = sub_1DCFEC54C();
    LOBYTE(v7[0]) = v1;
    v5 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v5 & 1;
}

uint64_t SiriNLUTypesFeatureFlag.withForcedEnabled<A>(_:block:)(char a1, void (*a2)(uint64_t))
{
  v5 = *v2;
  if (qword_1EDE4EFF0 != -1)
  {
    OUTLINED_FUNCTION_0_124();
    swift_once();
  }

  swift_beginAccess();
  v6 = sub_1DCC17E88(v5, qword_1EDE57DE8);
  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = qword_1EDE57DE8;
  sub_1DCC607F4(a1 & 1, v5, isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v15, v16);
  qword_1EDE57DE8 = v17;
  v13 = swift_endAccess();
  a2(v13);
  return sub_1DCFEC2FC(v6, v5);
}

uint64_t sub_1DCFEC2FC(char a1, char a2)
{
  if (a1 == 2)
  {
    if (qword_1EDE4EFF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1DCC5F9DC(a2 & 1);
    if (v3)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v12 = qword_1EDE57DE8;
      qword_1EDE57DE8 = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27F0, &unk_1DD1097F0);
      sub_1DD0DEDCC();
      sub_1DCFEC6D4();
      sub_1DD0DEDEC();
      qword_1EDE57DE8 = v12;
    }
  }

  else
  {
    if (qword_1EDE4EFF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC607F4(a1 & 1, a2 & 1, isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, qword_1EDE57DE8, v14);
    qword_1EDE57DE8 = v13;
  }

  return swift_endAccess();
}

uint64_t SiriNLUTypesFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCFEC54C()
{
  result = qword_1EDE4EFE0;
  if (!qword_1EDE4EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4EFE0);
  }

  return result;
}

unint64_t sub_1DCFEC5A4()
{
  result = qword_1ECCABE30;
  if (!qword_1ECCABE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriNLUTypesFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFEC6D4()
{
  result = qword_1ECCABE38;
  if (!qword_1ECCABE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE38);
  }

  return result;
}

void sub_1DCFEC728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v11 - v8;
  sub_1DCB28B08(a3, &v11 - v8, &unk_1ECCAAB70, &qword_1DD0E17E0);
  v10 = sub_1DD0DE4BC();
  __swift_getEnumTagSinglePayload(v9, 1, v10);
  sub_1DD0DCF8C();
}

Swift::Void __swiftcall SiriSuggestionsBroker.warmupForRequest()()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_5_109();
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DCAFC000, oslog, v1, "SiriSuggestionsBroker no-op default warmupForRequest", v2, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }
}

uint64_t sub_1DCFECAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v36 = swift_task_alloc();
  *(v31 + 16) = v36;
  *v36 = v31;
  v36[1] = sub_1DCBCF08C;

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_73_2();
  v54 = v33;
  v52 = v34;
  v53 = v35;
  v51 = v36;
  OUTLINED_FUNCTION_3_121();
  OUTLINED_FUNCTION_24_0();
  v50 = v37 + *v37;
  v38 = swift_task_alloc();
  *(v32 + 32) = v38;
  *v38 = v32;
  v38[1] = sub_1DCFECCF8;
  OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_33_5();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, a31 + 32, v50, v51, v52, v53, v54, v31, a16, a17, a18, a19, a20, a21, a22, a23, v32);
}

uint64_t sub_1DCFECCF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_1DCFEEFD0;
  }

  else
  {
    v5 = sub_1DCFEEFC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCFECDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a11, uint64_t a13, uint64_t a14)
{
  v16 = swift_task_alloc();
  *(v12 + 16) = v16;
  *v16 = v12;
  v16[1] = sub_1DCC467A0;

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a11, a13, a14);
}

uint64_t SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 160) = a12;
  *(v13 + 168) = v12;
  *(v13 + 152) = a11;
  *(v13 + 136) = a10;
  *(v13 + 120) = a9;
  *(v13 + 104) = a7;
  *(v13 + 112) = a8;
  *(v13 + 88) = a5;
  *(v13 + 96) = a6;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  return OUTLINED_FUNCTION_5_113();
}

void sub_1DCFECF30()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v3 = *(v1 + 40);

  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_1DCFED090;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DCFED090()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFED1C4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v6();
  }
}

uint64_t sub_1DCFED1C4()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DCFED230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF9464C;

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)(a1);
}

uint64_t sub_1DCFED2DC()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_43();
  return v2();
}

uint64_t sub_1DCFED304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCF9464C;

  return SiriSuggestionsBroker.submitEngagement(for:requestId:)();
}

uint64_t sub_1DCFED3AC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_5_109();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Siri suggestions submit failed", v5, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t SiriSuggestionsBroker.doContinuousConversationsHint(requestId:applicationSessionId:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a4;
  v14[1] = a5;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = *(a7 + 64);

  v11(a1, a2, a3, v14, a6, a7);
}

void SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:dialogPhase:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1DCFED668;
  OUTLINED_FUNCTION_7_77();

  SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:dialogPhase:)();
}

{
  OUTLINED_FUNCTION_24_0();
  v4 = v0 + *v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCF9464C;
  OUTLINED_FUNCTION_7_77();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DCFED668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_1DCFED7EC;
  }

  else
  {
    v5 = sub_1DCFED76C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCFED76C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v2;
    sub_1DCBBF7D0(v2, v1);
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[1];

  return v4(v2);
}

void __swiftcall SuggestionContextData.init(dialogPhase:hasAdditionalCommands:patternId:)(SiriKitFlow::SuggestionContextData *__return_ptr retstr, Swift::String_optional dialogPhase, Swift::Bool hasAdditionalCommands, Swift::String_optional patternId)
{
  retstr->dialogPhase = dialogPhase;
  retstr->hasAdditionalCommands = hasAdditionalCommands;
  retstr->patternId = patternId;
}

id HintsUI.snippet.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HintsUI.init(snippet:supportingCommands:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1DCFEDA2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(a1 + 24, &v11, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v12)
  {
    sub_1DCB18FF0(&v11, a2);
  }

  else
  {
    sub_1DCB16D50(&v11, &qword_1ECCA54E8, &unk_1DD0F2080);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6EC();
    v8 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_5_109();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Siri suggestions (sync) has not been initialized in time. Ensure that setInstance (sync) has been called by the runtime prior to getting any client instance", v10, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1DCFEDC44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1DCB28B08(a1 + 24, v9, &qword_1ECCA54E8, &unk_1DD0F2080);
  v4 = v10;
  sub_1DCB16D50(v9, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v4)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Suggestions sync broker instance is already set. No need to reevaluate", v8, 2u);
      MEMORY[0x1E12A8390](v8, -1, -1);
    }
  }

  else
  {
    sub_1DCB17CA0(a2, v9);
    swift_beginAccess();
    sub_1DCFEE550(v9, a1 + 24);
    swift_endAccess();
  }
}

uint64_t SiriSuggestionsSyncBrokerProvider.__deallocating_deinit()
{
  sub_1DCB16D50(v0 + 24, &qword_1ECCA54E8, &unk_1DD0F2080);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFEDE4C()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return v0;
}

double sub_1DCFEDE90()
{
  type metadata accessor for SiriSuggestionsBrokerProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = 0.0;
  *(v0 + 137) = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  qword_1EDE4B4C0 = v0;
  return result;
}

uint64_t sub_1DCFEDED8()
{
  type metadata accessor for SiriSuggestionsSyncBrokerProvider();
  v0 = swift_allocObject();
  result = sub_1DCFEDE4C();
  off_1EDE4B4D8[0] = v0;
  return result;
}

uint64_t sub_1DCFEDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCFEDF60, 0, 0);
}

uint64_t sub_1DCFEDF60()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 96))();
  v1 = *(v0 + 112);
  if (*(v0 + 80))
  {
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    v2 = sub_1DCFEE028;
  }

  else
  {
    sub_1DCB16D50(v0 + 56, &qword_1ECCA54E8, &unk_1DD0F2080);
    v2 = sub_1DCFEE00C;
  }

  return MEMORY[0x1EEE6DFA0](v2, v1, 0);
}

uint64_t sub_1DCFEE028()
{
  OUTLINED_FUNCTION_42();
  sub_1DCFEE244(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCFEE090, 0, 0);
}

uint64_t sub_1DCFEE090()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 120))();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_1DCFEE0F8()
{
  v0 = objc_opt_self();
  result = [v0 isContinuousConversationSupported];
  if (result)
  {
    result = [v0 isIOSDeviceSupportingBargeIn];
    if (result)
    {
      sub_1DCFEEF84();
      v2 = sub_1DCFEE1C8(0xD00000000000001ELL, 0x80000001DD129590, 2);
      v3 = sub_1DD0DDF8C();
      v4 = [v2 BOOLForKey_];

      return (v4 ^ 1);
    }
  }

  return result;
}

id sub_1DCFEE1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DD0DDF8C();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

void sub_1DCFEE244(uint64_t a1)
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(v1 + 112, v8, &qword_1ECCA54E8, &unk_1DD0F2080);
  v3 = v9;
  sub_1DCB16D50(v8, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (v3)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_5_109();
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Suggestions async broker instance is already set. No need to reevaluate", v7, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }
  }

  else
  {
    sub_1DCB17CA0(a1, v8);
    swift_beginAccess();
    sub_1DCFEE550(v8, v1 + 112);
    swift_endAccess();
    if (qword_1EDE4B4D0 != -1)
    {
      swift_once();
    }

    sub_1DCFEDBEC();
  }
}

uint64_t SiriSuggestionsBrokerProvider.deinit()
{
  sub_1DCB16D50(v0 + 112, &qword_1ECCA54E8, &unk_1DD0F2080);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriSuggestionsBrokerProvider.__deallocating_deinit()
{
  sub_1DCB16D50(v0 + 112, &qword_1ECCA54E8, &unk_1DD0F2080);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DCFEE47C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCC467A0;

  return sub_1DCFEDF38(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCFEE550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54E8, &unk_1DD0F2080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_73_2();
  v54 = v33;
  v52 = v34;
  v53 = v35;
  v51 = v36;
  OUTLINED_FUNCTION_3_121();
  OUTLINED_FUNCTION_24_0();
  v50 = v37 + *v37;
  v38 = swift_task_alloc();
  *(v32 + 16) = v38;
  *v38 = v32;
  OUTLINED_FUNCTION_13_74(v38);
  OUTLINED_FUNCTION_7_77();
  OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_33_5();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, a31 + 24, v50, v51, v52, v53, v54, v31, a16, a17, a18, a19);
}

uint64_t dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_3_121();
  OUTLINED_FUNCTION_24_0();
  v22 = (v17 + *v17);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13_74(v19);

  return v22(v16, v15, v14, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_73_2();
  v55 = v32;
  v53 = v33;
  v54 = v34;
  v52 = v35;
  OUTLINED_FUNCTION_3_121();
  OUTLINED_FUNCTION_24_0();
  v51 = v36 + *v36;
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_11_0(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_13_74(v38);
  OUTLINED_FUNCTION_7_77();
  OUTLINED_FUNCTION_8_75();
  OUTLINED_FUNCTION_33_5();

  return v48(v40, v41, v42, v43, v44, v45, v46, v47, a31 + 40, v51, v52, v53, v54, v55, v31, a16, a17, a18, a19);
}

uint64_t dispatch thunk of SiriSuggestionsBroker.submitEngagement(for:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_24_0();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCF9464C;

  return v12(a1, a2, a3, a4);
}

uint64_t destroy for HintsUI(id *a1)
{
}

uint64_t assignWithCopy for HintsUI(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id *assignWithTake for HintsUI(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t destroy for SuggestionContextData()
{
}

uint64_t initializeWithCopy for SuggestionContextData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for SuggestionContextData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for SuggestionContextData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for SuggestionContextData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionContextData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCFEEEF0()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_8(v1);

  return v4(v3);
}

unint64_t sub_1DCFEEF84()
{
  result = qword_1EDE46138;
  if (!qword_1EDE46138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46138);
  }

  return result;
}

void SiriSuggestionsClient.submit(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a7;
  v34 = a1;
  v35 = a3;
  v36 = a4;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v33 - v21;
  v23 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  (*(v13 + 16))(v18, v8, a6);
  sub_1DCFEF494(a5, v37);
  v24 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v33;
  *(v27 + 4) = a6;
  *(v27 + 5) = v28;
  (*(v13 + 32))(&v27[v24], v18, a6);
  v29 = &v27[v25];
  v30 = v35;
  *v29 = v34;
  v29[1] = a2;
  v31 = &v27[v26];
  v32 = v36;
  *v31 = v30;
  v31[1] = v32;
  sub_1DCFEF4F8(v37, &v27[(v26 + 23) & 0xFFFFFFFFFFFFFFF8]);

  sub_1DCBC64A4();
}

uint64_t sub_1DCFEF1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = (*(v17 + 16) + **(v17 + 16));
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1DCFEF358;

  return v15(a5, a6, a7, a8);
}

uint64_t sub_1DCFEF358()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {

    v7 = sub_1DCFF21EC;
  }

  else
  {
    v7 = sub_1DCFEF460;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCFEF460()
{
  **(v0 + 16) = *(v0 + 32) != 0;
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1DCFEF494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1DCFEF4F8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1DCFEF510(uint64_t a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_0_1();
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);
  v17 = *(v1 + 16);
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DCB4AD3C;

  return sub_1DCFEF1F4(a1, v17, v9, v1 + v5, v11, v12, v13, v14);
}

uint64_t ProtectedSiriSuggestionsClient.__allocating_init(delegate:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1DCAFF9E8(a1, v2 + 24);
  return v2;
}

uint64_t ProtectedSiriSuggestionsClient.init(delegate:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  sub_1DCAFF9E8(a1, v1 + 24);
  return v1;
}

void sub_1DCFEF6F4(void *a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v2 = a1;
}

void sub_1DCFEF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD0DDDAC();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1DD0DDDFC();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = *(v5 + 16);
  if (v15)
  {
    sub_1DCFEF494(a5, v23);
    v16 = swift_allocObject();
    *(v16 + 16) = v5;
    *(v16 + 24) = a1;
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    *(v16 + 48) = a4;
    sub_1DCFEF4F8(v23, (v16 + 56));
    aBlock[4] = sub_1DCFF1B30;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DCF5B728;
    aBlock[3] = &block_descriptor_12;
    _Block_copy(aBlock);
    v17 = v15;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v21 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v21, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DCAFC000, v21, v19, "Trying to invoke methods on the Suggestions Client before it is assigned to the provider lifecycle. Please call SiriSuggestionsClientProvider.setInstance with this instance from the runtime initialization prior to using", v20, 2u);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }
}

uint64_t sub_1DCFEFB08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[6];
  v12 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v11);
  return (*(v12 + 8))(a2, a3, a4, a5, a6, v11, v12);
}

uint64_t sub_1DCFEFB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFEFBB4()
{
  v1 = v0[7];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v6 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1DCFEFCE8;
  v4 = OUTLINED_FUNCTION_55_2(v0[2]);

  return v6(v4);
}

uint64_t sub_1DCFEFCE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t ProtectedSiriSuggestionsClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFEFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AD3C;

  return sub_1DCFEFB98(a1, a2, a3, a4, a5);
}

uint64_t SiriSuggestionsClient.submitExecutionParam(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFEFF30()
{
  v1 = *(v0 + 96);
  v11 = *(v0 + 112);
  MEMORY[0x1E12A6780](*(v0 + 80), *(v0 + 88));
  *(v0 + 128) = 0xE800000000000000;
  v2 = v1[5];
  v9 = *(v1 + 3);
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  *(v0 + 40) = v9;
  *(v0 + 56) = v2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v3);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1DCFF00F8;
  v7 = OUTLINED_FUNCTION_55_2(*(v0 + 64));

  return v10(v7);
}

uint64_t sub_1DCFF00F8()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF21DC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t SiriSuggestionsClient.submitDialogTemplate(for:templatingResult:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v7 = *v6;
  *(v1 + 48) = v0;
  *(v1 + 56) = v7;
  *(v1 + 64) = *(v6 + 1);

  return MEMORY[0x1EEE6DFA0](sub_1DCFF02C8, 0, 0);
}

uint64_t sub_1DCFF02C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD0E07C0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20 = v4;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v6 = v21;
    v7 = *(v21 + 16);
    v8 = 16 * v7;
    v9 = (v2 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v21 + 24);

      if (v7 >= v12 >> 1)
      {
        sub_1DCB38954();
      }

      *(v21 + 16) = v7 + 1;
      v13 = v21 + v8;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
      v8 += 16;
      v9 += 28;
      ++v7;
      --v5;
    }

    while (v5);
    v4 = v20;
  }

  v22 = v4;
  sub_1DCBB9238(v6);
  v0[10] = v22;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1DCFF0474;
  v15 = OUTLINED_FUNCTION_55_2(v0[2]);

  return SiriSuggestionsClient.submit(for:dialogID:)(v15, v16, v22, v17, v18);
}

uint64_t sub_1DCFF0474()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF0598, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t sub_1DCFF0598()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t SiriSuggestionsClient.submit(for:dialogID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFF0610()
{
  v20 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);

  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x1E12A6960](v4, MEMORY[0x1E69E6158]);
    v11 = sub_1DCB10E9C(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DCB10E9C(v6, v5, &v19);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Submitting dialogID: %s for requestId: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v8, -1, -1);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  v18 = v0[12];
  v12 = v0[10];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  v0[6] = sub_1DCD4F0A8(&qword_1ECCA7D50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v0[7] = sub_1DCD4F0A8(&qword_1EDE46290, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v0[2] = v12;
  v13 = *(v18 + 16);

  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1DCFF0944;
  v15 = OUTLINED_FUNCTION_55_2(v0[8]);

  return v17(v15);
}

uint64_t sub_1DCFF0944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCF9CED0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t SiriSuggestionsClient.submitSiriKitIntent<A>(for:siriKitIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFF0A8C()
{
  OUTLINED_FUNCTION_10_80();
  v6 = (v0 + *v0);
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_12_70(v2);
  v4 = OUTLINED_FUNCTION_55_2(v3);

  return v6(v4);
}

uint64_t sub_1DCFF0BB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF21DC, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t SiriSuggestionsClient.submitSiriKitIntentResponse<A>(for:sirikitInResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFF0CFC()
{
  OUTLINED_FUNCTION_10_80();
  v6 = (v0 + *v0);
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_12_70(v2);
  v4 = OUTLINED_FUNCTION_55_2(v3);

  return v6(v4);
}

uint64_t sub_1DCFF0E24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFF0F48, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t sub_1DCFF0F48()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t SuggestionErrors.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCFF1048()
{
  v9[0] = sub_1DD0DE75C();
  v0 = *(v9[0] - 8);
  MEMORY[0x1EEE9AC00](v9[0], v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD0DE74C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1DD0DDDFC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1DCCDFED4();
  sub_1DD0DDDEC();
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DCFF2138(&qword_1EDE461B8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42B0, &qword_1DD0EB730);
  sub_1DCFF2180(&qword_1EDE46270, &qword_1ECCA42B0, &qword_1DD0EB730);
  sub_1DD0DEABC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v9[0]);
  result = sub_1DD0DE79C();
  qword_1ECCABE40 = result;
  return result;
}

double sub_1DCFF129C()
{
  qword_1ECCD27A8 = 0;
  result = 0.0;
  xmmword_1ECCD2788 = 0u;
  unk_1ECCD2798 = 0u;
  return result;
}

void *static SiriSuggestionsClientProvider.getInstance()()
{
  if (qword_1ECCA13D8 != -1)
  {
    OUTLINED_FUNCTION_1_134();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE48, &qword_1DD109A00);
  return sub_1DD0DE77C();
}

uint64_t sub_1DCFF1348@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA13E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1DCFF1F9C(&xmmword_1ECCD2788, &v7);
  if (v8)
  {
    return sub_1DCAFF9E8(&v7, a1);
  }

  sub_1DCFF200C(&v7);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Siri suggestions has not be initialized. Insure that setInstance has been called by the runtime prior to getting any client instance", v6, 2u);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  sub_1DCFF20E4();
  swift_allocError();
  return swift_willThrow();
}

void static SiriSuggestionsClientProvider.setInstance(client:)(uint64_t a1)
{
  if (qword_1ECCA13D8 != -1)
  {
    OUTLINED_FUNCTION_1_134();
    swift_once();
  }

  sub_1DCB17CA0(a1, v6);
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v6, v2 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DCFF1B44;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DCD1BF88;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6_79();
  aBlock[2] = v4;
  aBlock[3] = &block_descriptor_25;
  _Block_copy(aBlock);
  sub_1DD0DCF8C();
}

{
  if (qword_1ECCA13D8 != -1)
  {
    OUTLINED_FUNCTION_1_134();
    swift_once();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DCFF1B4C;
  *(v2 + 24) = a1;
  v4[4] = sub_1DCD2736C;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  OUTLINED_FUNCTION_6_79();
  v4[2] = v3;
  v4[3] = &block_descriptor_32;
  _Block_copy(v4);
  sub_1DD0DCF8C();
}

void sub_1DCFF1650(uint64_t a1)
{
  if (qword_1ECCA13E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1DCFF1F9C(&xmmword_1ECCD2788, v7);
  v2 = v8;
  sub_1DCFF200C(v7);
  if (v2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "An attempt was made to reset the suggestions client instance. The lifecycle does not permit reassignment", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }
  }

  else
  {
    sub_1DCB17CA0(a1, v7);
    swift_beginAccess();
    sub_1DCFF2074(v7, &xmmword_1ECCD2788);
    swift_endAccess();
  }
}

void sub_1DCFF1958(uint64_t a1)
{
  if (qword_1ECCA13E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1DCFF1F9C(&xmmword_1ECCD2788, v7);
  v2 = v8;
  sub_1DCFF200C(v7);
  if (!v2)
  {
    v8 = type metadata accessor for ProtectedSiriSuggestionsClient();
    v9 = &protocol witness table for ProtectedSiriSuggestionsClient;
    v7[0] = a1;
    swift_beginAccess();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "An attempt was made to reset the suggestions client instance. The lifecycle does not permit reassignment", v6, 2u);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }
}

unint64_t sub_1DCFF1B58()
{
  result = qword_1ECCABE50;
  if (!qword_1ECCABE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE50);
  }

  return result;
}

uint64_t dispatch thunk of SiriSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ProtectedSiriSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 144) + **(*v5 + 144));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DCB4AD3C;

  return v14(a1, a2, a3, a4, a5);
}

_BYTE *sub_1DCFF1EF4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCFF1F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE58, &qword_1DD109BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFF200C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE58, &qword_1DD109BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCFF2074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE58, &qword_1DD109BA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCFF20E4()
{
  result = qword_1ECCABE60;
  if (!qword_1ECCABE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABE60);
  }

  return result;
}

uint64_t sub_1DCFF2138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCFF2180(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1DCFF21F0()
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1DD0DB04C();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1DD0DCA6C();
}

uint64_t sub_1DCFF2790()
{
  v1 = v0[28];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;

    _os_log_impl(&dword_1DCAFC000, v3, v4, "Error when getting suggestions: %@", v7, 0xCu);
    sub_1DCB16D50(v8, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v11 = v0[12];
  (*(v0[18] + 8))(v0[19], v0[17]);
  *v11 = 0;
  v11[1] = 0;
  OUTLINED_FUNCTION_5_114();

  OUTLINED_FUNCTION_29();

  return v12();
}

uint64_t (*SnippetEventHandling.handler(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = *(v10 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v23[-v17];
  swift_getAssociatedConformanceWitness();
  sub_1DD0DD01C();
  v19 = *(v9 + 32);
  v19(v15, v18, AssociatedTypeWitness);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = v4;
  v19(v21 + v20, v15, AssociatedTypeWitness);
  swift_unknownObjectRetain();
  return sub_1DCFF2C0C;
}

uint64_t sub_1DCFF2C0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  return (*(v2 + 40))(v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)), v1, v2);
}

void sub_1DCFF2CD0(uint64_t (*a1)(__int128 *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = (a3 + 48);
  v9 = MEMORY[0x1E69E7CC0];
  v17 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v10 = *v8;
    v20 = *(v8 - 1);
    v21 = v10;

    v11 = (v5)(&v20);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v11)
    {
      v12 = v20;
      v13 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DCE06B28();
        v9 = v22;
      }

      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1DCE06B28();
        v9 = v22;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 24 * v15;
      *(v16 + 32) = v12;
      *(v16 + 48) = v13;
      v4 = a3;
      v7 = v17;
      v5 = a1;
    }

    else
    {
    }

    v8 += 3;
    ++v6;
  }

  __break(1u);
}

unint64_t sub_1DCFF2E5C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v25 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v14)
    {

      return v28;
    }

    if (v14 >= *(a3 + 16))
    {
      break;
    }

    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    sub_1DCFFA3F0(a3 + v16 + v17 * v14, v13);
    v18 = v29(v13);
    if (v3)
    {
      sub_1DCFF8E30(v13, type metadata accessor for SnippetManager.SnippetRecord);
      v24 = v28;

      return v24;
    }

    if (v18)
    {
      sub_1DCFFA5C0(v13, v27);
      v19 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DCE06CA8(0, *(v19 + 16) + 1, 1);
        v19 = v31;
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v22 + 1;
        v26 = v22;
        sub_1DCE06CA8(v21 > 1, v22 + 1, 1);
        v23 = v28;
        v22 = v26;
        v19 = v31;
      }

      ++v14;
      *(v19 + 16) = v23;
      v28 = v19;
      result = sub_1DCFFA5C0(v27, v19 + v16 + v22 * v17);
    }

    else
    {
      result = sub_1DCFF8E30(v13, type metadata accessor for SnippetManager.SnippetRecord);
      ++v14;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DCFF30F0()
{
  type metadata accessor for SnippetManager(0);
  v0 = swift_allocObject();
  result = sub_1DCFF3AFC(sub_1DCFF3A78, 0);
  qword_1EDE49810 = v0;
  return result;
}

uint64_t sub_1DCFF3148@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DCFF328C(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1DCFFA450;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_1DCFF31B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1DCFFA448;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1DCB02C48(v1, v2);
  return sub_1DCFF32C8(v4, v3);
}

uint64_t sub_1DCFF3248(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v5[0] = a1;
  v5[1] = a2;
  a3(&v4, v5);
  return v4;
}

uint64_t sub_1DCFF328C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 32, a2);
  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCB02C48(v3, v4);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFF32C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70(v2 + 32, a2);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1DCB370A4(v5, v6);
}

void sub_1DCFF3310()
{
  v0 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  if (qword_1ECCA13B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1ECCD2760);
  sub_1DD0DCF8C();
}

void sub_1DCFF352C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
  swift_beginAccess();
  sub_1DCFFA514(a1, v1 + v3);
  swift_endAccess();
  sub_1DCFF3310();
}

uint64_t sub_1DCFF359C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
  OUTLINED_FUNCTION_5_22(v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews, a2);
  return *(v2 + v3);
}

void sub_1DCFF35D4(uint64_t a1)
{
  v2 = a1;
  sub_1DCFF36DC(a1, "Setting SnippetManager#canSendAddViews=%{BOOL}d");
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
  OUTLINED_FUNCTION_13_70(v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews, v4);
  *(v1 + v3) = v2;
  sub_1DCFF4598();
}

void (*sub_1DCFF3628())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_11_5(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
  OUTLINED_FUNCTION_156(v0 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews, v1);
  *(v1 + 32) = *(v0 + v3);
  return sub_1DCFF369C;
}

void sub_1DCFF369C(uint64_t a1)
{
  v1 = *a1;
  sub_1DCFF35D4(*(*a1 + 32));

  free(v1);
}

void sub_1DCFF36DC(char a1, const char *a2, ...)
{
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1ECCD2760);
  oslog = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_1DCAFC000, oslog, v5, a2, v6, 8u);
    OUTLINED_FUNCTION_80();
  }
}

uint64_t sub_1DCFF37C8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
  OUTLINED_FUNCTION_5_22(v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates, a2);
  return *(v2 + v3);
}

uint64_t sub_1DCFF3800(char a1)
{
  sub_1DCFF36DC(a1, "Setting SnippetManager#canSendXPCUpdates=%{BOOL}d");
  v3 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
  result = OUTLINED_FUNCTION_13_70(v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates, v4);
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1DCFF3850())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_11_5(v2);
  v4 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
  *(v3 + 24) = v0;
  *(v3 + 32) = v4;
  swift_beginAccess();
  *(v1 + 40) = *(v0 + v4);
  return sub_1DCFF38CC;
}

void sub_1DCFF38CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  sub_1DCFF36DC(v4, "Setting SnippetManager#canSendXPCUpdates=%{BOOL}d");
  *(v2 + v3) = v4;

  free(v1);
}

uint64_t sub_1DCFF3924@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17[-v6 - 8];
  v8 = v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
  OUTLINED_FUNCTION_156(v8, v17);
  v9 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  sub_1DCB09970(v8 + *(v9 + 20), v7, &qword_1ECCABE68, &qword_1DD109BF0);
  v10 = type metadata accessor for SnippetManager.SnippetRecord(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    sub_1DCB0E9D8(v7, &qword_1ECCABE68, &qword_1DD109BF0);
    v11 = 1;
  }

  else
  {
    v12 = *&v7[*(v10 + 20)];
    swift_getObjectType();
    v16 = v12;
    sub_1DD0DEC2C();
    OUTLINED_FUNCTION_6_80();
    sub_1DCFF8E30(v7, v13);
    v11 = 0;
  }

  v14 = sub_1DD0DB04C();
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v14);
}

void *sub_1DCFF3AFC(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v5 = (v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state);
  type metadata accessor for SnippetManager.SnippetManagerState(0);
  type metadata accessor for SnippetManager.SnippetRecord(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *v5 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews) = 0;
  *(v2 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates) = 1;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

void sub_1DCFF3B94()
{
  OUTLINED_FUNCTION_50();
  v3 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_21_52();
  v32 = v0;
  v13 = (v0 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state);
  OUTLINED_FUNCTION_156(v0 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state, &v34);
  v31[1] = v3;
  sub_1DCB09970(v13 + *(v3 + 20), v1, &qword_1ECCABE68, &qword_1DD109BF0);
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1ECCD2760);
  sub_1DCB09970(v1, v2, &qword_1ECCABE68, &qword_1DD109BF0);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    v19 = sub_1DD0DE95C();
    v21 = v20;
    sub_1DCB0E9D8(v2, &qword_1ECCABE68, &qword_1DD109BF0);
    v22 = sub_1DCB10E9C(v19, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Snippet Disappeared: OnScreen == %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v23 = sub_1DCB0E9D8(v2, &qword_1ECCABE68, &qword_1DD109BF0);
  }

  v25 = *v13;
  MEMORY[0x1EEE9AC00](v23, v24);
  v31[-2] = v1;

  v26 = sub_1DCFF2E5C(sub_1DCFF4B08, &v31[-4], v25);
  type metadata accessor for SnippetManager.SnippetRecord(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  *v8 = v26;
  sub_1DCFF352C(v8);
}

uint64_t sub_1DCFF3E94(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_1DD0DB04C();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2628, &qword_1DD0E5C70);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v37 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v37 - v23;
  v25 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v26 = *(a1 + *(v25 + 20));
  swift_getObjectType();
  v42 = v26;
  sub_1DD0DEC2C();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v3);
  sub_1DCB09970(v41, v13, &qword_1ECCABE68, &qword_1DD109BF0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v25) == 1)
  {
    sub_1DCB0E9D8(v13, &qword_1ECCABE68, &qword_1DD109BF0);
    v27 = 1;
  }

  else
  {
    v28 = *&v13[*(v25 + 20)];
    swift_getObjectType();
    v42 = v28;
    sub_1DD0DEC2C();
    sub_1DCFF8E30(v13, type metadata accessor for SnippetManager.SnippetRecord);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v27, 1, v3);
  v29 = *(v6 + 48);
  sub_1DCB09970(v24, v9, &qword_1ECCA2618, &unk_1DD0E5C50);
  sub_1DCB09970(v21, &v9[v29], &qword_1ECCA2618, &unk_1DD0E5C50);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    v31 = v39;
    sub_1DCB09970(v9, v39, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (__swift_getEnumTagSinglePayload(&v9[v29], 1, v3) != 1)
    {
      v32 = v40;
      v33 = &v9[v29];
      v34 = v38;
      (*(v40 + 32))(v38, v33, v3);
      sub_1DCFFA578(&qword_1ECCA2630, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      LODWORD(v41) = sub_1DD0DDF7C();
      v35 = *(v32 + 8);
      v35(v34, v3);
      sub_1DCB0E9D8(v21, &qword_1ECCA2618, &unk_1DD0E5C50);
      sub_1DCB0E9D8(v24, &qword_1ECCA2618, &unk_1DD0E5C50);
      v35(v31, v3);
      sub_1DCB0E9D8(v9, &qword_1ECCA2618, &unk_1DD0E5C50);
      v30 = v41 ^ 1;
      return v30 & 1;
    }

    sub_1DCB0E9D8(v21, &qword_1ECCA2618, &unk_1DD0E5C50);
    sub_1DCB0E9D8(v24, &qword_1ECCA2618, &unk_1DD0E5C50);
    (*(v40 + 8))(v31, v3);
    goto LABEL_9;
  }

  sub_1DCB0E9D8(v21, &qword_1ECCA2618, &unk_1DD0E5C50);
  sub_1DCB0E9D8(v24, &qword_1ECCA2618, &unk_1DD0E5C50);
  if (__swift_getEnumTagSinglePayload(&v9[v29], 1, v3) != 1)
  {
LABEL_9:
    sub_1DCB0E9D8(v9, &qword_1ECCA2628, &qword_1DD0E5C70);
    v30 = 1;
    return v30 & 1;
  }

  sub_1DCB0E9D8(v9, &qword_1ECCA2618, &unk_1DD0E5C50);
  v30 = 0;
  return v30 & 1;
}

void sub_1DCFF43C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);

  sub_1DCFF84E4();
}

uint64_t sub_1DCFF4434(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_6();
  v3 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_10_2();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_21_52();
  type metadata accessor for SnippetManager.SnippetRecord(0);
  swift_getObjectType();
  sub_1DD0DEC2C();
  swift_getObjectType();
  sub_1DD0DEC2C();
  v13 = sub_1DD0DB01C();
  v14 = *(v5 + 8);
  v14(v10, v3);
  v14(v2, v3);
  return v13 & 1;
}

void sub_1DCFF4598()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA8, &qword_1DD109E90);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v62 - v5;
  v7 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_10_2();
  v64 = v16 - v17;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_33_2();
  v63 = v20;
  OUTLINED_FUNCTION_29_0();
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = v62 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v62 - v27;
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
  }

  v29 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v29, qword_1ECCD2760);
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v32);
    _os_log_impl(&dword_1DCAFC000, v30, v31, "Checking if action is needed", v1, 2u);
    OUTLINED_FUNCTION_80();
  }

  v33 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
  OUTLINED_FUNCTION_156(&v1[OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state], &v66);
  OUTLINED_FUNCTION_12_71();
  sub_1DCFFA3F0(&v1[v33], v12);
  sub_1DCFF4B28();
  OUTLINED_FUNCTION_1_135();
  sub_1DCFF8E30(v12, v34);
  if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
  {
    sub_1DCB0E9D8(v6, &qword_1ECCABEA8, &qword_1DD109E90);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v36))
    {
      v37 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v37);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v38, v39, "No action needed");
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    sub_1DCFFA5C0(v6, v28);
    OUTLINED_FUNCTION_4_114();
    sub_1DCFFA3F0(v28, v25);
    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6DC();
    v42 = os_log_type_enabled(v40, v41);
    v62[1] = v13;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315138;
      OUTLINED_FUNCTION_4_114();
      v45 = v63;
      sub_1DCFFA3F0(v25, v63);
      v46 = sub_1DD0DE02C();
      v62[0] = v28;
      v47 = v46;
      OUTLINED_FUNCTION_18_50();
      sub_1DCFF8E30(v25, v48);
      v49 = sub_1DCB10E9C(v47, v45, &v65);

      *(v43 + 4) = v49;
      v28 = v62[0];
      _os_log_impl(&dword_1DCAFC000, v40, v41, "Performing action: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      sub_1DCFF8E30(v25, type metadata accessor for SnippetManager.SnippetManagerAction);
    }

    sub_1DCFF4F70();
    OUTLINED_FUNCTION_4_114();
    sub_1DCFFA3F0(v28, v64);
    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65 = v53;
      *v52 = 136315138;
      OUTLINED_FUNCTION_4_114();
      v54 = v64;
      sub_1DCFFA3F0(v64, v63);
      v55 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_18_50();
      v57 = v56;
      sub_1DCFF8E30(v58, v56);
      v59 = sub_1DCB10E9C(v55, v54, &v65);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1DCAFC000, v50, v51, "Action completed: %s)", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      v60 = v28;
      v61 = v57;
    }

    else
    {

      sub_1DCFF8E30(v64, type metadata accessor for SnippetManager.SnippetManagerAction);
      v60 = OUTLINED_FUNCTION_33_1();
    }

    sub_1DCFF8E30(v60, v61);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCFF4B28()
{
  OUTLINED_FUNCTION_50();
  v59 = v3;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v57 = v5;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  OUTLINED_FUNCTION_10_2();
  v56 = v7 - v8;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_71_0();
  v55 = v11;
  v12 = OUTLINED_FUNCTION_12();
  v13 = type metadata accessor for SnippetManager.SnippetRecord(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_21_52();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEB0, &qword_1DD109E98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  OUTLINED_FUNCTION_20_0(v23);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v55 - v26;
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_2_110();
    sub_1DCFFA3F0(v28 + v29, v27);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v27, v30, 1, v13);
  v31 = *(type metadata accessor for SnippetManager.SnippetManagerState(0) + 20);
  v32 = *(v18 + 48);
  sub_1DCC91890(v27, v22, &qword_1ECCABE68, &qword_1DD109BF0);
  sub_1DCB09970(v0 + v31, &v22[v32], &qword_1ECCABE68, &qword_1DD109BF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v13);
  v34 = __swift_getEnumTagSinglePayload(&v22[v32], 1, v13);
  v35 = v34;
  if (EnumTagSinglePayload != 1)
  {
    v40 = v59;
    if (v34 == 1)
    {
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v22, v40);
      v41 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
    }

    else
    {
      sub_1DCFFA5C0(v22, v1);
      sub_1DCFFA5C0(&v22[v32], v2);
      if (sub_1DD0DB01C())
      {
        OUTLINED_FUNCTION_13_75();
        sub_1DCFF8E30(v2, v46);
        sub_1DCFF8E30(v1, type metadata accessor for SnippetManager.SnippetRecord);
        type metadata accessor for SnippetManager.SnippetManagerAction(0);
        OUTLINED_FUNCTION_31();
        goto LABEL_12;
      }

      v47 = *(v1 + *(v13 + 20));
      swift_getObjectType();
      v60 = v47;
      v48 = v55;
      sub_1DD0DEC2C();
      v49 = *(v2 + *(v13 + 20));
      swift_getObjectType();
      v60 = v49;
      v50 = v56;
      sub_1DD0DEC2C();
      sub_1DD0DB01C();
      v51 = *(v57 + 8);
      v52 = v50;
      v53 = v58;
      v51(v52, v58);
      v51(v48, v53);
      OUTLINED_FUNCTION_6_80();
      sub_1DCFF8E30(v2, v54);
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v1, v40);
      v41 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
    }

    swift_storeEnumTagMultiPayload();
    v42 = v40;
    v43 = 0;
    v44 = 1;
    v45 = v41;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    goto LABEL_13;
  }

  type metadata accessor for SnippetManager.SnippetManagerAction(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  if (v35 != 1)
  {
    sub_1DCB0E9D8(&v22[v32], &qword_1ECCABE68, &qword_1DD109BF0);
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

void sub_1DCFF4F70()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_26_6();
  v121 = type metadata accessor for SnippetManager.SnippetManagerState(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_10_2();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_71_0();
  v122 = v10;
  OUTLINED_FUNCTION_12();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v119 = v12;
  v120 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  OUTLINED_FUNCTION_16();
  v118 = v15 - v14;
  v16 = OUTLINED_FUNCTION_12();
  v123 = type metadata accessor for SnippetManager.SnippetRecord(v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_10_2();
  v117 = (v19 - v20);
  OUTLINED_FUNCTION_29_0();
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  OUTLINED_FUNCTION_33_2();
  v116 = v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v114 - v33;
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v114 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v114 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v114 - v44;
  v46 = type metadata accessor for SnippetManager.SnippetManagerAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_16();
  v51 = v50 - v49;
  OUTLINED_FUNCTION_4_114();
  sub_1DCFFA3F0(v0, v51);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_125();
    sub_1DCFFA5C0(v51, v34);
    v52 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state;
    OUTLINED_FUNCTION_156(v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state, v127);
    OUTLINED_FUNCTION_12_71();
    sub_1DCFFA3F0(v1 + v52, v7);
    v53 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates;
    OUTLINED_FUNCTION_156(v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendXPCUpdates, v126);
    v45 = v34;
    if (*(v1 + v53) == 1)
    {
      if (qword_1EDE46628 != -1)
      {
        swift_once();
      }

      sub_1DCB4E718(v124);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      if ((RefreshableDeviceState.isHomePod.getter() & 1) == 0)
      {
        sub_1DCB4E718(v124);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        if ((RefreshableDeviceState.isAppleTV.getter() & 1) == 0)
        {
          v110 = v122;
          v111 = *(v121 + 20);
          OUTLINED_FUNCTION_2_110();
          sub_1DCFFA3F0(v34, v110 + v111);
          OUTLINED_FUNCTION_41_30();
          sub_1DCFF352C(v110);
        }
      }

      if (qword_1ECCA13B0 != -1)
      {
        OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
      }

      v54 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v54, qword_1ECCD2760);
      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v56))
      {
        v57 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v57);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v58, v59, "Encore feature is disabled on HomePods and AppleTV devices we should not have reached here. This needs to be investigated.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_1_135();
      v113 = v7;
    }

    else
    {
      if (qword_1ECCA13B0 != -1)
      {
        OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
      }

      v79 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v79, qword_1ECCD2760);
      OUTLINED_FUNCTION_11_71();
      sub_1DCFFA3F0(v34, v25);
      v80 = v34;
      v81 = v117;
      sub_1DCFFA3F0(v80, v117);
      v82 = sub_1DD0DD8EC();
      v83 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v82, v83))
      {
        OUTLINED_FUNCTION_43_0();
        v125 = OUTLINED_FUNCTION_47_26();
        *v45 = 136315394;
        v121 = v7;
        v84 = v123;
        v124[0] = *&v25[*(v123 + 20)];
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_17_50();
        v86 = v85;
        sub_1DCFF8E30(v25, v85);
        v87 = OUTLINED_FUNCTION_43_27();
        v89 = sub_1DCB10E9C(v87, v46, v88);

        *(v45 + 4) = v89;
        *(v45 + 6) = 2080;
        v90 = *(v81 + *(v84 + 20));
        swift_getObjectType();
        *&v124[0] = v90;
        v91 = v118;
        sub_1DD0DEC2C();
        OUTLINED_FUNCTION_7_78();
        sub_1DCFFA578(v92, 255, v93, MEMORY[0x1E69695E0]);
        v94 = v120;
        sub_1DD0DF03C();
        v96 = v95;
        (*(v119 + 8))(v91, v94);
        sub_1DCFF8E30(v81, v86);
        v97 = OUTLINED_FUNCTION_43_27();
        v99 = sub_1DCB10E9C(v97, v96, v98);

        *(v45 + 14) = v99;
        _os_log_impl(&dword_1DCAFC000, v82, v83, "Not sending XPC update from flow %s with id %s since SnippetManager#canSendXPCUpdates is false", v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        v45 = v122;
        OUTLINED_FUNCTION_80();

        OUTLINED_FUNCTION_1_135();
        v113 = v121;
      }

      else
      {

        sub_1DCFF8E30(v25, type metadata accessor for SnippetManager.SnippetRecord);
        OUTLINED_FUNCTION_1_135();
        sub_1DCFF8E30(v7, v109);
        v113 = OUTLINED_FUNCTION_33_1();
      }
    }

    sub_1DCFF8E30(v113, v112);
  }

  else
  {
    OUTLINED_FUNCTION_0_125();
    sub_1DCFFA5C0(v51, v45);
    v60 = OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews;
    OUTLINED_FUNCTION_156(v0 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_canSendAddViews, v127);
    if (*(v0 + v60) == 1)
    {
      if (qword_1ECCA13B0 != -1)
      {
        OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
      }

      v61 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v61, qword_1ECCD2760);
      OUTLINED_FUNCTION_11_71();
      sub_1DCFFA3F0(v45, v42);
      sub_1DCFFA3F0(v45, v38);
      v62 = sub_1DD0DD8EC();
      v63 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v63))
      {
        v64 = OUTLINED_FUNCTION_43_0();
        v116 = swift_slowAlloc();
        v126[0] = v116;
        *v64 = 136315394;
        v65 = v123;
        v124[0] = *&v42[*(v123 + 20)];
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
        sub_1DD0DE02C();
        v115 = v0;
        OUTLINED_FUNCTION_17_50();
        v67 = v66;
        sub_1DCFF8E30(v42, v66);
        v68 = sub_1DCB10E9C(v0, v46, v126);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        v69 = &v38[*(v65 + 20)];
        v117 = v45;
        v70 = *v69;
        swift_getObjectType();
        *&v124[0] = v70;
        v71 = v118;
        sub_1DD0DEC2C();
        OUTLINED_FUNCTION_7_78();
        sub_1DCFFA578(v72, 255, v73, MEMORY[0x1E69695E0]);
        v74 = v120;
        v75 = sub_1DD0DF03C();
        v77 = v76;
        (*(v119 + 8))(v71, v74);
        sub_1DCFF8E30(v38, v67);
        v78 = sub_1DCB10E9C(v75, v77, v126);
        v45 = v117;

        *(v64 + 14) = v78;
        _os_log_impl(&dword_1DCAFC000, v62, v115, "Rendering new snippet from flow %s with id %s over Ace", v64, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_13_75();
        sub_1DCFF8E30(v42, v106);
        sub_1DCFF8E30(v38, v62);
      }

      OUTLINED_FUNCTION_156(v1 + OBJC_IVAR____TtC11SiriKitFlow14SnippetManager_state, v126);
      v107 = v122;
      v108 = *(v121 + 20);
      OUTLINED_FUNCTION_2_110();
      sub_1DCFFA3F0(v45, v107 + v108);
      OUTLINED_FUNCTION_41_30();
      sub_1DCFF352C(v107);
    }

    if (qword_1ECCA13B0 != -1)
    {
      OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
    }

    v100 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v100, qword_1ECCD2760);
    v101 = sub_1DD0DD8EC();
    v102 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v102))
    {
      v103 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v103);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v104, v105, "SnippetManager needs to send an AddViews, but can't send snippets right now. Will retry once SnippetManager#canSendAddViews is set to true");
      OUTLINED_FUNCTION_80();
    }
  }

  sub_1DCFF8E30(v45, type metadata accessor for SnippetManager.SnippetRecord);
  OUTLINED_FUNCTION_49();
}

void sub_1DCFF5BFC(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    if (qword_1ECCA13B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1ECCD2760);
    v5 = a1;
    oslog = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DCAFC000, oslog, v6, "Got an error submitted an AddViews. This may or may not be an issue depending on the error: %@", v7, 0xCu);
      sub_1DCB0E9D8(v8, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v8, -1, -1);
      MEMORY[0x1E12A8390](v7, -1, -1);
      sub_1DCB79378(a1, 1);
    }

    else
    {

      sub_1DCB79378(a1, 1);
    }
  }
}

void sub_1DCFF5DB8()
{
  OUTLINED_FUNCTION_50();
  v71 = v0;
  v2 = v1;
  v64 = v3;
  v5 = v4;
  v66 = v6;
  v7 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  OUTLINED_FUNCTION_16();
  v62 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE98, &unk_1DD109E70);
  OUTLINED_FUNCTION_20_0(v12);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  OUTLINED_FUNCTION_9();
  v65 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_10_2();
  v70 = v21 - v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_33_2();
  v69 = v25;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_33_2();
  v67 = v28;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_71_0();
  v63 = v31;
  v32 = 0;
  v33 = *(v5 + 16);
  v68 = MEMORY[0x1E69E7CC0];
  while (v33 != v32)
  {
    OUTLINED_FUNCTION_19_32();
    sub_1DCFF6260(v5 + v34 + *(v8 + 72) * v32, v2, v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1DCB0E9D8(v16, &qword_1ECCABE98, &unk_1DD109E70);
      ++v32;
    }

    else
    {
      v35 = v63;
      sub_1DCC91890(v16, v63, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCC91890(v35, v67, &qword_1ECCA2460, &qword_1DD0E5228);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE19D2C();
        v68 = v42;
      }

      v36 = *(v68 + 16);
      v37 = v36 + 1;
      if (v36 >= *(v68 + 24) >> 1)
      {
        v61 = v36 + 1;
        sub_1DCE19D2C();
        v37 = v61;
        v68 = v43;
      }

      ++v32;
      *(v68 + 16) = v37;
      OUTLINED_FUNCTION_19_32();
      sub_1DCC91890(v41, v39 + v38 + *(v40 + 72) * v36, &qword_1ECCA2460, &qword_1DD0E5228);
    }
  }

  v72 = v68;

  sub_1DCFF7188(&v72);

  v44 = v72;
  v45 = *(v72 + 16);
  v46 = v66;
  if (v45)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1DCE06CA8(0, v45, 0);
    v47 = v72;
    v48 = v65;
    OUTLINED_FUNCTION_19_32();
    v71 = v44;
    v50 = v44 + v49;
    v51 = *(v48 + 72);
    v52 = v62;
    do
    {
      v53 = v69;
      sub_1DCB09970(v50, v69, &qword_1ECCA2460, &qword_1DD0E5228);
      v54 = v53;
      v55 = v70;
      sub_1DCC91890(v54, v70, &qword_1ECCA2460, &qword_1DD0E5228);
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v55, v52);
      v72 = v47;
      v57 = *(v47 + 16);
      v56 = *(v47 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1DCE06CA8(v56 > 1, v57 + 1, 1);
        v47 = v72;
      }

      *(v47 + 16) = v57 + 1;
      OUTLINED_FUNCTION_19_32();
      OUTLINED_FUNCTION_0_125();
      sub_1DCFFA5C0(v52, v58);
      v50 += v51;
      --v45;
    }

    while (v45);

    v46 = v66;
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  v59 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  sub_1DCB09970(v64, v46 + *(v59 + 20), &qword_1ECCABE68, &qword_1DD109BF0);
  *v46 = v47;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFF6260@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD0DB04C();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v44 - v17;
  v19 = a2(*(a1 + *(v16 + 20)), *(a1 + *(v16 + 20) + 8));
  if (v20)
  {
    v47 = a3;
    if (qword_1ECCA13B0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1ECCD2760);
    sub_1DCFFA3F0(a1, v18);
    sub_1DCFFA3F0(a1, v14);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE70C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v24 = 136315394;
      v50 = *&v18[*(v10 + 20)];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
      v25 = sub_1DD0DE02C();
      v44 = v22;
      v45 = v23;
      v26 = v25;
      v28 = v27;
      sub_1DCFF8E30(v18, type metadata accessor for SnippetManager.SnippetRecord);
      v29 = sub_1DCB10E9C(v26, v28, &v51);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = *&v14[*(v10 + 20)];
      swift_getObjectType();
      *&v50 = v30;
      sub_1DD0DEC2C();
      sub_1DCFFA578(&qword_1EDE4D650, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v31 = v49;
      v32 = sub_1DD0DF03C();
      v34 = v33;
      (*(v48 + 8))(v9, v31);
      sub_1DCFF8E30(v14, type metadata accessor for SnippetManager.SnippetRecord);
      v35 = sub_1DCB10E9C(v32, v34, &v51);

      *(v24 + 14) = v35;
      v36 = v44;
      _os_log_impl(&dword_1DCAFC000, v44, v45, "Dropping SnippetRecord for Snippet since Flow is not in the stack. Flow %s with ID: %s", v24, 0x16u);
      v37 = v46;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v37, -1, -1);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    else
    {

      sub_1DCFF8E30(v18, type metadata accessor for SnippetManager.SnippetRecord);
      sub_1DCFF8E30(v14, type metadata accessor for SnippetManager.SnippetRecord);
    }

    v42 = v47;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
    return __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  }

  else
  {
    v38 = v19;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
    v40 = *(v39 + 48);
    sub_1DCFFA3F0(a1, a3);
    *(a3 + v40) = v38;
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v39);
  }
}

uint64_t sub_1DCFF670C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD0DB04C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SnippetManager.deinit()
{

  sub_1DCB370A4(*(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_1_135();
  sub_1DCFF8E30(v0 + v1, v2);
  return v0;
}

uint64_t SnippetManager.__deallocating_deinit()
{
  SnippetManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCFF6860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v0, v1, v2, &protocol conformance descriptor for SnippetManagerProvider);
  sub_1DD0DCEDC();
}

void sub_1DCFF6918(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v1, v2, v3, &protocol conformance descriptor for SnippetManagerProvider);
  sub_1DD0DCF8C();
}

void sub_1DCFF69D8()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_11_5(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v2, v3, v4, &protocol conformance descriptor for SnippetManagerProvider);
  sub_1DD0DCECC();
}

void sub_1DCFF6AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE80, &qword_1DD109C48);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v7 - v4;
  (*(v6 + 16))(&v7 - v4, a1);
  sub_1DCFF6B88(v5);
}

void sub_1DCFF6B88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE80, &qword_1DD109C48);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11[-v8 - 8];
  OUTLINED_FUNCTION_156(v1 + 24, v11);
  (*(v5 + 16))(v9, a1, v3);
  sub_1DD0DCF8C();
}

void sub_1DCFF6C90()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_11_5(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE80, &qword_1DD109C48);
  v1[1] = v3;
  v4 = *(v3 - 8);
  v1[2] = v4;
  v5 = *(v4 + 64);
  v1[3] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  v1[4] = v6;
  sub_1DCC627B8(v6, v7);
}

void sub_1DCFF6D6C(uint64_t a1, char a2)
{
  v2 = *(*a1 + 24);
  if (a2)
  {
    (*(*(*a1 + 16) + 16))(*(*a1 + 24), *(*a1 + 32), *(*a1 + 8));
    sub_1DCFF6B88(v2);
  }

  sub_1DCFF6B88(*(*a1 + 32));
}

void SnippetManagerProvider.__allocating_init(snippetManager:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SnippetManagerProvider.init(snippetManager:)();
}

void SnippetManagerProvider.init(snippetManager:)()
{
  OUTLINED_FUNCTION_40_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void SnippetManagerProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SnippetManagerProvider.init(storage:)();
}

void SnippetManagerProvider.init(storage:)()
{
  OUTLINED_FUNCTION_40_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE70, &qword_1DD109BF8);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t SnippetManagerProvider.deinit()
{

  return v0;
}

uint64_t SnippetManagerProvider.__deallocating_deinit()
{
  SnippetManagerProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCFF704C()
{
  type metadata accessor for SnippetManagerProvider();

    ;
  }
}

void sub_1DCFF7098()
{
  type metadata accessor for SnippetManagerProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCFF70E8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SnippetManagerProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void SiriEnvironment.snippetManagerProvider.getter()
{
  type metadata accessor for SnippetManagerProvider();
  OUTLINED_FUNCTION_5_115();
  sub_1DCFFA578(v0, v1, v2, &protocol conformance descriptor for SnippetManagerProvider);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCFF7188(size_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DCC224F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1DCFF723C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1DCFF723C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD0DF02C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
        v6 = sub_1DD0DE38C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DCFF75F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DCFF7384(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DCFF7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v47 = &v35 - v14;
  result = MEMORY[0x1EEE9AC00](v13, v15);
  v46 = &v35 - v18;
  v37 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v42 = -v20;
    v43 = v19;
    v22 = a1 - a3;
    v36 = v20;
    v23 = v19 + v20 * a3;
    v24 = &qword_1ECCA2460;
    v45 = v8;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      do
      {
        v25 = v46;
        sub_1DCB09970(v23, v46, v24, &qword_1DD0E5228);
        v26 = v24;
        v27 = v47;
        sub_1DCB09970(v21, v47, v26, &qword_1DD0E5228);
        v28 = *(v8 + 48);
        v29 = *(v25 + v28);
        v30 = *(v27 + v28);
        v31 = v27;
        v24 = v26;
        sub_1DCB0E9D8(v31, v26, &qword_1DD0E5228);
        result = sub_1DCB0E9D8(v25, v26, &qword_1DD0E5228);
        v32 = v30 < v29;
        v8 = v45;
        if (!v32)
        {
          break;
        }

        if (!v43)
        {
          __break(1u);
          return result;
        }

        v33 = v44;
        sub_1DCC91890(v23, v44, v26, &qword_1DD0E5228);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1DCC91890(v33, v21, v26, &qword_1DD0E5228);
        v21 += v42;
        v23 += v42;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v41 + 1;
      v21 = v40 + v36;
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DCFF75F0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v114 = a1;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v121 = *(v131 - 8);
  v8 = MEMORY[0x1EEE9AC00](v131, v7);
  v118 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v128 = &v113 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v130 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v129 = &v113 - v17;
  v18 = a3[1];
  v123 = a3;
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v125 = v20;
    v20 = *v114;
    if (!*v114)
    {
      goto LABEL_142;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v124;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_104:
      v106 = (v125 + 16);
      for (i = *(v125 + 2); i >= 2; *v106 = i)
      {
        if (!*v123)
        {
          goto LABEL_139;
        }

        v108 = &v125[16 * i];
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        sub_1DCFF7F38(*v123 + *(v121 + 72) * *v108, *v123 + *(v121 + 72) * *v110, *v123 + *(v121 + 72) * v111, v20);
        if (v4)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_127;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_128;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_129;
        }

        i = *v106 - 1;
        sub_1DCC223A4(v110 + 16, v112, v110);
      }

LABEL_100:

      return;
    }

LABEL_136:
    v125 = sub_1DCC22390(v125);
    goto LABEL_104;
  }

  v113 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v115 = v19;
    if (v19 + 1 < v18)
    {
      v125 = v20;
      v126 = v19 + 1;
      v4 = v19;
      v23 = *v123;
      v24 = *(v121 + 72);
      v20 = *v123 + v24 * v22;
      v25 = v129;
      sub_1DCB09970(v20, v129, &qword_1ECCA2460, &qword_1DD0E5228);
      v26 = v130;
      sub_1DCB09970(v23 + v24 * v4, v130, &qword_1ECCA2460, &qword_1DD0E5228);
      v27 = *(v131 + 48);
      v28 = *(v25 + v27);
      v119 = *(v26 + v27);
      v120 = v28;
      sub_1DCB0E9D8(v26, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB0E9D8(v25, &qword_1ECCA2460, &qword_1DD0E5228);
      v29 = v4 + 2;
      v122 = v24;
      v30 = v23 + v24 * (v4 + 2);
      while (1)
      {
        v31 = v29;
        if (++v126 >= v18)
        {
          break;
        }

        LODWORD(v127) = v119 < v120;
        v32 = v129;
        sub_1DCB09970(v30, v129, &qword_1ECCA2460, &qword_1DD0E5228);
        v33 = v18;
        v34 = v130;
        sub_1DCB09970(v20, v130, &qword_1ECCA2460, &qword_1DD0E5228);
        v35 = *(v131 + 48);
        v4 = *(v32 + v35);
        v36 = *(v34 + v35);
        v37 = v34;
        v18 = v33;
        sub_1DCB0E9D8(v37, &qword_1ECCA2460, &qword_1DD0E5228);
        sub_1DCB0E9D8(v32, &qword_1ECCA2460, &qword_1DD0E5228);
        v30 += v122;
        v20 += v122;
        v29 = v31 + 1;
        if (((v127 ^ (v36 >= v4)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v126 = v18;
LABEL_9:
      if (v119 < v120)
      {
        v22 = v126;
        v21 = v115;
        if (v126 < v115)
        {
          goto LABEL_133;
        }

        if (v115 >= v126)
        {
          v20 = v125;
          goto LABEL_30;
        }

        if (v18 >= v31)
        {
          v38 = v31;
        }

        else
        {
          v38 = v18;
        }

        v39 = v122 * (v38 - 1);
        v40 = v122 * v38;
        v41 = v115 * v122;
        v42 = v126;
        v43 = v115;
        do
        {
          if (v43 != --v42)
          {
            v4 = *v123;
            if (!*v123)
            {
              goto LABEL_140;
            }

            sub_1DCC91890(v4 + v41, v118, &qword_1ECCA2460, &qword_1DD0E5228);
            v44 = v41 < v39 || v4 + v41 >= (v4 + v40);
            if (v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DCC91890(v118, v4 + v39, &qword_1ECCA2460, &qword_1DD0E5228);
          }

          ++v43;
          v39 -= v122;
          v40 -= v122;
          v41 += v122;
        }

        while (v43 < v42);
      }

      v20 = v125;
      v22 = v126;
      v21 = v115;
    }

LABEL_30:
    v45 = v123[1];
    if (v22 < v45)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_132;
      }

      if (v22 - v21 < v113)
      {
        break;
      }
    }

LABEL_48:
    if (v22 < v21)
    {
      goto LABEL_131;
    }

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v22;
    if ((v59 & 1) == 0)
    {
      sub_1DCE18BB0();
      v20 = v103;
    }

    v60 = *(v20 + 16);
    v61 = v60 + 1;
    if (v60 >= *(v20 + 24) >> 1)
    {
      sub_1DCE18BB0();
      v20 = v104;
    }

    *(v20 + 16) = v61;
    v62 = v20 + 32;
    v63 = (v20 + 32 + 16 * v60);
    v64 = v126;
    *v63 = v115;
    v63[1] = v64;
    v127 = *v114;
    if (!v127)
    {
      goto LABEL_141;
    }

    if (v60)
    {
      v125 = v20;
      while (1)
      {
        v65 = v61 - 1;
        v66 = (v62 + 16 * (v61 - 1));
        v67 = (v20 + 16 * v61);
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v68 = *(v20 + 32);
          v69 = *(v20 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_69:
          if (v71)
          {
            goto LABEL_118;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_121;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_126;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v61 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v61 < 2)
        {
          goto LABEL_120;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_84:
        if (v86)
        {
          goto LABEL_123;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_125;
        }

        if (v93 < v85)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v65 - 1 >= v61)
        {
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
          goto LABEL_135;
        }

        if (!*v123)
        {
          goto LABEL_138;
        }

        v97 = (v62 + 16 * (v65 - 1));
        v98 = *v97;
        v99 = v62;
        v100 = v65;
        v20 = v62 + 16 * v65;
        v4 = *(v20 + 8);
        v101 = v124;
        sub_1DCFF7F38(*v123 + *(v121 + 72) * *v97, *v123 + *(v121 + 72) * *v20, *v123 + *(v121 + 72) * v4, v127);
        v124 = v101;
        if (v101)
        {
          goto LABEL_100;
        }

        if (v4 < v98)
        {
          goto LABEL_113;
        }

        v102 = *(v125 + 2);
        if (v100 > v102)
        {
          goto LABEL_114;
        }

        *v97 = v98;
        v97[1] = v4;
        if (v100 >= v102)
        {
          goto LABEL_115;
        }

        v61 = v102 - 1;
        sub_1DCC223A4((v20 + 16), v102 - 1 - v100, v20);
        v20 = v125;
        *(v125 + 2) = v102 - 1;
        v62 = v99;
        if (v102 <= 2)
        {
          goto LABEL_98;
        }
      }

      v72 = v62 + 16 * v61;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_116;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_117;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_119;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_122;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v70 < v96)
        {
          v65 = v61 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v123[1];
    v19 = v126;
    if (v126 >= v18)
    {
      goto LABEL_102;
    }
  }

  v46 = v21 + v113;
  if (__OFADD__(v21, v113))
  {
    goto LABEL_134;
  }

  if (v46 >= v45)
  {
    v46 = v123[1];
  }

  if (v46 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v22 == v46)
  {
    goto LABEL_48;
  }

  v125 = v20;
  v47 = *(v121 + 72);
  v48 = *v123 + v47 * (v22 - 1);
  v49 = -v47;
  v4 = v21 - v22;
  v127 = *v123;
  v116 = v47;
  v117 = v46;
  v50 = v127 + v22 * v47;
  v51 = v131;
LABEL_39:
  v126 = v22;
  v119 = v50;
  v120 = v4;
  v122 = v48;
  v52 = v48;
  while (1)
  {
    v53 = v129;
    sub_1DCB09970(v50, v129, &qword_1ECCA2460, &qword_1DD0E5228);
    v54 = v130;
    sub_1DCB09970(v52, v130, &qword_1ECCA2460, &qword_1DD0E5228);
    v55 = *(v51 + 48);
    v56 = *(v53 + v55);
    v57 = *(v54 + v55);
    sub_1DCB0E9D8(v54, &qword_1ECCA2460, &qword_1DD0E5228);
    sub_1DCB0E9D8(v53, &qword_1ECCA2460, &qword_1DD0E5228);
    if (v57 >= v56)
    {
      v51 = v131;
LABEL_46:
      v22 = v126 + 1;
      v48 = v122 + v116;
      v4 = v120 - 1;
      v50 = v119 + v116;
      if (v126 + 1 == v117)
      {
        v22 = v117;
        v20 = v125;
        v21 = v115;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v127)
    {
      break;
    }

    v58 = v128;
    sub_1DCC91890(v50, v128, &qword_1ECCA2460, &qword_1DD0E5228);
    v51 = v131;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DCC91890(v58, v52, &qword_1ECCA2460, &qword_1DD0E5228);
    v52 += v49;
    v50 += v49;
    v44 = __CFADD__(v4++, 1);
    if (v44)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_1DCFF7F38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v12);
  v59 = &v51 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v21 = v17 / v16;
  v64 = a1;
  v63 = a4;
  v22 = v19 / v16;
  v60 = v8;
  if (v17 / v16 >= v19 / v16)
  {
    sub_1DCD3F630(a2, v19 / v16, a4);
    v35 = a4 + v22 * v16;
    v36 = -v16;
    v37 = v35;
    v54 = -v16;
    v55 = a4;
    v61 = a1;
LABEL_37:
    v56 = a2 + v36;
    v38 = v37;
    v53 = v37;
    while (1)
    {
      if (v35 <= a4)
      {
        v64 = a2;
        v62 = v38;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v38;
      v39 = a3 + v36;
      v40 = v35 + v36;
      v41 = v35 + v36;
      v42 = v58;
      v43 = v59;
      v44 = v35;
      sub_1DCB09970(v41, v59, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB09970(v56, v42, &qword_1ECCA2460, &qword_1DD0E5228);
      v45 = v42;
      v46 = *(v60 + 48);
      v57 = *(v43 + v46);
      v47 = *(v42 + v46);
      sub_1DCB0E9D8(v45, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB0E9D8(v43, &qword_1ECCA2460, &qword_1DD0E5228);
      if (v47 < v57)
      {
        if (a3 < a2 || v39 >= a2)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v52;
          a3 = v39;
          v36 = v54;
          a4 = v55;
          a1 = v61;
          v35 = v44;
        }

        else
        {
          v37 = v52;
          v18 = a3 == a2;
          a4 = v55;
          v50 = v56;
          a2 = v56;
          a1 = v61;
          a3 = v39;
          v36 = v54;
          v35 = v44;
          if (!v18)
          {
            v37 = v52;
            swift_arrayInitWithTakeBackToFront();
            v35 = v44;
            a2 = v50;
          }
        }

        goto LABEL_37;
      }

      if (a3 < v44 || v39 >= v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v39;
        v35 = v40;
        v38 = v40;
        v36 = v54;
        a4 = v55;
        a1 = v61;
        v37 = v53;
      }

      else
      {
        v38 = v40;
        v18 = v44 == a3;
        a3 = v39;
        v35 = v40;
        v36 = v54;
        a4 = v55;
        a1 = v61;
        v37 = v53;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v39;
          v35 = v40;
          v38 = v40;
        }
      }
    }

    v64 = a2;
    v62 = v37;
  }

  else
  {
    sub_1DCD3F630(a1, v17 / v16, a4);
    v56 = a3;
    v57 = a4 + v21 * v16;
    v62 = v57;
    while (a4 < v57 && a2 < a3)
    {
      v61 = a1;
      v24 = v16;
      v25 = v59;
      sub_1DCB09970(a2, v59, &qword_1ECCA2460, &qword_1DD0E5228);
      v26 = a4;
      v27 = a4;
      v28 = v58;
      sub_1DCB09970(v26, v58, &qword_1ECCA2460, &qword_1DD0E5228);
      v29 = *(v8 + 48);
      v30 = *(v25 + v29);
      v31 = *(v28 + v29);
      sub_1DCB0E9D8(v28, &qword_1ECCA2460, &qword_1DD0E5228);
      sub_1DCB0E9D8(v25, &qword_1ECCA2460, &qword_1DD0E5228);
      v16 = v24;
      if (v31 >= v30)
      {
        a4 = v27 + v24;
        v32 = v61;
        if (v61 < v27 || v61 >= a4)
        {
          v8 = v60;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v60;
          if (v61 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v27 + v24;
      }

      else
      {
        v32 = v61;
        v33 = v61 < a2 || v61 >= a2 + v24;
        a4 = v27;
        if (v33)
        {
          v8 = v60;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v60;
          if (v61 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v24;
      }

      a1 = v32 + v24;
      v64 = a1;
      a3 = v56;
    }
  }

LABEL_59:
  sub_1DCFF83F8(&v64, &v63, &v62);
  return 1;
}

uint64_t sub_1DCFF83F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2460, &qword_1DD0E5228);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DCFF84E4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v56 = v8;
  v10 = v9;
  type metadata accessor for SnippetManager.SnippetManagerState(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_21_52();
  type metadata accessor for SnippetManager.SnippetRecord(0);
  OUTLINED_FUNCTION_9();
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_71_0();
  v51 = v25;
  OUTLINED_FUNCTION_12();
  v54 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v57 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_71_0();
  v53 = v31;
  v60[3] = v3;
  v60[4] = v1;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v60);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v3);
  if (qword_1ECCA13B0 != -1)
  {
    OUTLINED_FUNCTION_3_122(&qword_1ECCA13B0);
  }

  v33 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v33, qword_1ECCD2760);
  swift_unknownObjectRetain();
  v34 = sub_1DD0DD8EC();
  v35 = sub_1DD0DE6CC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v35))
  {
    v52 = v35;
    v36 = OUTLINED_FUNCTION_43_0();
    v58[0] = swift_slowAlloc();
    *v36 = 136315394;
    v59[0] = v10;
    v59[1] = v56;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
    v37 = sub_1DD0DE02C();
    v39 = sub_1DCB10E9C(v37, v38, v58);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    swift_getObjectType();
    v59[0] = v10;
    sub_1DD0DEC2C();
    OUTLINED_FUNCTION_7_78();
    sub_1DCFFA578(v40, 255, v41, MEMORY[0x1E69695E0]);
    v42 = sub_1DD0DF03C();
    v44 = v43;
    (*(v57 + 8))(v53, v54);
    v45 = sub_1DCB10E9C(v42, v44, v58);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_1DCAFC000, v34, v52, "Got new snippet from flow %s with id %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_156(v5 + 32, v59);
  if (*(v5 + 32))
  {
    sub_1DCB17CA0(v60, v51 + *(v55 + 28));
    sub_1DD0DCF8C();
  }

  v46 = sub_1DD0DD8EC();
  v47 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v47))
  {
    v48 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v48);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v49, v50, "Received a new snippet before SnippetManager.positionLookup has been set. This is a noop; snippet will be ignored");
    OUTLINED_FUNCTION_80();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCFF8E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCFF8EFC(uint64_t a1)
{
  result = type metadata accessor for SnippetManager.SnippetManagerState(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1DCFF930C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for SnippetManager.SnippetRecord(0);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = sub_1DD0DB04C();
    (*(*(v10 - 8) + 16))(v6, v7, v10);
    *&v6[v8[5]] = *&v7[v8[5]];
    v11 = v8[6];
    v12 = *&v7[v11];
    *&v6[v11] = v12;
    v13 = v8[7];
    v14 = &v6[v13];
    v15 = &v7[v13];
    v16 = *(v15 + 24);
    *&v6[v13 + 24] = v16;
    v17 = v16;
    v18 = **(v16 - 8);
    swift_unknownObjectRetain();
    v19 = v12;
    v18(v14, v15, v17);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_1DCFF94DC(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for SnippetManager.SnippetRecord(0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (!result)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 8))(v4, v7);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1Tm((v4 + *(v5 + 28)));
  }

  return result;
}

uint64_t *sub_1DCFF958C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for SnippetManager.SnippetRecord(0);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_1DD0DB04C();
    (*(*(v9 - 8) + 16))(v5, v6, v9);
    *&v5[v7[5]] = *&v6[v7[5]];
    v10 = v7[6];
    v11 = *&v6[v10];
    *&v5[v10] = v11;
    v12 = v7[7];
    v13 = &v5[v12];
    v14 = &v6[v12];
    v15 = *(v14 + 24);
    *&v5[v12 + 24] = v15;
    v16 = v15;
    v17 = **(v15 - 8);
    swift_unknownObjectRetain();
    v18 = v11;
    v17(v13, v14, v16);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  return a1;
}

uint64_t *sub_1DCFF9714(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for SnippetManager.SnippetRecord(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    if (!v11)
    {
      v23 = sub_1DD0DB04C();
      (*(*(v23 - 8) + 24))(v7, v8, v23);
      v24 = v9[5];
      v25 = &v7[v24];
      v26 = &v8[v24];
      v27 = *(v26 + 1);
      *v25 = *v26;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v25 + 1) = v27;
      v28 = v9[6];
      v29 = *&v8[v28];
      v30 = *&v7[v28];
      *&v7[v28] = v29;
      v31 = v29;

      __swift_assign_boxed_opaque_existential_1(&v7[v9[7]], &v8[v9[7]]);
      return a1;
    }

    sub_1DCFF8E30(v7, type metadata accessor for SnippetManager.SnippetRecord);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v7, v8, *(*(v21 - 8) + 64));
    return a1;
  }

  v12 = sub_1DD0DB04C();
  (*(*(v12 - 8) + 16))(v7, v8, v12);
  *&v7[v9[5]] = *&v8[v9[5]];
  v13 = v9[6];
  v14 = *&v8[v13];
  *&v7[v13] = v14;
  v15 = v9[7];
  v16 = &v7[v15];
  v17 = &v8[v15];
  v18 = *(v17 + 3);
  *(v16 + 3) = v18;
  *(v16 + 4) = *(v17 + 4);
  v19 = **(v18 - 8);
  swift_unknownObjectRetain();
  v20 = v14;
  v19(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  return a1;
}

void *sub_1DCFF9978(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for SnippetManager.SnippetRecord(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_1DD0DB04C();
    (*(*(v9 - 8) + 32))(v5, v6, v9);
    *&v5[v7[5]] = *&v6[v7[5]];
    *&v5[v7[6]] = *&v6[v7[6]];
    v10 = v7[7];
    v11 = &v5[v10];
    v12 = &v6[v10];
    v13 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v13;
    *(v11 + 4) = *(v12 + 4);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  return a1;
}

void *sub_1DCFF9A94(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for SnippetManager.SnippetRecord(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    if (!v11)
    {
      v19 = sub_1DD0DB04C();
      (*(*(v19 - 8) + 40))(v7, v8, v19);
      v20 = v9[5];
      v21 = &v7[v20];
      v22 = &v8[v20];
      v23 = *(v22 + 1);
      *v21 = *v22;
      swift_unknownObjectRelease();
      *(v21 + 1) = v23;
      v24 = v9[6];
      v25 = *&v7[v24];
      *&v7[v24] = *&v8[v24];

      v26 = v9[7];
      v27 = &v7[v26];
      v28 = &v8[v26];
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v29 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v29;
      *(v27 + 4) = *(v28 + 4);
      return a1;
    }

    sub_1DCFF8E30(v7, type metadata accessor for SnippetManager.SnippetRecord);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    return a1;
  }

  v12 = sub_1DD0DB04C();
  (*(*(v12 - 8) + 32))(v7, v8, v12);
  *&v7[v9[5]] = *&v8[v9[5]];
  *&v7[v9[6]] = *&v8[v9[6]];
  v13 = v9[7];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v16;
  *(v14 + 4) = *(v15 + 4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  return a1;
}

void sub_1DCFF9CC0(uint64_t a1)
{
  sub_1DCFF9D5C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCFF9D5C(uint64_t a1)
{
  if (!qword_1EDE49900)
  {
    type metadata accessor for SnippetManager.SnippetRecord(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE49900);
    }
  }
}

uint64_t *sub_1DCFF9DB4(uint64_t *a1, uint64_t *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  return a1;
}

uint64_t sub_1DCFF9EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 8))(a1, v4);
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(a2 + 28)));
}

uint64_t sub_1DCFF9F7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  return a1;
}

uint64_t sub_1DCFFA078(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8[1] = v10;
  v11 = a3[6];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  __swift_assign_boxed_opaque_existential_1((a1 + a3[7]), (a2 + a3[7]));
  return a1;
}

uint64_t sub_1DCFFA140(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  return a1;
}

uint64_t sub_1DCFFA1E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  swift_unknownObjectRelease();
  v8[1] = v10;
  v11 = a3[6];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = a3[7];
  v14 = a1 + v13;
  v15 = a2 + v13;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v13));
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  *(v14 + 32) = *(v15 + 32);
  return a1;
}

uint64_t sub_1DCFFA2D8(uint64_t a1)
{
  result = sub_1DD0DB04C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCFFA3F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCFFA450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1DCFFA4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetManager.SnippetRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFFA514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCFFA578(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DCFFA5C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t *sub_1DCFFA618(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  swift_getEnumCaseMultiPayload();
  v5 = sub_1DD0DB04C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
  *(a1 + v6[5]) = *(a2 + v6[5]);
  v7 = v6[6];
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v6[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCFFA7A4(uint64_t a1)
{
  v2 = sub_1DD0DB04C();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for SnippetManager.SnippetRecord(0);
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(v3 + 28)));
}

uint64_t sub_1DCFFA82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = sub_1DD0DB04C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
  *(a1 + v6[5]) = *(a2 + v6[5]);
  v7 = v6[6];
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v6[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 24);
  *(a1 + v9 + 24) = v12;
  v13 = v12;
  v14 = **(v12 - 8);
  swift_unknownObjectRetain();
  v15 = v8;
  v14(v10, v11, v13);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCFFA960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCFF8E30(a1, type metadata accessor for SnippetManager.SnippetManagerAction);
    swift_getEnumCaseMultiPayload();
    v5 = sub_1DD0DB04C();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
    *(a1 + v6[5]) = *(a2 + v6[5]);
    v7 = v6[6];
    v8 = *(a2 + v7);
    *(a1 + v7) = v8;
    v9 = v6[7];
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = *(v11 + 24);
    *(v10 + 24) = v12;
    *(v10 + 32) = *(v11 + 32);
    v13 = **(v12 - 8);
    swift_unknownObjectRetain();
    v14 = v8;
    v13(v10, v11, v12);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCFFAABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = sub_1DD0DB04C();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
  *(a1 + v6[5]) = *(a2 + v6[5]);
  *(a1 + v6[6]) = *(a2 + v6[6]);
  v7 = v6[7];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCFFAB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCFF8E30(a1, type metadata accessor for SnippetManager.SnippetManagerAction);
    swift_getEnumCaseMultiPayload();
    v5 = sub_1DD0DB04C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    v6 = type metadata accessor for SnippetManager.SnippetRecord(0);
    *(a1 + v6[5]) = *(a2 + v6[5]);
    *(a1 + v6[6]) = *(a2 + v6[6]);
    v7 = v6[7];
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = *(v9 + 16);
    *v8 = *v9;
    *(v8 + 16) = v10;
    *(v8 + 32) = *(v9 + 32);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCFFAC80(uint64_t a1)
{
  result = type metadata accessor for SnippetManager.SnippetRecord(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

id sub_1DCFFAD0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v78 = a7;
  v79 = a8;
  v80 = a3;
  v14 = sub_1DD0DB04C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DD0DB28C();
  if (v20 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v21 = v19;
  v22 = v20;
  if (!sub_1DCB6A8AC(v19, v20))
  {
    v77 = v22;
    v72 = a5;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v74 = a6;
    v28 = sub_1DD0DD8FC();
    v76 = __swift_project_value_buffer(v28, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v21;
      v32 = swift_slowAlloc();
      *v32 = 0;
      OUTLINED_FUNCTION_34_3();
      _os_log_impl(v33, v34, v35, v36, v32, 2u);
      v21 = v31;
      OUTLINED_FUNCTION_80();
    }

    v73 = a9;

    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    v75 = a4;

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v71 = v21;
      v40 = v39;
      v41 = swift_slowAlloc();
      v81 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1DCB10E9C(v80, v75, &v81);
      OUTLINED_FUNCTION_34_3();
      _os_log_impl(v42, v43, v44, v45, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_80();
      v21 = v71;
      OUTLINED_FUNCTION_80();
    }

    v46 = [objc_allocWithZone(MEMORY[0x1E69C7B88]) init];
    sub_1DD0DB03C();
    sub_1DD0DAFFC();
    (*(v15 + 8))(v18, v14);
    v47 = sub_1DD0DDF8C();

    [v46 setAceId_];

    v27 = v46;
    v48 = sub_1DD0DDF8C();
    OUTLINED_FUNCTION_3_123(v48, sel_setViewId_);

    sub_1DD0DB25C();
    v49 = sub_1DD0DDF8C();

    [v27 setBundleName_];

    v50 = sub_1DD0DDF8C();
    OUTLINED_FUNCTION_3_123(v50, sel_setItemType_);

    v51 = sub_1DD0DAEFC();
    OUTLINED_FUNCTION_3_123(v51, sel_setModelData_);

    [v27 setIsTransient_];
    v52 = v74;
    if (v74)
    {
      v53 = v72;
      v54 = sub_1DD0DDF8C();
      OUTLINED_FUNCTION_3_123(v54, sel_setResponseViewId_);

      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v81 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1DCB10E9C(v53, v52, &v81);
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v59, v60, v61, v62, v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        OUTLINED_FUNCTION_80();
LABEL_20:
        OUTLINED_FUNCTION_80();
      }
    }

    else
    {
      v55 = sub_1DD0DD8EC();
      v63 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v55, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v65, v66, v67, v68, v64, 2u);
        goto LABEL_20;
      }
    }

    sub_1DCB2C520(v21, v77);

    return v27;
  }

  sub_1DCB2C520(v21, v22);
LABEL_4:
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v23 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v23, qword_1EDE57E00);
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "ResponseFactory: SnippetPluginModel has no Data. Unable to build ACEView.", v26, 2u);
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

void sub_1DCFFB2CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v32 = v6;
  v33 = v5;
  v34 = v7;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 56))(v37, v15, v14);
  sub_1DCB17CA0(v37, v36);
  OUTLINED_FUNCTION_29_34();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_34();
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_138();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_138();
  v19 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_138();
  v20 = swift_getAssociatedConformanceWitness();
  v35[0] = AssociatedTypeWitness;
  v35[1] = v17;
  v35[2] = AssociatedConformanceWitness;
  v35[3] = v19;
  v35[4] = v20;
  type metadata accessor for SnippetPresenter(0, v35);
  OUTLINED_FUNCTION_2();
  (*(v21 + 8))(v37);
  v22 = v36[3];
  OUTLINED_FUNCTION_52_30(v36[4]);
  __swift_project_boxed_opaque_existential_1(v36, v22);
  v23 = v31;
  (*(v9 + 16))(v31, v0, v4);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  *(v26 + 24) = v2;
  (*(v9 + 32))(v26 + v24, v23, v4);
  v27 = v33;
  *(v26 + v25) = v32;
  v28 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = v34;
  *v28 = v27;
  v28[1] = v29;
  sub_1DD0DCF8C();
}

void SnippetPresenter.init<A>(_:reducer:eventHandler:)(void *x0_0, void x1_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void a7, uint64_t a5)
{
  v7[1] = *x0_0;
  type metadata accessor for Resolvable(0, a5, a1, a2);
  Resolvable.resolvedValuePublisher.getter(v7);
}

void SnippetPresenter.init<A, B>(_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v27 = v26;
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  OUTLINED_FUNCTION_46_29();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_6_0();
  sub_1DD0DDB6C();
  OUTLINED_FUNCTION_6_81();
  v35 = v24;
  v36 = v25;
  WitnessTable = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v35 = *v27;
  OUTLINED_FUNCTION_59_25(v30, v31, v32, v33);
  Resolvable.resolvedValuePublisher.getter(&v34);
}

uint64_t sub_1DCFFB96C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void SnippetPresenter.init<A, B, C>(_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50();
  a19 = v27;
  a20 = v28;
  v30 = v29;
  OUTLINED_FUNCTION_22_44();
  v31 = sub_1DD0DE97C();
  v32 = OUTLINED_FUNCTION_11_72(v31, v31);
  v33 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116(v33);
  OUTLINED_FUNCTION_31_30();
  v34 = sub_1DD0DE97C();
  v35 = OUTLINED_FUNCTION_5_116(v34);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(WitnessTable, &a12);
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v37, &a11);
  v46 = v32;
  v47 = v26;
  v48 = v35;
  v49 = WitnessTable;
  v50 = v37;
  v51 = swift_getWitnessTable();
  sub_1DD0DDA0C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = *v30;
  OUTLINED_FUNCTION_48_23();
  v46 = v40;
  OUTLINED_FUNCTION_59_25(v41, v42, v43, v44);
  Resolvable.resolvedValuePublisher.getter(&v45);
}

uint64_t sub_1DCFFBD94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a1, a1 + *(TupleTypeMetadata3 + 48), a1 + *(TupleTypeMetadata3 + 64));
}

void SnippetPresenter.init<A, B, C, D>(_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_52_30(v30);
  OUTLINED_FUNCTION_32_30(a22);
  OUTLINED_FUNCTION_22_44();
  v31 = sub_1DD0DE97C();
  v32 = OUTLINED_FUNCTION_11_72(v31, v31);
  OUTLINED_FUNCTION_29_34();
  v33 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116(v33);
  OUTLINED_FUNCTION_31_30();
  v34 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116(v34);
  OUTLINED_FUNCTION_46_29();
  v35 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_5_116(v35);
  OUTLINED_FUNCTION_6_81();
  v36 = v32;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(WitnessTable, v52);
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v38, v51);
  v39 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v39, &v47);
  v40 = swift_getWitnessTable();
  v48 = v36;
  v49 = a24;
  v50 = v28;
  v51[0] = v29;
  v51[1] = WitnessTable;
  v51[2] = v38;
  v52[0] = v39;
  v52[1] = v40;
  OUTLINED_FUNCTION_24_39();
  sub_1DD0DDA2C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_53_21();
  v48 = a24;
  OUTLINED_FUNCTION_59_25(v43, v44, v45, v46);
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFC2A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a1, a1 + TupleTypeMetadata[12], a1 + TupleTypeMetadata[16], a1 + TupleTypeMetadata[20]);
}

void SnippetPresenter.init<A, B, C, D, E>(_:_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_50();
  v31 = v30;
  OUTLINED_FUNCTION_50_24(v32);
  OUTLINED_FUNCTION_32_30(a29);
  OUTLINED_FUNCTION_51_29(v33);
  v34 = sub_1DD0DE97C();
  v35 = OUTLINED_FUNCTION_40_34(255, v34);
  OUTLINED_FUNCTION_22_44();
  sub_1DD0DE97C();
  v36 = OUTLINED_FUNCTION_6_0();
  v38 = OUTLINED_FUNCTION_40_34(v36, v37);
  OUTLINED_FUNCTION_29_34();
  sub_1DD0DE97C();
  v39 = OUTLINED_FUNCTION_6_0();
  v41 = OUTLINED_FUNCTION_40_34(v39, v40);
  OUTLINED_FUNCTION_16_61(v41, &v68);
  sub_1DD0DE97C();
  v42 = OUTLINED_FUNCTION_6_0();
  v44 = OUTLINED_FUNCTION_40_34(v42, v43);
  OUTLINED_FUNCTION_16_61(v44, &v67);
  sub_1DD0DE97C();
  v45 = OUTLINED_FUNCTION_6_0();
  v47 = OUTLINED_FUNCTION_40_34(v45, v46);
  OUTLINED_FUNCTION_3_124(v47, &v66);
  WitnessTable = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v69 = v38;
  v70 = v41;
  v71 = v44;
  v72 = v47;
  v73 = WitnessTable;
  v74 = v62;
  v75 = v61;
  v76 = v60;
  v48 = sub_1DD0DDA2C();
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_111();
  v63 = swift_getWitnessTable();
  v69 = v35;
  v70 = v48;
  v71 = v64;
  v72 = v63;
  OUTLINED_FUNCTION_24_39();
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_12_72();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_2(v56);
  v57 = *v31;
  OUTLINED_FUNCTION_57_19();
  v69 = v57;
  type metadata accessor for Resolvable(0, a24, v58, v59);
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFCA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, char *, char *, char *, char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v34 = a7;
  v35 = a6;
  v31 = a5;
  v32 = a8;
  v33 = a1;
  v36 = sub_1DD0DE97C();
  v37 = sub_1DD0DE97C();
  v38 = sub_1DD0DE97C();
  v39 = sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v19);
  v21 = &v30 - v20;
  v22 = sub_1DD0DE97C();
  (*(*(v22 - 8) + 16))(v21, a2, v22);
  v23 = TupleTypeMetadata[12];
  v24 = sub_1DD0DE97C();
  (*(*(v24 - 8) + 16))(&v21[v23], a3, v24);
  v25 = TupleTypeMetadata[16];
  v26 = sub_1DD0DE97C();
  (*(*(v26 - 8) + 16))(&v21[v25], a4, v26);
  v27 = TupleTypeMetadata[20];
  v28 = sub_1DD0DE97C();
  (*(*(v28 - 8) + 16))(&v21[v27], v31, v28);
  v35(v33, v21, &v21[v23], &v21[v25], &v21[v27]);
  return (*(v18 + 8))(v21, TupleTypeMetadata);
}

uint64_t sub_1DCFFCCF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

void SnippetPresenter.init<A, B, C, D, E, F>(_:_:_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_50();
  v79 = v34;
  OUTLINED_FUNCTION_51_29(v35);
  OUTLINED_FUNCTION_32_30(v36);
  OUTLINED_FUNCTION_50_24(a32);
  OUTLINED_FUNCTION_49_26(a24);
  v74 = a30;
  v71 = a28;
  v73 = a27;
  v72 = a26;
  v75 = a25;
  v37 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_11_72(v37, v37);
  OUTLINED_FUNCTION_31_30();
  v38 = sub_1DD0DE97C();
  v39 = OUTLINED_FUNCTION_5_116(v38);
  OUTLINED_FUNCTION_16_61(v39, &v74);
  v40 = sub_1DD0DE97C();
  v41 = OUTLINED_FUNCTION_5_116(v40);
  OUTLINED_FUNCTION_3_124(v41, &v73);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v72);
  v43 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v43, &v71);
  v68 = swift_getWitnessTable();
  v85 = v33;
  v86 = v39;
  v87 = v41;
  v88 = WitnessTable;
  v89 = v43;
  v90 = v68;
  sub_1DD0DDA0C();
  OUTLINED_FUNCTION_31_30();
  v44 = sub_1DD0DE97C();
  v45 = OUTLINED_FUNCTION_5_116(v44);
  OUTLINED_FUNCTION_16_61(v45, &v85);
  v46 = sub_1DD0DE97C();
  v47 = OUTLINED_FUNCTION_5_116(v46);
  OUTLINED_FUNCTION_16_61(v47, &v84);
  v48 = sub_1DD0DE97C();
  v49 = OUTLINED_FUNCTION_5_116(v48);
  OUTLINED_FUNCTION_30_3(v49, &v83);
  v50 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v50, &v82);
  v51 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v51, &v81);
  v69 = swift_getWitnessTable();
  v85 = v45;
  v86 = v47;
  v87 = v49;
  v88 = v50;
  v89 = v51;
  v90 = v69;
  v52 = sub_1DD0DDA0C();
  v53 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v53, &v80);
  v70 = swift_getWitnessTable();
  v85 = v33;
  v86 = v52;
  v87 = v53;
  v88 = v70;
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_34_0();
  v77 = v56;
  v78 = *(v52 - 8);
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_2(v61);
  v76 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_12_72();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_53_21();
  v85 = v43;
  type metadata accessor for Resolvable(0, v75, v66, v67);
  Resolvable.resolvedValuePublisher.getter(&v84);
}

uint64_t sub_1DCFFD680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, char *, char *, char *, char *)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v45 = a8;
  v46 = a7;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v39 = a3;
  v36 = a1;
  v37 = a2;
  v44 = a9;
  v17 = sub_1DD0DE97C();
  v18 = sub_1DD0DE97C();
  v38 = sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v40 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v20);
  v22 = &v36 - v21;
  v23 = sub_1DD0DE97C();
  v24 = sub_1DD0DE97C();
  v25 = sub_1DD0DE97C();
  v26 = swift_getTupleTypeMetadata3();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v36 - v29;
  (*(*(v23 - 8) + 16))(&v36 - v29, v36, v23);
  v31 = *(v26 + 48);
  (*(*(v24 - 8) + 16))(&v30[v31], v37, v24);
  v32 = *(v26 + 64);
  (*(*(v25 - 8) + 16))(&v30[v32], v39, v25);
  (*(*(v17 - 8) + 16))(v22, v41, v17);
  v33 = *(TupleTypeMetadata3 + 48);
  (*(*(v18 - 8) + 16))(&v22[v33], v42, v18);
  v34 = *(TupleTypeMetadata3 + 64);
  (*(*(v38 - 8) + 16))(&v22[v34], v43);
  v46(v30, &v30[v31], &v30[v32], v22, &v22[v33], &v22[v34]);
  (*(v40 + 8))(v22, TupleTypeMetadata3);
  return (*(v27 + 8))(v30, v26);
}

uint64_t sub_1DCFFDA3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 + 48);
  v14 = *(TupleTypeMetadata3 + 64);
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  v15 = swift_getTupleTypeMetadata3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + v13, a1 + v14, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + *(v15 + 48), a1 + *(TupleTypeMetadata2 + 48) + *(v15 + 64));
}

void SnippetPresenter.init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:reducer:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_50();
  v103 = v36;
  v96 = v37;
  v95 = v38;
  v92 = v39;
  v91 = v40;
  v90 = v41;
  v89 = v42;
  v88 = v43;
  OUTLINED_FUNCTION_51_29(v44);
  OUTLINED_FUNCTION_32_30(v45);
  OUTLINED_FUNCTION_52_30(v46);
  v102 = a35;
  v101 = a34;
  OUTLINED_FUNCTION_49_26(a33);
  v100 = a24;
  v114 = a31;
  v115 = a32;
  v108 = a30;
  v107 = a29;
  v113 = a28;
  v112 = a27;
  v99 = a25;
  v109 = a26;
  v47 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_11_72(v47, v47);
  OUTLINED_FUNCTION_46_29();
  v48 = sub_1DD0DE97C();
  v49 = OUTLINED_FUNCTION_5_116(v48);
  OUTLINED_FUNCTION_16_61(v49, &v108);
  v50 = sub_1DD0DE97C();
  v51 = OUTLINED_FUNCTION_5_116(v50);
  OUTLINED_FUNCTION_3_124(v51, &v107);
  v52 = v35;
  v87 = v35;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v106);
  v54 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v54, &v105);
  v85 = swift_getWitnessTable();
  v121 = v52;
  v122 = v49;
  v123 = v51;
  v124 = WitnessTable;
  v125 = v54;
  v126 = v85;
  v55 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_29_34();
  v56 = sub_1DD0DE97C();
  v57 = OUTLINED_FUNCTION_5_116(v56);
  OUTLINED_FUNCTION_16_61(v57, &v120);
  v58 = sub_1DD0DE97C();
  v59 = OUTLINED_FUNCTION_5_116(v58);
  OUTLINED_FUNCTION_16_61(v59, &v119);
  v60 = sub_1DD0DE97C();
  v61 = OUTLINED_FUNCTION_5_116(v60);
  OUTLINED_FUNCTION_16_61(v61, &v118);
  v62 = sub_1DD0DE97C();
  v63 = OUTLINED_FUNCTION_5_116(v62);
  OUTLINED_FUNCTION_30_3(v63, &v117);
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v64, &v116);
  v65 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v65, &v115);
  v66 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v66, &v104);
  v86 = swift_getWitnessTable();
  v121 = v57;
  v122 = v59;
  v123 = v61;
  v124 = v63;
  v125 = v64;
  v126 = v65;
  v127 = v66;
  v128 = v86;
  v67 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_7_79();
  v94 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_111();
  v93 = swift_getWitnessTable();
  v121 = v55;
  v122 = v67;
  v105 = v55;
  v106 = v67;
  v123 = v94;
  v124 = v93;
  OUTLINED_FUNCTION_24_39();
  v97 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_9();
  v98 = v68;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v69, v70);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v71);
  v111 = *(v67 - 8);
  v74 = MEMORY[0x1EEE9AC00](v72, v73);
  v84[1] = v84 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v76);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_2(v77);
  v110 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v78, v79);
  OUTLINED_FUNCTION_12_72();
  MEMORY[0x1EEE9AC00](v80, v81);
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_53_21();
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_35_34();
  v121 = v61;
  type metadata accessor for Resolvable(0, v109, v82, v83);
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFE484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(char *, char *, char *, char *, char *, char *, char *)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v49 = a5;
  v50 = a7;
  v48 = a6;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v51 = a9;
  v52 = a10;
  v53 = a8;
  v45 = a4;
  v46 = a19;
  v44 = a17;
  v54 = sub_1DD0DE97C();
  v55 = sub_1DD0DE97C();
  v56 = sub_1DD0DE97C();
  v57 = sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v47 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v20);
  v22 = &v41 - v21;
  v23 = sub_1DD0DE97C();
  v24 = sub_1DD0DE97C();
  v25 = sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v27 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v28);
  v30 = &v41 - v29;
  (*(*(v23 - 8) + 16))(&v41 - v29, v41, v23);
  v31 = *(TupleTypeMetadata3 + 48);
  (*(*(v24 - 8) + 16))(&v30[v31], v42, v24);
  v32 = *(TupleTypeMetadata3 + 64);
  (*(*(v25 - 8) + 16))(&v30[v32], v43, v25);
  v33 = sub_1DD0DE97C();
  (*(*(v33 - 8) + 16))(v22, v45, v33);
  v34 = TupleTypeMetadata[12];
  v35 = sub_1DD0DE97C();
  (*(*(v35 - 8) + 16))(&v22[v34], v49, v35);
  v36 = TupleTypeMetadata[16];
  v37 = sub_1DD0DE97C();
  (*(*(v37 - 8) + 16))(&v22[v36], v48, v37);
  v38 = TupleTypeMetadata[20];
  v39 = sub_1DD0DE97C();
  (*(*(v39 - 8) + 16))(&v22[v38], v50, v39);
  v53(v30, &v30[v31], &v30[v32], v22, &v22[v34], &v22[v36], &v22[v38]);
  (*(v47 + 8))(v22, TupleTypeMetadata);
  return (*(v27 + 8))(v30, TupleTypeMetadata3);
}

uint64_t sub_1DCFFE888()
{
  OUTLINED_FUNCTION_30_41();
  v22 = v0;
  v20 = v1;
  v21 = v2;
  OUTLINED_FUNCTION_45_25();
  return sub_1DCFFE484(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1DCFFE8D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = *(TupleTypeMetadata3 + 48);
  v15 = *(TupleTypeMetadata3 + 64);
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + v14, a1 + v15, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

void SnippetPresenter.init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:reducer:modelTransformer:snippetEventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_50();
  v91[6] = v39;
  v91[7] = v40;
  v91[11] = a24;
  OUTLINED_FUNCTION_51_29(a23);
  OUTLINED_FUNCTION_32_30(v41);
  v91[5] = v42;
  v91[4] = a39;
  v91[3] = a38;
  v91[2] = a37;
  v91[10] = a25;
  v91[0] = a26;
  v91[1] = a36;
  v91[17] = a35;
  v91[20] = a30;
  OUTLINED_FUNCTION_52_30(a29);
  v90 = a27;
  v91[19] = a28;
  v91[16] = a34;
  v91[15] = a33;
  v91[14] = a32;
  v91[13] = a31;
  v43 = sub_1DD0DE97C();
  v44 = OUTLINED_FUNCTION_11_72(v43, v43);
  OUTLINED_FUNCTION_22_44();
  v45 = sub_1DD0DE97C();
  v46 = OUTLINED_FUNCTION_5_116(v45);
  OUTLINED_FUNCTION_16_61(v46, &v97);
  v47 = sub_1DD0DE97C();
  v48 = OUTLINED_FUNCTION_5_116(v47);
  OUTLINED_FUNCTION_16_61(v48, &v96);
  v49 = sub_1DD0DE97C();
  v50 = OUTLINED_FUNCTION_5_116(v49);
  OUTLINED_FUNCTION_3_124(v50, &v95);
  v89 = v44;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v94);
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v52, &v93);
  v53 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v53, &v92);
  v86 = swift_getWitnessTable();
  v98 = v44;
  v99 = v46;
  v100 = v48;
  v101 = v50;
  v102 = WitnessTable;
  v103 = v52;
  v104 = v53;
  v105 = v86;
  OUTLINED_FUNCTION_24_39();
  v54 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v57);
  v58 = sub_1DD0DE97C();
  v59 = OUTLINED_FUNCTION_5_116(v58);
  OUTLINED_FUNCTION_16_61(v59, v91);
  v60 = sub_1DD0DE97C();
  v61 = OUTLINED_FUNCTION_5_116(v60);
  OUTLINED_FUNCTION_16_61(v61, &v90);
  v62 = sub_1DD0DE97C();
  v63 = OUTLINED_FUNCTION_5_116(v62);
  OUTLINED_FUNCTION_30_3(v63, &v89);
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v64, &v88);
  v65 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v65, &v87);
  v83 = swift_getWitnessTable();
  v98 = v59;
  v99 = v61;
  v100 = v63;
  v101 = v64;
  v102 = v65;
  v103 = v83;
  OUTLINED_FUNCTION_24_39();
  v66 = sub_1DD0DDA0C();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v69);
  OUTLINED_FUNCTION_7_79();
  v85 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_111();
  v84 = swift_getWitnessTable();
  v98 = v66;
  v99 = v54;
  v100 = v85;
  v101 = v84;
  OUTLINED_FUNCTION_24_39();
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v72);
  OUTLINED_FUNCTION_1_136();
  swift_getWitnessTable();
  sub_1DD0DDA9C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v75);
  OUTLINED_FUNCTION_3_1();
  swift_getWitnessTable();
  sub_1DD0DDA8C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v78);
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_53_21();
  v98 = v54;
  OUTLINED_FUNCTION_59_25(v79, v80, v81, v82);
  OUTLINED_FUNCTION_37_37();
}

uint64_t sub_1DCFFF410()
{
  OUTLINED_FUNCTION_30_41();
  v22 = v0;
  v20 = v1;
  v21 = v2;
  OUTLINED_FUNCTION_45_25();
  return sub_1DCFFE484(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
}

void sub_1DCFFF4F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a5;
  v11 = a4;
  v13 = a3;
  v14 = a2;
  v16 = a1;
  v10 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v10, v7);
  v15 = &v9 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

void sub_1DD000158()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DCFFF4F8(v5, v0 + v2, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v6, v7);
}

uint64_t sub_1DD0001D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v73 = a2;
  v9 = type metadata accessor for SnippetManager.SnippetManagerState(0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = type metadata accessor for SnippetManager.SnippetRecord(0);
  v70 = *(v13 - 8);
  v71 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v63 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v64 = v59 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v61 = v59 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v67 = v59 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v59 - v27;
  v69 = sub_1DD0DB04C();
  v75 = *(v69 - 8);
  v30 = MEMORY[0x1EEE9AC00](v69, v29);
  v66 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v68 = v59 - v33;
  v80[3] = type metadata accessor for AceOutput(0);
  v80[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v80);
  sub_1DD000C7C(a4, boxed_opaque_existential_1Tm, type metadata accessor for AceOutput);
  if (qword_1ECCA13B0 != -1)
  {
    swift_once();
  }

  v35 = sub_1DD0DD8FC();
  v36 = __swift_project_value_buffer(v35, qword_1ECCD2760);
  swift_unknownObjectRetain();
  v37 = sub_1DD0DD8EC();
  v38 = sub_1DD0DE6CC();
  swift_unknownObjectRelease();
  v39 = os_log_type_enabled(v37, v38);
  v72 = a1;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v74 = v36;
    LODWORD(v60) = v38;
    v41 = v40;
    v65 = swift_slowAlloc();
    v77[0] = v65;
    *v41 = 136315394;
    v76 = a3;
    v78 = a1;
    v79 = v73;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABEA0, &unk_1DD109E80);
    v42 = sub_1DD0DE02C();
    v44 = sub_1DCB10E9C(v42, v43, v77);
    v62 = a5;
    v45 = v28;
    v46 = v44;

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    swift_getObjectType();
    v78 = a1;
    v47 = v68;
    sub_1DD0DEC2C();
    sub_1DCB28A60();
    v48 = v69;
    v49 = sub_1DD0DF03C();
    v51 = v50;
    (*(v75 + 8))(v47, v48);
    v52 = sub_1DCB10E9C(v49, v51, v77);
    v28 = v45;
    a5 = v62;

    *(v41 + 14) = v52;
    _os_log_impl(&dword_1DCAFC000, v37, v60, "Got new snippet from flow %s with id %s", v41, 0x16u);
    v53 = v65;
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v53, -1, -1);
    MEMORY[0x1E12A8390](v41, -1, -1);
  }

  swift_beginAccess();
  if (a5[4])
  {
    v59[5] = a5[4];
    v54 = a5[5];
    sub_1DCB17CA0(v80, &v28[*(v71 + 28)]);
    v59[4] = v54;
    sub_1DD0DCF8C();
  }

  v55 = sub_1DD0DD8EC();
  v56 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1DCAFC000, v55, v56, "Received a new snippet before SnippetManager.positionLookup has been set. This is a noop; snippet will be ignored", v57, 2u);
    MEMORY[0x1E12A8390](v57, -1, -1);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v80);
}

uint64_t sub_1DD000C7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD000CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetManager.SnippetRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD000D40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Int __swiftcall DialogUsageProvider.usageCount(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = objc_opt_self();
  v4 = sub_1DD0DDF8C();
  v5 = [v3 getDialogStateUseCase_];

  v6 = [v5 usageCount];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v7 = v6;
  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);

  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DCB10E9C(countAndFlagsBits, object, &v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "DialogUsageProvider: CAT %s has usage count: %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return v7;
}

_BYTE *storeEnumTagSinglePayload for DialogUsageProvider(_BYTE *result, int a2, int a3)
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

char *sub_1DD00187C(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DD003E30(a1, type metadata accessor for RelationshipLabel);
    type metadata accessor for RelationshipLabel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);

  return a1;
}

_OWORD *sub_1DD0019AC(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DD003E30(a1, type metadata accessor for RelationshipLabel);
    v6 = type metadata accessor for RelationshipLabel(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = *(a3 + 20);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  return a1;
}