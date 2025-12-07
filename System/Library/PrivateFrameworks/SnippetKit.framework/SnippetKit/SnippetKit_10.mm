uint64_t sub_26A1BA8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F030, type metadata accessor for _ProtoSummaryItem_Player, &protocol conformance descriptor for _ProtoSummaryItem_Player);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1BA948(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036CAF0, type metadata accessor for _ProtoSummaryItem_Player, &protocol conformance descriptor for _ProtoSummaryItem_Player);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1BA9B8(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036CAF0, type metadata accessor for _ProtoSummaryItem_Player, &protocol conformance descriptor for _ProtoSummaryItem_Player);

  return sub_26A4249B4();
}

uint64_t sub_26A1BAA50(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26A424AC4();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26A42B0D0;
  v10 = v35 + v9 + v7[14];
  *(v35 + v9) = 1;
  *v10 = "switch";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  sub_26A424A94();
  OUTLINED_FUNCTION_14_8();
  v13 = *(v12 + 104);
  (v13)(v10, v11, v2);
  v14 = OUTLINED_FUNCTION_194_0(v35 + v9 + v8);
  *v15 = 2;
  *v14 = "text_1";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v13();
  v16 = OUTLINED_FUNCTION_194_0(v35 + v9 + 2 * v8);
  *v17 = 3;
  *v16 = "text_2";
  v16[1] = 6;
  v18 = OUTLINED_FUNCTION_175_1(v16);
  (v13)(v18);
  v19 = OUTLINED_FUNCTION_194_0(v35 + v9 + 3 * v8);
  *v20 = 4;
  *v19 = "text_3";
  v19[1] = 6;
  v21 = OUTLINED_FUNCTION_175_1(v19);
  (v13)(v21);
  v22 = OUTLINED_FUNCTION_194_0(v35 + v9 + 4 * v8);
  *v23 = 8;
  *v22 = "text_4";
  v22[1] = 6;
  v24 = OUTLINED_FUNCTION_175_1(v22);
  (v13)(v24);
  v25 = OUTLINED_FUNCTION_194_0(v35 + v9 + 5 * v8);
  *v26 = 9;
  *v25 = "thumbnail";
  *(v25 + 8) = 9;
  *(v25 + 16) = 2;
  v13();
  v27 = OUTLINED_FUNCTION_194_0(v35 + v9 + 6 * v8);
  *v28 = 5;
  *v27 = "action";
  *(v27 + 8) = 6;
  *(v27 + 16) = 2;
  v13();
  v29 = OUTLINED_FUNCTION_194_0(v35 + v9 + 7 * v8);
  *v30 = 6;
  *v29 = "component_name";
  v29[1] = 14;
  v31 = OUTLINED_FUNCTION_175_1(v29);
  (v13)(v31);
  v32 = OUTLINED_FUNCTION_194_0(v35 + v9 + 8 * v8);
  *v33 = 7;
  *v32 = "link_identifier";
  *(v32 + 8) = 15;
  *(v32 + 16) = 2;
  v13();
  return sub_26A424AA4();
}

