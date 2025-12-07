uint64_t StatusIndicatorError.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for StatusIndicatorError(0);
  *(inited + 64) = &protocol witness table for StatusIndicatorError;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_22();
  sub_26A1F45D4();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1F48F0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A1F48F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1F49A8(uint64_t a1)
{
  result = type metadata accessor for _ProtoStatusIndicator_Error(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1F4A14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_13()
{

  return type metadata accessor for _ProtoStatusIndicator_Error(0);
}

uint64_t SnippetModel.redactedJson.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A424BB4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26A1F4D20(a1, a2);
  v7 = v6;
  sub_26A424BA4();
  v8 = sub_26A424B94();
  sub_26A0E4784(v5, v7);
  return v8;
}

uint64_t sub_26A1F4D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A424404();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RedactingEncodable(0, a1, *(a2 + 8), *(a2 + 16));
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  (*(v7 + 16))(v10, v18[1], a1, v13);
  sub_26A315D5C(v10, a1, v15);
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v6);
  (*(v19 + 8))(v6, v20);
  swift_getWitnessTable();
  v16 = sub_26A424424();
  (*(v12 + 8))(v15, v11);

  return v16;
}

uint64_t SnippetModel.redacted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_26A1F4D20(a1, a2);
  v7 = v6;
  sub_26A4243D4();
  swift_allocObject();
  sub_26A4243C4();
  sub_26A4243B4();
  sub_26A0E4784(v5, v7);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a1);
}

uint64_t SnippetModel.redact()(uint64_t a1, uint64_t a2)
{
  result = sub_26A1F4D20(a1, a2);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    sub_26A4243D4();
    swift_allocObject();
    sub_26A4243C4();
    sub_26A4243B4();

    return sub_26A0E4784(v5, v6);
  }

  return result;
}

uint64_t SnippetModel.data.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A424404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v5);
  (*(v3 + 8))(v5, v2);
  v6 = sub_26A424424();

  return v6;
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_21()
{

  JUMPOUT(0x26D65C950);
}

uint64_t sub_26A1F5544(uint64_t a1)
{
  v2 = sub_26A424404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A424444();
  swift_allocObject();
  v6 = sub_26A424434();
  (*(v3 + 16))(v5, a1, v2);
  sub_26A424414();
  return v6;
}

