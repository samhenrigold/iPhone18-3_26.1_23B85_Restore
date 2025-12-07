uint64_t sub_266E67484()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E67580(uint64_t a1, char a2, char a3)
{
  *(v4 + 177) = a3;
  *(v4 + 176) = a2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v3;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E6759C()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 177);
  v2 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E9EF30;
  strcpy((inited + 32), "highConfidence");
  *(inited + 47) = -18;
  v4 = MEMORY[0x277D839B0];
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = 0x506E497075746573;
  *(inited + 88) = 0xEF73736572676F72;
  *(inited + 120) = v4;
  *(inited + 96) = v1;
  *(v0 + 160) = sub_266E9CFE4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 168) = v5;
  *v5 = v6;
  v5[1] = sub_266E67704;
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_20_2();

  return sub_266E81A40(v7, v8, v9, v10);
}

uint64_t sub_266E67704()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E67800()
{
  OUTLINED_FUNCTION_7_0();
  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  *(v1 + 224) = v3;
  *(v1 + 176) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93E8, &qword_266E9F020);
  *(v1 + 200) = OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E67890()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 200);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E9EF30;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000266EA2100;
  v5 = sub_266E9CD84();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v5);
  v7 = MEMORY[0x277D839B0];
  *(inited + 48) = (EnumTagSinglePayload != 1) & v2;
  *(inited + 72) = v7;
  *(inited + 80) = 0x73696C6261747365;
  *(inited + 88) = 0xEF656D614E646568;
  sub_266E67D3C(v3, v1, &qword_2800E93E8, &qword_266E9F020);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    v8 = MEMORY[0x277D837D0];
    sub_266E67DA0(*(v0 + 200), &qword_2800E93E8, &qword_266E9F020);
    *(inited + 120) = v8;
    *(inited + 96) = 0;
    *(inited + 104) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 168) = v5;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 144));
    OUTLINED_FUNCTION_28_0();
    (*(v9 + 32))();
    sub_266E67D2C((v0 + 144), (inited + 96));
  }

  v10 = *(v0 + 192);
  v11 = sub_266E9CFE4();
  *(v0 + 208) = v11;
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  OUTLINED_FUNCTION_14_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 216) = v12;
  *v12 = v13;
  v12[1] = sub_266E67AD8;
  OUTLINED_FUNCTION_13_1();

  return sub_266E81A40(v14, v15, v16, v11);
}

uint64_t sub_266E67AD8()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

unint64_t sub_266E67C30()
{
  result = qword_2800E93E0;
  if (!qword_2800E93E0)
  {
    sub_266E9BEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E93E0);
  }

  return result;
}

unint64_t sub_266E67C88()
{
  result = qword_2800E98E0;
  if (!qword_2800E98E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E98E0);
  }

  return result;
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

_OWORD *sub_266E67D2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_266E67D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266E67DA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266E67DFC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_28_0();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[2].n128_u64[0] = 0xD000000000000010;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;

  return sub_266E6FA54();
}

void *OUTLINED_FUNCTION_15_0(uint64_t a1)
{
  *(v2 + 120) = a1;
  v4 = v1[3];

  return __swift_project_boxed_opaque_existential_0(v1, v4);
}

uint64_t OUTLINED_FUNCTION_17_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 72) = a2;
  *(v2 + 48) = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_266E9C5D4();
}

void *OUTLINED_FUNCTION_25_0()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v2);
}

void *OUTLINED_FUNCTION_26_0()
{
  v2 = *(v0 + 24);
  v3 = v2[3];

  return __swift_project_boxed_opaque_existential_0(v2, v3);
}

id sub_266E68014(void *a1)
{
  sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93F8, &qword_266E9F0A8);
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = [objc_allocWithZone(type metadata accessor for UserIdentifyIntent()) init];
  sub_266E9CD04();
  v10 = sub_266E9CD14();
  (*(v5 + 8))(v8, v3);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v11);
  v26 = (*(v12 + 48))(v11, v12);
  v10(&v25, &v26);

  [v9 setCaseType_];
  type metadata accessor for Identity();
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_266E686C4(0, 0, 0, 0xE000000000000000);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v16 = OUTLINED_FUNCTION_2_4();
  v17(v16, v15);
  if (v18)
  {
    sub_266E9D014();
    OUTLINED_FUNCTION_2_4();
  }

  else
  {
    v13 = 0;
  }

  [v14 setName_];

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v20 = OUTLINED_FUNCTION_2_4();
  v21(v20, v19);
  if (v22)
  {
    sub_266E9D014();
    OUTLINED_FUNCTION_2_4();
  }

  else
  {
    v13 = 0;
  }

  [v14 setNegativeName_];

  [v9 setIdentity_];
  return v9;
}

id sub_266E68424(void *a1)
{
  v2 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(type metadata accessor for SwitchProfileIntent()) init];
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 32))(v9, v10);
  if (v12)
  {
    sub_266E68758(v11, v12, v8);

    v13 = 2;
  }

  else
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v14);
    v13 = (*(v15 + 24))(v14, v15) & 1;
  }

  if (qword_2800E8D88 != -1)
  {
    OUTLINED_FUNCTION_1_6(&qword_2800E8D88);
  }

  v16 = __swift_project_value_buffer(v2, qword_2800EC7F8);
  (*(v4 + 16))(v7, v16, v2);
  v17 = sub_266E9CF84();
  v18 = sub_266E9D194();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v8;
    v28 = v20;
    v21 = v20;
    *v19 = 136315138;
    v22 = SwitchType.description.getter();
    v24 = sub_266E6E7D4(v22, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_266E51000, v17, v18, "Setting switchType with %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v25 = v21;
    v8 = v27;
    MEMORY[0x26D5F66A0](v25, -1, -1);
    MEMORY[0x26D5F66A0](v19, -1, -1);
  }

  (*(v4 + 8))(v7, v2);
  [v8 setSwitchType_];
  return v8;
}

id sub_266E686C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_266E9D014();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

void sub_266E68758(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();
  [a3 setName_];
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_266E687DC(uint64_t a1)
{
  type metadata accessor for Globals();
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  v1 = swift_allocObject();
  result = sub_266E68864(v3);
  qword_2800EC768 = v1;
  return result;
}

uint64_t sub_266E68830()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
    LOBYTE(v1) = os_variant_has_internal_ui();
    *(v0 + 56) = v1;
  }

  return v1 & 1;
}

uint64_t sub_266E68864(uint64_t a1)
{
  *(v1 + 56) = 2;
  *(v1 + 64) = 0xD000000000000023;
  *(v1 + 72) = 0x8000000266EA2290;
  *(v1 + 80) = 0xD00000000000003BLL;
  *(v1 + 88) = 0x8000000266EA22C0;
  *(v1 + 96) = 0xD000000000000030;
  *(v1 + 104) = 0x8000000266EA2300;
  *(v1 + 112) = 0xD00000000000003DLL;
  *(v1 + 120) = 0x8000000266EA2340;
  sub_266E689F4(a1, &v4);
  if (v5)
  {
    sub_266E68A64(a1);
    sub_266E595F8(&v4, &v6);
  }

  else
  {
    v7 = &type metadata for DarwinProvider;
    v8 = &off_287875ED0;
    sub_266E68A64(a1);
    if (v5)
    {
      sub_266E68A64(&v4);
    }
  }

  sub_266E595F8(&v6, v1 + 16);
  return v1;
}

void *sub_266E6895C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t sub_266E6899C()
{
  sub_266E6895C();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_266E689F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9368, "jG");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E68A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9368, "jG");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E68ADC()
{
  type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod(0);
  sub_266E690AC();
  result = sub_266E9CFE4();
  qword_2800EC770 = result;
  return result;
}

uint64_t sub_266E68B2C()
{
  type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType(0);
  sub_266E69100();
  result = sub_266E9CFE4();
  qword_2800EC778 = result;
  return result;
}

void *sub_266E68B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v5 = a2;
  v6 = a1;
  v7 = sub_266E9CFA4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (!v17)
  {
    if (qword_2800E8D78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_2800E8D78);
    }

    __swift_project_value_buffer(v7, qword_2800EC7C8);
    OUTLINED_FUNCTION_1_7();
    v27(v11);
    v28 = sub_266E9CF84();
    v29 = sub_266E9D194();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_266E51000, v28, v29, "#FlowLogIdentityContextUtils returning with nil domainContext", v30, 2u);
      MEMORY[0x26D5F66A0](v30, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v18 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D575B0]) init];
  if (!v19)
  {
    if (qword_2800E8D78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_2800E8D78);
    }

    __swift_project_value_buffer(v7, qword_2800EC7C8);
    OUTLINED_FUNCTION_1_7();
    v31(v14);
    v32 = sub_266E9CF84();
    v33 = sub_266E9D194();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266E51000, v32, v33, "#FlowLogIdentityContextUtils returning with nil identityDomainContext", v34, 2u);
      MEMORY[0x26D5F66A0](v34, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    return 0;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277D576A0]) init];
  if (!v21)
  {
    if (qword_2800E8D78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_2800E8D78);
    }

    __swift_project_value_buffer(v7, qword_2800EC7C8);
    OUTLINED_FUNCTION_1_7();
    v35(v16);
    v36 = sub_266E9CF84();
    v37 = sub_266E9D194();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266E51000, v36, v37, "#FlowLogIdentityContextUtils returning with nil profileSwitchContext", v38, 2u);
      MEMORY[0x26D5F66A0](v38, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v16, v7);
    return 0;
  }

  v22 = v21;
  if (v6 != 4)
  {
    if (qword_2800E8D58 != -1)
    {
      swift_once();
    }

    v23 = qword_2800EC770;
    if (*(qword_2800EC770 + 16) && (v24 = sub_266E9823C(), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 4 * v24);
    }

    else
    {
      v26 = 0;
    }

    [v22 setProfileSwitchMethod_];
  }

  if ((a3 & 0x100000000) == 0)
  {
    [v22 setProfileSwitchOutcome_];
  }

  if ((v45 & 0x100000000) == 0)
  {
    [v22 setProfileSwitchFailureReason_];
  }

  if (v5 != 3)
  {
    if (qword_2800E8D60 != -1)
    {
      swift_once();
    }

    v39 = qword_2800EC778;
    if (*(qword_2800EC778 + 16) && (v40 = sub_266E9823C(), (v41 & 1) != 0))
    {
      v42 = *(*(v39 + 56) + 4 * v40);
    }

    else
    {
      v42 = 0;
    }

    [v22 setProfileSwitchByNameType_];
  }

  [v20 setProfileSwitchContext_];
  [v18 setIdentityContext_];

  return v18;
}

unint64_t sub_266E690AC()
{
  result = qword_2800E9400;
  if (!qword_2800E9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9400);
  }

  return result;
}

unint64_t sub_266E69100()
{
  result = qword_2800E9408;
  if (!qword_2800E9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9408);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

const char *sub_266E6919C(char a1)
{
  if (a1)
  {
    return "cross_device_switch_profile";
  }

  else
  {
    return "switch_profile";
  }
}

uint64_t sub_266E69200(char a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1 & 1);
  return sub_266E9D4A4();
}

unint64_t sub_266E69280()
{
  result = qword_2800E9410;
  if (!qword_2800E9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9410);
  }

  return result;
}

uint64_t sub_266E692DC(char a1)
{
  v4[3] = &type metadata for IdentityFeatures;
  v4[4] = sub_266E69280();
  LOBYTE(v4[0]) = a1;
  v2 = sub_266E9C844();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

uint64_t getEnumTagSinglePayload for IdentityFeatures(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for IdentityFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E694A0);
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

unint64_t sub_266E694E8()
{
  result = qword_2800E9418;
  if (!qword_2800E9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9418);
  }

  return result;
}

id SwitchProfileIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_266E69570(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_266E9D2E4();
    v9 = *(type metadata accessor for UserAccount(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_266E9D2C4();
      sub_266E9D2F4();
      sub_266E9D304();
      sub_266E9D2D4();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

id SwitchProfileIntentHandler.init()()
{
  if (qword_2800E8D68 != -1)
  {
    swift_once();
  }

  sub_266E5CE50(qword_2800EC7A0, v10);
  v0 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  type metadata accessor for AssistantServicesProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  sub_266E9C1A4();
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = (v4 - v3);
  (*(v6 + 16))(v4 - v3);
  v7 = sub_266E6EE9C(*v5, v1, v9);

  __swift_destroy_boxed_opaque_existential_0(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id static SwitchProfileIntentHandler.handlerForIntentExtension()(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentHandler());

  return [v1 init];
}

uint64_t SwitchProfileIntentHandler.resolveAccount(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  OUTLINED_FUNCTION_19(v3);
  v1[19] = OUTLINED_FUNCTION_18();
  v4 = sub_266E9C314();
  v1[20] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[21] = v5;
  v1[22] = OUTLINED_FUNCTION_18();
  v6 = sub_266E9CFA4();
  v1[23] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[24] = v7;
  v1[25] = OUTLINED_FUNCTION_32_0();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[28] = v8;
  OUTLINED_FUNCTION_19(v8);
  v1[29] = OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E699F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_42();
  if (qword_2800E8D48 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_2800E8D48);
  }

  v13 = qword_2800E92F8;
  v12[30] = qword_2800E92F8;
  v14 = v13;
  sub_266E9CF64();
  sub_266E9D1D4();
  v52 = v14;
  OUTLINED_FUNCTION_20_3();
  sub_266E9CF54();
  OUTLINED_FUNCTION_18_3();
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v15 = v12[24];
  v12[31] = __swift_project_value_buffer(v12[23], qword_2800EC810);
  v16 = *(v15 + 16);
  v12[32] = v16;
  v12[33] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17 = OUTLINED_FUNCTION_6_0();
  v16(v17);
  v18 = sub_266E9CF84();
  v19 = sub_266E9D194();
  if (os_log_type_enabled(v18, v19))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_54(&dword_266E51000, v20, v21, "SwitchProfileIntentHandler.resolveAccount");
    OUTLINED_FUNCTION_4_0();
  }

  v22 = v12[24];
  v23 = v12[17];

  v24 = *(v22 + 8);
  v12[34] = v24;
  v25 = OUTLINED_FUNCTION_21_1();
  v24(v25);
  v26 = [v23 account];
  if (v26)
  {
    v27 = v26;
    sub_266E6ED60(v26, &selRef_profileId);
    if (v28)
    {

      v29 = OUTLINED_FUNCTION_6_0();
      v16(v29);
      v30 = sub_266E9CF84();
      v31 = sub_266E9D184();
      if (OUTLINED_FUNCTION_12(v31))
      {
        v32 = OUTLINED_FUNCTION_5_0();
        *v32 = 0;
        OUTLINED_FUNCTION_37();
        _os_log_impl(v33, v34, v35, v36, v32, 2u);
        OUTLINED_FUNCTION_4_0();
      }

      v37 = v12[26];
      v38 = v12[23];

      (v24)(v37, v38);
      type metadata accessor for SwitchProfileAccountResolutionResult();
      static AccountResolutionResult.success(with:)(v27);

      sub_266E9D1C4();
      OUTLINED_FUNCTION_20_3();
      sub_266E9CF54();
      v39 = v12[29];
      OUTLINED_FUNCTION_0_9();
      sub_266E6F260(v39, v40);

      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_14_2();

      return v43(v41, v42, v43, v44, v45, v46, v47, v48, v52, a10, a11, a12);
    }
  }

  __swift_project_boxed_opaque_existential_0((v12[18] + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_assistantServices), *(v12[18] + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_assistantServices + 24));
  v50 = swift_task_alloc();
  v12[35] = v50;
  *v50 = v12;
  v50[1] = sub_266E69D70;
  OUTLINED_FUNCTION_14_2();

  return sub_266E530A0();
}

uint64_t sub_266E69D70()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = v3;

  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E69E58()
{
  v1 = *(v0 + 288);
  sub_266E5CE50(*(v0 + 144) + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess, v0 + 88);

  sub_266E61AD4(MEMORY[0x277D84F90], v1, v0 + 88, v2, v3, v4, v5, v6, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (!*(*(v0 + 56) + 16))
  {
    v11 = *(v0 + 256);

    v12 = OUTLINED_FUNCTION_30_1();
    v11(v12);
    v13 = sub_266E9CF84();
    v14 = sub_266E9D1A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_5_0();
      *v15 = 0;
      _os_log_impl(&dword_266E51000, v13, v14, "No accounts found.", v15, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v16 = *(v0 + 272);
    v17 = *(v0 + 200);
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 144);
    v40 = *(v0 + 136);

    v16(v17, v18);
    __swift_project_boxed_opaque_existential_0((v22 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender), *(v22 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender + 24));
    sub_266E9C284();
    (*(v20 + 104))(v19, *MEMORY[0x277D5BB68], v21);
    v23 = [v40 typeName];
    sub_266E9D024();

    sub_266E9C224();
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    sub_266E9C274();
    sub_266E9C1B4();

    type metadata accessor for SwitchProfileAccountResolutionResult();
    static SwitchProfileAccountResolutionResult.unsupported(forReason:)(2);
    sub_266E6F098(v0 + 16);
    sub_266E9D1C4();
    OUTLINED_FUNCTION_20_3();
    sub_266E9CF54();
    v28 = *(v0 + 232);
    OUTLINED_FUNCTION_0_9();
    sub_266E6F260(v28, v29);

    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_17_2();

    __asm { BRAA            X2, X16 }
  }

  v7 = [*(v0 + 136) switchType];
  if (v7 == 2)
  {

    v34 = swift_task_alloc();
    *(v0 + 312) = v34;
    *v34 = v0;
    v34[1] = sub_266E6A4CC;
    OUTLINED_FUNCTION_36(*(v0 + 136));
    OUTLINED_FUNCTION_17_2();

    return sub_266E6CFB4();
  }

  else if (v7 == 1)
  {

    v32 = swift_task_alloc();
    *(v0 + 328) = v32;
    *v32 = v0;
    v32[1] = sub_266E6A690;
    OUTLINED_FUNCTION_36(*(v0 + 136));
    OUTLINED_FUNCTION_17_2();

    return sub_266E6B624();
  }

  else if (v7)
  {
    *(v0 + 128) = v7;
    OUTLINED_FUNCTION_17_2();

    return MEMORY[0x2821FE1D0](v36);
  }

  else
  {

    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = sub_266E6A308;
    OUTLINED_FUNCTION_17_2();

    return sub_266E6E048();
  }
}

uint64_t sub_266E6A308()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = v3;

  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E6A3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  sub_266E6F098(v10 + 16);
  sub_266E9D1C4();
  OUTLINED_FUNCTION_20_3();
  sub_266E9CF54();
  v11 = *(v10 + 232);
  OUTLINED_FUNCTION_0_9();
  sub_266E6F260(v11, v12);

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_55();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E6A4CC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = v3;

  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E6A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  sub_266E6F098(v10 + 16);
  sub_266E9D1C4();
  OUTLINED_FUNCTION_20_3();
  sub_266E9CF54();
  v11 = *(v10 + 232);
  OUTLINED_FUNCTION_0_9();
  sub_266E6F260(v11, v12);

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_55();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E6A690()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = v3;

  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E6A778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  sub_266E6F098(v10 + 16);
  sub_266E9D1C4();
  OUTLINED_FUNCTION_20_3();
  sub_266E9CF54();
  v11 = *(v10 + 232);
  OUTLINED_FUNCTION_0_9();
  sub_266E6F260(v11, v12);

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_55();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E6A8C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266E6A98C;

  return SwitchProfileIntentHandler.resolveAccount(for:)();
}

uint64_t sub_266E6A98C()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_30_1();
  v10(v9);
  _Block_release(v4);

  v11 = *(v7 + 8);

  return v11();
}

uint64_t SwitchProfileIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_18();
  v3 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[5] = v3;
  OUTLINED_FUNCTION_19(v3);
  v0[6] = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E6ABA0()
{
  if (qword_2800E8D48 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_2800E8D48);
  }

  v1 = qword_2800E92F8;
  sub_266E9CF64();
  sub_266E9D1D4();
  OUTLINED_FUNCTION_20_3();
  sub_266E9CF54();
  OUTLINED_FUNCTION_18_3();
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = __swift_project_value_buffer(v4, qword_2800EC810);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (OUTLINED_FUNCTION_12(v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    OUTLINED_FUNCTION_37();
    _os_log_impl(v9, v10, v11, v12, v8, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v13 = v0[6];
  v15 = v0[3];
  v14 = v0[4];
  v16 = v0[2];

  (*(v15 + 8))(v14, v16);
  v17 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentResponse());
  SwitchProfileIntentResponse.init(code:userActivity:)(1, 0);
  sub_266E9D1C4();
  OUTLINED_FUNCTION_20_3();
  sub_266E9CF54();
  OUTLINED_FUNCTION_0_9();
  sub_266E6F260(v13, v18);

  v19 = OUTLINED_FUNCTION_5_4();

  return v20(v19);
}

uint64_t sub_266E6ADB8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E6F748;

  return SwitchProfileIntentHandler.confirm(intent:)();
}

uint64_t SwitchProfileIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v0[3] = v1;
  v2 = sub_266E9CFA4();
  v0[4] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_32_0();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v4 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[10] = v4;
  OUTLINED_FUNCTION_19(v4);
  v0[11] = OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E6AF5C()
{
  if (qword_2800E8D48 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_2800E8D48);
  }

  v1 = qword_2800E92F8;
  sub_266E9CF64();
  sub_266E9D1D4();
  sub_266E9CF54();
  OUTLINED_FUNCTION_18_3();
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v2 = *(v0 + 40);
  __swift_project_value_buffer(*(v0 + 32), qword_2800EC810);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();
  v3(v4);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_54(&dword_266E51000, v7, v8, "SwitchProfileIntentHandler.handle()");
    OUTLINED_FUNCTION_4_0();
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 24);

  v11 = *(v9 + 8);
  v12 = OUTLINED_FUNCTION_21_1();
  v11(v12);
  v13 = v11;
  v14 = [v10 account];
  if (v14)
  {
    v15 = v14;
    sub_266E6ED60(v14, &selRef_profileId);
    if (v16)
    {

      v17 = [v15 isActive];
      sub_266E6F0EC();
      v18 = sub_266E9D1E4();
      v19 = v18;
      if (v17)
      {
        v20 = sub_266E9D1F4();

        if (v20)
        {
          v21 = OUTLINED_FUNCTION_6_0();
          v3(v21);
          v15 = v15;
          v22 = sub_266E9CF84();
          v23 = sub_266E9D1A4();

          v24 = os_log_type_enabled(v22, v23);
          v25 = *(v0 + 64);
          v26 = *(v0 + 32);
          if (v24)
          {
            v27 = OUTLINED_FUNCTION_16_0();
            v58 = OUTLINED_FUNCTION_20_0();
            *v27 = 136315138;
            v28 = [v15 displayString];
            sub_266E9D024();
            v57 = v15;

            v29 = OUTLINED_FUNCTION_21_1();
            v32 = sub_266E6E7D4(v29, v30, v31);

            *(v27 + 4) = v32;
            v15 = v57;
            OUTLINED_FUNCTION_46(&dword_266E51000, v33, v23, "Account is already active for name[%s]");
            __swift_destroy_boxed_opaque_existential_0(v58);
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_0_1();
          }

          (v13)(v25, v26);
          v51 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentResponse());
          v50 = 101;
          goto LABEL_30;
        }
      }

      else
      {
      }

      v49 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentResponse());
      v50 = 5;
