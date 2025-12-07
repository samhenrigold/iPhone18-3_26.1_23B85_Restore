Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStandard.jsonString(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  sub_26A4247D4();
  OUTLINED_FUNCTION_2_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for _ProtoKeyValue_Standard(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  if (redacted)
  {
    sub_26A2B2C30();
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_49();
    sub_26A2B3208(v15, v16, &protocol conformance descriptor for _ProtoKeyValue_Standard);
    v17 = sub_26A424954();
    if (!v1)
    {
      v2 = v17;
      v13 = v18;
    }

    (*(v5 + 8))(v12);
    OUTLINED_FUNCTION_18_20();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_49();
    sub_26A2B3208(v19, v20, &protocol conformance descriptor for _ProtoKeyValue_Standard);
    v21 = sub_26A424954();
    if (!v1)
    {
      v2 = v21;
      v13 = v22;
    }

    (*(v5 + 8))(v9);
  }

  v23 = v2;
  v24 = v13;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

void sub_26A2B2880()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_2_14();
  v42 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v41 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  OUTLINED_FUNCTION_14_15();
  sub_26A2B30AC();
  v18 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v0);
  sub_26A0E48F0(v17, &qword_28036C7B8, &unk_26A425BF0);
  v20 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v14);
    if (v21)
    {
      v29 = v41;
      *v41 = v20;
      *(v29 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v22 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
      OUTLINED_FUNCTION_12_1(v14);
      if (!v21)
      {
        sub_26A0E48F0(v14, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v29 = v41;
      sub_26A2B3100();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_12_19();
    sub_26A2B31B0(v29, v30);
    sub_26A0E48F0(v2 + v18, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_11_23();
    sub_26A2B3100();
    __swift_storeEnumTagSinglePayload(v2 + v18, 0, 1, v0);
  }

  v31 = *v2;
  v32 = *(*v2 + 16);
  if (v32)
  {
    v41 = v2;
    v43 = v20;
    sub_26A10D814(0, v32, 0);
    v33 = v43;
    v34 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v40 = v31;
    v35 = v31 + v34;
    v36 = *(v42 + 72);
    do
    {
      sub_26A2B30AC();
      _ProtoTextProperty.redactedProto.getter();
      OUTLINED_FUNCTION_12_19();
      sub_26A2B31B0(v7, v37);
      v43 = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_26A10D814(v38 > 1, v39 + 1, 1);
        v33 = v43;
      }

      *(v33 + 16) = v39 + 1;
      OUTLINED_FUNCTION_11_23();
      sub_26A2B3100();
      v35 += v36;
      --v32;
    }

    while (v32);

    v2 = v41;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  *v2 = v33;
  OUTLINED_FUNCTION_75();
}

void sub_26A2B2C30()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  v4 = OUTLINED_FUNCTION_79_0(v3);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_35();
  sub_26A2B30AC();
  v8 = *v2;
  v9 = *(*v2 + 16);
  if (v9)
  {
    v15 = v2;
    v16 = MEMORY[0x277D84F90];
    sub_26A10D7BC(0, v9, 0);
    v10 = v16;
    v11 = v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_26A2B30AC();
      sub_26A2B2880();
      sub_26A2B31B0(v0, type metadata accessor for _ProtoKeyValue_Standard.Pair);
      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A10D7BC(v13 > 1, v14 + 1, 1);
      }

      *(v16 + 16) = v14 + 1;
      OUTLINED_FUNCTION_15_22();
      sub_26A2B3100();
      v11 += v12;
      --v9;
    }

    while (v9);

    v2 = v15;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *v2 = v10;
  OUTLINED_FUNCTION_75();
}

uint64_t KeyValueStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoKeyValue_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_35();
  sub_26A2B30AC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_13_18();
  sub_26A2B3100();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t KeyValueStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for KeyValueStandard(0);
  *(inited + 64) = &protocol witness table for KeyValueStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A2B30AC();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2B3208(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2B3084()
{
  OUTLINED_FUNCTION_34_12();
  result = TextProperty.allTextElements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A2B30AC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2B3100()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2B31B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2B3208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2B3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_20()
{

  return sub_26A2B31B0(v0, type metadata accessor for _ProtoKeyValue_Standard);
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t a1)
{
  *(v1 + 16) = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t IntentsUIStandard.interaction.getter()
{
  sub_26A0E884C(0, &qword_28036CA00, 0x277CCAAC8);
  sub_26A0E884C(0, &qword_28036C9F8, 0x277CD3D58);
  return sub_26A424E24();
}

uint64_t IntentsUIStandard.slots.getter()
{
  v1 = type metadata accessor for IntentsUIStandard.Slot(0) - 8;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_26A10D86C(0, v3, 0);
    v4 = v11;
    v5 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) - 8);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      sub_26A2B5C1C();
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_26A10D86C(v8 > 1, v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      OUTLINED_FUNCTION_9_28();
      sub_26A2B5C70();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void IntentsUIStandard.action.getter()
{
  OUTLINED_FUNCTION_76();
  v17 = v1;
  v2 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  sub_26A10FD9C();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v2);
  sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v11, 1, v2);
    if (v15)
    {
      *v6 = MEMORY[0x277D84F90];
      v6[1] = 0;
      v6[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v11, 1, v2);
      if (!v15)
      {
        sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2B5C70();
    }

    sub_26A2B5C70();
    v13 = 0;
  }

  v16 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v17, v13, 1, v16);
  OUTLINED_FUNCTION_75();
}

void sub_26A2B3BB8()
{
  OUTLINED_FUNCTION_76();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_26_13();
  v4 = type metadata accessor for _ProtoActionProperty(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_93_0();
  v18 = type metadata accessor for _ProtoIntentsUI_Standard(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v22 = v21 - v20;
  if (*(v2 + 40))
  {
    sub_26A2B5C1C();
  }

  else
  {
    v31 = v11;
    v32 = v8;
    OUTLINED_FUNCTION_3_35();
    sub_26A2B5C1C();
    sub_26A0E4784(*v22, *(v22 + 8));
    *v22 = xmmword_26A426400;
    v30 = *(v18 + 36);
    sub_26A10FD9C();
    v23 = v4;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
    sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
    if (EnumTagSinglePayload != 1)
    {
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v16, 1, v23);
      v25 = v23;
      if (v26)
      {
        v27 = v31;
        *v31 = MEMORY[0x277D84F90];
        *(v27 + 8) = 0;
        *(v27 + 16) = 0xE000000000000000;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        OUTLINED_FUNCTION_37(v16, 1, v25);
        if (!v26)
        {
          sub_26A0E48F0(v16, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        v27 = v31;
        sub_26A2B5C70();
      }

      _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v32);
      sub_26A2B5D88(v27, type metadata accessor for _ProtoActionProperty);
      v28 = v30;
      sub_26A0E48F0(v22 + v30, &off_28036C7C0, &off_26A427400);
      sub_26A2B5C70();
      __swift_storeEnumTagSinglePayload(v22 + v28, 0, 1, v25);
    }

    sub_26A2B5C70();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t IntentsUIStandard.init(interaction:slots:action:componentName:safeForLogging:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_50();
  sub_26A2B5D40(v11, v12, &protocol conformance descriptor for _ProtoIntentsUI_Standard);
  sub_26A4249C4();

  if (!v7)
  {
    sub_26A2B5C70();
  }

  return sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t sub_26A2B4054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v54 = a5;
  v52 = a4;
  v50 = a3;
  v59 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntentsUIStandard.Slot(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) - 8;
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = v46 - v19;
  v53 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v53);
  v46[2] = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v46[1] = v46 - v22;
  v23 = objc_opt_self();
  v56[0] = 0;
  v24 = [v23 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v56];
  v25 = v56[0];
  if (!v24)
  {
    v44 = v25;
    sub_26A4245B4();

    return swift_willThrow();
  }

  v48 = a6;
  v26 = sub_26A4246D4();
  v28 = v27;

  sub_26A0E4784(*a1, *(a1 + 8));
  *a1 = v26;
  *(a1 + 8) = v28;
  v47 = a1;
  v29 = v50;
  v30 = *(v50 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v46[0] = v7;
    v56[0] = MEMORY[0x277D84F90];
    sub_26A10D8C4(0, v30, 0);
    v31 = v56[0];
    v32 = v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v33 = *(v14 + 72);
    do
    {
      sub_26A2B5C1C();
      sub_26A2B5C1C();
      sub_26A2B5D88(v16, type metadata accessor for IntentsUIStandard.Slot);
      v56[0] = v31;
      v35 = v31[2];
      v34 = v31[3];
      if (v35 >= v34 >> 1)
      {
        sub_26A10D8C4(v34 > 1, v35 + 1, 1);
        v31 = v56[0];
      }

      v31[2] = v35 + 1;
      sub_26A2B5C70();
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  v36 = v55;
  v37 = v47;

  *(v37 + 16) = v31;
  sub_26A10FD9C();
  v38 = v57;
  v39 = v48;
  if (!v57)
  {
    sub_26A0E48F0(v56, &qword_28036CAF8, &unk_26A426D30);
    v41 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v53);
    goto LABEL_12;
  }

  v40 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v40 + 8))(v38, v40);
  v41 = v51;
  sub_26A2B5C70();
  v42 = v53;
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v53);
  __swift_destroy_boxed_opaque_existential_1(v56);
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
LABEL_12:
    sub_26A0E48F0(v41, &off_28036C7C0, &off_26A427400);
    goto LABEL_13;
  }

  sub_26A2B5C70();
  sub_26A2B5C70();
  v43 = *(type metadata accessor for _ProtoIntentsUI_Standard(0) + 36);
  sub_26A0E48F0(v37 + v43, &off_28036C7C0, &off_26A427400);
  sub_26A2B5C70();
  __swift_storeEnumTagSinglePayload(v37 + v43, 0, 1, v42);
LABEL_13:
  *(v37 + 40) = v54 & 1;

  *(v37 + 24) = v39;
  *(v37 + 32) = v36;
  return result;
}

uint64_t IntentsUIStandard.init(interaction:slots:action:componentName:safeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_22_16();
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_0_50();
  sub_26A2B5D40(v9, v10, &protocol conformance descriptor for _ProtoIntentsUI_Standard);
  sub_26A4249C4();
  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);

  if (!v13)
  {
    sub_26A2B5C70();
  }

  return sub_26A0E48F0(v12, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t IntentsUIStandard.init(interaction:slots:componentName:safeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26A2B4984(a1, a2, a3, a4, a5, sub_26A2B5FC0);
}

{
  return sub_26A2B4984(a1, a2, a3, a4, a5, sub_26A2B5FC0);
}

uint64_t IntentsUIStandard.init(interaction:slots:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_16();
  v6 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoIntentsUI_Standard(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_0_50();
  sub_26A2B5D40(v8, v9, &protocol conformance descriptor for _ProtoIntentsUI_Standard);
  sub_26A4249C4();

  if (!v4)
  {
    sub_26A2B5C70();
  }

  return sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t IntentsUIStandard.init(interaction:slots:)(uint64_t a1, uint64_t a2)
{
  return sub_26A2B4B04(a1, a2, sub_26A2B5FC0);
}

{
  return sub_26A2B4B04(a1, a2, sub_26A2B5FC0);
}

uint64_t sub_26A2B4984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  OUTLINED_FUNCTION_22_16();
  v15 = v8;
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  OUTLINED_FUNCTION_0_50();
  sub_26A2B5D40(v10, v11, &protocol conformance descriptor for _ProtoIntentsUI_Standard);
  sub_26A4249C4();

  if (!v6)
  {
    sub_26A2B5C70();
  }

  return sub_26A0E48F0(v13, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t sub_26A2B4B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_16();
  v5 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoIntentsUI_Standard(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_0_50();
  sub_26A2B5D40(v7, v8, &protocol conformance descriptor for _ProtoIntentsUI_Standard);
  sub_26A4249C4();

  if (!v3)
  {
    sub_26A2B5C70();
  }

  return sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t IntentsUIStandard.Slot.parameterKeyPaths.getter()
{
  v1 = type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v1 + 20)) + 16, v3);
}

uint64_t IntentsUIStandard.Slot.fallback.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_62_3();
  v6 = type metadata accessor for _ProtoResponse.Component(0);
  a1[3] = v6;
  a1[4] = &protocol witness table for _ProtoResponse.Component;
  __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v7 + 20)) + OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback, v18);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v1, 1, v6);
  if (!v8)
  {
    return sub_26A2B5C70();
  }

  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  result = OUTLINED_FUNCTION_37(v1, 1, v6);
  if (!v8)
  {
    return sub_26A0E48F0(v1, &qword_28036C880, &unk_26A425E30);
  }

  return result;
}