uint64_t _ProtoCustomCanvas.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_26A426400;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  type metadata accessor for _ProtoCustomCanvas(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t type metadata accessor for _ProtoCustomCanvas(uint64_t a1)
{
  result = qword_28157A998;
  if (!qword_28157A998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static _ProtoCustomCanvas.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x26D65B4F0](a1[4], a1[5], *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56);
  if (!v6 && (sub_26A425354() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65) || *(a1 + 66) != *(a2 + 66))
  {
    return 0;
  }

  type metadata accessor for _ProtoCustomCanvas(0);
  sub_26A424794();
  sub_26A1F662C(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

uint64_t _ProtoCustomCanvas.bundleName.setter()
{
  OUTLINED_FUNCTION_60_5();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoCustomCanvas.viewID.setter()
{
  OUTLINED_FUNCTION_60_5();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoCustomCanvas.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v0, v1);
  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoCustomCanvas.viewData.setter()
{
  OUTLINED_FUNCTION_60_5();
  result = sub_26A0E4784(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t _ProtoCustomCanvas.componentName.setter()
{
  OUTLINED_FUNCTION_60_5();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t _ProtoCustomCanvas.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoCustomCanvas(0) + 44);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _ProtoCustomCanvas.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCustomCanvas(0) + 44);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26A1F5BF8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F950);
  __swift_project_value_buffer(v0, qword_28036F950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42DE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "bundle_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "view_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "view_data";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "component_name";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "safe_for_logging";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "requests_key_window";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hide_conversation_keyline";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoCustomCanvas._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C250 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036F950);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoCustomCanvas.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 4:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248C4();
        break;
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      default:
        continue;
    }
  }
}

uint64_t _ProtoCustomCanvas.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_84_0();
  if (!v2 || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A64(), !v1))
  {
    OUTLINED_FUNCTION_84_0();
    if (!v4 || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A64(), !v1))
    {
      if (sub_26A13BEE8(*(v0 + 32), *(v0 + 40)) || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A14(), !v1))
      {
        OUTLINED_FUNCTION_84_0();
        if (!v5 || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A64(), !v1))
        {
          if (*(v0 + 64) != 1 || (result = OUTLINED_FUNCTION_3_22(1, 6), !v1))
          {
            if (*(v0 + 65) != 1 || (result = OUTLINED_FUNCTION_3_22(1, 7), !v1))
            {
              if (*(v0 + 66) != 1 || (result = OUTLINED_FUNCTION_3_22(1, 8), !v1))
              {
                type metadata accessor for _ProtoCustomCanvas(0);
                OUTLINED_FUNCTION_12_7();
                return sub_26A424774();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _ProtoCustomCanvas.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCustomCanvas(0);
  sub_26A1F662C(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1F631C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1F662C(&qword_28036F978, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1F642C(uint64_t a1)
{
  v2 = sub_26A1F662C(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1F64E4(uint64_t a1, uint64_t a2)
{
  sub_26A1F662C(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);

  return sub_26A4249B4();
}

uint64_t sub_26A1F658C(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1F662C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1, uint64_t a2)
{

  return sub_26A4249E4();
}

uint64_t _ProtoHorizontalList_Standard.items.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoHorizontalList_Standard.text1.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoHorizontalList_Standard(v5);
  sub_26A1F9BEC(v2 + *(v6 + 28), v1, &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v7)
  {
    return sub_26A1F9C34();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = type metadata accessor for _ProtoActionProperty(0);
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoHorizontalList_Standard.text1.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = *(type metadata accessor for _ProtoHorizontalList_Standard(v1) + 28);
  sub_26A13440C();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_36_1();
  sub_26A1F9C34();
  v3 = type metadata accessor for _ProtoTextProperty(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

void (*_ProtoHorizontalList_Standard.text1.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v9 = *(type metadata accessor for _ProtoHorizontalList_Standard(0) + 28);
  *(v3 + 10) = v9;
  sub_26A1F9BEC(v1 + v9, v6, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_1_4();
  if (v10)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v11 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v11);
    if (!v10)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
  }

  return sub_26A1F69EC;
}

void sub_26A1F69EC(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 1);
  if (a2)
  {
    sub_26A1F9CD0();
    sub_26A13440C();
    sub_26A1F9C34();
    OUTLINED_FUNCTION_61_6();
    sub_26A1F9D24();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_19_13();
    sub_26A1F9C34();
    OUTLINED_FUNCTION_61_6();
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t _ProtoHorizontalList_Standard.hasText1.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  sub_26A1F9BEC(v0 + *(v4 + 28), v1, &qword_28036C7B8, &unk_26A425BF0);
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_26A13440C();
  return v7;
}

Swift::Void __swiftcall _ProtoHorizontalList_Standard.clearText1()()
{
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  sub_26A13440C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoHorizontalList_Standard.componentName.setter()
{
  OUTLINED_FUNCTION_47_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t _ProtoHorizontalList_Standard.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoHorizontalList_Standard(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoHorizontalList_Standard.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoHorizontalList_Standard(v2) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*_ProtoHorizontalList_Standard.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoHorizontalList_Standard(v0);
  return nullsub_1;
}

uint64_t _ProtoHorizontalList_Standard.Item.style.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_13();
  result = OUTLINED_FUNCTION_142(v1 + 16, v5);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26A1F6E20@<X0>(uint64_t a1@<X8>)
{
  result = _ProtoHorizontalList_Standard.Item.style.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26A1F6E64(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return _ProtoHorizontalList_Standard.Item.style.setter(&v3);
}

uint64_t _ProtoHorizontalList_Standard.Item.style.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_36_8(0);
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    v7 = v8;
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_26_10(v7 + 16, v10);
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

void (*_ProtoHorizontalList_Standard.Item.style.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_10_19();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_142(v5 + 16, v3);
  v6 = *(v5 + 24);
  v3[9] = *(v5 + 16);
  *(v3 + 80) = v6;
  return sub_26A1F6FC0;
}

void sub_26A1F6FC0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    v9 = v12;
    *(v11 + v10) = v12;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_26_10(v9 + 16, v3 + v13);
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;

  free(v3);
}

uint64_t _ProtoHorizontalList_Standard.Item.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = *(v1 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(v5) + 20));
  v7 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
  OUTLINED_FUNCTION_142(v6 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, v2 - 72);
  sub_26A1F9BEC(v6 + v7, v0, &qword_28036CAE8, &unk_26A426430);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v8)
  {
    return sub_26A1F9C34();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for _ProtoActionProperty(0);
  result = OUTLINED_FUNCTION_1_16(v9);
  if (!v8)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t sub_26A1F7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  sub_26A1F9CD0();
  return a7(v7);
}

uint64_t _ProtoHorizontalList_Standard.Item.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_36_8(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_62_7();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  v5 = OUTLINED_FUNCTION_36_1();
  sub_26A1F9C88(v5, v6, v7, v8);
  return swift_endAccess();
}

void _ProtoHorizontalList_Standard.Item.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoVisualProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v0 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoHorizontalList_Standard.Item.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_36_8(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_62_7();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  v5 = OUTLINED_FUNCTION_36_1();
  sub_26A1F9C88(v5, v6, v7, v8);
  return swift_endAccess();
}

void _ProtoHorizontalList_Standard.Item.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v0 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1F772C()
{
  OUTLINED_FUNCTION_19_0();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_47_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  OUTLINED_FUNCTION_8_13();
  v14 = *v7;
  OUTLINED_FUNCTION_142(v1 + v14, v3 - 72);
  sub_26A1F9BEC(v1 + v14, v13, v2, v0);
  v15 = v5(0);
  OUTLINED_FUNCTION_37(v13, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_26A13440C();
  return v17;
}

uint64_t sub_26A1F7828(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_47_1();
  v10 = v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_41(v13);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141_0();
  v15 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v5 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    v17 = v18;
    *(v10 + v15) = v18;
  }

  a3(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = *a4;
  OUTLINED_FUNCTION_211(v17 + v23, v25);
  sub_26A1F9C88(v7, v17 + v23, v6, v4);
  return swift_endAccess();
}

uint64_t sub_26A1F7924()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  v8 = *(v1 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(v7) + 20));
  v9 = *v4;
  OUTLINED_FUNCTION_142(v8 + v9, v2 - 72);
  sub_26A1F9BEC(v8 + v9, v0, &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v10)
  {
    return sub_26A1F9C34();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for _ProtoActionProperty(0);
  result = OUTLINED_FUNCTION_1_16(v11);
  if (!v10)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoHorizontalList_Standard.Item.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_36_8(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_62_7();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  v5 = OUTLINED_FUNCTION_36_1();
  sub_26A1F9C88(v5, v6, v7, v8);
  return swift_endAccess();
}

void _ProtoHorizontalList_Standard.Item.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v0 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoHorizontalList_Standard.Item.action.getter()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  OUTLINED_FUNCTION_8_13();
  v7 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action;
  OUTLINED_FUNCTION_142(v0 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action, v2 - 72);
  sub_26A1F9BEC(v0 + v7, v1, &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v8)
  {
    return sub_26A1F9C34();
  }

  *v4 = MEMORY[0x277D84F90];
  v4[1] = 0;
  v4[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v8)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoHorizontalList_Standard.Item.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_36_8(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_62_7();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  v5 = OUTLINED_FUNCTION_36_1();
  sub_26A1F9C88(v5, v6, v7, v8);
  return swift_endAccess();
}

void _ProtoHorizontalList_Standard.Item.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoActionProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = v12;
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    *v12 = MEMORY[0x277D84F90];
    v12[1] = 0;
    v12[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_7();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A1F8040(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_26A1F9CD0();
    a3(v6);
    sub_26A1F9D24();
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

uint64_t _ProtoHorizontalList_Standard.Item.componentName.getter()
{
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_142(*(v0 + v1) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName, v3);

  return OUTLINED_FUNCTION_246();
}

uint64_t _ProtoHorizontalList_Standard.Item.componentName.setter()
{
  OUTLINED_FUNCTION_47_1();
  v4 = OUTLINED_FUNCTION_36_8(0);
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    OUTLINED_FUNCTION_42_1(v6);
  }

  v7 = (v5 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  OUTLINED_FUNCTION_26_10(v7, v9);
  *v7 = v2;
  v7[1] = v0;
}

void (*_ProtoHorizontalList_Standard.Item.componentName.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_10_19();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v5, v3);
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return sub_26A1F82F4;
}

void sub_26A1F82F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    _ProtoHorizontalList_Standard.Item.componentName.setter();
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 64);
      OUTLINED_FUNCTION_11_14();
      OUTLINED_FUNCTION_5_3();
      sub_26A1F9840();
      v8 = v11;
      *(v10 + v9) = v11;
    }

    v12 = (v8 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
    OUTLINED_FUNCTION_26_10(v12, v2 + 24);
    *v12 = v3;
    v12[1] = v4;
  }

  free(v2);
}

uint64_t _ProtoHorizontalList_Standard.Item.unknownFields.getter()
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_175();

  return v1(v0);
}

uint64_t _ProtoHorizontalList_Standard.Item.unknownFields.setter()
{
  OUTLINED_FUNCTION_110();
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_246();

  return v1(v0);
}

unint64_t _ProtoHorizontalList_Standard.Item.Style.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A1F84D8@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoHorizontalList_Standard.Item.Style.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A1F850C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1FC830();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoHorizontalList_Standard.Item.init()@<X0>(uint64_t a2@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  if (qword_28036C270 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_28036F9C8;
}

uint64_t _ProtoHorizontalList_Standard.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t static _ProtoHorizontalList_Standard.Item.Style.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_26_10(&off_28036F980, v3);
  off_28036F980 = a1;
}

uint64_t (*static _ProtoHorizontalList_Standard.Item.Style.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  v0 = OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_211(v0, v1);
  return j__swift_endAccess;
}

uint64_t sub_26A1F8724@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoHorizontalList_Standard.Item.Style.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A1F8768()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F988);
  __swift_project_value_buffer(v0, qword_28036F988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoHorizontalList_Standard.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_246();
        OUTLINED_FUNCTION_87();
        sub_26A1F8ADC(v9, v10, v11, v12);
        break;
      case 1:
        OUTLINED_FUNCTION_246();
        OUTLINED_FUNCTION_87();
        sub_26A1F8A3C(v5, v6, v7, v8);
        break;
    }
  }

  return result;
}

uint64_t sub_26A1F8A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  sub_26A1F9D78();
  return sub_26A424934();
}

uint64_t sub_26A1F8ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1F9D78();
  return sub_26A424944();
}

uint64_t _ProtoHorizontalList_Standard.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for _ProtoHorizontalList_Standard.Item(0), sub_26A1F9D78(), result = sub_26A424A74(), !v4))
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    result = sub_26A1F8CCC(v6, v7, v8, v9);
    if (!v4)
    {
      v10 = v3[2];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[1] & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        sub_26A424A64();
      }

      type metadata accessor for _ProtoHorizontalList_Standard(0);
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A1F8CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  sub_26A1F9BEC(a1 + *(v9 + 28), v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1F9C34();
  sub_26A1F9D78();
  sub_26A424A84();
  return sub_26A1F9D24();
}

void static _ProtoHorizontalList_Standard.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoTextProperty(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141_0();
  sub_26A0D9080(*v1, *v0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v21 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  v15 = *(v21 + 28);
  v16 = *(v12 + 48);
  sub_26A1F9BEC(v1 + v15, v2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1F9BEC(v0 + v15, v2 + v16, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_28(v2);
  if (!v17)
  {
    sub_26A1F9BEC(v2, v11, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_28(v2 + v16);
    if (!v17)
    {
      sub_26A1F9C34();
      v18 = static _ProtoTextProperty.== infix(_:_:)(v11, v7);
      sub_26A1F9D24();
      sub_26A1F9D24();
      sub_26A13440C();
      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_26A1F9D24();
LABEL_10:
    sub_26A13440C();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_28(v2 + v16);
  if (!v17)
  {
    goto LABEL_10;
  }

  sub_26A13440C();
LABEL_13:
  v19 = v1[1] == v0[1] && v1[2] == v0[2];
  if (v19 || (sub_26A425354() & 1) != 0)
  {
    sub_26A424794();
    OUTLINED_FUNCTION_5_17();
    sub_26A1F9D78();
    sub_26A424B64();
  }

LABEL_11:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1F9208(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1F9D78();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1F9288(uint64_t a1)
{
  v2 = sub_26A1F9D78();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1F92F8(uint64_t a1, uint64_t a2)
{
  sub_26A1F9D78();

  return sub_26A4249B4();
}

uint64_t sub_26A1F9378()
{
  result = MEMORY[0x26D65BA70](0x6D6574492ELL, 0xE500000000000000);
  qword_28036F9A0 = 0xD000000000000021;
  *algn_28036F9A8 = 0x800000026A4486D0;
  return result;
}

uint64_t static _ProtoHorizontalList_Standard.Item.protoMessageName.getter()
{
  if (qword_28036C260 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A1F9444()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F9B0);
  __swift_project_value_buffer(v0, qword_28036F9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26A42B080;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "style";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "thumbnail";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_1";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "text_2";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "action";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A1F972C()
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
  swift_allocObject();
  result = sub_26A1F976C();
  qword_28036F9C8 = result;
  return result;
}

uint64_t sub_26A1F976C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1F9840()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v45 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59_7();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v13 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1;
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v43 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  v44 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = (v0 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_142(v3 + 16, &v53);
  v31 = *(v3 + 16);
  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_26_10(v0 + 16, &v52);
  *(v0 + 16) = v31;
  *(v0 + 24) = v32;
  v33 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, &v51);
  sub_26A1F9BEC(v3 + v33, v1, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_211(v0 + v13, v50);
  sub_26A1F9C88(v1, v0 + v13, &qword_28036CAE8, &unk_26A426430);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1, v50);
  sub_26A1F9BEC(v3 + v34, v10, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_211(v0 + v18, v49);
  sub_26A1F9C88(v10, v0 + v18, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2, v49);
  sub_26A1F9BEC(v3 + v35, v10, &qword_28036C7B8, &unk_26A425BF0);
  v36 = v43;
  OUTLINED_FUNCTION_211(v0 + v43, v48);
  sub_26A1F9C88(v10, v0 + v36, &qword_28036C7B8, &unk_26A425BF0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action, v48);
  v38 = v45;
  sub_26A1F9BEC(v3 + v37, v45, &off_28036C7C0, &off_26A427400);
  v39 = v44;
  OUTLINED_FUNCTION_211(v0 + v44, v47);
  sub_26A1F9C88(v38, v0 + v39, &off_28036C7C0, &off_26A427400);
  swift_endAccess();
  v40 = (v3 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName, v47);
  v42 = *v40;
  v41 = v40[1];

  OUTLINED_FUNCTION_26_10(v30, &v46);
  *v30 = v42;
  v30[1] = v41;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1F9BEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_50_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v4;
}

uint64_t sub_26A1F9C34()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A1F9C88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_50_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v4;
}

uint64_t sub_26A1F9CD0()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A1F9D24()
{
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_26A1F9D78()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A1F9DBC()
{
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();

  return v0;
}

uint64_t sub_26A1F9E78()
{
  v0 = sub_26A1F9DBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoHorizontalList_Standard.Item.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F9840();
    *(v0 + v1) = v2;
  }

  OUTLINED_FUNCTION_87();
  return sub_26A1F9F68(v3, v4, v5, v6);
}

uint64_t sub_26A1F9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1FA080(a2, a1);
        break;
      case 2:
        sub_26A1FA114(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1FA1F0(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1FA2CC(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1FA3A8(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1FA484(a2, a1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1FA080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A1FC830();
  sub_26A424894();
  return swift_endAccess();
}

uint64_t sub_26A1FA114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1F9D78();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1FA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1F9D78();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1FA2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1F9D78();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1FA3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1F9D78();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1FA484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t _ProtoHorizontalList_Standard.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  result = sub_26A1FA57C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1FA57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_26A1FC830(), result = sub_26A4249F4(), !v4))
  {
    result = sub_26A1FA708(a1, a2, a3, a4);
    if (!v4)
    {
      sub_26A1FA8F0(a1, a2, a3, a4);
      sub_26A1FAAD8(a1, a2, a3, a4);
      sub_26A1FACC0(a1, a2, a3, a4);
      v10 = (a1 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
      result = swift_beginAccess();
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
    }
  }

  return result;
}

uint64_t sub_26A1FA708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v9, v7, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1F9C34();
  sub_26A1F9D78();
  sub_26A424A84();
  return sub_26A1F9D24();
}

uint64_t sub_26A1FA8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v9, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1F9C34();
  sub_26A1F9D78();
  sub_26A424A84();
  return sub_26A1F9D24();
}

uint64_t sub_26A1FAAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v9, v7, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1F9C34();
  sub_26A1F9D78();
  sub_26A424A84();
  return sub_26A1F9D24();
}

uint64_t sub_26A1FACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action;
  swift_beginAccess();
  sub_26A1F9BEC(a1 + v9, v7, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1F9C34();
  sub_26A1F9D78();
  sub_26A424A84();
  return sub_26A1F9D24();
}

uint64_t static _ProtoHorizontalList_Standard.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_19();
  if (*(a1 + v4) != *(a2 + v4))
  {

    sub_26A1FAF74();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_5_17();
  sub_26A1F9D78();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

void sub_26A1FAF74()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v123 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_141_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v121 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  v127 = &v118 - v14;
  v132 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v125 = v17 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v126 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  v130 = &v118 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v124 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v131 = &v118 - v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v128 = &v118 - v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  v135 = &v118 - v30;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v129 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  v37 = &v118 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v39 = OUTLINED_FUNCTION_41(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  v133 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  v43 = &v118 - v42;
  OUTLINED_FUNCTION_142(v4 + 16, &v148);
  v44 = *(v4 + 16);
  OUTLINED_FUNCTION_142(v2 + 16, &v147);
  v45 = *(v2 + 16);
  if (*(v2 + 24) != 1)
  {
    if (v44 != v45)
    {
      goto LABEL_63;
    }

    goto LABEL_11;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      if (v44 != 1)
      {
        goto LABEL_63;
      }

LABEL_11:
      v119 = v8;
      v120 = v0;
      v136 = v2;
      v46 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
      OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, &v146);
      sub_26A1F9BEC(v4 + v46, v43, &qword_28036CAE8, &unk_26A426430);
      v47 = OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail;
      v48 = v136;
      OUTLINED_FUNCTION_142(v136 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, &v145);
      v49 = *(v34 + 48);
      sub_26A1F9BEC(v43, v37, &qword_28036CAE8, &unk_26A426430);
      sub_26A1F9BEC(v48 + v47, &v37[v49], &qword_28036CAE8, &unk_26A426430);
      OUTLINED_FUNCTION_28(v37);
      if (v51)
      {

        sub_26A13440C();
        OUTLINED_FUNCTION_28(&v37[v49]);
        if (!v51)
        {
          goto LABEL_61;
        }

        sub_26A13440C();
      }

      else
      {
        v50 = v133;
        sub_26A1F9BEC(v37, v133, &qword_28036CAE8, &unk_26A426430);
        OUTLINED_FUNCTION_28(&v37[v49]);
        if (v51)
        {

          sub_26A13440C();
          sub_26A1F9D24();
          goto LABEL_61;
        }

        v52 = v129;
        sub_26A1F9C34();

        v53 = static _ProtoVisualProperty.== infix(_:_:)(v50, v52);
        sub_26A1F9D24();
        sub_26A13440C();
        sub_26A1F9D24();
        sub_26A13440C();
        if ((v53 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1, &v144);
      OUTLINED_FUNCTION_112_1();
      sub_26A1F9BEC(v54, v55, v56, v57);
      v58 = OUTLINED_FUNCTION_58_8();
      OUTLINED_FUNCTION_142(v58, &v143);
      v59 = *(v134 + 48);
      v60 = v130;
      OUTLINED_FUNCTION_112_1();
      sub_26A1F9BEC(v61, v62, v63, v64);
      OUTLINED_FUNCTION_58_8();
      OUTLINED_FUNCTION_112_1();
      sub_26A1F9BEC(v65, v66, v67, v68);
      v69 = v132;
      OUTLINED_FUNCTION_37(v60, 1, v132);
      if (v51)
      {
        sub_26A13440C();
        OUTLINED_FUNCTION_37(v60 + v59, 1, v69);
        if (!v51)
        {
          goto LABEL_61;
        }

        sub_26A13440C();
      }

      else
      {
        v70 = v128;
        sub_26A1F9BEC(v60, v128, &qword_28036C7B8, &unk_26A425BF0);
        OUTLINED_FUNCTION_37(v60 + v59, 1, v69);
        if (v71)
        {
          goto LABEL_27;
        }

        v72 = v125;
        sub_26A1F9C34();
        LODWORD(v133) = static _ProtoTextProperty.== infix(_:_:)(v70, v72);
        sub_26A1F9D24();
        sub_26A13440C();
        sub_26A1F9D24();
        sub_26A13440C();
        if ((v133 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2, &v142);
      OUTLINED_FUNCTION_112_1();
      sub_26A1F9BEC(v73, v74, v75, v76);
      v77 = OUTLINED_FUNCTION_58_8();
      OUTLINED_FUNCTION_142(v77, &v141);
      v78 = *(v134 + 48);
      v79 = v126;
      OUTLINED_FUNCTION_112_1();
      sub_26A1F9BEC(v80, v81, v82, v83);
      OUTLINED_FUNCTION_58_8();
      OUTLINED_FUNCTION_112_1();
      sub_26A1F9BEC(v84, v85, v86, v87);
      OUTLINED_FUNCTION_37(v79, 1, v69);
      if (v51)
      {
        sub_26A13440C();
        OUTLINED_FUNCTION_37(v79 + v78, 1, v69);
        if (!v51)
        {
          goto LABEL_61;
        }

        sub_26A13440C();
        goto LABEL_38;
      }

      v88 = v124;
      sub_26A1F9BEC(v79, v124, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_37(v79 + v78, 1, v69);
      if (!v89)
      {
        v90 = v125;
        sub_26A1F9C34();
        v91 = static _ProtoTextProperty.== infix(_:_:)(v88, v90);
        sub_26A1F9D24();
        OUTLINED_FUNCTION_69_2();
        sub_26A13440C();
        sub_26A1F9D24();
        OUTLINED_FUNCTION_69_2();
        sub_26A13440C();
        if ((v91 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_38:
        OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action, &v140);
        OUTLINED_FUNCTION_112_1();
        sub_26A1F9BEC(v92, v93, v94, v95);
        OUTLINED_FUNCTION_142(v136 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action, &v139);
        v96 = *(v122 + 48);
        v97 = v120;
        OUTLINED_FUNCTION_112_1();
        sub_26A1F9BEC(v98, v99, v100, v101);
        OUTLINED_FUNCTION_112_1();
        sub_26A1F9BEC(v102, v103, v104, v105);
        v106 = v123;
        OUTLINED_FUNCTION_37(v97, 1, v123);
        if (v51)
        {
          sub_26A13440C();
          OUTLINED_FUNCTION_37(v97 + v96, 1, v106);
          if (v51)
          {
            sub_26A13440C();
            goto LABEL_43;
          }
        }

        else
        {
          v112 = v121;
          sub_26A1F9BEC(v97, v121, &off_28036C7C0, &off_26A427400);
          OUTLINED_FUNCTION_37(v97 + v96, 1, v106);
          if (v113)
          {
            sub_26A13440C();
            sub_26A1F9D24();
          }

          else
          {
            v114 = v119;
            sub_26A1F9C34();
            sub_26A0E36D8(*v112, *v114);
            if (v115)
            {
              v116 = v112[1] == v114[1] && v112[2] == v114[2];
              if (v116 || (sub_26A425354() & 1) != 0)
              {
                sub_26A424794();
                OUTLINED_FUNCTION_5_17();
                sub_26A1F9D78();
                v117 = sub_26A424B64();
                sub_26A1F9D24();
                OUTLINED_FUNCTION_69_2();
                sub_26A13440C();
                sub_26A1F9D24();
                OUTLINED_FUNCTION_69_2();
                sub_26A13440C();
                if ((v117 & 1) == 0)
                {
                  goto LABEL_62;
                }

LABEL_43:
                v107 = (v4 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
                OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName, &v138);
                v108 = *v107;
                v109 = v107[1];
                v110 = (v136 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
                OUTLINED_FUNCTION_142(v136 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName, &v137);
                if (v108 != *v110 || v109 != v110[1])
                {
                  sub_26A425354();
                }

                goto LABEL_62;
              }
            }

            sub_26A1F9D24();
            sub_26A13440C();
            sub_26A1F9D24();
          }
        }

LABEL_61:
        sub_26A13440C();
LABEL_62:

        goto LABEL_63;
      }

LABEL_27:
      sub_26A13440C();
      OUTLINED_FUNCTION_18_14();
      sub_26A1F9D24();
      goto LABEL_61;
    }

    if (v44 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (!v44)
  {
    goto LABEL_11;
  }

LABEL_63:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1FBC78(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A1F9D78();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1FBD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1F9D78();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1FBDC0(uint64_t a1)
{
  v2 = sub_26A1F9D78();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1FBE30(uint64_t a1, uint64_t a2)
{
  sub_26A1F9D78();

  return sub_26A4249B4();
}

uint64_t sub_26A1FBEB0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F9D0);
  __swift_project_value_buffer(v0, qword_28036F9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ROUNDED_IMAGE";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INLINE_IMAGE";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SQUARE_IMAGE";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

unint64_t sub_26A1FC0DC()
{
  result = qword_28036FA20;
  if (!qword_28036FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FA20);
  }

  return result;
}

unint64_t sub_26A1FC134()
{
  result = qword_28036FA28;
  if (!qword_28036FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FA28);
  }

  return result;
}

unint64_t sub_26A1FC18C()
{
  result = qword_28036FA30;
  if (!qword_28036FA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036FA38, &qword_26A42E0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FA30);
  }

  return result;
}

void sub_26A1FC45C(uint64_t a1)
{
  sub_26A1FC560(319, &qword_28036FA70, type metadata accessor for _ProtoHorizontalList_Standard.Item, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A1FC560(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A1FC560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26A1FC5EC(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A1FC688(uint64_t a1)
{
  sub_26A1FC560(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A1FC560(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A1FC560(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_26A1FC830()
{
  result = qword_28036FAA8;
  if (!qword_28036FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FAA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_17()
{

  return sub_26A1F9BEC(v0 + v4, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1)
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_50_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return sub_26A1F9C34();
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_62_7()
{

  return sub_26A1F9C34();
}

uint64_t _ProtoBackgroundElement.visual.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_8_14();
  sub_26A1FCB98(v1 + *(v6 + 28), v2);
  v7 = type metadata accessor for _ProtoVisualElement(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_26A1FCC08(v2, a1);
  }

  type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t type metadata accessor for _ProtoBackgroundElement(uint64_t a1)
{
  result = qword_281579568;
  if (!qword_281579568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1FCB98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A1FCC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoVisualElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A1FCC6C(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoVisualElement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A1FCFB0(a1, v4);
  return _ProtoBackgroundElement.visual.setter(v4);
}

uint64_t _ProtoBackgroundElement.visual.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoBackgroundElement(0) + 28);
  sub_26A13440C();
  sub_26A1FCC08(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoVisualElement(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*_ProtoBackgroundElement.visual.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for _ProtoBackgroundElement(0) + 28);
  *(v3 + 10) = v10;
  sub_26A1FCB98(v1 + v10, v6);
  OUTLINED_FUNCTION_14_9(v6);
  if (v11)
  {
    type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v6);
    if (!v11)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A1FCC08(v6, v9);
  }

  return sub_26A1FCED0;
}

void sub_26A1FCED0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_26A1FCFB0((*a1)[4], v4);
    sub_26A13440C();
    sub_26A1FCC08(v4, v7 + v3);
    OUTLINED_FUNCTION_70();
    sub_26A1FD014(v5);
  }

  else
  {
    sub_26A13440C();
    sub_26A1FCC08(v5, v7 + v3);
    OUTLINED_FUNCTION_70();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_26A1FCFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoVisualElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A1FD014(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoVisualElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _ProtoBackgroundElement.hasVisual.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_8_14();
  sub_26A1FCB98(v0 + *(v4 + 28), v1);
  v5 = type metadata accessor for _ProtoVisualElement(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_26A13440C();
  return v6;
}

Swift::Void __swiftcall _ProtoBackgroundElement.clearVisual()()
{
  type metadata accessor for _ProtoBackgroundElement(0);
  sub_26A13440C();
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoBackgroundElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoBackgroundElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoBackgroundElement(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoBackgroundElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoBackgroundElement(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoBackgroundElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoBackgroundElement(0);
  return nullsub_1;
}

uint64_t _ProtoBackgroundElement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  type metadata accessor for _ProtoBackgroundElement(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A1FD3BC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036FAB0);
  __swift_project_value_buffer(v0, qword_28036FAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visual";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_hidden_on_idioms";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoBackgroundElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C280 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036FAB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoBackgroundElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26A424834();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26A424874();
        break;
      case 2:
        OUTLINED_FUNCTION_87();
        sub_26A1FD7CC(v10, v11, v12, v13);
        break;
      case 1:
        OUTLINED_FUNCTION_87();
        sub_26A1FD718(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_26A1FD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoBackgroundElement(0);
  type metadata accessor for _ProtoVisualElement(0);
  sub_26A1FE1E0();
  return sub_26A424944();
}

uint64_t _ProtoBackgroundElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  result = sub_26A1FD920(v5, v6, v7, v8);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_26A11EF50();
      sub_26A4249D4();
    }

    if (v3[8] == 1)
    {
      OUTLINED_FUNCTION_87();
      sub_26A4249E4();
    }

    type metadata accessor for _ProtoBackgroundElement(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1FD920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoVisualElement(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoBackgroundElement(0);
  sub_26A1FCB98(a1 + *(v11 + 28), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1FCC08(v7, v10);
  sub_26A1FE1E0();
  sub_26A424A84();
  return sub_26A1FD014(v10);
}

uint64_t static _ProtoBackgroundElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C850, &unk_26A425E00) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for _ProtoBackgroundElement(0) + 28);
  v16 = *(v11 + 56);
  sub_26A1FCB98(a1 + v15, v14);
  sub_26A1FCB98(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_14_9(v14);
  if (!v17)
  {
    sub_26A1FCB98(v14, v10);
    OUTLINED_FUNCTION_14_9(&v14[v16]);
    if (!v17)
    {
      sub_26A1FCC08(&v14[v16], v6);
      v18 = static _ProtoVisualElement.== infix(_:_:)();
      sub_26A1FD014(v6);
      sub_26A1FD014(v10);
      sub_26A13440C();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    sub_26A1FD014(v10);
LABEL_9:
    sub_26A13440C();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_9(&v14[v16]);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_11:
  if ((sub_26A0DB6A0(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    sub_26A424794();
    sub_26A1FE1E0();
    v19 = sub_26A424B64();
    return v19 & 1;
  }

LABEL_13:
  v19 = 0;
  return v19 & 1;
}

uint64_t _ProtoBackgroundElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoBackgroundElement(0);
  sub_26A1FE1E0();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1FDE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1FE1E0();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1FDEAC(uint64_t a1)
{
  v2 = sub_26A1FE1E0();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1FDF1C(uint64_t a1, uint64_t a2)
{
  sub_26A1FE1E0();

  return sub_26A4249B4();
}

void sub_26A1FE0E4(uint64_t a1)
{
  sub_26A11FDC8();
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A1FE188(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A1FE188(uint64_t a1)
{
  if (!qword_2815797B8[0])
  {
    type metadata accessor for _ProtoVisualElement(255);
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, qword_2815797B8);
    }
  }
}

unint64_t sub_26A1FE1E0()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return type metadata accessor for _ProtoBackgroundElement(0);
}

uint64_t _ProtoOrnamentElement.visual.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_8_15();
  sub_26A1FCB98(v1 + *(v6 + 28), v2);
  v7 = type metadata accessor for _ProtoVisualElement(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_26A1FCC08(v2, a1);
  }

  type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t type metadata accessor for _ProtoOrnamentElement(uint64_t a1)
{
  result = qword_28036FB18;
  if (!qword_28036FB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1FE390(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoVisualElement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A1FCFB0(a1, v4);
  return _ProtoOrnamentElement.visual.setter(v4);
}

uint64_t _ProtoOrnamentElement.visual.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoOrnamentElement(0) + 28);
  sub_26A13440C();
  sub_26A1FCC08(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoVisualElement(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*_ProtoOrnamentElement.visual.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for _ProtoOrnamentElement(0) + 28);
  *(v3 + 10) = v10;
  sub_26A1FCB98(v1 + v10, v6);
  OUTLINED_FUNCTION_14_9(v6);
  if (v11)
  {
    type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v6);
    if (!v11)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A1FCC08(v6, v9);
  }

  return sub_26A1FCED0;
}

BOOL _ProtoOrnamentElement.hasVisual.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_8_15();
  sub_26A1FCB98(v0 + *(v4 + 28), v1);
  v5 = type metadata accessor for _ProtoVisualElement(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_26A13440C();
  return v6;
}

Swift::Void __swiftcall _ProtoOrnamentElement.clearVisual()()
{
  type metadata accessor for _ProtoOrnamentElement(0);
  sub_26A13440C();
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoOrnamentElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoOrnamentElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoOrnamentElement(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoOrnamentElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoOrnamentElement(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoOrnamentElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoOrnamentElement(0);
  return nullsub_1;
}

uint64_t _ProtoOrnamentElement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  type metadata accessor for _ProtoOrnamentElement(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A1FE940()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036FAE8);
  __swift_project_value_buffer(v0, qword_28036FAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visual";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_hidden_on_idioms";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoOrnamentElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C288 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036FAE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoOrnamentElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26A424834();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26A424874();
        break;
      case 2:
        OUTLINED_FUNCTION_87();
        sub_26A1FD7CC(v10, v11, v12, v13);
        break;
      case 1:
        OUTLINED_FUNCTION_87();
        sub_26A1FEC9C(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_26A1FEC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoOrnamentElement(0);
  type metadata accessor for _ProtoVisualElement(0);
  sub_26A1FF600();
  return sub_26A424944();
}

uint64_t _ProtoOrnamentElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  result = sub_26A1FEE3C(v5, v6, v7, v8);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_26A11EF50();
      sub_26A4249D4();
    }

    if (v3[8] == 1)
    {
      OUTLINED_FUNCTION_87();
      sub_26A4249E4();
    }

    type metadata accessor for _ProtoOrnamentElement(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1FEE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoVisualElement(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoOrnamentElement(0);
  sub_26A1FCB98(a1 + *(v11 + 28), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1FCC08(v7, v10);
  sub_26A1FF600();
  sub_26A424A84();
  return sub_26A1FD014(v10);
}

uint64_t static _ProtoOrnamentElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C850, &unk_26A425E00) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for _ProtoOrnamentElement(0) + 28);
  v16 = *(v11 + 56);
  sub_26A1FCB98(a1 + v15, v14);
  sub_26A1FCB98(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_14_9(v14);
  if (!v17)
  {
    sub_26A1FCB98(v14, v10);
    OUTLINED_FUNCTION_14_9(&v14[v16]);
    if (!v17)
    {
      sub_26A1FCC08(&v14[v16], v6);
      v18 = static _ProtoVisualElement.== infix(_:_:)();
      sub_26A1FD014(v6);
      sub_26A1FD014(v10);
      sub_26A13440C();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    sub_26A1FD014(v10);
LABEL_9:
    sub_26A13440C();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_9(&v14[v16]);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_11:
  if ((sub_26A0DB6A0(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    sub_26A424794();
    sub_26A1FF600();
    v19 = sub_26A424B64();
    return v19 & 1;
  }

LABEL_13:
  v19 = 0;
  return v19 & 1;
}

uint64_t _ProtoOrnamentElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoOrnamentElement(0);
  sub_26A1FF600();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1FF348(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1FF600();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1FF3C8(uint64_t a1)
{
  v2 = sub_26A1FF600();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1FF438(uint64_t a1, uint64_t a2)
{
  sub_26A1FF600();

  return sub_26A4249B4();
}

unint64_t sub_26A1FF600()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return type metadata accessor for _ProtoOrnamentElement(0);
}

uint64_t SimpleItemRich.text1.getter()
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
  v10 = type metadata accessor for _ProtoSimpleItem_Rich(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v24);
  OUTLINED_FUNCTION_32_2();
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
    sub_26A2040A0();
  }

  return sub_26A2040A0();
}

void SimpleItemRich.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_63_5();
    }

    OUTLINED_FUNCTION_67_6();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void sub_26A1FF9C8()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v10, v11);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v13);
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_63_5();
    }

    OUTLINED_FUNCTION_67_6();
    v3 = 0;
  }

  v14 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v14);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRich.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_63_5();
    }

    OUTLINED_FUNCTION_67_6();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRich.thumbnail.getter()
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
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_63_5();
    }

    OUTLINED_FUNCTION_67_6();
    v2 = 0;
  }

  v13 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRich.action.getter()
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
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_11();
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
      OUTLINED_FUNCTION_63_5();
    }

    sub_26A2040A0();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SimpleItemRich.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSimpleItem_Rich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v329 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v313 = v3;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  v312 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v314 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v311 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v326 = v12;
  v325 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v309 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v308 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v310 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  v307 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  v324 = v23;
  v321 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v298 = v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  v297 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  v292 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v291 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v33 = OUTLINED_FUNCTION_41(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v295 = v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  v318 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  v320 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v289 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_48();
  v316 = v42;
  v43 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8();
  v306 = v45;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  v305 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  v303 = v49;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  v302 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  v300 = v53;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  v299 = v55;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  v294 = v57;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  v293 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  v288 = v61;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  v287 = v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  v285[1] = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  v68 = v285 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v70 = OUTLINED_FUNCTION_41(v69);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_8();
  v304 = v71;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_47();
  v323 = v73;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_47();
  v301 = v75;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47();
  v322 = v77;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47();
  v296 = v79;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_47();
  v319 = v81;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_47();
  v290 = v83;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47();
  v317 = v85;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_47();
  v286 = v87;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_47();
  v315 = v89;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47();
  v330 = v91;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v92);
  v94 = v285 - v93;
  MEMORY[0x28223BE20](v95);
  v97 = v285 - v96;
  OUTLINED_FUNCTION_10_20();
  sub_26A204270();
  v98 = *(type metadata accessor for _ProtoSimpleItem_Rich(0) + 20);
  v327 = v1;
  v331 = v98;
  v99 = *(v1 + v98);
  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v342);
  sub_26A10FD9C();
  LODWORD(v1) = OUTLINED_FUNCTION_40_9(v97);
  sub_26A0E48F0(v97, &qword_28036C7B8, &unk_26A425BF0);
  v328 = v43;
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v94);
    if (v100)
    {
      *v68 = MEMORY[0x277D84F90];
      *(v68 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v101, v102, v103);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v99);
      OUTLINED_FUNCTION_2_4(v94);
      v107 = v327;
      if (!v100)
      {
        sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2040A0();
      v107 = v327;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_32();
    sub_26A2040F4(v68, v108);
    v109 = v331;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v107 + v109);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v111 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v111);
      OUTLINED_FUNCTION_23_18();
      v99 = v112;
      *(v107 + v109) = v112;
    }

    sub_26A2040A0();
    OUTLINED_FUNCTION_126_0();
    v43 = v328;
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v328);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v341);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v341);
  v116 = &unk_26A425BF0;
  v117 = v315;
  sub_26A10FD9C();
  v118 = OUTLINED_FUNCTION_40_9(v117);
  sub_26A0E48F0(v117, &qword_28036C7B8, &unk_26A425BF0);
  if (v118 == 1)
  {
    v119 = v327;
  }

  else
  {
    v120 = v286;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v120);
    v119 = v327;
    if (v100)
    {
      v127 = v287;
      *v287 = MEMORY[0x277D84F90];
      *(v127 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v121, v122, v123);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v99);
      OUTLINED_FUNCTION_2_4(v120);
      v128 = v331;
      LODWORD(v116) = v288;
      if (!v100)
      {
        sub_26A0E48F0(v120, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v127 = v287;
      sub_26A2040A0();
      v128 = v331;
      LODWORD(v116) = v288;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_32();
    sub_26A2040F4(v127, v129);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v128);
    if ((v130 & 1) == 0)
    {
      v131 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v131);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v132);
    }

    sub_26A2040A0();
    v133 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v43);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v340);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v340);
  OUTLINED_FUNCTION_30_1();
  v136 = OUTLINED_FUNCTION_107();
  v137 = v321;
  __swift_getEnumTagSinglePayload(v136, v138, v321);
  OUTLINED_FUNCTION_17_4();
  if (v116 == 1)
  {
    v139 = v328;
  }

  else
  {
    v140 = v289;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v140);
    v141 = v331;
    if (v100)
    {
      v148 = v291;
      *v291 = MEMORY[0x277D84F90];
      *(v148 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v142, v143, v144);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v99);
      OUTLINED_FUNCTION_3_6(v140);
      v139 = v328;
      if (!v100)
      {
        sub_26A0E48F0(v140, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v148 = v291;
      sub_26A2040A0();
      v139 = v328;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_26_14();
    sub_26A2040F4(v148, v149);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v141);
    if ((v150 & 1) == 0)
    {
      v151 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v151);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v152);
    }

    sub_26A2040A0();
    v153 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v137);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v339);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v339);
  v156 = v317;
  OUTLINED_FUNCTION_52_7();
  v157 = v139;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v156, 1, v139);
  OUTLINED_FUNCTION_38_2(v156);
  if (EnumTagSinglePayload != 1)
  {
    v159 = v290;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v159);
    v160 = v331;
    v161 = v157;
    if (v100)
    {
      v168 = v293;
      *v293 = MEMORY[0x277D84F90];
      *(v168 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v162, v163, v164);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v99);
      OUTLINED_FUNCTION_37(v159, 1, v161);
      if (!v100)
      {
        sub_26A0E48F0(v159, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v168 = v293;
      sub_26A2040A0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_32();
    sub_26A2040F4(v168, v169);
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v160);
    if ((v170 & 1) == 0)
    {
      v171 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v171);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v172);
    }

    EnumTagSinglePayload = v330;
    sub_26A2040A0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v161);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v338);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, v338);
  OUTLINED_FUNCTION_30_1();
  v176 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v176, v177, v137);
  OUTLINED_FUNCTION_17_4();
  if (EnumTagSinglePayload == 1)
  {
    v178 = v328;
  }

  else
  {
    v179 = v295;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v179);
    v180 = v331;
    if (v100)
    {
      v188 = v297;
      *v297 = MEMORY[0x277D84F90];
      *(v188 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v181 = OUTLINED_FUNCTION_44_0(*(v137 + 32));
      v182 = v329;
      __swift_storeEnumTagSinglePayload(v181, v183, v184, v329);
      v185 = OUTLINED_FUNCTION_44_0(*(v137 + 36));
      __swift_storeEnumTagSinglePayload(v185, v186, v187, v182);
      OUTLINED_FUNCTION_3_6(v179);
      v178 = v328;
      if (!v100)
      {
        sub_26A0E48F0(v179, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v188 = v297;
      sub_26A2040A0();
      v178 = v328;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_26_14();
    sub_26A2040F4(v188, v189);
    v190 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v180);
    if ((v190 & 1) == 0)
    {
      v191 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v191);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v192);
    }

    sub_26A2040A0();
    v193 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v137);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, v337);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, v337);
  v196 = v319;
  OUTLINED_FUNCTION_52_7();
  v197 = v178;
  v198 = __swift_getEnumTagSinglePayload(v196, 1, v178);
  OUTLINED_FUNCTION_38_2(v196);
  if (v198 != 1)
  {
    v199 = v296;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v199);
    v200 = v331;
    if (v100)
    {
      v208 = v299;
      OUTLINED_FUNCTION_39_9(MEMORY[0x277D84F90]);
      v201 = OUTLINED_FUNCTION_44_0(*(v197 + 32));
      v202 = v329;
      __swift_storeEnumTagSinglePayload(v201, v203, v204, v329);
      v205 = OUTLINED_FUNCTION_44_0(*(v197 + 36));
      __swift_storeEnumTagSinglePayload(v205, v206, v207, v202);
      OUTLINED_FUNCTION_2_4(v199);
      if (!v100)
      {
        sub_26A0E48F0(v199, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v208 = v299;
      sub_26A2040A0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_32();
    sub_26A2040F4(v208, v209);
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v200);
    if ((v210 & 1) == 0)
    {
      v211 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v211);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v212);
    }

    sub_26A2040A0();
    v213 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v197);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, v336);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, v336);
  v216 = v322;
  OUTLINED_FUNCTION_52_7();
  v217 = OUTLINED_FUNCTION_40_9(v216);
  OUTLINED_FUNCTION_38_2(v216);
  if (v217 == 1)
  {
    v218 = v329;
  }

  else
  {
    v219 = v301;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v219);
    v220 = v331;
    if (v100)
    {
      v228 = v302;
      OUTLINED_FUNCTION_39_9(MEMORY[0x277D84F90]);
      v221 = OUTLINED_FUNCTION_44_0(*(v197 + 32));
      v222 = v329;
      __swift_storeEnumTagSinglePayload(v221, v223, v224, v329);
      v225 = OUTLINED_FUNCTION_44_0(*(v197 + 36));
      __swift_storeEnumTagSinglePayload(v225, v226, v227, v222);
      OUTLINED_FUNCTION_2_4(v219);
      if (!v100)
      {
        sub_26A0E48F0(v219, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v228 = v302;
      sub_26A2040A0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_32();
    sub_26A2040F4(v228, v229);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v220);
    if ((v230 & 1) == 0)
    {
      v231 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v231);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v232);
    }

    v218 = v329;
    sub_26A2040A0();
    v233 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v233, v234, v235, v197);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, v335);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, v335);
  v236 = v323;
  OUTLINED_FUNCTION_52_7();
  LODWORD(v237) = OUTLINED_FUNCTION_40_9(v236);
  OUTLINED_FUNCTION_38_2(v236);
  if (v237 == 1)
  {
    v238 = v218;
  }

  else
  {
    v239 = v304;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v239);
    v240 = v331;
    if (v100)
    {
      v247 = v305;
      OUTLINED_FUNCTION_39_9(MEMORY[0x277D84F90]);
      v241 = OUTLINED_FUNCTION_44_0(*(v197 + 32));
      v238 = v218;
      __swift_storeEnumTagSinglePayload(v241, v242, v243, v218);
      v244 = OUTLINED_FUNCTION_44_0(*(v197 + 36));
      __swift_storeEnumTagSinglePayload(v244, v245, v246, v218);
      OUTLINED_FUNCTION_2_4(v239);
      if (!v100)
      {
        sub_26A0E48F0(v239, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v247 = v305;
      sub_26A2040A0();
      v238 = v218;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_32();
    sub_26A2040F4(v247, v248);
    v249 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v240);
    if ((v249 & 1) == 0)
    {
      v250 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v250);
      OUTLINED_FUNCTION_23_18();
      OUTLINED_FUNCTION_35_11(v251);
    }

    LODWORD(v237) = v330;
    sub_26A2040A0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v252, v253, v254, v197);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, v334);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, v334);
  OUTLINED_FUNCTION_30_1();
  v255 = OUTLINED_FUNCTION_107();
  v256 = v325;
  __swift_getEnumTagSinglePayload(v255, v257, v325);
  OUTLINED_FUNCTION_17_4();
  if (v237 != 1)
  {
    v258 = v307;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v258, 1, v256);
    v237 = v331;
    if (v100)
    {
      v265 = v308;
      *v308 = MEMORY[0x277D84F90];
      *(v265 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v259 = OUTLINED_FUNCTION_44_0(*(v256 + 32));
      __swift_storeEnumTagSinglePayload(v259, v260, v261, v238);
      v262 = OUTLINED_FUNCTION_44_0(*(v256 + 36));
      __swift_storeEnumTagSinglePayload(v262, v263, v264, v238);
      OUTLINED_FUNCTION_37(v258, 1, v256);
      if (!v100)
      {
        sub_26A0E48F0(v258, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v265 = v308;
      sub_26A2040A0();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A2040F4(v265, type metadata accessor for _ProtoVisualProperty);
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v237);
    if ((v266 & 1) == 0)
    {
      v267 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v267);
      OUTLINED_FUNCTION_23_18();
      v99 = v268;
      *(v119 + v237) = v268;
    }

    sub_26A2040A0();
    v269 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v256);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, v333);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, v333);
  OUTLINED_FUNCTION_30_1();
  v272 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v272, v273, v238);
  OUTLINED_FUNCTION_17_4();
  if (v237 != 1)
  {
    v274 = v311;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v274);
    v275 = v331;
    if (v100)
    {
      v276 = v312;
      *v312 = MEMORY[0x277D84F90];
      *(v276 + 8) = 0;
      *(v276 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_3_6(v274);
      v277 = v313;
      if (!v100)
      {
        sub_26A0E48F0(v274, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v276 = v312;
      sub_26A2040A0();
      v277 = v313;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v277);
    sub_26A2040F4(v276, type metadata accessor for _ProtoActionProperty);
    v278 = swift_isUniquelyReferenced_nonNull_native();
    v279 = *(v119 + v275);
    if ((v278 & 1) == 0)
    {
      v280 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v280);
      OUTLINED_FUNCTION_23_18();
      v279 = v281;
      *(v119 + v275) = v281;
    }

    sub_26A2040A0();
    v282 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v282, v283, v284, v238);
    OUTLINED_FUNCTION_211(v279 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &v332);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for _ProtoSimpleItem_Rich(0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  OUTLINED_FUNCTION_1_22();
  v22 = sub_26A20414C(v20, v21, &protocol conformance descriptor for _ProtoSimpleItem_Rich);
  OUTLINED_FUNCTION_59_9(sub_26A203FF0, v31, v23, v22);

  sub_26A0E48F0(a10, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a9, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_187_0(a8);
  OUTLINED_FUNCTION_187_0(a7);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_38_2(a5);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_38_2(a3);
  OUTLINED_FUNCTION_187_0(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A201A3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v139 = a8;
  v137 = a7;
  v135 = a6;
  v129 = a4;
  v130 = a5;
  v127 = a3;
  v126 = a1;
  v16 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v125 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = &v113 - v19;
  v142 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v142);
  v121 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v113 - v22;
  v23 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v23 - 8);
  v124 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v25 - 8);
  v141 = &v113 - v26;
  v140 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v140);
  v119 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v120 = &v113 - v29;
  v30 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v30 - 8);
  v132 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v32 - 8);
  v133 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v113 - v35;
  v131 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v131);
  v115 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v123 = &v113 - v39;
  MEMORY[0x28223BE20](v40);
  v113 = &v113 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v42 - 8);
  v138 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v136 = &v113 - v45;
  MEMORY[0x28223BE20](v46);
  v134 = &v113 - v47;
  MEMORY[0x28223BE20](v48);
  v128 = &v113 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v113 - v51;
  v53 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v53);
  v118 = &v113 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v117 = &v113 - v56;
  MEMORY[0x28223BE20](v57);
  v116 = &v113 - v58;
  MEMORY[0x28223BE20](v59);
  v114 = &v113 - v60;
  MEMORY[0x28223BE20](v61);
  v63 = &v113 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v113 - v65;
  v67 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v67 - 8);
  v68 = a2[3];
  v69 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v68);
  (*(v69 + 8))(v68, v69);
  sub_26A2040A0();
  v147 = v66;
  _ProtoSimpleItem_Rich.text1.setter();
  sub_26A10FD9C();
  v70 = v145;
  if (v145)
  {
    v71 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v71 + 8))(v70, v71);
    sub_26A2040A0();
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v52, 1, v53) != 1)
    {
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text2.setter();
      sub_26A2040F4(v63, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v53);
  }

  sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v72 = v145;
  if (v145)
  {
    v73 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v73 + 8))(v72, v73);
    sub_26A2040A0();
    v74 = v131;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v131);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v36, 1, v74) != 1)
    {
      v75 = v113;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text3.setter();
      sub_26A2040F4(v75, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB10, &unk_26A426460);
    v74 = v131;
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v131);
  }

  sub_26A0E48F0(v36, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v76 = v145;
  if (v145)
  {
    v77 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v77 + 8))(v76, v77);
    v78 = v128;
    sub_26A2040A0();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v78, 1, v53) != 1)
    {
      v79 = v114;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text4.setter();
      sub_26A2040F4(v79, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB08, &unk_26A428720);
    v78 = v128;
    __swift_storeEnumTagSinglePayload(v128, 1, 1, v53);
  }

  sub_26A0E48F0(v78, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v80 = v145;
  if (v145)
  {
    v81 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v81 + 8))(v80, v81);
    v82 = v133;
    sub_26A2040A0();
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v74);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v82, 1, v74) != 1)
    {
      v83 = v115;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text5.setter();
      sub_26A2040F4(v83, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB10, &unk_26A426460);
    v82 = v133;
    __swift_storeEnumTagSinglePayload(v133, 1, 1, v74);
  }

  sub_26A0E48F0(v82, &qword_28036CAE0, &unk_26A4273F0);