LABEL_30:
      SwitchProfileIntentResponse.init(code:userActivity:)(v50, 0);

LABEL_31:
      v52 = *(v0 + 88);
      sub_266E9D1C4();
      sub_266E9CF54();
      OUTLINED_FUNCTION_0_9();
      sub_266E6F260(v52, v53);

      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_17_2();

      __asm { BRAA            X2, X16 }
    }
  }

  v34 = [*(v0 + 24) switchType];
  if (!v34)
  {
LABEL_23:
    v46 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentResponse());
    SwitchProfileIntentResponse.init(code:userActivity:)(100, 0);
    goto LABEL_31;
  }

  if (v34 == 2)
  {
    v39 = OUTLINED_FUNCTION_6_0();
    v3(v39);
    v36 = sub_266E9CF84();
    v40 = sub_266E9D194();
    if (OUTLINED_FUNCTION_12(v40))
    {
      v38 = "Name not matched";
      goto LABEL_21;
    }

LABEL_22:

    v45 = OUTLINED_FUNCTION_40();
    v13(v45);
    goto LABEL_23;
  }

  if (v34 == 1)
  {
    v35 = OUTLINED_FUNCTION_6_0();
    v3(v35);
    v36 = sub_266E9CF84();
    v37 = sub_266E9D194();
    if (OUTLINED_FUNCTION_12(v37))
    {
      v38 = "ID not resolved";
LABEL_21:
      v41 = OUTLINED_FUNCTION_5_0();
      *v41 = 0;
      OUTLINED_FUNCTION_37();
      _os_log_impl(v42, v43, v44, v38, v41, 2u);
      OUTLINED_FUNCTION_4_0();
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  *(v0 + 16) = v34;
  OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE1D0](v47);
}

uint64_t sub_266E6B4E4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = OUTLINED_FUNCTION_30_1();

  return sub_266E905F0(v11, v12);
}

uint64_t sub_266E6B564(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E6F748;

  return SwitchProfileIntentHandler.handle(intent:)();
}

uint64_t sub_266E6B624()
{
  OUTLINED_FUNCTION_7_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266E9CFA4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_32_0();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E6B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_42();
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v13 = *(v12 + 48);
  v14 = __swift_project_value_buffer(*(v12 + 40), qword_2800EC810);
  v15 = *(v13 + 16);
  v16 = OUTLINED_FUNCTION_35_0();
  v15(v16);
  v17 = sub_266E9CF84();
  v18 = sub_266E9D194();
  if (OUTLINED_FUNCTION_12(v18))
  {
    v19 = OUTLINED_FUNCTION_5_0();
    *v19 = 0;
    OUTLINED_FUNCTION_37();
    _os_log_impl(v20, v21, v22, v23, v19, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v24 = *(v12 + 64);
  v25 = *(v12 + 40);
  v26 = *(v12 + 48);
  v27 = *(v12 + 16);

  v28 = *(v26 + 8);
  v28(v24, v25);
  sub_266E6ED60(v27, &selRef_iCloudAltDSID);
  if (v29)
  {
    v30 = *(v12 + 24);
    v31 = [*(v12 + 16) typeName];
    v32 = sub_266E9D024();
    v34 = v33;

    v35 = OUTLINED_FUNCTION_40();
    sub_266E6BCC4(v35, v36, v32, v34, v30);

    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_2();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }

  else
  {
    sub_266E6ED60(*(v12 + 16), &selRef_homeUserId);
    *(v12 + 72) = v46;
    if (v46)
    {
      v47 = [*(v12 + 16) typeName];
      sub_266E9D024();
      v49 = v48;

      *(v12 + 80) = v49;
      v50 = swift_task_alloc();
      *(v12 + 88) = v50;
      *v50 = v12;
      v50[1] = sub_266E6BA20;
      OUTLINED_FUNCTION_14_2();

      return sub_266E6C474();
    }

    else
    {
      (v15)(*(v12 + 56), v14, *(v12 + 40));
      v52 = sub_266E9CF84();
      v53 = sub_266E9D194();
      if (OUTLINED_FUNCTION_31_0(v53))
      {
        v54 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v54);
        OUTLINED_FUNCTION_16_1(&dword_266E51000, v55, v56, "No UserID in switch by VoiceID");
        OUTLINED_FUNCTION_10();
      }

      v57 = OUTLINED_FUNCTION_16();
      (v28)(v57);
      v58 = swift_task_alloc();
      *(v12 + 96) = v58;
      *v58 = v12;
      v58[1] = sub_266E6BB94;
      OUTLINED_FUNCTION_36(*(v12 + 16));
      OUTLINED_FUNCTION_14_2();

      return sub_266E6CCF0();
    }
  }
}

uint64_t sub_266E6BA20(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_266E6BB94()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

id sub_266E6BCC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v78 = a3;
  v79 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  v8 = OUTLINED_FUNCTION_19(v7);
  MEMORY[0x28223BE20](v8);
  v77 = &v69 - v9;
  v75 = sub_266E9C314();
  OUTLINED_FUNCTION_3_2();
  v74 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v76 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  v15 = OUTLINED_FUNCTION_19(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v82 = type metadata accessor for UserAccount(0);
  OUTLINED_FUNCTION_4_3();
  v19 = MEMORY[0x28223BE20](v18);
  v72 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = &v69 - v21;
  v22 = sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  v24 = v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v31 = __swift_project_value_buffer(v22, qword_2800EC810);
  v32 = *(v24 + 16);
  v71 = v31;
  v70 = v32;
  (v32)(v30);

  v33 = sub_266E9CF84();
  v34 = sub_266E9D194();

  v35 = os_log_type_enabled(v33, v34);
  v83 = a1;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_16_0();
    v37 = OUTLINED_FUNCTION_20_0();
    v69 = v22;
    v38 = v28;
    v39 = v24;
    v40 = v37;
    v87[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_266E6E7D4(v83, a2, v87);
    _os_log_impl(&dword_266E51000, v33, v34, "Switch by iCloudAltDSID=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v24 = v39;
    v28 = v38;
    v22 = v69;
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();
  }

  v41 = *(v24 + 8);
  v41(v30, v22);
  v42 = v80;
  v43 = *(v80 + 64);
  v44 = sub_266E9D044();
  sub_266E95968(v44, v45, v43, v17);

  if (__swift_getEnumTagSinglePayload(v17, 1, v82) == 1)
  {
    sub_266E6F130(v17);
    v70(v28, v71, v22);
    sub_266E6F2B8(v42, v87);

    v46 = sub_266E9CF84();
    v47 = sub_266E9D194();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_266E6E7D4(v83, a2, &v86);
      *(v48 + 12) = 2080;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_266E9D294();

      v84 = 0xD000000000000014;
      v85 = 0x8000000266EA1F30;
      v49 = MEMORY[0x26D5F5D00](v87[5], v82);
      MEMORY[0x26D5F5CB0](v49);

      MEMORY[0x26D5F5CB0](125, 0xE100000000000000);
      sub_266E6F098(v87);
      v50 = OUTLINED_FUNCTION_6_0();
      v53 = sub_266E6E7D4(v50, v51, v52);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_266E51000, v46, v47, "No account found for iCloudAltDSID=%s in %s", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();
    }

    else
    {

      sub_266E6F098(v87);
    }

    v41(v28, v22);
    __swift_project_boxed_opaque_existential_0((v81 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender), *(v81 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender + 24));
    sub_266E9C284();
    (*(v74 + 104))(v76, *MEMORY[0x277D5BB68], v75);
    sub_266E9C224();
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);

    sub_266E9C274();
    sub_266E9C1B4();

    type metadata accessor for SwitchProfileAccountResolutionResult();
    return static SwitchProfileAccountResolutionResult.unsupported(forReason:)(4);
  }

  else
  {
    v54 = v73;
    sub_266E64BD8(v17, v73);
    type metadata accessor for SwitchProfileAccountResolutionResult();
    OUTLINED_FUNCTION_3_5();
    sub_266E6F204(v54, v72, v55);
    sub_266E5CE50(v81 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess, v87);
    __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_3_1();
    (*(v59 + 16))(v58 - v57);
    sub_266E648A8();
    v61 = v60;
    __swift_destroy_boxed_opaque_existential_0(v87);
    v62 = static AccountResolutionResult.success(with:)(v61);

    OUTLINED_FUNCTION_2_5();
    sub_266E6F260(v54, v63);
  }

  return v62;
}

uint64_t sub_266E6C474()
{
  OUTLINED_FUNCTION_7_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  OUTLINED_FUNCTION_19(v6);
  v1[12] = OUTLINED_FUNCTION_18();
  v7 = sub_266E9C314();
  v1[13] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_18();
  v9 = type metadata accessor for UserAccount(0);
  v1[16] = v9;
  OUTLINED_FUNCTION_19(v9);
  v1[17] = OUTLINED_FUNCTION_32_0();
  v1[18] = swift_task_alloc();
  v10 = type metadata accessor for PineBoardAccountLookupResult(0);
  OUTLINED_FUNCTION_19(v10);
  v1[19] = OUTLINED_FUNCTION_32_0();
  v1[20] = swift_task_alloc();
  v11 = sub_266E9CFA4();
  v1[21] = v11;
  OUTLINED_FUNCTION_5_1(v11);
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_32_0();
  v1[24] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266E6C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_42();
  a18 = v20;
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v23 = v20[24];
  v24 = v20[21];
  v25 = v20[22];
  v26 = __swift_project_value_buffer(v24, qword_2800EC810);
  v20[25] = v26;
  v27 = *(v25 + 16);
  v20[26] = v27;
  v20[27] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v23, v26, v24);

  v28 = sub_266E9CF84();
  v29 = sub_266E9D194();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v20[22];
  if (v30)
  {
    v33 = v20[7];
    v32 = v20[8];
    v34 = OUTLINED_FUNCTION_16_0();
    v35 = OUTLINED_FUNCTION_20_0();
    a9 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_266E6E7D4(v33, v32, &a9);
    OUTLINED_FUNCTION_46(&dword_266E51000, v36, v29, "Switch by HomeUserID=%s");
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_0_1();
  }

  v37 = *(v31 + 8);
  v38 = OUTLINED_FUNCTION_16();
  v37(v38);
  v20[28] = v37;
  v39 = swift_task_alloc();
  v20[29] = v39;
  *v39 = v20;
  v39[1] = sub_266E6C7B8;
  OUTLINED_FUNCTION_14_2();

  return sub_266E6E588();
}

uint64_t sub_266E6C7B8()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E6C89C()
{
  v37 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  sub_266E6F204(*(v0 + 160), v1, type metadata accessor for PineBoardAccountLookupResult);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0 + 208))(*(v0 + 184), *(v0 + 200), *(v0 + 168));

    v3 = sub_266E9CF84();
    v4 = sub_266E9D1A4();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 224);
    if (v5)
    {
      v35 = *(v0 + 224);
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = OUTLINED_FUNCTION_16_0();
      v10 = OUTLINED_FUNCTION_20_0();
      v36 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_266E6E7D4(v8, v7, &v36);
      OUTLINED_FUNCTION_46(&dword_266E51000, v11, v4, "No account for homeUserID=%s");
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_0_1();

      v12 = OUTLINED_FUNCTION_16();
      v35(v12);
    }

    else
    {

      v23 = OUTLINED_FUNCTION_16();
      v6(v23);
    }

    v24 = *(v0 + 160);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_0((*(v0 + 88) + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender), *(*(v0 + 88) + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender + 24));
    sub_266E9C284();
    (*(v26 + 104))(v25, *MEMORY[0x277D5BB68], v27);
    v13 = v24;
    sub_266E9C224();
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);

    sub_266E9C274();
    sub_266E9C1B4();

    type metadata accessor for SwitchProfileAccountResolutionResult();
    static SwitchProfileAccountResolutionResult.unsupported(forReason:)(4);
  }

  else
  {
    v13 = *(v0 + 160);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 88);
    sub_266E64BD8(*(v0 + 152), v14);
    type metadata accessor for SwitchProfileAccountResolutionResult();
    OUTLINED_FUNCTION_3_5();
    sub_266E6F204(v14, v15, v17);
    sub_266E5CE50(v16 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess, v0 + 16);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    OUTLINED_FUNCTION_3_2();
    v19 = v18;
    OUTLINED_FUNCTION_18();
    (*(v19 + 16))();
    sub_266E648A8();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    static AccountResolutionResult.success(with:)(v21);

    OUTLINED_FUNCTION_2_5();
    sub_266E6F260(v14, v22);
  }

  sub_266E6F260(v13, type metadata accessor for PineBoardAccountLookupResult);

  v32 = OUTLINED_FUNCTION_5_4();

  return v33(v32);
}

uint64_t sub_266E6CCF0()
{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 56) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = sub_266E9CFA4();
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_5_1(v4);
  *(v0 + 40) = v5;
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E6CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  v11 = *(v10 + 24);
  if (*(*(v11 + 40) + 16) != 1)
  {
    *(swift_task_alloc() + 16) = v11;
    v24 = OUTLINED_FUNCTION_51();

    v25 = sub_266E8B274(v24);
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {
        type metadata accessor for SwitchProfileAccountResolutionResult();
        v29 = OUTLINED_FUNCTION_38();
        static AccountResolutionResult.disambiguation(with:)(v29);
        OUTLINED_FUNCTION_38();

        goto LABEL_18;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x26D5F5ED0](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v27 = *(v24 + 8 * i + 32);
      }

      v28 = v27;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v27 setNoNameMatched_];
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (qword_2800E8D90 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  __swift_project_value_buffer(*(v10 + 32), qword_2800EC810);
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  v14 = sub_266E9CF84();
  v15 = sub_266E9D1A4();
  if (OUTLINED_FUNCTION_31_0(v15))
  {
    v16 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v16);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v17, v18, "Only one account, cannot switch.");
    OUTLINED_FUNCTION_10();
  }

  v19 = *(v10 + 16);

  v20 = OUTLINED_FUNCTION_16();
  v21(v20);
  v22 = [v19 switchType];
  type metadata accessor for SwitchProfileAccountResolutionResult();
  if (v22 == 1)
  {
    v23 = 5;
  }

  else
  {
    v23 = 3;
  }

  static SwitchProfileAccountResolutionResult.unsupported(forReason:)(v23);
