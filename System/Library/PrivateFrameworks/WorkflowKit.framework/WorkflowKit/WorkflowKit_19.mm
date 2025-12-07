uint64_t sub_1CA4448A0()
{
  sub_1CA445634(v0, v3);
  v1 = v3[32];
  sub_1CA44566C(v3);
  return v1;
}

uint64_t sub_1CA4448E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v2;
  sub_1CA445634(v0, v12);
  v3 = v12[32];
  sub_1CA44566C(v12);
  if (v3)
  {
    sub_1CA94C438("There was a problem running the action.", 39);
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1CA94C438("Please choose a value for each parameter in this action.", 56);
  if (qword_1EDB9F5F0 != -1)
  {
LABEL_6:
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

LABEL_5:
  v4 = OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_15();

  v7 = OUTLINED_FUNCTION_96(v6, sel_localizedStringForKey_value_table_);

  v8 = sub_1CA94C3A8();
  v10 = v9;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  return sub_1CA94C1E8();
}

uint64_t dispatch thunk of RowTemplateFindFilterValueType.insertComparisonValue(into:context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_0_37(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_31(v5);

  return v8(v7);
}

uint64_t sub_1CA444C78(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CA444CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of RowTemplateFindFilterOperator.insertComparisonValue(into:context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_0_37(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_31(v5);

  return v8(v7);
}

uint64_t dispatch thunk of RowTemplateConditionalOperator.evaluate(content:context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_0_37(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_31(v5);

  return v8(v7);
}

uint64_t sub_1CA444F90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA444FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA445018(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1CA44504C()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_13_18();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA445094()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_13_18();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

id sub_1CA4450D8()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA445120()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_12_18();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA445168()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_12_18();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

unint64_t sub_1CA4451AC()
{
  result = qword_1EC445880;
  if (!qword_1EC445880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445880);
  }

  return result;
}

uint64_t sub_1CA445200()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_11_20();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA445248()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_11_20();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

id sub_1CA4452A8()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4452F0()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_10_15();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA445338()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_15();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

id sub_1CA44537C()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4453C4()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_9_21();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA44540C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_9_21();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

id sub_1CA44548C()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4454D4()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_7_21();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA44551C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_7_21();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

id sub_1CA445560()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4455A8()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_6_25();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter(v0, v1);
}

uint64_t sub_1CA4455F0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_25();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0, v1, v2);
}

id sub_1CA4456E0()
{
  v38 = sub_1CA94B4D8();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v35 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("window|set", 10);
  v7 = v6;
  v8 = sub_1CA94C438("window|set", 10);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"DisabledOnPlatforms";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49FB160;
  *(inited + 184) = v25;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v22;
  *(inited + 232) = @"IconSymbol";
  *(inited + 264) = v22;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001CA9B6390;
  v26 = @"DisabledOnPlatforms";
  v27 = @"IconColor";
  v28 = @"IconSymbol";
  *(inited + 272) = sub_1CA94C368();
  *(inited + 280) = 0xD000000000000057;
  *(inited + 288) = 0x80000001CA9B63B0;
  *(inited + 304) = v22;
  *(inited + 312) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CA9813B0;
  v30 = v37;
  (*(v36 + 104))(v37, *MEMORY[0x1E69DB3C8], v38);
  v31 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v32 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v30);
  *(v29 + 32) = v33;
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 320) = v29;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA445BDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1CA94B1C8();
  v2[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_45();
  v2[7] = type metadata accessor for TypedValueConversionContext(0);
  v2[8] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AD88();
  v2[9] = v5;
  OUTLINED_FUNCTION_12(v5);
  v2[10] = v6;
  v2[11] = OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v2[12] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94ADC8();
  v2[13] = v7;
  OUTLINED_FUNCTION_12(v7);
  v2[14] = v8;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA445D9C, 0, 0);
}

uint64_t sub_1CA445D9C()
{
  [**(v0 + 24) singleStateClass];
  swift_getObjCClassMetadata();
  sub_1CA4467D8();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CA3DBA78();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_0_38();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4_32();

    __asm { BRAA            X1, X16 }
  }

  sub_1CA94A8B8();
  type metadata accessor for ParameterStateValueTransformContext(0);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1CA445F28;
  OUTLINED_FUNCTION_4_32();

  return sub_1CA4693D0();
}

uint64_t sub_1CA445F28()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[14];
  v7 = v4[13];
  v8 = *v1;
  OUTLINED_FUNCTION_1();
  *v9 = v8;
  v2[19] = v0;

  v10 = *(v6 + 8);
  v2[20] = v10;
  v2[21] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  if (v0)
  {
    v11 = sub_1CA44673C;
  }

  else
  {
    v11 = sub_1CA4460A4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1CA4460A4()
{
  v1 = v0[12];
  v2 = v0[13];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1CA44681C(v1);
LABEL_10:
    sub_1CA3DBA78();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_0_38();

    OUTLINED_FUNCTION_5();

    return v25();
  }

  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  (*(v5 + 32))(v3, v1, v2);
  (*(v5 + 16))(v4, v3, v2);
  if ((*(v5 + 88))(v4, v2) != *MEMORY[0x1E69DB088])
  {
    v21 = v0[20];
    v22 = v0[15];
    v23 = v0[13];
    v21(v0[17], v23);
    v21(v22, v23);
    goto LABEL_10;
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  (*(v0[14] + 96))(v0[15], v0[13]);
  v12 = swift_projectBox();
  (*(v7 + 16))(v6, v12, v8);

  v13 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v13);
  (*(v10 + 8))(v9, v11);
  if (qword_1EC4420F0 != -1)
  {
    swift_once();
  }

  v15 = v0[7];
  v14 = v0[8];
  v16 = qword_1EC4420F8;
  v17 = (v14 + v15[5]);
  v17[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v17[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v17 = v16;
  v18 = objc_opt_self();

  *(v14 + v15[6]) = [v18 defaultContext];
  *(v14 + v15[7]) = 0;
  v19 = swift_task_alloc();
  v0[22] = v19;
  *v19 = v0;
  v19[1] = sub_1CA4463E4;

  return sub_1CA3445EC();
}

uint64_t sub_1CA4463E4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v4 + 184) = v1;

  if (v1)
  {
    v8 = sub_1CA446664;
  }

  else
  {
    *(v4 + 192) = a1;
    v8 = sub_1CA446504;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA446504()
{
  v1 = v0[24];
  v12 = v0[20];
  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v1 indentationLevel:0];
  v9 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

  sub_1CA3DBD00(v6);
  (*(v5 + 8))(v4, v7);
  v12(v2, v3);

  v10 = v0[1];

  return v10(v9);
}

void sub_1CA446664()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  sub_1CA3DBD00(v0[8]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  OUTLINED_FUNCTION_0_38();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  __asm { BRAA            X1, X16 }
}

void sub_1CA44673C()
{
  OUTLINED_FUNCTION_0_38();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_1CA4467D8()
{
  result = qword_1EC446AB0;
  if (!qword_1EC446AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC446AB0);
  }

  return result;
}

uint64_t sub_1CA44681C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA446884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA3DBB6C;

  return sub_1CA445BDC(a2, a3);
}