uint64_t IntentsUIStandard.Slot.init(parameterKeyPaths:fallback:)(uint64_t a1, void *a2)
{
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_1_36();
  v5 = sub_26A2B5D40(v3, v4, &protocol conformance descriptor for _ProtoIntentsUI_Standard.Slot);
  OUTLINED_FUNCTION_65_2(v5, v6, v7, v5, v8, v9, v10, v11, v13);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

{
  sub_26A10C258(a1);
  sub_26A0E5D68(a2, v14);
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_1_36();
  v5 = sub_26A2B5D40(v3, v4, &protocol conformance descriptor for _ProtoIntentsUI_Standard.Slot);
  OUTLINED_FUNCTION_65_2(v5, v6, v7, v5, v8, v9, v10, v11, v13);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26A2B5240(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for _ProtoResponse.Component(0);
  MEMORY[0x28223BE20](v4 - 8);

  sub_26A419278(v5);
  _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.setter();
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  (*(v7 + 8))(v6, v7);
  return _ProtoIntentsUI_Standard.Slot.fallback.setter();
}

Swift::String __swiftcall IntentsUIStandard.Slot.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v51[-v7];
  v9 = type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = type metadata accessor for IntentsUIStandard.Slot(0);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_93_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE90, &qword_26A426A18) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_62_3();
  sub_26A2B5C1C();
  sub_26A2B5C1C();
  OUTLINED_FUNCTION_9_28();
  sub_26A2B5C70();
  *(v1 + *(v17 + 40)) = v4;
  sub_26A2B5D88(v2, type metadata accessor for IntentsUIStandard.Slot);
  v19 = *(v17 + 36);
  *(v1 + v19) = MEMORY[0x277D84F90];
  v20 = *(v1 + *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) + 20));
  OUTLINED_FUNCTION_142(v20 + 16, &v52);

  sub_26A3A283C(v21, 0xD000000000000011, 0x800000026A449930, 0);

  OUTLINED_FUNCTION_142(v20 + OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback, v51);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v8, 1, v9);
  if (v22)
  {
    type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    type metadata accessor for _ProtoSeparators(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_37(v8, 1, v9);
    if (!v22)
    {
      sub_26A0E48F0(v8, &qword_28036C880, &unk_26A425E30);
    }
  }

  else
  {
    sub_26A2B5C70();
  }

  v31 = sub_26A1E89D0(v4 & 1);
  v33 = v32;
  sub_26A2B5D88(v13, type metadata accessor for _ProtoResponse.Component);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = *(v1 + v19);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A166F9C(0, *(v35 + 16) + 1, 1, v35);
      v35 = v48;
    }

    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_26A166F9C(v36 > 1, v37 + 1, 1, v35);
      v35 = v49;
    }

    *(v35 + 16) = v37 + 1;
    v45 = (v35 + 32 * v37);
    v45[4] = 0;
    v45[5] = 0;
    v45[6] = v31;
    v45[7] = v33;
    *(v1 + v19) = v35;
  }

  else
  {
  }

  sub_26A0FA0F8(v38, v39, v40, v41, v42, v43, v44);
  sub_26A0E48F0(v1, &qword_28036CE90, &qword_26A426A18);
  OUTLINED_FUNCTION_75();
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t IntentsUIStandard.Slot.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_1_36();
  sub_26A2B5D40(v1, v2, &protocol conformance descriptor for _ProtoIntentsUI_Standard.Slot);

  return sub_26A424B44();
}

uint64_t IntentsUIStandard.Slot.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_1_36();
  sub_26A2B5D40(v0, v1, &protocol conformance descriptor for _ProtoIntentsUI_Standard.Slot);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2B5914(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  sub_26A2B5D40(&qword_2803719F8, type metadata accessor for _ProtoIntentsUI_Standard.Slot, &protocol conformance descriptor for _ProtoIntentsUI_Standard.Slot);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t IntentsUIStandard.componentProto.getter()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = type metadata accessor for _ProtoIntentsUI_Standard(v1);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_35();
  sub_26A2B5C1C();
  sub_26A0E48F0(v0, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_8_22();
  sub_26A2B5C70();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v4);
}

uint64_t IntentsUIStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for IntentsUIStandard(0);
  *(inited + 64) = &protocol witness table for IntentsUIStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_7_17();
  sub_26A2B5C1C();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2B5D40(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2B5C1C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2B5C70()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2B5D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2B5D88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2B5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double OUTLINED_FUNCTION_10_31()
{
  *(v2 - 80) = 0;
  result = 0.0;
  *(v2 - 112) = 0u;
  *(v2 - 96) = 0u;
  *(v2 - 160) = v0;
  *(v2 - 152) = v1;
  *(v2 - 144) = v2 - 112;
  *(v2 - 136) = 0;
  return result;
}

unint64_t _ProtoSeparatorStyle.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A2B60E4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoSeparatorStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A2B6118(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2B6C2C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t static _ProtoSeparatorStyle.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_280371A28 = a1;
}

uint64_t sub_26A2B6260@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoSeparatorStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t _ProtoSeparators.top.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t _ProtoSeparators.bottom.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t _ProtoSeparators.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoSeparators(0) + 24);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for _ProtoSeparators(uint64_t a1)
{
  result = qword_280371AA0;
  if (!qword_280371AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoSeparators.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoSeparators(0) + 24);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _ProtoSeparators.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for _ProtoSeparators(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A2B64DC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371A30);
  __swift_project_value_buffer(v0, qword_280371A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42DE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STANDARD";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REMOVE";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EDGE_TO_EDGE_THICK";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EDGE_TO_EDGE";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "INSET_LEADING";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "INSET_BOTH";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NONE";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2B6818()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371A48);
  __swift_project_value_buffer(v0, qword_280371A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "top";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bottom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoSeparators.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_5_6();
      sub_26A2B6AE0(v7, v8);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_5_6();
      sub_26A2B6A78(v5, v6);
    }
  }

  return result;
}

uint64_t _ProtoSeparators.traverse<A>(visitor:)(uint64_t result, uint64_t a2)
{
  if (!*v2 || (v4 = *(v2 + 8), v9 = *v2, v10 = v4, v5 = sub_26A2B6C2C(), v6 = OUTLINED_FUNCTION_2_32(&v9, 1, &type metadata for _ProtoSeparatorStyle, v5), !v3))
  {
    if (!v2[2] || (v7 = *(v2 + 24), v9 = v2[2], v10 = v7, v8 = sub_26A2B6C2C(), v6 = OUTLINED_FUNCTION_2_32(&v9, 2, &type metadata for _ProtoSeparatorStyle, v8), !v3))
    {
      type metadata accessor for _ProtoSeparators(0);
      return sub_26A424774();
    }
  }

  return v6;
}