LABEL_18:

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_55();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_266E6CFB4()
{
  OUTLINED_FUNCTION_7_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for UserAccount(0);
  v1[15] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_32_0();
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for UserAccountManager.LookupResult(0);
  v1[19] = v6;
  OUTLINED_FUNCTION_19(v6);
  v1[20] = OUTLINED_FUNCTION_18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  OUTLINED_FUNCTION_19(v7);
  v1[21] = OUTLINED_FUNCTION_18();
  v8 = sub_266E9C314();
  v1[22] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[23] = v9;
  v1[24] = OUTLINED_FUNCTION_18();
  v10 = sub_266E9CFA4();
  v1[25] = v10;
  OUTLINED_FUNCTION_5_1(v10);
  v1[26] = v11;
  v1[27] = OUTLINED_FUNCTION_32_0();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266E6D174()
{
  v107 = v0;
  v1 = sub_266E6ED60(*(v0 + 96), &selRef_name);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_2800E8D90 != -1)
    {
      OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
    }

    v5 = *(v0 + 240);
    v6 = *(v0 + 208);
    v97 = __swift_project_value_buffer(*(v0 + 200), qword_2800EC810);
    v98 = *(v6 + 16);
    v98(v5);

    v7 = sub_266E9CF84();
    v8 = sub_266E9D194();

    v104 = v4;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_16_0();
      v10 = OUTLINED_FUNCTION_20_0();
      v106 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_266E6E7D4(v3, v4, &v106);
      OUTLINED_FUNCTION_53(&dword_266E51000, v11, v12, "Switch-by-name for %s");
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_4_0();
    }

    v13 = OUTLINED_FUNCTION_40();
    v99 = v14;
    (v14)(v13);
    v15 = v3;
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    v18 = *(v0 + 176);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);
    v100 = sub_266E62ED0(v15, v104);
    v96 = (v19 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender);
    __swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender), *(v19 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender + 24));
    sub_266E9C284();
    v95 = *(v16 + 104);
    v95(v17, *MEMORY[0x277D5BBE8], v18);
    v21 = [v20 typeName];
    sub_266E9D024();

    v22 = sub_266E9C224();
    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    *(swift_allocObject() + 16) = v100;
    sub_266E9C274();
    sub_266E9C1B4();

    sub_266E62F74();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v55 = *(v0 + 136);
      v56 = *(v0 + 144);
      v57 = *(v0 + 112);

      v58 = OUTLINED_FUNCTION_40();
      sub_266E64BD8(v58, v59);
      type metadata accessor for SwitchProfileAccountResolutionResult();
      OUTLINED_FUNCTION_3_5();
      sub_266E6F204(v56, v55, v60);
      sub_266E5CE50(v57 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess, v0 + 56);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_48();
      v61();
      sub_266E648A8();
      v63 = v62;
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      static AccountResolutionResult.success(with:)(v63);

      OUTLINED_FUNCTION_2_5();
      sub_266E6F260(v56, v64);
LABEL_29:
      OUTLINED_FUNCTION_45();

      v93 = OUTLINED_FUNCTION_5_4();

      return v94(v93);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v27 = **(v0 + 160);
      (v98)(*(v0 + 232), v97, *(v0 + 200));

      v28 = sub_266E9CF84();
      v29 = sub_266E9D1A4();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 232);
      v32 = *(v0 + 200);
      if (v30)
      {
        v33 = *(v0 + 120);
        v34 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *v34 = 136315394;
        v101 = v32;
        v35 = sub_266E6E7D4(v15, v104, &v106);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        v36 = MEMORY[0x26D5F5D00](v27, v33);
        v38 = sub_266E6E7D4(v36, v37, &v106);

        *(v34 + 14) = v38;
        OUTLINED_FUNCTION_37();
        _os_log_impl(v39, v40, v41, v42, v34, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_0_1();

        v43 = v101;
        v44 = v31;
      }

      else
      {

        v44 = OUTLINED_FUNCTION_21_1();
      }

      v99(v44, v43);
      v73 = *(v27 + 16);
      if (v73)
      {
        v74 = *(v0 + 128);
        v105 = *(v0 + 112);
        v106 = MEMORY[0x277D84F90];
        sub_266E9D2E4();
        v103 = OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess;
        v75 = v27 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v76 = *(v74 + 72);
        do
        {
          v78 = *(v0 + 136);
          v77 = *(v0 + 144);
          sub_266E6F204(v75, v77, type metadata accessor for UserAccount);
          sub_266E6F204(v77, v78, type metadata accessor for UserAccount);
          sub_266E5CE50(v105 + v103, v0 + 16);
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
          OUTLINED_FUNCTION_3_2();
          v80 = v79;
          OUTLINED_FUNCTION_18();
          (*(v80 + 16))();
          sub_266E648A8();
          OUTLINED_FUNCTION_2_5();
          sub_266E6F260(v77, v81);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          sub_266E9D2C4();
          sub_266E9D2F4();
          sub_266E9D304();
          sub_266E9D2D4();
          v75 += v76;
          --v73;
        }

        while (v73);
      }

      type metadata accessor for SwitchProfileAccountResolutionResult();
      v92 = OUTLINED_FUNCTION_38();
      static AccountResolutionResult.disambiguation(with:)(v92);
      OUTLINED_FUNCTION_38();

      goto LABEL_29;
    }

    v102 = v22;
    v65 = v15;
    (v98)(*(v0 + 224), v97, *(v0 + 200));

    v66 = sub_266E9CF84();
    v67 = sub_266E9D1A4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_16_0();
      v69 = OUTLINED_FUNCTION_20_0();
      v106 = v69;
      *v68 = 136315138;
      v70 = sub_266E6E7D4(v65, v104, &v106);

      *(v68 + 4) = v70;
      OUTLINED_FUNCTION_53(&dword_266E51000, v71, v72, "No account found for name[%s]");
      __swift_destroy_boxed_opaque_existential_0(v69);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
    }

    v82 = OUTLINED_FUNCTION_40();
    (v99)(v82);
    v83 = *(v0 + 192);
    v84 = *(v0 + 176);
    v85 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_0(v96, v96[3]);
    v95(v83, *MEMORY[0x277D5BB68], v84);
    v86 = [v85 typeName];
    sub_266E9D024();

    OUTLINED_FUNCTION_29_1();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v102);
    sub_266E9C274();
    sub_266E9C1B4();

    v90 = swift_task_alloc();
    *(v0 + 248) = v90;
    *v90 = v0;
    v90[1] = sub_266E6DC24;
    OUTLINED_FUNCTION_36(*(v0 + 96));
  }

  else
  {
    if (qword_2800E8D90 != -1)
    {
      OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
    }

    __swift_project_value_buffer(*(v0 + 200), qword_2800EC810);
    v45 = OUTLINED_FUNCTION_4_1();
    v46(v45);
    v47 = sub_266E9CF84();
    v48 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_31_0(v48))
    {
      v49 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v49);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v50, v51, "No name in switch-by-name");
      OUTLINED_FUNCTION_10();
    }

    v52 = OUTLINED_FUNCTION_16();
    v53(v52);
    v54 = swift_task_alloc();
    *(v0 + 264) = v54;
    *v54 = v0;
    v54[1] = sub_266E6DDAC;
    OUTLINED_FUNCTION_36(*(v0 + 96));
  }

  return sub_266E6CCF0();
}