id sub_1CA446958()
{
  v132 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9B6420;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("html2text|source", 16);
  v7 = v6;
  v8 = sub_1CA94C438("html2text|source", 16);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = v12;
  v13 = &v125 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v136 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v138 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v125 - v135;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v20;
  v137 = v2;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"Description";
  *&v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438("Markdown", 8);
  v129 = v25;
  v130 = v24;
  v26 = sub_1CA94C438("Markdown", 8);
  v128 = v27;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v125 - v139;
  sub_1CA948D98();
  v29 = v136;
  v30 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v135;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v130, v129, v26, v128, 0, 0, v28, &v125 - v31);
  v33 = v134;
  *(v21 + 64) = v134;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438("Converts the rich text passed as input to Markdown text (comparable to Aaron Swartz's html2text script).", 104);
  v129 = v36;
  v130 = v35;
  v128 = sub_1CA94C438("Converts the rich text passed as input to Markdown text (comparable to Aaron Swartz's html2text script).", 104);
  v38 = v37;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v128);
  v39 = &v125 - v139;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v130, v129, v128, v38, 0, 0, v39, &v125 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v133;
  v45 = sub_1CA6B3784(v43);
  v46 = v137;
  v137[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 0x6F6769646E49;
  v46[21] = 0xE600000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000011;
  v46[26] = 0x80000001CA9A3B70;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v133 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 0;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x7475706E494657;
  *(v49 + 104) = 0xE700000000000000;
  *(v49 + 120) = v48;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v131;
  *(v49 + 192) = &unk_1F49FB190;
  v51 = @"IconColor";
  v52 = @"IconSymbol";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v130 = v55;
  v46[30] = v54;
  v46[33] = v55;
  v46[34] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438("Make Markdown from Rich Text (Action Name)", 42);
  v126 = v58;
  v127 = v57;
  v59 = sub_1CA94C438("Make Markdown from Rich Text", 28);
  v61 = v60;
  v128 = &v125;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v139;
  sub_1CA948D98();
  v63 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v135;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v127, v126, v59, v61, 0, 0, &v125 - v62, &v125 - v64);
  v67 = v137;
  v137[35] = v66;
  v68 = v134;
  v67[38] = v134;
  v67[39] = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v133;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 0;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("Markdown from Rich Text (Default Output Name)", 45);
  v127 = v72;
  v128 = v71;
  v126 = sub_1CA94C438("Markdown from Rich Text", 23);
  v74 = v73;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v75 = v136;
  v76 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v128, v127, v126, v74, 0, 0, &v125 - v62, &v125 - v64);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v131;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49FB1C0;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v137;
  v137[40] = v79;
  v80[43] = v130;
  v80[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v131 = swift_allocObject();
  *(v131 + 1) = xmmword_1CA9813B0;
  v130 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v133;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000019;
  *(v81 + 48) = 0x80000001CA99B030;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"Key";
  *(v81 + 80) = 0x7475706E494657;
  *(v81 + 88) = 0xE700000000000000;
  *(v81 + 104) = v78;
  *(v81 + 112) = @"Label";
  v82 = @"Parameters";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = sub_1CA94C438("Rich Text (WFInput)", 19);
  v128 = v87;
  v129 = v86;
  v88 = sub_1CA94C438("Rich Text", 9);
  v127 = v89;
  *&v133 = &v125;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v139;
  sub_1CA948D98();
  v91 = [v75 bundleURL];
  v126 = &v125;
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v125 - v135;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 120) = sub_1CA2F9F14(v129, v128, v88, v127, 0, 0, &v125 - v90, v92);
  v94 = v134;
  *(v81 + 144) = v134;
  *(v81 + 152) = @"Placeholder";
  v95 = @"Placeholder";
  v96 = sub_1CA94C438("Rich Text (WFInput)", 19);
  v128 = v97;
  v129 = v96;
  v127 = sub_1CA94C438("Rich Text", 9);
  v99 = v98;
  *&v133 = &v125;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v100 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v135;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v129, v128, v127, v99, 0, 0, &v125 - v90, &v125 - v101);
  *(v81 + 184) = v94;
  *(v81 + 160) = v103;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  v106 = v131;
  v131[4] = v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v108 = v137;
  v137[45] = v106;
  v108[48] = v107;
  v108[49] = @"ParameterSummary";
  v109 = @"ParameterSummary";
  v110 = sub_1CA94C438("Make Markdown from ${WFInput} (Parameter Summary)", 49);
  v112 = v111;
  v113 = sub_1CA94C438("Make Markdown from ${WFInput}", 29);
  v115 = v114;
  v134 = &v125;
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v125 - v139;
  sub_1CA948D98();
  v117 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v110, v112, v113, v115, 0, 0, v116, &v125 - v101);
  v120 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v121 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v122 = v137;
  v137[50] = v120;
  v122[53] = v121;
  v122[54] = @"ResidentCompatible";
  v122[58] = MEMORY[0x1E69E6370];
  *(v122 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v123 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA447978()
{
  v126 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B65E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("evaluate|expression|math|currency|convert|conversion|measure|measurement", 72);
  v6 = v5;
  v7 = sub_1CA94C438("evaluate|expression|math|currency|convert|conversion|measure|measurement", 72);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = v11;
  v12 = &v118 - v129;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v131 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v132 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v128 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v118 - v128;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v127 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v125 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Evaluates the mathematical expression in the given input text and outputs the result as a number. \n\nExample expressions:\n\n7 + 7\n\n8 * sqrt(5)\n\n$8 USD in euros\n\n7 feet in meters", 175);
  v123 = v27;
  v28 = sub_1CA94C438("Evaluates the mathematical expression in the given input text and outputs the result as a number. \n\nExample expressions:\n\n7 + 7\n\n8 * sqrt(5)\n\n$8 USD in euros\n\n7 feet in meters", 175);
  v30 = v29;
  v124 = &v118;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v118 - v129;
  sub_1CA948D98();
  v32 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v118 - v128;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v123, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v127;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v125;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x74616C75636C6163;
  *(inited + 248) = 0xEF6C6C69662E726FLL;
  *(inited + 264) = v38;
  *(inited + 272) = @"Input";
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 0;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E49;
  *(v39 + 104) = 0xE500000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v125;
  *(v39 + 192) = &unk_1F49FB230;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v124 = v46;
  *(inited + 280) = v45;
  *(inited + 304) = v46;
  *(inited + 312) = @"LocallyProcessesData";
  *(inited + 320) = 1;
  *(inited + 344) = v41;
  *(inited + 352) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438("Calculate Expression (Action Name)", 34);
  v120 = v50;
  v121 = v49;
  v51 = sub_1CA94C438("Calculate Expression", 20);
  v119 = v52;
  v122 = &v118;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v129;
  sub_1CA948D98();
  v54 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = v128;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v121, v120, v51, v119, 0, 0, &v118 - v53, &v118 - v55);
  v57 = v127;
  *(inited + 384) = v127;
  *(inited + 392) = @"Output";
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA9813C0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = 0;
  *(v58 + 72) = MEMORY[0x1E69E6370];
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438("Calculation Result (Default Output Name)", 40);
  v121 = v61;
  v122 = v60;
  v62 = sub_1CA94C438("Calculation Result", 18);
  v120 = v63;
  v123 = &v118;
  MEMORY[0x1EEE9AC00](v62);
  sub_1CA948D98();
  v64 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 96) = sub_1CA2F9F14(v122, v121, v62, v120, 0, 0, &v118 - v53, &v118 - v55);
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 168) = v125;
  *(v58 + 136) = 0xE500000000000000;
  *(v58 + 144) = &unk_1F49FB260;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v124;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1CA9813B0;
  v124 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1CA981370;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000014;
  *(v67 + 48) = 0x80000001CA99B500;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E49;
  *(v67 + 88) = 0xE500000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438("Input (Input)", 13);
  v121 = v73;
  v122 = v72;
  v74 = sub_1CA94C438("Input", 5);
  v120 = v75;
  v123 = &v118;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v129;
  sub_1CA948D98();
  v77 = v131;
  v78 = [v131 bundleURL];
  v119 = &v118;
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v118 - v128;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v122, v121, v74, v120, 0, 0, &v118 - v76, v79);
  *(v67 + 144) = v127;
  *(v67 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438("7 + 7 (Input)", 13);
  v121 = v83;
  v122 = v82;
  v120 = sub_1CA94C438("7 + 7", 5);
  v85 = v84;
  v123 = &v118;
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948D98();
  v86 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v128;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 160) = sub_1CA2F9F14(v122, v121, v120, v85, 0, 0, &v118 - v76, &v118 - v87);
  *(v67 + 184) = v127;
  *(v67 + 192) = @"Prompt";
  v89 = @"Prompt";
  v90 = sub_1CA94C438("What do you want to calculate? (Input)", 38);
  v121 = v91;
  v122 = v90;
  v92 = sub_1CA94C438("What do you want to calculate?", 30);
  v120 = v93;
  v123 = &v118;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v118 - v129;
  sub_1CA948D98();
  v95 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v122, v121, v92, v120, 0, 0, v94, &v118 - v87);
  *(v67 + 224) = v127;
  *(v67 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v98 = sub_1CA94C1E8();
  v99 = sub_1CA2F864C(v98);
  v100 = v125;
  *(v125 + 32) = v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v100;
  *(inited + 464) = v101;
  *(inited + 472) = @"ParameterSummary";
  v102 = @"ParameterSummary";
  v103 = sub_1CA94C438("Calculate ${Input} (Parameter Summary)", 38);
  v105 = v104;
  v106 = sub_1CA94C438("Calculate ${Input}", 18);
  v108 = v107;
  v127 = &v118;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v118 - v129;
  sub_1CA948D98();
  v110 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v118 - v128;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  v114 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v115 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v114;
  *(inited + 504) = v115;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v116 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA44899C()
{
  v216 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9B6830;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("speak|dictate|text|say|speech|talk|out|loud", 43);
  v6 = v5;
  v7 = sub_1CA94C438("speak|dictate|text|say|speech|talk|out|loud", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v233 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v234 = v11;
  v12 = &v209 - v233;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v232 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v230 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v231 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v209 - v231;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v229 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v228 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v215 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Speaks the inputted text aloud.", 31);
  v25 = v24;
  v26 = sub_1CA94C438("Speaks the inputted text aloud.", 31);
  v28 = v27;
  v227 = &v209;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v209 - v233;
  sub_1CA948D98();
  v30 = [v232 bundleURL];
  v222 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v209 - v231;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v229;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v228;
  v37 = sub_1CA6B3784(v35);
  v38 = v222;
  v222[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v221 = 0xD000000000000013;
  v38[25] = 0xD000000000000013;
  v38[26] = 0x80000001CA99A850;
  v38[28] = v39;
  v38[29] = @"Input";
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v223 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x747865544657;
  *(v41 + 104) = 0xE600000000000000;
  *(v41 + 120) = v39;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v214;
  *(v41 + 192) = &unk_1F49FB290;
  v44 = @"IconColor";
  v45 = @"IconSymbol";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v40[30] = v47;
  v40[33] = v48;
  v40[34] = @"InputPassthrough";
  *(v40 + 280) = 1;
  v40[38] = v43;
  v40[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438("Speak Text (Action Name)", 24);
  v53 = v52;
  v54 = sub_1CA94C438("Speak Text", 10);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v209 - v233;
  sub_1CA948D98();
  v58 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v209 - v231;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  v62 = v222;
  v222[40] = v61;
  v62[43] = v229;
  v62[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1CA981410;
  v227 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_initStackObject();
  *(v63 + 16) = v223;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD000000000000011;
  *(v63 + 48) = 0x80000001CA99E620;
  v64 = MEMORY[0x1E69E6158];
  *(v63 + 64) = MEMORY[0x1E69E6158];
  *(v63 + 72) = @"DefaultValue";
  *(v63 + 80) = 1;
  *(v63 + 104) = MEMORY[0x1E69E6370];
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0x546B616570534657;
  *(v63 + 128) = 0xEF74696157747865;
  *(v63 + 144) = v64;
  *(v63 + 152) = @"Label";
  v65 = @"Class";
  v66 = @"DefaultValue";
  v67 = @"Key";
  v68 = @"Label";
  v69 = v65;
  v70 = v66;
  v71 = v67;
  v72 = v68;
  v217 = v69;
  v212 = v70;
  v213 = v71;
  v218 = v72;
  v73 = @"Parameters";
  v74 = sub_1CA94C438("Wait Until Finished (WFSpeakTextWait)", 37);
  v76 = v75;
  v77 = sub_1CA94C438("Wait Until Finished", 19);
  v79 = v78;
  v225 = &v209;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v209 - v233;
  sub_1CA948D98();
  v81 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v209 - v231;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v74, v76, v77, v79, 0, 0, v80, v82);
  *(v63 + 184) = v229;
  *(v63 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  v225 = v85;
  v224 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v86 = sub_1CA94C1E8();
  v87 = sub_1CA2F864C(v86);
  *(v228 + 32) = v87;
  v88 = swift_allocObject();
  v220 = xmmword_1CA981380;
  *(v88 + 16) = xmmword_1CA981380;
  v219 = 0x80000001CA9A0B80;
  v89 = v217;
  *(v88 + 32) = v217;
  *(v88 + 40) = 0xD000000000000011;
  *(v88 + 48) = 0x80000001CA9A0B80;
  v90 = MEMORY[0x1E69E6158];
  v91 = v212;
  v92 = v213;
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = v91;
  v93 = MEMORY[0x1E69E63B0];
  *(v88 + 80) = 0x3FE0000000000000;
  *(v88 + 104) = v93;
  *(v88 + 112) = v92;
  *(v88 + 120) = 0x546B616570534657;
  *(v88 + 128) = 0xEF65746152747865;
  v94 = v218;
  *(v88 + 144) = v90;
  *(v88 + 152) = v94;
  v217 = v89;
  v212 = v91;
  v211 = v92;
  v218 = v94;
  v95 = sub_1CA94C438("Rate (WFSpeakTextRate)", 22);
  v97 = v96;
  v98 = sub_1CA94C438("Rate", 4);
  v100 = v99;
  v213 = &v209;
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v209 - v233;
  sub_1CA948D98();
  v102 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v209 - v231;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 160) = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  *(v88 + 184) = v229;
  *(v88 + 192) = @"MaximumValue";
  v105 = MEMORY[0x1E69E6530];
  *(v88 + 200) = 1;
  *(v88 + 224) = v105;
  *(v88 + 232) = @"MinimumValue";
  *(v88 + 264) = v105;
  *(v88 + 240) = 0;
  v106 = @"MaximumValue";
  v107 = @"MinimumValue";
  v210 = v106;
  v209 = v107;
  v108 = sub_1CA94C1E8();
  v109 = sub_1CA2F864C(v108);
  *(v228 + 40) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v220;
  v111 = v217;
  *(v110 + 32) = v217;
  *(v110 + 40) = 0xD000000000000011;
  *(v110 + 48) = v219;
  v112 = MEMORY[0x1E69E6158];
  v114 = v211;
  v113 = v212;
  *(v110 + 64) = MEMORY[0x1E69E6158];
  *(v110 + 72) = v113;
  *(v110 + 80) = 0x3FF0000000000000;
  *(v110 + 104) = MEMORY[0x1E69E63B0];
  *(v110 + 112) = v114;
  v213 = 0xD000000000000010;
  *(v110 + 120) = 0xD000000000000010;
  *(v110 + 128) = 0x80000001CA9B6940;
  v115 = v218;
  *(v110 + 144) = v112;
  *(v110 + 152) = v115;
  *&v220 = v111;
  v217 = v113;
  v219 = v114;
  v218 = v115;
  v116 = sub_1CA94C438("Pitch (WFSpeakTextPitch)", 24);
  v118 = v117;
  v119 = sub_1CA94C438("Pitch", 5);
  v121 = v120;
  v212 = &v209;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v209 - v233;
  sub_1CA948D98();
  v123 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v209 - v231;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 160) = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  v126 = v210;
  *(v110 + 184) = v229;
  *(v110 + 192) = v126;
  *(v110 + 200) = 0x4000000000000000;
  v127 = MEMORY[0x1E69E63B0];
  v128 = v209;
  *(v110 + 224) = MEMORY[0x1E69E63B0];
  *(v110 + 232) = v128;
  *(v110 + 264) = v127;
  *(v110 + 240) = 0x3FE0000000000000;
  v129 = sub_1CA94C1E8();
  v130 = sub_1CA2F864C(v129);
  *(v228 + 48) = v130;
  v131 = swift_allocObject();
  *(v131 + 16) = v223;
  v133 = v219;
  v132 = v220;
  *(v131 + 32) = v220;
  *(v131 + 40) = 0xD000000000000022;
  *(v131 + 48) = 0x80000001CA9B6980;
  v134 = MEMORY[0x1E69E6158];
  v135 = v217;
  v136 = v218;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v135;
  *(v131 + 80) = 0x746C7561666544;
  *(v131 + 88) = 0xE700000000000000;
  *(v131 + 104) = v134;
  *(v131 + 112) = v133;
  v212 = 0x80000001CA997010;
  *(v131 + 120) = v221;
  *(v131 + 128) = 0x80000001CA997010;
  *(v131 + 144) = v134;
  *(v131 + 152) = v136;
  *&v220 = v132;
  v219 = v133;
  v218 = v136;
  v137 = sub_1CA94C438("Language (WFSpeakTextLanguage)", 30);
  v139 = v138;
  v140 = sub_1CA94C438("Language", 8);
  v142 = v141;
  v211 = &v209;
  MEMORY[0x1EEE9AC00](v140);
  v143 = &v209 - v233;
  sub_1CA948D98();
  v144 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v209 - v231;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v137, v139, v140, v142, 0, 0, v143, v145);
  *(v131 + 184) = v229;
  *(v131 + 160) = v147;
  v148 = sub_1CA94C1E8();
  v149 = sub_1CA2F864C(v148);
  *(v228 + 56) = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1CA981300;
  *(v150 + 32) = @"AlwaysShowsButton";
  *(v150 + 40) = 1;
  v151 = v220;
  *(v150 + 64) = MEMORY[0x1E69E6370];
  *(v150 + 72) = v151;
  *(v150 + 80) = 0xD00000000000001FLL;
  *(v150 + 88) = 0x80000001CA9B69D0;
  v152 = MEMORY[0x1E69E6158];
  v153 = v217;
  *(v150 + 104) = MEMORY[0x1E69E6158];
  *(v150 + 112) = v153;
  *(v150 + 120) = 0x746C7561666544;
  *(v150 + 128) = 0xE700000000000000;
  *(v150 + 144) = v152;
  *(v150 + 152) = @"DisallowedVariableTypes";
  v154 = v152;
  *(v150 + 160) = &unk_1F49FB2C0;
  v155 = v213;
  *(v150 + 184) = v214;
  *(v150 + 192) = v219;
  *(v150 + 200) = v155;
  *(v150 + 208) = 0x80000001CA9B69F0;
  v156 = v218;
  *(v150 + 224) = v154;
  *(v150 + 232) = v156;
  v157 = @"AlwaysShowsButton";
  v158 = @"DisallowedVariableTypes";
  v159 = sub_1CA94C438("Voice (WFSpeakTextVoice)", 24);
  v161 = v160;
  v162 = sub_1CA94C438("Voice", 5);
  v164 = v163;
  v217 = &v209;
  MEMORY[0x1EEE9AC00](v162);
  v165 = &v209 - v233;
  sub_1CA948D98();
  v166 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v209 - v231;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v150 + 240) = sub_1CA2F9F14(v159, v161, v162, v164, 0, 0, v165, v167);
  *(v150 + 264) = v229;
  *(v150 + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v169 = swift_allocObject();
  *(v169 + 16) = v215;
  v170 = @"RequiredResources";
  v171 = MEMORY[0x1E69E6158];
  *(v169 + 32) = sub_1CA94C1E8();
  *(v150 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v150 + 280) = v169;
  v172 = sub_1CA94C368();
  *(v150 + 344) = v171;
  v173 = v221;
  *(v150 + 312) = v172;
  *(v150 + 320) = v173;
  *(v150 + 328) = v212;
  v174 = sub_1CA94C1E8();
  v175 = sub_1CA2F864C(v174);
  *(v228 + 64) = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = v223;
  *(v176 + 32) = v220;
  *(v176 + 40) = 0xD000000000000014;
  *(v176 + 48) = 0x80000001CA99B500;
  v177 = v219;
  *(v176 + 64) = v171;
  *(v176 + 72) = v177;
  *(v176 + 80) = 0x747865544657;
  *(v176 + 88) = 0xE600000000000000;
  v178 = v218;
  *(v176 + 104) = v171;
  *(v176 + 112) = v178;
  v179 = sub_1CA94C438("Text (WFText)", 13);
  v181 = v180;
  v182 = sub_1CA94C438("Text", 4);
  v184 = v183;
  v226 = &v209;
  MEMORY[0x1EEE9AC00](v182);
  v185 = &v209 - v233;
  sub_1CA948D98();
  v186 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v209 - v231;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 120) = sub_1CA2F9F14(v179, v181, v182, v184, 0, 0, v185, v187);
  *(v176 + 144) = v229;
  *(v176 + 152) = @"Multiline";
  *(v176 + 184) = MEMORY[0x1E69E6370];
  *(v176 + 160) = 1;
  v189 = @"Multiline";
  v190 = sub_1CA94C1E8();
  v191 = sub_1CA2F864C(v190);
  v192 = v228;
  *(v228 + 72) = v191;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v194 = v222;
  v222[45] = v192;
  v194[48] = v193;
  v194[49] = @"ParameterSummary";
  v195 = @"ParameterSummary";
  v196 = sub_1CA94C438("Speak ${WFText} (Parameter Summary)", 35);
  v198 = v197;
  v199 = sub_1CA94C438("Speak ${WFText}", 15);
  v201 = v200;
  v229 = &v209;
  MEMORY[0x1EEE9AC00](v199);
  v202 = &v209 - v233;
  sub_1CA948D98();
  v203 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v209 - v231;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v196, v198, v199, v201, 0, 0, v202, v204);
  v207 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v194[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v194[50] = v207;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA44A094()
{
  v249 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFOutputAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v263 = sub_1CA94C438("quit|return|workflow", 20);
  v5 = v4;
  v6 = sub_1CA94C438("quit|return|workflow", 20);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v267 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v268 = v10;
  v11 = v239 - v267;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v265 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v264 = v14;
  v266 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v239 - v266;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v263, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v263 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"AdditionalParameterSummaries";
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v260 = swift_allocObject();
  *(v260 + 1) = xmmword_1CA9813B0;
  v261 = swift_allocObject();
  v258 = xmmword_1CA981470;
  *(v261 + 16) = xmmword_1CA981470;
  v257 = "quit|return|workflow";
  v19 = @"AdditionalParameterSummaries";
  v255 = sub_1CA94C438("${WFNoOutputSurfaceBehavior}", 28);
  v21 = v20;
  v22 = sub_1CA94C438("${WFNoOutputSurfaceBehavior}", 28);
  v24 = v23;
  v256 = v239;
  MEMORY[0x1EEE9AC00](v22);
  v262 = inited;
  v25 = v239 - v267;
  sub_1CA948D98();
  v26 = v265;
  v27 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v27);
  v28 = v266;
  sub_1CA948B68();

  v29 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v30 = sub_1CA2F9F14(v255, v21, v22, v24, 0, 0, v25, v239 - v28);
  v31 = objc_allocWithZone(WFActionParameterSummaryValue);
  v32 = sub_1CA65DD78(0xD000000000000035, v257 | 0x8000000000000000, v30);
  v33 = v261;
  *(v261 + 32) = v32;
  v257 = "${WFNoOutputSurfaceBehavior}";
  v34 = sub_1CA94C438("${WFNoOutputSurfaceBehavior}", 28);
  v254 = v35;
  v255 = v34;
  v36 = sub_1CA94C438("${WFNoOutputSurfaceBehavior}", 28);
  v253 = v37;
  v256 = v239;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v239 - v267;
  sub_1CA948D98();
  v39 = [v26 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v255, v254, v36, v253, 0, 0, v38, v239 - v28);
  v42 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v33 + 40) = sub_1CA65DD78(0xD00000000000002ELL, v257 | 0x8000000000000000, v41);
  v257 = "eBehavior(Do Nothing),WFOutput";
  v43 = sub_1CA94C438("${WFNoOutputSurfaceBehavior} ${WFResponse}", 42);
  v254 = v44;
  v255 = v43;
  v45 = sub_1CA94C438("${WFNoOutputSurfaceBehavior} ${WFResponse}", 42);
  v47 = v46;
  v256 = v239;
  MEMORY[0x1EEE9AC00](v45);
  v48 = v267;
  sub_1CA948D98();
  v49 = v265;
  v50 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v266;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v255, v254, v45, v47, 0, 0, v239 - v48, v239 - v51);
  v54 = objc_allocWithZone(WFActionParameterSummaryValue);
  v55 = sub_1CA65DD78(0xD000000000000036, v257 | 0x8000000000000000, v53);
  v56 = v261;
  *(v261 + 48) = v55;
  v57 = sub_1CA94C438("If there’s nowhere to output:", 31);
  v255 = v58;
  v256 = v57;
  v59 = sub_1CA94C438("If there’s nowhere to output:", 31);
  v61 = v60;
  v257 = v239;
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948D98();
  v62 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v256, v255, v59, v61, 0, 0, v239 - v48, v239 - v51);
  v65 = objc_allocWithZone(WFActionParameterSummary);
  v66 = sub_1CA50D4C4(v56, v64);
  v67 = v260;
  v260[4] = v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445888, &unk_1CA988350);
  v69 = v262;
  v262[15] = v67;
  v69[18] = v68;
  v69[19] = @"BlocksSnapping";
  v70 = MEMORY[0x1E69E6370];
  *(v69 + 160) = 1;
  v69[23] = v70;
  v69[24] = @"Description";
  v261 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v71 = swift_initStackObject();
  v248 = xmmword_1CA981310;
  *(v71 + 16) = xmmword_1CA981310;
  *(v71 + 32) = @"DescriptionSummary";
  v72 = @"BlocksSnapping";
  v73 = @"Description";
  v74 = @"DescriptionSummary";
  v75 = sub_1CA94C438("Stop and Output (Description Summary)", 37);
  v77 = v76;
  v78 = sub_1CA94C438("Stops execution of the current shortcut, and outputs content. This action is useful when:\n• Running a shortcut from another shortcut (using the Run Shortcut action). The output will be used as the output of the Run Shortcut action.\n• Running a shortcut from Quick Actions in Finder on macOS. The output will be saved as a file alongside the files selected in Finder.\n• Running a shortcut from Services on macOS. The output will replace the selected text, if applicable.\n• Or, when running a shortcut from another location that supports output, like the command-line or the Shortcuts URL scheme.\n\nNo more actions will be run after this action.", 650);
  v80 = v79;
  v260 = v239;
  MEMORY[0x1EEE9AC00](v78);
  v81 = v239 - v267;
  sub_1CA948D98();
  v82 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = v239 - v266;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  *(v71 + 64) = v263;
  *(v71 + 40) = v85;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v86 = sub_1CA94C1E8();
  v87 = v261;
  v88 = sub_1CA6B3784(v86);
  v89 = v262;
  v262[25] = v88;
  v89[28] = v87;
  v89[29] = @"IconColor";
  v89[30] = 1702194242;
  v89[31] = 0xE400000000000000;
  v90 = MEMORY[0x1E69E6158];
  v89[33] = MEMORY[0x1E69E6158];
  v89[34] = @"IconSymbol";
  v89[35] = 0xD000000000000022;
  v89[36] = 0x80000001CA9B6EA0;
  v89[38] = v90;
  v89[39] = @"Input";
  v91 = v90;
  v92 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_1CA981350;
  *(v93 + 32) = 0x656C7069746C754DLL;
  *(v93 + 40) = 0xE800000000000000;
  *(v93 + 48) = 1;
  v94 = MEMORY[0x1E69E6370];
  *(v93 + 72) = MEMORY[0x1E69E6370];
  strcpy((v93 + 80), "ParameterKey");
  *(v93 + 93) = 0;
  *(v93 + 94) = -5120;
  *(v93 + 96) = 0x74757074754F4657;
  *(v93 + 104) = 0xE800000000000000;
  *(v93 + 120) = v91;
  *(v93 + 128) = 0x6465726975716552;
  *(v93 + 136) = 0xE800000000000000;
  *(v93 + 144) = 0;
  *(v93 + 168) = v94;
  *(v93 + 176) = 0x7365707954;
  *(v93 + 184) = 0xE500000000000000;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v93 + 216) = v257;
  *(v93 + 192) = &unk_1F49FB370;
  v95 = @"IconColor";
  v96 = @"IconSymbol";
  v97 = @"Input";
  v98 = sub_1CA94C1E8();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v92[40] = v98;
  v92[43] = v99;
  v92[44] = @"Name";
  v100 = @"Name";
  v101 = sub_1CA94C438("Stop and Output (Action Name)", 29);
  v103 = v102;
  v104 = sub_1CA94C438("Stop and Output", 15);
  v106 = v105;
  MEMORY[0x1EEE9AC00](v104);
  v107 = v239 - v267;
  sub_1CA948D98();
  v108 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = v239 - v266;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  v112 = v262;
  v262[45] = v111;
  v112[48] = v263;
  v112[49] = @"Parameters";
  v261 = swift_allocObject();
  *(v261 + 16) = v258;
  v260 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1CA981400;
  v247 = 0x80000001CA99B500;
  *(v113 + 32) = @"Class";
  *(v113 + 40) = 0xD000000000000014;
  *(v113 + 48) = 0x80000001CA99B500;
  v114 = MEMORY[0x1E69E6158];
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = @"DefaultValue";
  *(v113 + 80) = 0;
  *(v113 + 88) = 0xE000000000000000;
  *(v113 + 104) = v114;
  *(v113 + 112) = @"Key";
  *(v113 + 120) = 0x74757074754F4657;
  *(v113 + 128) = 0xE800000000000000;
  *(v113 + 144) = v114;
  *(v113 + 152) = @"Label";
  v115 = @"Class";
  v116 = @"DefaultValue";
  v117 = @"Key";
  v118 = @"Label";
  v119 = v115;
  v120 = v116;
  v121 = v117;
  v122 = v118;
  v253 = v119;
  v252 = v120;
  v254 = v121;
  v255 = v122;
  v123 = @"Parameters";
  v250 = sub_1CA94C438("Result (WFOutput)", 17);
  v246 = v124;
  v125 = sub_1CA94C438("Result", 6);
  v127 = v126;
  v251 = v239;
  MEMORY[0x1EEE9AC00](v125);
  v128 = v239 - v267;
  sub_1CA948D98();
  v129 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v239 - v266;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 160) = sub_1CA2F9F14(v250, v246, v125, v127, 0, 0, v128, v130);
  v132 = v263;
  *(v113 + 184) = v263;
  *(v113 + 192) = @"Multiline";
  *(v113 + 200) = 1;
  *(v113 + 224) = MEMORY[0x1E69E6370];
  *(v113 + 232) = @"Placeholder";
  v133 = @"Multiline";
  v134 = @"Placeholder";
  v246 = v133;
  v245 = v134;
  v250 = sub_1CA94C438("Result (WFOutput)", 17);
  v244 = v135;
  v136 = sub_1CA94C438("Result", 6);
  v138 = v137;
  v251 = v239;
  MEMORY[0x1EEE9AC00](v136);
  v139 = v267;
  sub_1CA948D98();
  v140 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v239 - v266;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v250, v244, v136, v138, 0, 0, v239 - v139, v141);
  *(v113 + 264) = v132;
  *(v113 + 240) = v143;
  v244 = "eter";
  *(v113 + 272) = sub_1CA94C368();
  *(v113 + 304) = MEMORY[0x1E69E6370];
  *(v113 + 280) = 1;
  _s3__C3KeyVMa_0(0);
  v251 = v144;
  v250 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v145 = sub_1CA94C1E8();
  v146 = sub_1CA2F864C(v145);
  *(v261 + 32) = v146;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA981380;
  *(v147 + 32) = v253;
  *(v147 + 40) = 0xD000000000000016;
  *(v147 + 48) = 0x80000001CA99C4A0;
  v148 = MEMORY[0x1E69E6158];
  v149 = v252;
  *(v147 + 64) = MEMORY[0x1E69E6158];
  *(v147 + 72) = v149;
  *(v147 + 80) = 0x6968746F4E206F44;
  *(v147 + 88) = 0xEA0000000000676ELL;
  *(v147 + 104) = v148;
  *(v147 + 112) = @"DisallowedVariableTypes";
  *(v147 + 120) = &unk_1F49FB3A0;
  *(v147 + 144) = v257;
  *(v147 + 152) = @"Items";
  v259 = swift_allocObject();
  *(v259 + 1) = v258;
  *&v258 = @"DisallowedVariableTypes";
  v150 = @"Items";
  v151 = sub_1CA94C438("Respond (WFNoOutputSurfaceBehavior)", 35);
  v241 = v152;
  v242 = v151;
  v153 = sub_1CA94C438("Respond", 7);
  v240 = v154;
  v243 = v239;
  MEMORY[0x1EEE9AC00](v153);
  sub_1CA948D98();
  v155 = v265;
  v156 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v239 - v266;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v242, v241, v153, v240, 0, 0, v239 - v139, v157);
  v160 = v259;
  v259[4] = v159;
  v161 = sub_1CA94C438("Do Nothing (WFNoOutputSurfaceBehavior)", 38);
  v241 = v162;
  v242 = v161;
  v163 = sub_1CA94C438("Do Nothing", 10);
  v240 = v164;
  v243 = v239;
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948D98();
  v165 = [v155 bundleURL];
  v239[1] = v239;
  MEMORY[0x1EEE9AC00](v165);
  v166 = v266;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160[5] = sub_1CA2F9F14(v242, v241, v163, v240, 0, 0, v239 - v139, v239 - v166);
  v168 = sub_1CA94C438("Copy to Clipboard (WFNoOutputSurfaceBehavior)", 45);
  v241 = v169;
  v242 = v168;
  v170 = sub_1CA94C438("Copy to Clipboard", 17);
  v240 = v171;
  v243 = v239;
  MEMORY[0x1EEE9AC00](v170);
  sub_1CA948D98();
  v172 = v265;
  v173 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v242, v241, v170, v240, 0, 0, v239 - v139, v239 - v166);
  v176 = v259;
  v259[6] = v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v147 + 160) = v176;
  v178 = v254;
  *(v147 + 184) = v177;
  *(v147 + 192) = v178;
  *(v147 + 200) = 0xD000000000000019;
  *(v147 + 208) = 0x80000001CA997030;
  v179 = v255;
  *(v147 + 224) = MEMORY[0x1E69E6158];
  *(v147 + 232) = v179;
  v180 = sub_1CA94C438("If there’s nowhere to output (WFNoOutputSurfaceBehavior)", 58);
  v242 = v181;
  v243 = v180;
  v182 = sub_1CA94C438("If there’s nowhere to output", 30);
  v184 = v183;
  v259 = v239;
  MEMORY[0x1EEE9AC00](v182);
  v185 = v267;
  sub_1CA948D98();
  v186 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = v266;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v243, v242, v182, v184, 0, 0, v239 - v185, v239 - v187);
  *(v147 + 264) = v263;
  *(v147 + 240) = v189;
  v190 = sub_1CA94C1E8();
  v191 = sub_1CA2F864C(v190);
  *(v261 + 40) = v191;
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_1CA9813E0;
  v193 = v252;
  *(v192 + 32) = v253;
  *(v192 + 40) = 0xD000000000000014;
  *(v192 + 48) = v247;
  v194 = MEMORY[0x1E69E6158];
  *(v192 + 64) = MEMORY[0x1E69E6158];
  *(v192 + 72) = v193;
  *(v192 + 80) = 0;
  *(v192 + 88) = 0xE000000000000000;
  *(v192 + 104) = v194;
  v195 = v194;
  *(v192 + 112) = v258;
  *(v192 + 120) = &unk_1F49FB3E0;
  v196 = v254;
  *(v192 + 144) = v257;
  *(v192 + 152) = v196;
  *(v192 + 160) = 0x6E6F707365524657;
  *(v192 + 168) = 0xEA00000000006573;
  v197 = v255;
  *(v192 + 184) = v195;
  *(v192 + 192) = v197;
  v198 = sub_1CA94C438("Result (WFResponse)", 19);
  v257 = v199;
  *&v258 = v198;
  v200 = sub_1CA94C438("Result", 6);
  v256 = v201;
  v259 = v239;
  MEMORY[0x1EEE9AC00](v200);
  sub_1CA948D98();
  v202 = v265;
  v203 = [v265 bundleURL];
  v255 = v239;
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 200) = sub_1CA2F9F14(v258, v257, v200, v256, 0, 0, v239 - v185, v239 - v187);
  v205 = v246;
  *(v192 + 224) = v263;
  *(v192 + 232) = v205;
  *(v192 + 240) = 1;
  v206 = v245;
  *(v192 + 264) = MEMORY[0x1E69E6370];
  *(v192 + 272) = v206;
  v207 = sub_1CA94C438("Result (WFResponse)", 19);
  v257 = v208;
  *&v258 = v207;
  v209 = sub_1CA94C438("Result", 6);
  v256 = v210;
  v259 = v239;
  MEMORY[0x1EEE9AC00](v209);
  v211 = v239 - v267;
  sub_1CA948D98();
  v212 = [v202 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v258, v257, v209, v256, 0, 0, v211, v239 - v187);
  *(v192 + 304) = v263;
  *(v192 + 280) = v214;
  *(v192 + 312) = sub_1CA94C368();
  *(v192 + 320) = 1;
  *(v192 + 344) = MEMORY[0x1E69E6370];
  *(v192 + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v215 = swift_allocObject();
  *(v215 + 16) = v248;
  v216 = @"RequiredResources";
  *(v215 + 32) = sub_1CA94C1E8();
  *(v192 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v192 + 360) = v215;
  v217 = sub_1CA94C1E8();
  v218 = sub_1CA2F864C(v217);
  v219 = v261;
  *(v261 + 48) = v218;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v221 = v262;
  v262[50] = v219;
  v221[53] = v220;
  v221[54] = @"ParameterSummary";
  v222 = @"ParameterSummary";
  v223 = sub_1CA94C438("Stop and output ${WFOutput} (Parameter Summary)", 47);
  v225 = v224;
  v226 = sub_1CA94C438("Stop and output ${WFOutput}", 27);
  v228 = v227;
  MEMORY[0x1EEE9AC00](v226);
  v229 = v239 - v267;
  sub_1CA948D98();
  v230 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v230);
  v231 = v239 - v266;
  sub_1CA948B68();

  v232 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v233 = sub_1CA2F9F14(v223, v225, v226, v228, 0, 0, v229, v231);
  v234 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v235 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v236 = v262;
  v262[55] = v234;
  v236[58] = v235;
  v236[59] = @"ResidentCompatible";
  v236[63] = MEMORY[0x1E69E6370];
  *(v236 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v237 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t RowTemplateLayoutElement.rawValue.getter()
{
  result = 0x79747265706F7270;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0x726F74617265706FLL;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x61765F726568746FLL;
      break;
    case 5:
      result = 1953066613;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall RowTemplateFormatString.stringValue(condition:)(Swift::Bool condition)
{
  if (condition)
  {
    sub_1CA44CF44();
  }

  else
  {
    sub_1CA44D0DC();
  }

  sub_1CA94C438("and", 3);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  sub_1CA94C3A8();
  sub_1CA27BAF0();
  v5 = sub_1CA94D1B8();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static RowTemplateLayoutElement.from(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445898, &qword_1CA988368);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20[-v14];
  sub_1CA949438();
  v22 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
  sub_1CA25C3BC(&qword_1EC4458A8, &qword_1EC445890, &qword_1CA988360, MEMORY[0x1E69E9290]);
  sub_1CA949658();
  v23 = a1;
  v24 = a2;
  sub_1CA44D248();
  v16 = sub_1CA94C2C8();
  v21 = v15;
  sub_1CA390C0C(sub_1CA44D29C, v20, v16);
  v18 = v17;

  (*(v6 + 8))(v9, v4);
  (*(v12 + 8))(v15, v10);
  return v18;
}

uint64_t sub_1CA44C154@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C0, &qword_1CA988498);
  v43 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v36 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v41 = sub_1CA9495F8();
  v9 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C8, &qword_1CA9884A0);
  v42 = *(v35 - 8);
  v12 = MEMORY[0x1EEE9AC00](v35);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = v28 - v15;
  v46 = 31524;
  v47 = 0xE200000000000000;
  v34 = sub_1CA44D62C();
  MEMORY[0x1CCA9E220](v48, &v46, MEMORY[0x1E69E6158], v34);
  sub_1CA9493E8();
  v40 = v5;
  sub_1CA44C6D0(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445898, &qword_1CA988368);
  sub_1CA949428();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
  sub_1CA25C3BC(&qword_1EC4458D8, &qword_1EC4458C0, &qword_1CA988498, MEMORY[0x1E69E9290]);
  v28[0] = v8;
  v28[1] = v16;
  sub_1CA9495D8();
  v17 = *(v43 + 8);
  v43 += 8;
  v32 = v17;
  v17(v5, v1);
  v18 = *(v9 + 8);
  v30 = v9 + 8;
  v31 = v18;
  v18(v11, v41);
  MEMORY[0x1CCA9E260](v8, v16);
  v19 = sub_1CA25C3BC(&qword_1EC4458E0, &qword_1EC4458C8, &qword_1CA9884A0, MEMORY[0x1E69E8278]);
  v20 = v33;
  v21 = v35;
  MEMORY[0x1CCA9E220](v14, v35, v19);
  v22 = *(v42 + 8);
  v42 += 8;
  v29 = v22;
  v22(v14, v21);
  v44 = 125;
  v45 = 0xE100000000000000;
  MEMORY[0x1CCA9E220](&v46, &v44, MEMORY[0x1E69E6158], v34);
  v44 = v48[0];
  v45 = v48[1];
  sub_1CA9493D8();

  sub_1CA9493E8();
  v23 = v36;
  sub_1CA9495C8();
  v24 = v28[0];
  v25 = v20;
  sub_1CA9495B8();
  v26 = v32;
  v32(v23, v1);
  v31(v11, v41);
  sub_1CA44CBA0(v24, v46, v47, v39);

  (*(v37 + 8))(v24, v38);
  v26(v40, v1);
  return v29(v25, v21);
}