LABEL_21:
  sub_26A10FD9C();
  v84 = v145;
  if (v145)
  {
    v85 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v85 + 8))(v84, v85);
    v86 = v134;
    sub_26A2040A0();
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v86, 1, v53) != 1)
    {
      v87 = v116;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text6.setter();
      sub_26A2040F4(v87, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB08, &unk_26A428720);
    v86 = v134;
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v53);
  }

  sub_26A0E48F0(v86, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v88 = v145;
  if (v145)
  {
    v89 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v89 + 8))(v88, v89);
    v90 = v136;
    sub_26A2040A0();
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v90, 1, v53) != 1)
    {
      v91 = v117;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text7.setter();
      sub_26A2040F4(v91, type metadata accessor for _ProtoTextProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB08, &unk_26A428720);
    v90 = v136;
    __swift_storeEnumTagSinglePayload(v136, 1, 1, v53);
  }

  sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
LABEL_31:
  sub_26A10FD9C();
  v92 = v145;
  if (v145)
  {
    v93 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v93 + 8))(v92, v93);
    v94 = v138;
    sub_26A2040A0();
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v94, 1, v53) != 1)
    {
      v95 = v118;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.text8.setter();
      sub_26A2040F4(v95, type metadata accessor for _ProtoTextProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB08, &unk_26A428720);
    v94 = v138;
    __swift_storeEnumTagSinglePayload(v138, 1, 1, v53);
  }

  sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