uint64_t sub_266E6DC24()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E6DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_45();

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_14_2();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_266E6DDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_42();
  v25 = v13;
  v14 = *v12;
  OUTLINED_FUNCTION_1_4();
  *v15 = v14;

  OUTLINED_FUNCTION_14_2();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_266E6E048()
{
  OUTLINED_FUNCTION_7_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  OUTLINED_FUNCTION_19(v3);
  v1[9] = OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for UserAccount(0);
  v1[10] = v4;
  OUTLINED_FUNCTION_19(v4);
  v1[11] = OUTLINED_FUNCTION_32_0();
  v1[12] = swift_task_alloc();
  v5 = sub_266E9CFA4();
  v1[13] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_32_0();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E6E160()
{
  if (qword_2800E8D90 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800E8D90);
  }

  v1 = __swift_project_value_buffer(v0[13], qword_2800EC810);
  v2 = OUTLINED_FUNCTION_35_0();
  v39 = v3;
  v3(v2);
  v4 = sub_266E9CF84();
  v5 = sub_266E9D1A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_5_0();
    *v6 = 0;
    _os_log_impl(&dword_266E51000, v4, v5, "switch-by-disambiguation", v6, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v7 = v0[17];
  v8 = v0[13];
  v9 = v0[14];
  v11 = v0[9];
  v10 = v0[10];

  v12 = *(v9 + 8);
  v12(v7, v8);
  sub_266E6322C(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
  {
    v13 = v0[7];
    sub_266E6F130(v0[9]);
    if (*(*(v13 + 40) + 16) == 1)
    {
      (v39)(v0[15], v1, v0[13]);
      v14 = sub_266E9CF84();
      v15 = sub_266E9D1A4();
      if (OUTLINED_FUNCTION_31_0(v15))
      {
        v16 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v16);
        OUTLINED_FUNCTION_16_1(&dword_266E51000, v17, v18, "Only one account, cannot switch.");
        OUTLINED_FUNCTION_10();
      }

      v19 = OUTLINED_FUNCTION_16();
      (v12)(v19);
      type metadata accessor for SwitchProfileAccountResolutionResult();
      static SwitchProfileAccountResolutionResult.unsupported(forReason:)(3);
    }

    else
    {
      v34 = v0[7];
      type metadata accessor for SwitchProfileAccountResolutionResult();
      *(swift_task_alloc() + 16) = v34;
      v35 = OUTLINED_FUNCTION_51();

      static AccountResolutionResult.disambiguation(with:)(v35);
    }
  }

  else
  {
    sub_266E64BD8(v0[9], v0[12]);
    v20 = OUTLINED_FUNCTION_35_0();
    v39(v20);
    v21 = sub_266E9CF84();
    v22 = sub_266E9D194();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_5_0();
      *v23 = 0;
      _os_log_impl(&dword_266E51000, v21, v22, "Toggling profile to other account", v23, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v24 = v0[12];
    v25 = v0[8];

    v26 = OUTLINED_FUNCTION_21_1();
    (v12)(v26);
    type metadata accessor for SwitchProfileAccountResolutionResult();
    OUTLINED_FUNCTION_3_5();
    v27 = OUTLINED_FUNCTION_30_1();
    sub_266E6F204(v27, v28, v29);
    sub_266E5CE50(v25 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess, (v0 + 2));
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_48();
    v30();
    sub_266E648A8();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    static AccountResolutionResult.success(with:)(v32);

    OUTLINED_FUNCTION_2_5();
    sub_266E6F260(v24, v33);
  }

  v36 = OUTLINED_FUNCTION_5_4();

  return v37(v36);
}

uint64_t sub_266E6E588()
{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  OUTLINED_FUNCTION_19(v2);
  *(v0 + 24) = OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E6E60C()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1[3];
  type metadata accessor for UserAccount(0);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v0);
  v7 = v1[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_266E6F130(v7);
    v8 = 1;
  }

  else
  {
    sub_266E64BD8(v7, v1[2]);
    v8 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1[2], v8, 1, v0);

  v9 = v1[1];

  return v9();
}

id SwitchProfileIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwitchProfileIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_266E6E778(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_266E6E7D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_266E6E7D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266E6E898(v11, 0, 0, 1, a1, a2);
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
    sub_266E54110(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_266E6E898(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266E6E998(a5, a6);
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
    result = sub_266E9D2B4();
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

uint64_t sub_266E6E998(uint64_t a1, unint64_t a2)
{
  v3 = sub_266E6E9E4(a1, a2);
  sub_266E6EAFC(&unk_2878753F0);
  return v3;
}

uint64_t sub_266E6E9E4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_266E9D094())
  {
    result = sub_266E6EBE0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266E9D284();
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
          result = sub_266E9D2B4();
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

uint64_t sub_266E6EAFC(uint64_t result)
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

    result = sub_266E6EC50(result, v7, 1, v3);
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

void *sub_266E6EBE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9448, &unk_266E9F350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_266E6EC50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9448, &unk_266E9F350);
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

_BYTE **sub_266E6ED44(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_266E6ED60(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_266E9D024();
  }

  return OUTLINED_FUNCTION_30_1();
}

id sub_266E6EDBC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12[3] = type metadata accessor for AccountServicesNoOp();
  v12[4] = &off_2878764E8;
  v12[0] = a1;
  v11[3] = type metadata accessor for AssistantServicesProvider();
  v11[4] = &off_2878759C0;
  v11[0] = a2;
  sub_266E5CE50(v12, a4 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_pbAccess);
  sub_266E5CE50(v11, a4 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_assistantServices);
  sub_266E5CE50(a3, a4 + OBJC_IVAR____TtC20SiriIdentityInternal26SwitchProfileIntentHandler_siriKitEventSender);
  v10.receiver = a4;
  v10.super_class = type metadata accessor for SwitchProfileIntentHandler();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v8;
}

id sub_266E6EE9C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = type metadata accessor for AccountServicesNoOp();
  v22 = &off_2878764E8;
  v20[0] = a1;
  v18 = type metadata accessor for AssistantServicesProvider();
  v19 = &off_2878759C0;
  v17[0] = a2;
  v6 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentHandler());
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  MEMORY[0x28223BE20](v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_266E6EDBC(*v9, *v13, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v15;
}

unint64_t sub_266E6F0EC()
{
  result = qword_2800E9440;
  if (!qword_2800E9440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9440);
  }

  return result;
}

uint64_t sub_266E6F130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PineBoardAccountLookupResult(uint64_t a1)
{
  result = qword_2800E9450;
  if (!qword_2800E9450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E6F204(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  v4 = OUTLINED_FUNCTION_30_1();
  v5(v4);
  return a2;
}

uint64_t sub_266E6F260(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266E6F318()
{
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2(v1);

  return v3(v2);
}

uint64_t sub_266E6F3B0()
{
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2(v1);

  return v3(v2);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266E6F490()
{
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2(v1);

  return v3(v2);
}

uint64_t sub_266E6F528()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266E6F638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266E6F694(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UserAccount(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_266E6F6F0(uint64_t a1)
{
  v1 = type metadata accessor for UserAccount(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_16_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_18_3()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

BOOL OUTLINED_FUNCTION_31_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_45()
{
}

void OUTLINED_FUNCTION_46(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51()
{

  return sub_266E69570(v0, v2, v1);
}

void OUTLINED_FUNCTION_53(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_266E6FA54()
{
  if (sub_266E9CD34())
  {
    return 1;
  }

  return MEMORY[0x2821C86F8]();
}

uint64_t sub_266E6FA8C()
{
  v1 = [v0 disambiguationItems];
  v2 = sub_266E9D0C4();

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v5 = *(v2 + 16);
LABEL_2:
  v6 = v2 + 32 + 32 * v3;
  while (1)
  {
    if (v5 == v3)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_266E54110(v6, v10);
    v7 = sub_266E6FBDC(v10);
    ++v3;
    v6 += 32;
    v8 = __swift_destroy_boxed_opaque_existential_0(v10);
    if (v7)
    {
      MEMORY[0x26D5F5CD0](v8);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266E9D0E4();
      }

      sub_266E9D104();
      v4 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v10);

  __break(1u);
  return result;
}

id sub_266E6FBDC(uint64_t a1)
{
  v2 = sub_266E9CFA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_266E54110(a1, v23);
  type metadata accessor for Account();
  if (!swift_dynamicCast())
  {
    sub_266E54110(a1, v23);
    sub_266E76514(0, &qword_2800E94D8, 0x277CD3B58);
    if (swift_dynamicCast())
    {
      v10 = v22;
      v11 = INTypedObjectWithCustomObject();
      if (v11)
      {
        v9 = v11;

        return v9;
      }

      if (qword_2800E8D78 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v2, qword_2800EC7C8);
      (*(v3 + 16))(v6, v16, v2);
      v17 = sub_266E9CF84();
      v18 = sub_266E9D1A4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_266E51000, v17, v18, "Could not convert disambiguation item to INObject", v19, 2u);
        MEMORY[0x26D5F66A0](v19, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      if (qword_2800E8D78 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v2, qword_2800EC7C8);
      (*(v3 + 16))(v8, v12, v2);
      v13 = sub_266E9CF84();
      v14 = sub_266E9D1A4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_266E51000, v13, v14, "Unexpected disambiguation item type", v15, 2u);
        MEMORY[0x26D5F66A0](v15, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
    }

    return 0;
  }

  return v22;
}

uint64_t sub_266E6FF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v113 = sub_266E9C7A4();
  OUTLINED_FUNCTION_2_1();
  v109 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v108 = v6 - v5;
  v7 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v115 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v101 - v12;
  MEMORY[0x28223BE20](v11);
  v112 = &v101 - v14;
  v15 = sub_266E9C7E4();
  OUTLINED_FUNCTION_2_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v101 - v20;
  v22 = sub_266E9C7D4();
  OUTLINED_FUNCTION_2_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v26);
  v28 = &v101 - v27;
  sub_266E9C794();
  v29 = OUTLINED_FUNCTION_46_0();
  v38 = v30(v29) == *MEMORY[0x277D5C150];
  v111 = v17;
  if (!v38)
  {
    v43 = OUTLINED_FUNCTION_46_0();
    v44(v43);
    goto LABEL_16;
  }

  v105 = v13;
  v31 = a1;
  v32 = OUTLINED_FUNCTION_46_0();
  v33(v32);
  (*(v24 + 32))(v28, v21, v22);
  v34 = sub_266E9C7B4();
  v36 = v35;
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2(&qword_2800E8D50);
  }

  v37 = qword_2800EC768;
  v38 = v34 == *(qword_2800EC768 + 96) && v36 == *(qword_2800EC768 + 104);
  if (v38)
  {
    goto LABEL_20;
  }

  v39 = sub_266E9D3E4();

  if (v39)
  {
    goto LABEL_21;
  }

  if (sub_266E9C7B4() == *(v37 + 112) && v40 == *(v37 + 120))
  {
LABEL_20:

    goto LABEL_21;
  }

  v42 = sub_266E9D3E4();

  if ((v42 & 1) == 0)
  {
    (*(v24 + 8))(v28, v22);
    a1 = v31;
    v13 = v105;
LABEL_16:
    v45 = v109;
    v46 = v108;
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_38_0(v7, qword_2800EC7E0);
    v47 = v115;
    v48 = *(v115 + 16);
    v107 = v49;
    v112 = (v115 + 16);
    v103 = v48;
    (v48)(v13);
    v50 = v113;
    (*(v45 + 16))(v46, a1, v113);
    v51 = sub_266E9CF84();
    v52 = v47;
    v53 = v7;
    v54 = sub_266E9D194();
    if (os_log_type_enabled(v51, v54))
    {
      v55 = OUTLINED_FUNCTION_16_0();
      v56 = v46;
      v102 = OUTLINED_FUNCTION_20_0();
      *&v116 = v102;
      *v55 = 136315138;
      v57 = v15;
      v58 = v110;
      sub_266E9C794();
      v59 = sub_266E9D034();
      v104 = v53;
      v60 = v59;
      v105 = v13;
      v62 = v61;
      (*(v45 + 8))(v56, v113);
      v63 = sub_266E6E7D4(v60, v62, &v116);

      *(v55 + 4) = v63;
      v64 = v58;
      v15 = v57;
      _os_log_impl(&dword_266E51000, v51, v54, "SwitchProfileDisambiguationStrategy.actionForInput() received parse: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v65 = *(v115 + 8);
      v53 = v104;
      v65(v105, v104);
    }

    else
    {

      (*(v45 + 8))(v46, v50);
      v65 = *(v52 + 8);
      v65(v13, v53);
      v64 = v110;
    }

    sub_266E9C794();
    v83 = sub_266E7B898(v64, &v116);
    (*(v111 + 8))(v64, v15, v83);
    if (!v117)
    {
      sub_266E54DA8(&v116, &unk_2800E9590, &unk_266E9EC80);
      return sub_266E9C394();
    }

    sub_266E595F8(&v116, v119);
    __swift_project_boxed_opaque_existential_0(v119, v120);
    v84 = OUTLINED_FUNCTION_16();
    v86 = v85(v84);
    v87 = v120;
    __swift_project_boxed_opaque_existential_0(v119, v120);
    if (v86 == 3)
    {
      v88 = OUTLINED_FUNCTION_41();
      v89(v88);
      if (v90 || (sub_266E5CE50(v119, v118), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600), swift_dynamicCast()) && (, , , __swift_project_boxed_opaque_existential_0(v119, v120), v98 = OUTLINED_FUNCTION_16(), v99(v98), v100))
      {

        sub_266E9C384();
        return __swift_destroy_boxed_opaque_existential_0(v119);
      }
    }

    else
    {
      v93 = OUTLINED_FUNCTION_41();
      if ((v94(v93) - 1) <= 1u)
      {
        v103(v106, v107, v53);
        v95 = sub_266E9CF84();
        v96 = sub_266E9D194();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_50(v97);
          _os_log_impl(&dword_266E51000, v95, v96, "SwitchProfile disambiguation cancelled.", v87, 2u);
          OUTLINED_FUNCTION_10();
        }

        v65(v106, v53);
        sub_266E9C374();
        return __swift_destroy_boxed_opaque_existential_0(v119);
      }
    }

    sub_266E9C394();
    return __swift_destroy_boxed_opaque_existential_0(v119);
  }

LABEL_21:
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  OUTLINED_FUNCTION_38_0(v7, qword_2800EC7E0);
  v66 = v115;
  v67 = v112;
  (*(v115 + 16))(v112);
  v68 = *(v24 + 16);
  v69 = v107;
  v113 = v28;
  v68(v107, v28, v22);
  v70 = sub_266E9CF84();
  v71 = v22;
  v72 = sub_266E9D194();
  if (os_log_type_enabled(v70, v72))
  {
    v73 = OUTLINED_FUNCTION_16_0();
    v74 = OUTLINED_FUNCTION_20_0();
    v104 = v7;
    v75 = v74;
    *&v116 = v74;
    *v73 = 136315138;
    v76 = sub_266E9C7B4();
    v77 = v69;
    v79 = v78;
    v80 = *(v24 + 8);
    v80(v77, v71);
    v81 = sub_266E6E7D4(v76, v79, &v116);

    *(v73 + 4) = v81;
    _os_log_impl(&dword_266E51000, v70, v72, "SwitchProfileDisambiguationStrategy.actionForInput() handling direct invocation from %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    OUTLINED_FUNCTION_0_1();
    v82 = v80;
    OUTLINED_FUNCTION_4_0();

    (*(v66 + 8))(v112, v104);
  }

  else
  {

    v82 = *(v24 + 8);
    v91 = OUTLINED_FUNCTION_46_0();
    v82(v91);
    (*(v66 + 8))(v67, v7);
  }

  sub_266E9C384();
  return (v82)(v113, v71);
}

uint64_t sub_266E70968()
{
  OUTLINED_FUNCTION_7_0();
  v0[24] = v1;
  v0[25] = v2;
  v0[22] = v3;
  v0[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94F8, qword_266E9F5D8);
  v0[26] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v0[27] = v6;
  v0[28] = OUTLINED_FUNCTION_32_0();
  v0[29] = swift_task_alloc();
  v7 = sub_266E9C7A4();
  v0[30] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v0[31] = v8;
  v0[32] = OUTLINED_FUNCTION_18();
  v9 = sub_266E9C7D4();
  v0[33] = v9;
  OUTLINED_FUNCTION_5_1(v9);
  v0[34] = v10;
  v0[35] = OUTLINED_FUNCTION_18();
  v11 = sub_266E9C864();
  v0[36] = v11;
  OUTLINED_FUNCTION_5_1(v11);
  v0[37] = v12;
  v0[38] = OUTLINED_FUNCTION_18();
  v13 = sub_266E9C814();
  v0[39] = v13;
  OUTLINED_FUNCTION_5_1(v13);
  v0[40] = v14;
  v0[41] = OUTLINED_FUNCTION_18();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9560, &unk_266E9FEA0);
  v0[42] = v15;
  OUTLINED_FUNCTION_5_1(v15);
  v0[43] = v16;
  v0[44] = OUTLINED_FUNCTION_32_0();
  v0[45] = swift_task_alloc();
  v17 = type metadata accessor for IdentityNLv3Intent(0);
  v0[46] = v17;
  OUTLINED_FUNCTION_19(v17);
  v0[47] = OUTLINED_FUNCTION_18();
  v18 = sub_266E9CC74();
  v0[48] = v18;
  OUTLINED_FUNCTION_5_1(v18);
  v0[49] = v19;
  v0[50] = OUTLINED_FUNCTION_32_0();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v20 = sub_266E9C7E4();
  v0[53] = v20;
  OUTLINED_FUNCTION_5_1(v20);
  v0[54] = v21;
  v0[55] = OUTLINED_FUNCTION_32_0();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v22 = sub_266E9CFA4();
  v0[61] = v22;
  OUTLINED_FUNCTION_5_1(v22);
  v0[62] = v23;
  v0[63] = OUTLINED_FUNCTION_32_0();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_266E70D54()
{
  v237 = v0;
  if (qword_2800E8D80 != -1)
  {
LABEL_80:
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 496);
  OUTLINED_FUNCTION_38_0(*(v0 + 488), qword_2800EC7E0);
  v4 = *(v2 + 16);
  v3 = v2 + 16;
  v224 = v5;
  v226 = v4;
  (v4)(v1);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    _os_log_impl(&dword_266E51000, v6, v7, "SwitchProfileDisambiguationStrategy.parseDisambiguationResult() called", v8, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v9 = OUTLINED_FUNCTION_18_4();
  v228 = v10;
  (v10)(v9);
  sub_266E9C794();
  v11 = OUTLINED_FUNCTION_48_0();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D5C128])
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 488);
    v16 = *(v0 + 472);
    v18 = *(v0 + 424);
    v17 = *(v0 + 432);
    v19 = *(v0 + 416);
    v229 = *(v0 + 408);
    v20 = v3;
    v21 = *(v0 + 384);
    v22 = *(v0 + 392);
    (*(v17 + 16))(v16, *(v0 + 480), v18);
    (*(v17 + 96))(v16, v18);
    (*(v22 + 32))(v19, v16, v21);
    v219 = v20;
    v226(v14, v224, v15);
    v23 = *(v22 + 16);
    v23(v229, v19, v21);
    v24 = sub_266E9CF84();
    v230 = sub_266E9D194();
    v25 = os_log_type_enabled(v24, v230);
    v26 = *(v0 + 536);
    v27 = *(v0 + 488);
    if (v25)
    {
      v28 = OUTLINED_FUNCTION_16_0();
      v220 = OUTLINED_FUNCTION_20_0();
      v233 = v220;
      *v28 = 136315138;
      sub_266E765B0(&qword_2800E9588, 255, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      sub_266E9D3D4();
      v217 = v27;
      v218 = v26;
      v29 = OUTLINED_FUNCTION_30_2();
      v30(v29);
      v31 = OUTLINED_FUNCTION_16();
      v34 = sub_266E6E7D4(v31, v32, v33);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_266E51000, v24, v230, "SwitchProfileDisambiguationStrategy.parseDisambiguationResult() matched NLv3Intent. intent: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v220);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_0_1();

      v36 = v27;
      v35 = v26;
    }

    else
    {

      v48 = OUTLINED_FUNCTION_30_2();
      v49(v48);
      v35 = v26;
      v36 = v27;
    }

    v228(v35, v36);
    v50 = *(v0 + 432);
    v221 = *(v0 + 424);
    v222 = *(v0 + 480);
    v51 = *(v0 + 400);
    v52 = *(v0 + 376);
    v23(v51, *(v0 + 416), *(v0 + 384));
    sub_266E56F74(v51, v52);
    sub_266E765B0(&qword_2800E9580, 255, type metadata accessor for IdentityNLv3Intent, &protocol conformance descriptor for IdentityNLv3Intent);

    sub_266E9CAC4();

    v53 = *(v0 + 152);
    v231 = *(v0 + 144);

    sub_266E9CAC4();

    v54 = OUTLINED_FUNCTION_49();
    v223(v54);
    v56 = *(v0 + 160);
    v55 = *(v0 + 168);
    sub_266E76554(v52);
    (*(v50 + 8))(v222, v221);
    if (v53)
    {

      goto LABEL_19;
    }

    if (!v55)
    {
LABEL_57:
      v226(*(v0 + 504), v224, *(v0 + 488));
      v126 = sub_266E9CF84();
      v127 = sub_266E9D1A4();
      if (OUTLINED_FUNCTION_31_0(v127))
      {
        v128 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v128);
        OUTLINED_FUNCTION_14();
        _os_log_impl(v129, v130, v131, v132, v133, 2u);
        OUTLINED_FUNCTION_10();
      }

      v134 = OUTLINED_FUNCTION_16();
      (v228)(v134);
      v135 = type metadata accessor for IdentityFlowError();
      OUTLINED_FUNCTION_36_0(v135);
      v125 = 1;
LABEL_60:
      sub_266E89698(v125);
      OUTLINED_FUNCTION_1_9();
      v138 = sub_266E765B0(v136, 255, v137, &unk_266EA07E0);
      v139 = OUTLINED_FUNCTION_50_0(v138);
      OUTLINED_FUNCTION_43(v139, v140, v141, v142, v143, v144, v145, v146, v212, v213, v214, v215, v216, v217, v218, v219);
      goto LABEL_75;
    }

LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
    v202 = sub_266E9C704();
    sub_266E75F94(v56, v55, v202, &selRef_setName_);

    v203 = sub_266E9C704();
    [v203 setSwitchType_];

    v204 = sub_266E9C704();
    v205 = sub_266E75ECC(v204);
    if (v206)
    {
      v207 = MEMORY[0x277D837D0];
    }

    else
    {
      v205 = 0;
      v207 = 0;
      v235 = 0;
    }

    v233 = v205;
    v234 = v206;
    v236 = v207;
    sub_266E9C704();
    type metadata accessor for SwitchProfileIntent();
    sub_266E9C5E4();
    OUTLINED_FUNCTION_18_4();
    sub_266E9C644();
    v208 = OUTLINED_FUNCTION_18_4();
    v209(v208);
    goto LABEL_75;
  }

  if (v13 == *MEMORY[0x277D5C150])
  {
    v37 = OUTLINED_FUNCTION_22_3();
    v38(v37);
    v39 = OUTLINED_FUNCTION_23_0();
    v40(v39);
    v41 = OUTLINED_FUNCTION_19_2();
    v42(v41);
    v43 = sub_266E9C7B4();
    v45 = v44;
    if (qword_2800E8D50 != -1)
    {
      OUTLINED_FUNCTION_16_2(&qword_2800E8D50);
    }

    if (v43 == *(qword_2800EC768 + 112) && v45 == *(qword_2800EC768 + 120))
    {
    }

    else
    {
      v47 = sub_266E9D3E4();

      if ((v47 & 1) == 0)
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_47:
        v102 = *(v0 + 248);
        v101 = *(v0 + 256);
        v103 = *(v0 + 240);
        v104 = *(v0 + 184);
        v226(*(v0 + 520), v224, *(v0 + 488));
        (*(v102 + 16))(v101, v104, v103);
        v105 = sub_266E9CF84();
        v106 = sub_266E9D1A4();
        if (os_log_type_enabled(v105, v106))
        {
          v232 = *(v0 + 488);
          v108 = *(v0 + 248);
          v107 = *(v0 + 256);
          v109 = *(v0 + 240);
          v225 = *(v0 + 520);
          v110 = OUTLINED_FUNCTION_16_0();
          v111 = OUTLINED_FUNCTION_20_0();
          v233 = v111;
          *v110 = 136315138;
          sub_266E9C794();
          v112 = sub_266E9D034();
          v114 = v113;
          (*(v108 + 8))(v107, v109);
          v115 = sub_266E6E7D4(v112, v114, &v233);

          *(v110 + 4) = v115;
          _os_log_impl(&dword_266E51000, v105, v106, "Unsupported input parse type in parseDisambiguationResult %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v111);
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_4_0();

          v116 = v225;
          v117 = v232;
        }

        else
        {

          v150 = OUTLINED_FUNCTION_23_0();
          v151(v150);
          v116 = OUTLINED_FUNCTION_49();
        }

        v228(v116, v117);
        v152 = *(v0 + 480);
        v153 = *(v0 + 424);
        v154 = *(v0 + 432);
        v155 = type metadata accessor for IdentityFlowError();
        OUTLINED_FUNCTION_36_0(v155);
        sub_266E89698(0);
        OUTLINED_FUNCTION_1_9();
        v158 = sub_266E765B0(v156, 255, v157, &unk_266EA07E0);
        v159 = OUTLINED_FUNCTION_26_1(v158);
        OUTLINED_FUNCTION_43(v159, v160, v161, v162, v163, v164, v165, v166, v212, v213, v214, v215, v216, v217, v218, v219);
        (*(v154 + 8))(v152, v153);
        goto LABEL_75;
      }
    }

    v85 = sub_266E9C7C4();
    v86 = *(v0 + 272);
    v87 = *(v0 + 280);
    v88 = *(v0 + 264);
    if (v85)
    {
      sub_266E95904(0x696669746E656469, 0xEA00000000007265, v85, (v0 + 96));

      (*(v86 + 8))(v87, v88);
      if (*(v0 + 120))
      {
        if (swift_dynamicCast())
        {
          v219 = v3;
          v53 = *(v0 + 136);
          v231 = *(v0 + 128);
          (*(*(v0 + 432) + 8))(*(v0 + 480), *(v0 + 424));
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C8, &qword_266E9F5B8);
          v57 = sub_266E9C6F4();
          v58 = sub_266E8B274(v57);
          for (i = 0; v58 != i; ++i)
          {
            if ((v57 & 0xC000000000000001) != 0)
            {
              v60 = MEMORY[0x26D5F5ED0](i, v57);
            }

            else
            {
              if (i >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_79;
              }

              v60 = *(v57 + 8 * i + 32);
            }

            v61 = v60;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_79:
              __break(1u);
              goto LABEL_80;
            }

            v62 = sub_266E6ED54(v60);
            if (v63)
            {
              if (v62 == v231 && v63 == v53)
              {

LABEL_50:

                v118 = v61;

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
                v119 = sub_266E9C704();
                [v119 setAccount_];

                v120 = sub_266E9C704();
                [v120 setSwitchType_];

                v121 = sub_266E9C704();
                v122 = [v121 account];

                v123 = 0;
                if (v122)
                {
                  v123 = type metadata accessor for Account();
                }

                else
                {
                  v234 = 0;
                  v235 = 0;
                }

                v147 = *(v0 + 232);
                v148 = *(v0 + 208);
                v149 = *(v0 + 216);
                v233 = v122;
                v236 = v123;
                sub_266E9C704();
                type metadata accessor for SwitchProfileIntent();
                sub_266E9C5E4();
                sub_266E9C644();

                (*(v149 + 8))(v147, v148);
                goto LABEL_75;
              }

              v65 = sub_266E9D3E4();

              if (v65)
              {
                goto LABEL_50;
              }
            }
          }

          v75 = *(v0 + 512);
          v76 = *(v0 + 488);

          v226(v75, v224, v76);

          v77 = sub_266E9CF84();
          v78 = sub_266E9D1A4();

          v79 = os_log_type_enabled(v77, v78);
          v80 = *(v0 + 512);
          v81 = *(v0 + 488);
          if (v79)
          {
            v82 = OUTLINED_FUNCTION_16_0();
            v83 = OUTLINED_FUNCTION_20_0();
            v233 = v83;
            *v82 = 136315138;
            v84 = sub_266E6E7D4(v231, v53, &v233);

            *(v82 + 4) = v84;
            _os_log_impl(&dword_266E51000, v77, v78, "SwitchProfileDisambiguationStrategy.parseDisambiguationResult(): No matching account for the identifier '%s'", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v83);
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
          }

          v228(v80, v81);
          v124 = type metadata accessor for IdentityFlowError();
          OUTLINED_FUNCTION_36_0(v124);
          v125 = 2;
          goto LABEL_60;
        }

        goto LABEL_56;
      }
    }

    else
    {
      (*(v86 + 8))(*(v0 + 280), *(v0 + 264));
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    sub_266E54DA8(v0 + 96, &qword_2800E9278, &qword_266E9F5F0);
LABEL_56:
    (*(*(v0 + 432) + 8))(*(v0 + 480), *(v0 + 424));
    goto LABEL_57;
  }

  if (v13 == *MEMORY[0x277D5C130])
  {
    v66 = (v0 + 56);
    v67 = *(v0 + 464);
    v68 = *(v0 + 360);
    v69 = *(v0 + 336);
    v70 = *(v0 + 344);
    (*(*(v0 + 432) + 16))(v67, *(v0 + 480), *(v0 + 424));
    v71 = OUTLINED_FUNCTION_16();
    v72(v71);
    v73 = *v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9570, &qword_266E9F5F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
    OUTLINED_FUNCTION_12_1();
    sub_266E9CD04();
    v74 = sub_266E9CD14();
    (*(v70 + 8))(v68, v69);
    v233 = v73;
    v74(&v233);

    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v167 = OUTLINED_FUNCTION_16();
    v56 = v168(v167);
    v55 = v169;
    swift_unknownObjectRelease();
    goto LABEL_70;
  }

  if (v13 != *MEMORY[0x277D5C160])
  {
    goto LABEL_47;
  }

  v219 = v3;
  v89 = OUTLINED_FUNCTION_22_3();
  v90(v89);
  v91 = OUTLINED_FUNCTION_23_0();
  v92(v91);
  v93 = OUTLINED_FUNCTION_19_2();
  v94(v93);
  sub_266E9C804();
  v95 = sub_266E9C934();
  v96 = OUTLINED_FUNCTION_49();
  v97(v96);
  if (v95)
  {
    v66 = (v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9570, &qword_266E9F5F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
    OUTLINED_FUNCTION_12_1();
    sub_266E9CD04();
    v98 = sub_266E9CD14();
    v99 = OUTLINED_FUNCTION_16();
    v100(v99);
    v233 = v95;
    v98(&v233);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v197 = OUTLINED_FUNCTION_49();
    v56 = v198(v197);
    v55 = v199;
    swift_unknownObjectRelease();
    v200 = OUTLINED_FUNCTION_16();
    v201(v200);
LABEL_70:
    __swift_destroy_boxed_opaque_existential_0(v66);
    (*(*(v0 + 432) + 8))(*(v0 + 480), *(v0 + 424));
    if (!v55)
    {
      goto LABEL_57;
    }

    goto LABEL_71;
  }

  if (qword_2800E8D88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_38_0(*(v0 + 488), qword_2800EC7F8);
  v170 = OUTLINED_FUNCTION_22_3();
  (v226)(v170);
  v171 = sub_266E9CF84();
  v172 = sub_266E9D1A4();
  if (OUTLINED_FUNCTION_31_0(v172))
  {
    v173 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v173);
    OUTLINED_FUNCTION_14();
    _os_log_impl(v174, v175, v176, v177, v178, 2u);
    OUTLINED_FUNCTION_10();
  }

  v179 = *(v0 + 528);
  v180 = *(v0 + 488);
  v227 = *(v0 + 480);
  v181 = *(v0 + 424);
  v182 = *(v0 + 432);

  v228(v179, v180);
  v183 = type metadata accessor for IdentityFlowError();
  OUTLINED_FUNCTION_36_0(v183);
  sub_266E89698(0);
  OUTLINED_FUNCTION_1_9();
  v186 = sub_266E765B0(v184, 255, v185, &unk_266EA07E0);
  v187 = OUTLINED_FUNCTION_26_1(v186);
  OUTLINED_FUNCTION_43(v187, v188, v189, v190, v191, v192, v193, v194, v212, v213, v214, v215, v216, v217, v218, v3);
  v195 = OUTLINED_FUNCTION_48_0();
  v196(v195);
  (*(v182 + 8))(v227, v181);
LABEL_75:

  OUTLINED_FUNCTION_8_0();

  return v210();
}

uint64_t sub_266E721E0()
{
  OUTLINED_FUNCTION_7_0();
  v0[2] = v1;
  v2 = sub_266E9C604();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_18();
  v4 = sub_266E9CFA4();
  v0[6] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E722D0()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[7];
  OUTLINED_FUNCTION_38_0(v0[6], qword_2800EC7E0);
  v2 = (v1 + 16);
  v3 = OUTLINED_FUNCTION_22_3();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v7);
    _os_log_impl(&dword_266E51000, v5, v6, "SwitchProfileDisambiguationStrategy.makeDisambiguationItemContainer() called", v2, 2u);
    OUTLINED_FUNCTION_10();
  }

  v8 = OUTLINED_FUNCTION_18_4();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  sub_266E9C724();
  v10 = sub_266E9C5F4();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_48_0();
  v14(v13);
  if (v10 == 0x746E756F636361 && v12 == 0xE700000000000000)
  {
  }

  else
  {
    v16 = sub_266E9D3E4();

    if ((v16 & 1) == 0)
    {
      v17 = type metadata accessor for IdentityFlowError();
      OUTLINED_FUNCTION_36_0(v17);
      v18 = sub_266E89698(1);
      OUTLINED_FUNCTION_1_9();
      v21 = sub_266E765B0(v19, 255, v20, &unk_266EA07E0);
      OUTLINED_FUNCTION_26_1(v21);
      *v22 = v18;
      swift_willThrow();

      OUTLINED_FUNCTION_8_0();

      return v23();
    }
  }

  v25 = sub_266E9C714();
  sub_266E6FA8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9470, qword_266E9F478);
  swift_allocObject();
  v26 = sub_266E9C734();

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_266E725C4()
{
  OUTLINED_FUNCTION_7_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_266E9C604();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  OUTLINED_FUNCTION_19(v7);
  v1[14] = OUTLINED_FUNCTION_18();
  v8 = sub_266E9C314();
  v1[15] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_18();
  v10 = sub_266E9CFA4();
  v1[18] = v10;
  OUTLINED_FUNCTION_5_1(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266E72730()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  OUTLINED_FUNCTION_38_0(v0[18], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_22_3();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v5);
    OUTLINED_FUNCTION_14();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[17];
  v13 = v0[15];
  v12 = v0[16];

  v14 = OUTLINED_FUNCTION_16();
  v15(v14);
  sub_266E9C1A4();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  (*(v12 + 104))(v11, *MEMORY[0x277D5BB60], v13);
  type metadata accessor for SwitchProfileIntent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_266E7642C(ObjCClassFromMetadata);
  if (v18)
  {
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v44 = v0[11];
    sub_266E9C284();
    v22 = sub_266E9C224();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
    sub_266E9C274();
    sub_266E9C1B4();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
    sub_266E9C724();
    v23 = sub_266E9C5F4();
    v25 = v24;
    (*(v21 + 8))(v20, v44);
    if (v23 == 0x746E756F636361 && v25 == 0xE700000000000000)
    {
    }

    else
    {
      v27 = sub_266E9D3E4();

      if ((v27 & 1) == 0)
      {
        v28 = type metadata accessor for IdentityFlowError();
        OUTLINED_FUNCTION_36_0(v28);
        v29 = sub_266E89698(1);
        OUTLINED_FUNCTION_1_9();
        v32 = sub_266E765B0(v30, 255, v31, &unk_266EA07E0);
        OUTLINED_FUNCTION_50_0(v32);
        *v33 = v29;
        swift_willThrow();

        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_17_2();

        __asm { BRAA            X1, X16 }
      }
    }

    v36 = *(v0[10] + 104);
    v0[21] = v36;
    if (v36)
    {
      v37 = v36;
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[22] = v38;
      *v38 = v39;
      v38[1] = sub_266E72B4C;
      OUTLINED_FUNCTION_17_2();

      return sub_266E72EC8();
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[24] = v41;
      *v41 = v42;
      v41[1] = sub_266E72CD4;
      OUTLINED_FUNCTION_17_2();

      return sub_266E732A4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266E72B4C()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E72C48()
{
  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E72CD4()
{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266E72E3C()
{
  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E72EC8()
{
  OUTLINED_FUNCTION_7_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_266E9C5D4();
  v1[7] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266E72F74()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  v0[10] = sub_266E9C714();
  sub_266E6FA8C();
  v2 = OUTLINED_FUNCTION_18_4();
  sub_266E73CC0(v2, v3);

  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_266E7308C;
  v6 = v0[9];

  return sub_266E95A60(v6, 0xD000000000000026, 0x8000000266EA2630);
}

uint64_t sub_266E7308C()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266E73188()
{
  OUTLINED_FUNCTION_47();
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = sub_266E9C834();
  v4 = MEMORY[0x277D5C1D8];
  v2[3] = v3;
  v2[4] = v4;
  __swift_allocate_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_54_0();

  v5 = OUTLINED_FUNCTION_18_4();
  v6(v5);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_55();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266E73240()
{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E732A4()
{
  OUTLINED_FUNCTION_7_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_266E9C5D4();
  v1[6] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_18();
  v7 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266E7334C()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  v0[9] = sub_266E9C714();
  v1 = sub_266E6FA8C();
  v2 = sub_266E8B274(v1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5F5ED0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = [v5 noNameMatched];

    v3 = v4 + 1;
  }

  while ((v7 & 1) != 0);

  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[10] = v8;
  *v8 = v9;
  v8[1] = sub_266E734BC;
  v10 = v0[8];

  sub_266E66254(v10, v2 == v4);
}

uint64_t sub_266E734BC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266E735B8()
{
  OUTLINED_FUNCTION_47();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = sub_266E9C834();
  v4 = MEMORY[0x277D5C1D8];
  v2[3] = v3;
  v2[4] = v4;
  __swift_allocate_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_54_0();

  v5 = OUTLINED_FUNCTION_18_4();
  v6(v5);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_55();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266E7366C()
{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E736D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  v4 = OUTLINED_FUNCTION_19(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = sub_266E9C5B4();
  OUTLINED_FUNCTION_2_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v37 = v12 - v11;
  v13 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  OUTLINED_FUNCTION_38_0(v13, qword_2800EC7E0);
  (*(v15 + 16))(v19);
  v20 = sub_266E9CF84();
  v21 = sub_266E9D194();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_5_0();
    v33 = v6;
    *v22 = 0;
    _os_log_impl(&dword_266E51000, v20, v21, "SwitchProfileDisambiguationStrategy.generateOutputsForDisambiguation() called", v22, 2u);
    v6 = v33;
    OUTLINED_FUNCTION_4_0();
  }

  (*(v15 + 8))(v19, v13);
  sub_266E6FA8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C8, &qword_266E9F5B8);
  v23 = sub_266E9C6E4();
  v24 = v37;
  sub_266E92114(v23, v37);

  OUTLINED_FUNCTION_30_0();
  v25 = v36;
  sub_266E73A54(v26, v27, v28);

  sub_266E5CE50(v25 + 192, v40);
  v29 = OUTLINED_FUNCTION_18_4();
  v30(v29);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_266E9C4C4();

  sub_266E54DA8(v38, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v6, &qword_2800E94C0, &unk_266E9EFC0);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return (*(v9 + 8))(v24, v7);
}

uint64_t sub_266E73A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = MEMORY[0x277D84F90];
  v6 = sub_266E8B274(a1);
  if (!v6)
  {
LABEL_15:
    v18 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
    v19 = OUTLINED_FUNCTION_23_0();
    sub_266E76490(v19, v20, v21, v22, v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
    result = OUTLINED_FUNCTION_36_0(v24);
    *(result + 16) = xmmword_266E9F380;
    *(result + 32) = v18;
    return result;
  }

  v7 = v6;
  result = sub_266E76514(0, &unk_2800E94A0, 0x277D47B70);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D5F5ED0](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = sub_266E79E70(v11);
      v13 = [objc_allocWithZone(MEMORY[0x277D47AB8]) init];
      [v13 setObject_];
      if (*(v4 + 104) && a3)
      {
        v14 = sub_266E74DB8(v11, a2, a3);
        if (!v14)
        {
          v14 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
        }
      }

      else
      {
        v14 = sub_266E791E0();
      }

      v15 = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
      v17 = OUTLINED_FUNCTION_36_0(v16);
      *(v17 + 16) = xmmword_266E9F380;
      *(v17 + 32) = v15;
      swift_unknownObjectRetain();
      sub_266E763AC(v17, v13);
      MEMORY[0x26D5F5CD0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266E9D0E4();
      }

      ++v9;
      sub_266E9D104();

      swift_unknownObjectRelease();
    }

    while (v7 != v9);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E73CC0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  v6 = OUTLINED_FUNCTION_19(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = sub_266E9D174();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a2;
  v10[6] = a1;

  v11 = a1;
  sub_266E74AE4(0, 0, v8, &unk_266E9F568, v10);
}

uint64_t sub_266E73DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_266E9CFA4();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E73EB4, 0, 0);
}

uint64_t sub_266E73EB4()
{
  OUTLINED_FUNCTION_27();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[18];
  v0[24] = OUTLINED_FUNCTION_38_0(v0[17], qword_2800EC7E0);
  v0[25] = *(v1 + 16);
  v0[26] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2 = OUTLINED_FUNCTION_22_3();
  v3(v2);
  v4 = sub_266E9CF84();
  v5 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v5))
  {
    v6 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v6);
    OUTLINED_FUNCTION_14();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_10();
  }

  v12 = v0[18];
  v13 = v0[14];

  v0[27] = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_16();
  v15(v14);
  sub_266E5CE50(v13 + 152, (v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v16);
  v18 = swift_task_alloc();
  v0[28] = v18;
  *v18 = v0;
  v18[1] = sub_266E74040;

  return MEMORY[0x2821C8A70](4000, 4000, v16, v17);
}

uint64_t sub_266E74040()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v4;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E74144()
{
  OUTLINED_FUNCTION_47();
  v1 = v0[29];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_266E8B274(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  while (1)
  {
    if (v2 == v3)
    {
      v10 = v0[25];

      v11 = OUTLINED_FUNCTION_34_0();
      v10(v11);
      v12 = sub_266E9CF84();
      v13 = sub_266E9D1A4();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[27];
      if (v14)
      {
        *OUTLINED_FUNCTION_5_0() = 0;
        OUTLINED_FUNCTION_54(&dword_266E51000, v16, v17, "Unable to retrieve currentDeviceAssistantID to generate commands for content disambiguation on remote device. Aborting.");
        OUTLINED_FUNCTION_4_0();
      }

      v18 = OUTLINED_FUNCTION_16();
      v15(v18);
      OUTLINED_FUNCTION_29_2();

      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_55();

      __asm { BRAA            X1, X16 }
    }

    if (v4)
    {
      v7 = MEMORY[0x26D5F5ED0](v3, v0[29]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v0[31] = v7;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return MEMORY[0x2821BB680]();
    }

    sub_266E9CEA4();
    v9 = sub_266E9CF34();
    if (v9 == sub_266E9CF34())
    {
      break;
    }

    ++v3;
  }

  v21 = v0[14];

  v22 = v8;
  sub_266E9CE74();
  v24 = v23;

  v0[32] = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v25 = OUTLINED_FUNCTION_48_0();
  sub_266E73A54(v25, v26, v24);

  v27 = OUTLINED_FUNCTION_23_0();
  sub_266E76490(v27, v28, v29, v30, v31);
  sub_266E5CE50(v21 + 112, (v0 + 7));
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  sub_266E9CE74();
  v0[33] = v32;
  v33 = swift_task_alloc();
  v0[34] = v33;
  sub_266E76514(0, &qword_2800E9488, 0x277D471B0);
  *v33 = v0;
  v33[1] = sub_266E74444;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x2821BB680]();
}

uint64_t sub_266E74444()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E74550()
{
  OUTLINED_FUNCTION_47();
  v1 = v0[35];
  v2 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v3 = OUTLINED_FUNCTION_34_0();
  v2(v3);
  v4 = v1;
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[35];
    v8 = OUTLINED_FUNCTION_16_0();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_266E54DA8(v9, &qword_2800E9490, qword_266E9F590);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_10();
    v16 = v0[31];
  }

  else
  {
    v16 = v5;
    v5 = v0[31];
  }

  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[27];

  v20 = OUTLINED_FUNCTION_16();
  v19(v20);
  OUTLINED_FUNCTION_29_2();

  OUTLINED_FUNCTION_8_0();

  return v21();
}

uint64_t sub_266E746EC()
{
  v24 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = OUTLINED_FUNCTION_19_2();
  v2(v3);
  v4 = v1;
  v5 = sub_266E9CF84();
  v6 = sub_266E9D1A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v21 = *(v0 + 160);
    v22 = *(v0 + 216);
    v8 = *(v0 + 136);
    v9 = OUTLINED_FUNCTION_16_0();
    v10 = OUTLINED_FUNCTION_20_0();
    v23 = v10;
    *v9 = 136315138;
    *(v0 + 96) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
    v12 = sub_266E9D034();
    v14 = sub_266E6E7D4(v12, v13, &v23);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_53(&dword_266E51000, v15, v16, "Unable to get devicesWithProximity: %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();

    v22(v21, v8);
  }

  else
  {
    v17 = *(v0 + 216);

    v18 = OUTLINED_FUNCTION_16();
    v17(v18);
  }

  OUTLINED_FUNCTION_29_2();

  OUTLINED_FUNCTION_8_0();

  return v19();
}

void sub_266E748D8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 200);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = OUTLINED_FUNCTION_19_2();
  v2(v3);
  v4 = v1;
  v5 = sub_266E9CF84();
  v6 = sub_266E9D1A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 256);
    v25 = *(v0 + 152);
    v26 = *(v0 + 216);
    v23 = *(v0 + 248);
    v24 = *(v0 + 136);
    v9 = OUTLINED_FUNCTION_16_0();
    v10 = OUTLINED_FUNCTION_20_0();
    v27 = v10;
    *v9 = 136315138;
    *(v0 + 104) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
    v12 = sub_266E9D034();
    v14 = sub_266E6E7D4(v12, v13, &v27);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_53(&dword_266E51000, v15, v16, "makePromptForDisambiguation submitToRemote() failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();

    v26(v25, v24);
  }

  else
  {
    v17 = *(v0 + 288);
    v18 = *(v0 + 256);
    v19 = *(v0 + 216);

    v20 = OUTLINED_FUNCTION_18_4();
    v19(v20);
  }

  OUTLINED_FUNCTION_29_2();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266E74AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_266E761D4(a3, v24 - v10);
  v12 = sub_266E9D174();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_266E54DA8(v11, &unk_2800E9478, &qword_266EA0E40);
  }

  else
  {
    sub_266E9D164();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_266E9D134();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_266E9D054() + 32;
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

      sub_266E54DA8(a3, &unk_2800E9478, &qword_266EA0E40);

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

  sub_266E54DA8(a3, &unk_2800E9478, &qword_266EA0E40);
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

id sub_266E74DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v7 = sub_266E9BE84();
  OUTLINED_FUNCTION_2_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  sub_266E75080();
  if (v14 >> 60 == 15)
  {
    if (qword_2800E8D78 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_38_0(v5, qword_2800EC7C8);
    v15 = OUTLINED_FUNCTION_22_3();
    v16(v15);
    v17 = sub_266E9CF84();
    v18 = sub_266E9D1A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_5_0();
      *v19 = 0;
      _os_log_impl(&dword_266E51000, v17, v18, "Error while creating direct invocation command from item", v19, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v20 = OUTLINED_FUNCTION_23_0();
    v21(v20);
    return 0;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D476E0]) init];
    sub_266E75F3C(a2, a3, v23);
    v22 = [objc_allocWithZone(MEMORY[0x277D472F0]) init];
    sub_266E9BE74();
    v24 = sub_266E9BE64();
    v26 = v25;
    (*(v9 + 8))(v13, v7);
    sub_266E75F94(v24, v26, v22, &selRef_setAceId_);

    [v22 setRemoteDevice_];
    v27 = OUTLINED_FUNCTION_41();
    sub_266E76000(v27, v28, v22);

    v29 = OUTLINED_FUNCTION_41();
    sub_266E76058(v29, v30);
  }

  return v22;
}

uint64_t sub_266E75080()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x277D47950]) init];
  v8 = sub_266E791E0();
  [v7 setStartLocalRequest_];

  v9 = [v7 dictionary];
  if (v9)
  {
    v10 = v9;
    v20[0] = 0;
    v11 = [objc_opt_self() dataWithPropertyList:v9 format:200 options:0 error:v20];
    v12 = v20[0];
    if (v11)
    {
      sub_266E9BE44();
    }

    else
    {
      v17 = v12;
      v18 = sub_266E9BDF4();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_38_0(v0, qword_2800EC7E0);
    (*(v2 + 16))(v6);
    v13 = sub_266E9CF84();
    v14 = sub_266E9D1A4();
    if (os_log_type_enabled(v13, v14))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_54(&dword_266E51000, v15, v16, "Could not parse startUIRequest as Dictionary.");
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
    }

    (*(v2 + 8))(v6, v0);
  }

  return OUTLINED_FUNCTION_41();
}

