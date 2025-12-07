uint64_t _ProtoResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  type metadata accessor for _ProtoResponse(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t static _ProtoResponse.LevelOfDetail.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_280372D50 = a1;
}

uint64_t (*static _ProtoResponse.LevelOfDetail.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A355940@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoResponse.LevelOfDetail.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t _ProtoIntentsUI_Standard.interaction.getter()
{
  v0 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v0, v1);
  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoIntentsUI_Standard.interaction.setter()
{
  OUTLINED_FUNCTION_60_5();
  result = sub_26A0E4784(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t _ProtoIntentsUI_Standard.componentName.setter()
{
  OUTLINED_FUNCTION_60_5();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void _ProtoIntentsUI_Standard.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  *(v0 + 16) = type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v0 + 32) = v8;
  v9 = *(type metadata accessor for _ProtoIntentsUI_Standard(0) + 36);
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_176(v9);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_4_11();
  if (v10)
  {
    *v8 = MEMORY[0x277D84F90];
    v8[1] = 0;
    v8[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v10)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A34552C();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A355BFC()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108();
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A37623C();
    sub_26A13440C();
    OUTLINED_FUNCTION_29_20();
    sub_26A34552C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
    sub_26A3761EC();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_29_20();
    sub_26A34552C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v11);
}

Swift::Void __swiftcall _ProtoIntentsUI_Standard.clearAction()()
{
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  sub_26A13440C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_26A355D80()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_57_5();

  return v3(v2);
}

uint64_t sub_26A355E08()
{
  v0 = OUTLINED_FUNCTION_110();
  v1(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_219_0();

  return v3(v2);
}

uint64_t _ProtoIntentsUI_Standard.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoIntentsUI_Standard(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_124_2();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_142(v5 + 16, v3);
  v3[6] = *(v5 + 16);

  return OUTLINED_FUNCTION_133();
}

void sub_26A355F60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_133_3();
      v10 = OUTLINED_FUNCTION_5_3();
      v7 = sub_26A375664(v10);
      *(v9 + v8) = v7;
    }

    swift_beginAccess();
    *(v7 + 16) = v3;
  }

  free(v2);
}

void _ProtoIntentsUI_Standard.Slot.fallback.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v3[6] = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_124_2();
  OUTLINED_FUNCTION_142(*(v0 + v10) + OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback, v3);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v11)
  {
    type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    type metadata accessor for _ProtoSeparators(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v11)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A34552C();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A3561D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A37623C();
    _ProtoIntentsUI_Standard.Slot.fallback.setter();
    sub_26A3761EC();
  }

  else
  {
    _ProtoIntentsUI_Standard.Slot.fallback.setter();
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t _ProtoIntentsUI_Standard.Slot.hasFallback.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = *(v0 + *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(v5) + 20));
  OUTLINED_FUNCTION_142(v6 + OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback, v11);
  sub_26A10FD9C();
  type metadata accessor for _ProtoResponse.Component(0);
  v7 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  OUTLINED_FUNCTION_125_4();
  return v6;
}

Swift::Void __swiftcall _ProtoIntentsUI_Standard.Slot.clearFallback()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_62_3();
  v3 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_133_3();
    v4 = OUTLINED_FUNCTION_5_3();
    *(v0 + v3) = sub_26A375664(v4);
  }

  type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoIntentsUI_Standard.Slot.unknownFields.getter()
{
  OUTLINED_FUNCTION_26_13();
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_175();

  return v1(v0);
}

uint64_t _ProtoIntentsUI_Standard.Slot.unknownFields.setter()
{
  OUTLINED_FUNCTION_110();
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_246();

  return v1(v0);
}

uint64_t _ProtoIntentsUI_Standard.Slot.init()@<X0>(uint64_t a2@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) + 20);
  if (qword_28036C670 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_280372E40;
}

uint64_t sub_26A35659C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372D58);
  __swift_project_value_buffer(v0, qword_280372D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42B080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "hide_redacted_elements";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "sections";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "backgrounds";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "ornaments";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "groups";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "ace_commands";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 4:
        v16 = OUTLINED_FUNCTION_5_6();
        sub_26A3569AC(v16, v17, v18, v19);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A374CE0(v7, v8, v9, v10, v11);
        break;
      case 6:
        v12 = OUTLINED_FUNCTION_5_6();
        sub_26A356A4C(v12, v13, v14, v15);
        break;
      case 7:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A356AEC(v3, v4, v5, v6);
        break;
      case 8:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248A4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3569AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A37650C();
  return sub_26A424934();
}

uint64_t sub_26A356A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoOrnamentElement(0);
  sub_26A37650C();
  return sub_26A424934();
}

uint64_t sub_26A356AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoResponse.Group(0);
  sub_26A37650C();
  return sub_26A424934();
}