uint64_t sub_1CA44C6D0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1CA9493F8();
  v39 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C0, &qword_1CA988498);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - v11;
  v40 = sub_1CA9495F8();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458E8, &qword_1CA9884A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458F0, &unk_1CA9884B0);
  v36 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  sub_1CA949628();
  v22 = sub_1CA949638();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  sub_1CA9493E8();
  sub_1CA949608();
  v23 = sub_1CA44D680();
  v24 = v1;
  MEMORY[0x1CCA9E220](v4, v1, v23);
  v25 = *(v39 + 8);
  v25(v4, v1);
  v26 = v35;
  sub_1CA9493D8();
  v25(v6, v24);
  sub_1CA25C3BC(&qword_1EC4458D8, &qword_1EC4458C0, &qword_1CA988498, MEMORY[0x1E69E9290]);
  v27 = MEMORY[0x1E69E67B0];
  v28 = v37;
  v29 = v41;
  v30 = v34;
  sub_1CA9495E8();
  (*(v42 + 8))(v26, v29);
  (*(v38 + 8))(v30, v40);
  sub_1CA44D6D8(v15);
  MEMORY[0x1CCA9E270](v28, v27);
  v31 = sub_1CA25C3BC(&qword_1EC445900, &qword_1EC4458F0, &unk_1CA9884B0, MEMORY[0x1E69E8290]);
  MEMORY[0x1CCA9E220](v19, v16, v31);
  v32 = *(v36 + 8);
  v32(v19, v16);
  sub_1CA9493D8();
  return (v32)(v21, v16);
}

uint64_t sub_1CA44CBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C0, &qword_1CA988498);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v16 = sub_1CA9495F8();
  v10 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9493E8();
  v19 = a2;
  v20 = a3;
  sub_1CA44D62C();
  sub_1CA9495C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v13 = MEMORY[0x1E69E9290];
  sub_1CA25C3BC(&qword_1EC4458A8, &qword_1EC445890, &qword_1CA988360, MEMORY[0x1E69E9290]);
  sub_1CA25C3BC(&qword_1EC4458D8, &qword_1EC4458C0, &qword_1CA988498, v13);
  sub_1CA9495B8();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v16);
}

WorkflowKit::RowTemplateLayoutElement_optional sub_1CA44CDE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A58, &qword_1CA988490);
  sub_1CA949678();
  v2 = MEMORY[0x1CCAA1280]();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  return RowTemplateLayoutElement.init(rawValue:)(v5);
}

WorkflowKit::RowTemplateLayoutElement_optional __swiftcall RowTemplateLayoutElement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CA94D6E8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CA44CF1C@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateLayoutElement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA44CF44()
{
  switch(*v0)
  {
    case 5:
      sub_1CA94C438("If ${property} ${operator} ${value} ${unit}", 43);
      goto LABEL_7;
    case 6:
      sub_1CA94C438("If ${property} ${operator} ${value} ${operator_and} ${other_value}", 66);
      goto LABEL_7;
    case 7:
      sub_1CA94C438("If ${property} ${operator} ${value}", 35);
      goto LABEL_7;
    case 8:
      sub_1CA94C438("If ${property} ${operator}", 26);
      goto LABEL_7;
    case 9:
      sub_1CA94C438("If ${property}", 14);
LABEL_7:
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
      }

      v1 = qword_1EDB9F690;
      v2 = sub_1CA94C368();
      v3 = sub_1CA94C368();

      v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

      v5 = sub_1CA94C3A8();
      result = v5;
      break;
    default:
      result = sub_1CA94D5F8();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1CA44D0DC()
{
  switch(*v0)
  {
    case 2:
    case 3:
    case 4:
      sub_1CA94C438("${operator} ${property}", 23);
      break;
    case 5:
      sub_1CA94C438("${property} ${operator} ${value} ${unit}", 40);
      break;
    case 6:
      sub_1CA94C438("${property} ${operator} ${value} ${operator_and} ${other_value}", 63);
      break;
    case 7:
      sub_1CA94C438("${property} ${operator} ${value}", 32);
      break;
    case 8:
      sub_1CA94C438("${property} ${operator}", 23);
      break;
    case 9:
      sub_1CA94C438("${property}", 11);
      break;
    default:
      sub_1CA94C438("${operator} ${property} to ${value}", 35);
      break;
  }

  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1CA94C3A8();
  return v5;
}

unint64_t sub_1CA44D248()
{
  result = qword_1EC4458B0;
  if (!qword_1EC4458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458B0);
  }

  return result;
}

unint64_t sub_1CA44D2BC()
{
  result = qword_1EC4458B8;
  if (!qword_1EC4458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RowTemplateLayoutElement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RowTemplateLayoutElement(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for RowTemplateFormatString(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 6)
    {
      return (v7 - 5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 9;
    if (a2 + 9 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 9);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RowTemplateFormatString(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 >= 0xF7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF6)
  {
    v7 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        break;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA44D5F8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1CA44D60C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

unint64_t sub_1CA44D62C()
{
  result = qword_1EC4458D0;
  if (!qword_1EC4458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458D0);
  }

  return result;
}

unint64_t sub_1CA44D680()
{
  result = qword_1EC4458F8;
  if (!qword_1EC4458F8)
  {
    sub_1CA9493F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458F8);
  }

  return result;
}

uint64_t sub_1CA44D6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458E8, &qword_1CA9884A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void RunnableCollection.init(bundleIdentifier:namedQueryInfo:entries:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    v10 = [a1 name];
    v11 = sub_1CA94C3A8();
    v13 = v12;
  }

  else
  {
    if (qword_1EDB9F960 != -1)
    {
      swift_once();
    }

    v14 = sub_1CA2786EC(a2, a3);
    if (v15)
    {
      v11 = v14;
      v13 = v15;
    }

    else
    {
      sub_1CA94C218();
      v11 = a2;
      v13 = a3;
    }
  }

  *a5 = v11;
  a5[1] = v13;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a1;
  a5[5] = a4;
}

uint64_t RunnableCollection.name.getter()
{
  v1 = *v0;
  sub_1CA94C218();
  return v1;
}

uint64_t RunnableCollection.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  sub_1CA94C218();
  return v1;
}

void *RunnableCollection.namedQueryInfo.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t RunnableCollection.id.getter(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v6 = *v1;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  MEMORY[0x1CCAA1300](v2, v3);
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  sub_1CA94C778();
  v4 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v4);

  return v6;
}

uint64_t RunnableCollection.with<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a2 = *v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = a1;
  v7 = v6;
  sub_1CA94C218();
  sub_1CA94C218();

  return sub_1CA94C218();
}

uint64_t static RunnableCollection.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1CA94D7F8() & 1) == 0)
  {
    return 0;
  }

  v11 = v4 == v7 && v5 == v8;
  if (!v11 && (sub_1CA94D7F8() & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F6D8, 0x1E69E0990);
  v12 = v9;
  v13 = v6;
  v14 = sub_1CA94CFD8();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_14:

  return sub_1CA94C788();
}

uint64_t RunnableCollection.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  sub_1CA94C458();
  sub_1CA94C458();
  sub_1CA94D938();
  if (v3)
  {
    v4 = v3;
    sub_1CA94CFE8();
  }

  return sub_1CA94C768();
}

uint64_t RunnableCollection.hashValue.getter(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_1CA94D918();
  RunnableCollection.hash(into:)(v7, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA44DC2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RunnableCollection.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1CA44DC68(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  RunnableCollection.hash(into:)(v4, a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA44DCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1CA44DD58;

  return RunnableDataSource.workflow(for:)();
}

uint64_t sub_1CA44DD58()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t RunnableDataSource.workflow(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  OUTLINED_FUNCTION_4_19();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_39(v4);

  return v6(v5);
}

uint64_t sub_1CA44DF54()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  *(v2 + 176) = v3;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA44E084, 0, 0);
  }
}

uint64_t sub_1CA44E084()
{
  v1 = v0[22];
  v2 = [objc_allocWithZone(WFWorkflow) init];
  v0[23] = v2;
  [v2 addAction_];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  v4(v5, AssociatedConformanceWitness);
  v6 = sub_1CA94C368();

  [v2 setName_];

  v0[2] = v0;
  v0[3] = sub_1CA44E270;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA44E498;
  v0[13] = &block_descriptor_12;
  v0[14] = v7;
  [v2 configureAsSingleStepShortcutIfNecessary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA44E270()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CA44E344, 0, 0);
}

uint64_t sub_1CA44E344()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[23];
  v2 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v5))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = v0[22];
  [v2 setActionCount_];
  v8 = @"ShortcutSourceAppShortcut";
  [v2 setShortcutSource_];

  [v2 track];
  v9 = v0[1];
  v10 = v0[23];

  return v9(v10);
}

uint64_t sub_1CA44E498(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t sub_1CA44E4CC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_4_33(&unk_1CA98AFC8);
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6, v1);
}

uint64_t sub_1CA44E56C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_33(&unk_1CA98AFC0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_1(v2);

  return v6(v4);
}