LABEL_36:
  sub_26A10FD9C();
  v96 = v145;
  if (v145)
  {
    v97 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v97 + 8))(v96, v97);
    v98 = v141;
    sub_26A2040A0();
    v99 = v140;
    __swift_storeEnumTagSinglePayload(v98, 0, 1, v140);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v98, 1, v99) != 1)
    {
      v100 = v120;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.thumbnail.setter();
      sub_26A2040F4(v100, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CB00, &unk_26A426450);
    v98 = v141;
    __swift_storeEnumTagSinglePayload(v141, 1, 1, v140);
  }

  sub_26A0E48F0(v98, &qword_28036CAE8, &unk_26A426430);
LABEL_41:
  sub_26A10FD9C();
  v101 = v145;
  if (v145)
  {
    v102 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v102 + 8))(v101, v102);
    v103 = v143;
    sub_26A2040A0();
    v104 = v142;
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v142);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v103, 1, v104) != 1)
    {
      v105 = v122;
      sub_26A2040A0();
      sub_26A204270();
      _ProtoSimpleItem_Rich.action.setter();
      sub_26A2040F4(v105, type metadata accessor for _ProtoActionProperty);
      goto LABEL_46;
    }
  }

  else
  {
    sub_26A0E48F0(&v144, &qword_28036CAF8, &unk_26A426D30);
    v103 = v143;
    __swift_storeEnumTagSinglePayload(v143, 1, 1, v142);
  }

  sub_26A0E48F0(v103, &off_28036C7C0, &off_26A427400);