uint64_t sub_26A1BADC0()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch;
  v2 = type metadata accessor for _ProtoSwitch(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3;
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v4);
  v7 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v10 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1BAEFC()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_73_2(v5, v49);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88_3(v8, v50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_56();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v13);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for _ProtoSwitch(0);
  v15 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = type metadata accessor for _ProtoTextProperty(0);
  v20 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  OUTLINED_FUNCTION_200_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_151_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_200_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_151_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  OUTLINED_FUNCTION_200_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_151_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v56);
  OUTLINED_FUNCTION_206_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v55);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  v43 = swift_endAccess();
  v44 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1(v43, &v54);
  v46 = *v44;
  v45 = v44[1];
  OUTLINED_FUNCTION_26_10(v41, &v53);
  *v41 = v46;
  v41[1] = v45;

  OUTLINED_FUNCTION_122_1(v47, &v52);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v48, &v51);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1BB6C8()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, &qword_28036D258, &unk_26A4273E0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1BB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1BB9E4(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1BBAC0(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1BBB9C(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1BBC78(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1BBD54(a2, a1, a3, a4);
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_12;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_12:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      case 8:
        sub_26A1BBE30(a2, a1, a3, a4);
        break;
      case 9:
        sub_26A1BBF0C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1BB9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoSwitch(0);
  sub_26A1C2664(&qword_28036D390, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BBAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BBB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BBC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BBD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BBE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BC018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1BC204(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1BC3F8(a1, a2, a3, a4);
    sub_26A1BC5EC(a1, a2, a3, a4);
    sub_26A1BC7E0(a1, a2, a3, a4);
    sub_26A1BC9D4(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
    swift_beginAccess();
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

    sub_26A1BCBC8(a1, a2, a3, a4);
    return sub_26A1BCDBC(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A1BC204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036D258, &unk_26A4273E0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036D390, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BC3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BC5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BC9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BCDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A1C2528();
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BCFDC(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v117 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v117);
  v113 = (&v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v116);
  v118 = &v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v114 = (&v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v125 = &v113 - v8;
  v121 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v121);
  v115 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v120);
  v122 = &v113 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v11 - 8);
  v119 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v129 = &v113 - v14;
  v131 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v131);
  v124 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  MEMORY[0x28223BE20](v130);
  v132 = &v113 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v17 - 8);
  v127 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v134 = &v113 - v20;
  v141 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v141);
  v135 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v143);
  v126 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v136 = &v113 - v24;
  MEMORY[0x28223BE20](v25);
  v140 = &v113 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v27 - 8);
  v123 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v113 - v30;
  MEMORY[0x28223BE20](v31);
  v133 = &v113 - v32;
  MEMORY[0x28223BE20](v33);
  v138 = &v113 - v34;
  MEMORY[0x28223BE20](v35);
  v137 = &v113 - v36;
  MEMORY[0x28223BE20](v37);
  v144 = &v113 - v38;
  v39 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v39);
  v139 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F090, &qword_26A42C580);
  v42 = v41 - 8;
  MEMORY[0x28223BE20](v41);
  v44 = &v113 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  MEMORY[0x28223BE20](v45 - 8);
  v142 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v113 - v48;
  swift_beginAccess();
  sub_26A10FD9C();
  v50 = v145;
  swift_beginAccess();
  v51 = *(v42 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v44, 1, v39) == 1)
  {

    sub_26A0E48F0(v49, &qword_28036D258, &unk_26A4273E0);
    if (__swift_getEnumTagSinglePayload(&v44[v51], 1, v39) == 1)
    {
      sub_26A0E48F0(v44, &qword_28036D258, &unk_26A4273E0);
      goto LABEL_8;
    }

LABEL_6:
    v53 = &qword_28036F090;
    v54 = &qword_26A42C580;
    v55 = v44;
LABEL_43:
    sub_26A0E48F0(v55, v53, v54);
    goto LABEL_44;
  }

  v52 = v142;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v44[v51], 1, v39) == 1)
  {

    sub_26A0E48F0(v49, &qword_28036D258, &unk_26A4273E0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v56 = v139;
  sub_26A1C2528();

  v57 = static _ProtoSwitch.== infix(_:_:)(v52, v56);
  sub_26A1C25D0();
  sub_26A0E48F0(v49, &qword_28036D258, &unk_26A4273E0);
  sub_26A1C25D0();
  sub_26A0E48F0(v44, &qword_28036D258, &unk_26A4273E0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  swift_beginAccess();
  v58 = v144;
  sub_26A10FD9C();
  swift_beginAccess();
  v59 = *(v143 + 48);
  v60 = v140;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v61 = v141;
  if (__swift_getEnumTagSinglePayload(v60, 1, v141) == 1)
  {
    sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v61) == 1)
    {
      sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v62 = v137;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v61) == 1)
  {
    sub_26A0E48F0(v144, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_13:
    v53 = &qword_28036C7D0;
    v54 = &qword_26A426DE0;
    v55 = v60;
    goto LABEL_43;
  }

  v63 = v135;
  sub_26A1C2528();
  v64 = static _ProtoTextProperty.== infix(_:_:)(v62, v63);
  sub_26A1C25D0();
  sub_26A0E48F0(v144, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_15:
  swift_beginAccess();
  v65 = v138;
  sub_26A10FD9C();
  swift_beginAccess();
  v66 = *(v143 + 48);
  v67 = v136;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v67, 1, v61) == 1)
  {
    sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v61) == 1)
    {
      sub_26A0E48F0(v67, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v68 = v133;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v61) == 1)
  {
    sub_26A0E48F0(v138, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_20:
    v53 = &qword_28036C7D0;
    v54 = &qword_26A426DE0;
    v55 = v67;
    goto LABEL_43;
  }

  v69 = v135;
  sub_26A1C2528();
  v70 = v67;
  v71 = static _ProtoTextProperty.== infix(_:_:)(v68, v69);
  sub_26A1C25D0();
  sub_26A0E48F0(v138, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  swift_beginAccess();
  v72 = v134;
  sub_26A10FD9C();
  swift_beginAccess();
  v73 = *(v130 + 48);
  v74 = v132;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v75 = v131;
  if (__swift_getEnumTagSinglePayload(v74, 1, v131) == 1)
  {
    sub_26A0E48F0(v72, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(v74 + v73, 1, v75) == 1)
    {
      sub_26A0E48F0(v74, &qword_28036CAE0, &unk_26A4273F0);
      v76 = v129;
      goto LABEL_29;
    }

LABEL_27:
    v53 = &qword_28036F088;
    v54 = &unk_26A42C570;
LABEL_42:
    v55 = v74;
    goto LABEL_43;
  }

  v77 = v127;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74 + v73, 1, v75);
  v76 = v129;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v134, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
    goto LABEL_27;
  }

  v79 = v124;
  sub_26A1C2528();
  v80 = static _ProtoMultilineTextProperty.== infix(_:_:)(v77, v79);
  sub_26A1C25D0();
  sub_26A0E48F0(v134, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v74, &qword_28036CAE0, &unk_26A4273F0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_29:
  swift_beginAccess();
  v81 = v128;
  sub_26A10FD9C();
  swift_beginAccess();
  v82 = *(v143 + 48);
  v74 = v126;
  sub_26A10FD9C();
  v83 = v141;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v74, 1, v83) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v74 + v82, 1, v83) == 1)
    {
      sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
      v84 = v125;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v85 = v123;
  sub_26A10FD9C();
  v86 = __swift_getEnumTagSinglePayload(v74 + v82, 1, v83);
  v84 = v125;
  if (v86 == 1)
  {
    sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_34:
    v53 = &qword_28036C7D0;
    v54 = &qword_26A426DE0;
    goto LABEL_42;
  }

  v87 = v135;
  sub_26A1C2528();
  LODWORD(v144) = static _ProtoTextProperty.== infix(_:_:)(v85, v87);
  sub_26A1C25D0();
  sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
  if ((v144 & 1) == 0)
  {
LABEL_44:

    return 0;
  }

LABEL_36:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v88 = *(v120 + 48);
  v74 = v122;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v89 = v121;
  if (__swift_getEnumTagSinglePayload(v74, 1, v121) == 1)
  {
    sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v74 + v88, 1, v89) == 1)
    {
      sub_26A0E48F0(v74, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v90 = v119;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v74 + v88, 1, v89) == 1)
  {
    sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_41:
    v53 = &qword_28036D190;
    v54 = &unk_26A427130;
    goto LABEL_42;
  }

  v92 = v115;
  sub_26A1C2528();
  v93 = static _ProtoVisualProperty.== infix(_:_:)(v90, v92);
  sub_26A1C25D0();
  sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v74, &qword_28036CAE8, &unk_26A426430);
  if ((v93 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v94 = *(v116 + 48);
  v95 = v118;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v96 = v117;
  if (__swift_getEnumTagSinglePayload(v95, 1, v117) == 1)
  {
    sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
    {
      sub_26A0E48F0(v95, &off_28036C7C0, &off_26A427400);
      goto LABEL_50;
    }

    goto LABEL_63;
  }

  v108 = v114;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
  {
    sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_63:
    v53 = &qword_28036C7C8;
    v54 = &qword_26A425C00;
    v55 = v95;
    goto LABEL_43;
  }

  v109 = v113;
  sub_26A1C2528();
  sub_26A0E36D8(*v108, *v109);
  if ((v110 & 1) == 0 || (v108[1] == v109[1] ? (v111 = v108[2] == v109[2]) : (v111 = 0), !v111 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v55 = v95;
    v53 = &off_28036C7C0;
    v54 = &off_26A427400;
    goto LABEL_43;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v112 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v95, &off_28036C7C0, &off_26A427400);
  if ((v112 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_50:
  v97 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  v100 = (v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v101 = v98 == *v100 && v99 == v100[1];
  if (!v101 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_44;
  }

  v102 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  v103 = *v102;
  v104 = v102[1];
  v105 = (v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v103 == *v105 && v104 == v105[1])
  {

    return 1;
  }

  v107 = sub_26A425354();

  result = 0;
  if (v107)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1BE7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F028, type metadata accessor for _ProtoSummaryItem_Switch, &protocol conformance descriptor for _ProtoSummaryItem_Switch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1BE840(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036D260, type metadata accessor for _ProtoSummaryItem_Switch, &protocol conformance descriptor for _ProtoSummaryItem_Switch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1BE8B0(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036D260, type metadata accessor for _ProtoSummaryItem_Switch, &protocol conformance descriptor for _ProtoSummaryItem_Switch);

  return sub_26A4249B4();
}

uint64_t sub_26A1BE9AC()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch;
  v2 = type metadata accessor for _ProtoSwitch(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2;
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v4);
  v7 = OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v10 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1BEAEC()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_73_2(v5, v49);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88_3(v8, v50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74_3(v11, v51);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for _ProtoSwitch(0);
  v16 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  v31 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v20);
  type metadata accessor for _ProtoVisualProperty(0);
  v34 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  type metadata accessor for _ProtoActionProperty(0);
  v38 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  v43 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_210_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_133_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_263();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v57);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v56);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  v44 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName, &v55);
  v46 = *v44;
  v45 = v44[1];
  OUTLINED_FUNCTION_26_10(v42, &v54);
  *v42 = v46;
  v42[1] = v45;

  OUTLINED_FUNCTION_122_1(v47, &v53);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v48, &v52);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1BF05C()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, &qword_28036D258, &unk_26A4273E0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1BF1AC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A1BF25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1BF3E0(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1BF4BC(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1BF598(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1BF674(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1BF750(a2, a1, a3, a4);
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_12;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_12:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      case 8:
        sub_26A1BF8B0(a2, a1, a3, a4);
        break;
      case 9:
        sub_26A1BF98C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1BF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoSwitch(0);
  sub_26A1C2664(&qword_28036D390, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BF4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BF598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BF750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BF82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A1BF8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BF98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1BFA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1BFC84(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1BFE78(a1, a2, a3, a4);
    sub_26A1C006C(a1, a2, a3, a4);
    sub_26A1C0260(a1, a2, a3, a4);
    sub_26A1C0454(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
    swift_beginAccess();
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

    sub_26A1C0648(a1, a2, a3, a4);
    return sub_26A1C083C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A1BFC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036D258, &unk_26A4273E0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036D390, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1BFE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1C006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1C0260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1C0454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1C0648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1C083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A1C2528();
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1C0A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = a3(0);
  if (*(a1 + *(v7 + 20)) != *(a2 + *(v7 + 20)))
  {

    v8 = OUTLINED_FUNCTION_12_2();
    v9 = a4(v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_16_10();
  sub_26A1C2664(v10, v11, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A1C0B38(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v121 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v121);
  v117 = (&v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v120);
  v122 = &v117 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = (&v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v128 = &v117 - v8;
  v125 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v125);
  v119 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v124);
  v126 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v11 - 8);
  v123 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v132 = &v117 - v14;
  v140 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v140);
  v133 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  MEMORY[0x28223BE20](v139);
  v134 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v137 = &v117 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v146 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v135 = &v117 - v24;
  MEMORY[0x28223BE20](v25);
  v143 = &v117 - v26;
  v145 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v145);
  v136 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v144);
  v129 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v142 = &v117 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v31 - 8);
  v127 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v131 = &v117 - v34;
  MEMORY[0x28223BE20](v35);
  v138 = &v117 - v36;
  MEMORY[0x28223BE20](v37);
  v148 = &v117 - v38;
  v39 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v39);
  v141 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F090, &qword_26A42C580);
  v42 = v41 - 8;
  MEMORY[0x28223BE20](v41);
  v44 = &v117 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  MEMORY[0x28223BE20](v45 - 8);
  v147 = &v117 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v117 - v48;
  swift_beginAccess();
  sub_26A10FD9C();
  v50 = v149;
  swift_beginAccess();
  v51 = *(v42 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v44, 1, v39) == 1)
  {

    sub_26A0E48F0(v49, &qword_28036D258, &unk_26A4273E0);
    if (__swift_getEnumTagSinglePayload(&v44[v51], 1, v39) == 1)
    {
      sub_26A0E48F0(v44, &qword_28036D258, &unk_26A4273E0);
      goto LABEL_8;
    }

LABEL_6:
    v53 = &qword_28036F090;
    v54 = &qword_26A42C580;
LABEL_14:
    v67 = v44;
LABEL_15:
    sub_26A0E48F0(v67, v53, v54);
    goto LABEL_16;
  }

  v52 = v147;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v44[v51], 1, v39) == 1)
  {

    sub_26A0E48F0(v49, &qword_28036D258, &unk_26A4273E0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v55 = v141;
  sub_26A1C2528();

  v56 = static _ProtoSwitch.== infix(_:_:)(v52, v55);
  sub_26A1C25D0();
  sub_26A0E48F0(v49, &qword_28036D258, &unk_26A4273E0);
  sub_26A1C25D0();
  sub_26A0E48F0(v44, &qword_28036D258, &unk_26A4273E0);
  if ((v56 & 1) == 0)
  {
LABEL_16:

    return 0;
  }

LABEL_8:
  swift_beginAccess();
  v57 = v148;
  sub_26A10FD9C();
  swift_beginAccess();
  v58 = *(v144 + 48);
  v59 = v142;
  sub_26A10FD9C();
  v44 = v59;
  sub_26A10FD9C();
  v60 = v145;
  if (__swift_getEnumTagSinglePayload(v59, 1, v145) == 1)
  {
    sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59 + v58, 1, v60);
    v62 = v146;
    v63 = v143;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v64 = v138;
  sub_26A10FD9C();
  v65 = __swift_getEnumTagSinglePayload(v59 + v58, 1, v60);
  v66 = v146;
  v63 = v143;
  if (v65 == 1)
  {
    sub_26A0E48F0(v148, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_13:
    v53 = &qword_28036C7D0;
    v54 = &qword_26A426DE0;
    goto LABEL_14;
  }

  v69 = v136;
  sub_26A1C2528();
  LODWORD(v147) = static _ProtoTextProperty.== infix(_:_:)(v64, v69);
  sub_26A1C25D0();
  sub_26A0E48F0(v148, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  v70 = v59;
  v62 = v66;
  sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
  if ((v147 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v71 = *(v139 + 48);
  v72 = v137;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v73 = v140;
  if (__swift_getEnumTagSinglePayload(v72, 1, v140) == 1)
  {
    sub_26A0E48F0(v63, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(v72 + v71, 1, v73) == 1)
    {
      sub_26A0E48F0(v72, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v74 = v135;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v72 + v71, 1, v73) == 1)
  {
    sub_26A0E48F0(v63, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
LABEL_24:
    v53 = &qword_28036F088;
    v54 = &unk_26A42C570;
    v67 = v72;
    goto LABEL_15;
  }

  v75 = v133;
  sub_26A1C2528();
  v76 = static _ProtoMultilineTextProperty.== infix(_:_:)(v74, v75);
  sub_26A1C25D0();
  sub_26A0E48F0(v63, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v72, &qword_28036CAE0, &unk_26A4273F0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v77 = *(v139 + 48);
  v78 = v62;
  v79 = v134;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v80 = v140;
  if (__swift_getEnumTagSinglePayload(v79, 1, v140) == 1)
  {
    sub_26A0E48F0(v78, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(v79 + v77, 1, v80) == 1)
    {
      sub_26A0E48F0(v79, &qword_28036CAE0, &unk_26A4273F0);
      v81 = v132;
      goto LABEL_33;
    }

LABEL_31:
    v53 = &qword_28036F088;
    v54 = &unk_26A42C570;
LABEL_46:
    v67 = v79;
    goto LABEL_15;
  }

  v82 = v130;
  sub_26A10FD9C();
  v83 = __swift_getEnumTagSinglePayload(v79 + v77, 1, v80);
  v81 = v132;
  if (v83 == 1)
  {
    sub_26A0E48F0(v146, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
    goto LABEL_31;
  }

  v84 = v133;
  sub_26A1C2528();
  v85 = static _ProtoMultilineTextProperty.== infix(_:_:)(v82, v84);
  sub_26A1C25D0();
  sub_26A0E48F0(v146, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v79, &qword_28036CAE0, &unk_26A4273F0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  swift_beginAccess();
  v86 = v131;
  sub_26A10FD9C();
  swift_beginAccess();
  v87 = *(v144 + 48);
  v79 = v129;
  sub_26A10FD9C();
  v88 = v145;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v79, 1, v88) == 1)
  {
    sub_26A0E48F0(v86, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v79 + v87, 1, v88) == 1)
    {
      sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
      v89 = v128;
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v90 = v127;
  sub_26A10FD9C();
  v91 = __swift_getEnumTagSinglePayload(v79 + v87, 1, v88);
  v89 = v128;
  if (v91 == 1)
  {
    sub_26A0E48F0(v131, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_38:
    v53 = &qword_28036C7D0;
    v54 = &qword_26A426DE0;
    goto LABEL_46;
  }

  v92 = v136;
  sub_26A1C2528();
  LODWORD(v148) = static _ProtoTextProperty.== infix(_:_:)(v90, v92);
  sub_26A1C25D0();
  sub_26A0E48F0(v131, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
  if ((v148 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_40:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v93 = *(v124 + 48);
  v79 = v126;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v94 = v125;
  if (__swift_getEnumTagSinglePayload(v79, 1, v125) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v79 + v93, 1, v94) == 1)
    {
      sub_26A0E48F0(v79, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v95 = v123;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v79 + v93, 1, v94) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_45:
    v53 = &qword_28036D190;
    v54 = &unk_26A427130;
    goto LABEL_46;
  }

  v96 = v119;
  sub_26A1C2528();
  v97 = static _ProtoVisualProperty.== infix(_:_:)(v95, v96);
  sub_26A1C25D0();
  sub_26A0E48F0(v81, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v79, &qword_28036CAE8, &unk_26A426430);
  if ((v97 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v98 = *(v120 + 48);
  v99 = v122;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v100 = v121;
  if (__swift_getEnumTagSinglePayload(v99, 1, v121) == 1)
  {
    sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v99 + v98, 1, v100) == 1)
    {
      sub_26A0E48F0(v99, &off_28036C7C0, &off_26A427400);
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  v112 = v118;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v99 + v98, 1, v100) == 1)
  {
    sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_64:
    v53 = &qword_28036C7C8;
    v54 = &qword_26A425C00;
    v67 = v99;
    goto LABEL_15;
  }

  v113 = v117;
  sub_26A1C2528();
  sub_26A0E36D8(*v112, *v113);
  if ((v114 & 1) == 0 || (v112[1] == v113[1] ? (v115 = v112[2] == v113[2]) : (v115 = 0), !v115 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v67 = v99;
    v53 = &off_28036C7C0;
    v54 = &off_26A427400;
    goto LABEL_15;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v116 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v99, &off_28036C7C0, &off_26A427400);
  if ((v116 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_51:
  v101 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = (v50 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v105 = v102 == *v104 && v103 == v104[1];
  if (!v105 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_16;
  }

  v106 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  v109 = (v50 + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v107 == *v109 && v108 == v109[1])
  {

    return 1;
  }

  v111 = sub_26A425354();

  result = 0;
  if (v111)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1C22E0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425504();
  a1(0);
  v6 = OUTLINED_FUNCTION_125();
  sub_26A1C2664(v6, v7, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1C23B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F020, type metadata accessor for _ProtoSummaryItem_SwitchV2, &protocol conformance descriptor for _ProtoSummaryItem_SwitchV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1C2438(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036EE58, type metadata accessor for _ProtoSummaryItem_SwitchV2, &protocol conformance descriptor for _ProtoSummaryItem_SwitchV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1C24A8(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036EE58, type metadata accessor for _ProtoSummaryItem_SwitchV2, &protocol conformance descriptor for _ProtoSummaryItem_SwitchV2);

  return sub_26A4249B4();
}

uint64_t sub_26A1C2528()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1C257C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1C25D0()
{
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A1C2664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1C35CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  v6 = sub_26A424794();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26A424794();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26A1C3A70(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1C3C34(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1C3E00(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A1C3F70(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A1C40DC(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1C42A4(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A1C4420(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A1C4590(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A1C4710(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1C48DC(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EFE0, type metadata accessor for _ProtoButton);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
        if (v4 <= 0x3F)
        {
          sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26A1C4B00(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1C4CD8(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036F008, type metadata accessor for _ProtoSwitch);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
        if (v4 <= 0x3F)
        {
          sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26A1C4EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A1C4F48(uint64_t a1)
{
  sub_26A1C4EEC(319, &qword_28036F008, type metadata accessor for _ProtoSwitch);
  if (v1 <= 0x3F)
  {
    sub_26A1C4EEC(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1C4EEC(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1C4EEC(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
        if (v4 <= 0x3F)
        {
          sub_26A1C4EEC(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 36), 1, 1, a1);
  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v3 + *(v2 + 36), 1, 1, a1);
  return __swift_getEnumTagSinglePayload(v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_26A0E48F0(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_52_5()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_5@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_60_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67_3()
{
  type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68_1()
{
  type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_75_2()
{
  type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_80_1()
{
  type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_84_2()
{
  type metadata accessor for _ProtoSummaryItem_DetailedText._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_89_1()
{
  type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_90_2()
{
  type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_122_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_123_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_124_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_125_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_126_1()
{
  result = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_128_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_129_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_PairNumber(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_137_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_PairNumber(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_140_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_142_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_Pair(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_Pair(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_147_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_170_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_PairNumberV2(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_171_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_PairNumberV2(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_172_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_177_0(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_Button(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_178_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_Button(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_179_0(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_ShortNumber(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_180_1(uint64_t a1)
{
  type metadata accessor for _ProtoSummaryItem_ShortNumber(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_182_1()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_187_1(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_188_1(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_189_1()
{

  return sub_26A1C2528();
}

uint64_t OUTLINED_FUNCTION_190_1()
{

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t OUTLINED_FUNCTION_191_0()
{

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_26A1C2528();
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  *v0 = v2;
  v0[1] = v1;
}

uint64_t OUTLINED_FUNCTION_208_0()
{
}

uint64_t OUTLINED_FUNCTION_259()
{

  return sub_26A1C25D0();
}

uint64_t OUTLINED_FUNCTION_260()
{

  return sub_26A1C2528();
}

uint64_t OUTLINED_FUNCTION_261()
{
  *v2 = v1;
  v2[1] = v0;
}

uint64_t OUTLINED_FUNCTION_262()
{
  *v2 = v1;
  v2[1] = v0;
}

uint64_t OUTLINED_FUNCTION_263()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_264()
{

  return sub_26A1C2528();
}

uint64_t OUTLINED_FUNCTION_265()
{

  return sub_26A1C2528();
}

uint64_t OUTLINED_FUNCTION_266(uint64_t a1)
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_267()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_280()
{

  return sub_26A10FD9C();
}

Swift::String __swiftcall Color.description(redacted:)(Swift::Bool redacted)
{
  v1 = type metadata accessor for _ProtoColor.HexValue(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = OUTLINED_FUNCTION_246();
  sub_26A1C6A94(v10, v11);
  v12 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) != 1)
  {
    OUTLINED_FUNCTION_175();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v9;
      if (v9[8] == 1)
      {
        OUTLINED_FUNCTION_3_17();
        switch(v13)
        {
          case 2:
          case 7:
            break;
          case 10:
          case 15:
          case 17:
          case 18:
            OUTLINED_FUNCTION_19_11();
            OUTLINED_FUNCTION_3_17();
            break;
          default:
            OUTLINED_FUNCTION_3_17();
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_20_12();

        OUTLINED_FUNCTION_9_12();
        v14 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v14);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
      }
    }

    else
    {
      sub_26A1C90F0(v9, v5);
      v18[2] = 0x2228726F6C6F43;
      v18[3] = 0xE700000000000000;
      MEMORY[0x26D65BA70](*v5, v5[1]);
      MEMORY[0x26D65BA70](10530, 0xE200000000000000);
      OUTLINED_FUNCTION_10_16();
    }
  }

  v15 = OUTLINED_FUNCTION_246();
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_26A1C6A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Color.init(_:)(uint64_t *a1)
{
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_0_25();
  sub_26A1C93B0();
  return sub_26A4249C4();
}

uint64_t sub_26A1C6C14(uint64_t a1, uint64_t a2, char a3)
{
  sub_26A13440C();
  *a1 = a2;
  *(a1 + 8) = a3 & 1;
  v6 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t type metadata accessor for Color(uint64_t a1)
{
  result = qword_2815794D0;
  if (!qword_2815794D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1C6D50(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t sub_26A1C6DCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Color(0);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_0_25();
  sub_26A1C93B0();
  return sub_26A4249C4();
}

uint64_t sub_26A1C6EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Color(0);
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_7_9();
  return sub_26A1C6D50(v7, a4);
}

uint64_t Color.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  sub_26A1C76B8();

  v10 = sub_26A1C76FC(1uLL, a1, a2);
  v11 = MEMORY[0x26D65BA20](v10);
  v13 = v12;

  v14 = sub_26A1C77D0(v11, v13);
  v26 = 0;
  if ((sub_26A424CA4() & 1) != 0 && sub_26A424C14() == 9 && (v15 = [v14 scanHexLongLong_], v15))
  {
    MEMORY[0x28223BE20](v15);
    *(&v25 - 2) = a1;
    *(&v25 - 1) = a2;
    OUTLINED_FUNCTION_0_25();
    sub_26A1C93B0();
    sub_26A4249C4();

    OUTLINED_FUNCTION_8_10();
    sub_26A1C90F0(v9, a3);
    v16 = 0;
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v17 = sub_26A424AE4();
    __swift_project_value_buffer(v17, qword_2803A8950);

    v18 = sub_26A424AD4();
    v19 = sub_26A424E04();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136446210;
      v22 = sub_26A0E8788(a1, a2, v27);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_26A0B8000, v18, v19, "Invalid RGBA string: %{public}s (Expected #AABBCCFF)", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26D65C950](v21, -1, -1);
      MEMORY[0x26D65C950](v20, -1, -1);
    }

    else
    {
    }

    v16 = 1;
  }

  v23 = type metadata accessor for Color(0);
  return __swift_storeEnumTagSinglePayload(a3, v16, 1, v23);
}

unint64_t sub_26A1C76B8()
{
  result = qword_28036F268;
  if (!qword_28036F268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28036F268);
  }

  return result;
}

unint64_t sub_26A1C76FC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_26A424C34();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_26A424CD4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id sub_26A1C77D0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26A424B74();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_26A1C7844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for _ProtoColor.HexValue(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A1C6A94(a1, v8);
  v12 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A1C90F0(v8, v11);
      goto LABEL_7;
    }

    sub_26A1C93F4();
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
LABEL_7:

  *v11 = a2;
  v11[1] = a3;
  sub_26A13440C();
  sub_26A1C90F0(v11, a1);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
}

uint64_t Color.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_0_25();
  sub_26A1C93B0();

  return sub_26A424B44();
}

uint64_t Color.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_0_25();
  sub_26A1C93B0();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1C7B44(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoColor(0);
  sub_26A1C93B0();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t static Color.name.getter()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_246();
}

uint64_t static Color.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aColor_5 = a1;
  qword_28036F260 = a2;
}

uint64_t (*static Color.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static Color.decode(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-1] - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_15_11();
  result = sub_26A425564();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    OUTLINED_FUNCTION_15_11();
    v13 = sub_26A425364();
    v15 = v14;

    v16 = OUTLINED_FUNCTION_127();
    Color.init(_:)(v16, v17, v18);
    v19 = type metadata accessor for Color(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
    {
      sub_26A13440C();

      OUTLINED_FUNCTION_127();
      Color.init(markdownAttributeValue:)(v20);
      if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
      {
        sub_26A13440C();
        sub_26A1C909C();
        swift_allocError();
        *v21 = v13;
        v21[1] = v15;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1(v23);
      }

      v11 = v8;
    }

    sub_26A1C90F0(v11, a2);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t Color.init(markdownAttributeValue:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v7 = type metadata accessor for Color(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_127();
  v12 = sub_26A424BD4();
  v14 = v13;
  if (v12 == 0x6B63616C62 && v13 == 0xE500000000000000)
  {
    goto LABEL_6;
  }

  v16 = v12;
  if (OUTLINED_FUNCTION_5_12(0x6B63616C62, 0xE500000000000000))
  {
    goto LABEL_6;
  }

  v21 = v16 == 1702194274 && v14 == 0xE400000000000000;
  if (v21 || (OUTLINED_FUNCTION_5_12(1702194274, 0xE400000000000000) & 1) != 0)
  {
    goto LABEL_6;
  }

  v22 = v16 == 0x6E776F7262 && v14 == 0xE500000000000000;
  if (v22 || (OUTLINED_FUNCTION_5_12(0x6E776F7262, 0xE500000000000000) & 1) != 0)
  {
    goto LABEL_6;
  }

  v23 = v16 == 0x7261656C63 && v14 == 0xE500000000000000;
  if (v23 || (OUTLINED_FUNCTION_5_12(0x7261656C63, 0xE500000000000000) & 1) != 0)
  {

    type metadata accessor for _ProtoColor(0);
    OUTLINED_FUNCTION_2_11();
    MEMORY[0x28223BE20](v24);
    OUTLINED_FUNCTION_1_17();
    *(v25 - 16) = 1;
    *(v25 - 8) = 1;
    OUTLINED_FUNCTION_0_25();
    sub_26A1C93B0();
    goto LABEL_7;
  }

  v26 = v16 == 1851881827 && v14 == 0xE400000000000000;
  if (v26 || (OUTLINED_FUNCTION_5_12(1851881827, 0xE400000000000000) & 1) != 0 || (v16 == 2036429415 ? (v27 = v14 == 0xE400000000000000) : (v27 = 0), v27 || (OUTLINED_FUNCTION_5_12(2036429415, 0xE400000000000000) & 1) != 0 || (v16 == 0x6E65657267 ? (v28 = v14 == 0xE500000000000000) : (v28 = 0), v28 || (OUTLINED_FUNCTION_5_12(0x6E65657267, 0xE500000000000000) & 1) != 0 || (v16 == 0x6F6769646E69 ? (v29 = v14 == 0xE600000000000000) : (v29 = 0), v29 || (OUTLINED_FUNCTION_5_12(0x6F6769646E69, 0xE600000000000000) & 1) != 0 || (v16 == 1953393005 ? (v30 = v14 == 0xE400000000000000) : (v30 = 0), v30 || (OUTLINED_FUNCTION_5_12(1953393005, 0xE400000000000000) & 1) != 0 || (v16 == 0x65676E61726FLL ? (v31 = v14 == 0xE600000000000000) : (v31 = 0), v31 || (OUTLINED_FUNCTION_5_12(0x65676E61726FLL, 0xE600000000000000) & 1) != 0 || (v16 == 1802398064 ? (v32 = v14 == 0xE400000000000000) : (v32 = 0), v32 || (OUTLINED_FUNCTION_5_12(1802398064, 0xE400000000000000) & 1) != 0 || (v16 == 0x7972616D697270 ? (v33 = v14 == 0xE700000000000000) : (v33 = 0), v33 || (OUTLINED_FUNCTION_5_12(0x7972616D697270, 0xE700000000000000) & 1) != 0 || (v16 == 0x656C70727570 ? (v34 = v14 == 0xE600000000000000) : (v34 = 0), v34 || (OUTLINED_FUNCTION_5_12(0x656C70727570, 0xE600000000000000) & 1) != 0 || (v16 == 6579570 ? (v35 = v14 == 0xE300000000000000) : (v35 = 0), v35 || (OUTLINED_FUNCTION_5_12(6579570, 0xE300000000000000) & 1) != 0 || (v16 == 0x7261646E6F636573 ? (v36 = v14 == 0xE900000000000079) : (v36 = 0), v36 || (OUTLINED_FUNCTION_5_12(0x7261646E6F636573, 0xE900000000000079) & 1) != 0 || (v16 == 1818322292 ? (v37 = v14 == 0xE400000000000000) : (v37 = 0), v37 || (OUTLINED_FUNCTION_5_12(1818322292, 0xE400000000000000) & 1) != 0 || (v16 == 0x6574696877 ? (v38 = v14 == 0xE500000000000000) : (v38 = 0), v38 || (OUTLINED_FUNCTION_5_12(0x6574696877, 0xE500000000000000) & 1) != 0)))))))))))))
  {
LABEL_6:

    type metadata accessor for _ProtoColor(0);
    OUTLINED_FUNCTION_2_11();
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_4_19(v18);
    OUTLINED_FUNCTION_0_25();
    sub_26A1C93B0();
LABEL_7:
    sub_26A4249C4();
    goto LABEL_8;
  }

  if (v16 == 0x776F6C6C6579 && v14 == 0xE600000000000000)
  {

LABEL_113:

    type metadata accessor for _ProtoColor(0);
    OUTLINED_FUNCTION_2_11();
    MEMORY[0x28223BE20](v41);
    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_4_19(v42);
    OUTLINED_FUNCTION_0_25();
    sub_26A1C93B0();
    goto LABEL_7;
  }

  v40 = OUTLINED_FUNCTION_5_12(0x776F6C6C6579, 0xE600000000000000);

  if (v40)
  {
    goto LABEL_113;
  }

  OUTLINED_FUNCTION_127();
  v43 = sub_26A424BE4();
  v45 = v44;

  Color.init(_:)(v43, v45, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_26A13440C();
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v19, 1, v7);
  }

  sub_26A1C90F0(v6, v11);
LABEL_8:
  sub_26A1C90F0(v11, a2);
  v19 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v19, 1, v7);
}

uint64_t static Color.encode(_:to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_26A425584();
  Color.markdownAttributeValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26A425384();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Color.markdownAttributeValue.getter()
{
  v0 = type metadata accessor for _ProtoColor.HexValue(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = OUTLINED_FUNCTION_246();
  sub_26A1C6A94(v9, v10);
  v11 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
  {
    OUTLINED_FUNCTION_175();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v8[8] != 1)
      {
        OUTLINED_FUNCTION_20_12();

        OUTLINED_FUNCTION_9_12();
        v12 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v12);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
      }
    }

    else
    {
      sub_26A1C90F0(v8, v4);

      OUTLINED_FUNCTION_10_16();
    }
  }

  return OUTLINED_FUNCTION_246();
}

unint64_t sub_26A1C909C()
{
  result = qword_28036F270;
  if (!qword_28036F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F270);
  }

  return result;
}

uint64_t sub_26A1C90F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
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

uint64_t sub_26A1C9298(uint64_t a1)
{
  result = type metadata accessor for _ProtoColor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26A1C9324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26A1C9364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A1C93B0()
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

uint64_t sub_26A1C93F4()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1, uint64_t a2)
{

  return sub_26A425354();
}

void OUTLINED_FUNCTION_9_12()
{
  strcpy((v1 - 48), "Unrecognized(");
  *(v1 - 34) = -4864;
  *(v1 - 56) = v0;
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_26A1C93F4();
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  *(v0 - 48) = 0;
  *(v0 - 40) = 0xE000000000000000;

  return sub_26A424EF4();
}

uint64_t _ProtoControl_Slider.slider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoControl_Slider(v5);
  OUTLINED_FUNCTION_88_4();
  v6 = type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_23(v1);
  if (v7)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v8 = *(v6 + 20);
    if (qword_28036C050 != -1)
    {
      OUTLINED_FUNCTION_9_1(&qword_28036C050);
    }

    *(a1 + v8) = qword_28036D8D0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);

    if (EnumTagSinglePayload != 1)
    {
      return sub_26A0E48F0(v1, &qword_28036D078, &qword_26A42C830);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A1CA878();
  }

  return result;
}

uint64_t _ProtoControl_Slider.hasText1.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoControl_Slider(v5);
  OUTLINED_FUNCTION_54_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v6);
  return v0;
}

uint64_t _ProtoControl_Slider.text1.getter()
{
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoControl_Slider(v3);
  OUTLINED_FUNCTION_86_3();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return sub_26A1CA878();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_99_0(v6, v7, v8);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoControl_Slider.hasAction.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoControl_Slider(v5);
  OUTLINED_FUNCTION_54_6();
  v6 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v6);
  return v0;
}

uint64_t _ProtoControl_Slider.action.getter()
{
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoControl_Slider(v3);
  OUTLINED_FUNCTION_88_4();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (v4)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_23(v0);
    if (!v4)
    {
      return sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A1CA878();
  }

  return result;
}

uint64_t _ProtoControl_Slider.slider.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoControl_Slider(v1);
  sub_26A0E48F0(v0 + *(v2 + 24), &qword_28036D078, &qword_26A42C830);
  OUTLINED_FUNCTION_36_1();
  sub_26A1CA878();
  type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoControl_Slider.text1.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoControl_Slider(v1);
  sub_26A0E48F0(v0 + *(v2 + 28), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_36_1();
  sub_26A1CA878();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoControl_Slider.action.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoControl_Slider(v1);
  sub_26A0E48F0(v0 + *(v2 + 32), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_36_1();
  sub_26A1CA878();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoControl_Slider.hasSlider.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoControl_Slider(v5);
  OUTLINED_FUNCTION_54_6();
  v6 = type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_9_11(v6);
  return v0;
}

uint64_t _ProtoControl_Switch.switch.getter()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_26_12(v6);
  OUTLINED_FUNCTION_43_5(v1 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch);
  OUTLINED_FUNCTION_86_3();
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A1CA878();
  }

  *v3 = 0;
  *(v3 + 8) = 0xE000000000000000;
  *(v3 + 16) = 0;
  *(v3 + 24) = xmmword_26A426400;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_99_0(v9, v10, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036D258, &unk_26A4273E0);
  }

  return result;
}

void sub_26A1C9DB4()
{
  OUTLINED_FUNCTION_69_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_124();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_3();
  v5(v12);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_142(v1 + *v3, &v21);
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (v13)
  {
    *v7 = MEMORY[0x277D84F90];
    *(v7 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_99_0(v15, v16, v17);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    OUTLINED_FUNCTION_23(v0);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoControl_Switch.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_12(v5);
  OUTLINED_FUNCTION_43_5(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail);
  OUTLINED_FUNCTION_54_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v6);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoControl_Switch.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_26_12(v4);
  OUTLINED_FUNCTION_43_5(v1 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail);
  OUTLINED_FUNCTION_86_3();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v5)
  {
    return sub_26A1CA878();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_99_0(v7, v8, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v5)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoControl_Switch.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_12(v5);
  OUTLINED_FUNCTION_43_5(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action);
  OUTLINED_FUNCTION_54_6();
  v6 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v6);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoControl_Switch.action.getter()
{
  OUTLINED_FUNCTION_19_0();
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_12(v4);
  OUTLINED_FUNCTION_43_5(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action);
  OUTLINED_FUNCTION_88_4();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v1);
  if (v5)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v5)
    {
      return sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A1CA878();
  }

  return result;
}

uint64_t _ProtoControl_Switch.switch.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_Switch._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1CD104();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoControl_Switch.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_Switch._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1CD104();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoControl_Switch.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_Switch._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1CD104();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoControl_Switch.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_Switch._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1CD104();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoControl_Switch.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_Switch._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1CD104();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t sub_26A1CA778()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v4(0, v7);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_43_5(v0 + *v2);
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v9, 1, v10);
  sub_26A0E48F0(v9, &qword_28036C7B8, &unk_26A425BF0);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A1CA878()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void _ProtoControl_Switch.switch.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoSwitch(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    v13[16] = 0;
    *(v13 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoControl_Switch.hasSwitch.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_12(v5);
  OUTLINED_FUNCTION_43_5(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch);
  OUTLINED_FUNCTION_54_6();
  v6 = type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_9_11(v6);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A1CAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  sub_26A1CD53C();
  return a7(v7);
}

void _ProtoControl_Switch.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A1CAD48()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  v7 = *(type metadata accessor for _ProtoControl_Switch(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoControl_Switch._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1CD104();
    *(v0 + v7) = v8;
  }

  v2(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_91_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

void _ProtoControl_Switch.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoControl_Switch.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoVisualProperty(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoControl_Switch.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoActionProperty(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    *v13 = MEMORY[0x277D84F90];
    v13[1] = 0;
    v13[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1CB2F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoControl_Switch.componentName.setter(v1, v2);
}

uint64_t _ProtoControl_Switch.componentName.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = type metadata accessor for _ProtoControl_Switch(v3);
  OUTLINED_FUNCTION_42_6(v4);
  OUTLINED_FUNCTION_38_6();
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_133();
}

void _ProtoControl_Slider.slider.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for _ProtoSlider(0);
  v0[2] = v5;
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_87_3(v8);
  OUTLINED_FUNCTION_85_2(*(v9 + 24));
  OUTLINED_FUNCTION_1_4();
  if (v10)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v11 = *(v5 + 20);
    if (qword_28036C050 != -1)
    {
      OUTLINED_FUNCTION_9_1(&qword_28036C050);
    }

    *(v7 + v11) = qword_28036D8D0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A0E48F0(v4, &qword_28036D078, &qword_26A42C830);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoControl_Slider.clearSlider()()
{
  v1 = type metadata accessor for _ProtoControl_Slider(0);
  sub_26A0E48F0(v0 + *(v1 + 24), &qword_28036D078, &qword_26A42C830);
  type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoControl_Slider.text1.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v0[2] = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_87_3(v7);
  OUTLINED_FUNCTION_85_2(*(v8 + 28));
  OUTLINED_FUNCTION_1_4();
  if (v9)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v10 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v10);
    if (!v9)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A1CB7DC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[2];
  v20 = (*a1)[1];
  v13 = **a1;
  if (a2)
  {
    sub_26A1CD53C();
    sub_26A0E48F0(v13 + v9, a3, a4);
    sub_26A1CA878();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_26A1CD590();
  }

  else
  {
    sub_26A0E48F0(v13 + v9, a3, a4);
    sub_26A1CA878();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v11);
  free(v10);
  free(v20);

  free(v8);
}

Swift::Void __swiftcall _ProtoControl_Slider.clearText1()()
{
  v1 = type metadata accessor for _ProtoControl_Slider(0);
  sub_26A0E48F0(v0 + *(v1 + 28), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoControl_Slider.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  *(v0 + 16) = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  *(v0 + 40) = *(OUTLINED_FUNCTION_87_3(v7) + 32);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v4);
  if (v8)
  {
    *v6 = MEMORY[0x277D84F90];
    v6[1] = 0;
    v6[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v4);
    if (!v8)
    {
      sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoControl_Slider.clearAction()()
{
  v1 = type metadata accessor for _ProtoControl_Slider(0);
  sub_26A0E48F0(v0 + *(v1 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoControl_Slider.componentName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _ProtoControl_Slider.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoControl_Slider(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoControl_Slider.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoControl_Slider(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*_ProtoControl_Slider.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoControl_Slider(v0);
  return nullsub_1;
}

uint64_t _ProtoControl_Slider.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for _ProtoControl_Slider(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t _ProtoControl_PlayerButton.label1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_PlayerButton(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_PlayerButton._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1D1368();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoControl_PlayerButton.label1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  type metadata accessor for _ProtoControl_PlayerButton(0);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoControl_PlayerButton.label2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoControl_PlayerButton(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_PlayerButton._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1D1368();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_79_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoControl_PlayerButton.label2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_12();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  type metadata accessor for _ProtoControl_PlayerButton(0);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1CA878();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A1CC2C0()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_103();
    sub_26A1CD53C();
    v2(v3);
    sub_26A1CD590();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_67_1();

  free(v7);
}

uint64_t sub_26A1CC390()
{
  OUTLINED_FUNCTION_19_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for _ProtoControl_PlayerButton(0);
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    type metadata accessor for _ProtoControl_PlayerButton._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1D1368();
    OUTLINED_FUNCTION_42_1(v3);
  }

  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoControl_PlayerButton.player.getter()
{
  v1 = type metadata accessor for _ProtoControl_PlayerButton(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v1 + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, v3);
}

uint64_t _ProtoControl_PlayerButton.player.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_110();
  v4 = *(type metadata accessor for _ProtoControl_PlayerButton(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoControl_PlayerButton._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1D1368();
    v6 = v7;
    *(v2 + v4) = v7;
  }

  v8 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  OUTLINED_FUNCTION_26_10(v6 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, v10);
  *(v6 + v8) = v0;
}

uint64_t _ProtoControl_PlayerButton.player.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *v0 = v2;
  v2[7] = v1;
  v3 = *(type metadata accessor for _ProtoControl_PlayerButton(0) + 20);
  *(v2 + 16) = v3;
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, v2);
  v2[6] = *(v4 + v5);

  return OUTLINED_FUNCTION_133();
}

void sub_26A1CC620(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    _ProtoControl_PlayerButton.player.setter();
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
      type metadata accessor for _ProtoControl_PlayerButton._StorageClass(0);
      OUTLINED_FUNCTION_100_0();
      swift_allocObject();
      OUTLINED_FUNCTION_5_3();
      sub_26A1D1368();
      v7 = v10;
      *(v9 + v8) = v10;
    }

    v11 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
    OUTLINED_FUNCTION_26_10(v7 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, v2 + 24);
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t sub_26A1CC708(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142(v3, v6);
  v4 = *v3;

  return v4;
}

uint64_t sub_26A1CC770(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoControl_PlayerButton.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t sub_26A1CC7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
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

uint64_t _ProtoControl_PlayerButton.componentName.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = type metadata accessor for _ProtoControl_PlayerButton(v3);
  OUTLINED_FUNCTION_42_6(v4);
  OUTLINED_FUNCTION_38_6();
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A1CC98C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoControl_PlayerButton.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoControl_PlayerButton.linkIdentifier.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  v3 = OUTLINED_FUNCTION_20_11(v2);
  v4 = type metadata accessor for _ProtoControl_PlayerButton(v3);
  OUTLINED_FUNCTION_42_6(v4);
  OUTLINED_FUNCTION_38_6();
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_133();
}

void sub_26A1CCACC()
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

uint64_t _s10SnippetKit20_ProtoControl_SwitchV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_110();
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_26A1CCC6C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_26A1CCCFC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F298);
  __swift_project_value_buffer(v0, qword_28036F298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26A42B080;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "switch";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "text_1";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_2";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "thumbnail";
  *(v13 + 1) = 9;
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

uint64_t sub_26A1CD018()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch;
  v2 = type metadata accessor for _ProtoSwitch(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1CD104()
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_74_4();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = (v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch, &v40);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_91_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, &v39);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, &v38);
  OUTLINED_FUNCTION_69_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail, &v37);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_91_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action, &v36);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_91_2();
  sub_26A10CF40();
  swift_endAccess();
  v31 = (v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName, &v35);
  v33 = *v31;
  v32 = v31[1];

  OUTLINED_FUNCTION_26_10(v30, &v34);
  *v30 = v33;
  v30[1] = v32;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1CD53C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1CD590()
{
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A1CD624()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch, &qword_28036D258, &unk_26A4273E0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1CD770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1CD89C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1CD978(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1CDA54(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1CDB30(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1CDC0C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1CD89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoSwitch(0);
  sub_26A1D15D0(&qword_28036D390, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1CD978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1CDA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1CDB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1D15D0(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1CDC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1D15D0(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1CDD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1CDE54(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1CE048(a1, a2, a3, a4);
    sub_26A1CE23C(a1, a2, a3, a4);
    sub_26A1CE430(a1, a2, a3, a4);
    sub_26A1CE624(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
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

  return result;
}

uint64_t sub_26A1CDE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036D258, &unk_26A4273E0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036D390, type metadata accessor for _ProtoSwitch, &protocol conformance descriptor for _ProtoSwitch);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1CE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1CE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1CE430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A1CA878();
  sub_26A1D15D0(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1CE624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

void sub_26A1CE844()
{
  OUTLINED_FUNCTION_76();
  v145 = v0;
  v2 = v1;
  v126 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v122 = v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v127 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v123 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48();
  v129 = v11;
  v12 = OUTLINED_FUNCTION_45();
  v131 = type metadata accessor for _ProtoVisualProperty(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v124 = v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v132 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v128 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v138 = v21;
  v22 = OUTLINED_FUNCTION_45();
  v144 = type metadata accessor for _ProtoTextProperty(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v134 = v24;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v135 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v140 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v133 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  v142 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v136 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_48();
  v139 = v37;
  v38 = OUTLINED_FUNCTION_45();
  v39 = type metadata accessor for _ProtoSwitch(v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11();
  v137 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F090, &qword_26A42C580) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v43);
  v45 = &v121 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  v47 = OUTLINED_FUNCTION_41(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8();
  v143 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  v51 = &v121 - v50;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch, &v157);
  sub_26A10FD9C();
  v52 = v145;
  OUTLINED_FUNCTION_142(v145 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch, &v156);
  v53 = *(v42 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v45, 1, v39);
  if (v55)
  {

    sub_26A0E48F0(v51, &qword_28036D258, &unk_26A4273E0);
    OUTLINED_FUNCTION_37(&v45[v53], 1, v39);
    if (v55)
    {
      sub_26A0E48F0(v45, &qword_28036D258, &unk_26A4273E0);
      goto LABEL_11;
    }

LABEL_9:
    v56 = &qword_28036F090;
    v57 = &qword_26A42C580;
LABEL_20:
    v69 = v45;
    goto LABEL_21;
  }

  v54 = v143;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v45[v53], 1, v39);
  if (v55)
  {

    sub_26A0E48F0(v51, &qword_28036D258, &unk_26A4273E0);
    sub_26A1CD590();
    goto LABEL_9;
  }

  v58 = v137;
  sub_26A1CA878();

  v59 = static _ProtoSwitch.== infix(_:_:)(v54, v58);
  sub_26A1CD590();
  sub_26A0E48F0(v51, &qword_28036D258, &unk_26A4273E0);
  sub_26A1CD590();
  sub_26A0E48F0(v45, &qword_28036D258, &unk_26A4273E0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, &v155);
  v60 = v139;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v52 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, &v154);
  v61 = v140;
  v62 = v141;
  v63 = *(v141 + 48);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  v45 = v61;
  sub_26A10FD9C();
  v64 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v64, v65, v144);
  if (v55)
  {
    sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(&v61[v63]);
    v66 = v138;
    v67 = v142;
    if (v55)
    {
      sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v61[v63]);
  v67 = v142;
  if (v68)
  {
    sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_5_13();
    sub_26A1CD590();
LABEL_19:
    v56 = &qword_28036C7D0;
    v57 = &qword_26A426DE0;
    goto LABEL_20;
  }

  sub_26A1CA878();
  v70 = OUTLINED_FUNCTION_103();
  LODWORD(v143) = static _ProtoTextProperty.== infix(_:_:)(v70, v71);
  sub_26A1CD590();
  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_88();
  sub_26A1CD590();
  sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
  v66 = v138;
  if ((v143 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, &v153);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v52 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, &v152);
  v72 = *(v62 + 48);
  v73 = v67;
  v74 = v135;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v74);
  if (v55)
  {
    sub_26A0E48F0(v73, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_14_9(v74 + v72);
    if (v55)
    {
      sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_34;
    }

LABEL_32:
    v56 = &qword_28036C7D0;
    v57 = &qword_26A426DE0;
LABEL_43:
    v69 = v74;
    goto LABEL_21;
  }

  v75 = v133;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v74 + v72);
  if (v76)
  {
    sub_26A0E48F0(v142, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_5_13();
    sub_26A1CD590();
    goto LABEL_32;
  }

  v77 = v134;
  sub_26A1CA878();
  v78 = static _ProtoTextProperty.== infix(_:_:)(v75, v77);
  sub_26A1CD590();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v79, v80, v81);
  sub_26A1CD590();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v82, v83, v84);
  if ((v78 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail, &v151);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v52 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail, &v150);
  v85 = *(v130 + 48);
  v74 = v132;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v86 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v86, v87, v131);
  if (v55)
  {
    sub_26A0E48F0(v66, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(v74 + v85);
    if (v55)
    {
      sub_26A0E48F0(v74, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v74 + v85);
  if (v88)
  {
    sub_26A0E48F0(v66, &qword_28036CAE8, &unk_26A426430);
    sub_26A1CD590();
LABEL_42:
    v56 = &qword_28036D190;
    v57 = &unk_26A427130;
    goto LABEL_43;
  }

  sub_26A1CA878();
  v89 = OUTLINED_FUNCTION_103();
  v91 = static _ProtoVisualProperty.== infix(_:_:)(v89, v90);
  sub_26A1CD590();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v92, v93, v94);
  sub_26A1CD590();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v95, v96, v97);
  if ((v91 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_45:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action, &v149);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v52 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action, &v148);
  v98 = *(v125 + 48);
  v99 = v127;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v100 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v100, v101, v126);
  if (!v55)
  {
    v107 = v123;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v99 + v98);
    if (!v108)
    {
      v109 = v122;
      sub_26A1CA878();
      sub_26A0E36D8(*v107, *v109);
      if (v110)
      {
        v111 = v107[1] == v109[1] && v107[2] == v109[2];
        if (v111 || (sub_26A425354() & 1) != 0)
        {
          sub_26A424794();
          OUTLINED_FUNCTION_2_12();
          sub_26A1D15D0(v112, v113, MEMORY[0x277D216D0]);
          v114 = sub_26A424B64();
          sub_26A1CD590();
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v115, v116, v117);
          sub_26A1CD590();
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v118, v119, v120);
          if ((v114 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_50;
        }
      }

      sub_26A1CD590();
      sub_26A0E48F0(v129, &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_94_1();
      sub_26A1CD590();
      v69 = OUTLINED_FUNCTION_88();
      v57 = &off_26A427400;
LABEL_21:
      sub_26A0E48F0(v69, v56, v57);
      goto LABEL_22;
    }

    sub_26A0E48F0(v129, &off_28036C7C0, &off_26A427400);
    sub_26A1CD590();
LABEL_58:
    v56 = &qword_28036C7C8;
    v57 = &qword_26A425C00;
    v69 = v99;
    goto LABEL_21;
  }

  sub_26A0E48F0(v129, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_9(v99 + v98);
  if (!v55)
  {
    goto LABEL_58;
  }

  sub_26A0E48F0(v99, &off_28036C7C0, &off_26A427400);
LABEL_50:
  v102 = (v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName, &v147);
  v103 = *v102;
  v104 = v102[1];
  v105 = (v52 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v52 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName, &v146);
  if (v103 != *v105 || v104 != v105[1])
  {
    sub_26A425354();
  }

LABEL_22:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1CF798(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1D15D0(&qword_28036F408, type metadata accessor for _ProtoControl_Switch, &protocol conformance descriptor for _ProtoControl_Switch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1CF818(uint64_t a1)
{
  v2 = sub_26A1D15D0(&qword_28036D2A0, type metadata accessor for _ProtoControl_Switch, &protocol conformance descriptor for _ProtoControl_Switch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1CF888(uint64_t a1, uint64_t a2)
{
  sub_26A1D15D0(&qword_28036D2A0, type metadata accessor for _ProtoControl_Switch, &protocol conformance descriptor for _ProtoControl_Switch);

  return sub_26A4249B4();
}

uint64_t sub_26A1CF914()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F2B8);
  __swift_project_value_buffer(v0, qword_28036F2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "slider";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = 0x26A44B000;
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "component_name";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoControl_Slider.decodeMessage<A>(decoder:)()
{
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
        sub_26A1CFC3C(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A1CFCF0(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A1CFDA4(v7, v8, v9, v10);
        break;
      case 4:
        sub_26A424924();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1CFC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoControl_Slider(0);
  type metadata accessor for _ProtoSlider(0);
  sub_26A1D15D0(&qword_28036D918, type metadata accessor for _ProtoSlider, &protocol conformance descriptor for _ProtoSlider);
  return sub_26A424944();
}

uint64_t sub_26A1CFCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoControl_Slider(0);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A1CFDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoControl_Slider(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1D15D0(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoControl_Slider.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A1CFF4C(v3, a1, a2, a3);
  if (!v4)
  {
    v8 = OUTLINED_FUNCTION_124();
    sub_26A1D012C(v8, v9, a2, a3);
    v10 = OUTLINED_FUNCTION_124();
    sub_26A1D030C(v10, v11, a2, a3);
    v12 = v3[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_26A424A64();
    }

    type metadata accessor for _ProtoControl_Slider(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1CFF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoSlider(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoControl_Slider(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036D078, &qword_26A42C830);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036D918, type metadata accessor for _ProtoSlider, &protocol conformance descriptor for _ProtoSlider);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoControl_Slider(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoControl_Slider(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

void static _ProtoControl_Slider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v75 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v71 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v72 = v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v76 = v10;
  v11 = OUTLINED_FUNCTION_45();
  v79 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v73 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v77 = v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42();
  v80 = v18;
  v19 = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for _ProtoSlider(v19);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D078, &qword_26A42C830);
  OUTLINED_FUNCTION_41(v24);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F350, &qword_26A42C838) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  v31 = &v70 - v30;
  v81 = type metadata accessor for _ProtoControl_Slider(0);
  v82 = v3;
  v32 = *(v28 + 56);
  sub_26A10FD9C();
  v83 = v1;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v31);
  if (v33)
  {
    OUTLINED_FUNCTION_9(&v31[v32]);
    if (v33)
    {
      sub_26A0E48F0(v31, &qword_28036D078, &qword_26A42C830);
      goto LABEL_13;
    }

LABEL_9:
    v34 = &qword_28036F350;
    v35 = &qword_26A42C838;
LABEL_35:
    v61 = v31;
LABEL_36:
    sub_26A0E48F0(v61, v34, v35);
    goto LABEL_37;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v31[v32]);
  if (v33)
  {
    sub_26A1CD590();
    goto LABEL_9;
  }

  sub_26A1CA878();
  v36 = *(v20 + 20);
  v37 = *&v27[v36];
  v38 = *&v23[v36];
  if (v37 != v38)
  {

    v39 = sub_26A15C47C(v37, v38);

    if (!v39)
    {
      sub_26A1CD590();
      sub_26A1CD590();
      v34 = &qword_28036D078;
      v35 = &qword_26A42C830;
      goto LABEL_35;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_12();
  sub_26A1D15D0(v40, v41, MEMORY[0x277D216D0]);
  v42 = sub_26A424B64();
  sub_26A1CD590();
  OUTLINED_FUNCTION_94_1();
  sub_26A1CD590();
  sub_26A0E48F0(v31, &qword_28036D078, &qword_26A42C830);
  if ((v42 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_13:
  v43 = v82;
  v44 = *(v78 + 48);
  v31 = v80;
  OUTLINED_FUNCTION_78_3();
  v45 = v83;
  OUTLINED_FUNCTION_78_3();
  v46 = OUTLINED_FUNCTION_107();
  v47 = v79;
  OUTLINED_FUNCTION_37(v46, v48, v79);
  if (v33)
  {
    OUTLINED_FUNCTION_37(&v31[v44], 1, v47);
    if (v33)
    {
      sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v49 = v77;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v31[v44], 1, v47);
  if (v50)
  {
    sub_26A1CD590();
LABEL_21:
    v34 = &qword_28036C7D0;
    v35 = &qword_26A426DE0;
    goto LABEL_35;
  }

  v51 = v73;
  sub_26A1CA878();
  static _ProtoTextProperty.== infix(_:_:)(v49, v51);
  OUTLINED_FUNCTION_36_6();
  sub_26A1CD590();
  OUTLINED_FUNCTION_94_1();
  sub_26A1CD590();
  sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_23:
  v52 = *(v74 + 48);
  v53 = v76;
  OUTLINED_FUNCTION_78_3();
  v54 = v53;
  OUTLINED_FUNCTION_78_3();
  v55 = OUTLINED_FUNCTION_107();
  v56 = v75;
  OUTLINED_FUNCTION_37(v55, v57, v75);
  if (!v33)
  {
    v62 = v72;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v54 + v52, 1, v56);
    if (!v63)
    {
      v64 = v71;
      sub_26A1CA878();
      sub_26A0E36D8(*v62, *v64);
      if (v65)
      {
        v66 = v62[1] == v64[1] && v62[2] == v64[2];
        if (v66 || (sub_26A425354() & 1) != 0)
        {
          sub_26A424794();
          OUTLINED_FUNCTION_2_12();
          sub_26A1D15D0(v67, v68, MEMORY[0x277D216D0]);
          v69 = sub_26A424B64();
          sub_26A1CD590();
          sub_26A1CD590();
          sub_26A0E48F0(v54, &off_28036C7C0, &off_26A427400);
          if ((v69 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_28;
        }
      }

      sub_26A1CD590();
      sub_26A1CD590();
      v34 = &off_28036C7C0;
      v35 = &off_26A427400;
      goto LABEL_51;
    }

    sub_26A1CD590();
LABEL_41:
    v34 = &qword_28036C7C8;
    v35 = &qword_26A425C00;
LABEL_51:
    v61 = v54;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_37(v53 + v52, 1, v56);
  if (!v33)
  {
    goto LABEL_41;
  }

  sub_26A0E48F0(v53, &off_28036C7C0, &off_26A427400);
LABEL_28:
  v58 = *v43 == *v45 && v43[1] == v45[1];
  if (v58 || (sub_26A425354() & 1) != 0)
  {
    sub_26A424794();
    OUTLINED_FUNCTION_2_12();
    sub_26A1D15D0(v59, v60, MEMORY[0x277D216D0]);
    sub_26A424B64();
  }

LABEL_37:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1D0E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1D15D0(&qword_28036F400, type metadata accessor for _ProtoControl_Slider, &protocol conformance descriptor for _ProtoControl_Slider);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1D0E84(uint64_t a1)
{
  v2 = sub_26A1D15D0(&qword_28036D080, type metadata accessor for _ProtoControl_Slider, &protocol conformance descriptor for _ProtoControl_Slider);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1D0EF4(uint64_t a1, uint64_t a2)
{
  sub_26A1D15D0(&qword_28036D080, type metadata accessor for _ProtoControl_Slider, &protocol conformance descriptor for _ProtoControl_Slider);

  return sub_26A4249B4();
}

uint64_t sub_26A1D0F90()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F2D0);
  __swift_project_value_buffer(v0, qword_28036F2D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label_1";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label_2";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "player";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "component_name";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "link_identifier";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A1D1274(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_100_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A1D12C4()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player) = MEMORY[0x277D84F90];
  v3 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1D1368()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v12 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player) = MEMORY[0x277D84F90];
  v13 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1, &v30);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, &v29);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, &v28);
  v16 = *(v2 + v15);
  OUTLINED_FUNCTION_26_10(v0 + v12, &v27);
  *(v0 + v12) = v16;

  v17 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName, &v26);
  v19 = *v17;
  v18 = v17[1];
  OUTLINED_FUNCTION_26_10(v13, &v25);
  *v13 = v19;
  v13[1] = v18;

  v20 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier, &v24);
  v22 = *v20;
  v21 = v20[1];

  OUTLINED_FUNCTION_26_10(v14, &v23);
  *v14 = v22;
  v14[1] = v21;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1D15D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1D1618()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, &qword_28036C7B8, &unk_26A425BF0);

  return v0;
}

uint64_t sub_26A1D16D0(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A1D1780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26A1D1844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1D1958(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1D1A34(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1D1B10(a2, a1, a3, a4);
        break;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName;
        goto LABEL_8;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier;
LABEL_8:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1D1958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1D1A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1D1B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A1D15D0(&qword_28036D1F0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A424934();
  return swift_endAccess();
}

uint64_t sub_26A1D1C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_90_3();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1D1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1D1E88(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1D207C(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for _ProtoPlayer(0);
      sub_26A1D15D0(&qword_28036D1F0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);

      sub_26A424A74();
    }

    v11 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      sub_26A424A64();
    }

    v15 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A1D1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1CA878();
  sub_26A1D15D0(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1CD590();
}

uint64_t sub_26A1D229C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_12();
  sub_26A1D15D0(v11, v12, MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

void sub_26A1D2380()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v70 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v73 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  v13 = OUTLINED_FUNCTION_44();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v69 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  v72 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  v74 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  OUTLINED_FUNCTION_142(v3 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1, &v84);
  OUTLINED_FUNCTION_90_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label1, &v83);
  v71 = v7;
  v25 = *(v7 + 48);
  OUTLINED_FUNCTION_90_3();
  sub_26A10FD9C();
  v26 = v1;
  OUTLINED_FUNCTION_90_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v12, 1, v4);
  if (v29)
  {

    sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_14_9(&v12[v25]);
    v27 = v3;
    if (v29)
    {
      sub_26A0E48F0(v12, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v30 = v12;
LABEL_20:
    sub_26A0E48F0(v30, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_21;
  }

  v27 = v3;
  v28 = v74;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(&v12[v25]);
  if (v29)
  {

    sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_5_13();
    sub_26A1CD590();
    goto LABEL_9;
  }

  v31 = v70;
  sub_26A1CA878();

  v32 = static _ProtoTextProperty.== infix(_:_:)(v28, v31);
  sub_26A1CD590();
  sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1CD590();
  v33 = OUTLINED_FUNCTION_94_1();
  sub_26A0E48F0(v33, v34, &unk_26A425BF0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_142(v27 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, &v82);
  v35 = v72;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_142(v26 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__label2, &v81);
  v36 = *(v71 + 48);
  v37 = v73;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_14_9(v37);
  if (!v29)
  {
    v38 = v69;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v37 + v36);
    if (!v39)
    {
      v40 = v70;
      sub_26A1CA878();
      static _ProtoTextProperty.== infix(_:_:)(v38, v40);
      OUTLINED_FUNCTION_36_6();
      sub_26A1CD590();
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v41, v42, v43);
      sub_26A1CD590();
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v44, v45, v46);
      if ((&qword_28036C7B8 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_5_13();
    sub_26A1CD590();
    goto LABEL_19;
  }

  sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_14_9(v37 + v36);
  if (!v29)
  {
LABEL_19:
    v30 = v37;
    goto LABEL_20;
  }

  sub_26A0E48F0(v37, &qword_28036C7B8, &unk_26A425BF0);
LABEL_23:
  OUTLINED_FUNCTION_142(v27 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, &v80);
  OUTLINED_FUNCTION_142(v26 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__player, &v79);

  v47 = OUTLINED_FUNCTION_175();
  sub_26A0E3F04(v47, v48, v49, v50, v51, v52, v53, v54, v68, v69, v70, v71);
  v55 = v27;
  v57 = v56;

  if (v57)
  {
    v58 = (v55 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
    OUTLINED_FUNCTION_142(v55 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName, &v78);
    v59 = *v58;
    v60 = v58[1];
    v61 = (v26 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
    OUTLINED_FUNCTION_142(v26 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName, &v77);
    v62 = v59 == *v61 && v60 == v61[1];
    if (v62 || (OUTLINED_FUNCTION_133(), (sub_26A425354() & 1) != 0))
    {
      v63 = (v55 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
      OUTLINED_FUNCTION_142(v55 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier, &v76);
      v64 = *v63;
      v65 = v63[1];
      v66 = (v26 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier);
      OUTLINED_FUNCTION_142(v26 + OBJC_IVAR____TtCV10SnippetKit26_ProtoControl_PlayerButtonP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__linkIdentifier, &v75);
      if (v64 != *v66 || v65 != v66[1])
      {
        OUTLINED_FUNCTION_133();
        sub_26A425354();
      }
    }
  }

LABEL_21:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1D2A4C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425504();
  a1(0);
  v6 = OUTLINED_FUNCTION_125();
  sub_26A1D15D0(v6, v7, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1D2DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1D15D0(&qword_28036F3F8, type metadata accessor for _ProtoControl_PlayerButton, &protocol conformance descriptor for _ProtoControl_PlayerButton);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1D2EBC(uint64_t a1)
{
  v2 = sub_26A1D15D0(&qword_28036F390, type metadata accessor for _ProtoControl_PlayerButton, &protocol conformance descriptor for _ProtoControl_PlayerButton);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1D2F74(uint64_t a1, uint64_t a2)
{
  sub_26A1D15D0(&qword_28036F390, type metadata accessor for _ProtoControl_PlayerButton, &protocol conformance descriptor for _ProtoControl_PlayerButton);

  return sub_26A4249B4();
}

void sub_26A1D305C(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A1D353C(319, &qword_28036F3C0, type metadata accessor for _ProtoSlider);
    if (v2 <= 0x3F)
    {
      sub_26A1D353C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1D353C(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  sub_26A424794();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_44_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_26A424794();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_26A1D32F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A1D3384(uint64_t a1)
{
  sub_26A1D353C(319, &qword_28036F008, type metadata accessor for _ProtoSwitch);
  if (v1 <= 0x3F)
  {
    sub_26A1D353C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1D353C(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A1D353C(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A1D353C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A1D3598(uint64_t a1)
{
  sub_26A1D353C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_43_5(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_79_5()
{

  return sub_26A1CA878();
}

uint64_t OUTLINED_FUNCTION_85_2@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_86_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_87_3(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for _ProtoControl_Slider(0);
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return sub_26A10FD9C();
}

uint64_t Button.action.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_51_1();
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = (v8 - v7);
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, v13);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_15(v2);
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    v9[1] = 0;
    v9[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_15(v2);
    if (!v11)
    {
      sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  return sub_26A1D7028();
}

uint64_t Button.label.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_51_1();
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, v20);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_15(v2);
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_15(v2);
    if (!v11)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  return sub_26A1D7028();
}

void Button.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v32 = v1;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v15 + 20)) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, &v33);
  sub_26A10FD9C();
  v16 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v2);
  v18 = v32;
  sub_26A0E48F0(v14, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v19 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v19, v20, v2);
    if (v21)
    {
      *v6 = MEMORY[0x277D84F90];
      *(v6 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v22 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
      v29 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v29, v30, v2);
      if (!v21)
      {
        sub_26A0E48F0(v11, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1D7028();
    }

    sub_26A1D7028();
    v16 = 0;
  }

  v31 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v18, v16, 1, v31);
  OUTLINED_FUNCTION_75();
}

uint64_t Button.formAction.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoButton(v2);
  OUTLINED_FUNCTION_25_11();
  result = OUTLINED_FUNCTION_18_10(v3);
  v5 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v5;
  return result;
}

uint64_t Button.labelStyle.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoButton(v2);
  OUTLINED_FUNCTION_25_11();
  result = OUTLINED_FUNCTION_18_10(v3);
  if (v1[8] == 1)
  {
    v5 = *v1;
  }

  else
  {
    v5 = 1;
  }

  *v0 = v5;
  return result;
}

uint64_t Button.buttonRole.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoButton(v2);
  OUTLINED_FUNCTION_25_11();
  result = OUTLINED_FUNCTION_18_10(v3);
  if (v1[8] == 1)
  {
    v5 = *v1;
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

char *ButtonRole.init(proto:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[8] == 1)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t Button.componentName.getter()
{
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_25_11();
  v1 = (v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
  OUTLINED_FUNCTION_20_13(v2, v5);
  v3 = *v1;

  return v3;
}

uint64_t Button.linkIdentifier.getter()
{
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_25_11();
  v1 = (v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_20_13(v2, v5);
  v3 = *v1;

  return v3;
}

uint64_t Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v12, v13, &protocol conformance descriptor for _ProtoButton);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A1D41F4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v57 = a5;
  v54 = a4;
  v15 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = &v51 - v18;
  v55 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v55);
  v51 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v52 = &v51 - v21;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v22 - 8);
  v23 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v23 - 8);
  v24 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v24 - 8);
  v25 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v25 - 8);
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 8))(v26, v27);
  sub_26A1D7028();
  _ProtoButton.action.setter();
  v28 = a3[3];
  v29 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v28);
  (*(v29 + 8))(v28, v29);
  sub_26A1D7028();
  _ProtoButton.label.setter();
  sub_26A10FD9C();
  v30 = v62;
  if (v62)
  {
    v31 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v31 + 8))(v30, v31);
    v32 = v56;
    sub_26A1D7028();
    v33 = v55;
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v55);
    __swift_destroy_boxed_opaque_existential_1(v61);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      v34 = v52;
      sub_26A1D7028();
      sub_26A1D707C();
      _ProtoButton.thumbnail.setter();
      sub_26A1D6FD0(v34, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v61, &qword_28036CB00, &unk_26A426450);
    v32 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v55);
  }

  sub_26A0E48F0(v32, &qword_28036CAE8, &unk_26A426430);
LABEL_6:
  v35 = *(type metadata accessor for _ProtoButton(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a1 + v35);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoButton._StorageClass(0);
    swift_allocObject();
    sub_26A2A11E0();
    v37 = v38;
    *(a1 + v35) = v38;
  }

  v39 = v37 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction;
  swift_beginAccess();
  *v39 = v57;
  *(v39 + 8) = v58 & 1;
  v40 = v59;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a1 + v35);
  if ((v41 & 1) == 0)
  {
    type metadata accessor for _ProtoButton._StorageClass(0);
    swift_allocObject();
    sub_26A2A11E0();
    v42 = v43;
    *(a1 + v35) = v43;
  }

  v44 = v42 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle;
  swift_beginAccess();
  *v44 = v40;
  *(v44 + 8) = 1;
  v45 = v60;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a1 + v35);
  if ((v46 & 1) == 0)
  {
    type metadata accessor for _ProtoButton._StorageClass(0);
    swift_allocObject();
    sub_26A2A11E0();
    v47 = v48;
    *(a1 + v35) = v48;
  }

  v49 = v47 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
  swift_beginAccess();
  *v49 = v45;
  *(v49 + 8) = 1;

  result = _ProtoButton.componentName.setter(a9, a10);
  if (a12)
  {

    return _ProtoButton.linkIdentifier.setter(a11, a12);
  }

  return result;
}

uint64_t Button.init(action:label:thumbnail:formAction:labelStyle:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_26A0E5D68(a1, v18);
  sub_26A0E5D68(a2, v17);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v11, v12, &protocol conformance descriptor for _ProtoButton);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v16, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t Button.init(action:label:thumbnail:formAction:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_26A0E5D68(a1, v16);
  sub_26A0E5D68(a2, v15);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v10, v11, &protocol conformance descriptor for _ProtoButton);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v14, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t Button.init(action:label:thumbnail:formAction:)()
{
  OUTLINED_FUNCTION_31_7();
  sub_26A0E5D68(v3, v9);
  sub_26A0E5D68(v1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v4, v5, &protocol conformance descriptor for _ProtoButton);
  sub_26A4249C4();
  sub_26A0E48F0(v2, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v0);
  sub_26A0E48F0(v7, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t Button.init(action:label:thumbnail:formAction:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_7();
  sub_26A0E5D68(v9, v15);
  sub_26A0E5D68(v7, v14);
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v10, v11, &protocol conformance descriptor for _ProtoButton);
  sub_26A4249C4();

  sub_26A0E48F0(v8, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_26A0E48F0(v13, &qword_28036CB00, &unk_26A426450);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

Swift::String __swiftcall Button.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v100 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v105 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v103 = &v100 - v9;
  v102 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v101 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v13);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v104 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v16);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v19 = &v100 - v18;
  v20 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v25);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  v28 = &v100 - v27;
  v29 = type metadata accessor for Button(0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v31);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB0, &qword_26A426BD8) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  v37 = &v100 - v36;
  sub_26A1D707C();
  sub_26A1D707C();
  sub_26A1D7028();
  v37[*(v34 + 40)] = v3;
  sub_26A1D6FD0(v33, type metadata accessor for Button);
  v38 = *(v34 + 36);
  v39 = MEMORY[0x277D84F90];
  *&v37[v38] = MEMORY[0x277D84F90];
  v40 = *&v37[*(type metadata accessor for _ProtoButton(0) + 20)];
  OUTLINED_FUNCTION_142(v40 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, &v112);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v19, 1, v20);
  if (v41)
  {
    *v24 = v39;
    v24[1] = 0;
    v24[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_37(v19, 1, v20);
    if (!v41)
    {
      sub_26A0E48F0(v19, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  sub_26A1D7028();
  type metadata accessor for ActionProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_26A105924();
  sub_26A0E48F0(v28, &qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_142(v40 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, &v111);
  v46 = v103;
  sub_26A10FD9C();
  v47 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v47, v48, v102);
  if (v41)
  {
    v49 = v101;
    *v101 = v39;
    *(v49 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v20);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v20);
    OUTLINED_FUNCTION_15(v46);
    if (!v41)
    {
      sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1D7028();
  }

  v56 = v104;
  sub_26A1D7028();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  sub_26A1058FC(v56, 0x6C6562616CLL, 0xE500000000000000);
  sub_26A0E48F0(v56, &qword_28036CB30, &qword_26A426480);
  v61 = v105;
  Button.thumbnail.getter();
  sub_26A1058D4(v61, 0x69616E626D756874, 0xE90000000000006CLL);
  v62 = sub_26A0E48F0(v61, &qword_28036CB20, &unk_26A426470);
  v108 = 0;
  v109 = 0xE000000000000000;
  v63 = (v40 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction);
  OUTLINED_FUNCTION_20_13(v62, &v110);
  v64 = *(v63 + 8);
  v106 = *v63;
  v107 = v64;
  sub_26A424FA4();
  v66 = v108;
  v65 = v109;
  v67 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v67 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v68 = *&v37[v38];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A1674F4(0, *(v68 + 16) + 1, 1, v68);
      v68 = v97;
    }

    v70 = *(v68 + 16);
    v69 = *(v68 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_26A1674F4(v69 > 1, v70 + 1, 1, v68);
      v68 = v98;
    }

    *(v68 + 16) = v70 + 1;
    v72 = v68 + 32 * v70;
    *(v72 + 32) = xmmword_26A42CD30;
    *(v72 + 48) = v66;
    *(v72 + 56) = v65;
    *&v37[v38] = v68;
  }

  else
  {
  }

  v73 = (v40 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle);
  OUTLINED_FUNCTION_20_13(v71, &v108);
  if (v73[8] == 1)
  {
    v74 = *v73;
  }

  else
  {
    v74 = 1;
  }

  sub_26A146360(v74, 0x7974536C6562616CLL, 0xEA0000000000656CLL, 0);
  v75 = (v40 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole);
  OUTLINED_FUNCTION_20_13(v76, &v106);
  if (v75[8] == 1)
  {
    v77 = *v75;
  }

  else
  {
    v77 = 0;
  }

  sub_26A146278(v77, 0x6F526E6F74747562, 0xEA0000000000656CLL, 0);
  KeyPath = swift_getKeyPath();
  sub_26A0F7980(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v79, v80, v81, v82, v100, v101);

  v83 = swift_getKeyPath();
  sub_26A0F842C(v83, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v84, v85, v86, v87, v100, v101);

  sub_26A0FC388(v88, v89, v90, v91, v92, v93, v94);
  sub_26A0E48F0(v37, &qword_28036CFB0, &qword_26A426BD8);
  OUTLINED_FUNCTION_75();
  result._object = v96;
  result._countAndFlagsBits = v95;
  return result;
}

uint64_t type metadata accessor for Button(uint64_t a1)
{
  result = qword_28036F430;
  if (!qword_28036F430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Button.jsonString(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = sub_26A4247D4();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  if (redacted)
  {
    _ProtoButton.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_26();
    sub_26A1D6C8C(v16, v17, &protocol conformance descriptor for _ProtoButton);
    v18 = sub_26A424954();
    if (!v1)
    {
      v2 = v18;
      v14 = v19;
    }

    (*(v6 + 8))(v13, v4);
    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_26();
    sub_26A1D6C8C(v20, v21, &protocol conformance descriptor for _ProtoButton);
    v22 = sub_26A424954();
    if (!v1)
    {
      v2 = v22;
      v14 = v23;
    }

    (*(v6 + 8))(v10, v4);
  }

  v24 = v2;
  v25 = v14;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

void _ProtoButton.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_26_13();
  v99 = type metadata accessor for _ProtoActionProperty(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v95 = v3;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v4);
  v94 = (v91 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v96 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v93 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  v98 = v91 - v12;
  v97 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v92 = (v91 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  v21 = v91 - v20;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  v26 = v91 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  v31 = v91 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v91 - v33;
  OUTLINED_FUNCTION_3_19();
  sub_26A1D707C();
  v100 = *(type metadata accessor for _ProtoButton(0) + 20);
  v101 = v0;
  v35 = *(v0 + v100);
  OUTLINED_FUNCTION_142(v35 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, &v104);
  sub_26A10FD9C();
  v36 = OUTLINED_FUNCTION_71();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v22);
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  v39 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v31, 1, v22);
    if (v40)
    {
      *v26 = v39;
      *(v26 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v41 = v99;
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v99);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
      OUTLINED_FUNCTION_37(v31, 1, v22);
      v49 = v100;
      v48 = v101;
      if (!v40)
      {
        sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1D7028();
      v49 = v100;
      v48 = v101;
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A1D6FD0(v26, type metadata accessor for _ProtoTextProperty);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v48 + v49);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for _ProtoButton._StorageClass(0);
      swift_allocObject();
      sub_26A2A11E0();
      v35 = v51;
      *(v48 + v49) = v51;
    }

    sub_26A1D7028();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v22);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v35 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, &v103);
  sub_26A10FD9C();
  v55 = v97;
  v56 = __swift_getEnumTagSinglePayload(v21, 1, v97);
  sub_26A0E48F0(v21, &qword_28036CAE8, &unk_26A426430);
  if (v56 == 1)
  {
    v57 = v99;
    v58 = v101;
  }

  else
  {
    v59 = v91[2];
    sub_26A10FD9C();
    v60 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v60, v61, v55);
    v58 = v101;
    if (v40)
    {
      v70 = v92;
      *v92 = v39;
      *(v70 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v57 = v99;
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v99);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v57);
      v68 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v68, v69, v55);
      v71 = v100;
      if (!v40)
      {
        sub_26A0E48F0(v59, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v70 = v92;
      sub_26A1D7028();
      v57 = v99;
      v71 = v100;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A1D6FD0(v70, type metadata accessor for _ProtoVisualProperty);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v58 + v71);
    if ((v72 & 1) == 0)
    {
      type metadata accessor for _ProtoButton._StorageClass(0);
      swift_allocObject();
      sub_26A2A11E0();
      v35 = v73;
      *(v58 + v71) = v73;
    }

    sub_26A1D7028();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v55);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v35 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, &v102);
  v77 = v98;
  sub_26A10FD9C();
  v78 = __swift_getEnumTagSinglePayload(v77, 1, v57);
  sub_26A0E48F0(v77, &off_28036C7C0, &off_26A427400);
  if (v78 != 1)
  {
    v79 = v93;
    sub_26A10FD9C();
    v80 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v80, v81, v57);
    v82 = v100;
    if (v40)
    {
      v85 = v94;
      *v94 = v39;
      *(v85 + 8) = 0;
      *(v85 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v83 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v83, v84, v57);
      v86 = v95;
      if (!v40)
      {
        sub_26A0E48F0(v79, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v85 = v94;
      sub_26A1D7028();
      v86 = v95;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v86);
    sub_26A1D6FD0(v85, type metadata accessor for _ProtoActionProperty);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for _ProtoButton._StorageClass(0);
      swift_allocObject();
      sub_26A2A11E0();
      *(v58 + v82) = v87;
    }

    sub_26A1D7028();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v57);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t Button.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v1, v2, &protocol conformance descriptor for _ProtoButton);

  return sub_26A424B44();
}

uint64_t Button.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_0_26();
  sub_26A1D6C8C(v0, v1, &protocol conformance descriptor for _ProtoButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1D637C(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoButton(0);
  sub_26A1D6C8C(&qword_28036F410, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Button.hasThumbnail(for:)(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  Button.thumbnail.getter();
  v9 = type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_37(v4, 1, v9);
  if (v18)
  {
    sub_26A0E48F0(v4, &qword_28036CB20, &unk_26A426470);
    type metadata accessor for VisualElement(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  VisualProperty.allVisualElements.getter();
  sub_26A1D6FD0(v4, type metadata accessor for VisualProperty);
  sub_26A1D65A0();

  type metadata accessor for VisualElement(0);
  v14 = 1;
  v15 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v15, v16, v17);
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_26A0E48F0(v8, &qword_28036CC28, &qword_26A43A760);
  return v14;
}

void sub_26A1D65A0()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v24 = type metadata accessor for VisualElement(0);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  v12 = 0;
  v13 = *(v1 + 16);
  while (v13 != v12)
  {
    OUTLINED_FUNCTION_16_12();
    v14 = VisualElement.idioms.getter();
    v15 = sub_26A165034(v5, v3 & 1, v14);

    if (v15)
    {
      sub_26A1D7028();
LABEL_13:
      sub_26A1D7028();
      OUTLINED_FUNCTION_9_13();
      v22 = v25;
      sub_26A1D7028();
      v23 = 0;
      goto LABEL_14;
    }

    ++v12;
    OUTLINED_FUNCTION_14_10();
  }

  for (i = 0; i != v13; i = v17)
  {
    v17 = i + 1;
    OUTLINED_FUNCTION_16_12();
    v18 = VisualElement.idioms.getter();
    v19 = v18[2] + 1;
    v20 = 4;
    while (--v19)
    {
      v21 = v18[v20];
      v20 += 2;
      if (!v21)
      {

        OUTLINED_FUNCTION_9_13();
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_14_10();
  }

  v23 = 1;
  v22 = v25;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  OUTLINED_FUNCTION_75();
}

uint64_t Button.componentProto.getter()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = type metadata accessor for _ProtoButton(v1);
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
  OUTLINED_FUNCTION_3_19();
  sub_26A1D707C();
  sub_26A0E48F0(v0, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_10_17();
  sub_26A1D7028();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t Button.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for Button(0);
  *(inited + 64) = &protocol witness table for Button;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A1D707C();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1D6C8C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

unint64_t ButtonRole.description.getter()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t Button.LabelStyle.description.getter()
{
  result = 0x6974616D6F747561;
  switch(*v0)
  {
    case 1:
      result = 0x796C6E4F6E6F6369;
      break;
    case 2:
      result = 0x646E41656C746974;
      break;
    case 3:
      result = 0x6C6E4F656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s10SnippetKit10ButtonRoleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

uint64_t sub_26A1D6C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A1D6CD8()
{
  result = qword_28036F420;
  if (!qword_28036F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F420);
  }

  return result;
}

unint64_t sub_26A1D6D30()
{
  result = qword_28036F428;
  if (!qword_28036F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F428);
  }

  return result;
}

uint64_t sub_26A1D6DAC(uint64_t a1)
{
  result = type metadata accessor for _ProtoButton(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonRole(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Button.LabelStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A1D6FD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A1D7028()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1D707C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_26A1D6FD0(v0, type metadata accessor for VisualElement);
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_26A1D6FD0(v0, type metadata accessor for _ProtoButton);
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_26A1D707C();
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return type metadata accessor for _ProtoButton(0);
}

uint64_t sub_26A1D7270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoSeparators(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Separators.top.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  v4 = v2;
  SeparatorStyle.init(proto:)(&v3, a1);
}

void Separators.bottom.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = v2;
  SeparatorStyle.init(proto:)(&v3, a1);
}

uint64_t sub_26A1D7344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoSeparators(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall Separators.description(redacted:)(Swift::Bool redacted)
{
  v2 = 0x656E6F6E2ELL;
  sub_26A424EF4();

  v3 = 0xE500000000000000;
  OUTLINED_FUNCTION_1_18(*v1, v9, v11, *v13, *&v13[2], v13[4], v13[5]);
  v4 = 0x656E6F6E2ELL;
  switch(v14[5])
  {
    case 1:
      v3 = 0xE700000000000000;
      v4 = 0x65766F6D65722ELL;
      break;
    case 2:
      v4 = 0xD000000000000010;
      v3 = 0x800000026A4483F0;
      break;
    case 3:
      v4 = 0x456F54656764652ELL;
      v3 = 0xEB00000000656764;
      break;
    case 4:
      v4 = 0x654C7465736E692ELL;
      v3 = 0xED0000676E696461;
      break;
    case 5:
      v4 = 0x6F427465736E692ELL;
      v3 = 0xEA00000000006874;
      break;
    case 6:
      break;
    default:
      v4 = 0x7261646E6174732ELL;
      v3 = 0xE900000000000064;
      break;
  }

  MEMORY[0x26D65BA70](v4, v3);

  MEMORY[0x26D65BA70](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_1_18(v1[2], v10, v12, *v14, *&v14[2], v14[4], v14[5]);
  v5 = 0xE500000000000000;
  switch(v15)
  {
    case 0:
      v2 = 0x7261646E6174732ELL;
      v5 = 0xE900000000000064;
      break;
    case 1:
      v5 = 0xE700000000000000;
      v2 = 0x65766F6D65722ELL;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v5 = 0x800000026A4483F0;
      break;
    case 3:
      v2 = 0x456F54656764652ELL;
      v5 = 0xEB00000000656764;
      break;
    case 4:
      v2 = 0x654C7465736E692ELL;
      v5 = 0xED0000676E696461;
      break;
    case 5:
      v2 = 0x6F427465736E692ELL;
      v5 = 0xEA00000000006874;
      break;
    case 6:
      break;
    default:
      JUMPOUT(0);
  }

  MEMORY[0x26D65BA70](v2, v5);

  v6 = 0x203A706F74;
  v7 = 0xE500000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t Separators.init(top:bottom:)()
{
  type metadata accessor for _ProtoSeparators(0);
  v0 = sub_26A1D770C();
  return OUTLINED_FUNCTION_0_27(v0, v1, v2, v0, v3, v4, v5, v6, v8);
}

uint64_t sub_26A1D76CC(uint64_t result, unsigned __int8 a2, unsigned __int8 a3)
{
  *result = a2;
  *(result + 8) = 1;
  *(result + 16) = a3;
  *(result + 24) = 1;
  return result;
}

unint64_t sub_26A1D770C()
{
  result = qword_28036F440;
  if (!qword_28036F440)
  {
    type metadata accessor for _ProtoSeparators(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036F440);
  }

  return result;
}

uint64_t static Separators.none.getter()
{
  type metadata accessor for _ProtoSeparators(0);
  v0 = sub_26A1D770C();
  return OUTLINED_FUNCTION_0_27(v0, v1, v2, v0, v3, v4, v5, v6, v8);
}

uint64_t type metadata accessor for Separators(uint64_t a1)
{
  result = qword_28036F448;
  if (!qword_28036F448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1D783C(uint64_t a1)
{
  result = type metadata accessor for _ProtoSeparators(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_1_18(uint64_t a1@<X8>, uint64_t a2, char a3, __int16 a4, __int16 a5, char a6, char a7)
{
  a2 = a1;
  a3 = v7;

  SeparatorStyle.init(proto:)(&a2, &a7);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return type metadata accessor for _ProtoSeparators(0);
}

uint64_t sub_26A1D795C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoCommand.noOp.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v5)
  {
    sub_26A13440C();
    return 0;
  }

  OUTLINED_FUNCTION_175();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A1D87EC();
    return 0;
  }

  return *v0;
}

uint64_t _ProtoCommand.noOp.setter(char a1)
{
  sub_26A13440C();
  *v1 = a1;
  v3 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
}

void (*_ProtoCommand.noOp.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(a1 + 8) = v7;
  sub_26A1E05A8();
  *(a1 + 16) = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_23(v7);
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    if (!swift_getEnumCaseMultiPayload())
    {
      v10 = *v7;
      goto LABEL_7;
    }

    sub_26A1D87EC();
  }

  v10 = 0;
LABEL_7:
  *(a1 + 24) = v10;
  return sub_26A1D7C50;
}

void sub_26A1D7C50(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 24);
  sub_26A13440C();
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v1);

  free(v2);
}

uint64_t _ProtoCommand.aceCommand.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      return *v0;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t sub_26A1D7D98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26A0E45C0(*a1, v2);
  return _ProtoCommand.aceCommand.setter(v1, v2);
}

uint64_t _ProtoCommand.aceCommand.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t _ProtoCommand.response.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      return *v0;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t sub_26A1D7F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26A0E45C0(*a1, v2);
  return _ProtoCommand.response.setter(v1, v2);
}

uint64_t sub_26A1D7FE4()
{
  OUTLINED_FUNCTION_75_3();
  sub_26A13440C();
  *v0 = v2;
  v0[1] = v1;
  OUTLINED_FUNCTION_41_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_13();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoCommand.response.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

void sub_26A1D813C()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *v0;
  v3 = **v0;
  v2 = (*v0)[1];
  v4 = (*v0)[3];
  v5 = (*v0)[2];
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_65_4();
    sub_26A0E45C0(v7, v8);
    sub_26A13440C();
    *v5 = v3;
    v5[1] = v2;
    OUTLINED_FUNCTION_88();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    sub_26A0E4784(*v1, v1[1]);
  }

  else
  {
    sub_26A13440C();
    *v5 = v3;
    v5[1] = v2;
    OUTLINED_FUNCTION_88();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  free(v4);
  OUTLINED_FUNCTION_67_1();

  free(v17);
}

uint64_t _ProtoCommand.utterance.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      return *v0;
    }

    sub_26A1D87EC();
  }

  return 0;
}

uint64_t _ProtoCommand.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
  v12 = v1[1];
LABEL_8:
  *v0 = v11;
  v0[1] = v12;
  return OUTLINED_FUNCTION_66_2();
}

void sub_26A1D8410(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {

    sub_26A13440C();
    *v6 = v4;
    v6[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_26A13440C();
    *v6 = v4;
    v6[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_13();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  free(v5);

  free(v2);
}

uint64_t _ProtoCommand.changeBackground.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_12();
  v6 = OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_23(v6);
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A1D8D5C();
    }

    sub_26A1D87EC();
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  return OUTLINED_FUNCTION_79_6(v10);
}

uint64_t _ProtoCommand.ChangeBackground.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  return OUTLINED_FUNCTION_79_6(v1);
}

void _ProtoCommand.changeBackground.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoCommand.ChangeBackground(v6);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_35_9(v9);
  OUTLINED_FUNCTION_28_6();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    *v8 = MEMORY[0x277D84F90];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A1D87EC()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _ProtoCommand.sfCommand.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      return *v0;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t _ProtoCommand.sfCommand.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t _ProtoCommand.directInvocation.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_3_20();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      return *v0;
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_71_2();
}

uint64_t _ProtoCommand.directInvocation.modify()
{
  v2 = OUTLINED_FUNCTION_11_13();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_8(v3);
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_8_11(v8);
  OUTLINED_FUNCTION_5_14();
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = xmmword_26A426400;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  v11 = *v1;
LABEL_8:
  *v0 = v11;
  return OUTLINED_FUNCTION_66_2();
}

uint64_t _ProtoCommand.responseGroup.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_12();
  v6 = OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_23(v6);
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A1D8D5C();
    }

    sub_26A1D87EC();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  return OUTLINED_FUNCTION_79_6(v10);
}

uint64_t sub_26A1D8D5C()
{
  OUTLINED_FUNCTION_45_3();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1D8DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A1D901C();
  return a7(v7);
}

uint64_t _ProtoCommand.ResponseGroup.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  return OUTLINED_FUNCTION_79_6(v1);
}

void _ProtoCommand.responseGroup.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoCommand.ResponseGroup(v6);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_35_9(v9);
  OUTLINED_FUNCTION_28_6();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A1D901C()
{
  OUTLINED_FUNCTION_45_3();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t _ProtoCommand.appPunchout.getter()
{
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_25_12();
  v4 = OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_23(v4);
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A1D8D5C();
    }

    sub_26A1D87EC();
  }

  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_26A1D91A0()
{
  OUTLINED_FUNCTION_75_3();
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
  OUTLINED_FUNCTION_41_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_13();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoCommand.appPunchout.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoCommand.AppPunchout(v6);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_35_9(v9);
  OUTLINED_FUNCTION_28_6();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    v8[4] = 0;
    v8[5] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_26A1D87EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A1D8D5C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A1D93C4()
{
  OUTLINED_FUNCTION_76();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 8);
  v3 = *(*v0 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_125();
    sub_26A1D901C();
    sub_26A13440C();
    sub_26A1D8D5C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    sub_26A1D87EC();
  }

  else
  {
    sub_26A13440C();
    sub_26A1D8D5C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  free(v1);
  free(v3);
  free(v2);
  OUTLINED_FUNCTION_75();

  free(v13);
}

uint64_t _ProtoCommand.isNavigation.setter(char a1)
{
  result = OUTLINED_FUNCTION_64_3();
  *(v1 + v4) = a1;
  return result;
}

uint64_t _ProtoCommand.isNavigation.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoCommand(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.shouldUseSearchuiButton.setter(char a1)
{
  result = type metadata accessor for _ProtoCommand(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t _ProtoCommand.shouldUseSearchuiButton.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoCommand(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoCommand(v0);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoCommand.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v54 = v0;
  v55 = v1;
  v2 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v48[2] = v5 - v4;
  v48[1] = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v50 = (v8 - v7);
  v48[0] = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v49 = (v11 - v10);
  type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v51 = v13;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v14);
  v53 = v48 - v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v52 = (v48 - v19);
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  v22 = (v48 - v21);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F500, &qword_26A42D088);
  OUTLINED_FUNCTION_41(v26);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v30 = (v48 + *(v29 + 56) - v28);
  sub_26A1D901C();
  sub_26A1D901C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    case 2u:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    case 3u:
      sub_26A1D901C();
      v41 = *v22;
      v40 = v22[1];
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_34;
      }

      if (v41 != *v30 || v40 != v30[1])
      {
        sub_26A425354();
      }

      goto LABEL_37;
    case 4u:
      v31 = v52;
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_33;
      }

      v32 = v49;
      sub_26A1D8D5C();
      sub_26A0DDAD4(*v31, *v32);
      if (v33)
      {
        goto LABEL_6;
      }

      goto LABEL_36;
    case 5u:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 6u:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_8:
        OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_87();
        MEMORY[0x26D65B4F0](v34, v35);
        v36 = OUTLINED_FUNCTION_103();
        sub_26A0E4784(v36, v37);
        v38 = OUTLINED_FUNCTION_133();
        sub_26A0E4784(v38, v39);
        goto LABEL_37;
      }

LABEL_24:
      v46 = OUTLINED_FUNCTION_133();
      sub_26A0E4784(v46, v47);
      goto LABEL_34;
    case 7u:
      v43 = v53;
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_33;
      }

      v44 = v50;
      sub_26A1D8D5C();
      v45 = *v43 == *v44 && v43[1] == v44[1];
      if (v45 || (sub_26A425354() & 1) != 0)
      {
LABEL_6:
        sub_26A424794();
        OUTLINED_FUNCTION_0_28();
        sub_26A1DDCA4();
        OUTLINED_FUNCTION_76_3();
      }

LABEL_36:
      sub_26A1D87EC();
      sub_26A1D87EC();
      goto LABEL_37;
    case 8u:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_26A1D8D5C();
        OUTLINED_FUNCTION_88();
        static _ProtoCommand.AppPunchout.== infix(_:_:)();
        sub_26A1D87EC();
        sub_26A1D87EC();
LABEL_37:
        sub_26A1D87EC();
      }

      else
      {
LABEL_33:
        sub_26A1D87EC();
LABEL_34:
        sub_26A13440C();
      }

LABEL_35:
      OUTLINED_FUNCTION_75();
      return;
    default:
      sub_26A1D901C();
      OUTLINED_FUNCTION_157();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_38_8();
      sub_26A1D87EC();
      goto LABEL_35;
  }
}