uint64_t sub_1CA44E600()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_33(&dword_1CA98AEE0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of RunnableLoader.action(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_39(v1);

  return v4(v3);
}

uint64_t dispatch thunk of RunnableDataSource.action(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_39(v1);

  return v4(v3);
}

uint64_t dispatch thunk of RunnableDataSource.workflow(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_39(v1);

  return v4(v3);
}

id sub_1CA44EA98()
{
  v223 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B7370;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("number|average|mean|mode|median|maximum|deviation|sum|minimum", 61);
  v6 = v5;
  v7 = sub_1CA94C438("number|average|mean|mode|median|maximum|deviation|sum|minimum", 61);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v234 = v11;
  v232 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v216 - v232;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v231 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v233 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v230 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v216 - v230;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v228 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v227 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Calculates statistics on the numbers that are provided as input.", 64);
  v28 = v27;
  v29 = sub_1CA94C438("Calculates statistics on the numbers that are provided as input.", 64);
  v31 = v30;
  *&v226 = &v216;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v216 - v232;
  sub_1CA948D98();
  v33 = [v231 bundleURL];
  v229 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v216 - v230;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v228;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v227;
  v40 = sub_1CA6B3784(v38);
  v41 = v229;
  *(v229 + 20) = v40;
  *(v41 + 23) = v39;
  *(v41 + 24) = @"IconColor";
  *(v41 + 25) = 2036429383;
  *(v41 + 26) = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 28) = MEMORY[0x1E69E6158];
  *(v41 + 29) = @"IconSymbol";
  strcpy(v41 + 240, "chart.bar.fill");
  v41[255] = -18;
  *(v41 + 33) = v42;
  *(v41 + 34) = @"Input";
  v43 = v42;
  v44 = v41;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v45 = swift_initStackObject();
  v226 = xmmword_1CA981350;
  *(v45 + 16) = xmmword_1CA981350;
  *(v45 + 32) = 0x656C7069746C754DLL;
  *(v45 + 40) = 0xE800000000000000;
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 48) = 1;
  *(v45 + 72) = v46;
  strcpy((v45 + 80), "ParameterKey");
  *(v45 + 93) = 0;
  *(v45 + 94) = -5120;
  *(v45 + 96) = 0x7475706E49;
  *(v45 + 104) = 0xE500000000000000;
  *(v45 + 120) = v43;
  *(v45 + 128) = 0x6465726975716552;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 144) = 1;
  *(v45 + 168) = v46;
  *(v45 + 176) = 0x7365707954;
  v47 = v46;
  *(v45 + 184) = 0xE500000000000000;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v45 + 216) = v227;
  *(v45 + 192) = &unk_1F49FB580;
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"Input";
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v225 = v52;
  *(v44 + 35) = v51;
  *(v44 + 38) = v52;
  *(v44 + 39) = @"LocallyProcessesData";
  v44[320] = 1;
  *(v44 + 43) = v47;
  *(v44 + 44) = @"Name";
  v53 = @"LocallyProcessesData";
  v54 = @"Name";
  v55 = sub_1CA94C438("Calculate Statistics (Action Name)", 34);
  v57 = v56;
  v58 = sub_1CA94C438("Calculate Statistics", 20);
  v60 = v59;
  v222 = &v216;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v216 - v232;
  sub_1CA948D98();
  v62 = v231;
  v63 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v216 - v230;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v64);
  v68 = v228;
  v67 = v229;
  *(v229 + 45) = v66;
  *(v67 + 48) = v68;
  *(v67 + 49) = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v226;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 1;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("Statistics (Default Output Name)", 32);
  v222 = v72;
  v73 = sub_1CA94C438("Statistics", 10);
  v75 = v74;
  v224 = &v216;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v216 - v232;
  sub_1CA948D98();
  v77 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v216 - v230;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v71, v222, v73, v75, 0, 0, v76, v78);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v227;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49FB5B0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v229;
  *(v229 + 50) = v81;
  *(v82 + 53) = v225;
  *(v82 + 54) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_1CA981360;
  v224 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  v220 = v83;
  *(v83 + 16) = xmmword_1CA981370;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000016;
  *(v83 + 48) = 0x80000001CA99C4A0;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"DefaultValue";
  *(v83 + 80) = 0x65676172657641;
  *(v83 + 88) = 0xE700000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Items";
  v227 = swift_allocObject();
  *(v227 + 1) = xmmword_1CA985370;
  v221 = @"Class";
  v84 = @"Parameters";
  v85 = @"DefaultValue";
  v86 = @"Items";
  v87 = sub_1CA94C438("Average (WFStatisticsOperation)", 31);
  v217 = v88;
  v218 = v87;
  v89 = sub_1CA94C438("Average", 7);
  v216 = v90;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v232;
  sub_1CA948D98();
  v92 = v231;
  v93 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v230;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v218, v217, v89, v216, 0, 0, &v216 - v91, &v216 - v94);
  v227[4] = v96;
  v97 = sub_1CA94C438("Minimum (WFStatisticsOperation)", 31);
  v217 = v98;
  v218 = v97;
  v99 = sub_1CA94C438("Minimum", 7);
  v216 = v100;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v216 - v91;
  sub_1CA948D98();
  v102 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v94;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v218, v217, v99, v216, 0, 0, v101, &v216 - v94);
  v106 = v227;
  v227[5] = v105;
  v107 = sub_1CA94C438("Maximum (WFStatisticsOperation)", 31);
  v217 = v108;
  v218 = v107;
  v109 = sub_1CA94C438("Maximum", 7);
  v216 = v110;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v109);
  v111 = v232;
  sub_1CA948D98();
  v112 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106[6] = sub_1CA2F9F14(v218, v217, v109, v216, 0, 0, &v216 - v111, &v216 - v103);
  v114 = sub_1CA94C438("Sum (WFStatisticsOperation)", 27);
  v217 = v115;
  v218 = v114;
  v116 = sub_1CA94C438("Sum", 3);
  v216 = v117;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948D98();
  v118 = v231;
  v119 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v218, v217, v116, v216, 0, 0, &v216 - v111, &v216 - v103);
  v122 = v227;
  v227[7] = v121;
  v123 = sub_1CA94C438("Median (WFStatisticsOperation)", 30);
  v217 = v124;
  v218 = v123;
  v125 = sub_1CA94C438("Median", 6);
  v216 = v126;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v232;
  sub_1CA948D98();
  v128 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[8] = sub_1CA2F9F14(v218, v217, v125, v216, 0, 0, &v216 - v127, &v216 - v103);
  v130 = sub_1CA94C438("Mode (WFStatisticsOperation)", 28);
  v217 = v131;
  v218 = v130;
  v132 = sub_1CA94C438("Mode", 4);
  v216 = v133;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v216 - v127;
  sub_1CA948D98();
  v135 = v231;
  v136 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v218, v217, v132, v216, 0, 0, v134, &v216 - v103);
  v139 = v227;
  v227[9] = v138;
  v140 = sub_1CA94C438("Range (WFStatisticsOperation)", 29);
  v217 = v141;
  v218 = v140;
  v142 = sub_1CA94C438("Range", 5);
  v216 = v143;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v142);
  v144 = v232;
  sub_1CA948D98();
  v145 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139[10] = sub_1CA2F9F14(v218, v217, v142, v216, 0, 0, &v216 - v144, &v216 - v103);
  v147 = sub_1CA94C438("Standard Deviation (WFStatisticsOperation)", 42);
  v217 = v148;
  v218 = v147;
  v149 = sub_1CA94C438("Standard Deviation", 18);
  v151 = v150;
  v219 = &v216;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v216 - v144;
  sub_1CA948D98();
  v153 = v231;
  v154 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v216 - v230;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139[11] = sub_1CA2F9F14(v218, v217, v149, v151, 0, 0, v152, v155);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v158 = v220;
  v220[15] = v139;
  v158[18] = v157;
  v158[19] = @"Key";
  v158[20] = 0xD000000000000015;
  v158[21] = 0x80000001CA9B7620;
  v158[23] = MEMORY[0x1E69E6158];
  v158[24] = @"Label";
  v159 = @"Key";
  v160 = @"Label";
  v218 = v159;
  v217 = v160;
  v161 = sub_1CA94C438("Operation (WFStatisticsOperation)", 33);
  v163 = v162;
  v164 = sub_1CA94C438("Operation", 9);
  v166 = v165;
  v227 = &v216;
  MEMORY[0x1EEE9AC00](v164);
  v167 = &v216 - v232;
  sub_1CA948D98();
  v168 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v216 - v230;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v161, v163, v164, v166, 0, 0, v167, v169);
  v158[28] = v228;
  v158[25] = v171;
  _s3__C3KeyVMa_0(0);
  v227 = v172;
  v219 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v173 = sub_1CA94C1E8();
  v174 = sub_1CA2F864C(v173);
  *(v225 + 32) = v174;
  v175 = swift_initStackObject();
  *(v175 + 16) = v226;
  *(v175 + 32) = v221;
  *(v175 + 40) = 0xD000000000000019;
  *(v175 + 48) = 0x80000001CA99B030;
  v176 = MEMORY[0x1E69E6158];
  v177 = v218;
  *(v175 + 64) = MEMORY[0x1E69E6158];
  *(v175 + 72) = v177;
  *(v175 + 80) = 0x7475706E49;
  *(v175 + 88) = 0xE500000000000000;
  v178 = v217;
  *(v175 + 104) = v176;
  *(v175 + 112) = v178;
  v179 = sub_1CA94C438("Input (Input)", 13);
  v221 = v180;
  v222 = v179;
  v181 = sub_1CA94C438("Input", 5);
  v220 = v182;
  *&v226 = &v216;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v216 - v232;
  sub_1CA948D98();
  v184 = v231;
  v185 = [v231 bundleURL];
  v218 = &v216;
  MEMORY[0x1EEE9AC00](v185);
  v186 = v230;
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v175 + 120) = sub_1CA2F9F14(v222, v221, v181, v220, 0, 0, v183, &v216 - v186);
  v188 = v228;
  *(v175 + 144) = v228;
  *(v175 + 152) = @"Placeholder";
  v189 = @"Placeholder";
  v190 = sub_1CA94C438("Input (Input)", 13);
  v221 = v191;
  v222 = v190;
  v220 = sub_1CA94C438("Input", 5);
  v193 = v192;
  *&v226 = &v216;
  MEMORY[0x1EEE9AC00](v220);
  v194 = v232;
  sub_1CA948D98();
  v195 = [v184 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v222, v221, v220, v193, 0, 0, &v216 - v194, &v216 - v186);
  *(v175 + 184) = v188;
  *(v175 + 160) = v197;
  v198 = sub_1CA94C1E8();
  v199 = sub_1CA2F864C(v198);
  v200 = v225;
  *(v225 + 40) = v199;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v202 = v229;
  *(v229 + 55) = v200;
  *(v202 + 58) = v201;
  *(v202 + 59) = @"ParameterSummary";
  v203 = @"ParameterSummary";
  v204 = sub_1CA94C438("Calculate the ${WFStatisticsOperation} of ${Input} (Parameter Summary)", 70);
  v206 = v205;
  v207 = sub_1CA94C438("Calculate the ${WFStatisticsOperation} of ${Input}", 50);
  v209 = v208;
  v228 = &v216;
  MEMORY[0x1EEE9AC00](v207);
  sub_1CA948D98();
  v210 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v216 - v230;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v204, v206, v207, v209, 0, 0, &v216 - v194, v211);
  v214 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v202 + 63) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v202 + 60) = v214;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA450440()
{
  v0 = sub_1CA949D18();
  v221 = *(v0 - 8);
  v222 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v220 = &v215 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9B7710;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v233 = sub_1CA94C438("horizontal|vertical|grid|photos|compile|connect|montage|photos", 62);
  v7 = v6;
  v8 = sub_1CA94C438("horizontal|vertical|grid|photos|compile|connect|montage|photos", 62);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v236 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v237 = v12;
  v13 = &v215 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v238 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v235 = v16;
  v239 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v215 - v239;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v233, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v233 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v232 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v219 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("Combines the images passed into the action horizontally, vertically, or in a grid.", 82);
  v26 = v25;
  v27 = sub_1CA94C438("Combines the images passed into the action horizontally, vertically, or in a grid.", 82);
  v29 = v28;
  v231 = &v215;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v215 - v236;
  sub_1CA948D98();
  v31 = [v238 bundleURL];
  v234 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v215 - v239;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v233;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v232;
  v38 = sub_1CA6B3784(v36);
  v39 = v234;
  v234[15] = v38;
  v39[18] = v37;
  v39[19] = @"IconColor";
  v39[20] = 1702194242;
  v39[21] = 0xE400000000000000;
  v40 = MEMORY[0x1E69E6158];
  v39[23] = MEMORY[0x1E69E6158];
  v39[24] = @"IconSymbol";
  v39[25] = 0xD000000000000014;
  v39[26] = 0x80000001CA9B77D0;
  v39[28] = v40;
  v39[29] = @"Input";
  v41 = v39;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v42 = swift_initStackObject();
  v230 = xmmword_1CA981350;
  *(v42 + 16) = xmmword_1CA981350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  v43 = MEMORY[0x1E69E6370];
  *(v42 + 48) = 1;
  *(v42 + 72) = v43;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = v40;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  v44 = v43;
  *(v42 + 184) = 0xE500000000000000;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v42 + 216) = v229;
  *(v42 + 192) = &unk_1F49FB5E0;
  v45 = @"IconColor";
  v46 = @"IconSymbol";
  v47 = @"Input";
  v48 = sub_1CA94C1E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v232 = v49;
  v41[30] = v48;
  v41[33] = v49;
  v41[34] = @"InputPassthrough";
  *(v41 + 280) = 0;
  v41[38] = v44;
  v41[39] = @"Name";
  v50 = @"InputPassthrough";
  v51 = @"Name";
  v52 = sub_1CA94C438("Combine Images (Action Name)", 28);
  v226 = v53;
  *&v227 = v52;
  v54 = sub_1CA94C438("Combine Images", 14);
  v56 = v55;
  v228 = &v215;
  MEMORY[0x1EEE9AC00](v54);
  v57 = v236;
  sub_1CA948D98();
  v58 = v238;
  v59 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v215 - v239;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v227, v226, v54, v56, 0, 0, &v215 - v57, v60);
  v64 = v233;
  v63 = v234;
  v234[40] = v62;
  v63[43] = v64;
  v63[44] = @"Output";
  v65 = swift_allocObject();
  *(v65 + 16) = v230;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 0;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438("Combined Image (Default Output Name)", 36);
  *&v230 = v68;
  v69 = sub_1CA94C438("Combined Image", 14);
  v71 = v70;
  v231 = &v215;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v215 - v57;
  sub_1CA948D98();
  v73 = [v58 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v215 - v239;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v67, v230, v69, v71, 0, 0, v72, v74);
  *(v65 + 168) = v64;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v229;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F49FB610;
  v76 = MEMORY[0x1E69E6158];
  v77 = sub_1CA94C1E8();
  v78 = v234;
  v234[45] = v77;
  v78[48] = v232;
  v78[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v232 = swift_allocObject();
  v227 = xmmword_1CA981470;
  *(v232 + 16) = xmmword_1CA981470;
  v231 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1CA981370;
  v218 = 0xD000000000000016;
  *(v79 + 32) = @"Class";
  *(v79 + 40) = 0xD000000000000016;
  *(v79 + 48) = 0x80000001CA99C4A0;
  *(v79 + 64) = v76;
  *(v79 + 72) = @"DefaultValue";
  strcpy((v79 + 80), "Horizontally");
  *(v79 + 93) = 0;
  *(v79 + 94) = -5120;
  *(v79 + 104) = v76;
  *(v79 + 112) = @"Items";
  *&v230 = swift_allocObject();
  *(v230 + 16) = v227;
  v80 = @"Class";
  v81 = @"DefaultValue";
  *&v227 = v80;
  v217 = v81;
  v82 = @"Parameters";
  v83 = @"Items";
  v84 = sub_1CA94C438("Horizontally (WFImageCombineMode)", 33);
  v224 = v85;
  v225 = v84;
  v86 = sub_1CA94C438("Horizontally", 12);
  v216 = v87;
  v226 = &v215;
  MEMORY[0x1EEE9AC00](v86);
  v88 = v236;
  sub_1CA948D98();
  v89 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v239;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v225, v224, v86, v216, 0, 0, &v215 - v88, &v215 - v90);
  *(v230 + 32) = v92;
  v93 = sub_1CA94C438("Vertically (WFImageCombineMode)", 31);
  v224 = v94;
  v225 = v93;
  v95 = sub_1CA94C438("Vertically", 10);
  v216 = v96;
  v226 = &v215;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v97 = v238;
  v98 = [v238 bundleURL];
  v215 = &v215;
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v225, v224, v95, v216, 0, 0, &v215 - v88, &v215 - v90);
  *(v230 + 40) = v100;
  v101 = sub_1CA94C438("In a Grid (WFImageCombineMode)", 30);
  v224 = v102;
  v225 = v101;
  v103 = sub_1CA94C438("In a Grid", 9);
  v216 = v104;
  v226 = &v215;
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948D98();
  v105 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v225, v224, v103, v216, 0, 0, &v215 - v88, &v215 - v90);
  v108 = v230;
  *(v230 + 48) = v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v79 + 120) = v108;
  *(v79 + 144) = v109;
  *(v79 + 152) = @"Key";
  *(v79 + 160) = 0xD000000000000012;
  *(v79 + 168) = 0x80000001CA9B78F0;
  *(v79 + 184) = MEMORY[0x1E69E6158];
  *(v79 + 192) = @"Label";
  v110 = @"Key";
  v111 = @"Label";
  v112 = v110;
  v113 = v111;
  v225 = v112;
  v224 = v113;
  v114 = sub_1CA94C438("Mode (WFImageCombineMode)", 25);
  v116 = v115;
  v117 = sub_1CA94C438("Mode", 4);
  v119 = v118;
  *&v230 = &v215;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v215 - v236;
  sub_1CA948D98();
  v121 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v215 - v239;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  *(v79 + 224) = v233;
  *(v79 + 200) = v124;
  _s3__C3KeyVMa_0(0);
  *&v230 = v125;
  v226 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v126 = sub_1CA94C1E8();
  v127 = sub_1CA2F864C(v126);
  *(v232 + 32) = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_1CA981300;
  *(v128 + 32) = @"AllowsDecimalNumbers";
  *(v128 + 40) = 1;
  v129 = v227;
  *(v128 + 64) = MEMORY[0x1E69E6370];
  *(v128 + 72) = v129;
  *(v128 + 80) = v218;
  *(v128 + 88) = 0x80000001CA99C180;
  v130 = v217;
  *(v128 + 104) = MEMORY[0x1E69E6158];
  *(v128 + 112) = v130;
  v131 = MEMORY[0x1E69E6530];
  *(v128 + 120) = 0;
  *(v128 + 144) = v131;
  *(v128 + 152) = @"Description";
  v132 = @"AllowsDecimalNumbers";
  v133 = @"Description";
  v134 = sub_1CA94C438("The number of pixels of transparent space to place between consecutive images. (WFImageCombineSpacing)", 102);
  v216 = v135;
  v217 = v134;
  v136 = sub_1CA94C438("The number of pixels of transparent space to place between consecutive images.", 78);
  v215 = v137;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v215 - v236;
  sub_1CA948D98();
  v139 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = v239;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 160) = sub_1CA2F9F14(v217, v216, v136, v215, 0, 0, v138, &v215 - v140);
  v142 = v233;
  v143 = v225;
  *(v128 + 184) = v233;
  *(v128 + 192) = v143;
  *(v128 + 200) = 0xD000000000000015;
  *(v128 + 208) = 0x80000001CA9B79F0;
  v144 = v224;
  *(v128 + 224) = MEMORY[0x1E69E6158];
  *(v128 + 232) = v144;
  v145 = sub_1CA94C438("Spacing (WFImageCombineSpacing)", 31);
  v216 = v146;
  v217 = v145;
  v147 = sub_1CA94C438("Spacing", 7);
  v215 = v148;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v215 - v236;
  sub_1CA948D98();
  v150 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 240) = sub_1CA2F9F14(v217, v216, v147, v215, 0, 0, v149, &v215 - v140);
  *(v128 + 264) = v142;
  *(v128 + 272) = @"Placeholder";
  v218 = @"Placeholder";
  v152 = sub_1CA94C438("0 (WFImageCombineSpacing)", 25);
  v216 = v153;
  v154 = sub_1CA94C438("0", 1);
  v156 = v155;
  v217 = &v215;
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v215 - v236;
  sub_1CA948D98();
  v158 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v215 - v239;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 280) = sub_1CA2F9F14(v152, v216, v154, v156, 0, 0, v157, v159);
  *(v128 + 304) = v142;
  *(v128 + 312) = @"TextAlignment";
  v161 = MEMORY[0x1E69E6158];
  *(v128 + 344) = MEMORY[0x1E69E6158];
  *(v128 + 320) = 0x7468676952;
  *(v128 + 328) = 0xE500000000000000;
  v162 = @"TextAlignment";
  v163 = sub_1CA94C1E8();
  v164 = sub_1CA2F864C(v163);
  *(v232 + 40) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1CA981380;
  *(v165 + 32) = @"AllowsMultipleValues";
  v166 = v227;
  *(v165 + 64) = MEMORY[0x1E69E6370];
  *(v165 + 72) = v166;
  *(v165 + 40) = 1;
  *(v165 + 80) = 0xD000000000000019;
  *(v165 + 88) = 0x80000001CA99B030;
  v167 = v225;
  *(v165 + 104) = v161;
  *(v165 + 112) = v167;
  *(v165 + 120) = 0x7475706E494657;
  *(v165 + 128) = 0xE700000000000000;
  v168 = v224;
  *(v165 + 144) = v161;
  *(v165 + 152) = v168;
  v169 = @"AllowsMultipleValues";
  *&v227 = sub_1CA94C438("Images (WFInput)", 16);
  v225 = v170;
  v171 = sub_1CA94C438("Images", 6);
  v224 = v172;
  v228 = &v215;
  MEMORY[0x1EEE9AC00](v171);
  v173 = v236;
  sub_1CA948D98();
  v174 = v238;
  v175 = [v238 bundleURL];
  v217 = &v215;
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v215 - v239;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 160) = sub_1CA2F9F14(v227, v225, v171, v224, 0, 0, &v215 - v173, v176);
  v178 = v233;
  v179 = v218;
  *(v165 + 184) = v233;
  *(v165 + 192) = v179;
  *&v227 = sub_1CA94C438("Images (WFInput)", 16);
  v225 = v180;
  v181 = sub_1CA94C438("Images", 6);
  v183 = v182;
  v228 = &v215;
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948D98();
  v184 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v215 - v239;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 200) = sub_1CA2F9F14(v227, v225, v181, v183, 0, 0, &v215 - v173, v185);
  *(v165 + 224) = v178;
  *(v165 + 232) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v187 = swift_allocObject();
  *(v187 + 16) = v219;
  v188 = @"PreferredTypes";
  v189 = v220;
  sub_1CA949CB8();
  v190 = sub_1CA949C68();
  v192 = v191;
  (*(v221 + 8))(v189, v222);
  *(v187 + 32) = v190;
  *(v187 + 40) = v192;
  *(v165 + 264) = v229;
  *(v165 + 240) = v187;
  v193 = sub_1CA94C1E8();
  v194 = sub_1CA2F864C(v193);
  v195 = v232;
  *(v232 + 48) = v194;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v197 = v234;
  v234[50] = v195;
  v197[53] = v196;
  v197[54] = @"ParameterSummary";
  v198 = @"ParameterSummary";
  v199 = sub_1CA94C438("Combine ${WFInput} ${WFImageCombineMode} (Parameter Summary)", 60);
  v201 = v200;
  v202 = sub_1CA94C438("Combine ${WFInput} ${WFImageCombineMode}", 40);
  v204 = v203;
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v215 - v236;
  sub_1CA948D98();
  v206 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v215 - v239;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209 = sub_1CA2F9F14(v199, v201, v202, v204, 0, 0, v205, v207);
  v210 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v211 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v212 = v234;
  v234[55] = v210;
  v212[58] = v211;
  v212[59] = @"ResidentCompatible";
  v212[63] = MEMORY[0x1E69E6370];
  *(v212 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v213 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA451E60()
{
  v71 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x666F646E61484657;
  *(inited + 48) = 0xEF6E6F6974634166;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("apple|watch|send|phone|transfer|switch|handoff|continuity|workflow", 66);
  v6 = v5;
  v7 = sub_1CA94C438("apple|watch|send|phone|transfer|switch|handoff|continuity|workflow", 66);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v11;
  v12 = &v67 - v76;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v73 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v74 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v67 - v75;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v72 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v70 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Switches into the Shortcuts app and continues to the next action.", 65);
  v68 = v27;
  v28 = sub_1CA94C438("Switches into the Shortcuts app and continues to the next action.", 65);
  v30 = v29;
  v69 = &v67;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v67 - v76;
  sub_1CA948D98();
  v32 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v67 - v75;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v68, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v72;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v70;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438("Dismiss Siri and Continue (Action Name)", 39);
  v69 = v43;
  v44 = sub_1CA94C438("Dismiss Siri and Continue", 25);
  v46 = v45;
  v70 = &v67;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v67 - v76;
  sub_1CA948D98();
  v48 = v73;
  v49 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v67 - v75;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v42, v69, v44, v46, 0, 0, v47, v50);
  *(inited + 304) = v72;
  *(inited + 312) = @"ParameterSummary";
  v52 = @"ParameterSummary";
  v53 = sub_1CA94C438("Dismiss Siri and Continue (Parameter Summary)", 45);
  v70 = v54;
  v55 = sub_1CA94C438("Dismiss Siri and Continue", 25);
  v57 = v56;
  v72 = &v67;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v67 - v76;
  sub_1CA948D98();
  v59 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v67 - v75;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v53, v70, v55, v57, 0, 0, v58, v60);
  v63 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v64 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v63;
  *(inited + 344) = v64;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F49FB680;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v65 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFTimeTriggerOffset.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC445910 = a1;
}

unint64_t sub_1CA452770()
{
  result = qword_1EC445918;
  if (!qword_1EC445918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445920, &qword_1CA988688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445918);
  }

  return result;
}

uint64_t sub_1CA4527D4@<X0>(uint64_t *a1@<X8>)
{
  result = static WFTimeTriggerOffset.allCases.getter();
  *a1 = result;
  return result;
}