LABEL_46:

  result = _ProtoSimpleItem_Rich.componentName.setter(a12, a13, v106, v107, v108);
  if (a15)
  {

    return _ProtoSimpleItem_Rich.linkIdentifier.setter(a14, a15, v110, v111, v112);
  }

  return result;
}

void SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_76();
  v37 = v24;
  v26 = v25;
  v38 = v28;
  v39 = v27;
  v40 = v30;
  v41 = v29;
  v42 = v32;
  v43 = v31;
  sub_26A0E5D68(v31, v68);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_65_6();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Rich(0);
  v45 = v68;
  v46 = v67;
  v47 = v66;
  v48 = v65;
  v49 = v64;
  v50 = v63;
  v51 = v62;
  v52 = v61;
  v53 = v60;
  v54 = v59;
  v55 = a23;
  v56 = a24;
  OUTLINED_FUNCTION_1_22();
  v35 = sub_26A20414C(v33, v34, &protocol conformance descriptor for _ProtoSimpleItem_Rich);
  v57 = 0;
  v58 = 0;
  OUTLINED_FUNCTION_59_9(sub_26A2042C4, v44, v36, v35);

  sub_26A0E48F0(a22, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a21, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_164_0(v26);
  OUTLINED_FUNCTION_164_0(v38);
  sub_26A0E48F0(v39, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_40_1(v41);
  OUTLINED_FUNCTION_164_0(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_26A0E48F0(v59, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v60, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v61);
  OUTLINED_FUNCTION_164_0(v62);
  OUTLINED_FUNCTION_164_0(v63);
  OUTLINED_FUNCTION_40_1(v64);
  OUTLINED_FUNCTION_164_0(v65);
  OUTLINED_FUNCTION_40_1(v66);
  OUTLINED_FUNCTION_164_0(v67);
  __swift_destroy_boxed_opaque_existential_1(v68);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRich.init(text1:text2:text3:text4:text5:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v31 = v21;
  v23 = v22;
  v25 = v24;
  v30 = v26;
  OUTLINED_FUNCTION_55_6();
  sub_26A0E5D68(v27, v47);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_65_6();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Rich(0);
  OUTLINED_FUNCTION_1_22();
  sub_26A20414C(v28, v29, &protocol conformance descriptor for _ProtoSimpleItem_Rich);
  sub_26A4249C4();

  sub_26A0E48F0(v23, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v25, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v30, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v31);
  OUTLINED_FUNCTION_40_1(v32);
  OUTLINED_FUNCTION_164_0(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_26A0E48F0(v35, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v36, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_40_1(v43);
  OUTLINED_FUNCTION_164_0(&v44);
  OUTLINED_FUNCTION_40_1(&v45);
  OUTLINED_FUNCTION_164_0(&v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRich.init(text1:text2:text3:text4:text5:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v9 = v1;
  v10 = v0;
  v11 = v3;
  v12 = v2;
  OUTLINED_FUNCTION_55_6();
  sub_26A0E5D68(v4, v53);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v53, v40);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Rich(0);
  v17 = v40;
  v18 = v39;
  v19 = v38;
  v20 = v37;
  v21 = v36;
  v22 = v35;
  v23 = v34;
  v24 = v33;
  v25 = v32;
  v26 = v31;
  v27 = 0;
  v28 = 0xE000000000000000;
  OUTLINED_FUNCTION_1_22();
  v7 = sub_26A20414C(v5, v6, &protocol conformance descriptor for _ProtoSimpleItem_Rich);
  v29 = 0;
  v30 = 0;
  OUTLINED_FUNCTION_59_9(sub_26A2042C4, v16, v8, v7);
  sub_26A0E48F0(v9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v10, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v11);
  OUTLINED_FUNCTION_164_0(v12);
  OUTLINED_FUNCTION_31_2(v13);
  OUTLINED_FUNCTION_164_0(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_26A0E48F0(v41, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(v42);
  OUTLINED_FUNCTION_164_0(v43);
  OUTLINED_FUNCTION_164_0(v45);
  OUTLINED_FUNCTION_164_0(v47);
  OUTLINED_FUNCTION_31_2(v49);
  OUTLINED_FUNCTION_164_0(&v50);
  OUTLINED_FUNCTION_31_2(&v51);
  OUTLINED_FUNCTION_164_0(&v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_26A0E48F0(v31, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(v32);
  OUTLINED_FUNCTION_164_0(v33);
  OUTLINED_FUNCTION_164_0(v34);
  OUTLINED_FUNCTION_164_0(v35);
  OUTLINED_FUNCTION_31_2(v36);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_31_2(v38);
  OUTLINED_FUNCTION_164_0(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SimpleItemRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v90 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v93 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v92 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v91 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v89 - v24;
  v26 = type metadata accessor for SimpleItemRich(0);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF58, &qword_26A426B08);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  v34 = &v89 - v33;
  OUTLINED_FUNCTION_25_15();
  sub_26A204270();
  if (v4)
  {
    _ProtoSimpleItem_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A204270();
  }

  sub_26A2040A0();
  v34[*(v31 + 32)] = v4 & 1;
  sub_26A2040F4(v30, type metadata accessor for SimpleItemRich);
  v35 = MEMORY[0x277D84F90];
  *&v34[*(v31 + 28)] = MEMORY[0x277D84F90];
  v36 = type metadata accessor for _ProtoSimpleItem_Rich(0);
  OUTLINED_FUNCTION_142(*&v34[*(v36 + 20)] + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v94);
  sub_26A10FD9C();
  v37 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v37, v38, v16);
  if (v39)
  {
    *v20 = v35;
    *(v20 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v40 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
    v47 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v47, v48, v16);
    if (!v39)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2040A0();
  }

  sub_26A2040A0();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  OUTLINED_FUNCTION_222();
  sub_26A108514(v25, v53 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  sub_26A0E48F0(v25, &qword_28036CB30, &qword_26A426480);
  SimpleItemRich.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7(v55, v54 & 0xFFFF0000FFFFFFFFLL | 0x3200000000);
  OUTLINED_FUNCTION_33_7();
  v56 = v91;
  SimpleItemRich.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1084EC(v56, v57 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v56, &qword_28036CB28, &qword_26A427980);
  SimpleItemRich.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7(v59, v58 & 0xFFFF0000FFFFFFFFLL | 0x3400000000);
  OUTLINED_FUNCTION_33_7();
  SimpleItemRich.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1084EC(v56, v60 & 0xFFFF0000FFFFFFFFLL | 0x3500000000, 0xE500000000000000);
  sub_26A0E48F0(v56, &qword_28036CB28, &qword_26A427980);
  SimpleItemRich.text6.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7(v62, v61 & 0xFFFF0000FFFFFFFFLL | 0x3600000000);
  OUTLINED_FUNCTION_33_7();
  SimpleItemRich.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7(v64, v63 & 0xFFFF0000FFFFFFFFLL | 0x3700000000);
  OUTLINED_FUNCTION_33_7();
  SimpleItemRich.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7(v66, v65 & 0xFFFF0000FFFFFFFFLL | 0x3800000000);
  OUTLINED_FUNCTION_33_7();
  v67 = v92;
  SimpleItemRich.thumbnail.getter();
  sub_26A1084C4(v67, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v67, &qword_28036CB20, &unk_26A426470);
  v68 = v93;
  SimpleItemRich.action.getter();
  sub_26A1083C0();
  sub_26A0E48F0(v68, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7DB8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v70, v71, v72, v73, v89, v90);

  v74 = swift_getKeyPath();
  sub_26A0F8724(v74, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v75, v76, v77, v78, v89, v90);

  sub_26A0FF830(v79, v80, v81, v82, v83, v84, v85);
  sub_26A0E48F0(v34, &qword_28036CF58, &qword_26A426B08);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v87;
  result._countAndFlagsBits = v86;
  return result;
}

uint64_t SimpleItemRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_Rich(0);
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
  OUTLINED_FUNCTION_10_20();
  sub_26A204270();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_27_14();
  sub_26A2040A0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SimpleItemRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemRich(0);
  *(inited + 64) = &protocol witness table for SimpleItemRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_25_15();
  sub_26A204270();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A20414C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SimpleItemRich(uint64_t a1)
{
  result = qword_28036FB30;
  if (!qword_28036FB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2040A0()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2040F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A20414C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A204204(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_Rich(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A204270()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return type metadata accessor for _ProtoSimpleItem_Rich(0);
}

void OUTLINED_FUNCTION_23_18()
{

  sub_26A268F00();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_26A0E48F0(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_39_9@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_59_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_61_7(uint64_t a1, uint64_t a2)
{

  sub_26A108514(v2, a2, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return sub_26A2040A0();
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return type metadata accessor for _ProtoSimpleItem_Rich(0);
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return sub_26A2040A0();
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 360);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t sub_26A204530(void *a1)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_152_0();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v12 + 20)) + *a1, v25);
  sub_26A10FD9C();
  v13 = OUTLINED_FUNCTION_271();
  if (__swift_getEnumTagSinglePayload(v13, v14, v7) == 1)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
    v22 = OUTLINED_FUNCTION_271();
    if (__swift_getEnumTagSinglePayload(v22, v23, v7) != 1)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20943C();
  }

  return sub_26A20943C();
}

void sub_26A204710()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v21 = v4;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + *v3, &v22);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
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
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A20943C();
    }

    sub_26A20943C();
    v3 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void sub_26A204960()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v21 = v4;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + *v3, &v22);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
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
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A20943C();
    }

    sub_26A20943C();
    v3 = 0;
  }

  v20 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  v14 = v4;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v15);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
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
      sub_26A20943C();
    }

    sub_26A20943C();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemPairNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_PairNumber.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v353 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v335 = v3;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  v334 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v336 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v333 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v350 = v12;
  v349 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v332 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v331 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v329 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v328 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v330 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  v347 = v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  v348 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  v327 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v346 = v31;
  v32 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v326 = v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  v325 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  v324 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v322 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  v321 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  v319 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  v318 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  v316 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v315 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v313 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  v312 = v54;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  v310 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  v309 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  v307 = v60;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  v306 = v62;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  v304 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  v303 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v301 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  v300 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v298 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v297 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_48();
  v295 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v78 = OUTLINED_FUNCTION_41(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_8();
  v323 = v79;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_47();
  v345 = v81;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_47();
  v320 = v83;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47();
  v344 = v85;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_47();
  v317 = v87;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_47();
  v343 = v89;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47();
  v314 = v91;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_47();
  v342 = v93;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47();
  v311 = v95;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47();
  v341 = v97;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_47();
  v308 = v99;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_47();
  v340 = v101;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47();
  v305 = v103;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_47();
  v339 = v105;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_47();
  v302 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_47();
  v338 = v109;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_47();
  v299 = v111;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_47();
  v337 = v113;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_47();
  v296 = v115;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v116);
  v118 = &v295 - v117;
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_47();
  v354 = v120;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v121);
  v123 = &v295 - v122;
  MEMORY[0x28223BE20](v124);
  v126 = &v295 - v125;
  OUTLINED_FUNCTION_10_21();
  sub_26A2098B8();
  v127 = *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20);
  v351 = v1;
  v352 = v127;
  v128 = *(v1 + v127);
  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1, &v369);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v126, 1, v32);
  OUTLINED_FUNCTION_38_2(v126);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v123);
    if (v129)
    {
      v137 = v295;
      *v295 = MEMORY[0x277D84F90];
      *(v137 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v130 = v353;
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v353);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v130);
      OUTLINED_FUNCTION_3_6(v123);
      v138 = v351;
      if (!v129)
      {
        sub_26A0E48F0(v123, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v137 = v295;
      sub_26A20943C();
      v138 = v351;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v137, v139);
    v140 = v352;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v138 + v140);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v142 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v142);
      OUTLINED_FUNCTION_17_8();
      v128 = v143;
      *(v138 + v140) = v143;
    }

    sub_26A20943C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1, v368);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, v368);
  v147 = &unk_26A425BF0;
  sub_26A10FD9C();
  v148 = OUTLINED_FUNCTION_271();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v148, v149, v32);
  sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload == 1)
  {
    v152 = v351;
    v151 = v352;
  }

  else
  {
    v153 = v296;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v153);
    v151 = v352;
    if (v129)
    {
      v154 = v298;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_11_15(*(v32 + 32));
      OUTLINED_FUNCTION_11_15(*(v32 + 36));
      v155 = OUTLINED_FUNCTION_3_6(v153);
      v152 = v351;
      if (!v129)
      {
        v155 = sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v154 = v298;
      v155 = sub_26A20943C();
      v152 = v351;
    }

    OUTLINED_FUNCTION_44_3(v155);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v154, v156);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v157 & 1) == 0)
    {
      v158 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v158);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v159);
    }

    OUTLINED_FUNCTION_19_14();
    v160 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, v367);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v367);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (&unk_26A425BF0 != 1)
  {
    v147 = v299;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v163 = v301;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v164 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v164 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v163 = v301;
      v164 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v164);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v163, v165);
    v166 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v166 & 1) == 0)
    {
      v167 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v167);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v168);
    }

    OUTLINED_FUNCTION_19_14();
    v169 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v169, v170, v171, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v366);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v366);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v302;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v172 = v304;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v173 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v173 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v172 = v304;
      v173 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v173);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v172, v174);
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v175 & 1) == 0)
    {
      v176 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v176);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v177);
    }

    OUTLINED_FUNCTION_19_14();
    v178 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v365);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v365);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v305;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v181 = v307;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v182 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v182 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v181 = v307;
      v182 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v182);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v181, v183);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v184 & 1) == 0)
    {
      v185 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v185);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v186);
    }

    OUTLINED_FUNCTION_19_14();
    v187 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v364);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v364);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v308;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v190 = v310;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v191 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v191 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v190 = v310;
      v191 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v191);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v190, v192);
    v193 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v193 & 1) == 0)
    {
      v194 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v194);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v195);
    }

    OUTLINED_FUNCTION_19_14();
    v196 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v363);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v363);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v311;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v199 = v313;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v200 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v200 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v199 = v313;
      v200 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v200);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v199, v201);
    v202 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v202 & 1) == 0)
    {
      v203 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v203);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v204);
    }

    OUTLINED_FUNCTION_19_14();
    v205 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v205, v206, v207, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v362);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v362);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v314;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v208 = v316;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v209 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v209 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v208 = v316;
      v209 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v209);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v208, v210);
    v211 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v211 & 1) == 0)
    {
      v212 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v212);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v213);
    }

    OUTLINED_FUNCTION_19_14();
    v214 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v214, v215, v216, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v361);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, v361);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v317;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v217 = v319;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v218 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v218 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v217 = v319;
      v218 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v218);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v217, v219);
    v220 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v220 & 1) == 0)
    {
      v221 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v221);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v222);
    }

    OUTLINED_FUNCTION_19_14();
    v223 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v223, v224, v225, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, v360);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, v360);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v147 = v320;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v226 = v322;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v227 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v227 = sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v226 = v322;
      v227 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v227);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v226, v228);
    v229 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v229 & 1) == 0)
    {
      v230 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v230);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v231);
    }

    OUTLINED_FUNCTION_19_14();
    v232 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v232, v233, v234, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, v359);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, v359);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v147 != 1)
  {
    v235 = v323;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v129)
    {
      v236 = v325;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v237 = OUTLINED_FUNCTION_1_23();
      if (!v129)
      {
        v237 = sub_26A0E48F0(v235, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v236 = v325;
      v237 = sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3(v237);
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v236, v238);
    v239 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v239 & 1) == 0)
    {
      v240 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v240);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v241);
    }

    OUTLINED_FUNCTION_19_14();
    v242 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v242, v243, v244, v32);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, v358);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, v358);
  v245 = v346;
  OUTLINED_FUNCTION_19_3();
  v246 = v349;
  v247 = __swift_getEnumTagSinglePayload(v245, 1, v349);
  OUTLINED_FUNCTION_38_2(v245);
  if (v247 != 1)
  {
    v248 = v327;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v248);
    if (v129)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_92();
      v249 = v353;
      __swift_storeEnumTagSinglePayload(v250, v251, v252, v353);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v253, v254, v255, v249);
      OUTLINED_FUNCTION_3_6(v248);
      if (!v129)
      {
        sub_26A0E48F0(v248, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A20943C();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_28_8();
    v256 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v151);
    if ((v256 & 1) == 0)
    {
      v257 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v257);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v258);
    }

    sub_26A20943C();
    v259 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v259, v260, v261, v246);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, v357);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, v357);
  v262 = v347;
  sub_26A10FD9C();
  v263 = OUTLINED_FUNCTION_271();
  v265 = __swift_getEnumTagSinglePayload(v263, v264, v246);
  OUTLINED_FUNCTION_38_2(v262);
  if (v265 == 1)
  {
    v266 = v352;
  }

  else
  {
    v267 = v330;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v267);
    v266 = v352;
    if (v129)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_92();
      v268 = v353;
      __swift_storeEnumTagSinglePayload(v269, v270, v271, v353);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v268);
      OUTLINED_FUNCTION_3_6(v267);
      if (!v129)
      {
        sub_26A0E48F0(v267, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A20943C();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_28_8();
    v275 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v152 + v266);
    if ((v275 & 1) == 0)
    {
      v276 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v276);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v277);
    }

    sub_26A20943C();
    v278 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v278, v279, v280, v246);
    OUTLINED_FUNCTION_211(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, v356);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v128 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v356);
  v281 = v350;
  sub_26A10FD9C();
  v282 = v353;
  v283 = __swift_getEnumTagSinglePayload(v281, 1, v353);
  OUTLINED_FUNCTION_38_2(v281);
  if (v283 != 1)
  {
    v284 = v333;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v284, 1, v282) == 1)
    {
      v285 = v334;
      *v334 = MEMORY[0x277D84F90];
      *(v285 + 8) = 0;
      *(v285 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v286 = __swift_getEnumTagSinglePayload(v284, 1, v282);
      v287 = v335;
      if (v286 != 1)
      {
        sub_26A0E48F0(v284, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v285 = v334;
      sub_26A20943C();
      v287 = v335;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v287);
    sub_26A209490(v285, type metadata accessor for _ProtoActionProperty);
    v288 = swift_isUniquelyReferenced_nonNull_native();
    v289 = *(v152 + v266);
    if ((v288 & 1) == 0)
    {
      v290 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v290);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v291);
    }

    sub_26A20943C();
    v292 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v292, v293, v294, v282);
    OUTLINED_FUNCTION_211(v289 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v355);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumber.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:action:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_9_16();
  sub_26A209870(v18, v19, &protocol conformance descriptor for _ProtoSummaryItem_PairNumber);
  sub_26A4249C4();

  sub_26A0E48F0(a14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(a13);
  OUTLINED_FUNCTION_40_1(a12);
  OUTLINED_FUNCTION_40_1(a11);
  OUTLINED_FUNCTION_40_1(a10);
  OUTLINED_FUNCTION_40_1(a9);
  OUTLINED_FUNCTION_40_1(a8);
  OUTLINED_FUNCTION_40_1(a7);
  OUTLINED_FUNCTION_40_1(a6);
  OUTLINED_FUNCTION_40_1(a5);
  OUTLINED_FUNCTION_40_1(a4);
  OUTLINED_FUNCTION_40_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A206BD0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v165 = a8;
  v163 = a7;
  v161 = a6;
  v159 = a5;
  v158 = a4;
  v179 = a3;
  v20 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v20 - 8);
  v156 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v22 - 8);
  v175 = &v141 - v23;
  v174 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v174);
  v153 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v154 = &v141 - v26;
  v27 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v27 - 8);
  v172 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v29 - 8);
  v173 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v170 = &v141 - v32;
  v171 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v171);
  v152 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v155 = &v141 - v35;
  MEMORY[0x28223BE20](v36);
  v151 = &v141 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v38 - 8);
  v169 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v168 = &v141 - v41;
  MEMORY[0x28223BE20](v42);
  v167 = &v141 - v43;
  MEMORY[0x28223BE20](v44);
  v166 = &v141 - v45;
  MEMORY[0x28223BE20](v46);
  v164 = &v141 - v47;
  MEMORY[0x28223BE20](v48);
  v162 = &v141 - v49;
  MEMORY[0x28223BE20](v50);
  v160 = &v141 - v51;
  MEMORY[0x28223BE20](v52);
  v157 = &v141 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v141 - v55;
  v57 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v57);
  v150 = &v141 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v149 = &v141 - v60;
  MEMORY[0x28223BE20](v61);
  v148 = &v141 - v62;
  MEMORY[0x28223BE20](v63);
  v147 = &v141 - v64;
  MEMORY[0x28223BE20](v65);
  v146 = &v141 - v66;
  MEMORY[0x28223BE20](v67);
  v145 = &v141 - v68;
  MEMORY[0x28223BE20](v69);
  v144 = &v141 - v70;
  MEMORY[0x28223BE20](v71);
  v143 = &v141 - v72;
  MEMORY[0x28223BE20](v73);
  v142 = &v141 - v74;
  MEMORY[0x28223BE20](v75);
  v77 = (&v141 - v76);
  v78 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v78 - 8);
  v80 = a2[3];
  v79 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v80);
  (*(v79 + 8))(v80, v79);
  sub_26A20943C();
  _ProtoSummaryItem_PairNumber.number1.setter();
  v81 = v179[3];
  v82 = v179[4];
  __swift_project_boxed_opaque_existential_1(v179, v81);
  (*(v82 + 8))(v81, v82);
  sub_26A20943C();
  v179 = v77;
  _ProtoSummaryItem_PairNumber.number2.setter();
  sub_26A10FD9C();
  v83 = v177;
  if (v177)
  {
    v84 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v84 + 8))(v83, v84);
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    v85 = v57;
    if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
    {
      v86 = v142;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text1.setter();
      sub_26A209490(v86, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
    v85 = v57;
  }

  sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v87 = v177;
  v88 = v157;
  if (v177)
  {
    v89 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v89 + 8))(v87, v89);
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v88, 1, v85) != 1)
    {
      v90 = v143;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text2.setter();
      sub_26A209490(v90, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v85);
  }

  sub_26A0E48F0(v88, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v91 = v177;
  if (v177)
  {
    v92 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v92 + 8))(v91, v92);
    v93 = v160;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v93, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v93, 1, v85) != 1)
    {
      v94 = v144;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text3.setter();
      sub_26A209490(v94, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v93 = v160;
    __swift_storeEnumTagSinglePayload(v160, 1, 1, v85);
  }

  sub_26A0E48F0(v93, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v95 = v177;
  if (v177)
  {
    v96 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v96 + 8))(v95, v96);
    v97 = v162;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v97, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v97, 1, v85) != 1)
    {
      v98 = v145;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text4.setter();
      sub_26A209490(v98, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v97 = v162;
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v85);
  }

  sub_26A0E48F0(v97, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v99 = v177;
  if (v177)
  {
    v100 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v100 + 8))(v99, v100);
    v101 = v164;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v101, 1, v85) != 1)
    {
      v102 = v146;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text5.setter();
      sub_26A209490(v102, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v101 = v164;
    __swift_storeEnumTagSinglePayload(v164, 1, 1, v85);
  }

  sub_26A0E48F0(v101, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v103 = v177;
  if (v177)
  {
    v104 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v104 + 8))(v103, v104);
    v105 = v166;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v105, 1, v85) != 1)
    {
      v106 = v147;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text6.setter();
      sub_26A209490(v106, type metadata accessor for _ProtoTextProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v105 = v166;
    __swift_storeEnumTagSinglePayload(v166, 1, 1, v85);
  }

  sub_26A0E48F0(v105, &qword_28036C7B8, &unk_26A425BF0);
LABEL_31:
  sub_26A10FD9C();
  v107 = v177;
  if (v177)
  {
    v108 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v108 + 8))(v107, v108);
    v109 = v167;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v109, 1, v85) != 1)
    {
      v110 = v148;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text7.setter();
      sub_26A209490(v110, type metadata accessor for _ProtoTextProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v109 = v167;
    __swift_storeEnumTagSinglePayload(v167, 1, 1, v85);
  }

  sub_26A0E48F0(v109, &qword_28036C7B8, &unk_26A425BF0);
LABEL_36:
  sub_26A10FD9C();
  v111 = v177;
  if (v177)
  {
    v112 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v112 + 8))(v111, v112);
    v113 = v168;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v113, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v113, 1, v85) != 1)
    {
      v114 = v149;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text8.setter();
      sub_26A209490(v114, type metadata accessor for _ProtoTextProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v113 = v168;
    __swift_storeEnumTagSinglePayload(v168, 1, 1, v85);
  }

  sub_26A0E48F0(v113, &qword_28036C7B8, &unk_26A425BF0);
LABEL_41:
  sub_26A10FD9C();
  v115 = v177;
  if (v177)
  {
    v116 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v116 + 8))(v115, v116);
    v117 = v169;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v85);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v117, 1, v85);
    v119 = v171;
    if (EnumTagSinglePayload != 1)
    {
      v120 = v150;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text9.setter();
      sub_26A209490(v120, type metadata accessor for _ProtoTextProperty);
      goto LABEL_46;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB08, &unk_26A428720);
    v117 = v169;
    __swift_storeEnumTagSinglePayload(v169, 1, 1, v85);
    v119 = v171;
  }

  sub_26A0E48F0(v117, &qword_28036C7B8, &unk_26A425BF0);