uint64_t sub_266E7530C()
{
  sub_266E5D044(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  return v0;
}

uint64_t sub_266E7534C()
{
  sub_266E7530C();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

void sub_266E753A8()
{
  type metadata accessor for SwitchProfileDisambiguationStrategy();

  JUMPOUT(0x26D5F4BD0);
}

uint64_t sub_266E75414(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_266E754AC;

  return sub_266E721E0();
}

uint64_t sub_266E754AC()
{
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_9_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_266E755A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E70968();
}

uint64_t sub_266E75660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E5C6A4;

  return sub_266E725C4();
}

uint64_t sub_266E75714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchProfileDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_266E765F8;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_266E757E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchProfileDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_266E765F8;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_266E758AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_266E765F8;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_266E75970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_266E765F8;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_266E75A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SwitchProfileDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_266E75A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SwitchProfileDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_266E765F8;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E75B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SwitchProfileDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_266E765F8;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_266E75C8C()
{
  result = qword_2800E9468;
  if (!qword_2800E9468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E9470, qword_266E9F478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9468);
  }

  return result;
}

uint64_t sub_266E75CF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266E75DE8;

  return v6(a1);
}

uint64_t sub_266E75DE8()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E75ECC(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266E9D024();

  return v3;
}

void sub_266E75F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();
  [a3 setAssistantId_];
}