id sub_1CA452830()
{
  v378 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B7C30;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("image|reddit|album|photo", 24);
  v6 = v5;
  v7 = sub_1CA94C438("image|reddit|album|photo", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v402 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v403 = v11;
  v12 = &v364 - v402;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v401 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v404 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v400 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v364 - v400;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v399 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v377 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v398 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v376 = xmmword_1CA97EDF0;
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionNote";
  v24 = @"Description";
  v25 = @"DescriptionNote";
  v26 = sub_1CA94C438("Powered by Imgur (imgur.com)", 28);
  v395 = v27;
  v396 = v26;
  v28 = sub_1CA94C438("Powered by Imgur (imgur.com)", 28);
  v30 = v29;
  v397 = &v364;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v364 - v402;
  sub_1CA948D98();
  v32 = v401;
  v33 = [v401 bundleURL];
  v393 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v400;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v396, v395, v28, v30, 0, 0, v31, &v364 - v35);
  v37 = v399;
  *(v23 + 64) = v399;
  *(v23 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438("Uploads the input to Imgur.", 27);
  v395 = v40;
  v396 = v39;
  v41 = sub_1CA94C438("Uploads the input to Imgur.", 27);
  v43 = v42;
  v397 = &v364;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v364 - v402;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v396, v395, v41, v43, 0, 0, v44, &v364 - v35);
  *(v23 + 104) = v37;
  *(v23 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v48 = sub_1CA94C1E8();
  v49 = v398;
  v50 = sub_1CA6B3784(v48);
  v51 = v393;
  v393[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v391 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x7475706E494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v398;
  *(v52 + 192) = &unk_1F49FB7C8;
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v397 = v56;
  v51[25] = v55;
  v51[28] = v56;
  v51[29] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438("Upload to Imgur (Action Name)", 29);
  v394 = v59;
  v395 = v58;
  v60 = sub_1CA94C438("Upload to Imgur", 15);
  v62 = v61;
  v396 = &v364;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v364 - v402;
  sub_1CA948D98();
  v64 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v400;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v395, v394, v60, v62, 0, 0, v63, &v364 - v65);
  v68 = v393;
  v393[30] = v67;
  v69 = v399;
  v68[33] = v399;
  v68[34] = @"Output";
  v70 = swift_initStackObject();
  *(v70 + 16) = v391;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("Imgur URLs (Default Output Name)", 32);
  v394 = v73;
  v395 = v72;
  v74 = sub_1CA94C438("Imgur URLs", 10);
  v390 = v75;
  v396 = &v364;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v402;
  sub_1CA948D98();
  v77 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v395, v394, v74, v390, 0, 0, &v364 - v76, &v364 - v65);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v398;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F49FB7F8;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v393;
  v393[35] = v80;
  v81[38] = v397;
  v81[39] = @"Parameters";
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_1CA985370;
  v397 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v391;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000019;
  *(v82 + 48) = 0x80000001CA99B030;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"Key";
  *(v82 + 80) = 0x7475706E494657;
  *(v82 + 88) = 0xE700000000000000;
  *(v82 + 104) = v79;
  *(v82 + 112) = @"Label";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v83;
  v87 = v84;
  v88 = v85;
  *&v385 = v86;
  *&v386 = v87;
  v387 = v88;
  v89 = @"Parameters";
  v394 = sub_1CA94C438("Images (WFInput)", 16);
  v390 = v90;
  v389 = sub_1CA94C438("Images", 6);
  v92 = v91;
  v395 = &v364;
  MEMORY[0x1EEE9AC00](v389);
  v93 = v76;
  v94 = &v364 - v76;
  sub_1CA948D98();
  v95 = v401;
  v96 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v364 - v400;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 120) = sub_1CA2F9F14(v394, v390, v389, v92, 0, 0, v94, v97);
  v99 = v399;
  *(v82 + 144) = v399;
  *(v82 + 152) = @"Placeholder";
  v389 = @"Placeholder";
  v394 = sub_1CA94C438("Images (WFInput)", 16);
  v390 = v100;
  v101 = sub_1CA94C438("Images", 6);
  v384 = v102;
  v395 = &v364;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948D98();
  v103 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v364 - v400;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v394, v390, v101, v384, 0, 0, &v364 - v93, v104);
  *(v82 + 184) = v99;
  *(v82 + 160) = v106;
  _s3__C3KeyVMa_0(0);
  v395 = v107;
  v394 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v108 = sub_1CA94C1E8();
  v109 = sub_1CA2F864C(v108);
  *(v398 + 32) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v391;
  v379 = 0x80000001CA99E620;
  v390 = 0xD000000000000011;
  v111 = v385;
  *(v110 + 32) = v385;
  *(v110 + 40) = 0xD000000000000011;
  *(v110 + 48) = 0x80000001CA99E620;
  v112 = MEMORY[0x1E69E6158];
  *(v110 + 64) = MEMORY[0x1E69E6158];
  *(v110 + 72) = @"DefaultValue";
  *(v110 + 80) = 1;
  v113 = v386;
  *(v110 + 104) = MEMORY[0x1E69E6370];
  *(v110 + 112) = v113;
  *(v110 + 120) = 0xD000000000000010;
  *(v110 + 128) = 0x80000001CA9B7D20;
  v114 = v387;
  *(v110 + 144) = v112;
  *(v110 + 152) = v114;
  v115 = @"DefaultValue";
  *&v385 = v111;
  *&v386 = v113;
  v387 = v114;
  v375 = v115;
  v116 = sub_1CA94C438("Upload Anonymously (WFImgurAnonymous)", 37);
  v118 = v117;
  v119 = sub_1CA94C438("Upload Anonymously", 18);
  v121 = v120;
  *&v391 = &v364;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v364 - v402;
  sub_1CA948D98();
  v123 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v364 - v400;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  *(v110 + 184) = v399;
  *(v110 + 160) = v126;
  v127 = sub_1CA94C1E8();
  v128 = sub_1CA2F864C(v127);
  *(v398 + 40) = v128;
  v129 = swift_allocObject();
  v391 = xmmword_1CA981370;
  *(v129 + 16) = xmmword_1CA981370;
  v130 = v385;
  v131 = v390;
  *(v129 + 32) = v385;
  *(v129 + 40) = v131;
  *(v129 + 48) = v379;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = @"Description";
  v132 = @"Description";
  v371 = v130;
  *&v374 = v132;
  v133 = sub_1CA94C438("If enabled, the action will return a link to the image, and not its Imgur page. (WFImgurDirectLink)", 99);
  v383 = v134;
  v384 = v133;
  v135 = sub_1CA94C438("If enabled, the action will return a link to the image, and not its Imgur page.", 79);
  v382 = v136;
  *&v385 = &v364;
  MEMORY[0x1EEE9AC00](v135);
  v137 = v402;
  sub_1CA948D98();
  v138 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v400;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 80) = sub_1CA2F9F14(v384, v383, v135, v382, 0, 0, &v364 - v137, &v364 - v139);
  v141 = v399;
  v142 = v386;
  *(v129 + 104) = v399;
  *(v129 + 112) = v142;
  *(v129 + 120) = v390;
  *(v129 + 128) = 0x80000001CA9B7E50;
  v143 = v387;
  *(v129 + 144) = MEMORY[0x1E69E6158];
  *(v129 + 152) = v143;
  v373 = v142;
  v372 = v143;
  *&v386 = sub_1CA94C438("Direct Link (WFImgurDirectLink)", 31);
  *&v385 = v144;
  v145 = sub_1CA94C438("Direct Link", 11);
  v384 = v146;
  v387 = &v364;
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948D98();
  v147 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 160) = sub_1CA2F9F14(v386, v385, v145, v384, 0, 0, &v364 - v137, &v364 - v139);
  *(v129 + 184) = v141;
  *(v129 + 192) = @"RequiredResources";
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v149 = swift_allocObject();
  v386 = xmmword_1CA981310;
  *(v149 + 16) = xmmword_1CA981310;
  v150 = swift_allocObject();
  v385 = xmmword_1CA9813C0;
  *(v150 + 16) = xmmword_1CA9813C0;
  strcpy((v150 + 32), "WFParameterKey");
  *(v150 + 47) = -18;
  strcpy((v150 + 48), "WFImgurAlbum");
  *(v150 + 61) = 0;
  *(v150 + 62) = -5120;
  v384 = 0x80000001CA993570;
  v151 = MEMORY[0x1E69E6158];
  *(v150 + 72) = MEMORY[0x1E69E6158];
  *(v150 + 80) = 0xD000000000000010;
  *(v150 + 88) = 0x80000001CA993570;
  *(v150 + 96) = 0;
  v152 = MEMORY[0x1E69E6370];
  *(v150 + 120) = MEMORY[0x1E69E6370];
  *(v150 + 128) = 0x72756F7365524657;
  *(v150 + 168) = v151;
  v382 = 0xD00000000000001BLL;
  v383 = 0x80000001CA993590;
  *(v150 + 136) = 0xEF7373616C436563;
  *(v150 + 144) = 0xD00000000000001BLL;
  *(v150 + 152) = 0x80000001CA993590;
  v380 = @"RequiredResources";
  *(v149 + 32) = sub_1CA94C1E8();
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v129 + 224) = v381;
  *(v129 + 200) = v149;
  v153 = sub_1CA94C1E8();
  v154 = sub_1CA2F864C(v153);
  *(v398 + 48) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = v391;
  v156 = v371;
  v157 = v390;
  *(v155 + 32) = v371;
  *(v155 + 40) = v157;
  *(v155 + 48) = v379;
  v158 = v375;
  *(v155 + 64) = v151;
  *(v155 + 72) = v158;
  *(v155 + 80) = 0;
  v159 = v374;
  *(v155 + 104) = v152;
  *(v155 + 112) = v159;
  v371 = v156;
  v379 = v158;
  v375 = sub_1CA94C438("If enabled, the input images will be grouped into an album. Otherwise, the individual links will be returned. (WFImgurAlbum)", 124);
  *&v374 = v160;
  v161 = sub_1CA94C438("If enabled, the input images will be grouped into an album. Otherwise, the individual links will be returned.", 109);
  v163 = v162;
  v390 = &v364;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v364 - v402;
  sub_1CA948D98();
  v165 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = v400;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v155 + 120) = sub_1CA2F9F14(v375, v374, v161, v163, 0, 0, v164, &v364 - v166);
  v168 = v399;
  v170 = v372;
  v169 = v373;
  *(v155 + 144) = v399;
  *(v155 + 152) = v169;
  strcpy((v155 + 160), "WFImgurAlbum");
  *(v155 + 173) = 0;
  *(v155 + 174) = -5120;
  *(v155 + 184) = MEMORY[0x1E69E6158];
  *(v155 + 192) = v170;
  v368 = v169;
  v369 = v170;
  v375 = sub_1CA94C438("Create Album (WFImgurAlbum)", 27);
  *&v374 = v171;
  v172 = sub_1CA94C438("Create Album", 12);
  v373 = v173;
  v390 = &v364;
  MEMORY[0x1EEE9AC00](v172);
  v174 = &v364 - v402;
  sub_1CA948D98();
  v175 = v401;
  v176 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v375, v374, v172, v373, 0, 0, v174, &v364 - v166);
  *(v155 + 224) = v168;
  *(v155 + 200) = v178;
  v179 = sub_1CA94C1E8();
  v180 = sub_1CA2F864C(v179);
  *(v398 + 56) = v180;
  v181 = swift_allocObject();
  v374 = xmmword_1CA981380;
  *(v181 + 16) = xmmword_1CA981380;
  v372 = 0xD000000000000016;
  v373 = 0x80000001CA99C4A0;
  v182 = v371;
  *(v181 + 32) = v371;
  *(v181 + 40) = 0xD000000000000016;
  *(v181 + 48) = 0x80000001CA99C4A0;
  v183 = MEMORY[0x1E69E6158];
  v184 = v379;
  *(v181 + 64) = MEMORY[0x1E69E6158];
  *(v181 + 72) = v184;
  *(v181 + 80) = 1735355458;
  *(v181 + 88) = 0xE400000000000000;
  *(v181 + 104) = v183;
  *(v181 + 112) = @"Items";
  v390 = swift_allocObject();
  *(v390 + 1) = xmmword_1CA981570;
  v185 = @"Items";
  v370 = v182;
  v371 = v185;
  v186 = sub_1CA94C438("Blog (WFImgurAlbumLayout)", 25);
  v366 = v187;
  v367 = v186;
  v188 = sub_1CA94C438("Blog", 4);
  v365 = v189;
  v375 = &v364;
  MEMORY[0x1EEE9AC00](v188);
  v190 = v402;
  sub_1CA948D98();
  v191 = [v175 bundleURL];
  v364 = &v364;
  MEMORY[0x1EEE9AC00](v191);
  v192 = v400;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v367, v366, v188, v365, 0, 0, &v364 - v190, &v364 - v192);
  v390[4] = v194;
  v195 = sub_1CA94C438("Grid (WFImgurAlbumLayout)", 25);
  v366 = v196;
  v367 = v195;
  v197 = sub_1CA94C438("Grid", 4);
  v365 = v198;
  v375 = &v364;
  MEMORY[0x1EEE9AC00](v197);
  v199 = &v364 - v190;
  sub_1CA948D98();
  v200 = v401;
  v201 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v203 = sub_1CA2F9F14(v367, v366, v197, v365, 0, 0, v199, &v364 - v192);
  v204 = v390;
  v390[5] = v203;
  v205 = sub_1CA94C438("Horizontal (WFImgurAlbumLayout)", 31);
  v366 = v206;
  v367 = v205;
  v207 = sub_1CA94C438("Horizontal", 10);
  v365 = v208;
  v375 = &v364;
  MEMORY[0x1EEE9AC00](v207);
  v209 = &v364 - v402;
  sub_1CA948D98();
  v210 = [v200 bundleURL];
  v364 = &v364;
  MEMORY[0x1EEE9AC00](v210);
  v211 = v400;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v204 + 48) = sub_1CA2F9F14(v367, v366, v207, v365, 0, 0, v209, &v364 - v211);
  v213 = sub_1CA94C438("Vertical (WFImgurAlbumLayout)", 29);
  v366 = v214;
  v367 = v213;
  v215 = sub_1CA94C438("Vertical", 8);
  v365 = v216;
  v375 = &v364;
  MEMORY[0x1EEE9AC00](v215);
  v217 = v402;
  sub_1CA948D98();
  v218 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  sub_1CA948B68();

  v219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v220 = sub_1CA2F9F14(v367, v366, v215, v365, 0, 0, &v364 - v217, &v364 - v211);
  v221 = v390;
  v390[7] = v220;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v367 = v222;
  *(v181 + 120) = v221;
  v223 = v368;
  v224 = v369;
  *(v181 + 144) = v222;
  *(v181 + 152) = v223;
  v375 = 0xD000000000000012;
  *(v181 + 160) = 0xD000000000000012;
  *(v181 + 168) = 0x80000001CA9B8060;
  *(v181 + 184) = MEMORY[0x1E69E6158];
  *(v181 + 192) = v224;
  v368 = v223;
  v369 = v224;
  v225 = sub_1CA94C438("Album Layout (WFImgurAlbumLayout)", 33);
  v366 = v226;
  v227 = sub_1CA94C438("Album Layout", 12);
  v229 = v228;
  v390 = &v364;
  MEMORY[0x1EEE9AC00](v227);
  v230 = &v364 - v217;
  sub_1CA948D98();
  v231 = v401;
  v232 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v232);
  v233 = &v364 - v400;
  sub_1CA948B68();

  v234 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 200) = sub_1CA2F9F14(v225, v366, v227, v229, 0, 0, v230, v233);
  v235 = v380;
  *(v181 + 224) = v399;
  *(v181 + 232) = v235;
  v236 = swift_allocObject();
  *(v236 + 16) = v386;
  v237 = swift_allocObject();
  *(v237 + 16) = v385;
  strcpy((v237 + 32), "WFParameterKey");
  *(v237 + 47) = -18;
  strcpy((v237 + 48), "WFImgurAlbum");
  *(v237 + 61) = 0;
  *(v237 + 62) = -5120;
  v238 = MEMORY[0x1E69E6158];
  *(v237 + 72) = MEMORY[0x1E69E6158];
  *(v237 + 80) = 0xD000000000000010;
  *(v237 + 88) = v384;
  *(v237 + 96) = 1;
  *(v237 + 120) = MEMORY[0x1E69E6370];
  *(v237 + 128) = 0x72756F7365524657;
  *(v237 + 168) = v238;
  *(v237 + 136) = 0xEF7373616C436563;
  v239 = v383;
  *(v237 + 144) = v382;
  *(v237 + 152) = v239;
  v240 = v238;
  *(v236 + 32) = sub_1CA94C1E8();
  *(v181 + 264) = v381;
  *(v181 + 240) = v236;
  v241 = sub_1CA94C1E8();
  v242 = sub_1CA2F864C(v241);
  *(v398 + 64) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v374;
  v244 = v370;
  v246 = v372;
  v245 = v373;
  *(v243 + 32) = v370;
  *(v243 + 40) = v246;
  *(v243 + 48) = v245;
  v247 = v379;
  *(v243 + 64) = v240;
  *(v243 + 72) = v247;
  *(v243 + 80) = 0x6E6564646948;
  *(v243 + 88) = 0xE600000000000000;
  v248 = v371;
  *(v243 + 104) = v240;
  *(v243 + 112) = v248;
  v390 = swift_allocObject();
  *(v390 + 1) = xmmword_1CA981470;
  v388 = v244;
  v249 = sub_1CA94C438("Public (WFImgurAlbumPrivacy)", 28);
  v373 = v250;
  *&v374 = v249;
  v251 = sub_1CA94C438("Public", 6);
  v372 = v252;
  v379 = &v364;
  MEMORY[0x1EEE9AC00](v251);
  v253 = v402;
  sub_1CA948D98();
  v254 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v254);
  v255 = &v364 - v400;
  sub_1CA948B68();

  v256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v257 = sub_1CA2F9F14(v374, v373, v251, v372, 0, 0, &v364 - v253, v255);
  v390[4] = v257;
  v258 = sub_1CA94C438("Hidden (WFImgurAlbumPrivacy)", 28);
  v373 = v259;
  *&v374 = v258;
  v260 = sub_1CA94C438("Hidden", 6);
  v372 = v261;
  v379 = &v364;
  MEMORY[0x1EEE9AC00](v260);
  sub_1CA948D98();
  v262 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v262);
  v263 = v400;
  sub_1CA948B68();

  v264 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v265 = sub_1CA2F9F14(v374, v373, v260, v372, 0, 0, &v364 - v253, &v364 - v263);
  v390[5] = v265;
  v266 = sub_1CA94C438("Secret (WFImgurAlbumPrivacy)", 28);
  v373 = v267;
  *&v374 = v266;
  v268 = sub_1CA94C438("Secret", 6);
  v372 = v269;
  v379 = &v364;
  MEMORY[0x1EEE9AC00](v268);
  v270 = v402;
  sub_1CA948D98();
  v271 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v271);
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v273 = sub_1CA2F9F14(v374, v373, v268, v372, 0, 0, &v364 - v270, &v364 - v263);
  v274 = v390;
  v390[6] = v273;
  *(v243 + 120) = v274;
  v275 = v368;
  *(v243 + 144) = v367;
  *(v243 + 152) = v275;
  *(v243 + 160) = 0xD000000000000013;
  *(v243 + 168) = 0x80000001CA9B8120;
  v276 = v369;
  *(v243 + 184) = MEMORY[0x1E69E6158];
  *(v243 + 192) = v276;
  v379 = v275;
  v390 = v276;
  v373 = sub_1CA94C438("Album Privacy (WFImgurAlbumPrivacy)", 35);
  v278 = v277;
  v279 = sub_1CA94C438("Album Privacy", 13);
  v281 = v280;
  *&v374 = &v364;
  MEMORY[0x1EEE9AC00](v279);
  sub_1CA948D98();
  v282 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v364 - v400;
  sub_1CA948B68();

  v284 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 200) = sub_1CA2F9F14(v373, v278, v279, v281, 0, 0, &v364 - v270, v283);
  v285 = v380;
  *(v243 + 224) = v399;
  *(v243 + 232) = v285;
  v286 = swift_allocObject();
  *(v286 + 16) = v386;
  v287 = swift_allocObject();
  *(v287 + 16) = v385;
  strcpy((v287 + 32), "WFParameterKey");
  *(v287 + 47) = -18;
  strcpy((v287 + 48), "WFImgurAlbum");
  *(v287 + 61) = 0;
  *(v287 + 62) = -5120;
  v288 = MEMORY[0x1E69E6158];
  *(v287 + 72) = MEMORY[0x1E69E6158];
  *(v287 + 80) = 0xD000000000000010;
  *(v287 + 88) = v384;
  *(v287 + 96) = 1;
  *(v287 + 120) = MEMORY[0x1E69E6370];
  *(v287 + 128) = 0x72756F7365524657;
  *(v287 + 168) = v288;
  *(v287 + 136) = 0xEF7373616C436563;
  v289 = v383;
  *(v287 + 144) = v382;
  *(v287 + 152) = v289;
  v290 = v288;
  *(v286 + 32) = sub_1CA94C1E8();
  *(v243 + 264) = v381;
  *(v243 + 240) = v286;
  v291 = sub_1CA94C1E8();
  v292 = sub_1CA2F864C(v291);
  *(v398 + 72) = v292;
  v293 = swift_allocObject();
  *(v293 + 16) = v391;
  v392 = 0xD000000000000014;
  *(v293 + 32) = v388;
  *(v293 + 40) = 0xD000000000000014;
  v387 = 0x80000001CA99B500;
  *(v293 + 48) = 0x80000001CA99B500;
  v294 = v379;
  *(v293 + 64) = v290;
  *(v293 + 72) = v294;
  strcpy((v293 + 80), "WFImgurTitle");
  *(v293 + 93) = 0;
  *(v293 + 94) = -5120;
  v295 = v390;
  *(v293 + 104) = v290;
  *(v293 + 112) = v295;
  v296 = sub_1CA94C438("Title (WFImgurTitle)", 20);
  v384 = v297;
  *&v385 = v296;
  v298 = sub_1CA94C438("Title", 5);
  v383 = v299;
  *&v386 = &v364;
  MEMORY[0x1EEE9AC00](v298);
  v300 = &v364 - v402;
  sub_1CA948D98();
  v301 = v401;
  v302 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v302);
  v303 = v400;
  sub_1CA948B68();

  v304 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v293 + 120) = sub_1CA2F9F14(v385, v384, v298, v383, 0, 0, v300, &v364 - v303);
  v305 = v399;
  v306 = v389;
  *(v293 + 144) = v399;
  *(v293 + 152) = v306;
  v307 = sub_1CA94C438("optional (WFImgurTitle)", 23);
  v384 = v308;
  *&v385 = v307;
  v309 = sub_1CA94C438("optional", 8);
  v383 = v310;
  *&v386 = &v364;
  MEMORY[0x1EEE9AC00](v309);
  v311 = &v364 - v402;
  sub_1CA948D98();
  v312 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v312);
  sub_1CA948B68();

  v313 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v293 + 160) = sub_1CA2F9F14(v385, v384, v309, v383, 0, 0, v311, &v364 - v303);
  *(v293 + 184) = v305;
  *(v293 + 192) = @"TextAlignment";
  v314 = MEMORY[0x1E69E6158];
  *(v293 + 224) = MEMORY[0x1E69E6158];
  *(v293 + 200) = 0x7468676952;
  *(v293 + 208) = 0xE500000000000000;
  v315 = @"TextAlignment";
  v316 = sub_1CA94C1E8();
  v317 = sub_1CA2F864C(v316);
  *(v398 + 80) = v317;
  v318 = swift_allocObject();
  *(v318 + 16) = v391;
  v319 = v392;
  *(v318 + 32) = v388;
  *(v318 + 40) = v319;
  *(v318 + 48) = v387;
  v320 = v379;
  *(v318 + 64) = v314;
  *(v318 + 72) = v320;
  *(v318 + 80) = v375;
  *(v318 + 88) = 0x80000001CA9B81C0;
  v321 = v390;
  *(v318 + 104) = v314;
  *(v318 + 112) = v321;
  v392 = sub_1CA94C438("Description (WFImgurDescription)", 32);
  *&v391 = v322;
  v323 = sub_1CA94C438("Description", 11);
  v390 = v324;
  v396 = &v364;
  MEMORY[0x1EEE9AC00](v323);
  v325 = v402;
  sub_1CA948D98();
  v326 = v401;
  v327 = [v401 bundleURL];
  v388 = &v364;
  MEMORY[0x1EEE9AC00](v327);
  v328 = v400;
  sub_1CA948B68();

  v329 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v318 + 120) = sub_1CA2F9F14(v392, v391, v323, v390, 0, 0, &v364 - v325, &v364 - v328);
  v330 = v399;
  *(v318 + 144) = v399;
  *(v318 + 152) = @"Multiline";
  *(v318 + 160) = 1;
  v331 = v389;
  *(v318 + 184) = MEMORY[0x1E69E6370];
  *(v318 + 192) = v331;
  v332 = @"Multiline";
  v392 = sub_1CA94C438("Description (WFImgurDescription)", 32);
  *&v391 = v333;
  v334 = sub_1CA94C438("Description", 11);
  v390 = v335;
  v396 = &v364;
  MEMORY[0x1EEE9AC00](v334);
  sub_1CA948D98();
  v336 = [v326 bundleURL];
  MEMORY[0x1EEE9AC00](v336);
  sub_1CA948B68();

  v337 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v338 = sub_1CA2F9F14(v392, v391, v334, v390, 0, 0, &v364 - v325, &v364 - v328);
  *(v318 + 224) = v330;
  *(v318 + 200) = v338;
  v339 = sub_1CA94C1E8();
  v340 = sub_1CA2F864C(v339);
  v341 = v398;
  *(v398 + 88) = v340;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v343 = v393;
  v393[40] = v341;
  v343[43] = v342;
  v343[44] = @"ParameterSummary";
  v344 = @"ParameterSummary";
  v345 = sub_1CA94C438("Upload ${WFInput} (Parameter Summary)", 37);
  v347 = v346;
  v348 = sub_1CA94C438("Upload ${WFInput}", 17);
  v350 = v349;
  MEMORY[0x1EEE9AC00](v348);
  v351 = &v364 - v402;
  sub_1CA948D98();
  v352 = [v401 bundleURL];
  MEMORY[0x1EEE9AC00](v352);
  v353 = &v364 - v400;
  sub_1CA948B68();

  v354 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v355 = sub_1CA2F9F14(v345, v347, v348, v350, 0, 0, v351, v353);
  v356 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v357 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v358 = v393;
  v393[45] = v356;
  v358[48] = v357;
  v358[49] = @"RequiredResources";
  v359 = v358;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v360 = swift_allocObject();
  *(v360 + 16) = v376;
  v361 = @"RequiredResources";
  v362 = MEMORY[0x1E69E6158];
  *(v360 + 32) = sub_1CA94C1E8();
  *(v360 + 88) = v362;
  *(v360 + 56) = v377;
  *(v360 + 64) = 0xD00000000000001CLL;
  *(v360 + 72) = 0x80000001CA993620;
  v359[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v359[50] = v360;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4554FC()
{
  v199 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9B8270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v209 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("local|notification|show|alert|reminder|push", 43);
  v6 = v5;
  v7 = sub_1CA94C438("local|notification|show|alert|reminder|push", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v215 = v11;
  v218 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v193 - v218;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v213 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v216 = v15;
  v214 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v193 - v214;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v217 = v19;
  v20 = v209;
  v209[10] = v18;
  v20[13] = v19;
  v20[14] = @"Description";
  v212 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v210 = sub_1CA94C438("An image or video to include in the notification", 48);
  v208 = v24;
  v25 = sub_1CA94C438("An image or video to include in the notification", 48);
  v27 = v26;
  v211 = &v193;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v193 - v218;
  sub_1CA948D98();
  v29 = v213;
  v30 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v214;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v210, v208, v25, v27, 0, 0, v28, &v193 - v31);
  v33 = v217;
  *(v21 + 64) = v217;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v210 = sub_1CA94C438("Displays a local notification.", 30);
  v208 = v35;
  v36 = sub_1CA94C438("Displays a local notification.", 30);
  v38 = v37;
  v211 = &v193;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v193 - v218;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v210, v208, v36, v38, 0, 0, v39, &v193 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v212;
  v45 = sub_1CA6B3784(v43);
  v46 = v209;
  v209[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 6579538;
  v46[21] = 0xE300000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0x6461622E6C6C6562;
  v46[26] = 0xEF6C6C69662E6567;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v205 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  v201 = 0xD000000000000018;
  v202 = 0x80000001CA9B8320;
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0xD000000000000018;
  *(v49 + 104) = 0x80000001CA9B8320;
  *(v49 + 120) = v47;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 0;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  v51 = v50;
  *(v49 + 184) = 0xE500000000000000;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v210;
  *(v49 + 192) = &unk_1F49FB868;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v48[30] = v55;
  v48[33] = v56;
  v48[34] = @"InputPassthrough";
  *(v48 + 280) = 1;
  v48[38] = v51;
  v48[39] = @"Name";
  v57 = v48;
  v58 = @"InputPassthrough";
  v59 = @"Name";
  v60 = sub_1CA94C438("Show Notification (Action Name)", 31);
  v62 = v61;
  v63 = sub_1CA94C438("Show Notification", 17);
  v65 = v64;
  v212 = &v193;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v193 - v218;
  sub_1CA948D98();
  v67 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v193 - v214;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57[40] = sub_1CA2F9F14(v60, v62, v63, v65, 0, 0, v66, v68);
  v57[43] = v217;
  v57[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v212 = swift_allocObject();
  *(v212 + 1) = xmmword_1CA981570;
  v211 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981370;
  v200 = 0x80000001CA99B500;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x80000001CA99B500;
  v71 = MEMORY[0x1E69E6158];
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = @"DisallowedVariableTypes";
  *(v70 + 80) = &unk_1F49FB898;
  *(v70 + 104) = v210;
  *(v70 + 112) = @"Key";
  v204 = 0xD000000000000019;
  *(v70 + 120) = 0xD000000000000019;
  *(v70 + 128) = 0x80000001CA9B8380;
  *(v70 + 144) = v71;
  *(v70 + 152) = @"Label";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = v72;
  v76 = v73;
  v77 = v74;
  v78 = @"DisallowedVariableTypes";
  v196 = v75;
  v197 = v76;
  v198 = v77;
  v195 = v78;
  v79 = @"Parameters";
  v206 = sub_1CA94C438("Title (WFNotificationActionTitle)", 33);
  v203 = v80;
  v81 = sub_1CA94C438("Title", 5);
  v83 = v82;
  v207 = &v193;
  MEMORY[0x1EEE9AC00](v81);
  v84 = v218;
  sub_1CA948D98();
  v85 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v193 - v214;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 160) = sub_1CA2F9F14(v206, v203, v81, v83, 0, 0, &v193 - v84, v86);
  *(v70 + 184) = v217;
  *(v70 + 192) = @"Placeholder";
  v203 = @"Placeholder";
  v206 = sub_1CA94C438("optional (WFNotificationActionTitle)", 36);
  v194 = v88;
  v89 = sub_1CA94C438("optional", 8);
  v91 = v90;
  v207 = &v193;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v193 - v84;
  sub_1CA948D98();
  v93 = v213;
  v94 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v193 - v214;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v206, v194, v89, v91, 0, 0, v92, v95);
  *(v70 + 224) = v217;
  *(v70 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  v207 = v98;
  v206 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v99 = sub_1CA94C1E8();
  v100 = sub_1CA2F864C(v99);
  v212[4] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1CA981380;
  v102 = v196;
  v103 = v197;
  *(v101 + 32) = v196;
  *(v101 + 40) = 0xD000000000000014;
  *(v101 + 48) = v200;
  v104 = MEMORY[0x1E69E6158];
  v105 = v195;
  *(v101 + 64) = MEMORY[0x1E69E6158];
  *(v101 + 72) = v105;
  *(v101 + 80) = &unk_1F49FB8C8;
  *(v101 + 104) = v210;
  *(v101 + 112) = v103;
  v106 = v202;
  *(v101 + 120) = v201;
  *(v101 + 128) = v106;
  v107 = v198;
  *(v101 + 144) = v104;
  *(v101 + 152) = v107;
  v201 = v102;
  v200 = v103;
  v202 = v107;
  v108 = sub_1CA94C438("Body (WFNotificationActionBody)", 31);
  v196 = v109;
  v197 = v108;
  v110 = sub_1CA94C438("Body", 4);
  v195 = v111;
  v198 = &v193;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v193 - v218;
  sub_1CA948D98();
  v113 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v214;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 160) = sub_1CA2F9F14(v197, v196, v110, v195, 0, 0, v112, &v193 - v114);
  *(v101 + 184) = v217;
  *(v101 + 192) = @"Multiline";
  *(v101 + 200) = 1;
  v116 = v203;
  *(v101 + 224) = MEMORY[0x1E69E6370];
  *(v101 + 232) = v116;
  v117 = @"Multiline";
  v118 = sub_1CA94C438("Hello, world! (WFNotificationActionBody)", 40);
  v196 = v119;
  v197 = v118;
  v120 = sub_1CA94C438("Hello, world!", 13);
  v195 = v121;
  v198 = &v193;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v193 - v218;
  sub_1CA948D98();
  v123 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v197, v196, v120, v195, 0, 0, v122, &v193 - v114);
  *(v101 + 264) = v217;
  *(v101 + 240) = v125;
  v126 = sub_1CA94C1E8();
  v127 = sub_1CA2F864C(v126);
  v212[5] = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = v205;
  *(v128 + 32) = v201;
  *(v128 + 40) = 0xD000000000000011;
  *(v128 + 48) = 0x80000001CA99E620;
  v129 = MEMORY[0x1E69E6158];
  *(v128 + 64) = MEMORY[0x1E69E6158];
  *(v128 + 72) = @"DefaultValue";
  *(v128 + 80) = 1;
  v130 = v200;
  *(v128 + 104) = MEMORY[0x1E69E6370];
  *(v128 + 112) = v130;
  *(v128 + 120) = v204;
  *(v128 + 128) = 0x80000001CA9B8470;
  v131 = v202;
  *(v128 + 144) = v129;
  *(v128 + 152) = v131;
  v132 = @"DefaultValue";
  v133 = sub_1CA94C438("Play Sound (WFNotificationActionSound)", 38);
  v197 = v134;
  v135 = sub_1CA94C438("Play Sound", 10);
  v137 = v136;
  v198 = &v193;
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v193 - v218;
  sub_1CA948D98();
  v139 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v193 - v214;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v133, v197, v135, v137, 0, 0, v138, v140);
  *(v128 + 184) = v217;
  *(v128 + 160) = v142;
  v143 = sub_1CA94C1E8();
  v144 = sub_1CA2F864C(v143);
  v212[6] = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = v205;
  v146 = v204;
  *(v145 + 32) = v201;
  *(v145 + 40) = v146;
  *(v145 + 48) = 0x80000001CA99B030;
  v147 = MEMORY[0x1E69E6158];
  v148 = v200;
  *(v145 + 64) = MEMORY[0x1E69E6158];
  *(v145 + 72) = v148;
  *(v145 + 80) = 0x7475706E494657;
  *(v145 + 88) = 0xE700000000000000;
  v149 = v202;
  *(v145 + 104) = v147;
  *(v145 + 112) = v149;
  v150 = sub_1CA94C438("Attachment (WFInput)", 20);
  v204 = v151;
  *&v205 = v150;
  v152 = sub_1CA94C438("Attachment", 10);
  v202 = v153;
  v208 = &v193;
  MEMORY[0x1EEE9AC00](v152);
  v154 = v218;
  sub_1CA948D98();
  v155 = v209;
  v156 = v213;
  v157 = [v213 bundleURL];
  v201 = &v193;
  MEMORY[0x1EEE9AC00](v157);
  v158 = v214;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v145 + 120) = sub_1CA2F9F14(v205, v204, v152, v202, 0, 0, &v193 - v154, &v193 - v158);
  v160 = v203;
  *(v145 + 144) = v217;
  *(v145 + 152) = v160;
  v161 = sub_1CA94C438("Choose Variable (WFInput)", 25);
  v204 = v162;
  *&v205 = v161;
  v163 = sub_1CA94C438("Choose Variable", 15);
  v203 = v164;
  v208 = &v193;
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948D98();
  v165 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v205, v204, v163, v203, 0, 0, &v193 - v154, &v193 - v158);
  *(v145 + 184) = v217;
  *(v145 + 160) = v167;
  v168 = sub_1CA94C1E8();
  v169 = sub_1CA2F864C(v168);
  v170 = v212;
  v212[7] = v169;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v155[45] = v170;
  v155[48] = v171;
  v155[49] = @"ParameterSummary";
  v172 = @"ParameterSummary";
  v173 = sub_1CA94C438("Show notification ${WFNotificationActionBody} (Parameter Summary)", 65);
  v175 = v174;
  v176 = sub_1CA94C438("Show notification ${WFNotificationActionBody}", 45);
  v178 = v177;
  v217 = &v193;
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v193 - v218;
  sub_1CA948D98();
  v180 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v193 - v214;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v183 = sub_1CA2F9F14(v173, v175, v176, v178, 0, 0, v179, v181);
  v184 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v185 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v155[50] = v184;
  v155[53] = v185;
  v155[54] = @"RateLimit";
  v186 = @"RateLimit";
  v187 = sub_1CA94C1E8();
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B18, "~R\t");
  v155[55] = v187;
  v155[58] = v188;
  v155[59] = @"RequiredResources";
  v155[60] = &unk_1F49FB960;
  v189 = v210;
  v155[63] = v210;
  v155[64] = @"UserInterfaces";
  v155[68] = v189;
  v155[65] = &unk_1F49FB9B0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v190 = @"RequiredResources";
  v191 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA456B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372656E6E6162 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEB00000000736E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

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