LABEL_46:
  sub_26A10FD9C();
  v121 = v177;
  if (v177)
  {
    v122 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v122 + 8))(v121, v122);
    v123 = v170;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v123, 0, 1, v119);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v123, 1, v119) != 1)
    {
      v124 = v151;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.thumbnail1.setter();
      sub_26A209490(v124, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_51;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB00, &unk_26A426450);
    v123 = v170;
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v119);
  }

  sub_26A0E48F0(v123, &qword_28036CAE8, &unk_26A426430);
LABEL_51:
  sub_26A10FD9C();
  v125 = v177;
  if (v177)
  {
    v126 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v126 + 8))(v125, v126);
    v127 = v173;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v127, 0, 1, v119);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v127, 1, v119) != 1)
    {
      v128 = v152;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.thumbnail2.setter();
      sub_26A209490(v128, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_56;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CB00, &unk_26A426450);
    v127 = v173;
    __swift_storeEnumTagSinglePayload(v173, 1, 1, v119);
  }

  sub_26A0E48F0(v127, &qword_28036CAE8, &unk_26A426430);
LABEL_56:
  sub_26A10FD9C();
  v129 = v177;
  if (v177)
  {
    v130 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    (*(v130 + 8))(v129, v130);
    v131 = v175;
    sub_26A20943C();
    v132 = v174;
    __swift_storeEnumTagSinglePayload(v131, 0, 1, v174);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (__swift_getEnumTagSinglePayload(v131, 1, v132) != 1)
    {
      v133 = v154;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.action.setter();
      sub_26A209490(v133, type metadata accessor for _ProtoActionProperty);
      goto LABEL_61;
    }
  }

  else
  {
    sub_26A0E48F0(&v176, &qword_28036CAF8, &unk_26A426D30);
    v131 = v175;
    __swift_storeEnumTagSinglePayload(v175, 1, 1, v174);
  }

  sub_26A0E48F0(v131, &off_28036C7C0, &off_26A427400);
LABEL_61:

  result = _ProtoSummaryItem_PairNumber.componentName.setter(a16, a17, v134, v135, v136);
  if (a19)
  {

    return _ProtoSummaryItem_PairNumber.linkIdentifier.setter(a18, a19, v138, v139, v140);
  }

  return result;
}