void sub_266E75F94(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_266E9D014();

  [a3 *a4];
}

void sub_266E76000(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9BE34();
  [a3 setSerializedCommand_];
}

uint64_t sub_266E76058(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266E7606C(a1, a2);
  }

  return a1;
}

uint64_t sub_266E7606C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_266E760C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266E76114()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_266E5C6A4;

  return sub_266E73DC0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_266E761D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E76244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E7627C()
{
  OUTLINED_FUNCTION_9_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_1(v1);

  return v4(v3);
}

uint64_t sub_266E76314()
{
  OUTLINED_FUNCTION_9_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_1(v1);

  return v4(v3);
}

void sub_266E763AC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94B8, &unk_266E9F5A8);
  v3 = sub_266E9D0B4();

  [a2 setCommands_];
}

uint64_t sub_266E7642C(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266E9D024();

  return v3;
}

void sub_266E76490(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_266E76514(0, a3, a4);
  v7 = sub_266E9D0B4();

  [a2 *a5];
}

uint64_t sub_266E76514(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_266E76554(uint64_t a1)
{
  v2 = type metadata accessor for IdentityNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E765B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_29_2()
{
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a2 = v16;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return sub_266E736D0(v1, v0, v2);
}

uint64_t sub_266E767EC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a2 >> 62 == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
      {
        case 1:
          v3 = 0x8000000000000008;
          break;
        case 2:
          v3 = 0x8000000000000010;
          break;
        case 3:
          v3 = 0x8000000000000018;
          break;
        default:
          v3 = 0x8000000000000000;
          break;
      }

      if (a2 == v3)
      {
        return 1;
      }
    }
  }

  else if (!(a2 >> 62))
  {
LABEL_6:
    sub_266E78CB4();
    return sub_266E9D1F4() & 1;
  }

  return 0;
}

uint64_t sub_266E768F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
  if (!(v1 >> 62))
  {
    return 2;
  }

  if (v1 >> 62 != 1)
  {
    return *(&unk_266E9F7D8 + ((v1 ^ 0x8000000000000000) & 0xFFFFFFFFFFFFFFF8));
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t sub_266E7695C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_266E9C7A4();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input;
  swift_beginAccess();
  sub_266E5CEB4(v5, v1 + v8);
  swift_endAccess();
  v9 = *(v1 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
  *(v1 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) = 0x8000000000000000;
  sub_266E78CF8(v9);
  return 1;
}

uint64_t sub_266E76A70(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecutionDeviceResolutionFlow(0);
  sub_266E79124(&qword_2800E92E0, type metadata accessor for ExecutionDeviceResolutionFlow, &unk_266E9F768);
  return sub_266E9C144();
}

uint64_t sub_266E76B00(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_266E9C7E4();
  v2[9] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v2[10] = v4;
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  v2[12] = swift_task_alloc();
  v5 = sub_266E9C7A4();
  v2[13] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v2[14] = v6;
  v2[15] = swift_task_alloc();
  v7 = sub_266E9CFA4();
  v2[16] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v2[17] = v8;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E76CB0, 0, 0);
}