uint64_t sub_1CA456C30(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x7372656E6E6162;
  }
}

uint64_t sub_1CA456C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA456B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA456CD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA456C28();
  *a1 = result;
  return result;
}

uint64_t sub_1CA456D00(uint64_t a1)
{
  v2 = sub_1CA45A63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA456D3C(uint64_t a1)
{
  v2 = sub_1CA45A63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA456D78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445980, &qword_1CA988740);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA45A63C();
  sub_1CA94D9A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445990, &qword_1CA988748);
  v9 = 0;
  sub_1CA45A6E4(&qword_1EC445998, &qword_1EC445990, &qword_1CA988748, sub_1CA45A690);
  sub_1CA94D728();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4459A8, &qword_1CA988750);
  v9 = 1;
  sub_1CA45A6E4(&qword_1EC4459B0, &qword_1EC4459A8, &qword_1CA988750, sub_1CA45A760);
  sub_1CA94D728();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1CA456FE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

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

uint64_t sub_1CA4570A8(char a1)
{
  if (a1)
  {
    return 1701273968;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1CA4570CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4459D8, &qword_1CA988928);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA45A96C();
  sub_1CA94D9A8();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1CA94D718();
    v10 = 1;
    sub_1CA94D718();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1CA4572B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756374726F6873 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

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

uint64_t sub_1CA457378(char a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1 & 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA4573C0(char a1)
{
  if (a1)
  {
    return 0x74756374726F6873;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1CA4573F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4459E8, &qword_1CA988930);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA45A9C0();
  sub_1CA94D9A8();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1CA94D718();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    v9[15] = 1;
    sub_1CA45AA14();
    sub_1CA94D728();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1CA4575F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA456D78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1CA457628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA456FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA457650(uint64_t a1)
{
  v2 = sub_1CA45A96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA45768C(uint64_t a1)
{
  v2 = sub_1CA45A96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4576C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA4570CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1CA4576F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA45774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA4572B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA457774(uint64_t a1)
{
  v2 = sub_1CA45A9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4577B0(uint64_t a1)
{
  v2 = sub_1CA45A9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4577EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA4573F0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

id sub_1CA45781C()
{
  result = sub_1CA45783C();
  qword_1EC445928 = result;
  return result;
}

id sub_1CA45783C()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CA948BA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EC442D88 != -1)
  {
    swift_once();
  }

  v7 = sub_1CA45A438(0x7972656C6C6147, 0xE700000000000000, 0x656C646E7562, 0xE600000000000000, qword_1EC445BE0);
  if (v7)
  {
    v8 = v7;
    sub_1CA948B68();

    v9 = sub_1CA25B3D0(0, &qword_1EC443878, 0x1E696AAE8);
    MEMORY[0x1EEE9AC00](v9);
    (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v10 = sub_1CA457B0C(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 8))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  }

  else
  {
    sub_1CA949C58();
    v11 = sub_1CA949F68();
    v12 = sub_1CA94CC18();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1CA256000, v11, v12, "Unable to find Gallery.bundle", v13, 2u);
      MEMORY[0x1CCAA4BF0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v10;
}

id sub_1CA457B0C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CA948B48();
  v4 = [v2 initWithURL_];

  v5 = sub_1CA948BA8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void *sub_1CA457BA8()
{
  result = sub_1CA457BC8();
  off_1EC445930 = result;
  return result;
}

uint64_t sub_1CA457BC8()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - v5;
  if (qword_1EC442D60 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC445928;
  if (qword_1EC445928)
  {
    v22[1] = v4;
    v23 = v1;
    v24 = v0;
    v8 = sub_1CA948BA8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = v7;
    v13 = sub_1CA45A438(0x7972656C6C6167, 0xE700000000000000, 0x7473696C70, 0xE500000000000000, v12);
    if (MEMORY[0x1EEE9AC00](v13))
    {
      sub_1CA948B68();

      (*(v9 + 32))(v11, v11, v8);
      v17 = sub_1CA948BB8();
      v19 = v18;
      sub_1CA9489C8();
      swift_allocObject();
      sub_1CA9489B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445968, &qword_1CA9886E0);
      sub_1CA45A54C();
      sub_1CA9489A8();
      (*(v9 + 8))(v11, v8);

      sub_1CA266F2C(v17, v19);
      return v25;
    }

    v1 = v23;
    v0 = v24;
  }

  sub_1CA949C58();
  v14 = sub_1CA949F68();
  v15 = sub_1CA94CC18();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CA256000, v14, v15, "Unable to locate gallery.plist", v16, 2u);
    MEMORY[0x1CCAA4BF0](v16, -1, -1);
  }

  (*(v1 + 8))(v6, v0);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA45811C()
{
  result = sub_1CA45813C();
  qword_1EC461698 = result;
  return result;
}

uint64_t sub_1CA45813C()
{
  v71 = sub_1CA949F78();
  v0 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v2 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC442D60 != -1)
  {
LABEL_57:
    swift_once();
  }

  v3 = qword_1EC445928;
  if (!qword_1EC445928)
  {
    sub_1CA25B3D0(0, &qword_1EC445938, off_1E836E3F0);

    return sub_1CA94C1E8();
  }

  v4 = sub_1CA25B3D0(0, &qword_1EC445938, off_1E836E3F0);
  v81 = v3;
  v68 = v4;
  v73 = sub_1CA94C1E8();
  if (qword_1EC442D68 != -1)
  {
    swift_once();
  }

  v5 = off_1EC445930 + 64;
  v6 = 1 << *(off_1EC445930 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(off_1EC445930 + 8);
  v9 = (v6 + 63) >> 6;
  v10 = *MEMORY[0x1E69E10A8];
  v69 = (v0 + 8);
  v70 = v10;
  v78 = off_1EC445930;
  sub_1CA94C218();
  v11 = 0;
  v72 = v2;
  v75 = v9;
  v76 = v5;
LABEL_8:
  while (2)
  {
    v12 = v11;
    while (1)
    {
      while (1)
      {
        if (!v8)
        {
          while (1)
          {
            v11 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v11 >= v9)
            {

              return v73;
            }

            v8 = *&v5[8 * v11];
            ++v12;
            if (v8)
            {
              goto LABEL_14;
            }
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v11 = v12;
LABEL_14:
        v80 = (v8 - 1) & v8;
        v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
        v14 = (v78[6] + v13);
        v15 = v14[1];
        v16 = (v78[7] + v13);
        v0 = *v16;
        v17 = v16[1];
        v18 = *v14 == 0x65646F6D5F657375 && v15 == 0xE90000000000006CLL;
        v79 = *v14;
        if (!v18 && (sub_1CA94D7F8() & 1) == 0)
        {
          break;
        }

        v19 = objc_opt_self();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        v20 = [v19 shared];
        v21 = [v20 isActionVisible];

        if (v21)
        {
          goto LABEL_24;
        }

        sub_1CA949C58();
        v0 = sub_1CA949F68();
        v22 = sub_1CA94CC38();
        if (os_log_type_enabled(v0, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1CA256000, v0, v22, "Ignoring use_model content due to action disablement", v23, 2u);
          MEMORY[0x1CCAA4BF0](v23, -1, -1);
        }

        (*v69)(v2, v71);
        v12 = v11;
        v9 = v75;
        v5 = v76;
        v8 = v80;
      }

      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
LABEL_24:
      v77 = v15;
      v24 = *(v0 + 16);
      if (v24)
      {
        v87 = MEMORY[0x1E69E7CC0];
        sub_1CA94D508();
        v2 = 0;
        v25 = (v0 + 56);
        while (v2 < *(v0 + 16))
        {
          v26 = *(v25 - 2);
          v27 = *(v25 - 1);
          v28 = *v25;
          v82 = *(v25 - 3);
          v83 = v26;
          v84 = v27;
          v85 = v28;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA458AF4(&v82, v81, &v86);

          ++v2;
          sub_1CA94D4D8();
          sub_1CA94D518();
          sub_1CA94D528();
          sub_1CA94D4E8();
          v25 += 4;
          if (v24 == v2)
          {
            v29 = v87;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v29 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v74 = v29;
      v30 = *(v17 + 16);
      if (v30)
      {
        v87 = MEMORY[0x1E69E7CC0];
        sub_1CA94D508();
        v2 = 0;
        v31 = (v17 + 48);
        while (v2 < *(v17 + 16))
        {
          v32 = *(v31 - 1);
          v33 = *v31;
          v82 = *(v31 - 2);
          v83 = v32;
          v84 = v33;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA458F7C(&v82, v81, &v86);

          ++v2;
          sub_1CA94D4D8();
          sub_1CA94D518();
          sub_1CA94D528();
          sub_1CA94D4E8();
          v31 += 3;
          if (v30 == v2)
          {

            v0 = v87;
            goto LABEL_36;
          }
        }

        goto LABEL_55;
      }

      v0 = MEMORY[0x1E69E7CC0];
LABEL_36:
      sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
      v34 = v77;
      sub_1CA94C218();
      v35 = v79;
      v36 = sub_1CA458F08(v79);
      v82 = 0x2D65676170;
      v83 = 0xE500000000000000;
      MEMORY[0x1CCAA1300](v35, v34);
      MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
      v37 = sub_1CA94C368();

      v38 = sub_1CA94C368();
      v39 = [v81 localizedStringForKey:v37 value:0 table:v38];

      v40 = sub_1CA94C3A8();
      v42 = v41;

      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v43 = sub_1CA94CFA8();
      objc_allocWithZone(WFGalleryPage);
      sub_1CA94C218();
      v44 = sub_1CA45A288(v36, v40, v42, 0, v43, v74, v0, 0, 0, 0, v35, v34);
      if (v44)
      {
        break;
      }

      v45 = sub_1CA271BF8(v35, v34);
      if (v46)
      {
        v0 = v45;
        v56 = v73;
        swift_isUniquelyReferenced_nonNull_native();
        v82 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445948, &qword_1CA9886D8);
        sub_1CA94D588();
        v57 = v82;

        v58 = *(*(v57 + 56) + 8 * v0);
        v73 = v57;
        sub_1CA94D5A8();

        v2 = v72;
        v9 = v75;
        v5 = v76;
        v8 = v80;
        goto LABEL_8;
      }

      v12 = v11;
      v2 = v72;
      v9 = v75;
      v5 = v76;
      v8 = v80;
    }

    v0 = v44;
    v47 = v73;
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v47;
    v48 = sub_1CA271BF8(v35, v34);
    if (__OFADD__(*(v47 + 16), (v49 & 1) == 0))
    {
      __break(1u);
      goto LABEL_59;
    }

    v50 = v48;
    v51 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445948, &qword_1CA9886D8);
    if ((sub_1CA94D588() & 1) == 0)
    {
      v54 = v51;
      v2 = v72;
      v8 = v80;
LABEL_45:
      v59 = v82;
      v73 = v82;
      if (v54)
      {
        v60 = *(v82 + 56);
        v61 = *(v60 + 8 * v50);
        *(v60 + 8 * v50) = v0;

LABEL_49:
        v9 = v75;
        v5 = v76;
        continue;
      }

      *(v82 + 8 * (v50 >> 6) + 64) |= 1 << v50;
      v62 = (v59[6] + 16 * v50);
      v63 = v77;
      *v62 = v35;
      v62[1] = v63;
      *(v59[7] + 8 * v50) = v0;
      v64 = v59[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (!v65)
      {
        v59[2] = v66;
        goto LABEL_49;
      }

LABEL_59:
      __break(1u);

      __break(1u);
      goto LABEL_60;
    }

    break;
  }

  v52 = sub_1CA271BF8(v35, v77);
  v54 = v51;
  v55 = v51 & 1;
  v2 = v72;
  v8 = v80;
  if (v55 == (v53 & 1))
  {
    v50 = v52;
    goto LABEL_45;
  }

LABEL_60:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA458AF4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v35 = a1[3];
  v36 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA45A4CC(v4, v5, 6778480, 0xE300000000000000, a2);
  if (MEMORY[0x1EEE9AC00](v10))
  {
    sub_1CA948B68();

    v11 = sub_1CA948BA8();
    v12 = 0;
  }

  else
  {
    v11 = sub_1CA948BA8();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v12, 1, v11);
  v13 = sub_1CA2ED774(v9, v9);
  MEMORY[0x1EEE9AC00](v13);
  v14 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA2F13FC(v9, v14);
  sub_1CA948BA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v11);
  v16 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v33[1] = v33;
    v34 = a2;
    v17 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 32))(v19, v14, v11);
    v20 = objc_opt_self();
    v21 = sub_1CA948B48();
    v16 = [v20 fileWithURL:v21 options:0];

    (*(v17 + 8))(v19, v11);
    a2 = v34;
  }

  sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
  sub_1CA94C218();
  v22 = sub_1CA458F08(v4);
  v38 = 0x2D72656E6E6162;
  v39 = 0xE700000000000000;
  MEMORY[0x1CCAA1300](v4, v5);
  MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
  v23 = sub_1CA94C368();

  v24 = sub_1CA94C368();
  v25 = [a2 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_1CA94C3A8();
  v28 = v27;

  sub_1CA94C218();
  v29 = sub_1CA458F08(v36);
  v30 = objc_allocWithZone(WFGalleryBanner);
  v31 = sub_1CA459A9C(v22, v26, v28, 0, 0, v29, v16, 0, 0, 0, 0, 0, 0);
  result = sub_1CA30F7DC(v9, &qword_1EC444A90, &qword_1CA9827C0);
  *v37 = v31;
  return result;
}

id sub_1CA458F08(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C368();

  v3 = [v1 initWithRecordName_];

  return v3;
}

void sub_1CA458F7C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1CA94D408();

  MEMORY[0x1CCAA1300](v4, v5);
  MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
  v7 = sub_1CA94C368();

  v8 = sub_1CA94C368();
  v9 = [a2 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1CA94C3A8();
  v34 = v11;
  v35 = v10;

  sub_1CA94D408();

  v40 = 0x697463656C6C6F63;
  v41 = 0xEB000000002D6E6FLL;
  v36 = v5;
  v37 = v4;
  MEMORY[0x1CCAA1300](v4, v5);
  MEMORY[0x1CCAA1300](0x706972637365642DLL, 0xEC0000006E6F6974);
  v12 = sub_1CA94C368();

  v13 = sub_1CA94C368();
  v14 = [a2 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_1CA94C3A8();
  v32 = v16;
  v33 = v15;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v19 = *(v6 + 16);
  for (i = (v6 + 40); ; i += 2)
  {
    if (v19 == v17)
    {
      sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
      v23 = v36;
      sub_1CA94C218();
      v24 = v37;
      v25 = sub_1CA458F08(v37);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      MEMORY[0x1EEE9AC00](v26 - 8);
      v28 = &v32 - v27;
      v29 = sub_1CA948CB8();
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
      v30 = objc_allocWithZone(WFGalleryCollection);
      sub_1CA94C218();
      v31 = sub_1CA45A068(v25, v35, v34, v33, v32, v18, 0, 0, v28, 0, 0, 0, v24, v23);
      *v38 = v31;
      return;
    }

    if (v17 >= *(v6 + 16))
    {
      break;
    }

    v21 = *i;
    v40 = *(i - 1);
    v41 = v21;
    sub_1CA94C218();
    sub_1CA459334(&v40, a2, &v39);

    if (v39)
    {
      MEMORY[0x1CCAA1490](v22);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v18 = v42;
    }

    ++v17;
  }

  __break(1u);
}

uint64_t sub_1CA459334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a3;
  v70 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = sub_1CA948BA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v50 - v10;
  v66 = v5;
  v12 = sub_1CA45A4CC(v6, v5, 0x776F6C6677, 0xE500000000000000, a2);
  result = MEMORY[0x1EEE9AC00](v12);
  if (!result)
  {
    goto LABEL_6;
  }

  sub_1CA948B68();

  (*(v8 + 32))(&v50 - v10, &v50 - v10, v7);
  v14 = sub_1CA948BB8();
  if (v3)
  {

LABEL_4:
    result = (*(v8 + 8))(v11, v7);
LABEL_6:
    *v67 = 0;
    return result;
  }

  v16 = v15;
  v64 = v6;
  v65 = v7;
  v68 = v6;
  v69 = v66;
  v17 = v14;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
  v18 = v16;
  v19 = sub_1CA94C368();

  v20 = sub_1CA94C368();
  v21 = [a2 localizedStringForKey:v19 value:0 table:v20];

  v22 = v18;
  v23 = sub_1CA94C3A8();
  v25 = v24;

  v26 = objc_allocWithZone(WFWorkflowFile);
  sub_1CA25CF98(v17, v22);
  sub_1CA94C218();
  v27 = sub_1CA459C28(v17, v22, v23, v25);
  v61 = v23;
  v62 = v25;
  v28 = v64;
  v7 = v65;
  v63 = v17;
  if (!v27)
  {
    sub_1CA266F2C(v63, v22);

    result = (*(v8 + 8))(v11, v7);
    goto LABEL_6;
  }

  v68 = 0;
  v60 = v27;
  v29 = [v27 recordRepresentationWithError_];
  v30 = v68;
  if (!v29)
  {
    v48 = v30;

    v49 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA266F2C(v63, v22);
    goto LABEL_4;
  }

  v59 = v29;
  v31 = v28;
  v32._countAndFlagsBits = v28;
  v33 = v66;
  v32._object = v66;
  WFWorkflowRecord.importLocalizedStrings(table:bundle:)(v32, a2);
  v68 = v28;
  v69 = v33;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](0x706972637365642DLL, 0xEC0000006E6F6974);
  v34 = sub_1CA94C368();

  v35 = sub_1CA94C368();
  v36 = [a2 localizedStringForKey:v34 value:0 table:v35];
  v58 = v22;
  v37 = v36;

  v38 = sub_1CA94C3A8();
  v56 = v39;
  v57 = v38;

  sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
  sub_1CA94C218();
  v55 = sub_1CA458F08(v31);
  sub_1CA94C218();
  v40 = v59;
  v54 = [v59 icon];
  sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v52 = v40;
  v51 = sub_1CA94CFA8();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v53 = &v50;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = sub_1CA948CB8();
  v45 = __swift_storeEnumTagSinglePayload(&v50 - v43, 1, 1, v44);
  v50 = &v50;
  MEMORY[0x1EEE9AC00](v45);
  __swift_storeEnumTagSinglePayload(&v50 - v43, 1, 1, v44);
  v46 = objc_allocWithZone(WFGalleryWorkflow);
  sub_1CA94C218();
  v47 = sub_1CA459D44(v55, v61, v62, v57, v56, v57, v56, v54, v59, v51, 0, 0, 0, &v50 - v43, &v50 - v43, 0, 0, 0, v31, v33, 0, 0);

  sub_1CA266F2C(v63, v58);
  result = (*(v8 + 8))(v11, v65);
  *v67 = v47;
  return result;
}

void __swiftcall WFGallerySessionManager.localPage(id:)(WFGalleryPage_optional *__return_ptr retstr, Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  if (qword_1EC442D70 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC461698;
  if (*(qword_1EC461698 + 16))
  {
    v5 = sub_1CA271BF8(countAndFlagsBits, object);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }
  }
}

id sub_1CA459A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  if (a3)
  {
    v18 = sub_1CA94C368();
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v19 = sub_1CA94C368();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_1CA94C368();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_1CA94C368();
  }

  else
  {
    v21 = 0;
  }

  if (a13)
  {
    v22 = sub_1CA94C648();
  }

  else
  {
    v22 = 0;
  }

  v23 = [v14 initWithIdentifier:a1 name:v18 subtitle:v19 detailPage:a6 imageFile:a7 language:v20 base:a10 persistentIdentifier:v21 supportedIdioms:v22];

  return v23;
}

id sub_1CA459C28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1CA948BF8();
  if (a4)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  v15[0] = 0;
  v11 = [v5 initWithFileData:v9 name:v10 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  sub_1CA266F2C(a1, a2);
  return v11;
}

id sub_1CA459D44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  if (a3)
  {
    v34 = sub_1CA94C368();

    if (a5)
    {
LABEL_3:
      v33 = sub_1CA94C368();

      goto LABEL_6;
    }
  }

  else
  {
    v34 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v33 = 0;
LABEL_6:
  if (a7)
  {
    v32 = sub_1CA94C368();
  }

  else
  {
    v32 = 0;
  }

  if (a12)
  {
    v38 = sub_1CA94C648();
  }

  else
  {
    v38 = 0;
  }

  if (a13)
  {
    v31 = sub_1CA94C648();
  }

  else
  {
    v31 = 0;
  }

  v24 = sub_1CA948CB8();
  v25 = 0;
  if (__swift_getEnumTagSinglePayload(a14, 1, v24) != 1)
  {
    v25 = sub_1CA948C58();
    (*(*(v24 - 8) + 8))(a14, v24);
  }

  if (__swift_getEnumTagSinglePayload(a15, 1, v24) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1CA948C58();
    (*(*(v24 - 8) + 8))(a15, v24);
  }

  if (a17)
  {
    v27 = sub_1CA94C368();
  }

  else
  {
    v27 = 0;
  }

  if (a20)
  {
    v28 = sub_1CA94C368();
  }

  else
  {
    v28 = 0;
  }

  v30 = [v35 initWithIdentifier:a1 name:v34 shortDescription:v33 longDescription:v32 icon:a8 workflowRecord:a9 searchable:a10 minVersion:a11 hiddenRegions:v38 supportedIdioms:v31 createdAt:v25 modifiedAt:v26 language:v27 base:a18 persistentIdentifier:v28 shortcutFile:a21 iconFile:a22];

  return v30;
}

id sub_1CA45A068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  if (a3)
  {
    v18 = sub_1CA94C368();

    if (a5)
    {
LABEL_3:
      v19 = sub_1CA94C368();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  if (a6)
  {
    sub_1CA25B3D0(0, &qword_1EC445960, off_1E836E400);
    v20 = sub_1CA94C648();

    if (a8)
    {
LABEL_8:
      v21 = sub_1CA94C648();

      goto LABEL_11;
    }
  }

  else
  {
    v20 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v21 = 0;
LABEL_11:
  v22 = sub_1CA948CB8();
  v23 = 0;
  if (__swift_getEnumTagSinglePayload(a9, 1, v22) != 1)
  {
    v23 = sub_1CA948C58();
    (*(*(v22 - 8) + 8))(a9, v22);
  }

  if (a11)
  {
    v24 = sub_1CA94C368();
  }

  else
  {
    v24 = 0;
  }

  if (a14)
  {
    v25 = sub_1CA94C368();
  }

  else
  {
    v25 = 0;
  }

  v26 = [v28 initWithIdentifier:a1 name:v18 collectionDescription:v19 workflows:v20 minVersion:a7 supportedIdioms:v21 modifiedAt:v23 language:v24 base:a12 persistentIdentifier:v25];

  return v26;
}

id sub_1CA45A288(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (a3)
  {
    v17 = sub_1CA94C368();

    if (a6)
    {
LABEL_3:
      sub_1CA25B3D0(0, &qword_1EC445958, off_1E836E3E0);
      v18 = sub_1CA94C648();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (a7)
  {
    sub_1CA25B3D0(0, &qword_1EC445950, off_1E836E3E8);
    v19 = sub_1CA94C648();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_1CA94C368();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_1CA94C368();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithIdentifier:a1 name:v17 minVersion:a4 isRoot:a5 banners:v18 collections:v19 language:v20 base:a10 persistentIdentifier:v21];

  return v22;
}

id sub_1CA45A438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1CA94C368();

  v7 = sub_1CA94C368();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

id sub_1CA45A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1CA94C368();
  v7 = sub_1CA94C368();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1CA45A54C()
{
  result = qword_1EC445970;
  if (!qword_1EC445970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445968, &qword_1CA9886E0);
    sub_1CA45A5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445970);
  }

  return result;
}

unint64_t sub_1CA45A5D8()
{
  result = qword_1EC445978;
  if (!qword_1EC445978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445978);
  }

  return result;
}

unint64_t sub_1CA45A63C()
{
  result = qword_1EC445988;
  if (!qword_1EC445988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445988);
  }

  return result;
}

unint64_t sub_1CA45A690()
{
  result = qword_1EC4459A0;
  if (!qword_1EC4459A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459A0);
  }

  return result;
}

uint64_t sub_1CA45A6E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA45A760()
{
  result = qword_1EC4459B8;
  if (!qword_1EC4459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459B8);
  }

  return result;
}