void SummaryItemPairNumber.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_76();
  v43 = v29;
  v44 = v28;
  v45 = v31;
  v46 = v30;
  v47 = v33;
  v48 = v32;
  v35 = v34;
  v49 = v34;
  v50 = v36;
  OUTLINED_FUNCTION_40_10();
  sub_26A0E5D68(v37, v64);
  sub_26A0E5D68(v35, v63);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_9_16();
  sub_26A209870(v38, v39, &protocol conformance descriptor for _ProtoSummaryItem_PairNumber);
  sub_26A4249C4();

  sub_26A0E48F0(v42, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_56_6(v41);
  OUTLINED_FUNCTION_56_6(v40);
  OUTLINED_FUNCTION_164_0(a23);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v43);
  OUTLINED_FUNCTION_164_0(v44);
  OUTLINED_FUNCTION_164_0(v45);
  OUTLINED_FUNCTION_164_0(v46);
  OUTLINED_FUNCTION_164_0(v47);
  OUTLINED_FUNCTION_164_0(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_26A0E48F0(v51, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_56_6(v52);
  OUTLINED_FUNCTION_56_6(v53);
  OUTLINED_FUNCTION_164_0(v54);
  OUTLINED_FUNCTION_164_0(v55);
  OUTLINED_FUNCTION_164_0(v56);
  OUTLINED_FUNCTION_164_0(v57);
  OUTLINED_FUNCTION_164_0(v58);
  OUTLINED_FUNCTION_164_0(v59);
  OUTLINED_FUNCTION_164_0(v60);
  OUTLINED_FUNCTION_164_0(&v61);
  OUTLINED_FUNCTION_164_0(&v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v64);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumber.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_76();
  v38 = v24;
  v39 = v23;
  v40 = v26;
  v41 = v25;
  v42 = v28;
  v43 = v27;
  v30 = v29;
  v44 = v29;
  v45 = v31;
  OUTLINED_FUNCTION_40_10();
  sub_26A0E5D68(v32, v59);
  sub_26A0E5D68(v30, v58);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_9_16();
  sub_26A209870(v33, v34, &protocol conformance descriptor for _ProtoSummaryItem_PairNumber);
  sub_26A4249C4();
  sub_26A0E48F0(v37, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v36);
  OUTLINED_FUNCTION_52_1(v35);
  OUTLINED_FUNCTION_164_0(a23);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v38);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_26A0E48F0(v46, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v47);
  OUTLINED_FUNCTION_52_1(v48);
  OUTLINED_FUNCTION_164_0(v49);
  OUTLINED_FUNCTION_164_0(v50);
  OUTLINED_FUNCTION_164_0(v51);
  OUTLINED_FUNCTION_164_0(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(v54);
  OUTLINED_FUNCTION_164_0(v55);
  OUTLINED_FUNCTION_164_0(&v56);
  OUTLINED_FUNCTION_164_0(&v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemPairNumber.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v104 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v109 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v108 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v107 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v106 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v105 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v27 = &v104 - v26;
  v28 = type metadata accessor for SummaryItemPairNumber(0);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  v32 = &v104 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF50, &qword_26A426B00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &v104 - v35;
  OUTLINED_FUNCTION_26_15();
  sub_26A2098B8();
  if (v3)
  {
    _ProtoSummaryItem_PairNumber.redactedProto.getter();
  }

  else
  {
    sub_26A2098B8();
  }

  sub_26A20943C();
  v36[*(v33 + 32)] = v3 & 1;
  sub_26A209490(v32, type metadata accessor for SummaryItemPairNumber);
  v37 = MEMORY[0x277D84F90];
  *&v36[*(v33 + 28)] = MEMORY[0x277D84F90];
  v38 = *&v36[*(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20)];
  OUTLINED_FUNCTION_142(v38 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1, &v111);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v15);
  if (v39)
  {
    *v20 = v37;
    *(v20 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v40 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
    OUTLINED_FUNCTION_3_6(v15);
    v47 = v107;
    if (!v39)
    {
      sub_26A0E48F0(v15, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20943C();
    v47 = v107;
  }

  sub_26A20943C();
  v48 = type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
  sub_26A1043C0(v27, 0x317265626D756ELL, 0xE700000000000000);
  sub_26A0E48F0(v27, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142(v38 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, &v110);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v47);
  if (v39)
  {
    v52 = v106;
    *v106 = v37;
    *(v52 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v53 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);
    OUTLINED_FUNCTION_3_6(v47);
    if (!v39)
    {
      sub_26A0E48F0(v47, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20943C();
  }

  v60 = v105;
  sub_26A20943C();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v48);
  sub_26A1043C0(v60, 0x327265626D756ELL, 0xE700000000000000);
  OUTLINED_FUNCTION_49_11();
  SummaryItemPairNumber.text1.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v65, v64 & 0xFFFF0000FFFFFFFFLL | 0x3100000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v67, v66 & 0xFFFF0000FFFFFFFFLL | 0x3200000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text3.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v69, v68 & 0xFFFF0000FFFFFFFFLL | 0x3300000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v71, v70 & 0xFFFF0000FFFFFFFFLL | 0x3400000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text5.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v73, v72 & 0xFFFF0000FFFFFFFFLL | 0x3500000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text6.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v75, v74 & 0xFFFF0000FFFFFFFFLL | 0x3600000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v77, v76 & 0xFFFF0000FFFFFFFFLL | 0x3700000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v79, v78 & 0xFFFF0000FFFFFFFFLL | 0x3800000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text9.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6(v81, v80 & 0xFFFF0000FFFFFFFFLL | 0x3900000000);
  OUTLINED_FUNCTION_25_3();
  v82 = v108;
  SummaryItemPairNumber.thumbnail1.getter();
  sub_26A104398(v82, 0x69616E626D756874, 0xEA0000000000316CLL);
  OUTLINED_FUNCTION_49_11();
  SummaryItemPairNumber.thumbnail2.getter();
  sub_26A104398(v82, 0x696E61626D756874, 0xEA0000000000326CLL);
  OUTLINED_FUNCTION_49_11();
  v83 = v109;
  SummaryItemPairNumber.action.getter();
  sub_26A104294();
  sub_26A0E48F0(v83, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F76B0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v85, v86, v87, v88, v104, v105);

  v89 = swift_getKeyPath();
  sub_26A0F8298(v89, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v90, v91, v92, v93, v104, v105);

  sub_26A0F9D58(v94, v95, v96, v97, v98, v99, v100);
  sub_26A0E48F0(v36, &qword_28036CF50, &qword_26A426B00);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v102;
  result._countAndFlagsBits = v101;
  return result;
}

uint64_t type metadata accessor for SummaryItemPairNumber(uint64_t a1)
{
  result = qword_28036FB40;
  if (!qword_28036FB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A20943C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A209490(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SummaryItemPairNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_PairNumber(0);
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
  OUTLINED_FUNCTION_10_21();
  sub_26A2098B8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_27_15();
  sub_26A20943C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SummaryItemPairNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemPairNumber(0);
  *(inited + 64) = &protocol witness table for SummaryItemPairNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_15();
  sub_26A2098B8();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A209870(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A209804(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_PairNumber(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A209870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2098B8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_23()
{
  v4 = *(v0 + 464);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 32), 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 36), 1, 1, v4);
  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_11_15@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_17_8()
{

  sub_26A1A783C();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return sub_26A20943C();
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return sub_26A209490(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_35_12()
{

  return type metadata accessor for _ProtoSummaryItem_PairNumber(0);
}

void OUTLINED_FUNCTION_47_6(uint64_t a1, uint64_t a2)
{

  sub_26A1043C0(v2, a2, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_49_11()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return type metadata accessor for _ProtoSummaryItem_PairNumber(0);
}

uint64_t OUTLINED_FUNCTION_56_6(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

id sub_26A209B1C(uint64_t a1, uint64_t a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_26A4246B4();
  v24[0] = 0;
  v4 = [v2 propertyListWithData:v3 options:0 format:0 error:v24];

  if (v4)
  {
    v5 = v24[0];
    sub_26A424E64();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
    if (swift_dynamicCast())
    {
      v6 = objc_allocWithZone(MEMORY[0x277D471B0]);
      return sub_26A20A208(v23);
    }

    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v19 = sub_26A424AE4();
    __swift_project_value_buffer(v19, qword_2803A8950);
    v20 = sub_26A424AD4();
    v21 = sub_26A424E04();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26A0B8000, v20, v21, "Dictionary is not a proper plist", v22, 2u);
      OUTLINED_FUNCTION_1_21();
    }
  }

  else
  {
    v8 = v24[0];
    v9 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v10 = sub_26A424AE4();
    __swift_project_value_buffer(v10, qword_2803A8950);
    v11 = v9;
    v12 = sub_26A424AD4();
    v13 = sub_26A424E04();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_26A4254B4();
      v18 = sub_26A0E8788(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26A0B8000, v12, v13, "Failed to deserialize plist data to dictionary: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_26A209E4C()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = [v0 dictionary];
  if (v1)
  {
    v2 = v1;
    v21 = 0;
    v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:&v21];
    v4 = v21;
    if (v3)
    {
      v5 = sub_26A4246D4();

      return v5;
    }

    v12 = v4;
    sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v13 = sub_26A424AE4();
    __swift_project_value_buffer(v13, qword_2803A8950);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_26A424EF4();

    v21 = 0xD000000000000026;
    v22 = 0x800000026A448880;
    swift_getErrorValue();
    v14 = sub_26A4254B4();
    MEMORY[0x26D65BA70](v14);

    v15 = v21;
    v16 = v22;

    v17 = sub_26A424AD4();
    v18 = sub_26A424E14();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_26A0E8788(v15, v16, &v21);
      _os_log_impl(&dword_26A0B8000, v17, v18, "%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v7 = sub_26A424AE4();
    __swift_project_value_buffer(v7, qword_2803A8950);
    v8 = sub_26A424AD4();
    v9 = sub_26A424E14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_26A0E8788(0xD000000000000029, 0x800000026A448850, &v21);
      _os_log_impl(&dword_26A0B8000, v8, v9, "%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }
  }

  result = sub_26A424FC4();
  __break(1u);
  return result;
}

id sub_26A20A208(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26A424B04();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t SummaryItemSwitchV2.switch.getter()
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoSwitch(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v9);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, v24);
  OUTLINED_FUNCTION_54_1();
  v11 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v11, v12, v7);
  if (v13)
  {
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 0;
    *(v2 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v21, v22, v7);
    if (!v13)
    {
      sub_26A0E48F0(v3, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A20DAC8();
  }

  return sub_26A20DAC8();
}

uint64_t SummaryItemSwitchV2.text1.getter()
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v9);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v24);
  OUTLINED_FUNCTION_54_1();
  v11 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v11, v12, v7);
  if (v13)
  {
    *v2 = MEMORY[0x277D84F90];
    *(v2 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v21, v22, v7);
    if (!v13)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20DAC8();
  }

  return sub_26A20DAC8();
}

void sub_26A20A620()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoMultilineTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_9();
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
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v3 = 0;
  }

  type metadata accessor for MultilineTextProperty(0);
  v20 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v20, v3, 1, v21);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitchV2.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_9();
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
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v2 = 0;
  }

  type metadata accessor for TextProperty(0);
  v19 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitchV2.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_9();
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
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v2 = 0;
  }

  type metadata accessor for VisualProperty(0);
  v19 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitchV2.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_9();
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
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitchV2.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemSwitchV2.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_SwitchV2.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v226 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48();
  v12 = OUTLINED_FUNCTION_35(v11);
  v224 = type metadata accessor for _ProtoVisualProperty(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v21 = OUTLINED_FUNCTION_35(v20);
  v221 = type metadata accessor for _ProtoMultilineTextProperty(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  v34 = OUTLINED_FUNCTION_35(v33);
  v222 = type metadata accessor for _ProtoTextProperty(v34);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v41 = OUTLINED_FUNCTION_41(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_48();
  v47 = OUTLINED_FUNCTION_35(v46);
  v48 = type metadata accessor for _ProtoSwitch(v47);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  v52 = v200 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  v54 = OUTLINED_FUNCTION_41(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  v57 = v200 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = v200 - v59;
  OUTLINED_FUNCTION_5_18();
  v61 = v1;
  sub_26A20DC98();
  v62 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  v63 = *(v62 + 20);
  v227 = v3;
  v228 = v63;
  v64 = *(v3 + v63);
  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, &v237);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v48);
  sub_26A0E48F0(v60, &qword_28036D258, &unk_26A4273E0);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_142(*(v61 + *(v62 + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, &v229);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v57, 1, v48);
    if (v66)
    {
      *v52 = 0;
      *(v52 + 1) = 0xE000000000000000;
      v52[16] = 0;
      *(v52 + 24) = xmmword_26A426400;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v67 = v226;
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v226);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v67);
      v74 = OUTLINED_FUNCTION_37(v57, 1, v48);
      v82 = v227;
      v83 = v228;
      if (!v66)
      {
        v74 = sub_26A0E48F0(v57, &qword_28036D258, &unk_26A4273E0);
      }
    }

    else
    {
      v74 = sub_26A20DAC8();
      v82 = v227;
      v83 = v228;
    }

    sub_26A2F1E48(v74, v75, v76, v77, v78, v79, v80, v81, v200[0], v200[1], v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    sub_26A20DB1C(v52, type metadata accessor for _ProtoSwitch);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v82 + v83);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v85 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v85);
      OUTLINED_FUNCTION_24_16();
      v64 = v86;
      *(v82 + v83) = v86;
    }

    OUTLINED_FUNCTION_42_8();
    v87 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v48);
    OUTLINED_FUNCTION_211(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, v236);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v236);
  v90 = v216;
  OUTLINED_FUNCTION_209();
  v91 = v222;
  v92 = __swift_getEnumTagSinglePayload(v90, 1, v222);
  OUTLINED_FUNCTION_162_0(v90);
  if (v92 == 1)
  {
    v93 = v226;
    v94 = v227;
    v95 = v221;
  }

  else
  {
    v96 = v201;
    sub_26A10FD9C();
    v97 = OUTLINED_FUNCTION_50_7();
    OUTLINED_FUNCTION_37(v97, v98, v91);
    v94 = v227;
    v95 = v221;
    if (v66)
    {
      OUTLINED_FUNCTION_56_7(MEMORY[0x277D84F90]);
      v99 = OUTLINED_FUNCTION_44_0(*(v91 + 32));
      v93 = v226;
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v226);
      v102 = OUTLINED_FUNCTION_44_0(*(v91 + 36));
      __swift_storeEnumTagSinglePayload(v102, v103, v104, v93);
      v105 = OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_37(v105, v106, v91);
      v107 = v228;
      if (!v66)
      {
        sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7();
      v93 = v226;
      v107 = v228;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_12();
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v94 + v107);
    if ((v108 & 1) == 0)
    {
      v109 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v109);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v110);
    }

    OUTLINED_FUNCTION_42_8();
    v111 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v91);
    OUTLINED_FUNCTION_211(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v235);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v235);
  v114 = v217;
  OUTLINED_FUNCTION_209();
  v115 = v95;
  v116 = __swift_getEnumTagSinglePayload(v114, 1, v95);
  OUTLINED_FUNCTION_162_0(v114);
  if (v116 == 1)
  {
    v117 = v93;
  }

  else
  {
    v118 = v204;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v118);
    v119 = v228;
    if (v66)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v120 = OUTLINED_FUNCTION_44_0(*(v115 + 32));
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v93);
      v123 = OUTLINED_FUNCTION_44_0(*(v115 + 36));
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v93);
      OUTLINED_FUNCTION_48_0(v118);
      if (!v66)
      {
        sub_26A0E48F0(v118, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_20_15();
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v94 + v119);
    if ((v126 & 1) == 0)
    {
      v127 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v127);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v128);
    }

    v117 = v93;
    OUTLINED_FUNCTION_42_8();
    v129 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v115);
    OUTLINED_FUNCTION_211(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v234);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v234);
  v132 = v218;
  OUTLINED_FUNCTION_209();
  v133 = __swift_getEnumTagSinglePayload(v132, 1, v115);
  OUTLINED_FUNCTION_162_0(v132);
  if (v133 == 1)
  {
    v134 = v117;
  }

  else
  {
    v135 = v207;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v135);
    v136 = v228;
    if (v66)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v137 = OUTLINED_FUNCTION_44_0(*(v115 + 32));
      v134 = v117;
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v117);
      v140 = OUTLINED_FUNCTION_44_0(*(v115 + 36));
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v117);
      OUTLINED_FUNCTION_48_0(v135);
      if (!v66)
      {
        sub_26A0E48F0(v135, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7();
      v134 = v117;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_20_15();
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v94 + v136);
    if ((v143 & 1) == 0)
    {
      v144 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v144);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v145);
    }

    v146 = v220;
    sub_26A20DAC8();
    __swift_storeEnumTagSinglePayload(v146, 0, 1, v115);
    OUTLINED_FUNCTION_211(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v233);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v233);
  v147 = v219;
  OUTLINED_FUNCTION_209();
  v148 = OUTLINED_FUNCTION_50_7();
  v150 = __swift_getEnumTagSinglePayload(v148, v149, v91);
  OUTLINED_FUNCTION_162_0(v147);
  if (v150 == 1)
  {
    v151 = v224;
  }

  else
  {
    v152 = v210;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v152, 1, v91);
    v153 = v228;
    v151 = v224;
    if (v66)
    {
      OUTLINED_FUNCTION_56_7(MEMORY[0x277D84F90]);
      v154 = OUTLINED_FUNCTION_44_0(*(v91 + 32));
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v134);
      v157 = OUTLINED_FUNCTION_44_0(*(v91 + 36));
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v134);
      OUTLINED_FUNCTION_37(v152, 1, v91);
      if (!v66)
      {
        sub_26A0E48F0(v152, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_12();
    v160 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v94 + v153);
    if ((v160 & 1) == 0)
    {
      v161 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v161);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v162);
    }

    OUTLINED_FUNCTION_42_8();
    v163 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v91);
    OUTLINED_FUNCTION_211(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v232);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v232);
  v166 = v223;
  OUTLINED_FUNCTION_209();
  v167 = __swift_getEnumTagSinglePayload(v166, 1, v151);
  OUTLINED_FUNCTION_162_0(v166);
  if (v167 != 1)
  {
    v168 = v211;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v168);
    v169 = v228;
    if (v66)
    {
      v64 = v212;
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v170 = OUTLINED_FUNCTION_44_0(*(v151 + 32));
      __swift_storeEnumTagSinglePayload(v170, v171, v172, v134);
      v173 = OUTLINED_FUNCTION_44_0(*(v151 + 36));
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v134);
      OUTLINED_FUNCTION_48_0(v168);
      if (!v66)
      {
        sub_26A0E48F0(v168, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A20DB1C(v64, type metadata accessor for _ProtoVisualProperty);
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v94 + v169);
    if ((v176 & 1) == 0)
    {
      v177 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v177);
      OUTLINED_FUNCTION_24_16();
      v64 = v178;
      *(v94 + v169) = v178;
    }

    OUTLINED_FUNCTION_42_8();
    v179 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v151);
    OUTLINED_FUNCTION_211(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v231);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v64 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v231);
  v182 = v225;
  OUTLINED_FUNCTION_209();
  v183 = OUTLINED_FUNCTION_50_7();
  v185 = __swift_getEnumTagSinglePayload(v183, v184, v134);
  OUTLINED_FUNCTION_162_0(v182);
  if (v185 != 1)
  {
    v186 = v213;
    sub_26A10FD9C();
    v187 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v187, v188, v134);
    v189 = v228;
    if (v66)
    {
      v64 = v214;
      *v214 = MEMORY[0x277D84F90];
      *(v64 + 8) = 0;
      *(v64 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v190 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v190, v191, v134);
      v192 = v215;
      if (!v66)
      {
        sub_26A0E48F0(v186, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7();
      v192 = v215;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v192);
    sub_26A20DB1C(v64, type metadata accessor for _ProtoActionProperty);
    v193 = swift_isUniquelyReferenced_nonNull_native();
    v194 = *(v94 + v189);
    if ((v193 & 1) == 0)
    {
      v195 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v195);
      sub_26A1BEAEC();
      v194 = v196;
      *(v94 + v189) = v196;
    }

    OUTLINED_FUNCTION_42_8();
    v197 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v134);
    OUTLINED_FUNCTION_211(v194 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v230);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitchV2.init(switch:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  sub_26A20DB74(&qword_28036EE58, type metadata accessor for _ProtoSummaryItem_SwitchV2, &protocol conformance descriptor for _ProtoSummaryItem_SwitchV2);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return sub_26A20DB1C(a1, type metadata accessor for Switch);
}