void sub_266E76CB0()
{
  v40 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[17];
  v0[21] = __swift_project_value_buffer(v0[16], qword_2800EC7E0);
  v2 = *(v1 + 16);
  v0[22] = v2;
  v0[23] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3 = OUTLINED_FUNCTION_11_0();
  v2(v3);

  v4 = sub_266E9CF84();
  v5 = sub_266E9D194();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  if (v6)
  {
    v38 = v2;
    v10 = v0[8];
    v37 = v0[20];
    v11 = OUTLINED_FUNCTION_16_0();
    v39 = OUTLINED_FUNCTION_20_0();
    v12 = v39;
    *v11 = 136315138;
    v13 = *(v10 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
    v0[6] = v13;
    sub_266E78D14(v13);
    v14 = sub_266E9D034();
    v16 = sub_266E6E7D4(v14, v15, &v39);
    v2 = v38;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_266E51000, v4, v5, "ExecutionDeviceResolutionFlow.execute() %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    v17 = *(v8 + 8);
    v17(v37, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v0[24] = v17;
  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[8];
  v21 = OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input;
  swift_beginAccess();
  sub_266E790A0(v20 + v21, v19, &qword_2800E92E8, &unk_266E9E9E0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
  {
    sub_266E651FC(v0[12], &qword_2800E92E8, &unk_266E9E9E0);
    v22 = OUTLINED_FUNCTION_11_0();
    v2(v22);
    v23 = sub_266E9CF84();
    v24 = sub_266E9D194();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_5_0();
      *v25 = 0;
      _os_log_impl(&dword_266E51000, v23, v24, "ExecutionDeviceResolutionFlow.execute() Input is nil. Error executing request", v25, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v26 = v0[19];
    v27 = v0[16];

    v17(v26, v27);
    sub_266E9D374();
    OUTLINED_FUNCTION_13_2();
  }

  else
  {
    v28 = v0[8];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    if (*(v28 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) != 0x8000000000000000)
    {
      sub_266E9C504();
      v33 = OUTLINED_FUNCTION_1_10();
      v34(v33);

      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_13_2();

      __asm { BRAA            X1, X16 }
    }

    v29 = v0[8];
    __swift_project_boxed_opaque_existential_0(v29 + 2, v29[5]);
    __swift_project_boxed_opaque_existential_0(v29 + 7, v29[10]);
    v0[25] = sub_266E8A1F8();
    v30 = swift_task_alloc();
    v0[26] = v30;
    *v30 = v0;
    v30[1] = sub_266E77128;
    OUTLINED_FUNCTION_13_2();

    MEMORY[0x2821C8A68](v31);
  }
}

uint64_t sub_266E77128(uint64_t a1)
{
  OUTLINED_FUNCTION_11();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v5 + 216) = v1;

  if (v1)
  {
    v8 = sub_266E77550;
  }

  else
  {

    *(v5 + 224) = a1;
    v8 = sub_266E7724C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_266E7724C()
{
  __swift_project_boxed_opaque_existential_0((v0[8] + 56), *(v0[8] + 80));
  sub_266E9C794();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_266E77314;
  v2 = v0[28];
  v3 = v0[11];

  return sub_266E8A260(v3, v2);
}

uint64_t sub_266E77314()
{
  OUTLINED_FUNCTION_11();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v6 = v5;
  *(v8 + 240) = v7;
  *(v8 + 248) = v9;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_266E77488, 0, 0);
}

uint64_t sub_266E77488()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  sub_266E77780(v1, v2, *(v0 + 56));
  sub_266E79100(v1, v2);
  v3 = OUTLINED_FUNCTION_1_10();
  v4(v3);

  OUTLINED_FUNCTION_8_0();

  return v5();
}

uint64_t sub_266E77550()
{
  v28 = v0;
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[16];

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_266E9CF84();
  v8 = sub_266E9D1A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[27];
    v26 = v0[24];
    v10 = v0[18];
    v11 = v0[16];
    v12 = OUTLINED_FUNCTION_16_0();
    v13 = OUTLINED_FUNCTION_20_0();
    v27 = v13;
    *v12 = 136315138;
    v0[5] = v9;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
    v15 = sub_266E9D034();
    v17 = sub_266E6E7D4(v15, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266E51000, v7, v8, "Failure getting devicesMatching: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    v26(v10, v11);
  }

  else
  {
    v18 = v0[24];
    v19 = v0[18];
    v20 = v0[16];

    v18(v19, v20);
  }

  v21 = v0[27];
  sub_266E9C504();

  v22 = OUTLINED_FUNCTION_1_10();
  v23(v22);

  OUTLINED_FUNCTION_8_0();

  return v24();
}

uint64_t sub_266E77780@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v7 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_2();
  v40 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v16 = __swift_project_value_buffer(v7, qword_2800EC7E0);
  v17 = OUTLINED_FUNCTION_11_0();
  v39 = v18;
  v18(v17);
  v19 = sub_266E9CF84();
  v20 = sub_266E9D194();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_5_0();
    v38[1] = v16;
    *v21 = 0;
    _os_log_impl(&dword_266E51000, v19, v20, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult()", v21, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v22 = *(v9 + 8);
  v22(v15, v7);
  switch(a2)
  {
    case 1:
      v23 = OUTLINED_FUNCTION_11_0();
      v39(v23);
      v24 = sub_266E9CF84();
      v25 = sub_266E9D194();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_5_0();
        *v26 = 0;
        _os_log_impl(&dword_266E51000, v24, v25, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() Prompting for device confirmation", v26, 2u);
        OUTLINED_FUNCTION_4_0();
      }

      v22(v40, v7);
      sub_266E5CE50(v4 + 136, v44);
      sub_266E5CE50(v4 + 176, v43);
      sub_266E5CE50(v4 + 136, v42);
      type metadata accessor for LocUtil();
      v27 = v4;
      inited = swift_initStackObject();
      sub_266E5D10C(v42, inited + 16);
      v29 = __swift_mutable_project_boxed_opaque_existential_1(v43, v43[3]);
      MEMORY[0x28223BE20](v29);
      OUTLINED_FUNCTION_8_3();
      (*(v30 + 16))(v7);
      sub_266E78F04(v44, *v7, inited);
      __swift_destroy_boxed_opaque_existential_0(v43);
      sub_266E5CE50(v27 + 96, v44);
      v43[0] = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E95D0, &qword_266E9F7D0);
      swift_allocObject();
      sub_266E79030(a1, 1);
      type metadata accessor for DeviceConfirmationStrategy();
      sub_266E79124(&qword_2800E95D8, type metadata accessor for DeviceConfirmationStrategy, &unk_266EA1190);

      v31 = sub_266E9C034();
      v32 = *(v27 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
      *(v27 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) = a1;
      sub_266E79030(a1, 1);
      sub_266E78CF8(v32);
      *&v44[0] = v31;
      sub_266E79058(&qword_2800E95E0, &qword_2800E95D0, &qword_266E9F7D0, MEMORY[0x277D5B670]);

      sub_266E9C4D4();

    case 2:
      v34 = v4;
      v35 = *(v4 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
      *(v34 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) = a1 | 0x4000000000000000;
      v36 = a1;
      v37 = v35;
      goto LABEL_11;
    case 3:
      v37 = *(v4 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
      *(v4 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) = 0x8000000000000008;
LABEL_11:
      sub_266E78CF8(v37);
      return sub_266E9C504();
    default:
      return sub_266E9C504();
  }
}

uint64_t sub_266E77CCC(void *a1)
{
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E95B8, &qword_266E9F7C0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5_2();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v94 = &v88 - v7;
  sub_266E9C774();
  OUTLINED_FUNCTION_2_1();
  v92 = v9;
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_3();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E95C0, &qword_266E9F7C8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_2();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v101 = &v88 - v17;
  v18 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_2();
  v95 = (v22 - v23);
  v25 = MEMORY[0x28223BE20](v24);
  v90 = &v88 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v88 - v27;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v89 = v15;
  v91 = v5;
  v29 = __swift_project_value_buffer(v18, qword_2800EC7E0);
  v30 = *(v20 + 16);
  v88 = v29;
  v97 = v30;
  v98 = v20 + 16;
  (v30)(v28);
  v31 = sub_266E9CF84();
  v32 = sub_266E9D194();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_5_0();
    *v33 = 0;
    _os_log_impl(&dword_266E51000, v31, v32, "ExecutionDeviceResolutionFlow.processConfirmationResult()", v33, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v34 = *(v20 + 8);
  v99 = v20 + 8;
  v35 = v34;
  v34(v28, v18);
  v36 = *(v103 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state);
  if (v36 >> 62)
  {
    result = sub_266E9D374();
    __break(1u);
    return result;
  }

  v37 = OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state;
  v38 = *(v11 + 16);
  v39 = v101;
  v40 = v102;
  v38(v101, v96, v102);
  v41 = (*(v11 + 88))(v39, v40);
  v42 = *MEMORY[0x277D5BC38];
  v100 = v36;
  if (v41 == v42)
  {
    (*(v11 + 96))(v39, v40);
    v44 = v92;
    v43 = v93;
    (*(v92 + 32))(v1, v39, v93);
    v45 = v36;
    v46 = v94;
    sub_266E9C764();
    v47 = v1;
    v48 = v46;
    (*(v44 + 8))(v47, v43);
    v49 = sub_266E9C614();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v49);
    v51 = v103;
    v52 = v95;
    v53 = v35;
    v54 = v37;
    if (EnumTagSinglePayload != 1)
    {
      v60 = v91;
      sub_266E790A0(v46, v91, &qword_2800E95B8, &qword_266E9F7C0);
      v61 = *(v49 - 8);
      v62 = (*(v61 + 88))(v60, v49);
      if (v62 == *MEMORY[0x277D5BED8])
      {
        v55 = *(v51 + v54);
        *(v51 + v54) = v100 | 0x4000000000000000;
        v63 = v45;
        goto LABEL_15;
      }

      if (v62 == *MEMORY[0x277D5BED0])
      {
        v55 = *(v51 + v54);
        v56 = 0x8000000000000010;
        goto LABEL_9;
      }

      (*(v61 + 8))(v60, v49);
    }

    v55 = *(v51 + v54);
    v56 = 0x8000000000000018;
LABEL_9:
    *(v51 + v54) = v56;
LABEL_15:
    sub_266E78CF8(v55);
    sub_266E651FC(v48, &qword_2800E95B8, &qword_266E9F7C0);
    goto LABEL_28;
  }

  if (v41 != *MEMORY[0x277D5BC30])
  {
    v53 = v35;
    if (v41 == *MEMORY[0x277D5BC40])
    {
      v51 = v103;
      v54 = v37;
      *(v103 + v37) = 0x8000000000000010;
    }

    else
    {
      v54 = v37;
      if (v41 == *MEMORY[0x277D5BC28])
      {
        v64 = v36;
        v52 = v95;
        goto LABEL_12;
      }

      *(v103 + v37) = 0x8000000000000018;
      v65 = v90;
      v97(v90, v88, v18);
      v66 = v102;
      v38(v89, v96, v102);
      v67 = sub_266E9CF84();
      v68 = sub_266E9D1A4();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_16_0();
        v94 = v69;
        v96 = OUTLINED_FUNCTION_20_0();
        v105 = v96;
        *v69 = 136315138;
        sub_266E79058(&qword_2800E95C8, &qword_2800E95C0, &qword_266E9F7C8, MEMORY[0x277D5BC48]);
        LODWORD(v93) = v68;
        v70 = v67;
        v71 = sub_266E9D3D4();
        v73 = v72;
        v74 = OUTLINED_FUNCTION_10_3();
        v66(v74);
        v75 = sub_266E6E7D4(v71, v73, &v105);

        v76 = v94;
        *(v94 + 4) = v75;
        _os_log_impl(&dword_266E51000, v70, v93, "ExecutionDeviceResolutionFlow.processConfirmationResult() received unknown result: %s. Setting flow to .failure state.", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_4_0();

        v53(v65, v18);
        v77 = v102;
      }

      else
      {

        v78 = OUTLINED_FUNCTION_10_3();
        (v66)(v78, v66);
        v53(v65, v18);
        v77 = v66;
      }

      (v66)(v101, v77);
      v51 = v103;
    }

    v52 = v95;
    goto LABEL_28;
  }

  v57 = *(v11 + 8);
  v58 = v36;
  v57(v101, v102);
  v52 = v95;
  v53 = v35;
  v54 = v37;
LABEL_12:
  v51 = v103;
  v59 = *(v103 + v54);
  *(v103 + v54) = 0x8000000000000018;
  sub_266E78CF8(v59);
LABEL_28:
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v79 = __swift_project_value_buffer(v18, qword_2800EC7C8);
  v97(v52, v79, v18);

  v80 = sub_266E9CF84();
  v81 = sub_266E9D194();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = OUTLINED_FUNCTION_16_0();
    v83 = OUTLINED_FUNCTION_20_0();
    v105 = v83;
    *v82 = 136315138;
    v104 = *(v51 + v54);
    sub_266E78D14(v104);
    v84 = sub_266E9D034();
    v86 = sub_266E6E7D4(v84, v85, &v105);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_266E51000, v80, v81, "ExecutionDeviceResolutionFlow.processConfirmationResult() state after processConfirmationResult: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    sub_266E78CF8(v100);
  }

  else
  {
    sub_266E78CF8(v100);
  }

  return (v53)(v52, v18);
}

void *sub_266E78640()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_266E651FC(v0 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input, &qword_2800E92E8, &unk_266E9E9E0);
  sub_266E78CF8(*(v0 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state));
  return v0;
}

uint64_t sub_266E786B0()
{
  sub_266E78640();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecutionDeviceResolutionFlow(uint64_t a1)
{
  result = qword_2800E95A0;
  if (!qword_2800E95A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E7875C(uint64_t a1)
{
  sub_266E5C1C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t get_enum_tag_for_layout_string_20SiriIdentityInternal29ExecutionDeviceResolutionFlowC5StateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_266E78830(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_266E78884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_266E788E4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_266E78944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266E789F4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266E789F4(uint64_t a1)
{
  OUTLINED_FUNCTION_11();
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_266E78B08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E78BA4;

  return sub_266E76B00(a1);
}

uint64_t sub_266E78BA4()
{
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E78C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E768F8();
  *a1 = result;
  return result;
}

unint64_t sub_266E78CB4()
{
  result = qword_2800E95B0;
  if (!qword_2800E95B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E95B0);
  }

  return result;
}

void sub_266E78CF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

unint64_t sub_266E78D14(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void *sub_266E78D30(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[3] = type metadata accessor for BaseDialogProvider();
  v16[4] = &off_287876528;
  v16[0] = a2;
  a4[19] = 0xD00000000000002DLL;
  a4[20] = 0x8000000266EA2720;
  sub_266E5CE50(a1, (a4 + 2));
  sub_266E5CE50(v16, v14);
  sub_266E5CE50(a1, v13);
  sub_266E5CE50(v14, __src);
  sub_266E790A0(v13, &v10, &qword_2800E93F0, &qword_266E9F028);
  if (v11)
  {
    sub_266E651FC(v13, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(v14);
    sub_266E5D10C(&v10, v12);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E651FC(v13, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(v14);
    if (v11)
    {
      sub_266E651FC(&v10, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(v12, &__src[5]);
  sub_266E5CE50(&__src[5], v12);
  type metadata accessor for LocUtil();
  v7 = swift_allocObject();
  sub_266E5D10C(v12, v7 + 16);

  __src[10] = v7;
  __swift_destroy_boxed_opaque_existential_0(v16);
  memcpy(a4 + 7, __src, 0x58uLL);
  v8 = swift_allocObject();
  sub_266E5D10C(a1, v8 + 16);
  a4[18] = v8;
  return a4;
}

void *sub_266E78F04(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for BaseDialogProvider();
  v16 = &off_287876528;
  v14[0] = a2;
  type metadata accessor for DeviceConfirmationStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_266E78D30(a1, *v9, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

id sub_266E79030(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_266E79058(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_266E790A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_266E79100(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_266E79124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_266E791E0()
{
  v1 = v0;
  v2 = sub_266E9CFA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E6ED54(v1);
  if (v6)
  {
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2800EC7E0);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_266E9CF84();
    v9 = sub_266E9D1A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266E51000, v8, v9, "ProfileId is nil for the account while creating disambiguation option direct invocation command", v10, 2u);
      MEMORY[0x26D5F66A0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_266E795CC();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  v11 = *(qword_2800EC768 + 112);
  v12 = *(qword_2800EC768 + 120);

  v13 = sub_266E79558(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E95F0, &qword_266E9F7F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E9ED60;
  v26[1] = 0x696669746E656469;
  v26[2] = 0xEA00000000007265;
  v15 = MEMORY[0x277D837D0];
  sub_266E9D254();
  v16 = sub_266E6ED54(v1);
  *(inited + 96) = v15;
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v17)
  {
    v19 = v17;
  }

  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = sub_266E9CFE4();
  sub_266E79610(v20, v13);
  v21 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  [v21 setInputOrigin_];
  [v21 setInteractionType_];
  v22 = objc_opt_self();
  v23 = [v22 runSiriKitExecutorCommandWithContext:v21 payload:v13];
  v24 = [v22 wrapCommandInStartLocalRequest_];

  return v24;
}

id sub_266E79558(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266E9D014();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

unint64_t sub_266E795CC()
{
  result = qword_2800E95E8;
  if (!qword_2800E95E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E95E8);
  }

  return result;
}

void sub_266E79610(uint64_t a1, void *a2)
{
  v3 = sub_266E9CFB4();

  [a2 setUserData_];
}

uint64_t sub_266E79690(uint64_t a1, uint64_t a2)
{
  v5 = sub_266E9BEA4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_266E9C2A4();
  sub_266E9BE94();
  sub_266E7997C();
  v6 = sub_266E9D224();
  v8 = v7;

  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    v18 = OUTLINED_FUNCTION_0_10();
    v19(v18);

    return 0;
  }

  v10 = v9;
  v11 = sub_266E9D014();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_266E799D0(a1, a2, v11, v13, v6, v8, v10);

  if (!v14)
  {
    v20 = OUTLINED_FUNCTION_0_10();
    v21(v20);
    return 0;
  }

  v15 = sub_266E9D024();

  v16 = OUTLINED_FUNCTION_0_10();
  v17(v16);
  return v15;
}

uint64_t sub_266E79920()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_266E7997C()
{
  result = qword_2800E95F8;
  if (!qword_2800E95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E95F8);
  }

  return result;
}

id sub_266E799D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_266E9D014();
  v11 = sub_266E9D014();

  v12 = [a7 localizedStringForKey:v10 table:a3 bundle:a4 languageCode:v11];

  return v12;
}

uint64_t static SiriEnvironment.getUserIdentity()()
{
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E9CCF4();
  if (sub_266E9CCD4())
  {
    v6 = sub_266E9CCB4();
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    v7 = __swift_project_value_buffer(v0, qword_2800EC7E0);
    (*(v2 + 16))(v5, v7, v0);
    v8 = sub_266E9CF84();
    v9 = sub_266E9D1A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266E51000, v8, v9, "SiriEnvironment.getUserIdentity : Couldn't get forCurrentTask", v10, 2u);
      MEMORY[0x26D5F66A0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v0);
    return 0;
  }

  return v6;
}

uint64_t sub_266E79C60(uint64_t (*a1)(void), const char *a2)
{
  v4 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E9CCF4();
  if (!sub_266E9CCD4())
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    v10 = __swift_project_value_buffer(v4, qword_2800EC7E0);
    (*(v6 + 16))(v9, v10, v4);
    v11 = sub_266E9CF84();
    v12 = sub_266E9D1A4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266E51000, v11, v12, a2, v13, 2u);
      MEMORY[0x26D5F66A0](v13, -1, -1);
    }

    (*(v6 + 8))(v9, v4);
    sub_266E9CCE4();
  }

  v14 = a1();

  return v14;
}

uint64_t sub_266E79E24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_266E79E70(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 displayString];
  v4 = sub_266E9D024();
  v6 = v5;

  sub_266E79FEC(v4, v6, v2);
  v7 = [a1 isActive];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  [v2 setActiveProfile_];
  sub_266E6ED54(a1);
  if (v10)
  {
    v11 = sub_266E9D014();
  }

  else
  {
    v11 = 0;
  }

  [v2 setProfileIdentifier_];

  v12 = sub_266E7A050(a1);
  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v14 = sub_266E9BE34();
    sub_266E76058(v15, v16);
  }

  [v2 setProfileImage_];

  return v2;
}

void sub_266E79FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();

  [a3 setFullName_];
}

uint64_t sub_266E7A050(void *a1)
{
  v1 = [a1 profileImage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266E9BE44();

  return v3;
}

uint64_t _s24UserIdentityOntologyNodeCMa(uint64_t a1)
{
  result = qword_2800E9620;
  if (!qword_2800E9620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E7A154()
{
  v1 = v0;
  v2 = qword_2800E9600;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA8, &unk_266E9E2E0);
  swift_allocObject();
  *(v0 + v2) = sub_266E9C9A4();
  v4 = qword_2800E9608;
  OUTLINED_FUNCTION_0_11();
  *(v0 + v4) = sub_266E9C9A4();
  v5 = qword_2800E9610;
  OUTLINED_FUNCTION_0_11();
  *(v0 + v5) = sub_266E9C9A4();
  v6 = qword_2800E9618;
  OUTLINED_FUNCTION_0_11();
  v7 = sub_266E9C9A4();
  *(v1 + v6) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9230, &unk_266E9F880);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266E9F830;
  v9 = *(v1 + v2);
  *(v8 + 56) = v3;
  v10 = sub_266E7A46C();
  *(v8 + 32) = v9;
  v11 = *(v1 + v4);
  *(v8 + 96) = v3;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v11;
  v12 = *(v1 + v5);
  *(v8 + 136) = v3;
  *(v8 + 144) = v10;
  *(v8 + 112) = v12;
  *(v8 + 176) = v3;
  *(v8 + 184) = v10;
  *(v8 + 152) = v7;

  return MEMORY[0x2821C0790](0x6E65644972657375, 0xEC00000079746974, 1, v8);
}

uint64_t sub_266E7A36C()
{
}

uint64_t sub_266E7A3CC()
{
  v0 = sub_266E9C964();

  return v0;
}

uint64_t sub_266E7A434()
{
  v0 = sub_266E7A3CC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_266E7A46C()
{
  result = qword_2800E9248;
  if (!qword_2800E9248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E8DA8, &unk_266E9E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9248);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_allocObject();
}

uint64_t sub_266E7A4EC()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93E8, &qword_266E9F020);
  v1[11] = swift_task_alloc();
  v4 = sub_266E9C5D4();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_266E9CFA4();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E7A690, 0, 0);
}

uint64_t sub_266E7A690()
{
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "EstablishUserHandleIntentStrategy.makeIntentHandledResponse()", v7, 2u);
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9638, &unk_266E9F9F0);
  v11 = sub_266E9C6C4();
  v12 = [v11 identity];
  v0[20] = v12;

  if (v12 && (v13 = [v12 isMultiUserContext]) != 0 && (v14 = v13, v15 = objc_msgSend(v13, sel_BOOLValue), v14, v15))
  {
    v16 = [v12 isIdentifiedOrUnsure];
    if (v16)
    {
      v17 = v16;
      [v16 BOOLValue];
    }

    sub_266E75ECC(v12);
    if (v21)
    {
      sub_266E9D064();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = v0[11];
    v24 = sub_266E9CD84();
    __swift_storeEnumTagSinglePayload(v23, v22, 1, v24);
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_266E7A9E8;

    return sub_266E67800();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0[9] + 16), *(v0[9] + 40));
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_266E7ACA8;
    v19 = v0[14];

    return sub_266E95A60(v19, 0xD00000000000001CLL, 0x8000000266EA28C0);
  }
}

uint64_t sub_266E7A9E8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = sub_266E7AFEC;
  }

  else
  {
    v5 = sub_266E7AAF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266E7AAF0()
{
  sub_266E54DA8(v0[11], &qword_2800E93E8, &qword_266E9F020);
  v2 = v0[16];
  v15 = v0[20];
  v3 = v0[13];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = OUTLINED_FUNCTION_3_6();
  v8(v7);
  v9 = *(v6 + 128);
  __swift_project_boxed_opaque_existential_0((v6 + 104), v9);
  sub_266E9C2B4();
  v10 = sub_266E9C5B4();
  OUTLINED_FUNCTION_6_4(v10);
  OUTLINED_FUNCTION_1_11();
  v11 = MEMORY[0x277D5C1D8];
  v1[3] = v12;
  v1[4] = v11;
  __swift_allocate_boxed_opaque_existential_1Tm(v1);
  sub_266E9C4A4();

  sub_266E54DA8(v9, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v5, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_8_0();

  return v13();
}

uint64_t sub_266E7ACA8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;
  *(v4 + 192) = v0;

  if (v0)
  {
    v5 = sub_266E7AF50;
  }

  else
  {
    v5 = sub_266E7ADB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266E7ADB0(uint64_t a1)
{
  v3 = v1[16];
  v4 = v1[13];
  v16 = v1[20];
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  v8 = OUTLINED_FUNCTION_3_6();
  v9(v8);
  v10 = *(v7 + 128);
  __swift_project_boxed_opaque_existential_0((v7 + 104), v10);
  sub_266E9C2B4();
  v11 = sub_266E9C5B4();
  OUTLINED_FUNCTION_6_4(v11);
  OUTLINED_FUNCTION_1_11();
  v12 = MEMORY[0x277D5C1D8];
  v2[3] = v13;
  v2[4] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v2);
  sub_266E9C4A4();

  sub_266E54DA8(v10, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v6, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_8_0();

  return v14();
}

uint64_t sub_266E7AF50()
{
  OUTLINED_FUNCTION_5_5();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E7AFEC()
{
  v1 = *(v0 + 88);

  sub_266E54DA8(v1, &qword_2800E93E8, &qword_266E9F020);
  OUTLINED_FUNCTION_5_5();

  OUTLINED_FUNCTION_8_0();

  return v2();
}

uint64_t sub_266E7B0A4()
{
  sub_266E5D044(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  return v0;
}

uint64_t sub_266E7B0D4()
{
  sub_266E7B0A4();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_266E7B130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EstablishUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_266E7B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EstablishUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_266E7B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EstablishUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_266E7B37C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E7B80C;

  return sub_266E7A4EC();
}

uint64_t sub_266E7B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EstablishUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_266E7B4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EstablishUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_266E7B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EstablishUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B674;

  return MEMORY[0x2821B9C38](a1, a2, v9, a4);
}

uint64_t sub_266E7B674()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E7B758()
{
  v1 = sub_266E58C80();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_266E7B7B8()
{
  result = qword_2800E9630;
  if (!qword_2800E9630)
  {
    type metadata accessor for EstablishUserHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9630);
  }

  return result;
}

double OUTLINED_FUNCTION_1_11()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_266E9C834();
}

double sub_266E7B898@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v93 = a1;
  v94 = a2;
  sub_266E9C864();
  OUTLINED_FUNCTION_2_1();
  v85 = v3;
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v84 = v5 - v4;
  sub_266E9C814();
  OUTLINED_FUNCTION_2_1();
  v88 = v7;
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v87 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9560, &unk_266E9FEA0);
  OUTLINED_FUNCTION_2_1();
  v91 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v82 - v13;
  v92 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v95 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v82 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v82 - v23;
  v25 = sub_266E9C7E4();
  OUTLINED_FUNCTION_2_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v31 = (v30 - v29);
  v32 = sub_266E9CC74();
  OUTLINED_FUNCTION_2_1();
  v34 = v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v82 - v39;
  (*(v27 + 16))(v31, v93, v25);
  v41 = (*(v27 + 88))(v31, v25);
  if (v41 == *MEMORY[0x277D5C128])
  {
    v42 = OUTLINED_FUNCTION_3_7();
    v43(v42);
LABEL_5:
    v46 = *(v34 + 32);
    v46(v40, v31, v32);
    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_1_6(&qword_2800E8D88);
    }

    v47 = v92;
    __swift_project_value_buffer(v92, qword_2800EC7F8);
    OUTLINED_FUNCTION_2_6();
    v48(v24);
    v49 = sub_266E9CF84();
    v50 = sub_266E9D194();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_5_0();
      *v51 = 0;
      _os_log_impl(&dword_266E51000, v49, v50, "IdentityNLIntentHelper building NLv3 intent", v51, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    OUTLINED_FUNCTION_7_4();
    v52(v24, v47);
    v46(v38, v40, v32);
    v53 = type metadata accessor for IdentityNLv3Intent(0);
    v54 = v94;
    v94[3] = v53;
    v54[4] = &off_287875AC8;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v54);
    sub_266E56F74(v38, boxed_opaque_existential_1Tm);
    return result;
  }

  if (v41 == *MEMORY[0x277D5C158])
  {
    v44 = OUTLINED_FUNCTION_3_7();
    v45(v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9708, qword_266E9FEB0);

    goto LABEL_5;
  }

  if (v41 == *MEMORY[0x277D5C130])
  {
    v57 = OUTLINED_FUNCTION_3_7();
    v58(v57);
    v59 = *v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9570, &qword_266E9F5F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
    sub_266E9CD04();
    v60 = sub_266E9CD14();
    (*(v91 + 8))(v14, v10);
    v96 = v59;
    v60(&v97, &v96);

    sub_266E59548(&v97);
    sub_266E7D26C(v59, v94);
    swift_unknownObjectRelease();
  }

  else if (v41 == *MEMORY[0x277D5C160])
  {
    v61 = OUTLINED_FUNCTION_3_7();
    v62(v61);
    v64 = v87;
    v63 = v88;
    v65 = v89;
    (*(v88 + 32))(v87, v31, v89);
    v66 = v84;
    sub_266E9C804();
    v67 = sub_266E9C934();
    (*(v85 + 8))(v66, v86);
    if (v67)
    {
      sub_266E7D26C(v67, v94);
      swift_unknownObjectRelease();
      (*(v63 + 8))(v64, v65);
    }

    else
    {
      if (qword_2800E8D88 != -1)
      {
        OUTLINED_FUNCTION_1_6(&qword_2800E8D88);
      }

      v75 = v92;
      __swift_project_value_buffer(v92, qword_2800EC7F8);
      OUTLINED_FUNCTION_2_6();
      v76 = v82;
      v77(v82);
      v78 = sub_266E9CF84();
      v79 = sub_266E9D1A4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_5_0();
        *v80 = 0;
        _os_log_impl(&dword_266E51000, v78, v79, "Unable to convert usoParse to legacy first dialog act", v80, 2u);
        OUTLINED_FUNCTION_4_0();
      }

      OUTLINED_FUNCTION_7_4();
      v81(v76, v75);
      (*(v63 + 8))(v64, v65);
      return OUTLINED_FUNCTION_6_5();
    }
  }

  else
  {
    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_1_6(&qword_2800E8D88);
    }

    __swift_project_value_buffer(v92, qword_2800EC7F8);
    OUTLINED_FUNCTION_2_6();
    v68 = v83;
    v69(v83);
    v70 = sub_266E9CF84();
    v71 = sub_266E9D194();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_5_0();
      *v72 = 0;
      _os_log_impl(&dword_266E51000, v70, v71, "#IdentityNLIntentHelper unrecognized parse type, not building intent.", v72, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    OUTLINED_FUNCTION_7_4();
    v73(v68, v92);
    v74 = OUTLINED_FUNCTION_6_5();
    (*(v27 + 8))(v31, v25, v74);
  }

  return result;
}

uint64_t IntentCaseType.hashValue.getter(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E7C2B4(uint64_t a1)
{
  v2 = *v1;
  sub_266E9D484();
  IntentCaseType.hash(into:)(v4, v2);
  return sub_266E9D4A4();
}

SiriIdentityInternal::IdentityVerb_optional __swiftcall IdentityVerb.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266E9D3A4();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t IdentityVerb.rawValue.getter(char a1)
{
  result = 0x796669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x73696C6261747365;
      break;
    case 2:
      result = 0x796669646F6DLL;
      break;
    case 3:
      result = 0x74736575516B7361;
      break;
    case 4:
      result = 6579297;
      break;
    case 5:
      result = 0x74754F676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriIdentityInternal::IdentityVerb_optional sub_266E7C43C@<W0>(Swift::String *a1@<X0>, SiriIdentityInternal::IdentityVerb_optional *a2@<X8>)
{
  result.value = IdentityVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_266E7C46C@<X0>(uint64_t *a1@<X8>)
{
  result = IdentityVerb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

SiriIdentityInternal::IdentityNoun_optional __swiftcall IdentityNoun.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266E9D3A4();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t IdentityNoun.rawValue.getter(char a1)
{
  result = 1718379891;
  switch(a1)
  {
    case 1:
      result = 0x70756F7267;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x746E756F636361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266E7C5C0()
{
  result = qword_2800E9640;
  if (!qword_2800E9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9640);
  }

  return result;
}

unint64_t sub_266E7C618()
{
  result = qword_2800E9648;
  if (!qword_2800E9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9648);
  }

  return result;
}

unint64_t sub_266E7C6A4()
{
  result = qword_2800E9668;
  if (!qword_2800E9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9668);
  }

  return result;
}

unint64_t sub_266E7C6F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_266E9D3A4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266E7C750(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

unint64_t sub_266E7C7A0()
{
  result = qword_2800E9670;
  if (!qword_2800E9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9670);
  }

  return result;
}

SiriIdentityInternal::IdentityNoun_optional sub_266E7C80C@<W0>(Swift::String *a1@<X0>, SiriIdentityInternal::IdentityNoun_optional *a2@<X8>)
{
  result.value = IdentityNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_266E7C83C@<X0>(uint64_t *a1@<X8>)
{
  result = IdentityNoun.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_266E7C8B0()
{
  result = qword_2800E9690;
  if (!qword_2800E9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9690);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentityVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x266E7CA1CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityFlowErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_266E7CAE0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E7CBACLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266E7CBE0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E7CCACLL);
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

uint64_t sub_266E7CD10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_266E7CD88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266E7C6F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266E7CDB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E7C750(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_266E7CDFC()
{
  result = qword_2800E96B0;
  if (!qword_2800E96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96B0);
  }

  return result;
}

unint64_t sub_266E7CE54()
{
  result = qword_2800E96B8;
  if (!qword_2800E96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96B8);
  }

  return result;
}

uint64_t sub_266E7CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

unint64_t sub_266E7CF78()
{
  result = qword_2800E96C0;
  if (!qword_2800E96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96C0);
  }

  return result;
}

unint64_t sub_266E7CFCC()
{
  result = qword_2800E96C8;
  if (!qword_2800E96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96C8);
  }

  return result;
}

unint64_t sub_266E7D020()
{
  result = qword_2800E96D0;
  if (!qword_2800E96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96D0);
  }

  return result;
}

unint64_t sub_266E7D074()
{
  result = qword_2800E96D8;
  if (!qword_2800E96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96D8);
  }

  return result;
}

unint64_t sub_266E7D0C8()
{
  result = qword_2800E96E0;
  if (!qword_2800E96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96E0);
  }

  return result;
}

unint64_t sub_266E7D11C()
{
  result = qword_2800E96E8;
  if (!qword_2800E96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96E8);
  }

  return result;
}

unint64_t sub_266E7D170()
{
  result = qword_2800E96F0;
  if (!qword_2800E96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96F0);
  }

  return result;
}