uint64_t sub_1CA45A7D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CA45A814(uint64_t result, int a2, int a3)
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

unint64_t sub_1CA45A868()
{
  result = qword_1EC4459C0;
  if (!qword_1EC4459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459C0);
  }

  return result;
}

unint64_t sub_1CA45A8C0()
{
  result = qword_1EC4459C8;
  if (!qword_1EC4459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459C8);
  }

  return result;
}

unint64_t sub_1CA45A918()
{
  result = qword_1EC4459D0;
  if (!qword_1EC4459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459D0);
  }

  return result;
}

unint64_t sub_1CA45A96C()
{
  result = qword_1EC4459E0;
  if (!qword_1EC4459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459E0);
  }

  return result;
}

unint64_t sub_1CA45A9C0()
{
  result = qword_1EC4459F0;
  if (!qword_1EC4459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459F0);
  }

  return result;
}

unint64_t sub_1CA45AA14()
{
  result = qword_1EC4459F8;
  if (!qword_1EC4459F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459F8);
  }

  return result;
}

_BYTE *sub_1CA45AAA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA45AB80()
{
  result = qword_1EC445A00;
  if (!qword_1EC445A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A00);
  }

  return result;
}

unint64_t sub_1CA45ABD8()
{
  result = qword_1EC445A08;
  if (!qword_1EC445A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A08);
  }

  return result;
}

unint64_t sub_1CA45AC30()
{
  result = qword_1EC445A10;
  if (!qword_1EC445A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A10);
  }

  return result;
}

unint64_t sub_1CA45AC88()
{
  result = qword_1EC445A18;
  if (!qword_1EC445A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A18);
  }

  return result;
}

unint64_t sub_1CA45ACE0()
{
  result = qword_1EC445A20;
  if (!qword_1EC445A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A20);
  }

  return result;
}

unint64_t sub_1CA45AD38()
{
  result = qword_1EC445A28;
  if (!qword_1EC445A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A28);
  }

  return result;
}

id sub_1CA45ADDC()
{
  v143 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9B8570;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("maps|search|query|places|waze|google", 36);
  v6 = v5;
  v7 = sub_1CA94C438("maps|search|query|places|waze|google", 36);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v153 = v11;
  v154 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v133 - v154;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v152 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v150 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v133 - v151;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v149 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v146 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v147 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Opens your choice of Maps, Google Maps, or Waze and searches for the location, place, or text that was passed into the action.", 126);
  v144 = v27;
  v28 = sub_1CA94C438("Opens your choice of Maps, Google Maps, or Waze and searches for the location, place, or text that was passed into the action.", 126);
  v30 = v29;
  v145 = v133;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v133 - v154;
  sub_1CA948D98();
  v32 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v133 - v151;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v144, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v149;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v146;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v140 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v146;
  *(v38 + 192) = &unk_1F49FBA40;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v42;
  *(inited + 224) = v43;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438("Open in Maps (Action Name)", 26);
  v48 = v47;
  v49 = sub_1CA94C438("Open in Maps", 12);
  v51 = v50;
  v145 = v133;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v133 - v154;
  sub_1CA948D98();
  v53 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v133 - v151;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 304) = v149;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v145 = swift_allocObject();
  *(v145 + 1) = xmmword_1CA981360;
  v144 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = v140;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000013;
  *(v56 + 48) = 0x80000001CA99B730;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 0x7475706E494657;
  *(v56 + 88) = 0xE700000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v138 = v58;
  v139 = v59;
  *&v140 = v60;
  v61 = @"Parameters";
  v62 = sub_1CA94C438("Location (WFInput)", 18);
  v135 = v63;
  v136 = v62;
  v134 = sub_1CA94C438("Location", 8);
  v65 = v64;
  v137 = v133;
  MEMORY[0x1EEE9AC00](v134);
  v66 = v133 - v154;
  sub_1CA948D98();
  v67 = v152;
  v68 = [v152 bundleURL];
  v133[1] = v133;
  MEMORY[0x1EEE9AC00](v68);
  v148 = inited;
  v69 = v151;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v136, v135, v134, v65, 0, 0, v66, v133 - v69);
  v71 = v149;
  *(v56 + 144) = v149;
  *(v56 + 152) = @"Placeholder";
  v72 = @"Placeholder";
  v73 = sub_1CA94C438("Location (WFInput)", 18);
  v135 = v74;
  v136 = v73;
  v75 = sub_1CA94C438("Location", 8);
  v134 = v76;
  v137 = v133;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v133 - v154;
  sub_1CA948D98();
  v78 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v136, v135, v75, v134, 0, 0, v77, v133 - v69);
  *(v56 + 184) = v71;
  *(v56 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  v137 = v81;
  v136 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v82 = sub_1CA94C1E8();
  v83 = sub_1CA2F864C(v82);
  v145[4] = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CA981380;
  *(v84 + 32) = v138;
  *(v84 + 40) = 0xD000000000000018;
  *(v84 + 48) = 0x80000001CA9A2F80;
  v85 = MEMORY[0x1E69E6158];
  *(v84 + 64) = MEMORY[0x1E69E6158];
  *(v84 + 72) = @"DefaultValue";
  *(v84 + 80) = 1936744781;
  *(v84 + 88) = 0xE400000000000000;
  *(v84 + 104) = v85;
  *(v84 + 112) = @"Hidden";
  *(v84 + 120) = 1;
  v86 = v139;
  *(v84 + 144) = MEMORY[0x1E69E6370];
  *(v84 + 152) = v86;
  *(v84 + 160) = 0xD000000000000015;
  *(v84 + 168) = 0x80000001CA9B8670;
  v87 = v140;
  *(v84 + 184) = v85;
  *(v84 + 192) = v87;
  v88 = @"DefaultValue";
  v89 = @"Hidden";
  v90 = sub_1CA94C438("App (WFSearchMapsActionApp)", 27);
  *&v140 = v91;
  v92 = sub_1CA94C438("App", 3);
  v94 = v93;
  v141 = v133;
  MEMORY[0x1EEE9AC00](v92);
  v95 = v133 - v154;
  sub_1CA948D98();
  v96 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v133 - v151;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v90, v140, v92, v94, 0, 0, v95, v97);
  *(v84 + 224) = v149;
  *(v84 + 200) = v99;
  v100 = sub_1CA94C368();
  *(v84 + 264) = v146;
  *(v84 + 232) = v100;
  *(v84 + 240) = &unk_1F49FBA90;
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  v103 = v145;
  v145[5] = v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v105 = v148;
  v148[40] = v103;
  v105[43] = v104;
  v105[44] = @"ParameterSummary";
  v106 = @"ParameterSummary";
  v107 = sub_1CA94C438("Open ${WFInput} in Maps (Parameter Summary)", 43);
  v109 = v108;
  v110 = sub_1CA94C438("Open ${WFInput} in Maps", 23);
  v112 = v111;
  v149 = v133;
  MEMORY[0x1EEE9AC00](v110);
  v113 = v133 - v154;
  sub_1CA948D98();
  v114 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = v133 - v151;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v107, v109, v110, v112, 0, 0, v113, v115);
  v118 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v119 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v120 = v148;
  v148[45] = v118;
  v120[48] = v119;
  v120[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v121 = swift_allocObject();
  *(v121 + 16) = v147;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1CA97EDF0;
  *(v122 + 32) = 0xD000000000000011;
  *(v122 + 40) = 0x80000001CA99B240;
  v123 = swift_allocObject();
  *(v123 + 16) = v147;
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1CA9813C0;
  strcpy((v124 + 32), "WFParameterKey");
  *(v124 + 47) = -18;
  *(v124 + 48) = 0x7475706E494657;
  *(v124 + 56) = 0xE700000000000000;
  v125 = MEMORY[0x1E69E6158];
  *(v124 + 72) = MEMORY[0x1E69E6158];
  *(v124 + 80) = 0xD000000000000010;
  *(v124 + 88) = 0x80000001CA993570;
  v126 = @"RequiredResources";
  v127 = sub_1CA94C1E8();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v124 + 96) = v127;
  *(v124 + 120) = v128;
  *(v124 + 128) = 0x72756F7365524657;
  *(v124 + 168) = v125;
  *(v124 + 136) = 0xEF7373616C436563;
  *(v124 + 144) = 0xD00000000000001BLL;
  *(v124 + 152) = 0x80000001CA993590;
  *(v123 + 32) = sub_1CA94C1E8();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v122 + 48) = v123;
  *(v122 + 72) = v129;
  *(v122 + 80) = 0x72756F7365524657;
  *(v122 + 120) = v125;
  *(v122 + 88) = 0xEF7373616C436563;
  *(v122 + 96) = 0xD000000000000018;
  *(v122 + 104) = 0x80000001CA994040;
  *(v121 + 32) = sub_1CA94C1E8();
  v130 = v148;
  v148[50] = v121;
  v130[53] = v129;
  v130[54] = @"UserInterfaces";
  v130[58] = v146;
  v130[55] = &unk_1F49FBB18;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v131 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void WFTriggerInputAction.init(inputClass:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit20WFTriggerInputAction_inputClass] = a1;
  v2 = sub_1CA94C368();
  sub_1CA2ECC0C();
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  v3 = sub_1CA332510();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTriggerInputAction();
  v4 = objc_msgSendSuper2(&v5, sel_initWithIdentifier_definition_serializedParameters_, v2, v3, 0);

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_1CA45C08C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 inputTypeDescriptionForClass_];
  v26 = sub_1CA94C3A8();
  v5 = v4;

  v6 = sub_1CA94C438("Receive %@ as input", 19);
  v8 = v7;
  v9 = sub_1CA94C438("Receive %@ as input", 19);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = [a1 localize_];

  sub_1CA94C3A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1CA282DB4();
  *(v22 + 32) = v26;
  *(v22 + 40) = v5;
  v23 = sub_1CA94C3C8();

  return v23;
}

id WFTriggerInputAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CA94C368();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFTriggerInputAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFTriggerInputAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTriggerInputAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA45C60C()
{
  v30[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Find Contacts (Action Name)", 27);
  v11 = v10;
  v12 = sub_1CA94C438("Find Contacts", 13);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  *(inited + 184) = v24;
  *(inited + 192) = @"RequiredResources";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F49FBB98;
  *(inited + 224) = v25;
  *(inited + 232) = @"SuggestedAsInitialAction";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 0;
  v26 = @"RequiredResources";
  v27 = @"SuggestedAsInitialAction";
  v28 = sub_1CA94C368();
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v28;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA993920;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA45CA10()
{
  v39 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("display|brightness|blue light", 29);
  v6 = v5;
  v7 = sub_1CA94C438("display|brightness|blue light", 29);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"DisabledOnPlatforms";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49FBC08;
  *(inited + 184) = v24;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x65676E61724FLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v21;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x696873746867696ELL;
  *(inited + 248) = 0xEA00000000007466;
  *(inited + 264) = v21;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v25 = @"DisabledOnPlatforms";
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 344) = v21;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000055;
  *(inited + 328) = 0x80000001CA9B8870;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v38 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x6574617473;
  *(v30 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v38;
  *(v31 + 64) = v21;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0x65756C61566E4FLL;
  *(v31 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v32 = @"Key";
  v33 = sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C(v33);
  v34 = sub_1CA94C1E8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v34;
  *(inited + 384) = v35;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 400) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v36 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA45D024()
{
  v93 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("flash|torch|turn", 16);
  v6 = v5;
  v7 = sub_1CA94C438("flash|torch|turn", 16);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = v11;
  v12 = &v84 - v97;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v92 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v96 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v84 - v95;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"DisabledOnPlatforms";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49FBC78;
  *(inited + 184) = v24;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v21;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000012;
  *(inited + 248) = 0x80000001CA9B8900;
  *(inited + 264) = v21;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v25 = @"DisabledOnPlatforms";
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 344) = v21;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000055;
  *(inited + 328) = 0x80000001CA9B8920;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v94 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x65756C6176;
  *(v30 + 40) = 0xE500000000000000;
  v90 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1CA97EDF0;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0xD000000000000011;
  *(v31 + 48) = 0x80000001CA9B8980;
  *(v31 + 64) = v21;
  *(v31 + 72) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v32 = swift_allocObject();
  *(v32 + 16) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1CA981370;
  *(v33 + 32) = 0xD000000000000011;
  *(v33 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v34 = swift_allocObject();
  *(v34 + 16) = v94;
  *&v94 = 0x80000001CA993590;
  v35 = @"Key";
  v36 = @"RequiredResources";
  v37 = MEMORY[0x1E69E6158];
  *(v34 + 32) = sub_1CA94C1E8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v33 + 48) = v34;
  *(v33 + 72) = v38;
  strcpy((v33 + 80), "WFParameterKey");
  *(v33 + 95) = -18;
  *(v33 + 96) = 0x6574617473;
  *(v33 + 104) = 0xE500000000000000;
  *(v33 + 120) = v37;
  *(v33 + 128) = 0xD000000000000013;
  *(v33 + 136) = 0x80000001CA9939F0;
  *(v33 + 144) = 15649;
  *(v33 + 152) = 0xE200000000000000;
  v39 = MEMORY[0x1E69E6530];
  *(v33 + 168) = v37;
  *(v33 + 176) = 0xD000000000000010;
  *(v33 + 184) = 0x80000001CA993570;
  *(v33 + 192) = 0;
  *(v33 + 216) = v39;
  *(v33 + 224) = 0x72756F7365524657;
  *(v33 + 264) = v37;
  v91 = 0xD00000000000001BLL;
  *(v33 + 232) = 0xEF7373616C436563;
  *(v33 + 240) = 0xD00000000000001BLL;
  *(v33 + 248) = v94;
  *(v32 + 32) = sub_1CA94C1E8();
  *(v31 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v31 + 80) = v32;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v40 = sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C(v40);
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v41;
  *(inited + 384) = v42;
  *(inited + 392) = @"ParameterSummary";
  v90 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1CA981470;
  v43 = @"ParameterSummary";
  v44 = sub_1CA94C438("${operation} flashlight ${state}", 32);
  v87 = v45;
  v88 = v44;
  v46 = sub_1CA94C438("${operation} flashlight ${state}", 32);
  v48 = v47;
  v89 = &v84;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v84 - v97;
  sub_1CA948D98();
  v50 = v92;
  v51 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v95;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v88, v87, v46, v48, 0, 0, v49, &v84 - v52);
  v55 = objc_allocWithZone(WFActionParameterSummaryValue);
  v56 = sub_1CA65DD78(0x6F6974617265706FLL, 0xEF65746174732C6ELL, v54);
  v57 = v94;
  *(v94 + 32) = v56;
  v89 = "shlight ${state}";
  v58 = sub_1CA94C438("${operation} flashlight ${state}", 32);
  v86 = v59;
  v87 = v58;
  v85 = sub_1CA94C438("${operation} flashlight ${state}", 32);
  v61 = v60;
  v88 = &v84;
  MEMORY[0x1EEE9AC00](v85);
  v62 = &v84 - v97;
  sub_1CA948D98();
  v63 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v87, v86, v85, v61, 0, 0, v62, &v84 - v52);
  v66 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v57 + 40) = sub_1CA65DD78(0xD000000000000021, v89 | 0x8000000000000000, v65);
  v89 = "WFFlashlightLevel";
  v67 = sub_1CA94C438("${operation} flashlight", 23);
  v69 = v68;
  v70 = sub_1CA94C438("${operation} flashlight", 23);
  v72 = v71;
  v88 = &v84;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v84 - v97;
  sub_1CA948D98();
  v74 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v84 - v95;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v67, v69, v70, v72, 0, 0, v73, v75);
  v78 = objc_allocWithZone(WFActionParameterSummaryValue);
  v79 = sub_1CA65DD78(v91, v89 | 0x8000000000000000, v77);
  v80 = v94;
  *(v94 + 48) = v79;
  v81 = v90;
  v82 = sub_1CA65AF90(v80);
  *(inited + 424) = v81;
  *(inited + 400) = v82;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t ContentGraphRepresentationContext.init(shortcutsParameter:shortcutsVariableSource:toolkitParameter:containerProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  v6 = type metadata accessor for ContentGraphRepresentationContext(0);
  sub_1CA393EE4(a3, a4 + *(v6 + 24), &qword_1EC444D00, &qword_1CA988B80);
  v7 = OUTLINED_FUNCTION_20_0();

  return sub_1CA2F1554(v7, v8);
}

uint64_t TypedValue.ID.resolve(in:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA45DCD4()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = TypedValue.ID.variable.getter();
  v0[21] = v1;
  v2 = v1;
  v3 = *(v0[19] + 48);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA45DE34;
  v4 = OUTLINED_FUNCTION_213_0();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA320A2C;
  v0[13] = &block_descriptor_13;
  v0[14] = v4;
  [v2 retrieveContentCollectionWithVariableSource:v3 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1CA45DE34()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA45DF30()
{
  OUTLINED_FUNCTION_0();

  v1 = OUTLINED_FUNCTION_1_3();

  return v2(v1);
}

uint64_t sub_1CA45DF8C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t ContentGraphRepresentable.resolve(to:in:)()
{
  OUTLINED_FUNCTION_6();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_152_2(v3);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1CA45E10C;
  v6 = OUTLINED_FUNCTION_188();

  return v8(v6);
}

uint64_t sub_1CA45E10C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[5] = v3;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v5[6] = v11;
    *v11 = v7;
    v11[1] = sub_1CA45E270;
    OUTLINED_FUNCTION_73_0(v5[2]);

    return WFContentCollection.resolve(to:in:)();
  }
}