uint64_t sub_26A20C218(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v99 = a7;
  v100 = a8;
  v96 = a6;
  v91 = a5;
  v93 = a4;
  v13 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v15 - 8);
  v102 = &v79 - v16;
  v101 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v101);
  v86 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v79 - v19;
  v20 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v20 - 8);
  v89 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = &v79 - v23;
  v97 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v97);
  v84 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v85 = &v79 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v27 - 8);
  v95 = &v79 - v28;
  v29 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v29 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v30 - 8);
  v92 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v79 - v33;
  v35 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v35);
  v81 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v88 = &v79 - v38;
  MEMORY[0x28223BE20](v39);
  v80 = &v79 - v40;
  v94 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v94);
  v83 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v79 - v43;
  v45 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v45 - 8);
  v46 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v46 - 8);
  sub_26A20DC98();
  _ProtoSummaryItem_SwitchV2.switch.setter();
  v47 = a3;
  v48 = a3[3];
  v49 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v48);
  (*(v49 + 8))(v48, v49);
  sub_26A20DAC8();
  v82 = v44;
  _ProtoSummaryItem_SwitchV2.text1.setter();
  sub_26A10FD9C();
  v50 = v104;
  if (v104)
  {
    v51 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v51 + 8))(v50, v51);
    sub_26A20DAC8();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
    {
      v52 = v80;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.text2.setter();
      sub_26A20DB1C(v52, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
  }

  sub_26A0E48F0(v34, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  sub_26A10FD9C();
  v53 = v104;
  if (v104)
  {
    v54 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v54 + 8))(v53, v54);
    v55 = v92;
    sub_26A20DAC8();
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v55, 1, v35) != 1)
    {
      v56 = v81;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.text3.setter();
      sub_26A20DB1C(v56, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB10, &unk_26A426460);
    v55 = v92;
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v35);
  }

  sub_26A0E48F0(v55, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v57 = v104;
  if (v104)
  {
    v58 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v58 + 8))(v57, v58);
    v59 = v95;
    sub_26A20DAC8();
    v60 = v94;
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60) != 1)
    {
      v61 = v83;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.text4.setter();
      sub_26A20DB1C(v61, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB08, &unk_26A428720);
    v59 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v94);
  }

  sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v62 = v104;
  if (v104)
  {
    v63 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v63 + 8))(v62, v63);
    v64 = v98;
    sub_26A20DAC8();
    v65 = v97;
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v97);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) != 1)
    {
      v66 = v85;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.thumbnail.setter();
      sub_26A20DB1C(v66, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB00, &unk_26A426450);
    v64 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v97);
  }

  sub_26A0E48F0(v64, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v67 = v104;
  if (v104)
  {
    v68 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v68 + 8))(v67, v68);
    v69 = v102;
    sub_26A20DAC8();
    v70 = v101;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v101);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v69, 1, v70) != 1)
    {
      v71 = v87;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.action.setter();
      sub_26A20DB1C(v71, type metadata accessor for _ProtoActionProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CAF8, &unk_26A426D30);
    v69 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v101);
  }

  sub_26A0E48F0(v69, &off_28036C7C0, &off_26A427400);
LABEL_26:

  result = _ProtoSummaryItem_SwitchV2.componentName.setter(a9, a10, v72, v73, v74);
  if (a12)
  {

    return _ProtoSummaryItem_SwitchV2.linkIdentifier.setter(a11, a12, v76, v77, v78);
  }

  return result;
}

Swift::String __swiftcall SummaryItemSwitchV2.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v105 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v112 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v111 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v105 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v109 = &v105 - v17;
  v107 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v106 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v110 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  v108 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v26);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = &v105 - v28;
  v30 = type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_41(v35);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_36_2();
  v38 = type metadata accessor for SummaryItemSwitchV2(v37);
  v39 = OUTLINED_FUNCTION_41(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v40);
  v42 = &v105 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF40, &qword_26A42E9B0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v44);
  v46 = &v105 - v45;
  OUTLINED_FUNCTION_15_15();
  sub_26A20DC98();
  if (v4)
  {
    _ProtoSummaryItem_SwitchV2.redactedProto.getter();
  }

  else
  {
    sub_26A20DC98();
  }

  sub_26A20DAC8();
  v46[*(v43 + 32)] = v4 & 1;
  sub_26A20DB1C(v42, type metadata accessor for SummaryItemSwitchV2);
  v47 = MEMORY[0x277D84F90];
  *&v46[*(v43 + 28)] = MEMORY[0x277D84F90];
  v48 = *&v46[*(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20)];
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, &v114);
  sub_26A10FD9C();
  v49 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v49, v50, v30);
  if (v51)
  {
    *v34 = 0;
    *(v34 + 8) = 0xE000000000000000;
    *(v34 + 16) = 0;
    *(v34 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v52 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v52);
    v59 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v59, v60, v30);
    v61 = v106;
    if (!v51)
    {
      sub_26A0E48F0(v29, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A20DAC8();
    v61 = v106;
  }

  sub_26A20DAC8();
  type metadata accessor for Switch(0);
  v62 = OUTLINED_FUNCTION_95_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  sub_26A106E48(v2, 0x686374697773, 0xE600000000000000);
  sub_26A0E48F0(v2, &qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v113);
  v66 = v109;
  sub_26A10FD9C();
  v67 = v107;
  OUTLINED_FUNCTION_37(v66, 1, v107);
  if (v51)
  {
    *v61 = v47;
    *(v61 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v68 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v68);
    OUTLINED_FUNCTION_37(v66, 1, v67);
    if (!v51)
    {
      sub_26A0E48F0(v66, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20DAC8();
  }

  v75 = v108;
  sub_26A20DAC8();
  type metadata accessor for TextProperty(0);
  v76 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
  OUTLINED_FUNCTION_222();
  sub_26A106DF8(v75, v78 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v75);
  SummaryItemSwitchV2.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106E20(v14, v79 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  sub_26A0E48F0(v14, &qword_28036CB28, &qword_26A427980);
  SummaryItemSwitchV2.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106E20(v14, v80 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v14, &qword_28036CB28, &qword_26A427980);
  v81 = v110;
  SummaryItemSwitchV2.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106DF8(v81, v82 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v81);
  v83 = v111;
  SummaryItemSwitchV2.thumbnail.getter();
  sub_26A106DD0(v83, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v83, &qword_28036CB20, &unk_26A426470);
  v84 = v112;
  SummaryItemSwitchV2.action.getter();
  sub_26A106CCC();
  sub_26A0E48F0(v84, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7B88(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v86, v87, v88, v89, v105, v106);

  v90 = swift_getKeyPath();
  sub_26A0F851C(v90, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v91, v92, v93, v94, v105, v106);

  sub_26A0FDB28(v95, v96, v97, v98, v99, v100, v101);
  sub_26A0E48F0(v46, &qword_28036CF40, &qword_26A42E9B0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v103;
  result._countAndFlagsBits = v102;
  return result;
}

uint64_t SummaryItemSwitchV2.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
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
  OUTLINED_FUNCTION_5_18();
  sub_26A20DC98();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_16_13();
  sub_26A20DAC8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SummaryItemSwitchV2.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemSwitchV2(0);
  *(inited + 64) = &protocol witness table for SummaryItemSwitchV2;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_15_15();
  sub_26A20DC98();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A20DB74(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemSwitchV2(uint64_t a1)
{
  result = qword_28036FB58;
  if (!qword_28036FB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A20DAC8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A20DB1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A20DB74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A20DC2C(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_SwitchV2(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A20DC98()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
}

uint64_t OUTLINED_FUNCTION_20_15()
{

  return sub_26A20DB1C(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_26A20DB1C(v0, type metadata accessor for _ProtoTextProperty);
}

void OUTLINED_FUNCTION_24_16()
{

  sub_26A1BEAEC();
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return sub_26A20DAC8();
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return sub_26A20DAC8();
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
}

uint64_t OUTLINED_FUNCTION_56_7@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_57_7()
{

  return sub_26A20DAC8();
}

uint64_t sub_26A20DEEC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A20DFB8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  a1(v7);
  OUTLINED_FUNCTION_32_2();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v2);
  if (!v8)
  {
    return sub_26A20DEEC();
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v9 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  result = OUTLINED_FUNCTION_23(v2);
  if (!v8)
  {
    return sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t sub_26A20E12C(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_48_11();
  v5 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_37(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v8, v9, &qword_26A432940);
  return v7;
}

uint64_t sub_26A20E1FC@<X0>(void (*a1)(uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  a1(v7);
  OUTLINED_FUNCTION_32_2();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_23(v2);
  if (!v8)
  {
    return sub_26A20DEEC();
  }

  *a2 = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v2);
  if (!v8)
  {
    return sub_26A0E48F0(v2, &qword_28036D198, &qword_26A432940);
  }

  return result;
}

uint64_t sub_26A20E310(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_48_11();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_37(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v8, v9, &off_26A427400);
  return v7;
}

uint64_t sub_26A20E3E0@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  a1(v7);
  OUTLINED_FUNCTION_32_2();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v2);
  if (!v8)
  {
    return sub_26A20DEEC();
  }

  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v2);
  if (!v8)
  {
    return sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A20E504()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 24), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_32_10();
  sub_26A20DEEC();
  type metadata accessor for _ProtoTextProperty(0);
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20E594()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 28), &qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_30_7();
  sub_26A20DEEC();
  type metadata accessor for _ProtoOptionalBool(0);
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20E624()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 32), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_39_10();
  sub_26A20DEEC();
  type metadata accessor for _ProtoActionProperty(0);
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20E6B4(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_48_11();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v8, v9, &unk_26A425BF0);
  return v7;
}

void _ProtoStatusIndicator_Success.text.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_28_9(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_2_17(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Success(v11);
  OUTLINED_FUNCTION_15_16(v12);
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoStatusIndicator_Success.showIndicator.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoOptionalBool(v6);
  OUTLINED_FUNCTION_1_24(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoStatusIndicator_Success(v12);
  OUTLINED_FUNCTION_12_13(*(v13 + 28));
  v14 = OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8(v14);
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A0E48F0(v0, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A20EA6C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_26A20ECD4();
    sub_26A0E48F0(v12 + v8, a3, a4);
    sub_26A20DEEC();
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_12_2();
    sub_26A20ED28();
  }

  else
  {
    sub_26A0E48F0(v12 + v8, a3, a4);
    sub_26A20DEEC();
    OUTLINED_FUNCTION_69_5();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

void _ProtoStatusIndicator_Success.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_1_24(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoStatusIndicator_Success(v12);
  OUTLINED_FUNCTION_12_13(*(v13 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A20ECD4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A20ED28()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _ProtoStatusIndicator_Success.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoStatusIndicator_Success(v0);
  return OUTLINED_FUNCTION_51_5();
}