unint64_t sub_266E7D1C4()
{
  result = qword_2800E96F8;
  if (!qword_2800E96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96F8);
  }

  return result;
}

unint64_t sub_266E7D218()
{
  result = qword_2800E9700;
  if (!qword_2800E9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9700);
  }

  return result;
}

uint64_t sub_266E7D26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_266E9CFA4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9560, &unk_266E9FEA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9570, &qword_266E9F5F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
  sub_266E9CD04();
  v12 = sub_266E9CD14();
  (*(v9 + 8))(v11, v8);
  v20 = a1;
  v12(&v21, &v20);

  sub_266E595F8(&v21, v22);
  if (qword_2800E8D88 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_2800EC7F8);
  (*(v4 + 16))(v7, v13, v3);
  v14 = sub_266E9CF84();
  v15 = sub_266E9D194();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266E51000, v14, v15, "IdentityNLIntentHelper building NLv4 intent", v16, 2u);
    MEMORY[0x26D5F66A0](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return sub_266E595F8(v22, v19);
}

double OUTLINED_FUNCTION_6_5()
{
  v1 = *(v0 - 160);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_266E7D6EC()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  sub_266E7D73C(&v2, &v3);
  return v3;
}

uint64_t sub_266E7D73C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_266E9D014();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_266E9D234();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_266E59C2C(v9);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_266E7D84C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v0 + 16) = sub_266E7D8A8(0xD000000000000017, 0x8000000266EA1E60);
  return v0;
}

id sub_266E7D8A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_266E7D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266E7D9F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UserAccount(uint64_t a1)
{
  result = qword_2800E9710;
  if (!qword_2800E9710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E7DAF4(uint64_t a1)
{
  sub_266E7DB94(319);
  if (v1 <= 0x3F)
  {
    sub_266E7DBEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266E7DB94(uint64_t a1)
{
  if (!qword_2800E9720)
  {
    sub_266E9BE84();
    v1 = sub_266E9D214();
    if (!v2)
    {
      atomic_store(v1, &qword_2800E9720);
    }
  }
}

void sub_266E7DBEC()
{
  if (!qword_2800E9728)
  {
    v0 = sub_266E9D214();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E9728);
    }
  }
}

uint64_t sub_266E7DC3C()
{
  sub_266E9D294();
  MEMORY[0x26D5F5CB0](0xD000000000000016, 0x8000000266EA2940);
  v1 = type metadata accessor for UserAccount(0);
  MEMORY[0x26D5F5CB0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  MEMORY[0x26D5F5CB0](0x4164756F6C43692CLL, 0xEF3D44495344746CLL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  v2 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v2);

  MEMORY[0x26D5F5CB0](0x766974634173692CLL, 0xEA00000000003D65);
  if (*(v0 + *(v1 + 32)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 32)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D5F5CB0](v3, v4);

  MEMORY[0x26D5F5CB0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_266E7DDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266E9BE84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = __dst - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __dst - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93C8, &unk_266E9EF20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = __dst - v13;
  v15 = *(v12 + 56);
  sub_266E64B68(a1, __dst - v13);
  sub_266E64B68(a2, &v14[v15]);
  OUTLINED_FUNCTION_0_12(v14);
  if (!v16)
  {
    sub_266E64B68(v14, v10);
    OUTLINED_FUNCTION_0_12(&v14[v15]);
    if (!v16)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_266E65254();
      v19 = sub_266E9D004();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_266E54DA8(v14, &qword_2800E9360, &qword_266E9EE20);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_266E54DA8(v14, &qword_2800E93C8, &unk_266E9EF20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_12(&v14[v15]);
  if (!v16)
  {
    goto LABEL_9;
  }

  sub_266E54DA8(v14, &qword_2800E9360, &qword_266E9EE20);
LABEL_13:
  v21 = type metadata accessor for UserAccount(0);
  v22 = v21[5];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    v27 = *v23 == *v25 && v24 == v26;
    if (!v27 && (sub_266E9D3E4() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v26)
  {
    goto LABEL_10;
  }

  v28 = v21[6];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v29 == *v31 && v30 == v31[1];
  if (v32 || (sub_266E9D3E4() & 1) != 0)
  {
    memcpy(__dst, (a1 + v21[7]), sizeof(__dst));
    memcpy(v34, (a2 + v21[7]), sizeof(v34));
    if (sub_266E612CC(__dst, v34))
    {
      v17 = *(a1 + v21[8]) ^ *(a2 + v21[8]) ^ 1;
      return v17 & 1;
    }
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t get_enum_tag_for_layout_string_20SiriIdentityInternal31ExecutionDeviceResolutionResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266E7E13C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266E7E198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_266E7E1E8(void *result, int a2)
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

BOOL sub_266E7E218(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_266E78CB4();
  return sub_266E9D1F4() & 1;
}

id IdentifyUserIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t IdentifyUserIntentHandler.resolveIdentity(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[18] = v0;
  v2 = sub_266E9CFA4();
  v1[19] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v1[20] = v3;
  v1[21] = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E7E388()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0[19], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v5);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v6, v7, "IdentifyUserIntentHandler.resolveIdentity");
    OUTLINED_FUNCTION_10();
  }

  v8 = OUTLINED_FUNCTION_16();
  v9(v8);
  sub_266E9CCF4();
  sub_266E9CCE4();
  sub_266E9CCC4();

  v10 = sub_266E9CE44();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    sub_266E80168();
    v13 = sub_266E54468();
    v0[23] = v13;
    if (v13)
    {
      v14 = v13;
      v0[2] = v0;
      v0[7] = v0 + 27;
      v0[3] = sub_266E7E764;
      v15 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9738, &qword_266EA00A0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_266E7EA58;
      v0[13] = &block_descriptor_0;
      v0[14] = v15;
      [v14 isRecognizeMyVoiceAvailable_];

      return MEMORY[0x282200938](v0 + 2);
    }

    else
    {
      v0[24] = 0;
      v16 = swift_task_alloc();
      v0[25] = v16;
      *v16 = v0;
      OUTLINED_FUNCTION_11_1(v16);

      return sub_266E7FB64();
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_266E7E650;

    return sub_266E7F2A8();
  }
}

uint64_t sub_266E7E650()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_266E7E764()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_266E7E838, 0, 0);
}

uint64_t sub_266E7E838()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 184);
  if (*(v0 + 216))
  {
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(4);

    v2 = OUTLINED_FUNCTION_5_4();

    return v3(v2);
  }

  else
  {
    *(v0 + 192) = v1;
    v5 = swift_task_alloc();
    *(v0 + 200) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_11_1(v5);

    return sub_266E7FB64();
  }
}

uint64_t sub_266E7E904()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  *(v1 + 208) = v0;

  v2 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266E7E9F4()
{
  OUTLINED_FUNCTION_7_0();

  v1 = OUTLINED_FUNCTION_5_4();

  return v2(v1);
}

uint64_t sub_266E7EA58(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return sub_266E7EA9C(v3, v2);
}

uint64_t sub_266E7EADC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266E7EB98;

  return IdentifyUserIntentHandler.resolveIdentity(for:)();
}

uint64_t sub_266E7EB98()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  v9 = *(v7 + 8);

  return v9();
}

uint64_t IdentifyUserIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E7ED8C()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 16), qword_2800EC810);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v5);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v6, v7, "IdentifyUserIntentHandler.confirm");
    OUTLINED_FUNCTION_10();
  }

  v8 = OUTLINED_FUNCTION_16();
  v9(v8);
  v10 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(1, 0);

  v11 = OUTLINED_FUNCTION_5_4();

  return v12(v11);
}

uint64_t sub_266E7EED8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E80410;

  return IdentifyUserIntentHandler.confirm(intent:)();
}

uint64_t IdentifyUserIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E7F030()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(*(v0 + 16), qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v5);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v6, v7, "IdentifyUserIntentHandler.handle");
    OUTLINED_FUNCTION_10();
  }

  v8 = OUTLINED_FUNCTION_16();
  v9(v8);
  v10 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(4, 0);

  v11 = OUTLINED_FUNCTION_5_4();

  return v12(v11);
}

uint64_t sub_266E7F16C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_266E905F0(a6, v10);
}

uint64_t sub_266E7F1F0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E80410;

  return IdentifyUserIntentHandler.handle(intent:)();
}

uint64_t sub_266E7F2A8()
{
  OUTLINED_FUNCTION_7_0();
  sub_266E9CE64();
  v0[2] = OUTLINED_FUNCTION_18();
  v1 = sub_266E9C434();
  v0[3] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[4] = v2;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v3 = sub_266E9C464();
  v0[7] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_18();
  v5 = sub_266E9CFA4();
  v0[10] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v0[11] = v6;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E7F468()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[18];
  v2 = v0[10];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    OUTLINED_FUNCTION_20_4(&dword_266E51000, v9, v10, "IdentifyUserIntentHandler.resolveDeviceHasMultiUserEnabled");
    MEMORY[0x26D5F66A0](v8, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[10];
  v13 = v0[11];

  v14 = *(v13 + 8);
  v14(v11, v12);
  sub_266E9CCF4();
  sub_266E9CCE4();
  sub_266E9CCB4();

  sub_266E9C674();

  if (sub_266E86BC4())
  {
    v15 = OUTLINED_FUNCTION_15_1();
    (v5)(v15);
    v16 = sub_266E9CF84();
    v17 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v17))
    {
      v18 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v18);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v19, v20, "Unknown User won't be recognized. Bailing out");
      OUTLINED_FUNCTION_10();
    }

LABEL_8:

    v21 = OUTLINED_FUNCTION_7_5();
    (v14)(v21);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    v22 = 3;
LABEL_9:
    v78 = static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(v22);
    goto LABEL_10;
  }

  v25 = sub_266E9C3C4();
  if ((sub_266E86CF0(v25 & 1) & 1) == 0)
  {
    v48 = v0[5];
    v47 = v0[6];
    v49 = v0[3];
    v50 = v0[4];
    sub_266E9C444();
    sub_266E9C414();
    v51 = sub_266E9C3E4();
    v52 = *(v50 + 8);
    v52(v48, v49);
    v52(v47, v49);
    v53 = v0[10];
    if (v51)
    {
      v5(v0[14], v4, v53);
      v54 = sub_266E9CF84();
      v55 = sub_266E9D194();
      if (OUTLINED_FUNCTION_31_0(v55))
      {
        v56 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v56);
        OUTLINED_FUNCTION_16_1(&dword_266E51000, v57, v58, "User Ambiguous");
        OUTLINED_FUNCTION_10();
      }

      v59 = OUTLINED_FUNCTION_7_5();
      (v14)(v59);
      type metadata accessor for UserIdentifyIdentityResolutionResult();
      v22 = 2;
      goto LABEL_9;
    }

    v5(v0[13], v4, v53);
    v16 = sub_266E9CF84();
    v60 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v60))
    {
      v61 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v61);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v62, v63, "User Unrecognized");
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_8;
  }

  v26 = OUTLINED_FUNCTION_15_1();
  (v5)(v26);
  v27 = sub_266E9CF84();
  v28 = sub_266E9D194();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_5_0();
    *v29 = 0;
    _os_log_impl(&dword_266E51000, v27, v28, "User Identified", v29, 2u);
    MEMORY[0x26D5F66A0](v29, -1, -1);
  }

  v30 = v0[17];
  v31 = v0[10];

  v14(v30, v31);
  v32 = sub_266E9C454();
  v33 = v32;
  if (v32)
  {
  }

  v34 = sub_266E9C454();
  if (!v34)
  {
    if (v33)
    {
      goto LABEL_30;
    }

LABEL_33:
    v71 = OUTLINED_FUNCTION_15_1();
    (v5)(v71);
    v72 = sub_266E9CF84();
    v73 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v73))
    {
      v74 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v74);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v75, v76, "Missing MeCard");
      OUTLINED_FUNCTION_10();
    }

    v77 = OUTLINED_FUNCTION_7_5();
    (v14)(v77);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    v22 = 7;
    goto LABEL_9;
  }

  v35 = v34;
  v36 = sub_266E9408C();

  if (!v33)
  {
    goto LABEL_33;
  }

  if (v36)
  {
LABEL_30:
    v64 = OUTLINED_FUNCTION_15_1();
    (v5)(v64);
    v65 = sub_266E9CF84();
    v66 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v66))
    {
      v67 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v67);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v68, v69, "Partial MeCard");
      OUTLINED_FUNCTION_10();
    }

    v70 = OUTLINED_FUNCTION_7_5();
    (v14)(v70);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    v22 = 5;
    goto LABEL_9;
  }

  v38 = v0[5];
  v37 = v0[6];
  v40 = v0[3];
  v39 = v0[4];
  v41 = v0[2];
  sub_266E9CCE4();
  sub_266E9CCB4();

  v79 = sub_266E9C694();

  sub_266E9C444();
  sub_266E9C424();
  v42 = sub_266E9C3E4();
  v43 = *(v39 + 8);
  v43(v38, v40);
  v43(v37, v40);
  v44 = sub_266E86EB8();
  type metadata accessor for Identity();
  sub_266E9CCE4();
  sub_266E9CCC4();

  sub_266E9CE34();

  v45 = sub_266E9CE54();
  sub_266E803B4(v41);
  v46 = sub_266E54644(v42 & 1, v44 & 1, v79 & 1, v45 & 1);
  type metadata accessor for UserIdentifyIdentityResolutionResult();
  v78 = static IdentityResolutionResult.success(with:)(v46);

LABEL_10:
  (*(v0[8] + 8))(v0[9], v0[7]);

  v23 = v0[1];

  return v23(v78);
}