uint64_t sub_1CA45E270()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t TypedValue.resolve(to:in:)()
{
  OUTLINED_FUNCTION_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = type metadata accessor for ContentGraphRepresentationContext(0);
  v1[9] = v4;
  OUTLINED_FUNCTION_18_0(v4);
  v1[10] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
  OUTLINED_FUNCTION_18_0(v5);
  v1[11] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  OUTLINED_FUNCTION_18_0(v6);
  v1[12] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v7);
  v1[13] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ParameterStateValueTransformContext(0);
  v1[14] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v1[15] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94B778();
  v1[16] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94A928();
  v1[19] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94AC88();
  v1[22] = v13;
  OUTLINED_FUNCTION_12(v13);
  v1[23] = v14;
  v1[24] = OUTLINED_FUNCTION_13_5();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v15 = sub_1CA949F78();
  v1[30] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[31] = v16;
  v1[32] = OUTLINED_FUNCTION_13_5();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1CA45E630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v116 = v20;
  v21 = v20[23];
  v20[37] = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v22 = *(v21 + 16);
  v20[38] = v22;
  v20[39] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23 = OUTLINED_FUNCTION_107_0();
  v22(v23);
  v24 = sub_1CA949F68();
  v112 = sub_1CA94CC38();
  v25 = os_log_type_enabled(v24, v112);
  v26 = v20[36];
  v27 = v20[31];
  v114 = v20[30];
  v28 = v20[29];
  v29 = v20[23];
  if (v25)
  {
    OUTLINED_FUNCTION_60_5();
    v111 = v22;
    v30 = swift_slowAlloc();
    v115[0] = OUTLINED_FUNCTION_29_4();
    *v30 = 136315394;
    v31 = sub_1CA94AC38();
    log = v24;
    v32 = *(v29 + 8);
    v33 = OUTLINED_FUNCTION_135_2();
    v32(v33);
    v34 = OUTLINED_FUNCTION_20_0();
    sub_1CA26B54C(v34, v35, v36);
    OUTLINED_FUNCTION_171();

    *(v30 + 4) = v28;
    *(v30 + 12) = 2080;
    v37 = sub_1CA94DA18();
    sub_1CA26B54C(v37, v38, v115);
    OUTLINED_FUNCTION_158();

    *(v30 + 14) = v31;
    _os_log_impl(&dword_1CA256000, log, v112, "Resolving %s into a %s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_76_4();
    v22 = v111;
    OUTLINED_FUNCTION_26();

    v39 = *(v27 + 8);
    v39(v26, v114);
  }

  else
  {

    v32 = *(v29 + 8);
    v40 = OUTLINED_FUNCTION_135_2();
    v32(v40);
    v39 = *(v27 + 8);
    v39(v26, v114);
  }

  v20[40] = v39;
  v20[41] = v32;
  v41 = OUTLINED_FUNCTION_136();
  v22(v41);
  v42 = OUTLINED_FUNCTION_3_3();
  if (v43(v42) == *MEMORY[0x1E69DAE50])
  {
    v44 = v20[6];
    v45 = OUTLINED_FUNCTION_14_1();
    v46(v45);
    swift_projectBox();
    v47 = OUTLINED_FUNCTION_22();
    v48(v47);

    if (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900) == v44)
    {
      sub_1CA94A918();
      Query.toTableTemplateValue()();
      (*(v20[17] + 8))(v20[18], v20[16]);
      v96 = OUTLINED_FUNCTION_107_0();
      v97(v96);

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_90_0();

      __asm { BRAA            X2, X16 }
    }

    (*(v20[20] + 8))(v20[21], v20[19]);
  }

  else
  {
    (v32)(v20[28], v20[22]);
  }

  v49 = *(v20[7] + 40);
  v20[42] = v49;
  if (v49)
  {
    v51 = v20[11];
    v50 = v20[12];
    v52 = OUTLINED_FUNCTION_22_13(*(v20[9] + 24));
    sub_1CA47154C(v52, v51);
    v53 = OUTLINED_FUNCTION_116();
    sub_1CA393EE4(v53, v54, v55, v56);
    v57 = sub_1CA94B258();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v57);
    v59 = v49;
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA27080C(v20[12], &qword_1EC444D00, &qword_1CA988B80);
    }

    else
    {
      MEMORY[0x1CCAA00A0]();
      OUTLINED_FUNCTION_39();
      v85 = OUTLINED_FUNCTION_52_0();
      v86(v85);
      EnumTagSinglePayload = 0;
    }

    v88 = v20[14];
    v87 = v20[15];
    v89 = v20[13];
    v90 = v20[7];
    v91 = sub_1CA94AD08();
    __swift_storeEnumTagSinglePayload(v89, EnumTagSinglePayload, 1, v91);
    sub_1CA471C98(v90, v87 + *(v88 + 24));
    *v87 = v59;
    sub_1CA393EE4(v89, v87 + *(v88 + 20), &unk_1EC445A40, &unk_1CA983150);
    v92 = v59;
    v93 = swift_task_alloc();
    v20[43] = v93;
    *v93 = v20;
    v93[1] = sub_1CA45EE18;
    OUTLINED_FUNCTION_73_0(v20[8]);
    OUTLINED_FUNCTION_90_0();

    return sub_1CA6337C0();
  }

  else
  {
    v60 = v20[38];
    sub_1CA949C58();
    v61 = OUTLINED_FUNCTION_164();
    v60(v61);
    OUTLINED_FUNCTION_6_26();
    v62 = OUTLINED_FUNCTION_41_0();
    sub_1CA47154C(v62, v63);
    v64 = sub_1CA949F68();
    v113 = sub_1CA94CBF8();
    v65 = os_log_type_enabled(v64, v113);
    v66 = v20[40];
    v67 = v20[41];
    v68 = v20[33];
    v69 = v20[30];
    v70 = v20[25];
    v71 = v20[10];
    if (v65)
    {
      loga = v20[6];
      OUTLINED_FUNCTION_254();
      v115[0] = OUTLINED_FUNCTION_102_2();
      *v69 = 136315650;
      v109 = v68;
      v110 = v66;
      v72 = sub_1CA94AC38();
      v74 = v73;
      v75 = OUTLINED_FUNCTION_63_7();
      v67(v75);
      v76 = OUTLINED_FUNCTION_20_0();
      sub_1CA26B54C(v76, v77, v78);
      OUTLINED_FUNCTION_171();

      OUTLINED_FUNCTION_164_2();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_35();
      sub_1CA4715A8(v71, v79);
      v80 = OUTLINED_FUNCTION_3_3();
      sub_1CA26B54C(v80, v81, v82);
      OUTLINED_FUNCTION_87();

      *(v69 + 14) = v70;
      *(v69 + 22) = v74;
      v20[3] = loga;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
      v83 = sub_1CA94C408();
      sub_1CA26B54C(v83, v84, v115);
      OUTLINED_FUNCTION_158();

      *(v69 + 24) = v72;
      OUTLINED_FUNCTION_163_2(&dword_1CA256000, "Resolving typed value %s into content collection with context: %s, type: %s", v113);
      OUTLINED_FUNCTION_144_2();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_54_5();

      v110(v109, v69);
    }

    else
    {

      OUTLINED_FUNCTION_2_35();
      sub_1CA4715A8(v71, v100);
      v101 = OUTLINED_FUNCTION_63_7();
      v67(v101);
      v102 = OUTLINED_FUNCTION_164();
      (v66)(v102);
    }

    v103 = swift_task_alloc();
    v104 = OUTLINED_FUNCTION_154_3(v103);
    *v104 = v105;
    OUTLINED_FUNCTION_8_16(v104);
    OUTLINED_FUNCTION_90_0();

    return TypedValue.resolve(in:)();
  }
}

uint64_t sub_1CA45EE18()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v6 = v5;
  *(v8 + 352) = v7;

  v9 = *(v2 + 120);
  if (v0)
  {
  }

  sub_1CA4715A8(v9, type metadata accessor for ParameterStateValueTransformContext);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA45EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_124_1();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_162_0();
  a26 = v28;
  v31 = *(v28[7] + 48);
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32 && (v33 = [v32 workflow]) != 0)
  {
    v34 = v33;
    v69 = [v33 environment];
  }

  else
  {
    v69 = 0;
  }

  v35 = v28[42];
  v66 = v28[38];
  v63 = v28[27];
  v64 = v28[22];
  v36 = v28[8];
  v37 = objc_allocWithZone(WFContentAttributionTracker);
  v38 = v35;
  swift_unknownObjectRetain();
  v39 = [v37 init];
  v40 = *MEMORY[0x1E696E540];
  v41 = objc_allocWithZone(WFParameterStateProcessingContext);
  v42 = v40;
  v28[45] = sub_1CA4710A8(v31, v38, 0, v69, v39, v40);
  sub_1CA949C58();
  v66(v63, v36, v64);
  swift_unknownObjectRetain();
  v43 = sub_1CA949F68();
  v44 = sub_1CA94CC38();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v28[44];
    v62 = v28[41];
    v67 = v28[35];
    v68 = v28[40];
    v65 = v28[30];
    OUTLINED_FUNCTION_60_5();
    v46 = swift_slowAlloc();
    a17 = OUTLINED_FUNCTION_29_4();
    *v46 = 136315394;
    v47 = sub_1CA94AC38();
    v49 = v48;
    v50 = OUTLINED_FUNCTION_61();
    v62(v50);
    sub_1CA26B54C(v47, v49, &a17);
    OUTLINED_FUNCTION_87();

    OUTLINED_FUNCTION_81_3();
    v28[5] = v45;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    v51 = sub_1CA94C408();
    sub_1CA26B54C(v51, v52, &a17);
    OUTLINED_FUNCTION_158();

    *(v46 + 14) = v49;
    OUTLINED_FUNCTION_140_3(&dword_1CA256000, v43, v44, "Transformed %s into a parameter state: %s");
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_51();

    v68(v67, v65);
  }

  else
  {
    v54 = v28[40];
    v53 = v28[41];

    v55 = OUTLINED_FUNCTION_70();
    v53(v55);
    v56 = OUTLINED_FUNCTION_3_3();
    v54(v56);
  }

  swift_getObjectType();
  v57 = swift_task_alloc();
  v28[46] = v57;
  *v57 = v28;
  v57[1] = sub_1CA45F2D4;
  OUTLINED_FUNCTION_53();

  return WFParameterState.process(context:)(v58, v59);
}

uint64_t sub_1CA45F2D4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA45F3DC()
{
  v68 = v0;
  v2 = *(v0 + 376);
  if (v2)
  {
    v3 = *(v0 + 48);
    if (swift_getObjectType() == v3)
    {
      v37 = *(v0 + 304);
      sub_1CA949C58();
      v38 = OUTLINED_FUNCTION_56_5();
      v37(v38);
      swift_unknownObjectRetain();
      v39 = sub_1CA949F68();
      v40 = sub_1CA94CC38();
      swift_unknownObjectRelease();
      v64 = v40;
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 328);
      v66 = *(v0 + 336);
      v43 = *(v0 + 320);
      v44 = *(v0 + 272);
      v45 = *(v0 + 240);
      v46 = *(v0 + 176);
      if (v41)
      {
        OUTLINED_FUNCTION_60_5();
        v60 = v47;
        v62 = v45;
        v48 = swift_slowAlloc();
        v67 = OUTLINED_FUNCTION_29_4();
        *v48 = 136315394;
        sub_1CA94AC38();
        v49 = OUTLINED_FUNCTION_52_0();
        v42(v49);
        v50 = OUTLINED_FUNCTION_176_0();
        v53 = sub_1CA26B54C(v50, v51, v52);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        *(v0 + 32) = v2;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
        v54 = sub_1CA94C408();
        sub_1CA26B54C(v54, v55, &v67);
        OUTLINED_FUNCTION_11();

        *(v48 + 14) = v46;
        _os_log_impl(&dword_1CA256000, v39, v64, "Resolved %s into a %s using parameter state transformation", v48, 0x16u);
        OUTLINED_FUNCTION_167_1();
        OUTLINED_FUNCTION_138();
        OUTLINED_FUNCTION_26();

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_153_3();
        v43(v44, v62);
      }

      else
      {

        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_52_0();
        v42(v56);
        OUTLINED_FUNCTION_153_3();
        v43(v44, v45);
      }

      OUTLINED_FUNCTION_112_2();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_202();

      __asm { BRAA            X2, X16 }
    }

    v4 = *(v0 + 336);

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 336);
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_30_13();
  sub_1CA949C58();
  v5 = OUTLINED_FUNCTION_116_3();
  v1(v5);
  OUTLINED_FUNCTION_6_26();
  v6 = OUTLINED_FUNCTION_195();
  sub_1CA47154C(v6, v7);
  v8 = sub_1CA949F68();
  v65 = sub_1CA94CBF8();
  v9 = os_log_type_enabled(v8, v65);
  v10 = *(v0 + 320);
  v11 = *(v0 + 328);
  v12 = *(v0 + 264);
  v13 = *(v0 + 240);
  v14 = *(v0 + 200);
  v15 = *(v0 + 80);
  if (v9)
  {
    v59 = *(v0 + 48);
    OUTLINED_FUNCTION_254();
    v67 = OUTLINED_FUNCTION_102_2();
    *v13 = 136315650;
    v61 = v12;
    v63 = v10;
    v16 = sub_1CA94AC38();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_63_7();
    v11(v19);
    v20 = OUTLINED_FUNCTION_20_0();
    sub_1CA26B54C(v20, v21, v22);
    OUTLINED_FUNCTION_171();

    OUTLINED_FUNCTION_164_2();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_2_35();
    sub_1CA4715A8(v15, v23);
    v24 = OUTLINED_FUNCTION_3_3();
    sub_1CA26B54C(v24, v25, v26);
    OUTLINED_FUNCTION_87();

    *(v13 + 14) = v14;
    *(v13 + 22) = v18;
    *(v0 + 24) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
    v27 = sub_1CA94C408();
    sub_1CA26B54C(v27, v28, &v67);
    OUTLINED_FUNCTION_158();

    *(v13 + 24) = v16;
    OUTLINED_FUNCTION_163_2(&dword_1CA256000, "Resolving typed value %s into content collection with context: %s, type: %s", v65);
    OUTLINED_FUNCTION_144_2();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_54_5();

    OUTLINED_FUNCTION_153_3();
    v63(v61, v13);
  }

  else
  {

    OUTLINED_FUNCTION_2_35();
    sub_1CA4715A8(v15, v29);
    v30 = OUTLINED_FUNCTION_63_7();
    v11(v30);
    OUTLINED_FUNCTION_153_3();
    v31 = OUTLINED_FUNCTION_164();
    (v10)(v31);
  }

  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_154_3(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_8_16(v33);
  OUTLINED_FUNCTION_202();

  return TypedValue.resolve(in:)();
}

uint64_t sub_1CA45F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_24_13();
  v24 = v23;
  OUTLINED_FUNCTION_2_2();
  *v25 = v24;
  v26 = *v22;
  OUTLINED_FUNCTION_13();
  *v27 = v26;
  v24[49] = v21;

  if (v20)
  {
    v39 = v24[25];
    v40 = v24[24];
    v41 = v24[21];
    v42 = v24[18];
    v43 = v24[15];
    v44 = v24[13];
    v45 = v24[12];
    v46 = v24[11];

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v20, a18, a19, a20);
  }

  else
  {
    v37 = swift_task_alloc();
    v24[50] = v37;
    *v37 = v26;
    v37[1] = sub_1CA45FB90;
    OUTLINED_FUNCTION_73_0(v24[6]);
    OUTLINED_FUNCTION_53();

    return WFContentCollection.resolve(to:in:)();
  }
}

uint64_t sub_1CA45FB90()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v4;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1CA45FC90()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 64);
  sub_1CA949C58();
  v2(v3, v5, v4);
  swift_unknownObjectRetain();
  v6 = sub_1CA949F68();
  LOBYTE(v5) = sub_1CA94CC38();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v5))
  {
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    v26 = *(v0 + 328);
    v30 = *(v0 + 256);
    v31 = *(v0 + 320);
    v29 = *(v0 + 240);
    v7 = *(v0 + 192);
    OUTLINED_FUNCTION_60_5();
    v8 = swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_29_4();
    *v8 = 136315394;
    sub_1CA94AC38();
    OUTLINED_FUNCTION_148_2();
    v9 = OUTLINED_FUNCTION_63_7();
    v26(v9);
    v10 = OUTLINED_FUNCTION_69_0();
    sub_1CA26B54C(v10, v11, v12);
    OUTLINED_FUNCTION_139();

    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    *(v0 + 16) = v27;
    swift_unknownObjectRetain();
    v13 = sub_1CA94C408();
    sub_1CA26B54C(v13, v14, &v32);
    OUTLINED_FUNCTION_11();

    *(v8 + 14) = v1;
    OUTLINED_FUNCTION_55_6();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_54_5();

    v31(v30, v29);
  }

  else
  {
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);

    v22 = OUTLINED_FUNCTION_70();
    v20(v22);
    v23 = OUTLINED_FUNCTION_52_0();
    v21(v23);
  }

  OUTLINED_FUNCTION_112_2();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_202();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA4603A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_162_0();

  v38 = *(v20 + 416);
  OUTLINED_FUNCTION_112_2();
  v30 = *(v20 + 192);
  v31 = *(v20 + 168);
  v32 = *(v20 + 144);
  v33 = *(v20 + 120);
  v34 = *(v20 + 104);
  v35 = *(v20 + 96);
  v36 = *(v20 + 88);
  v37 = *(v20 + 80);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_53();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, a18, a19, a20);
}

uint64_t TypedValue.resolve(in:)()
{
  OUTLINED_FUNCTION_0();
  v1[14] = v2;
  v1[15] = v0;
  v3 = sub_1CA949328();
  v1[16] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94A9E8();
  v1[19] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_13_5();
  v1[22] = swift_task_alloc();
  v7 = sub_1CA94A908();
  v1[23] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  OUTLINED_FUNCTION_18_0(v9);
  v1[26] = OUTLINED_FUNCTION_13_5();
  v1[27] = swift_task_alloc();
  v10 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v10);
  v1[28] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A60, &unk_1CA985F10);
  OUTLINED_FUNCTION_18_0(v11);
  v1[29] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DF0, &unk_1CA988BD0);
  v1[30] = v12;
  OUTLINED_FUNCTION_12(v12);
  v1[31] = v13;
  v1[32] = OUTLINED_FUNCTION_45();
  v14 = sub_1CA94A9A8();
  v1[33] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[34] = v15;
  v1[35] = OUTLINED_FUNCTION_45();
  v16 = sub_1CA94A888();
  v1[36] = v16;
  OUTLINED_FUNCTION_12(v16);
  v1[37] = v17;
  v1[38] = OUTLINED_FUNCTION_45();
  v18 = sub_1CA94B1C8();
  v1[39] = v18;
  OUTLINED_FUNCTION_12(v18);
  v1[40] = v19;
  v1[41] = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for TypedValueConversionContext(0);
  v1[42] = v20;
  OUTLINED_FUNCTION_18_0(v20);
  v1[43] = OUTLINED_FUNCTION_45();
  v21 = sub_1CA94AD88();
  v1[44] = v21;
  OUTLINED_FUNCTION_12(v21);
  v1[45] = v22;
  v1[46] = OUTLINED_FUNCTION_13_5();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v23 = sub_1CA949F78();
  v1[49] = v23;
  OUTLINED_FUNCTION_12(v23);
  v1[50] = v24;
  v1[51] = OUTLINED_FUNCTION_13_5();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v25 = sub_1CA94ADC8();
  v1[61] = v25;
  OUTLINED_FUNCTION_12(v25);
  v1[62] = v26;
  v1[63] = OUTLINED_FUNCTION_13_5();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v27 = sub_1CA94A8C8();
  v1[71] = v27;
  OUTLINED_FUNCTION_12(v27);
  v1[72] = v28;
  v1[73] = OUTLINED_FUNCTION_13_5();
  v1[74] = swift_task_alloc();
  v29 = sub_1CA94AC08();
  v1[75] = v29;
  OUTLINED_FUNCTION_12(v29);
  v1[76] = v30;
  v1[77] = OUTLINED_FUNCTION_45();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v31);
  v1[78] = OUTLINED_FUNCTION_13_5();
  v1[79] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A98, &unk_1CA988BE0);
  OUTLINED_FUNCTION_18_0(v32);
  v1[80] = OUTLINED_FUNCTION_45();
  v33 = sub_1CA94B318();
  v1[81] = v33;
  OUTLINED_FUNCTION_12(v33);
  v1[82] = v34;
  v1[83] = OUTLINED_FUNCTION_13_5();
  v1[84] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A70, &qword_1CA985648);
  OUTLINED_FUNCTION_18_0(v35);
  v1[85] = OUTLINED_FUNCTION_45();
  v36 = sub_1CA94B3C8();
  v1[86] = v36;
  OUTLINED_FUNCTION_12(v36);
  v1[87] = v37;
  v1[88] = OUTLINED_FUNCTION_45();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AB8, &qword_1CA988BF0);
  OUTLINED_FUNCTION_18_0(v38);
  v1[89] = OUTLINED_FUNCTION_45();
  v39 = sub_1CA94B418();
  v1[90] = v39;
  OUTLINED_FUNCTION_12(v39);
  v1[91] = v40;
  v1[92] = OUTLINED_FUNCTION_45();
  v41 = sub_1CA94B458();
  v1[93] = v41;
  OUTLINED_FUNCTION_12(v41);
  v1[94] = v42;
  v1[95] = OUTLINED_FUNCTION_45();
  v43 = sub_1CA94AAF8();
  v1[96] = v43;
  OUTLINED_FUNCTION_12(v43);
  v1[97] = v44;
  v1[98] = OUTLINED_FUNCTION_45();
  v45 = sub_1CA94AB58();
  v1[99] = v45;
  OUTLINED_FUNCTION_12(v45);
  v1[100] = v46;
  v1[101] = OUTLINED_FUNCTION_45();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A80, &qword_1CA988BF8);
  v1[102] = v47;
  OUTLINED_FUNCTION_12(v47);
  v1[103] = v48;
  v1[104] = OUTLINED_FUNCTION_45();
  v49 = sub_1CA94AB68();
  v1[105] = v49;
  OUTLINED_FUNCTION_12(v49);
  v1[106] = v50;
  v1[107] = OUTLINED_FUNCTION_45();
  v51 = sub_1CA94ABA8();
  v1[108] = v51;
  OUTLINED_FUNCTION_12(v51);
  v1[109] = v52;
  v1[110] = OUTLINED_FUNCTION_45();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v53);
  v1[111] = OUTLINED_FUNCTION_13_5();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v54 = sub_1CA94AA48();
  v1[116] = v54;
  OUTLINED_FUNCTION_12(v54);
  v1[117] = v55;
  v1[118] = OUTLINED_FUNCTION_45();
  v56 = sub_1CA94AA78();
  v1[119] = v56;
  OUTLINED_FUNCTION_12(v56);
  v1[120] = v57;
  v1[121] = OUTLINED_FUNCTION_45();
  v58 = sub_1CA94AAB8();
  v1[122] = v58;
  OUTLINED_FUNCTION_12(v58);
  v1[123] = v59;
  v1[124] = OUTLINED_FUNCTION_45();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445A90, &qword_1CA985978);
  v1[125] = v60;
  OUTLINED_FUNCTION_12(v60);
  v1[126] = v61;
  v1[127] = OUTLINED_FUNCTION_45();
  v62 = sub_1CA94AB28();
  v1[128] = v62;
  OUTLINED_FUNCTION_12(v62);
  v1[129] = v63;
  v1[130] = OUTLINED_FUNCTION_45();
  v64 = sub_1CA94AC18();
  v1[131] = v64;
  OUTLINED_FUNCTION_12(v64);
  v1[132] = v65;
  v1[133] = OUTLINED_FUNCTION_13_5();
  v1[134] = swift_task_alloc();
  v66 = sub_1CA94AC88();
  v1[135] = v66;
  OUTLINED_FUNCTION_12(v66);
  v1[136] = v67;
  v1[137] = OUTLINED_FUNCTION_13_5();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v68, v69, v70);
}