uint64_t _ProtoResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v1))
  {
    if (!*(v2[1] + 16) || (type metadata accessor for _ProtoResponse.Section(0), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
    {
      OUTLINED_FUNCTION_147_5();
      if (!v4 || (type metadata accessor for _ProtoBackgroundElement(0), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
      {
        if (!*(v2[3] + 16) || (type metadata accessor for _ProtoOrnamentElement(0), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
        {
          if (!*(v2[4] + 16) || (type metadata accessor for _ProtoResponse.Group(0), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
          {
            if (!*(v2[5] + 16) || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A424A04(), !v1))
            {
              type metadata accessor for _ProtoResponse(0);
              return OUTLINED_FUNCTION_19_6();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A356F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A37650C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A356FE0(uint64_t a1)
{
  v2 = sub_26A37650C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A357050(uint64_t a1, uint64_t a2)
{
  sub_26A37650C();

  return sub_26A4249B4();
}

uint64_t sub_26A3570D0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372D70);
  __swift_project_value_buffer(v0, qword_280372D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CONTENT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CAPTION";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A357304()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372D98);
  __swift_project_value_buffer(v0, qword_280372D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "component_list";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "level_of_detail";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "idioms";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_hidden_on_idioms";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoResponse.Section.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A357618(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A3576B8(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A357720(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A357618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoResponse.Component(0);
  sub_26A37650C();
  return sub_26A424934();
}

uint64_t _ProtoResponse.Section.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoResponse.Component(0), OUTLINED_FUNCTION_72_7(), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (sub_26A376550(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249D4(), !v1))
    {
      OUTLINED_FUNCTION_147_5();
      if (!v4 || (sub_26A11EF50(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249D4(), !v1))
      {
        if (*(v2 + 24) != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v1))
        {
          type metadata accessor for _ProtoResponse.Section(0);
          return OUTLINED_FUNCTION_19_6();
        }
      }
    }
  }

  return result;
}

uint64_t static _ProtoResponse.Section.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  sub_26A0D887C(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_26A0DF1D4(*(v1 + 8), *(v0 + 8));
  if ((v5 & 1) == 0 || (sub_26A0DB6A0(*(v1 + 16), *(v0 + 16)) & 1) == 0 || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A424794();
  OUTLINED_FUNCTION_1_55();
  sub_26A37650C();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A3579F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A37650C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A357A78(uint64_t a1)
{
  v2 = sub_26A37650C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A357AE8(uint64_t a1, uint64_t a2)
{
  sub_26A37650C();

  return sub_26A4249B4();
}

uint64_t sub_26A357BA8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372DC0);
  __swift_project_value_buffer(v0, qword_280372DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "components";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoResponse.Group.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A374CE0(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoResponse.Group.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_84_0();
  if (!v1 || (OUTLINED_FUNCTION_20_4(), result = sub_26A424A64(), !v0))
  {
    OUTLINED_FUNCTION_147_5();
    if (!v3 || (type metadata accessor for _ProtoResponse.Component(0), OUTLINED_FUNCTION_72_7(), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v0))
    {
      type metadata accessor for _ProtoResponse.Group(0);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t static _ProtoResponse.Group.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  sub_26A0D887C(*(v1 + 16), v0[2]);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoResponse.Group(0);
  sub_26A424794();
  OUTLINED_FUNCTION_1_55();
  sub_26A37650C();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A358044(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A37650C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3580C4(uint64_t a1)
{
  v2 = sub_26A37650C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A358134(uint64_t a1, uint64_t a2)
{
  sub_26A37650C();

  return sub_26A4249B4();
}

uint64_t sub_26A3581DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000012;
  *a5 = 0x800000026A44A670;
  return result;
}

uint64_t sub_26A358268()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372DE8);
  __swift_project_value_buffer(v0, qword_280372DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_26A43F7E0;
  v4 = v128 + v3 + v1[14];
  *(v128 + v3) = 1;
  *v4 = "custom_canvas";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v128 + v3 + v2 + v1[14];
  *(v128 + v3 + v2) = 2;
  *v8 = "fact_item_standard";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v128 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "fact_item_short_number";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v128 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "fact_item_hero_number";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v128 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "summary_item_standard";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v128 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "summary_item_short_number";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v128 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "summary_item_text";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v128 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "summary_item_large_text";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v7();
  v21 = (v128 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "summary_item_detailed_text";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v7();
  v23 = (v128 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "simple_item_standard";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v7();
  v25 = (v128 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "simple_item_rich";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v128 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "simple_item_visual";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v128 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "primary_header_standard";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v128 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "primary_header_marquee";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v7();
  v33 = (v128 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "primary_header_rich";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v7();
  v35 = (v128 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "secondary_header_standard";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v7();
  v37 = (v128 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "button";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v128 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "binary_button";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v128 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "status_indicator_success";
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  v43 = (v128 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "status_indicator_error";
  *(v44 + 1) = 22;
  v44[16] = 2;
  v7();
  v45 = (v128 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "status_indicator_in_progress";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v7();
  v47 = (v128 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "status_indicator_cancelled";
  *(v48 + 1) = 26;
  v48[16] = 2;
  v7();
  v49 = (v128 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "text_input";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  v51 = (v128 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "control_switch";
  *(v52 + 1) = 14;
  v52[16] = 2;
  v7();
  v53 = (v128 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "control_slider";
  *(v54 + 1) = 14;
  v54[16] = 2;
  v7();
  v55 = (v128 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 60;
  *v56 = "control_player_button";
  *(v56 + 1) = 21;
  v56[16] = 2;
  v7();
  v57 = (v128 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "group_id";
  *(v58 + 1) = 8;
  v58[16] = 2;
  v7();
  v59 = (v128 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "reference_standard";
  *(v60 + 1) = 18;
  v60[16] = 2;
  v7();
  v61 = (v128 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "reference_logo";
  *(v62 + 1) = 14;
  v62[16] = 2;
  v7();
  v63 = (v128 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "reference_rich";
  *(v64 + 1) = 14;
  v64[16] = 2;
  v7();
  v65 = (v128 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "reference_button";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v128 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "summary_item_pair";
  *(v68 + 1) = 17;
  v68[16] = 2;
  v7();
  v69 = (v128 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 59;
  *v70 = "summary_item_pair_v2";
  *(v70 + 1) = 20;
  v70[16] = 2;
  v7();
  v71 = (v128 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 32;
  *v72 = "summary_item_pair_number";
  *(v72 + 1) = 24;
  v72[16] = 2;
  v7();
  v73 = (v128 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 58;
  *v74 = "summary_item_pair_number_v2";
  *(v74 + 1) = 27;
  v74[16] = 2;
  v7();
  v75 = (v128 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 33;
  *v76 = "summary_item_button";
  *(v76 + 1) = 19;
  v76[16] = 2;
  v7();
  v77 = (v128 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 34;
  *v78 = "fact_item_button";
  *(v78 + 1) = 16;
  v78[16] = 2;
  v7();
  v79 = (v128 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 35;
  *v80 = "table";
  *(v80 + 1) = 5;
  v80[16] = 2;
  v7();
  v81 = (v128 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 36;
  *v82 = "reference_footnote";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v7();
  v83 = (v128 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 37;
  *v84 = "long_item_text";
  *(v84 + 1) = 14;
  v84[16] = 2;
  v7();
  v85 = (v128 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 38;
  *v86 = "visualization_chart";
  *(v86 + 1) = 19;
  v86[16] = 2;
  v7();
  v87 = (v128 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 39;
  *v88 = "summary_item_player";
  *(v88 + 1) = 19;
  v88[16] = 2;
  v7();
  v89 = (v128 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 40;
  *v90 = "simple_item_player";
  *(v90 + 1) = 18;
  v90[16] = 2;
  v7();
  v91 = (v128 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 41;
  *v92 = "simple_item_reverse_rich";
  *(v92 + 1) = 24;
  v92[16] = 2;
  v7();
  v93 = (v128 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 42;
  *v94 = "secondary_header_emphasized";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v7();
  v95 = (v128 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 43;
  *v96 = "summary_item_switch";
  *(v96 + 1) = 19;
  v96[16] = 2;
  v7();
  v97 = (v128 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 44;
  *v98 = "system_text_clarification_title";
  *(v98 + 1) = 31;
  v98[16] = 2;
  v7();
  v99 = (v128 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 45;
  *v100 = "visualization_image";
  *(v100 + 1) = 19;
  v100[16] = 2;
  v7();
  v101 = (v128 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 46;
  *v102 = "visualization_map";
  *(v102 + 1) = 17;
  v102[16] = 2;
  v7();
  v103 = (v128 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 47;
  *v104 = "button_container";
  *(v104 + 1) = 16;
  v104[16] = 2;
  v7();
  v105 = (v128 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 48;
  *v106 = "intentsUI_standard";
  *(v106 + 1) = 18;
  v106[16] = 2;
  v7();
  v107 = (v128 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 49;
  *v108 = "sash_standard";
  *(v108 + 1) = 13;
  v108[16] = 2;
  v7();
  v109 = (v128 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 50;
  *v110 = "hero_header";
  *(v110 + 1) = 11;
  v110[16] = 2;
  v7();
  v111 = (v128 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 51;
  *v112 = "horizontal_list_standard";
  *(v112 + 1) = 24;
  v112[16] = 2;
  v7();
  v113 = (v128 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 52;
  *v114 = "section_header_standard";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v7();
  v115 = (v128 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 53;
  *v116 = "section_header_rich";
  *(v116 + 1) = 19;
  v116[16] = 2;
  v7();
  v117 = (v128 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 54;
  *v118 = "key_value_standard";
  *(v118 + 1) = 18;
  v118[16] = 2;
  v7();
  v119 = (v128 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 55;
  *v120 = "tertiary_header_standard";
  *(v120 + 1) = 24;
  v120[16] = 2;
  v7();
  v121 = (v128 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 56;
  *v122 = "simple_item_rich_search_result";
  *(v122 + 1) = 30;
  v122[16] = 2;
  v7();
  v123 = (v128 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 61;
  *v124 = "summary_item_switch_v2";
  *(v124 + 1) = 22;
  v124[16] = 2;
  v7();
  v125 = (v128 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 57;
  *v126 = "separators";
  *(v126 + 1) = 10;
  v126[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoResponse.Component.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A3596C4(v3, v4, v5, v6);
        break;
      case 2:
        v123 = OUTLINED_FUNCTION_10_3();
        sub_26A359BBC(v123, v124, v125, v126);
        break;
      case 3:
        v107 = OUTLINED_FUNCTION_10_3();
        sub_26A35A0B4(v107, v108, v109, v110);
        break;
      case 4:
        v115 = OUTLINED_FUNCTION_10_3();
        sub_26A35A5AC(v115, v116, v117, v118);
        break;
      case 5:
        v79 = OUTLINED_FUNCTION_10_3();
        sub_26A35AAA4(v79, v80, v81, v82);
        break;
      case 6:
        v143 = OUTLINED_FUNCTION_10_3();
        sub_26A35AF9C(v143, v144, v145, v146);
        break;
      case 7:
        v155 = OUTLINED_FUNCTION_10_3();
        sub_26A35B494(v155, v156, v157, v158);
        break;
      case 8:
        v119 = OUTLINED_FUNCTION_10_3();
        sub_26A35B98C(v119, v120, v121, v122);
        break;
      case 9:
        v167 = OUTLINED_FUNCTION_10_3();
        sub_26A35BE84(v167, v168, v169, v170);
        break;
      case 10:
        v95 = OUTLINED_FUNCTION_10_3();
        sub_26A35C37C(v95, v96, v97, v98);
        break;
      case 11:
        v163 = OUTLINED_FUNCTION_10_3();
        sub_26A35C874(v163, v164, v165, v166);
        break;
      case 12:
        v71 = OUTLINED_FUNCTION_10_3();
        sub_26A35CD6C(v71, v72, v73, v74);
        break;
      case 13:
        v91 = OUTLINED_FUNCTION_10_3();
        sub_26A35D264(v91, v92, v93, v94);
        break;
      case 14:
        v151 = OUTLINED_FUNCTION_10_3();
        sub_26A35D75C(v151, v152, v153, v154);
        break;
      case 15:
        v55 = OUTLINED_FUNCTION_10_3();
        sub_26A35DC54(v55, v56, v57, v58);
        break;
      case 16:
        v111 = OUTLINED_FUNCTION_10_3();
        sub_26A35E14C(v111, v112, v113, v114);
        break;
      case 17:
        v47 = OUTLINED_FUNCTION_10_3();
        sub_26A35E644(v47, v48, v49, v50);
        break;
      case 18:
        v131 = OUTLINED_FUNCTION_10_3();
        sub_26A35EB3C(v131, v132, v133, v134);
        break;
      case 19:
        v159 = OUTLINED_FUNCTION_10_3();
        sub_26A35F034(v159, v160, v161, v162);
        break;
      case 20:
        v191 = OUTLINED_FUNCTION_10_3();
        sub_26A35F52C(v191, v192, v193, v194);
        break;
      case 21:
        v139 = OUTLINED_FUNCTION_10_3();
        sub_26A35FA24(v139, v140, v141, v142);
        break;
      case 22:
        v147 = OUTLINED_FUNCTION_10_3();
        sub_26A35FF1C(v147, v148, v149, v150);
        break;
      case 23:
        v183 = OUTLINED_FUNCTION_10_3();
        sub_26A360414(v183, v184, v185, v186);
        break;
      case 24:
        v207 = OUTLINED_FUNCTION_10_3();
        sub_26A36090C(v207, v208, v209, v210);
        break;
      case 25:
        v103 = OUTLINED_FUNCTION_10_3();
        sub_26A360E04(v103, v104, v105, v106);
        break;
      case 26:
        v99 = OUTLINED_FUNCTION_5_6();
        sub_26A3612FC(v99, v100, v101, v102);
        break;
      case 27:
        v223 = OUTLINED_FUNCTION_10_3();
        sub_26A3614A0(v223, v224, v225, v226);
        break;
      case 28:
        v39 = OUTLINED_FUNCTION_10_3();
        sub_26A361998(v39, v40, v41, v42);
        break;
      case 29:
        v211 = OUTLINED_FUNCTION_10_3();
        sub_26A361E90(v211, v212, v213, v214);
        break;
      case 30:
        v215 = OUTLINED_FUNCTION_10_3();
        sub_26A362388(v215, v216, v217, v218);
        break;
      case 31:
        v171 = OUTLINED_FUNCTION_10_3();
        sub_26A362880(v171, v172, v173, v174);
        break;
      case 32:
        v127 = OUTLINED_FUNCTION_10_3();
        sub_26A362D78(v127, v128, v129, v130);
        break;
      case 33:
        v175 = OUTLINED_FUNCTION_10_3();
        sub_26A363270(v175, v176, v177, v178);
        break;
      case 34:
        v59 = OUTLINED_FUNCTION_10_3();
        sub_26A363768(v59, v60, v61, v62);
        break;
      case 35:
        v43 = OUTLINED_FUNCTION_10_3();
        sub_26A363C60(v43, v44, v45, v46);
        break;
      case 36:
        v31 = OUTLINED_FUNCTION_10_3();
        sub_26A364158(v31, v32, v33, v34);
        break;
      case 37:
        v35 = OUTLINED_FUNCTION_10_3();
        sub_26A364650(v35, v36, v37, v38);
        break;
      case 38:
        v15 = OUTLINED_FUNCTION_10_3();
        sub_26A364B48(v15, v16, v17, v18);
        break;
      case 39:
        v219 = OUTLINED_FUNCTION_10_3();
        sub_26A365040(v219, v220, v221, v222);
        break;
      case 40:
        v187 = OUTLINED_FUNCTION_10_3();
        sub_26A365538(v187, v188, v189, v190);
        break;
      case 41:
        v83 = OUTLINED_FUNCTION_10_3();
        sub_26A365A30(v83, v84, v85, v86);
        break;
      case 42:
        v135 = OUTLINED_FUNCTION_10_3();
        sub_26A365F28(v135, v136, v137, v138);
        break;
      case 43:
        v199 = OUTLINED_FUNCTION_10_3();
        sub_26A366420(v199, v200, v201, v202);
        break;
      case 44:
        v11 = OUTLINED_FUNCTION_10_3();
        sub_26A366918(v11, v12, v13, v14);
        break;
      case 45:
        v51 = OUTLINED_FUNCTION_10_3();
        sub_26A366E10(v51, v52, v53, v54);
        break;
      case 46:
        v179 = OUTLINED_FUNCTION_10_3();
        sub_26A367308(v179, v180, v181, v182);
        break;
      case 47:
        v239 = OUTLINED_FUNCTION_10_3();
        sub_26A367800(v239, v240, v241, v242);
        break;
      case 48:
        v23 = OUTLINED_FUNCTION_10_3();
        sub_26A367CF8(v23, v24, v25, v26);
        break;
      case 49:
        v63 = OUTLINED_FUNCTION_10_3();
        sub_26A3681F0(v63, v64, v65, v66);
        break;
      case 50:
        v75 = OUTLINED_FUNCTION_10_3();
        sub_26A3686E8(v75, v76, v77, v78);
        break;
      case 51:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A368BE0(v7, v8, v9, v10);
        break;
      case 52:
        v243 = OUTLINED_FUNCTION_10_3();
        sub_26A3690D8(v243, v244, v245, v246);
        break;
      case 53:
        v235 = OUTLINED_FUNCTION_10_3();
        sub_26A3695D0(v235, v236, v237, v238);
        break;
      case 54:
        v19 = OUTLINED_FUNCTION_10_3();
        sub_26A369AC8(v19, v20, v21, v22);
        break;
      case 55:
        v227 = OUTLINED_FUNCTION_10_3();
        sub_26A369FC0(v227, v228, v229, v230);
        break;
      case 56:
        v231 = OUTLINED_FUNCTION_10_3();
        sub_26A36A4B8(v231, v232, v233, v234);
        break;
      case 57:
        v27 = OUTLINED_FUNCTION_5_6();
        sub_26A36A9B0(v27, v28, v29, v30);
        break;
      case 58:
        v195 = OUTLINED_FUNCTION_10_3();
        sub_26A36AA64(v195, v196, v197, v198);
        break;
      case 59:
        v67 = OUTLINED_FUNCTION_10_3();
        sub_26A36AF5C(v67, v68, v69, v70);
        break;
      case 60:
        v203 = OUTLINED_FUNCTION_10_3();
        sub_26A36B454(v203, v204, v205, v206);
        break;
      case 61:
        v87 = OUTLINED_FUNCTION_10_3();
        sub_26A36B94C(v87, v88, v89, v90);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3596C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A3761EC();
    }

    else
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A359BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoFactItem_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372FF0, &qword_26A4403F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372FF8, &qword_26A4403F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35A5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoFactItem_HeroNumber(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373000, &qword_26A440400);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373008, &qword_26A440408);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373010, &qword_26A440410);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35B494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_Text(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373018, &qword_26A440418);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_LargeText(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373020, &qword_26A440420);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35BE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_DetailedText(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373028, &qword_26A440428);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35C37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSimpleItem_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373030, &qword_26A440430);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35C874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSimpleItem_Rich(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373038, &qword_26A440438);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373040, &qword_26A440440);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35D264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoPrimaryHeader_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373048, &qword_26A440448);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373050, &qword_26A440450);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373058, &qword_26A440458);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSecondaryHeader_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373060, &unk_26A440460);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35EB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoBinaryButton(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373068, &qword_26A440470);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35F034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoStatusIndicator_Success(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373070, &qword_26A440478);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoStatusIndicator_Error(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373078, &qword_26A440480);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35FA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373080, &qword_26A440488);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A35FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoStatusIndicator_Cancelled(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373088, &qword_26A440490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A360414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTextInput(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373090, &qword_26A440498);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A36090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoControl_Switch(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373098, &qword_26A4404A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A360E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoControl_Slider(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730A0, &qword_26A4404A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3612FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_26A424914();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_26A10FD9C();
    v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_26A3614A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoReference_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730A8, &qword_26A4404B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A361998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoReference_Logo(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730B0, &qword_26A4404B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A361E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoReference_Rich(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730B8, &qword_26A4404C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A362388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoReference_Button(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730C0, &qword_26A4404C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A362880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_Pair(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730C8, &qword_26A4404D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A362D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730D0, &qword_26A4404D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A363270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_Button(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730D8, &qword_26A4404E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A363768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoFactItem_Button(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730E0, &qword_26A4404E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A363C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTable(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730E8, &qword_26A4404F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A364158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoReference_Footnote(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730F0, &qword_26A4404F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A364650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoLongItem_Text(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803730F8, &qword_26A440500);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A364B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoVisualization_Chart(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373100, &qword_26A440508);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A365040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_Player(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373108, &qword_26A440510);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A365538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSimpleItem_Player(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373110, &qword_26A440518);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A365A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373118, &qword_26A440520);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A365F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373120, &qword_26A440528);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A366420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373128, &qword_26A440530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A366918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373130, &qword_26A440538);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A366E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoVisualization_Image(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373138, &qword_26A440540);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A367308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoVisualization_Map(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373140, &qword_26A440548);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A367800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoButton_Container(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373148, &qword_26A440550);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A367CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoIntentsUI_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373150, &qword_26A440558);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3681F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSash_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373158, &qword_26A440560);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3686E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoHeroHeader(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373160, &qword_26A440568);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A368BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373168, &qword_26A440570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3690D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373170, &qword_26A440578);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A3695D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373178, &qword_26A440580);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A369AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoKeyValue_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373180, &qword_26A440588);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A369FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373188, &qword_26A440590);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A36A4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373190, &qword_26A440598);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A36A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoResponse.Component(0);
  type metadata accessor for _ProtoSeparators(0);
  sub_26A37650C();
  return sub_26A424944();
}

uint64_t sub_26A36AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373198, &qword_26A4405A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A36AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_PairV2(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803731A0, &qword_26A4405A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A36B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoControl_PlayerButton(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803731A8, &qword_26A4405B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A36B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803731B0, &qword_26A4405B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A34552C();
    sub_26A34552C();
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_26A13440C();
      sub_26A34552C();
      sub_26A34552C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A3761EC();
    }
  }

  sub_26A37650C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A34552C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A34552C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t _ProtoResponse.Component.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v261 = v4;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  v260 = v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v259 - v9;
  sub_26A10FD9C();
  v11 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    sub_26A10FD9C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = OUTLINED_FUNCTION_3_52();
        sub_26A36C448(v12, v13, v14, v15);
        goto LABEL_60;
      case 1u:
        v124 = OUTLINED_FUNCTION_3_52();
        sub_26A36C658(v124, v125, v126, v127);
        goto LABEL_60;
      case 2u:
        v96 = OUTLINED_FUNCTION_3_52();
        sub_26A36C86C(v96, v97, v98, v99);
        goto LABEL_60;
      case 3u:
        v156 = OUTLINED_FUNCTION_3_52();
        sub_26A36CA80(v156, v157, v158, v159);
        goto LABEL_60;
      case 4u:
        v164 = OUTLINED_FUNCTION_3_52();
        sub_26A36CC94(v164, v165, v166, v167);
        goto LABEL_60;
      case 5u:
        v108 = OUTLINED_FUNCTION_3_52();
        sub_26A36CEA8(v108, v109, v110, v111);
        goto LABEL_60;
      case 6u:
        v128 = OUTLINED_FUNCTION_3_52();
        sub_26A36D0BC(v128, v129, v130, v131);
        goto LABEL_60;
      case 7u:
        v132 = OUTLINED_FUNCTION_3_52();
        sub_26A36D2D0(v132, v133, v134, v135);
        goto LABEL_60;
      case 8u:
        v180 = OUTLINED_FUNCTION_3_52();
        sub_26A36D4E4(v180, v181, v182, v183);
        goto LABEL_60;
      case 9u:
        v172 = OUTLINED_FUNCTION_3_52();
        sub_26A36D6F8(v172, v173, v174, v175);
        goto LABEL_60;
      case 0xAu:
        v68 = OUTLINED_FUNCTION_3_52();
        sub_26A36D90C(v68, v69, v70, v71);
        goto LABEL_60;
      case 0xBu:
        v112 = OUTLINED_FUNCTION_3_52();
        sub_26A36DB20(v112, v113, v114, v115);
        goto LABEL_60;
      case 0xCu:
        v88 = OUTLINED_FUNCTION_3_52();
        sub_26A36DD34(v88, v89, v90, v91);
        goto LABEL_60;
      case 0xDu:
        v56 = OUTLINED_FUNCTION_3_52();
        sub_26A36DF48(v56, v57, v58, v59);
        goto LABEL_60;
      case 0xEu:
        v140 = OUTLINED_FUNCTION_3_52();
        sub_26A36E15C(v140, v141, v142, v143);
        goto LABEL_60;
      case 0xFu:
        v144 = OUTLINED_FUNCTION_3_52();
        sub_26A36E370(v144, v145, v146, v147);
        goto LABEL_60;
      case 0x10u:
        v192 = OUTLINED_FUNCTION_3_52();
        sub_26A36E584(v192, v193, v194, v195);
        goto LABEL_60;
      case 0x11u:
        v184 = OUTLINED_FUNCTION_3_52();
        sub_26A36E798(v184, v185, v186, v187);
        goto LABEL_60;
      case 0x12u:
        v48 = OUTLINED_FUNCTION_3_52();
        sub_26A36E9AC(v48, v49, v50, v51);
        goto LABEL_60;
      case 0x13u:
        v92 = OUTLINED_FUNCTION_3_52();
        sub_26A36EBC0(v92, v93, v94, v95);
        goto LABEL_60;
      case 0x14u:
        v204 = OUTLINED_FUNCTION_3_52();
        sub_26A36EDD4(v204, v205, v206, v207);
        goto LABEL_60;
      case 0x15u:
        v52 = OUTLINED_FUNCTION_3_52();
        sub_26A36EFE8(v52, v53, v54, v55);
        goto LABEL_60;
      case 0x16u:
        v84 = OUTLINED_FUNCTION_3_52();
        sub_26A36F1FC(v84, v85, v86, v87);
        goto LABEL_60;
      case 0x17u:
        v64 = OUTLINED_FUNCTION_3_52();
        sub_26A36F410(v64, v65, v66, v67);
        goto LABEL_60;
      case 0x18u:
        v116 = OUTLINED_FUNCTION_3_52();
        sub_26A36F624(v116, v117, v118, v119);
        goto LABEL_60;
      case 0x1Au:
        sub_26A3761EC();
        v60 = OUTLINED_FUNCTION_3_52();
        sub_26A36F838(v60, v61, v62, v63);
        if (!v1)
        {
          break;
        }

        return sub_26A13440C();
      case 0x1Bu:
        v212 = OUTLINED_FUNCTION_3_52();
        sub_26A36F98C(v212, v213, v214, v215);
        goto LABEL_60;
      case 0x1Cu:
        v208 = OUTLINED_FUNCTION_3_52();
        sub_26A36FBA0(v208, v209, v210, v211);
        goto LABEL_60;
      case 0x1Du:
        v76 = OUTLINED_FUNCTION_3_52();
        sub_26A36FDB4(v76, v77, v78, v79);
        goto LABEL_60;
      case 0x1Eu:
        v100 = OUTLINED_FUNCTION_3_52();
        sub_26A36FFC8(v100, v101, v102, v103);
        goto LABEL_60;
      case 0x1Fu:
        v152 = OUTLINED_FUNCTION_3_52();
        sub_26A3701DC(v152, v153, v154, v155);
        goto LABEL_60;
      case 0x21u:
        v104 = OUTLINED_FUNCTION_3_52();
        sub_26A3703F0(v104, v105, v106, v107);
        goto LABEL_60;
      case 0x23u:
        v224 = OUTLINED_FUNCTION_3_52();
        sub_26A370604(v224, v225, v226, v227);
        goto LABEL_60;
      case 0x24u:
        v72 = OUTLINED_FUNCTION_3_52();
        sub_26A370818(v72, v73, v74, v75);
        goto LABEL_60;
      case 0x25u:
        v188 = OUTLINED_FUNCTION_3_52();
        sub_26A370A2C(v188, v189, v190, v191);
        goto LABEL_60;
      case 0x26u:
        v220 = OUTLINED_FUNCTION_3_52();
        sub_26A370C40(v220, v221, v222, v223);
        goto LABEL_60;
      case 0x27u:
        v40 = OUTLINED_FUNCTION_3_52();
        sub_26A370E54(v40, v41, v42, v43);
        goto LABEL_60;
      case 0x28u:
        v168 = OUTLINED_FUNCTION_3_52();
        sub_26A371068(v168, v169, v170, v171);
        goto LABEL_60;
      case 0x29u:
        v36 = OUTLINED_FUNCTION_3_52();
        sub_26A37127C(v36, v37, v38, v39);
        goto LABEL_60;
      case 0x2Au:
        v32 = OUTLINED_FUNCTION_3_52();
        sub_26A371490(v32, v33, v34, v35);
        goto LABEL_60;
      case 0x2Bu:
        v80 = OUTLINED_FUNCTION_3_52();
        sub_26A3716A4(v80, v81, v82, v83);
        goto LABEL_60;
      case 0x2Cu:
        v120 = OUTLINED_FUNCTION_3_52();
        sub_26A3718B8(v120, v121, v122, v123);
        goto LABEL_60;
      case 0x2Du:
        v200 = OUTLINED_FUNCTION_3_52();
        sub_26A371ACC(v200, v201, v202, v203);
        goto LABEL_60;
      case 0x2Eu:
        v16 = OUTLINED_FUNCTION_3_52();
        sub_26A371CE0(v16, v17, v18, v19);
        goto LABEL_60;
      case 0x2Fu:
        v44 = OUTLINED_FUNCTION_3_52();
        sub_26A371EF4(v44, v45, v46, v47);
        goto LABEL_60;
      case 0x30u:
        v136 = OUTLINED_FUNCTION_3_52();
        sub_26A372108(v136, v137, v138, v139);
        goto LABEL_60;
      case 0x31u:
        v160 = OUTLINED_FUNCTION_3_52();
        sub_26A37231C(v160, v161, v162, v163);
        goto LABEL_60;
      case 0x32u:
        v228 = OUTLINED_FUNCTION_3_52();
        sub_26A372530(v228, v229, v230, v231);
        goto LABEL_60;
      case 0x33u:
        v148 = OUTLINED_FUNCTION_3_52();
        sub_26A372744(v148, v149, v150, v151);
        goto LABEL_60;
      case 0x34u:
        v28 = OUTLINED_FUNCTION_3_52();
        sub_26A372958(v28, v29, v30, v31);
        goto LABEL_60;
      case 0x35u:
        v20 = OUTLINED_FUNCTION_3_52();
        sub_26A372B6C(v20, v21, v22, v23);
        goto LABEL_60;
      case 0x36u:
        v232 = OUTLINED_FUNCTION_3_52();
        sub_26A372D80(v232, v233, v234, v235);
        goto LABEL_60;
      case 0x37u:
        v216 = OUTLINED_FUNCTION_3_52();
        sub_26A372F94(v216, v217, v218, v219);
        goto LABEL_60;
      case 0x38u:
        v24 = OUTLINED_FUNCTION_3_52();
        sub_26A3731A8(v24, v25, v26, v27);
        goto LABEL_60;
      case 0x39u:
        v176 = OUTLINED_FUNCTION_3_52();
        sub_26A3733BC(v176, v177, v178, v179);
        goto LABEL_60;
      case 0x3Au:
        v196 = OUTLINED_FUNCTION_3_52();
        sub_26A3735D0(v196, v197, v198, v199);
LABEL_60:
        if (!v1)
        {
          goto LABEL_63;
        }

        sub_26A3761EC();
        return sub_26A13440C();
      default:
LABEL_63:
        sub_26A3761EC();
        break;
    }
  }

  sub_26A13440C();
  v237 = OUTLINED_FUNCTION_3_52();
  result = sub_26A3737E4(v237, v238, v239, v240);
  if (!v1)
  {
    v241 = v260;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v241, 1, v11) != 1)
    {
      sub_26A10FD9C();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 25:
          v255 = OUTLINED_FUNCTION_3_52();
          sub_26A373DEC(v255, v256, v257, v258);
          break;
        case 32:
          v247 = OUTLINED_FUNCTION_3_52();
          sub_26A373BD8(v247, v248, v249, v250);
          break;
        case 59:
          v251 = OUTLINED_FUNCTION_3_52();
          sub_26A374000(v251, v252, v253, v254);
          break;
        case 34:
          v243 = OUTLINED_FUNCTION_3_52();
          sub_26A3739C4(v243, v244, v245, v246);
          break;
      }

      sub_26A3761EC();
    }

    sub_26A13440C();
    type metadata accessor for _ProtoResponse.Component(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A36C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoFactItem_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36CEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_Text(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_LargeText(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_DetailedText(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36D90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSimpleItem_Rich(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36DB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSecondaryHeader_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoBinaryButton(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoStatusIndicator_Success(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36EBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoStatusIndicator_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36EDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36EFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoStatusIndicator_Cancelled(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoTextInput(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoControl_Switch(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoControl_Slider(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_26A10FD9C();
  v7 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_26A424A64();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36F98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoReference_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoReference_Logo(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoReference_Rich(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A36FFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoReference_Button(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3701DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_Pair(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3703F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A370604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_Button(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A370818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoFactItem_Button(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A370A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoTable(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A370C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoReference_Footnote(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A370E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoLongItem_Text(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A371068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoVisualization_Chart(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A37127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_Player(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A371490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSimpleItem_Player(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3716A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3718B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A371ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A371CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A371EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoVisualization_Image(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoVisualization_Map(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A37231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoButton_Container(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoIntentsUI_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSash_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoHeroHeader(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A372F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3731A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoKeyValue_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3733BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3735D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3737E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoSeparators(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoResponse.Component(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A34552C();
  sub_26A37650C();
  sub_26A424A84();
  return sub_26A3761EC();
}

uint64_t sub_26A3739C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A373BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_PairV2(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A373DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoControl_PlayerButton(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A374000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_26A34552C();
      sub_26A37650C();
      sub_26A424A84();
      return sub_26A3761EC();
    }

    result = sub_26A3761EC();
  }

  __break(1u);
  return result;
}

void static _ProtoResponse.Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v38 = type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v35 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v36 = (&v35 - v9);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C820, &unk_26A425DD0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_46();
  v12 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_21_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_41(v16);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C830, &unk_26A425DE0);
  OUTLINED_FUNCTION_41(v18);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v23 = *(v22 + 56);
  v39 = v4;
  sub_26A10FD9C();
  v40 = v2;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v21, 1, v12);
  if (v24)
  {
    OUTLINED_FUNCTION_37(&v21[v23], 1, v12);
    if (!v24)
    {
      goto LABEL_19;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(&v21[v23], 1, v12);
    if (v24)
    {
      sub_26A3761EC();
      goto LABEL_19;
    }

    sub_26A34552C();
    static _ProtoResponse.Component.OneOf_Value.== infix(_:_:)();
    v26 = v25;
    sub_26A3761EC();
    sub_26A3761EC();
    sub_26A13440C();
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  type metadata accessor for _ProtoResponse.Component(0);
  v27 = *(v37 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v28 = OUTLINED_FUNCTION_71();
  v29 = v38;
  OUTLINED_FUNCTION_37(v28, v30, v38);
  if (v24)
  {
    OUTLINED_FUNCTION_37(v0 + v27, 1, v29);
    if (v24)
    {
      sub_26A13440C();
LABEL_22:
      sub_26A424794();
      OUTLINED_FUNCTION_1_55();
      sub_26A37650C();
      sub_26A424B64();
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v31 = v36;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v0 + v27, 1, v29);
  if (v32)
  {
    sub_26A3761EC();
LABEL_19:
    sub_26A13440C();
    goto LABEL_20;
  }

  v33 = v35;
  sub_26A34552C();
  v34 = static _ProtoSeparators.== infix(_:_:)(v31, v33);
  sub_26A3761EC();
  sub_26A3761EC();
  sub_26A13440C();
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_20:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A374794(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A37650C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A374814(uint64_t a1)
{
  v2 = sub_26A37650C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A374884(uint64_t a1, uint64_t a2)
{
  sub_26A37650C();

  return sub_26A4249B4();
}

uint64_t sub_26A374920()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372E00);
  __swift_project_value_buffer(v0, qword_280372E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "interaction";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "slots";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component_name";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "safe_for_logging";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "action";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoIntentsUI_Standard.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248C4();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A374CE0(v7, v8, v9, v10, v11);
        break;
      case 3:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 4:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A374D78(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A374CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_157();
  sub_26A37650C();
  return sub_26A424934();
}

uint64_t sub_26A374D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A37650C();
  return sub_26A424944();
}

uint64_t _ProtoIntentsUI_Standard.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (sub_26A13BEE8(*v1, *(v3 + 8)) || (OUTLINED_FUNCTION_20_4(), result = sub_26A424A14(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_147_5();
    if (!v5 || (type metadata accessor for _ProtoIntentsUI_Standard.Slot(0), sub_26A37650C(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), (v0 = v2) == 0))
    {
      OUTLINED_FUNCTION_84_0();
      if (!v6 || (OUTLINED_FUNCTION_20_4(), result = sub_26A424A64(), (v0 = v2) == 0))
      {
        if (*(v3 + 40) != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), (v0 = v2) == 0))
        {
          OUTLINED_FUNCTION_87();
          result = sub_26A374F88(v7, v8, v9, v10);
          if (!v0)
          {
            type metadata accessor for _ProtoIntentsUI_Standard(0);
            return OUTLINED_FUNCTION_19_6();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A374F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoIntentsUI_Standard(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A34552C();
  sub_26A37650C();
  sub_26A424A84();
  return sub_26A3761EC();
}

uint64_t sub_26A37520C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A37650C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A37528C(uint64_t a1)
{
  v2 = sub_26A37650C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3752FC(uint64_t a1, uint64_t a2)
{
  sub_26A37650C();

  return sub_26A4249B4();
}

uint64_t sub_26A37537C()
{
  result = MEMORY[0x26D65BA70](0x746F6C532ELL, 0xE500000000000000);
  qword_280372E18 = 0xD00000000000001CLL;
  unk_280372E20 = 0x800000026A44A690;
  return result;
}

uint64_t sub_26A375404()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372E28);
  __swift_project_value_buffer(v0, qword_280372E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameter_key_paths";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fallback";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3755F8()
{
  type metadata accessor for _ProtoIntentsUI_Standard.Slot._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback;
  v2 = type metadata accessor for _ProtoResponse.Component(0);
  result = __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  qword_280372E40 = v0;
  return result;
}

uint64_t sub_26A375664(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  MEMORY[0x28223BE20](v3 - 8);
  *(v1 + 16) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback;
  v5 = type metadata accessor for _ProtoResponse.Component(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  swift_beginAccess();
  v6 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v6;
  swift_beginAccess();
  sub_26A10FD9C();

  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  return v1;
}

uint64_t sub_26A3757D4()
{

  sub_26A13440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoIntentsUI_Standard.Slot.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoIntentsUI_Standard.Slot._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_5_3();
    *(v0 + v1) = sub_26A375664(v2);
  }

  OUTLINED_FUNCTION_87();
  return sub_26A3758EC(v3, v4, v5, v6);
}

uint64_t sub_26A3758EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_26A3759FC(a2, a1, a3, a4);
    }

    else if (result == 1)
    {
      sub_26A375978(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_26A375978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26A4248F4();
  return swift_endAccess();
}

uint64_t sub_26A3759FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoResponse.Component(0);
  sub_26A37650C();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t _ProtoIntentsUI_Standard.Slot.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoIntentsUI_Standard.Slot(0);
  OUTLINED_FUNCTION_12_7();
  result = sub_26A375B3C(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A375B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16))
  {
    return sub_26A375BF0(a1, a2, a3, a4);
  }

  sub_26A424A44();

  if (!v4)
  {
    return sub_26A375BF0(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A375BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoResponse.Component(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A34552C();
  sub_26A37650C();
  sub_26A424A84();
  return sub_26A3761EC();
}

BOOL sub_26A375DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoResponse.Component(0);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C878, &unk_26A4405C0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  swift_beginAccess();
  if ((sub_26A0DBFF0(v14, *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v19[0] = v6;
  v19[1] = v12;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v15 = *(v7 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    sub_26A13440C();
    if (__swift_getEnumTagSinglePayload(&v9[v15], 1, v4) == 1)
    {
      sub_26A13440C();
      return 1;
    }

    goto LABEL_7;
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v9[v15], 1, v4) == 1)
  {
    sub_26A13440C();
    sub_26A3761EC();
LABEL_7:
    sub_26A13440C();
    return 0;
  }

  sub_26A34552C();
  static _ProtoResponse.Component.== infix(_:_:)();
  v18 = v17;
  sub_26A3761EC();
  sub_26A13440C();
  sub_26A3761EC();
  sub_26A13440C();
  return (v18 & 1) != 0;
}

uint64_t sub_26A3761EC()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A37623C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3762D8(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_125();
  sub_26A37650C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A37639C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A37650C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A37641C(uint64_t a1)
{
  v2 = sub_26A37650C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A37648C(uint64_t a1, uint64_t a2)
{
  sub_26A37650C();

  return sub_26A4249B4();
}

unint64_t sub_26A37650C()
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

unint64_t sub_26A376550()
{
  result = qword_280372E60;
  if (!qword_280372E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372E60);
  }

  return result;
}

unint64_t sub_26A3765AC()
{
  result = qword_280372E80;
  if (!qword_280372E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372E80);
  }

  return result;
}

unint64_t sub_26A376604()
{
  result = qword_280372E88;
  if (!qword_280372E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372E88);
  }

  return result;
}

unint64_t sub_26A37665C()
{
  result = qword_280372E90;
  if (!qword_280372E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280372E98, &qword_26A43F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372E90);
  }

  return result;
}

void sub_26A376DA8(uint64_t a1)
{
  sub_26A376F6C(319, &qword_280372F00, type metadata accessor for _ProtoResponse.Section, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A376F6C(319, &qword_28036F5F0, type metadata accessor for _ProtoBackgroundElement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26A376F6C(319, &qword_280372F08, type metadata accessor for _ProtoOrnamentElement, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26A376F6C(319, &qword_280372F10, type metadata accessor for _ProtoResponse.Group, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26A2570CC(319, &qword_280372F18, MEMORY[0x277CC9318]);
          if (v5 <= 0x3F)
          {
            sub_26A424794();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A376F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A377008(uint64_t a1)
{
  sub_26A376F6C(319, &qword_280372F30, type metadata accessor for _ProtoResponse.Component, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A2570CC(319, &qword_280372F38, &type metadata for _ProtoResponse.LevelOfDetail);
    if (v2 <= 0x3F)
    {
      sub_26A2570CC(319, &qword_28036D218, &type metadata for _ProtoIdiom);
      if (v3 <= 0x3F)
      {
        sub_26A424794();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A37713C(uint64_t a1)
{
  sub_26A376F6C(319, &qword_280372F30, type metadata accessor for _ProtoResponse.Component, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A377228(uint64_t a1)
{
  sub_26A376F6C(319, &qword_280372F60, type metadata accessor for _ProtoResponse.Component.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A376F6C(319, &qword_280372F68, type metadata accessor for _ProtoSeparators, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A377324(uint64_t a1)
{
  result = type metadata accessor for _ProtoCustomCanvas(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoFactItem_Standard(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoFactItem_ShortNumber(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for _ProtoFactItem_HeroNumber(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for _ProtoSummaryItem_Standard(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for _ProtoSummaryItem_ShortNumber(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for _ProtoSummaryItem_Text(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for _ProtoSummaryItem_LargeText(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for _ProtoSummaryItem_DetailedText(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for _ProtoSimpleItem_Standard(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for _ProtoSimpleItem_Rich(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for _ProtoSimpleItem_Visual(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for _ProtoPrimaryHeader_Standard(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for _ProtoPrimaryHeader_Marquee(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for _ProtoPrimaryHeader_Rich(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for _ProtoSecondaryHeader_Standard(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for _ProtoButton(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for _ProtoBinaryButton(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for _ProtoStatusIndicator_Success(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for _ProtoStatusIndicator_Error(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for _ProtoStatusIndicator_InProgress(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for _ProtoStatusIndicator_Cancelled(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for _ProtoTextInput(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for _ProtoControl_Switch(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for _ProtoControl_Slider(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for _ProtoControl_PlayerButton(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for _ProtoReference_Standard(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for _ProtoReference_Logo(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for _ProtoReference_Rich(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for _ProtoReference_Button(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for _ProtoSummaryItem_Pair(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for _ProtoSummaryItem_PairV2(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for _ProtoSummaryItem_PairNumber(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for _ProtoSummaryItem_PairNumberV2(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for _ProtoSummaryItem_Button(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for _ProtoFactItem_Button(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for _ProtoTable(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for _ProtoReference_Footnote(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for _ProtoLongItem_Text(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for _ProtoVisualization_Chart(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for _ProtoSummaryItem_Player(319);
                                                                                  if (v42 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for _ProtoSimpleItem_Player(319);
                                                                                    if (v43 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for _ProtoSimpleItem_ReverseRich(319);
                                                                                      if (v44 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for _ProtoSecondaryHeader_Emphasized(319);
                                                                                        if (v45 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for _ProtoSummaryItem_Switch(319);
                                                                                          if (v46 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for _ProtoSystemText_ClarificationTitle(319);
                                                                                            if (v47 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for _ProtoVisualization_Image(319);
                                                                                              if (v48 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for _ProtoVisualization_Map(319);
                                                                                                if (v49 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for _ProtoButton_Container(319);
                                                                                                  if (v50 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for _ProtoIntentsUI_Standard(319);
                                                                                                    if (v51 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for _ProtoSash_Standard(319);
                                                                                                      if (v52 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for _ProtoHeroHeader(319);
                                                                                                        if (v53 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for _ProtoHorizontalList_Standard(319);
                                                                                                          if (v54 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for _ProtoSectionHeader_Standard(319);
                                                                                                            if (v55 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for _ProtoSectionHeader_Rich(319);
                                                                                                              if (v56 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for _ProtoKeyValue_Standard(319);
                                                                                                                if (v57 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for _ProtoTertiaryHeader_Standard(319);
                                                                                                                  if (v58 <= 0x3F)
                                                                                                                  {
                                                                                                                    result = type metadata accessor for _ProtoSimpleItem_RichSearchResult(319);
                                                                                                                    if (v59 <= 0x3F)
                                                                                                                    {
                                                                                                                      result = type metadata accessor for _ProtoSummaryItem_SwitchV2(319);
                                                                                                                      if (v60 <= 0x3F)
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

void sub_26A37783C(uint64_t a1)
{
  sub_26A376F6C(319, &qword_280372F90, type metadata accessor for _ProtoIntentsUI_Standard.Slot, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A376F6C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A377988(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoIntentsUI_Standard.Slot._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A377A14(uint64_t a1)
{
  sub_26A376F6C(319, &qword_280372FB8, type metadata accessor for _ProtoResponse.Component, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_0_67()
{
  v2 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_10_46(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_22_22(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t OUTLINED_FUNCTION_23_31(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t OUTLINED_FUNCTION_25_25()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_26_29(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_27_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_32_17(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_75_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_78_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_80_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_82_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_86_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_88_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_89_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_90_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_92_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_95_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_96_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_101_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_102_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_104_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_105_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return sub_26A34552C();
}

uint64_t OUTLINED_FUNCTION_125_4()
{

  return sub_26A13440C();
}

uint64_t OUTLINED_FUNCTION_126_4()
{
}

uint64_t OUTLINED_FUNCTION_133_3()
{
  type metadata accessor for _ProtoIntentsUI_Standard.Slot._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_137_4@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *v2 = a2;
  v2[1].n128_u64[0] = a1;
  v2[1].n128_u64[1] = 0;
  v2[2].n128_u64[0] = 0xE000000000000000;
  v2[2].n128_u8[8] = 0;
  type metadata accessor for _ProtoIntentsUI_Standard(0);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void OUTLINED_FUNCTION_138_2(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_141_3@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}