unint64_t sub_26A2B6C2C()
{
  result = qword_280371A60;
  if (!qword_280371A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371A60);
  }

  return result;
}

uint64_t static _ProtoSeparators.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v2)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_6:
    v4 = a1[2];
    v5 = a2[2];
    if (*(a2 + 24) == 1)
    {
      switch(v5)
      {
        case 1:
          if (v4 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v4 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v4 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v4 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v4 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v4 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v4)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v4 == v5)
    {
LABEL_11:
      type metadata accessor for _ProtoSeparators(0);
      sub_26A424794();
      sub_26A2B7374(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_26A424B64() & 1;
    }
  }

  return 0;
}

uint64_t _ProtoSeparators.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoSeparators(0);
  sub_26A2B7374(&qword_280371A68, type metadata accessor for _ProtoSeparators, &protocol conformance descriptor for _ProtoSeparators);
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A2B6EC0()
{
  result = qword_280371A70;
  if (!qword_280371A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371A70);
  }

  return result;
}

unint64_t sub_26A2B6F18()
{
  result = qword_280371A78;
  if (!qword_280371A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371A78);
  }

  return result;
}

unint64_t sub_26A2B6F70()
{
  result = qword_280371A80;
  if (!qword_280371A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371A88, &qword_26A4399A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371A80);
  }

  return result;
}

uint64_t sub_26A2B7078(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2B7374(&qword_280371AB0, type metadata accessor for _ProtoSeparators, &protocol conformance descriptor for _ProtoSeparators);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2B7188(uint64_t a1)
{
  v2 = sub_26A2B7374(&qword_28036F440, type metadata accessor for _ProtoSeparators, &protocol conformance descriptor for _ProtoSeparators);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2B7240(uint64_t a1, uint64_t a2)
{
  sub_26A2B7374(&qword_28036F440, type metadata accessor for _ProtoSeparators, &protocol conformance descriptor for _ProtoSeparators);

  return sub_26A4249B4();
}

uint64_t sub_26A2B72F8(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2B7374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249F4();
}

uint64_t SummaryItemStandard.text1.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for _ProtoSummaryItem_Standard(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v24);
  sub_26A10FD9C();
  v11 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v11, v12, v5);
  if (v13)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v21, v22, v5);
    if (!v13)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2BA6FC();
  }

  return sub_26A2BA6FC();
}

void sub_26A2B75CC()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoMultilineTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_58_12();
    }

    sub_26A2BA6FC();
    v3 = 0;
  }

  v20 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemStandard.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_58_12();
    }

    sub_26A2BA6FC();
    v2 = 0;
  }

  v19 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemStandard.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_58_12();
    }

    sub_26A2BA6FC();
    v2 = 0;
  }

  v19 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemStandard.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_58_12();
    }

    sub_26A2BA6FC();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemStandard.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Standard(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemStandard.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Standard(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_Standard.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v182 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v9);
  v180 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v17);
  v175 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v29);
  v30 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v34);
  v36 = v169 - v35;
  v37 = OUTLINED_FUNCTION_41_2();
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  v43 = v169 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v169 - v45;
  OUTLINED_FUNCTION_6_21();
  sub_26A2BAB40();
  v47 = *(type metadata accessor for _ProtoSummaryItem_Standard(0) + 20);
  v183 = v1;
  v184 = v47;
  v48 = *(v1 + v47);
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v191);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v46, 1, v30);
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  v49 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    v50 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v50, v51, v30);
    if (v52)
    {
      *v36 = v49;
      *(v36 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v53 = v182;
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v182);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);
      v60 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v60, v61, v30);
      v62 = v183;
      if (!v52)
      {
        sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2BA6FC();
      v62 = v183;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_17_16();
    sub_26A2BA750(v36, v63);
    v64 = v184;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v62 + v64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v66);
      OUTLINED_FUNCTION_26_23();
      v48 = v67;
      *(v62 + v64) = v67;
    }

    OUTLINED_FUNCTION_129();
    sub_26A2BA6FC();
    v68 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v30);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v190);
    sub_26A10CF40();
    swift_endAccess();
  }

  v176 = v30;
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v190);
  v71 = v174;
  OUTLINED_FUNCTION_209();
  v72 = v175;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v175);
  OUTLINED_FUNCTION_162_0(v71);
  if (EnumTagSinglePayload == 1)
  {
    v74 = v49;
    v75 = v182;
    v76 = v183;
  }

  else
  {
    v77 = v169[0];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v77, 1, v72);
    v76 = v183;
    v78 = v184;
    if (v52)
    {
      OUTLINED_FUNCTION_35_17(v186);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v79 = OUTLINED_FUNCTION_44_0(*(v72 + 32));
      v85 = v182;
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v182);
      v82 = OUTLINED_FUNCTION_44_0(*(v72 + 36));
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
      OUTLINED_FUNCTION_37(v77, 1, v72);
      if (!v52)
      {
        sub_26A0E48F0(v77, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      v85 = v182;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_20();
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v76 + v78);
    v75 = v85;
    if ((v86 & 1) == 0)
    {
      v87 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v87);
      OUTLINED_FUNCTION_26_23();
      v48 = v88;
      *(v76 + v78) = v88;
    }

    v74 = v49;
    OUTLINED_FUNCTION_129();
    sub_26A2BA6FC();
    v89 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v72);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v189);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v189);
  v92 = v177;
  sub_26A10FD9C();
  v93 = v72;
  v94 = __swift_getEnumTagSinglePayload(v92, 1, v72);
  sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
  if (v94 == 1)
  {
    v95 = v74;
    v96 = v75;
    v97 = v76;
    v98 = v176;
  }

  else
  {
    v99 = v169[3];
    sub_26A10FD9C();
    v100 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v100, v101, v93);
    v102 = v184;
    v95 = v74;
    if (v52)
    {
      OUTLINED_FUNCTION_35_17(v187);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v103 = OUTLINED_FUNCTION_44_0(*(v93 + 32));
      v96 = v75;
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v75);
      v106 = OUTLINED_FUNCTION_44_0(*(v93 + 36));
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v75);
      v109 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37(v109, v110, v93);
      v97 = v76;
      if (!v52)
      {
        sub_26A0E48F0(v99, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      v96 = v75;
      v97 = v76;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_20();
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v97 + v102);
    v98 = v176;
    if ((v111 & 1) == 0)
    {
      v112 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v112);
      OUTLINED_FUNCTION_26_23();
      v48 = v113;
      *(v97 + v102) = v113;
    }

    sub_26A2BA6FC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v93);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v188);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v188);
  v117 = v178;
  OUTLINED_FUNCTION_209();
  v118 = __swift_getEnumTagSinglePayload(v117, 1, v98);
  OUTLINED_FUNCTION_162_0(v117);
  if (v118 == 1)
  {
    v119 = v95;
  }

  else
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(&unk_26A425BF0, 1, v98);
    v120 = v184;
    if (v52)
    {
      OUTLINED_FUNCTION_35_17(v188);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v121 = OUTLINED_FUNCTION_44_0(*(v98 + 32));
      __swift_storeEnumTagSinglePayload(v121, v122, v123, v96);
      v124 = OUTLINED_FUNCTION_44_0(*(v98 + 36));
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v96);
      OUTLINED_FUNCTION_37(&unk_26A425BF0, 1, v98);
      if (!v52)
      {
        sub_26A0E48F0(&unk_26A425BF0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_17_16();
    sub_26A2BA750(v48, v127);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v97 + v120);
    v129 = v98;
    if ((v128 & 1) == 0)
    {
      v130 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v130);
      OUTLINED_FUNCTION_26_23();
      v48 = v131;
      *(v97 + v120) = v131;
    }

    v119 = v95;
    sub_26A2BA6FC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v129);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v187);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v187);
  v135 = v179;
  OUTLINED_FUNCTION_209();
  v136 = v180;
  v137 = __swift_getEnumTagSinglePayload(v135, 1, v180);
  OUTLINED_FUNCTION_162_0(v135);
  if (v137 == 1)
  {
    v138 = v119;
  }

  else
  {
    v139 = v169[9];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v139, 1, v136);
    v140 = v184;
    if (v52)
    {
      v48 = v170;
      v138 = v119;
      *v170 = v119;
      *(v48 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v141 = OUTLINED_FUNCTION_44_0(*(v136 + 32));
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v96);
      v144 = OUTLINED_FUNCTION_44_0(*(v136 + 36));
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v96);
      OUTLINED_FUNCTION_37(v139, 1, v136);
      if (!v52)
      {
        sub_26A0E48F0(v139, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      v138 = v119;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A2BA750(v48, type metadata accessor for _ProtoVisualProperty);
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v97 + v140);
    if ((v147 & 1) == 0)
    {
      v148 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v148);
      OUTLINED_FUNCTION_26_23();
      v48 = v149;
      *(v97 + v140) = v149;
    }

    OUTLINED_FUNCTION_129();
    sub_26A2BA6FC();
    v150 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v136);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v186);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v186);
  v153 = v181;
  OUTLINED_FUNCTION_209();
  v154 = __swift_getEnumTagSinglePayload(v153, 1, v96);
  OUTLINED_FUNCTION_162_0(v153);
  if (v154 != 1)
  {
    v155 = v171;
    sub_26A10FD9C();
    v156 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v156, v157, v96);
    v158 = v184;
    if (v52)
    {
      v48 = v172;
      *v172 = v138;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v159 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v159, v160, v96);
      v161 = v173;
      if (!v52)
      {
        sub_26A0E48F0(v155, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      v161 = v173;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v161);
    sub_26A2BA750(v48, type metadata accessor for _ProtoActionProperty);
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v163 = *(v97 + v158);
    if ((v162 & 1) == 0)
    {
      v164 = type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v164);
      sub_26A18D9D4();
      v163 = v165;
      *(v97 + v158) = v165;
    }

    OUTLINED_FUNCTION_129();
    sub_26A2BA6FC();
    v166 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v96);
    OUTLINED_FUNCTION_211(v163 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v185);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemStandard.init(text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoSummaryItem_Standard(0);
  OUTLINED_FUNCTION_5_29();
  v16 = sub_26A2BAA1C(v14, v15, &protocol conformance descriptor for _ProtoSummaryItem_Standard);
  OUTLINED_FUNCTION_45_7(v16, v17, v18, v16, v19, v20, v21, v22);

  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a5, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a2, &qword_28036CB10, &unk_26A426460);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2B8F54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v103 = a8;
  v99 = a6;
  v100 = a7;
  v96 = a5;
  v91 = a4;
  v92 = a3;
  v90 = a1;
  v12 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = &v78 - v15;
  v101 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v101);
  v84 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v78 - v18;
  v19 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v19 - 8);
  v88 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v21 - 8);
  v98 = &v78 - v22;
  v97 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v97);
  v82 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v83 = &v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v26 - 8);
  v95 = &v78 - v27;
  v28 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v28 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v29 - 8);
  v93 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  v34 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v34);
  v79 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v86 = &v78 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v78 - v39;
  v94 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v94);
  v81 = &v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v78 - v43;
  v45 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v78 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2[3];
  v49 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v48);
  (*(v49 + 8))(v48, v49);
  v87 = v47;
  sub_26A2BA6FC();
  v80 = v44;
  _ProtoSummaryItem_Standard.text1.setter();
  sub_26A10FD9C();
  v50 = v105;
  if (v105)
  {
    v51 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v51 + 8))(v50, v51);
    sub_26A2BA6FC();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    __swift_destroy_boxed_opaque_existential_1(v104);
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
    {
      sub_26A2BA6FC();
      sub_26A2BAB40();
      _ProtoSummaryItem_Standard.text2.setter();
      sub_26A2BA750(v40, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v104, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  }

  sub_26A0E48F0(v33, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  sub_26A10FD9C();
  v52 = v105;
  if (v105)
  {
    v53 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v53 + 8))(v52, v53);
    v54 = v93;
    sub_26A2BA6FC();
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v34);
    __swift_destroy_boxed_opaque_existential_1(v104);
    if (__swift_getEnumTagSinglePayload(v54, 1, v34) != 1)
    {
      v55 = v79;
      sub_26A2BA6FC();
      sub_26A2BAB40();
      _ProtoSummaryItem_Standard.text3.setter();
      sub_26A2BA750(v55, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v104, &qword_28036CB10, &unk_26A426460);
    v54 = v93;
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v34);
  }

  sub_26A0E48F0(v54, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v56 = v105;
  if (v105)
  {
    v57 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v57 + 8))(v56, v57);
    v58 = v95;
    sub_26A2BA6FC();
    v59 = v94;
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(v104);
    if (__swift_getEnumTagSinglePayload(v58, 1, v59) != 1)
    {
      v60 = v81;
      sub_26A2BA6FC();
      sub_26A2BAB40();
      _ProtoSummaryItem_Standard.text4.setter();
      sub_26A2BA750(v60, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v104, &qword_28036CB08, &unk_26A428720);
    v58 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v94);
  }

  sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v61 = v105;
  if (v105)
  {
    v62 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v62 + 8))(v61, v62);
    v63 = v98;
    sub_26A2BA6FC();
    v64 = v97;
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v97);
    __swift_destroy_boxed_opaque_existential_1(v104);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) != 1)
    {
      v65 = v83;
      sub_26A2BA6FC();
      sub_26A2BAB40();
      _ProtoSummaryItem_Standard.thumbnail.setter();
      sub_26A2BA750(v65, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v104, &qword_28036CB00, &unk_26A426450);
    v63 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v97);
  }

  sub_26A0E48F0(v63, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v66 = v105;
  if (v105)
  {
    v67 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v67 + 8))(v66, v67);
    v68 = v102;
    sub_26A2BA6FC();
    v69 = v101;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    if (__swift_getEnumTagSinglePayload(v68, 1, v69) != 1)
    {
      v70 = v85;
      sub_26A2BA6FC();
      sub_26A2BAB40();
      _ProtoSummaryItem_Standard.action.setter();
      sub_26A2BA750(v70, type metadata accessor for _ProtoActionProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v104, &qword_28036CAF8, &unk_26A426D30);
    v68 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v101);
  }

  sub_26A0E48F0(v68, &off_28036C7C0, &off_26A427400);
LABEL_26:

  result = _ProtoSummaryItem_Standard.componentName.setter(v103, a9, v71, v72, v73);
  if (a11)
  {

    return _ProtoSummaryItem_Standard.linkIdentifier.setter(a10, a11, v75, v76, v77);
  }

  return result;
}

uint64_t SummaryItemStandard.init(text1:text2:text3:text4:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_37_12();
  v24 = v13;
  v25 = v12;
  sub_26A0E5D68(v12, v31);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_51_12();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Standard(0);
  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_5_29();
  v16 = sub_26A2BAA1C(v14, v15, &protocol conformance descriptor for _ProtoSummaryItem_Standard);
  OUTLINED_FUNCTION_45_7(v16, v17, v18, v16, v19, v20, v21, v22);

  sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v9, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_55_11(v8);
  OUTLINED_FUNCTION_55_11(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_26A0E48F0(v26, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v27, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v28, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_55_11(v29);
  OUTLINED_FUNCTION_55_11(v30);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t SummaryItemStandard.init(text1:text2:text3:text4:thumbnail:action:)()
{
  OUTLINED_FUNCTION_37_12();
  v9 = v4;
  v10 = v5;
  sub_26A0E5D68(v5, v16);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_51_12();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Standard(0);
  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_5_29();
  sub_26A2BAA1C(v6, v7, &protocol conformance descriptor for _ProtoSummaryItem_Standard);
  sub_26A4249C4();
  sub_26A0E48F0(v3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v2, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v1, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v0);
  OUTLINED_FUNCTION_164_0(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v12, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v13, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v14);
  OUTLINED_FUNCTION_164_0(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

Swift::String __swiftcall SummaryItemStandard.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v83 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v86 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v85 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v84 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v82 - v26;
  v28 = type metadata accessor for SummaryItemStandard(0);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE88, &qword_26A426A10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &v82 - v35;
  OUTLINED_FUNCTION_14_16();
  sub_26A2BAB40();
  if (v4)
  {
    _ProtoSummaryItem_Standard.redactedProto.getter();
  }

  else
  {
    sub_26A2BAB40();
  }

  sub_26A2BA6FC();
  v36[*(v33 + 32)] = v4 & 1;
  sub_26A2BA750(v32, type metadata accessor for SummaryItemStandard);
  v37 = MEMORY[0x277D84F90];
  *&v36[*(v33 + 28)] = MEMORY[0x277D84F90];
  v38 = type metadata accessor for _ProtoSummaryItem_Standard(0);
  OUTLINED_FUNCTION_142(*&v36[*(v38 + 20)] + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_StandardP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v87);
  sub_26A10FD9C();
  v39 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v39, v40, v17);
  if (v41)
  {
    *v21 = v37;
    *(v21 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v42 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
    v49 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v49, v50, v17);
    if (!v41)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2BA6FC();
  }

  sub_26A2BA6FC();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_222();
  sub_26A107918(v27, v55 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v27);
  SummaryItemStandard.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107940(v14, v56 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  sub_26A0E48F0(v14, &qword_28036CB28, &qword_26A427980);
  SummaryItemStandard.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107940(v14, v57 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v14, &qword_28036CB28, &qword_26A427980);
  v58 = v84;
  SummaryItemStandard.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107918(v58, v59 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v58);
  v60 = v85;
  SummaryItemStandard.thumbnail.getter();
  sub_26A1078F0(v60, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v60, &qword_28036CB20, &unk_26A426470);
  v61 = v86;
  SummaryItemStandard.action.getter();
  sub_26A1077EC();
  sub_26A0E48F0(v61, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7CA0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v63, v64, v65, v66, v82, v83);

  v67 = swift_getKeyPath();
  sub_26A0F8634(v67, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v68, v69, v70, v71, v82, v83);

  sub_26A0FE7E0(v72, v73, v74, v75, v76, v77, v78);
  sub_26A0E48F0(v36, &qword_28036CE88, &qword_26A426A10);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v80;
  result._countAndFlagsBits = v79;
  return result;
}

uint64_t type metadata accessor for SummaryItemStandard(uint64_t a1)
{
  result = qword_280371AB8;
  if (!qword_280371AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2BA6FC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2BA750(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SummaryItemStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_6_21();
  sub_26A2BAB40();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_15_23();
  sub_26A2BA6FC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SummaryItemStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemStandard(0);
  *(inited + 64) = &protocol witness table for SummaryItemStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_14_16();
  sub_26A2BAB40();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2BAA1C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2BAA1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2BAAD4(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_Standard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2BAB40()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_22()
{

  return type metadata accessor for _ProtoSummaryItem_Standard(0);
}

uint64_t OUTLINED_FUNCTION_21_20()
{

  return sub_26A2BA750(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

void OUTLINED_FUNCTION_26_23()
{

  sub_26A18D9D4();
}

void OUTLINED_FUNCTION_35_17(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *v2 = v1;
  *(v2 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_45_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return sub_26A2BA6FC();
}

uint64_t OUTLINED_FUNCTION_51_12()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_53_12()
{

  return type metadata accessor for _ProtoSummaryItem_Standard(0);
}

uint64_t OUTLINED_FUNCTION_55_11(uint64_t a1)
{

  return sub_26A0E48F0(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_58_12()
{

  return sub_26A2BA6FC();
}

uint64_t CustomCanvas.init(bundleName:viewId:viewData:)()
{
  OUTLINED_FUNCTION_2_33();
  type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_0_51();
  v2 = sub_26A2BBFC8(v0, v1, &protocol conformance descriptor for _ProtoCustomCanvas);
  OUTLINED_FUNCTION_6_22(v2, v3, v4, v2, v5, v6, v7, v8, v12);

  v9 = OUTLINED_FUNCTION_44();
  return sub_26A0E4784(v9, v10);
}

Swift::String __swiftcall CustomCanvas.description(redacted:)(Swift::Bool redacted)
{
  v1 = type metadata accessor for CustomCanvas(0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_18();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v40 - v3;
  OUTLINED_FUNCTION_7_18();
  v5 = OUTLINED_FUNCTION_12_2();
  sub_26A2BB77C(v5, v6, v7);
  sub_26A39F8C8();
  KeyPath = swift_getKeyPath();
  sub_26A0F7F70(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, v9, v10, v11, v12, v40, v41);

  v13 = swift_getKeyPath();
  sub_26A0F7F70(v13, 0x644977656976, 0xE600000000000000, 1, v14, v15, v16, v17, v40, v41);

  v18 = OUTLINED_FUNCTION_12_2();
  sub_26A0E45C0(v18, v19);
  v20 = OUTLINED_FUNCTION_12_2();
  sub_26A3A7078(v20, v21, v22, 0xE800000000000000);
  v23 = OUTLINED_FUNCTION_12_2();
  sub_26A0E4784(v23, v24);
  v25 = swift_getKeyPath();
  sub_26A0F7F70(v25, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v26, v27, v28, v29, v40, v41);

  sub_26A146B68(v4[65], 0xD000000000000011, 0x800000026A446720, 0);
  sub_26A146B68(v4[66], 0xD000000000000017, 0x800000026A446740, 0);
  sub_26A1018D0(v30, v31, v32, v33, v34, v35, v36);
  sub_26A0E48F0(v4, &qword_28036CD58, &unk_26A437B60);
  v37 = OUTLINED_FUNCTION_12_2();
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t _ProtoCustomCanvas.redactedProto.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_1_37();
  result = sub_26A2BB77C(v1, v5, v4);
  if ((v3 & 1) == 0)
  {

    OUTLINED_FUNCTION_4_29();
    *a1 = v7;
    a1[1] = v8;

    OUTLINED_FUNCTION_3_36();
    a1[2] = v9;
    a1[3] = v10;

    sub_26A28E6C8();
    v12 = v11;
    v14 = v13;
    result = sub_26A0E4784(a1[4], a1[5]);
    a1[4] = v12;
    a1[5] = v14;
  }

  return result;
}

uint64_t CustomCanvas.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v0, v1);
  return OUTLINED_FUNCTION_175();
}

uint64_t CustomCanvas.redactedProto.getter@<X0>(void *a3@<X8>)
{
  v5 = *(v3 + 64);
  OUTLINED_FUNCTION_1_37();
  result = sub_26A2BB77C(v3, v7, v6);
  if ((v5 & 1) == 0)
  {

    OUTLINED_FUNCTION_4_29();
    *a3 = v9;
    a3[1] = v10;

    OUTLINED_FUNCTION_3_36();
    a3[2] = v11;
    a3[3] = v12;

    sub_26A28E6C8();
    v14 = v13;
    v16 = v15;
    result = sub_26A0E4784(a3[4], a3[5]);
    a3[4] = v14;
    a3[5] = v16;
  }

  return result;
}

uint64_t CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11)
{
  type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v13, v14, &protocol conformance descriptor for _ProtoCustomCanvas);
  sub_26A4249C4();

  sub_26A0E4784(a5, a6);
}

uint64_t sub_26A2BB380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{

  *a1 = a2;
  *(a1 + 8) = a3;

  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  sub_26A0E45C0(a6, a7);
  sub_26A0E4784(v19, v20);
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;

  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 65) = a11;
  *(a1 + 66) = a12;
  return result;
}

uint64_t sub_26A2BB490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCustomCanvas(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CustomCanvas(uint64_t a1)
{
  result = qword_28157B4C8;
  if (!qword_28157B4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CustomCanvas.init(bundleName:viewId:viewData:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_14_17();
  v34 = v33;
  v36 = v35;
  type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v37, v38, &protocol conformance descriptor for _ProtoCustomCanvas);
  sub_26A4249C4();

  sub_26A0E4784(v36, v34);

  OUTLINED_FUNCTION_13_19();
}

uint64_t sub_26A2BB77C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_175();
  v5(v4);
  return a2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomCanvas.jsonString(redacted:)(Swift::Bool redacted)
{
  v3 = v2;
  v4 = type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = sub_26A4247D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  if (*(v1 + 64) == 1)
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_51();
    sub_26A2BBFC8(v16, v17, &protocol conformance descriptor for _ProtoCustomCanvas);
    v18 = sub_26A424954();
    if (!v2)
    {
      v3 = v18;
      v4 = v19;
    }

    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_26A2BB77C(v1, v8, type metadata accessor for _ProtoCustomCanvas);

    OUTLINED_FUNCTION_4_29();
    *v8 = v20;
    v8[1] = v21;

    OUTLINED_FUNCTION_3_36();
    v8[2] = v22;
    v8[3] = v23;

    sub_26A28E6C8();
    v25 = v24;
    v27 = v26;
    sub_26A0E4784(v8[4], v8[5]);
    v8[4] = v25;
    v8[5] = v27;
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_51();
    sub_26A2BBFC8(v28, v29, &protocol conformance descriptor for _ProtoCustomCanvas);
    v30 = sub_26A424954();
    if (!v2)
    {
      v3 = v30;
      v4 = v31;
    }

    (*(v10 + 8))(v12, v9);
    sub_26A2BBEDC(v8);
  }

  v32 = v3;
  v33 = v4;
  result._object = v33;
  result._countAndFlagsBits = v32;
  return result;
}

uint64_t CustomCanvas.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v1, v2, &protocol conformance descriptor for _ProtoCustomCanvas);

  return sub_26A424B44();
}

uint64_t CustomCanvas.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v0, v1, &protocol conformance descriptor for _ProtoCustomCanvas);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2BBBE0(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoCustomCanvas(0);
  sub_26A2BBFC8(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t CustomCanvas.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  v9 = type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for _ProtoSeparators(0);
  __swift_storeEnumTagSinglePayload(a1 + v10, 1, 1, v11);
  OUTLINED_FUNCTION_1_37();
  sub_26A2BB77C(v2, v7, v12);
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  v13 = OUTLINED_FUNCTION_44();
  sub_26A2BB490(v13, v14);
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
}

uint64_t CustomCanvas.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for CustomCanvas(0);
  *(inited + 64) = &protocol witness table for CustomCanvas;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_7_18();
  sub_26A2BB77C(v0, v2, v3);
  swift_beginAccess();

  sub_26A10BF5C(v4);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2BBFC8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2BBEDC(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCustomCanvas(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A2BBFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2BC038(uint64_t a1)
{
  result = type metadata accessor for _ProtoCustomCanvas(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return type metadata accessor for _ProtoCustomCanvas(0);
}

uint64_t _ProtoFactItem_HeroNumber.number.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2BCB20(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142(v3, v6);
  v4 = *v3;

  return v4;
}

uint64_t _ProtoFactItem_HeroNumber.number.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t sub_26A2BD23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_5_3();
    v15 = a5(v16);
    *(v10 + v13) = v15;
  }

  v17 = (v15 + *a6);
  OUTLINED_FUNCTION_26_10(v17, v19);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t _ProtoFactItem_HeroNumber.hasNumber.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2BDC48@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10 - 8];
  v12 = (a1)(0, v9);
  OUTLINED_FUNCTION_142(*(v3 + *(v12 + 20)) + *a2, v16);
  OUTLINED_FUNCTION_73_7();
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v11);
  if (!v13)
  {
    return sub_26A2CDD2C();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v11);
  if (!v13)
  {
    return sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_113_2();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasButton2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2BE674()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v9);
  OUTLINED_FUNCTION_142(v0 + *v4, v2 - 72);
  OUTLINED_FUNCTION_69_2();
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v11)
  {
    return sub_26A2CDD2C();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_28036C428);
  }

  *(v6 + v12) = qword_280371710;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);

  if (EnumTagSinglePayload != 1)
  {
    return sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasButton3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.button1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.button2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.button3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_99_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.hasButton1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

void _ProtoFactItem_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2BFCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A2D1828();
  return a7(v11);
}

void _ProtoFactItem_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C09C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Standard.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_Standard.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A2C0AB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Standard.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_Standard.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoFactItem_ShortNumber.number.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.number.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.number.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasNumber.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearNumber()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.unit.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.unit.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.unit.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasUnit.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearUnit()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C29C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_ShortNumber.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_ShortNumber.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoFactItem_ShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v4);
  if (!v5)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v6);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_109_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_113_2();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_108_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C2F70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_ShortNumber.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_ShortNumber.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A2C3100@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void _ProtoFactItem_HeroNumber.number.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearNumber()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C3DF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_HeroNumber.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_HeroNumber.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoFactItem_HeroNumber.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C40FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_HeroNumber.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_HeroNumber.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoFactItem_Button.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.button1.modify()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_48_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_32_0(v4);
  v5 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = *(v0 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *&v12[v14] = qword_280371710;
    v15 = OUTLINED_FUNCTION_95_1();

    if (v15 != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearButton1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.button2.modify()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_48_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_32_0(v4);
  v5 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = *(v0 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *&v12[v14] = qword_280371710;
    v15 = OUTLINED_FUNCTION_95_1();

    if (v15 != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearButton2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.button3.modify()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_48_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_32_0(v4);
  v5 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = *(v0 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *&v12[v14] = qword_280371710;
    v15 = OUTLINED_FUNCTION_95_1();

    if (v15 != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearButton3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C5578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Button.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_Button.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Button(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoFactItem_Button.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A2C57BC(uint64_t a1, char a2, void (*a3)(void *), void (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A2D1828();
    a3(v6);
    sub_26A2D187C(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_98_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C5924(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Button.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoFactItem_Button.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Button(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void sub_26A2C5A14()
{
  OUTLINED_FUNCTION_76();
  v5 = *v4;
  v6 = *(*v4 + 48);
  v7 = *(*v4 + 56);
  if (v8)
  {
    v9 = v3;

    v10 = OUTLINED_FUNCTION_125();
    v9(v10);
  }

  else
  {
    v11 = v2;
    v12 = v1;
    v13 = v0;
    v14 = *(v5 + 72);
    v15 = *(v5 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v5 + 72);
      v19 = *(v5 + 64);
      v13(0);
      OUTLINED_FUNCTION_100_0();
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_5_3();
      v17 = v12(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *v11);
    OUTLINED_FUNCTION_26_10(v21, v5 + 24);
    *v21 = v6;
    v21[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v22);
}

uint64_t _s10SnippetKit23_ProtoVisualization_MapV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_26A2C5BD8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371AD0);
  __swift_project_value_buffer(v0, qword_280371AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "action";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "component_name";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "link_identifier";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2C5FA0()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2C60D4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v11);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v47 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_129_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  OUTLINED_FUNCTION_129_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_129_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  OUTLINED_FUNCTION_129_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_129_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v54);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &v53);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_4();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v52);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_4();
  v38 = swift_endAccess();
  v39 = (v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1(v38, &v51);
  v41 = *v39;
  v40 = v39[1];
  OUTLINED_FUNCTION_26_10(v36, &v50);
  *v36 = v41;
  v36[1] = v40;

  v43 = (v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1(v42, v49);
  v45 = *v43;
  v44 = v43[1];

  OUTLINED_FUNCTION_140_1(v46, &v48);
  *v47 = v45;
  v47[1] = v44;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2C65FC()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A2C678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A2C6910(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A2C69EC(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A2C6AC8(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A2C6BA4(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A2C6C80(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A2C6D5C(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A2C6E38(a2, a1, a3, a4);
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_13;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_13:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2C6910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C69EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2C7130(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2C7324(a1, a2, a3, a4);
    sub_26A2C7518(a1, a2, a3, a4);
    sub_26A2C770C(a1, a2, a3, a4);
    sub_26A2C7900(a1, a2, a3, a4);
    sub_26A2C7AF4(a1, a2, a3, a4);
    sub_26A2C7CE8(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2C7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C7324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C7518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2C7900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A2C7CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoActionProperty);
}

void sub_26A2C7F08()
{
  OUTLINED_FUNCTION_76();
  v220 = v0;
  v2 = v1;
  v194 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v190 = v4;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v195 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v191 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48();
  v197 = v11;
  v12 = OUTLINED_FUNCTION_45();
  v199 = type metadata accessor for _ProtoVisualProperty(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v192 = v14;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v200 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v196 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v203 = v21;
  v22 = OUTLINED_FUNCTION_45();
  v208 = type metadata accessor for _ProtoMultilineTextProperty(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v202 = v24;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_42();
  v209 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v205 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v212 = v31;
  v32 = OUTLINED_FUNCTION_45();
  v221 = type metadata accessor for _ProtoTextProperty(v32);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  v217 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8();
  v204 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  v211 = v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  v216 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v42);
  v44 = &v189 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v46 = OUTLINED_FUNCTION_41(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  v201 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  v206 = v49;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  v210 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  v214 = v53;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  v213 = v55;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  v215 = v57;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  v218 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  v62 = &v189 - v61;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  sub_26A10FD9C();
  v63 = v220;
  OUTLINED_FUNCTION_128_1(v220 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  v219 = v35;
  v64 = *(v35 + 48);
  sub_26A10FD9C();
  v65 = v63;
  v66 = v221;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v44, 1, v66);
  if (v69)
  {

    sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(&v44[v64], 1, v66);
    v67 = v63;
    if (v69)
    {
      sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    sub_26A0E48F0(v44, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_44;
  }

  v68 = v218;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v44[v64], 1, v66);
  if (v69)
  {

    sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v68, v70);
    goto LABEL_9;
  }

  v71 = v217;
  sub_26A2CDD2C();

  v72 = OUTLINED_FUNCTION_105();
  v74 = static _ProtoTextProperty.== infix(_:_:)(v72, v73);
  sub_26A2D187C(v71, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
  v67 = v65;
  sub_26A2D187C(v68, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_12:
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  v75 = v2;
  v76 = v215;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v67 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  v77 = *(v219 + 48);
  v78 = v216;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_3(v78, 1);
  if (v69)
  {
    sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(v78 + v77);
    if (v69)
    {
      sub_26A0E48F0(v78, &qword_28036C7B8, &unk_26A425BF0);
      v79 = v75;
      goto LABEL_22;
    }

LABEL_20:
    sub_26A0E48F0(v78, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_44;
  }

  v80 = v213;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v78 + v77);
  if (v81)
  {
    sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v80, v82);
    goto LABEL_20;
  }

  v83 = v76;
  v84 = v217;
  sub_26A2CDD2C();
  v85 = OUTLINED_FUNCTION_103();
  LODWORD(v220) = static _ProtoTextProperty.== infix(_:_:)(v85, v86);
  sub_26A2D187C(v84, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2D187C(v80, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v78, &qword_28036C7B8, &unk_26A425BF0);
  v79 = v75;
  if ((v220 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  OUTLINED_FUNCTION_142(v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &v235);
  v87 = v214;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v67 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &v234);
  OUTLINED_FUNCTION_149_4();
  v88 = v211;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v89 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_19(v89, v90);
  if (v69)
  {
    sub_26A0E48F0(v87, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(&qword_280371000 + v88);
    v91 = v212;
    if (!v69)
    {
      goto LABEL_31;
    }

    sub_26A0E48F0(v88, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v92 = v210;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&qword_280371000 + v88);
    v91 = v212;
    if (v93)
    {
      sub_26A0E48F0(v214, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_37();
      v95 = v92;
LABEL_30:
      sub_26A2D187C(v95, v94);
LABEL_31:
      v96 = &qword_28036C7D0;
      v97 = &qword_26A426DE0;
LABEL_42:
      v111 = v88;
      goto LABEL_43;
    }

    v98 = v217;
    sub_26A2CDD2C();
    v99 = OUTLINED_FUNCTION_103();
    v101 = static _ProtoTextProperty.== infix(_:_:)(v99, v100);
    sub_26A2D187C(v98, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v214, &qword_28036C7B8, &unk_26A425BF0);
    v102 = OUTLINED_FUNCTION_88();
    sub_26A2D187C(v102, v103);
    v104 = OUTLINED_FUNCTION_167();
    sub_26A0E48F0(v104, v105, &unk_26A425BF0);
    if ((v101 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  OUTLINED_FUNCTION_142(v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v233);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v67 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v232);
  OUTLINED_FUNCTION_196_0();
  v88 = v209;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v106 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v106, v107);
  if (v69)
  {
    sub_26A0E48F0(v91, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_23(&qword_280371000 + v88);
    if (v69)
    {
      sub_26A0E48F0(v88, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_46;
    }

LABEL_41:
    v96 = &qword_28036F088;
    v97 = &unk_26A42C570;
    goto LABEL_42;
  }

  v108 = v205;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v88);
  if (v109)
  {
    sub_26A0E48F0(v91, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v108, v110);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_155_4();
  v112 = OUTLINED_FUNCTION_103();
  v114 = static _ProtoMultilineTextProperty.== infix(_:_:)(v112, v113);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(&qword_280371000, v115);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v116, v117, v118);
  v119 = OUTLINED_FUNCTION_105();
  sub_26A2D187C(v119, v120);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v121, v122, v123);
  if ((v114 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  OUTLINED_FUNCTION_142(v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v231);
  v124 = v206;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v67 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v230);
  OUTLINED_FUNCTION_196_0();
  v88 = v204;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v125 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v125, v126);
  if (v69)
  {
    sub_26A0E48F0(v124, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(&qword_280371000 + v88);
    if (v69)
    {
      sub_26A0E48F0(v88, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  v127 = v201;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v88);
  if (v128)
  {
    sub_26A0E48F0(v206, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v95 = v127;
    goto LABEL_30;
  }

  v129 = v217;
  sub_26A2CDD2C();
  static _ProtoTextProperty.== infix(_:_:)(v127, v129);
  OUTLINED_FUNCTION_9_29();
  sub_26A2D187C(v129, v130);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v131, v132, v133);
  v134 = OUTLINED_FUNCTION_105();
  sub_26A2D187C(v134, v135);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v136, v137, v138);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_55:
  OUTLINED_FUNCTION_142(v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &v229);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v67 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &v228);
  OUTLINED_FUNCTION_196_0();
  v88 = v200;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v139 = OUTLINED_FUNCTION_271();
  v140 = v199;
  OUTLINED_FUNCTION_48_3(v139, v141);
  if (v69)
  {
    sub_26A0E48F0(v203, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(&qword_280371000 + v88);
    if (v69)
    {
      sub_26A0E48F0(v88, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v142 = v196;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v88);
  if (v143)
  {
    sub_26A0E48F0(v203, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_90_6();
    sub_26A2D187C(v142, v144);
LABEL_63:
    v96 = &qword_28036D190;
    v97 = &unk_26A427130;
    goto LABEL_42;
  }

  v145 = v192;
  sub_26A2CDD2C();
  v146 = OUTLINED_FUNCTION_235();
  static _ProtoVisualProperty.== infix(_:_:)(v146, v147);
  OUTLINED_FUNCTION_86_8();
  sub_26A2D187C(v145, v148);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v149, v150, v151);
  sub_26A2D187C(v142, v140);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v152, v153, v154);
  if ((&qword_28036CAE8 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_65:
  OUTLINED_FUNCTION_142(v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v227);
  v155 = v197;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v67 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v226);
  OUTLINED_FUNCTION_163_2();
  v156 = v195;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v157 = OUTLINED_FUNCTION_107();
  v158 = v194;
  OUTLINED_FUNCTION_19(v157, v159);
  if (!v69)
  {
    v172 = v191;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&qword_280371000 + v156);
    if (!v173)
    {
      v175 = v190;
      sub_26A2CDD2C();
      sub_26A0E36D8(*v172, *v175);
      if (v176)
      {
        v177 = v172[1] == v175[1] && v172[2] == v175[2];
        if (v177 || (sub_26A425354() & 1) != 0)
        {
          v178 = *(v158 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_23_22();
          sub_26A2D18D4(v179, v180, MEMORY[0x277D216D0]);
          v181 = sub_26A424B64();
          OUTLINED_FUNCTION_50_12();
          sub_26A2D187C(v175, v182);
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v183, v184, v185);
          sub_26A2D187C(v172, v178);
          OUTLINED_FUNCTION_69_2();
          v160 = sub_26A0E48F0(v186, v187, v188);
          if ((v181 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_70;
        }
      }

      sub_26A2D187C(v175, type metadata accessor for _ProtoActionProperty);
      sub_26A0E48F0(v197, &off_28036C7C0, &off_26A427400);
      sub_26A2D187C(v172, type metadata accessor for _ProtoActionProperty);
      v111 = OUTLINED_FUNCTION_88();
      v97 = &off_26A427400;
LABEL_43:
      sub_26A0E48F0(v111, v96, v97);
      goto LABEL_44;
    }

    sub_26A0E48F0(v197, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_49_16();
    sub_26A2D187C(v172, v174);
LABEL_83:
    v96 = &qword_28036C7C8;
    v97 = &qword_26A425C00;
    v111 = v156;
    goto LABEL_43;
  }

  sub_26A0E48F0(v155, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_9(&qword_280371000 + v156);
  if (!v69)
  {
    goto LABEL_83;
  }

  v160 = sub_26A0E48F0(v156, &off_28036C7C0, &off_26A427400);
LABEL_70:
  v161 = v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
  v162 = OUTLINED_FUNCTION_129_1(v160, &v225);
  v163 = *(v161 + 8);
  OUTLINED_FUNCTION_122_1(v162, &v224);
  OUTLINED_FUNCTION_168_1();
  if (v69)
  {
    v166 = v163 == v165;
  }

  else
  {
    v166 = 0;
  }

  if (v166 || (OUTLINED_FUNCTION_21_3(), v164 = sub_26A425354(), (v164 & 1) != 0))
  {
    v167 = v79 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
    v168 = OUTLINED_FUNCTION_129_1(v164, &v223);
    v169 = *(v167 + 8);
    OUTLINED_FUNCTION_122_1(v168, &v222);
    OUTLINED_FUNCTION_168_1();
    if (v69)
    {
      v171 = v169 == v170;
    }

    else
    {
      v171 = 0;
    }

    if (!v171)
    {
      OUTLINED_FUNCTION_21_3();
      sub_26A425354();
    }
  }

LABEL_44:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2C920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D88, type metadata accessor for _ProtoFactItem_Standard, &protocol conformance descriptor for _ProtoFactItem_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2C928C(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036D598, type metadata accessor for _ProtoFactItem_Standard, &protocol conformance descriptor for _ProtoFactItem_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2C92FC(uint64_t a1, uint64_t a2)
{
  sub_26A2D18D4(&qword_28036D598, type metadata accessor for _ProtoFactItem_Standard, &protocol conformance descriptor for _ProtoFactItem_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A2C9394()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371AF0);
  __swift_project_value_buffer(v0, qword_280371AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26A42B090;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "number";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "text_1";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_2";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "unit";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "action";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "component_name";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "text_4";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "link_identifier";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2C97A8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_100_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A2C97F8()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, 1, 1, v2);
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2C994C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  v18 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  v25 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit);
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v11);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v11);
  v40 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v49 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  OUTLINED_FUNCTION_73_7();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_73_7();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, &v57);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &v56);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v55);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_3();
  sub_26A10CF40();
  swift_endAccess();
  v41 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName, &v54);
  v42 = *v41;
  v43 = v41[1];
  OUTLINED_FUNCTION_26_10(v36, &v53);
  *v36 = v42;
  v36[1] = v43;

  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v52);
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  v44 = swift_endAccess();
  v45 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1(v44, &v51);
  v47 = *v45;
  v46 = v45[1];

  OUTLINED_FUNCTION_140_1(v48, &v50);
  *v49 = v47;
  v49[1] = v46;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2C9F14()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);

  return v0;
}

uint64_t sub_26A2CA0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_5_3();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_26A2CA190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A2CA330(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A2CA40C(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A2CA4E8(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A2CA5C4(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A2CA6A0(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A2CA77C(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A2CA858(a2, a1, a3, a4);
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_10;
      case 9:
        sub_26A2CA934(a2, a1, a3, a4);
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2CA330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2CAABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2CACC8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2CAEBC(a1, a2, a3, a4);
    sub_26A2CB0B0(a1, a2, a3, a4);
    sub_26A2CB2A4(a1, a2, a3, a4);
    sub_26A2CB498(a1, a2, a3, a4);
    sub_26A2CB68C(a1, a2, a3, a4);
    sub_26A2CB880(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A2CBA74(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2CACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CAEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CB0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2CB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2CB498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CB68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A2CB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoActionProperty);
}

uint64_t sub_26A2CBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoTextProperty);
}

void sub_26A2CBC94()
{
  OUTLINED_FUNCTION_76();
  v244 = v0;
  v2 = v1;
  v217 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v213 = v4;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v218 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v214 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48();
  v223 = v11;
  v12 = OUTLINED_FUNCTION_45();
  v221 = type metadata accessor for _ProtoVisualProperty(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v215 = v14;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v222 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v219 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v226 = v21;
  v22 = OUTLINED_FUNCTION_45();
  v236 = type metadata accessor for _ProtoMultilineTextProperty(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v229 = v24;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v230 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v233 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v227 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  v232 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v231 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_48();
  v240 = v37;
  v38 = OUTLINED_FUNCTION_45();
  v243 = type metadata accessor for _ProtoTextProperty(v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  v237 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8();
  v212 = v43;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  v225 = v45;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  v238 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  v50 = &v210 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v52 = OUTLINED_FUNCTION_41(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8();
  v210 = v53;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  v211 = v55;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  v224 = v57;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  v228 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  v234 = v61;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  v242 = v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  v241 = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  v68 = &v210 - v67;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1(v244 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number);
  v239 = v41;
  v69 = *(v41 + 48);
  OUTLINED_FUNCTION_103();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v50);
  if (v72)
  {

    sub_26A0E48F0(v68, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(&v50[v69]);
    v70 = v2;
    if (v72)
    {
      sub_26A0E48F0(v50, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v74 = &qword_28036C7D0;
    v75 = &qword_26A426DE0;
    v76 = v50;
LABEL_42:
    sub_26A0E48F0(v76, v74, v75);
    goto LABEL_43;
  }

  v71 = v241;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v50[v69]);
  if (v72)
  {

    sub_26A0E48F0(v68, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v71, v73);
    goto LABEL_9;
  }

  v77 = v237;
  sub_26A2CDD2C();

  v78 = static _ProtoTextProperty.== infix(_:_:)(v71, v77);
  sub_26A2D187C(v77, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v68, &qword_28036C7B8, &unk_26A425BF0);
  v70 = v2;
  sub_26A2D187C(v71, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v50, &qword_28036C7B8, &unk_26A425BF0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  v79 = v242;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v80 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_123_1(v80);
  v81 = v238;
  v82 = v239;
  v83 = *(v239 + 48);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v84 = OUTLINED_FUNCTION_107();
  v85 = v243;
  OUTLINED_FUNCTION_19(v84, v86);
  if (v72)
  {
    sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(v81 + v83);
    v87 = v240;
    if (!v72)
    {
      goto LABEL_20;
    }

    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v88 = v234;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v81 + v83);
    v87 = v240;
    if (v89)
    {
      sub_26A0E48F0(v242, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_37();
      v91 = v88;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_146_3();
    static _ProtoTextProperty.== infix(_:_:)(v88, v83);
    OUTLINED_FUNCTION_9_29();
    v92 = v70;
    v93 = v82;
    v94 = v88;
    v96 = v95;
    sub_26A2D187C(v83, v95);
    OUTLINED_FUNCTION_69_2();
    sub_26A0E48F0(v97, v98, v99);
    v100 = v94;
    v82 = v93;
    v70 = v92;
    sub_26A2D187C(v100, v96);
    OUTLINED_FUNCTION_69_2();
    sub_26A0E48F0(v101, v102, v103);
    if ((v85 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &v260);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v104 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v104, &v259);
  OUTLINED_FUNCTION_149_4();
  v105 = v87;
  v106 = v233;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_19(v106, 1);
  if (v72)
  {
    sub_26A0E48F0(v105, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_9(&qword_280371000 + v106);
    if (v72)
    {
      sub_26A0E48F0(v106, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_33;
    }

LABEL_31:
    v74 = &qword_28036F088;
    v75 = &unk_26A42C570;
    v76 = v106;
    goto LABEL_42;
  }

  v107 = v231;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&qword_280371000 + v106);
  if (v108)
  {
    sub_26A0E48F0(v240, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v107, v109);
    goto LABEL_31;
  }

  v110 = v229;
  sub_26A2CDD2C();
  v111 = OUTLINED_FUNCTION_103();
  v113 = static _ProtoMultilineTextProperty.== infix(_:_:)(v111, v112);
  sub_26A2D187C(v110, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A0E48F0(v240, &qword_28036CAE0, &unk_26A4273F0);
  v114 = OUTLINED_FUNCTION_88();
  sub_26A2D187C(v114, v115);
  sub_26A0E48F0(v106, &qword_28036CAE0, &unk_26A4273F0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_33:
  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &v258);
  v116 = v232;
  sub_26A10FD9C();
  v117 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v117, &v257);
  OUTLINED_FUNCTION_196_0();
  v118 = v230;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_3(v118, 1);
  if (v72)
  {
    sub_26A0E48F0(v116, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_23(&qword_280371000 + v118);
    if (v72)
    {
      sub_26A0E48F0(v118, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_45;
    }

LABEL_41:
    v74 = &qword_28036F088;
    v75 = &unk_26A42C570;
    v76 = v118;
    goto LABEL_42;
  }

  v119 = v227;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v118);
  if (v120)
  {
    sub_26A0E48F0(v232, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v119, v121);
    goto LABEL_41;
  }

  v122 = v229;
  sub_26A2CDD2C();
  v123 = OUTLINED_FUNCTION_103();
  v125 = static _ProtoMultilineTextProperty.== infix(_:_:)(v123, v124);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(v122, v126);
  sub_26A0E48F0(v232, &qword_28036CAE0, &unk_26A4273F0);
  v127 = OUTLINED_FUNCTION_88();
  sub_26A2D187C(v127, v128);
  v129 = OUTLINED_FUNCTION_235();
  sub_26A0E48F0(v129, v130, &unk_26A4273F0);
  if ((v125 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, &v256);
  v131 = v228;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v244 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, &v255);
  v132 = *(v82 + 48);
  v133 = v225;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  v81 = v133;
  sub_26A10FD9C();
  v134 = OUTLINED_FUNCTION_271();
  v135 = v243;
  OUTLINED_FUNCTION_19(v134, v136);
  if (!v72)
  {
    v138 = v224;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v133 + v132);
    v137 = v226;
    if (!v139)
    {
      OUTLINED_FUNCTION_146_3();
      v140 = OUTLINED_FUNCTION_235();
      static _ProtoTextProperty.== infix(_:_:)(v140, v141);
      OUTLINED_FUNCTION_9_29();
      v143 = v142;
      sub_26A2D187C(v132, v142);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v144, v145, v146);
      sub_26A2D187C(v138, v143);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v147, v148, v149);
      if ((v135 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_54;
    }

    sub_26A0E48F0(v228, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v91 = v138;
LABEL_19:
    sub_26A2D187C(v91, v90);
LABEL_20:
    v74 = &qword_28036C7D0;
    v75 = &qword_26A426DE0;
LABEL_21:
    v76 = v81;
    goto LABEL_42;
  }

  sub_26A0E48F0(v131, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_9(v133 + v132);
  v137 = v226;
  if (!v72)
  {
    goto LABEL_20;
  }

  sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
LABEL_54:
  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &v254);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v150 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v150, &v253);
  OUTLINED_FUNCTION_163_2();
  v81 = v222;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v151 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_48_3(v151, v152);
  if (v72)
  {
    sub_26A0E48F0(v137, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(&qword_280371000 + v81);
    v153 = v223;
    if (v72)
    {
      sub_26A0E48F0(v81, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_64;
    }

LABEL_62:
    v74 = &qword_28036D190;
    v75 = &unk_26A427130;
    goto LABEL_21;
  }

  v154 = v219;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v81);
  v153 = v223;
  if (v155)
  {
    sub_26A0E48F0(v137, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_90_6();
    sub_26A2D187C(v154, v156);
    goto LABEL_62;
  }

  v157 = v215;
  sub_26A2CDD2C();
  v158 = OUTLINED_FUNCTION_103();
  static _ProtoVisualProperty.== infix(_:_:)(v158, v159);
  OUTLINED_FUNCTION_86_8();
  sub_26A2D187C(v157, v160);
  sub_26A0E48F0(v137, &qword_28036CAE8, &unk_26A426430);
  v161 = OUTLINED_FUNCTION_88();
  sub_26A2D187C(v161, v162);
  sub_26A0E48F0(v81, &qword_28036CAE8, &unk_26A426430);
  if ((&qword_28036CAE8 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_64:
  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v252);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v244 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v251);
  OUTLINED_FUNCTION_149_4();
  v163 = v218;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v164 = v163;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v165 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_19(v165, v166);
  if (v72)
  {
    sub_26A0E48F0(v153, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_9(&qword_280371000 + v163);
    if (v72)
    {
      v167 = sub_26A0E48F0(v163, &off_28036C7C0, &off_26A427400);
      goto LABEL_69;
    }

LABEL_82:
    v74 = &qword_28036C7C8;
    v75 = &qword_26A425C00;
    v76 = v164;
    goto LABEL_42;
  }

  v177 = v214;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&qword_280371000 + v164);
  if (v178)
  {
    sub_26A0E48F0(v153, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_49_16();
    sub_26A2D187C(v177, v179);
    goto LABEL_82;
  }

  v180 = v213;
  sub_26A2CDD2C();
  sub_26A0E36D8(*v177, *v180);
  if ((v181 & 1) == 0 || (v177[1] == v180[1] ? (v182 = v177[2] == v180[2]) : (v182 = 0), !v182 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2D187C(v180, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v153, &off_28036C7C0, &off_26A427400);
    sub_26A2D187C(v177, type metadata accessor for _ProtoActionProperty);
    v76 = OUTLINED_FUNCTION_88();
    v75 = &off_26A427400;
    goto LABEL_42;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_23_22();
  sub_26A2D18D4(v183, v184, MEMORY[0x277D216D0]);
  v185 = sub_26A424B64();
  OUTLINED_FUNCTION_50_12();
  sub_26A2D187C(v180, v186);
  v187 = OUTLINED_FUNCTION_235();
  sub_26A0E48F0(v187, v188, &off_26A427400);
  v189 = OUTLINED_FUNCTION_105();
  sub_26A2D187C(v189, v190);
  v191 = OUTLINED_FUNCTION_103();
  v167 = sub_26A0E48F0(v191, v192, &off_26A427400);
  if ((v185 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_69:
  v168 = v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
  v169 = OUTLINED_FUNCTION_129_1(v167, &v250);
  v170 = *(v168 + 8);
  OUTLINED_FUNCTION_122_1(v169, &v249);
  OUTLINED_FUNCTION_168_1();
  if (v72)
  {
    v172 = v170 == v171;
  }

  else
  {
    v172 = 0;
  }

  if (v172 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v248);
    v173 = v211;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_142(v244 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v247);
    OUTLINED_FUNCTION_149_4();
    v81 = v212;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    v174 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_48_3(v174, v175);
    if (v72)
    {
      sub_26A0E48F0(v173, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_23(&qword_280371000 + v81);
      if (v72)
      {
        v176 = sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
LABEL_96:
        v205 = v70 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
        v206 = OUTLINED_FUNCTION_129_1(v176, &v246);
        v207 = *(v205 + 8);
        OUTLINED_FUNCTION_122_1(v206, &v245);
        OUTLINED_FUNCTION_168_1();
        if (v72)
        {
          v209 = v207 == v208;
        }

        else
        {
          v209 = 0;
        }

        if (!v209)
        {
          OUTLINED_FUNCTION_21_3();
          sub_26A425354();
        }

        goto LABEL_43;
      }

      goto LABEL_20;
    }

    v193 = v210;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(&qword_280371000 + v81);
    if (!v194)
    {
      OUTLINED_FUNCTION_146_3();
      v195 = OUTLINED_FUNCTION_167();
      static _ProtoTextProperty.== infix(_:_:)(v195, v196);
      OUTLINED_FUNCTION_9_29();
      v198 = v197;
      sub_26A2D187C(&qword_280371000, v197);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v199, v200, v201);
      sub_26A2D187C(v193, v198);
      OUTLINED_FUNCTION_69_2();
      v176 = sub_26A0E48F0(v202, v203, v204);
      if ((&qword_28036C7B8 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_96;
    }

    sub_26A0E48F0(v173, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v91 = v193;
    goto LABEL_19;
  }

LABEL_43:

  OUTLINED_FUNCTION_75();
}