uint64_t sub_26A2CD144(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D80, type metadata accessor for _ProtoFactItem_ShortNumber, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2CD1C4(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036F798, type metadata accessor for _ProtoFactItem_ShortNumber, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2CD234(uint64_t a1, uint64_t a2)
{
  sub_26A2D18D4(&qword_28036F798, type metadata accessor for _ProtoFactItem_ShortNumber, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);

  return sub_26A4249B4();
}

uint64_t sub_26A2CD2CC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371B10);
  __swift_project_value_buffer(v0, qword_280371B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "number";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "text_1";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_2";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "component_name";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "text_5";
  *(v20 + 1) = 6;
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

uint64_t sub_26A2CD690()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, 1, 1, v4);
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2CD7C0()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  v16 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v9);
  v30 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v16);
  v34 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v44 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  OUTLINED_FUNCTION_269();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  OUTLINED_FUNCTION_269();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v51);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_73_7();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v50);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  v35 = swift_endAccess();
  v36 = (v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1(v35, &v49);
  v38 = *v36;
  v37 = v36[1];
  OUTLINED_FUNCTION_26_10(v30, &v48);
  *v30 = v38;
  v30[1] = v37;

  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v47);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  v39 = swift_endAccess();
  v40 = (v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1(v39, v46);
  v42 = *v40;
  v41 = v40[1];

  OUTLINED_FUNCTION_140_1(v43, &v45);
  *v44 = v42;
  v44[1] = v41;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2CDD2C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2CDDA0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &qword_28036CAE0, &unk_26A4273F0);

  return v0;
}

uint64_t sub_26A2CDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A2CE0BC(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A2CE198(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A2CE274(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A2CE350(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A2CE42C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A2CE508(a2, a1, a3, a4);
        break;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_13;
      case 8:
        sub_26A2CE5E4(a2, a1, a3, a4);
        break;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_13:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2CE0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2CE8DC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2CEAD0(a1, a2, a3, a4);
    sub_26A2CECC4(a1, a2, a3, a4);
    sub_26A2CEEB8(a1, a2, a3, a4);
    sub_26A2CF0AC(a1, a2, a3, a4);
    sub_26A2CF2A0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
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

    sub_26A2CF494(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
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

uint64_t sub_26A2CE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2CEAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2CECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2CEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2CF0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2CF2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2CF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_26A2CF6B4()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v189 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v183 = v5;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v190 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v185 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v188 = v12;
  v13 = OUTLINED_FUNCTION_45();
  v198 = type metadata accessor for _ProtoMultilineTextProperty(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v193 = v15;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v181 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  v194 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v197 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v180 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  v191 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  v192 = v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  v196 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  v195 = v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_48();
  v204 = v34;
  v35 = OUTLINED_FUNCTION_45();
  v207 = type metadata accessor for _ProtoTextProperty(v35);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v201 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  v184 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  v203 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  v45 = &v180 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v47 = OUTLINED_FUNCTION_41(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8();
  v182 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v186 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v199 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  v202 = v54;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  v206 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  v59 = &v180 - v58;
  OUTLINED_FUNCTION_125_1(v3 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1(v1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number);
  v205 = v38;
  v60 = *(v38 + 48);
  OUTLINED_FUNCTION_167();
  sub_26A10FD9C();
  v208 = v1;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v45);
  if (v63)
  {

    sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(&v45[v60]);
    v61 = v3;
    if (v63)
    {
      sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v65 = &qword_28036C7D0;
    v66 = &qword_26A426DE0;
    v67 = v45;
    goto LABEL_32;
  }

  v62 = v206;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&v45[v60]);
  if (v63)
  {

    sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v62, v64);
    goto LABEL_9;
  }

  v68 = v201;
  sub_26A2CDD2C();

  static _ProtoTextProperty.== infix(_:_:)(v62, v68);
  OUTLINED_FUNCTION_9_29();
  v70 = v69;
  sub_26A2D187C(v68, v69);
  sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
  v71 = v70;
  v61 = v3;
  sub_26A2D187C(v62, v71);
  sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1(v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  v72 = v202;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v208 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  v73 = *(v205 + 48);
  v74 = v203;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v74);
  if (v63)
  {
    sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(v74 + v73);
    v75 = v204;
    if (!v63)
    {
      goto LABEL_20;
    }

    sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v76 = v199;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v74 + v73);
    v75 = v204;
    if (v77)
    {
      sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_37();
      v79 = v76;
LABEL_19:
      sub_26A2D187C(v79, v78);
LABEL_20:
      v65 = &qword_28036C7D0;
      v66 = &qword_26A426DE0;
LABEL_31:
      v67 = v74;
      goto LABEL_32;
    }

    v80 = v201;
    sub_26A2CDD2C();
    v81 = OUTLINED_FUNCTION_125();
    LODWORD(v206) = static _ProtoTextProperty.== infix(_:_:)(v81, v82);
    sub_26A2D187C(v80, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D187C(v76, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
    if ((v206 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_142(v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &v222);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v208 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &v221);
  OUTLINED_FUNCTION_163_2();
  v83 = v197;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v74 = v83;
  sub_26A10FD9C();
  v84 = v83;
  v85 = v198;
  OUTLINED_FUNCTION_37(v84, 1, v198);
  if (v63)
  {
    sub_26A0E48F0(v75, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_37(&qword_280371000 + v74, 1, v85);
    if (v63)
    {
      sub_26A0E48F0(v74, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_35;
    }

LABEL_30:
    v65 = &qword_28036F088;
    v66 = &unk_26A42C570;
    goto LABEL_31;
  }

  v86 = v195;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&qword_280371000 + v74, 1, v85);
  if (v87)
  {
    sub_26A0E48F0(v75, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v86, v88);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_155_4();
  v89 = static _ProtoMultilineTextProperty.== infix(_:_:)(v86, &qword_280371000);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(&qword_280371000, v90);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v91, v92, v93);
  v94 = OUTLINED_FUNCTION_21_3();
  sub_26A2D187C(v94, v95);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v96, v97, v98);
  if ((v89 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_35:
  OUTLINED_FUNCTION_142(v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &v220);
  v99 = v196;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v208 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &v219);
  OUTLINED_FUNCTION_196_0();
  v100 = v194;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v100, 1, v85);
  if (v63)
  {
    sub_26A0E48F0(v99, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_37(&qword_280371000 + v100, 1, v85);
    if (v63)
    {
      sub_26A0E48F0(v100, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_45;
    }

LABEL_43:
    v65 = &qword_28036F088;
    v66 = &unk_26A42C570;
    v67 = v100;
    goto LABEL_32;
  }

  v101 = v192;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&qword_280371000 + v100, 1, v85);
  if (v102)
  {
    sub_26A0E48F0(v196, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v101, v103);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_155_4();
  v104 = OUTLINED_FUNCTION_167();
  v106 = static _ProtoMultilineTextProperty.== infix(_:_:)(v104, v105);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(&qword_280371000, v107);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v108, v109, v110);
  sub_26A2D187C(v101, &unk_26A4273F0);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v111, v112, v113);
  if ((v106 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_45:
  OUTLINED_FUNCTION_142(v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v218);
  v114 = v188;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v208 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v217);
  OUTLINED_FUNCTION_196_0();
  v115 = v190;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v116 = v115;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v117 = v189;
  OUTLINED_FUNCTION_48_3(v115, 1);
  if (v63)
  {
    sub_26A0E48F0(v114, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_23(&qword_280371000 + v115);
    v118 = v191;
    v119 = v186;
    if (v63)
    {
      sub_26A0E48F0(v116, &off_28036C7C0, &off_26A427400);
      goto LABEL_50;
    }

LABEL_58:
    v65 = &qword_28036C7C8;
    v66 = &qword_26A425C00;
    v67 = v116;
    goto LABEL_32;
  }

  v124 = v185;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v116);
  v118 = v191;
  if (v125)
  {
    sub_26A0E48F0(v114, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_49_16();
    sub_26A2D187C(v124, v126);
    goto LABEL_58;
  }

  v127 = v183;
  sub_26A2CDD2C();
  sub_26A0E36D8(*v124, *v127);
  if ((v128 & 1) == 0 || (v124[1] == v127[1] ? (v129 = v124[2] == v127[2]) : (v129 = 0), !v129 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2D187C(v127, type metadata accessor for _ProtoActionProperty);
    v141 = OUTLINED_FUNCTION_105();
    sub_26A0E48F0(v141, v142, &off_26A427400);
    sub_26A2D187C(v124, type metadata accessor for _ProtoActionProperty);
    v67 = OUTLINED_FUNCTION_88();
    v66 = &off_26A427400;
    goto LABEL_32;
  }

  v130 = *(v117 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_23_22();
  sub_26A2D18D4(v131, v132, MEMORY[0x277D216D0]);
  v133 = sub_26A424B64();
  OUTLINED_FUNCTION_50_12();
  sub_26A2D187C(v127, v134);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v135, v136, v137);
  sub_26A2D187C(v124, v130);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v138, v139, v140);
  v119 = v186;
  if ((v133 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_50:
  OUTLINED_FUNCTION_142(v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v216);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v208 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v215);
  v120 = *(v205 + 48);
  v74 = v184;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v121 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_48_3(v121, v122);
  if (v63)
  {
    sub_26A0E48F0(v119, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(v74 + v120);
    if (v63)
    {
      v123 = sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_72;
    }

    goto LABEL_20;
  }

  v143 = v182;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v74 + v120);
  if (v144)
  {
    sub_26A0E48F0(v186, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v79 = v143;
    goto LABEL_19;
  }

  v145 = v201;
  sub_26A2CDD2C();
  static _ProtoTextProperty.== infix(_:_:)(v143, v145);
  OUTLINED_FUNCTION_9_29();
  v147 = v146;
  sub_26A2D187C(v145, v146);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v148, v149, v150);
  sub_26A2D187C(v143, v147);
  OUTLINED_FUNCTION_69_2();
  v123 = sub_26A0E48F0(v151, v152, v153);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_72:
  v154 = v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
  v155 = OUTLINED_FUNCTION_129_1(v123, &v214);
  v156 = *(v154 + 8);
  OUTLINED_FUNCTION_122_1(v155, &v213);
  OUTLINED_FUNCTION_168_1();
  if (v63)
  {
    v158 = v156 == v157;
  }

  else
  {
    v158 = 0;
  }

  if (v158 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    OUTLINED_FUNCTION_142(v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v212);
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_142(v208 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v211);
    OUTLINED_FUNCTION_163_2();
    v159 = v181;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    v160 = v198;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v159, 1, v160);
    if (v63)
    {
      sub_26A0E48F0(v118, &qword_28036CAE0, &unk_26A4273F0);
      OUTLINED_FUNCTION_37(&qword_280371000 + v159, 1, v160);
      if (v63)
      {
        v161 = sub_26A0E48F0(v159, &qword_28036CAE0, &unk_26A4273F0);
LABEL_87:
        v175 = v61 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
        v176 = OUTLINED_FUNCTION_129_1(v161, &v210);
        v177 = *(v175 + 8);
        OUTLINED_FUNCTION_122_1(v176, &v209);
        OUTLINED_FUNCTION_168_1();
        if (v63)
        {
          v179 = v177 == v178;
        }

        else
        {
          v179 = 0;
        }

        if (!v179)
        {
          OUTLINED_FUNCTION_21_3();
          sub_26A425354();
        }

        goto LABEL_33;
      }
    }

    else
    {
      v162 = v180;
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(&qword_280371000 + v159, 1, v160);
      if (!v163)
      {
        OUTLINED_FUNCTION_155_4();
        v165 = static _ProtoMultilineTextProperty.== infix(_:_:)(v162, &qword_280371000);
        OUTLINED_FUNCTION_14_18();
        sub_26A2D187C(&qword_280371000, v166);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v167, v168, v169);
        v170 = OUTLINED_FUNCTION_105();
        sub_26A2D187C(v170, v171);
        OUTLINED_FUNCTION_69_2();
        v161 = sub_26A0E48F0(v172, v173, v174);
        if ((v165 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_87;
      }

      sub_26A0E48F0(v191, &qword_28036CAE0, &unk_26A4273F0);
      OUTLINED_FUNCTION_10_32();
      sub_26A2D187C(v162, v164);
    }

    v65 = &qword_28036F088;
    v66 = &unk_26A42C570;
    v67 = v159;
LABEL_32:
    sub_26A0E48F0(v67, v65, v66);
  }

LABEL_33:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2D0958(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D78, type metadata accessor for _ProtoFactItem_HeroNumber, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2D09D8(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036D2B8, type metadata accessor for _ProtoFactItem_HeroNumber, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2D0A48(uint64_t a1, uint64_t a2)
{
  sub_26A2D18D4(&qword_28036D2B8, type metadata accessor for _ProtoFactItem_HeroNumber, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);

  return sub_26A4249B4();
}

uint64_t sub_26A2D0AE0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371B30);
  __swift_project_value_buffer(v0, qword_280371B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26A42B0C0;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "button_1";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "button_2";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "button_3";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_2";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_3";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thumbnail";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = 0x26A44B000;
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "component_name";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "text_5";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "link_identifier";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2D0F60()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button1;
  v4 = type metadata accessor for _ProtoButton(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4;
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v10 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, 1, 1, v2);
  v12 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2D10F4()
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  v24 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v17);
  v27 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v13);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  v58 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v46 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v13);
  v49 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v57 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v49 = 0;
  v49[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_130_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button2);
  OUTLINED_FUNCTION_130_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_130_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3);
  OUTLINED_FUNCTION_130_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_130_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &v68);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_154_4();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &v67);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_154_4();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &v66);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &v65);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v64);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  v50 = (v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName, &v63);
  v52 = *v50;
  v51 = v50[1];
  OUTLINED_FUNCTION_26_10(v58, &v62);
  *v58 = v52;
  v58[1] = v51;

  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &v61);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_3();
  sub_26A10CF40();
  swift_endAccess();
  v53 = (v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier, &v60);
  v55 = *v53;
  v54 = v53[1];

  OUTLINED_FUNCTION_140_1(v56, &v59);
  *v57 = v55;
  v57[1] = v54;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2D1828()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2D187C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2D18D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2D191C()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button1, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button2, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);

  return v0;
}

uint64_t sub_26A2D1AB4(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A2D1B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A2D1D3C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A2D1E18(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A2D1EF4(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A2D1FD0(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A2D20AC(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A2D2188(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A2D2264(a2, a1, a3, a4);
        break;
      case 8:
        sub_26A2D2340(a2, a1, a3, a4);
        break;
      case 9:
        sub_26A2D241C(a2, a1, a3, a4);
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_8;
      case 11:
        sub_26A2D24F8(a2, a1, a3, a4);
        break;
      case 12:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_8:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2D1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D1E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D1EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D1FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D20AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D24F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2D2850(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2D2A44(a1, a2, a3, a4);
    sub_26A2D2C38(a1, a2, a3, a4);
    sub_26A2D2E2C(a1, a2, a3, a4);
    sub_26A2D3020(a1, a2, a3, a4);
    sub_26A2D3214(a1, a2, a3, a4);
    sub_26A2D3408(a1, a2, a3, a4);
    sub_26A2D35FC(a1, a2, a3, a4);
    sub_26A2D37F0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
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

    sub_26A2D39E4(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
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

uint64_t sub_26A2D2850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D2A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoButton);
}

uint64_t sub_26A2D2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoButton);
}

uint64_t sub_26A2D2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424A84();
  return sub_26A2D187C(v9, type metadata accessor for _ProtoButton);
}

uint64_t sub_26A2D3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D3408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D35FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D37F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D39E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A2D3C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  OUTLINED_FUNCTION_23_22();
  sub_26A2D18D4(v11, v12, MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

uint64_t sub_26A2D3CE8(uint64_t a1, uint64_t a2)
{
  v223 = a2;
  v186 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v186);
  v180 = (&v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v185);
  v187 = &v178 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v183 = (&v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v189 = &v178 - v8;
  v192 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v192);
  v184 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v191);
  v193 = &v178 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v11 - 8);
  v188 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v195 = &v178 - v14;
  v197 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v197);
  v190 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  MEMORY[0x28223BE20](v196);
  v198 = &v178 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v17 - 8);
  v194 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v201 = &v178 - v20;
  v220 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v220);
  v204 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v210 = &v178 - v23;
  MEMORY[0x28223BE20](v24);
  v211 = &v178 - v25;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F098, &qword_26A42C588);
  MEMORY[0x28223BE20](v222);
  v209 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v213 = &v178 - v28;
  MEMORY[0x28223BE20](v29);
  v219 = &v178 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v31 - 8);
  v208 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v214 = &v178 - v34;
  MEMORY[0x28223BE20](v35);
  v212 = &v178 - v36;
  MEMORY[0x28223BE20](v37);
  v217 = &v178 - v38;
  MEMORY[0x28223BE20](v39);
  v216 = &v178 - v40;
  MEMORY[0x28223BE20](v41);
  v218 = &v178 - v42;
  v224 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v224);
  v215 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v44);
  v182 = &v178 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v200 = &v178 - v47;
  MEMORY[0x28223BE20](v48);
  v206 = &v178 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v178 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v53 - 8);
  v179 = &v178 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v181 = &v178 - v56;
  MEMORY[0x28223BE20](v57);
  v199 = &v178 - v58;
  MEMORY[0x28223BE20](v59);
  v203 = &v178 - v60;
  MEMORY[0x28223BE20](v61);
  v202 = &v178 - v62;
  MEMORY[0x28223BE20](v63);
  v205 = &v178 - v64;
  MEMORY[0x28223BE20](v65);
  v221 = &v178 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v178 - v68;
  swift_beginAccess();
  sub_26A10FD9C();
  v70 = v223;
  swift_beginAccess();
  v207 = v44;
  v71 = *(v44 + 48);
  sub_26A10FD9C();
  v72 = v70;
  v73 = v224;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v52, 1, v73) == 1)
  {

    sub_26A0E48F0(v69, &qword_28036C7B8, &unk_26A425BF0);
    v74 = a1;
    if (__swift_getEnumTagSinglePayload(&v52[v71], 1, v73) == 1)
    {
      sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_9;
    }

LABEL_6:
    v76 = &qword_28036C7D0;
    v77 = &qword_26A426DE0;
LABEL_7:
    v78 = v52;
LABEL_35:
    sub_26A0E48F0(v78, v76, v77);
    goto LABEL_36;
  }

  v75 = v221;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v52[v71], 1, v73) == 1)
  {

    sub_26A0E48F0(v69, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D187C(v75, type metadata accessor for _ProtoTextProperty);
    goto LABEL_6;
  }

  v79 = v215;
  sub_26A2CDD2C();

  v80 = static _ProtoTextProperty.== infix(_:_:)(v75, v79);
  sub_26A2D187C(v79, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v69, &qword_28036C7B8, &unk_26A425BF0);
  v74 = a1;
  sub_26A2D187C(v75, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  swift_beginAccess();
  v81 = v218;
  sub_26A10FD9C();
  swift_beginAccess();
  v82 = *(v222 + 48);
  v83 = v219;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v84 = v220;
  if (__swift_getEnumTagSinglePayload(v83, 1, v220) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036EC48, &unk_26A4385C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83 + v82, 1, v84);
    v86 = v217;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v83, &qword_28036EC48, &unk_26A4385C0);
      goto LABEL_19;
    }

LABEL_14:
    v76 = &qword_28036F098;
    v77 = &qword_26A42C588;
LABEL_15:
    v78 = v83;
    goto LABEL_35;
  }

  v87 = v216;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v83 + v82, 1, v84) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036EC48, &unk_26A4385C0);
    sub_26A2D187C(v87, type metadata accessor for _ProtoButton);
    goto LABEL_14;
  }

  v88 = v211;
  sub_26A2CDD2C();
  if (*(v87 + *(v84 + 20)) != *(v88 + *(v84 + 20)))
  {

    sub_26A2A2580();
    v90 = v89;

    if ((v90 & 1) == 0)
    {
      sub_26A2D187C(v88, type metadata accessor for _ProtoButton);
      sub_26A0E48F0(v81, &qword_28036EC48, &unk_26A4385C0);
      sub_26A2D187C(v216, type metadata accessor for _ProtoButton);
      v78 = v83;
      v76 = &qword_28036EC48;
      v77 = &unk_26A4385C0;
      goto LABEL_35;
    }
  }

  sub_26A424794();
  sub_26A2D18D4(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v91 = v72;
  v92 = v74;
  v93 = v216;
  v94 = sub_26A424B64();
  sub_26A2D187C(v88, type metadata accessor for _ProtoButton);
  sub_26A0E48F0(v81, &qword_28036EC48, &unk_26A4385C0);
  v95 = v93;
  v74 = v92;
  v72 = v91;
  sub_26A2D187C(v95, type metadata accessor for _ProtoButton);
  v84 = v220;
  sub_26A0E48F0(v83, &qword_28036EC48, &unk_26A4385C0);
  v86 = v217;
  if ((v94 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_19:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v96 = *(v222 + 48);
  v97 = v213;
  sub_26A10FD9C();
  v98 = v97;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v97, 1, v84) == 1)
  {
    sub_26A0E48F0(v86, &qword_28036EC48, &unk_26A4385C0);
    v99 = __swift_getEnumTagSinglePayload(v97 + v96, 1, v84);
    v100 = v214;
    if (v99 != 1)
    {
      goto LABEL_34;
    }

    sub_26A0E48F0(v98, &qword_28036EC48, &unk_26A4385C0);
  }

  else
  {
    v101 = v212;
    sub_26A10FD9C();
    v102 = __swift_getEnumTagSinglePayload(v97 + v96, 1, v84);
    v100 = v214;
    if (v102 == 1)
    {
      v103 = v217;
LABEL_33:
      sub_26A0E48F0(v103, &qword_28036EC48, &unk_26A4385C0);
      sub_26A2D187C(v101, type metadata accessor for _ProtoButton);
      goto LABEL_34;
    }

    v104 = v210;
    sub_26A2CDD2C();
    if (*(v101 + *(v84 + 20)) != *(v104 + *(v84 + 20)))
    {

      sub_26A2A2580();
      v106 = v105;

      if ((v106 & 1) == 0)
      {
        sub_26A2D187C(v210, type metadata accessor for _ProtoButton);
        v122 = &qword_28036EC48;
        v123 = &unk_26A4385C0;
        sub_26A0E48F0(v217, &qword_28036EC48, &unk_26A4385C0);
        v124 = v212;
LABEL_53:
        sub_26A2D187C(v124, type metadata accessor for _ProtoButton);
        v78 = v98;
LABEL_54:
        v76 = v122;
        v77 = v123;
        goto LABEL_35;
      }
    }

    sub_26A424794();
    sub_26A2D18D4(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v107 = v212;
    v108 = v210;
    LODWORD(v223) = sub_26A424B64();
    sub_26A2D187C(v108, type metadata accessor for _ProtoButton);
    sub_26A0E48F0(v217, &qword_28036EC48, &unk_26A4385C0);
    sub_26A2D187C(v107, type metadata accessor for _ProtoButton);
    sub_26A0E48F0(v98, &qword_28036EC48, &unk_26A4385C0);
    if ((v223 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v109 = *(v222 + 48);
  v110 = v100;
  v111 = v209;
  sub_26A10FD9C();
  v98 = v111;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v111, 1, v84) == 1)
  {
    sub_26A0E48F0(v110, &qword_28036EC48, &unk_26A4385C0);
    if (__swift_getEnumTagSinglePayload(v111 + v109, 1, v84) == 1)
    {
      sub_26A0E48F0(v111, &qword_28036EC48, &unk_26A4385C0);
      goto LABEL_41;
    }

LABEL_34:
    v76 = &qword_28036F098;
    v77 = &qword_26A42C588;
    v78 = v98;
    goto LABEL_35;
  }

  v101 = v208;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v111 + v109, 1, v84) == 1)
  {
    v103 = v214;
    goto LABEL_33;
  }

  v113 = v204;
  sub_26A2CDD2C();
  if (*(v101 + *(v84 + 20)) != *(v113 + *(v84 + 20)))
  {

    sub_26A2A2580();
    v115 = v114;

    if ((v115 & 1) == 0)
    {
      sub_26A2D187C(v113, type metadata accessor for _ProtoButton);
      v122 = &qword_28036EC48;
      v123 = &unk_26A4385C0;
      sub_26A0E48F0(v214, &qword_28036EC48, &unk_26A4385C0);
      v124 = v208;
      goto LABEL_53;
    }
  }

  sub_26A424794();
  sub_26A2D18D4(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v116 = v208;
  v117 = sub_26A424B64();
  sub_26A2D187C(v113, type metadata accessor for _ProtoButton);
  sub_26A0E48F0(v214, &qword_28036EC48, &unk_26A4385C0);
  sub_26A2D187C(v116, type metadata accessor for _ProtoButton);
  sub_26A0E48F0(v98, &qword_28036EC48, &unk_26A4385C0);
  if ((v117 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_41:
  swift_beginAccess();
  v118 = v205;
  sub_26A10FD9C();
  swift_beginAccess();
  v119 = v206;
  v120 = *(v207 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v121 = v224;
  if (__swift_getEnumTagSinglePayload(v119, 1, v224) == 1)
  {
    sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v119 + v120, 1, v121) == 1)
    {
      sub_26A0E48F0(v119, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_49;
    }

LABEL_47:
    v76 = &qword_28036C7D0;
    v77 = &qword_26A426DE0;
    v78 = v119;
    goto LABEL_35;
  }

  v125 = v202;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v119 + v120, 1, v121) == 1)
  {
    sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D187C(v125, type metadata accessor for _ProtoTextProperty);
    goto LABEL_47;
  }

  v126 = v215;
  sub_26A2CDD2C();
  v127 = static _ProtoTextProperty.== infix(_:_:)(v125, v126);
  sub_26A2D187C(v126, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2D187C(v125, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v119, &qword_28036C7B8, &unk_26A425BF0);
  if ((v127 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_49:
  swift_beginAccess();
  v128 = v203;
  sub_26A10FD9C();
  swift_beginAccess();
  v129 = *(v207 + 48);
  v83 = v200;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v130 = v224;
  if (__swift_getEnumTagSinglePayload(v83, 1, v224) == 1)
  {
    sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
    v131 = __swift_getEnumTagSinglePayload(v83 + v129, 1, v130);
    v132 = v201;
    if (v131 == 1)
    {
      sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v133 = v199;
  sub_26A10FD9C();
  v134 = __swift_getEnumTagSinglePayload(v83 + v129, 1, v130);
  v132 = v201;
  if (v134 == 1)
  {
    sub_26A0E48F0(v203, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D187C(v133, type metadata accessor for _ProtoTextProperty);
LABEL_57:
    v76 = &qword_28036C7D0;
    v77 = &qword_26A426DE0;
    goto LABEL_15;
  }

  v135 = v215;
  sub_26A2CDD2C();
  v136 = static _ProtoTextProperty.== infix(_:_:)(v133, v135);
  sub_26A2D187C(v135, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v203, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2D187C(v133, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
  if ((v136 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_59:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v137 = *(v196 + 48);
  v138 = v198;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v139 = v197;
  if (__swift_getEnumTagSinglePayload(v138, 1, v197) == 1)
  {
    sub_26A0E48F0(v132, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(v138 + v137, 1, v139) == 1)
    {
      sub_26A0E48F0(v138, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_66;
    }

LABEL_64:
    v76 = &qword_28036F088;
    v77 = &unk_26A42C570;
    v78 = v138;
    goto LABEL_35;
  }

  v140 = v194;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v138 + v137, 1, v139) == 1)
  {
    sub_26A0E48F0(v201, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A2D187C(v140, type metadata accessor for _ProtoMultilineTextProperty);
    goto LABEL_64;
  }

  v141 = v190;
  sub_26A2CDD2C();
  v142 = static _ProtoMultilineTextProperty.== infix(_:_:)(v140, v141);
  sub_26A2D187C(v141, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A0E48F0(v201, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A2D187C(v140, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A0E48F0(v138, &qword_28036CAE0, &unk_26A4273F0);
  if ((v142 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_66:
  swift_beginAccess();
  v143 = v195;
  sub_26A10FD9C();
  swift_beginAccess();
  v144 = *(v191 + 48);
  v145 = v193;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v146 = v192;
  if (__swift_getEnumTagSinglePayload(v145, 1, v192) == 1)
  {
    sub_26A0E48F0(v143, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v145 + v144, 1, v146) == 1)
    {
      sub_26A0E48F0(v145, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_73;
    }

LABEL_71:
    v76 = &qword_28036D190;
    v77 = &unk_26A427130;
    v78 = v145;
    goto LABEL_35;
  }

  v147 = v188;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v145 + v144, 1, v146) == 1)
  {
    sub_26A0E48F0(v195, &qword_28036CAE8, &unk_26A426430);
    sub_26A2D187C(v147, type metadata accessor for _ProtoVisualProperty);
    goto LABEL_71;
  }

  v148 = v184;
  sub_26A2CDD2C();
  v149 = static _ProtoVisualProperty.== infix(_:_:)(v147, v148);
  sub_26A2D187C(v148, type metadata accessor for _ProtoVisualProperty);
  sub_26A0E48F0(v195, &qword_28036CAE8, &unk_26A426430);
  sub_26A2D187C(v147, type metadata accessor for _ProtoVisualProperty);
  sub_26A0E48F0(v145, &qword_28036CAE8, &unk_26A426430);
  if ((v149 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_73:
  swift_beginAccess();
  v150 = v189;
  sub_26A10FD9C();
  swift_beginAccess();
  v151 = *(v185 + 48);
  v152 = v187;
  sub_26A10FD9C();
  v52 = v152;
  sub_26A10FD9C();
  v153 = v186;
  if (__swift_getEnumTagSinglePayload(v152, 1, v186) == 1)
  {
    sub_26A0E48F0(v150, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v152 + v151, 1, v153) == 1)
    {
      sub_26A0E48F0(v152, &off_28036C7C0, &off_26A427400);
      goto LABEL_76;
    }

    goto LABEL_86;
  }

  v163 = v183;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v52[v151], 1, v153) == 1)
  {
    sub_26A0E48F0(v189, &off_28036C7C0, &off_26A427400);
    sub_26A2D187C(v163, type metadata accessor for _ProtoActionProperty);
LABEL_86:
    v76 = &qword_28036C7C8;
    v77 = &qword_26A425C00;
    goto LABEL_7;
  }

  v164 = v180;
  sub_26A2CDD2C();
  sub_26A0E36D8(*v163, *v164);
  if ((v165 & 1) == 0 || (v163[1] == v164[1] ? (v166 = v163[2] == v164[2]) : (v166 = 0), !v166 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2D187C(v164, type metadata accessor for _ProtoActionProperty);
    v122 = &off_28036C7C0;
    v123 = &off_26A427400;
    sub_26A0E48F0(v189, &off_28036C7C0, &off_26A427400);
    sub_26A2D187C(v163, type metadata accessor for _ProtoActionProperty);
    v78 = v187;
    goto LABEL_54;
  }

  sub_26A424794();
  sub_26A2D18D4(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v167 = sub_26A424B64();
  sub_26A2D187C(v164, type metadata accessor for _ProtoActionProperty);
  sub_26A0E48F0(v189, &off_28036C7C0, &off_26A427400);
  sub_26A2D187C(v163, type metadata accessor for _ProtoActionProperty);
  sub_26A0E48F0(v187, &off_28036C7C0, &off_26A427400);
  if ((v167 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_76:
  v154 = (v74 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  swift_beginAccess();
  v155 = *v154;
  v156 = v154[1];
  v157 = (v72 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  swift_beginAccess();
  v158 = v155 == *v157 && v156 == v157[1];
  if (!v158 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v159 = v74;
  sub_26A10FD9C();
  swift_beginAccess();
  v160 = *(v207 + 48);
  v161 = v182;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v162 = v224;
  if (__swift_getEnumTagSinglePayload(v161, 1, v224) != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v161 + v160, 1, v162) == 1)
    {
      sub_26A0E48F0(v181, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A2D187C(v179, type metadata accessor for _ProtoTextProperty);
      goto LABEL_98;
    }

    v168 = v182;
    v169 = v215;
    sub_26A2CDD2C();
    v170 = v179;
    v171 = static _ProtoTextProperty.== infix(_:_:)(v179, v169);
    sub_26A2D187C(v169, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v181, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D187C(v170, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v168, &qword_28036C7B8, &unk_26A425BF0);
    if (v171)
    {
      goto LABEL_101;
    }

LABEL_36:

    return 0;
  }

  sub_26A0E48F0(v181, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v161 + v160, 1, v162) != 1)
  {
LABEL_98:
    sub_26A0E48F0(v182, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_36;
  }

  sub_26A0E48F0(v182, &qword_28036C7B8, &unk_26A425BF0);
LABEL_101:
  v172 = (v159 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  swift_beginAccess();
  v173 = *v172;
  v174 = v172[1];
  v175 = (v72 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v173 == *v175 && v174 == v175[1])
  {

    return 1;
  }

  v177 = sub_26A425354();

  result = 0;
  if (v177)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A2D5F18(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425504();
  a1(0);
  v6 = OUTLINED_FUNCTION_125();
  sub_26A2D18D4(v6, v7, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2D6398(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D70, type metadata accessor for _ProtoFactItem_Button, &protocol conformance descriptor for _ProtoFactItem_Button);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2D64A8(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036F878, type metadata accessor for _ProtoFactItem_Button, &protocol conformance descriptor for _ProtoFactItem_Button);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2D6560(uint64_t a1, uint64_t a2)
{
  sub_26A2D18D4(&qword_28036F878, type metadata accessor for _ProtoFactItem_Button, &protocol conformance descriptor for _ProtoFactItem_Button);

  return sub_26A4249B4();
}

uint64_t sub_26A2D6660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A424794();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_26A2D6820(uint64_t a1)
{
  sub_26A2D6F44(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A2D6F44(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A2D6F44(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A2D6F44(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A2D69E8(uint64_t a1)
{
  sub_26A2D6F44(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A2D6F44(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A2D6F44(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A2D6F44(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A2D6BB0(uint64_t a1)
{
  sub_26A2D6F44(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A2D6F44(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A2D6F44(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A2D6D28(uint64_t a1)
{
  sub_26A2D6F44(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A2D6F44(319, &qword_28036EFE0, type metadata accessor for _ProtoButton);
    if (v2 <= 0x3F)
    {
      sub_26A2D6F44(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
      if (v3 <= 0x3F)
      {
        sub_26A2D6F44(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
        if (v4 <= 0x3F)
        {
          sub_26A2D6F44(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26A2D6F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_54_12()
{
  type metadata accessor for _ProtoFactItem_Button._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_12()
{
  type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58_13()
{
  type metadata accessor for _ProtoFactItem_Standard._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_12()
{
  type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_98_4(uint64_t a1)
{
  type metadata accessor for _ProtoFactItem_Button(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_99_3(uint64_t a1)
{
  type metadata accessor for _ProtoFactItem_Button(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_108_4(uint64_t a1)
{
  type metadata accessor for _ProtoFactItem_ShortNumber(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_109_4(uint64_t a1)
{
  type metadata accessor for _ProtoFactItem_ShortNumber(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_113_2()
{

  return sub_26A2CDD2C();
}

uint64_t OUTLINED_FUNCTION_116_2()
{

  return sub_26A2CDD2C();
}

uint64_t OUTLINED_FUNCTION_146_3()
{

  return sub_26A2CDD2C();
}

uint64_t OUTLINED_FUNCTION_153_4()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_154_4()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_155_4()
{

  return sub_26A2CDD2C();
}

uint64_t sub_26A2D75EC(uint64_t a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  return sub_26A2D77A8(_D0, a1, qword_280371D90, sub_26A2D834C);
}

uint64_t ImageElement.AspectRatio.init(width:height:)(float a1, float a2)
{
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_0_52();
  sub_26A2D820C(v2, v3, &protocol conformance descriptor for _ProtoImageElement.AspectRatio);
  return sub_26A4249C4();
}

uint64_t (*static ImageElement.AspectRatio.square.modify())(uint64_t a1)
{
  if (qword_28036C4C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageElement.AspectRatio(0);
  v1 = __swift_project_value_buffer(v0, qword_280371D90);
  OUTLINED_FUNCTION_5_31(v1);
  return j__swift_endAccess;
}

uint64_t sub_26A2D77A8(double a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = type metadata accessor for ImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_allocate_value_buffer(v9, a3);
  v10 = __swift_project_value_buffer(v6, a3);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v15 = a1;
  OUTLINED_FUNCTION_0_52();
  sub_26A2D820C(v11, v12, &protocol conformance descriptor for _ProtoImageElement.AspectRatio);
  sub_26A4249C4();
  return sub_26A2D82E8(v8, v10);
}

uint64_t sub_26A2D78B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageElement.AspectRatio(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_26A2D792C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageElement.AspectRatio(0);
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  return sub_26A2D7BD0(a2, a4);
}

uint64_t sub_26A2D79C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageElement.AspectRatio(0);
  __swift_project_value_buffer(v6, a3);
  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  sub_26A2D7C34(a1, a3);
  swift_endAccess();
  return sub_26A2D7C98(a1);
}

uint64_t (*static ImageElement.AspectRatio.fullWidth.modify())(uint64_t a1)
{
  if (qword_28036C4C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageElement.AspectRatio(0);
  v1 = __swift_project_value_buffer(v0, qword_280371DA8);
  OUTLINED_FUNCTION_5_31(v1);
  return j_j__swift_endAccess;
}

uint64_t sub_26A2D7AC8@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  sub_26A2D78B0(a1, a2, a3);
  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  return sub_26A2D7BD0(v4, a4);
}

uint64_t sub_26A2D7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_26A2D78B0(a5, a6, a7);
  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  sub_26A2D7C34(a1, v7);
  return swift_endAccess();
}

double sub_26A2D7B78(double *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ImageElement.AspectRatio(uint64_t a1)
{
  result = qword_28157B240;
  if (!qword_28157B240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2D7BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.AspectRatio(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A2D7C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.AspectRatio(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A2D7C98(uint64_t a1)
{
  v2 = type metadata accessor for ImageElement.AspectRatio(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A2D7EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB0, &qword_26A4265C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static ImageElement.AspectRatio.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    type metadata accessor for _ProtoImageElement.AspectRatio(0);
    sub_26A424794();
    sub_26A2D820C(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_26A424B64())
    {
      return 1;
    }
  }

  return result;
}

uint64_t ImageElement.AspectRatio.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_0_52();
  sub_26A2D820C(v1, v2, &protocol conformance descriptor for _ProtoImageElement.AspectRatio);

  return sub_26A424B44();
}

uint64_t ImageElement.AspectRatio.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_0_52();
  sub_26A2D820C(v0, v1, &protocol conformance descriptor for _ProtoImageElement.AspectRatio);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2D811C(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A2D820C(&qword_280370990, type metadata accessor for _ProtoImageElement.AspectRatio, &protocol conformance descriptor for _ProtoImageElement.AspectRatio);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2D81B4(uint64_t a1)
{
  result = sub_26A2D820C(&qword_280371DC8, type metadata accessor for ImageElement.AspectRatio, &protocol conformance descriptor for ImageElement.AspectRatio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A2D820C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2D827C(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.AspectRatio(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2D82E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.AspectRatio(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return type metadata accessor for _ProtoImageElement.AspectRatio(0);
}

uint64_t SystemTextClarificationTitle.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v10)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v11 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v10)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2D96E0();
  }

  return sub_26A2D96E0();
}

uint64_t SystemTextClarificationTitle.action.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v25;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v1);
    if (v19)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v20, v21, v1);
      if (!v19)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2D96E0();
    }

    sub_26A2D96E0();
    v14 = 0;
  }

  v22 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v22);
}

uint64_t _ProtoSystemText_ClarificationTitle.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_0_53();
  sub_26A2D968C();
  v60 = type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v34, v35, v14);
    if (v32)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v42, v43, v14);
      if (!v32)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2D96E0();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A2D9734(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D96E0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 28);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v50, 1, v33);
    if (v32)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v50, 1, v33);
      if (!v32)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A2D96E0();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A2D9734(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A2D96E0();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t SystemTextClarificationTitle.init(text1:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  OUTLINED_FUNCTION_4_30();
  sub_26A2D9A04(v6, v7, &protocol conformance descriptor for _ProtoSystemText_ClarificationTitle);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2D8DF0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[3] = a3;
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v27);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26[1] = v26 - v13;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 8))(v16, v17);
  sub_26A2D96E0();
  v18 = type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  v19 = *(v18 + 24);
  sub_26A0E48F0(a1 + v19, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2D96E0();
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v14);
  sub_26A10FD9C();
  v20 = v31;
  if (!v31)
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    goto LABEL_5;
  }

  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v21 + 8))(v20, v21);
  sub_26A2D96E0();
  v22 = v27;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A2D96E0();
  sub_26A2D96E0();
  v23 = *(v18 + 28);
  sub_26A0E48F0(a1 + v23, &off_28036C7C0, &off_26A427400);
  sub_26A2D96E0();
  __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v22);
LABEL_6:
  v24 = v29;

  *a1 = v28;
  a1[1] = v24;
  return result;
}

uint64_t SystemTextClarificationTitle.init(text1:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
  OUTLINED_FUNCTION_4_30();
  sub_26A2D9A04(v4, v5, &protocol conformance descriptor for _ProtoSystemText_ClarificationTitle);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall SystemTextClarificationTitle.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for SystemTextClarificationTitle(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE80, &qword_26A426A08);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_3_39();
  sub_26A2D968C();
  if (redacted)
  {
    _ProtoSystemText_ClarificationTitle.redactedProto.getter(v14);
  }

  else
  {
    sub_26A2D968C();
  }

  sub_26A2D96E0();
  v21[*(v18 + 32)] = redacted;
  sub_26A2D9734(v17, type metadata accessor for SystemTextClarificationTitle);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  SystemTextClarificationTitle.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A1051A4(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  SystemTextClarificationTitle.action.getter(v5);
  sub_26A1050A0();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7868(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A0FB6CC(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036CE80, &qword_26A426A08);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for SystemTextClarificationTitle(uint64_t a1)
{
  result = qword_280371DD0;
  if (!qword_280371DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2D968C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2D96E0()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2D9734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SystemTextClarificationTitle.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
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
  OUTLINED_FUNCTION_0_53();
  sub_26A2D968C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_32();
  sub_26A2D96E0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SystemTextClarificationTitle.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SystemTextClarificationTitle(0);
  *(inited + 64) = &protocol witness table for SystemTextClarificationTitle;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_39();
  sub_26A2D968C();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2D9A04(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2D9A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2D9ABC(uint64_t a1)
{
  result = type metadata accessor for _ProtoSystemText_ClarificationTitle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_26()
{

  return type metadata accessor for _ProtoSystemText_ClarificationTitle(0);
}

uint64_t SnippetPluginModel.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A424764();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x277D61BE8], v2);
  v9 = sub_26A424754();
  (*(v4 + 8))(v8, v2);
  return v9 & 1;
}

uint64_t SnippetPluginModel.data.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v8);
  (*(v4 + 8))(v8, v2);
  v9 = sub_26A424424();

  return v9;
}

uint64_t SnippetPluginModel.redactedJson.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A424BB4();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_18();
  v5 = sub_26A2DA128(a1, a2);
  v7 = v6;
  sub_26A424BA4();
  v8 = sub_26A424B94();
  sub_26A0E4784(v5, v7);
  return v8;
}

uint64_t sub_26A2DA128(uint64_t a1, uint64_t a2)
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

uint64_t SnippetPluginModel.redacted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26A2DA128(a1, a2);
  v8 = v7;
  sub_26A4243D4();
  swift_allocObject();
  sub_26A4243C4();
  sub_26A4243B4();
  sub_26A0E4784(v6, v8);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a1);
}

uint64_t VisualizationMap.mapProperty.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-v4 - 8];
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, v21);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v5);
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
    OUTLINED_FUNCTION_15(v5);
    if (!v11)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2DCDAC();
  }

  return sub_26A2DCDAC();
}

void sub_26A2DA84C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v26 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v14 + 20)) + *v2, &v27);
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v7 = MEMORY[0x277D84F90];
      *(v7 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v18 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v12, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2DCDAC();
    }

    sub_26A2DCDAC();
    v2 = 0;
  }

  v25 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v26, v2, 1, v25);
  OUTLINED_FUNCTION_75();
}

void VisualizationMap.action.getter()
{
  OUTLINED_FUNCTION_76();
  v18 = v2;
  type metadata accessor for _ProtoActionProperty(0);
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
  v13 = type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v13 + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v19);
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      *v6 = MEMORY[0x277D84F90];
      v6[1] = 0;
      v6[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2DCDAC();
    }

    sub_26A2DCDAC();
    v1 = 0;
  }

  v17 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v18, v1, 1, v17);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationMap.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Map(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t VisualizationMap.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Map(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoVisualization_Map.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v115 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  v109 = (v104 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v114 = v104 - v10;
  v113 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v105 = (v104 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v112 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v24 = v104 - v23;
  v25 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v29 = v104 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  v34 = v104 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_40();
  sub_26A2DCF7C();
  v36 = *(type metadata accessor for _ProtoVisualization_Map(0) + 20);
  v116 = v2;
  v117 = v36;
  v37 = *(v2 + v36);
  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, &v122);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v25);
  sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v34);
    if (v39)
    {
      *v29 = MEMORY[0x277D84F90];
      *(v29 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v40 = v115;
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v115);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
      OUTLINED_FUNCTION_17_3(v34);
      v47 = v116;
      v48 = v117;
      if (!v39)
      {
        sub_26A0E48F0(v34, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A2DCDAC();
      v47 = v116;
      v48 = v117;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A2DCE00(v29, type metadata accessor for _ProtoVisualProperty);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v47 + v48);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v50);
      OUTLINED_FUNCTION_24_27();
      v37 = v51;
      *(v47 + v48) = v51;
    }

    sub_26A2DCDAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v25);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, v121);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, v121);
  sub_26A10FD9C();
  v55 = v113;
  v56 = __swift_getEnumTagSinglePayload(v24, 1, v113);
  sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
  if (v56 == 1)
  {
    v57 = v115;
    v58 = v116;
    v59 = v117;
  }

  else
  {
    v60 = v104[3];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v60);
    v58 = v116;
    v59 = v117;
    if (v39)
    {
      v61 = v105;
      *v105 = MEMORY[0x277D84F90];
      *(v61 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v57 = v115;
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v115);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v57);
      OUTLINED_FUNCTION_15(v60);
      if (!v39)
      {
        sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2DCDAC();
      v57 = v115;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_20();
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v58 + v59);
    if ((v68 & 1) == 0)
    {
      v69 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v69);
      OUTLINED_FUNCTION_24_27();
      v37 = v70;
      *(v58 + v59) = v70;
    }

    sub_26A2DCDAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v55);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, v120);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, v120);
  v74 = v111;
  sub_26A10FD9C();
  v75 = v55;
  v76 = __swift_getEnumTagSinglePayload(v74, 1, v55);
  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
  if (v76 != 1)
  {
    v77 = v106;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v77, 1, v75) == 1)
    {
      v78 = v107;
      *v107 = MEMORY[0x277D84F90];
      *(v78 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v57);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v57);
      if (__swift_getEnumTagSinglePayload(v77, 1, v75) != 1)
      {
        sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2DCDAC();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_20();
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v58 + v59);
    if ((v85 & 1) == 0)
    {
      v86 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v86);
      OUTLINED_FUNCTION_24_27();
      v37 = v87;
      *(v58 + v59) = v87;
    }

    sub_26A2DCDAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v75);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, v119);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, v119);
  v91 = v114;
  sub_26A10FD9C();
  v92 = __swift_getEnumTagSinglePayload(v91, 1, v57);
  sub_26A0E48F0(v91, &off_28036C7C0, &off_26A427400);
  if (v92 != 1)
  {
    v93 = v108;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v93);
    v94 = v117;
    if (v39)
    {
      v95 = v109;
      *v109 = MEMORY[0x277D84F90];
      *(v95 + 8) = 0;
      *(v95 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v93);
      v96 = v110;
      if (!v39)
      {
        sub_26A0E48F0(v93, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v95 = v109;
      sub_26A2DCDAC();
      v96 = v110;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v96);
    sub_26A2DCE00(v95, type metadata accessor for _ProtoActionProperty);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v58 + v94);
    if ((v97 & 1) == 0)
    {
      v99 = type metadata accessor for _ProtoVisualization_Map._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v99);
      sub_26A312D54();
      v98 = v100;
      *(v58 + v94) = v100;
    }

    sub_26A2DCDAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v57);
    OUTLINED_FUNCTION_211(v98 + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v118);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationMap.init(mapProperty:text1:text2:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_1_39();
  sub_26A2DCE58(v12, v13, &protocol conformance descriptor for _ProtoVisualization_Map);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2DB978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a8;
  v60 = a1;
  v67 = a6;
  v68 = a7;
  v63 = a4;
  v64 = a5;
  v61 = a3;
  v10 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v53 - v13;
  v65 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v65);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v53 - v16;
  v17 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v18 - 8);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v23);
  v54 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v53 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v30 - 8);
  v31 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  (*(v33 + 8))(v32, v33);
  sub_26A2DCDAC();
  _ProtoVisualization_Map.mapProperty.setter();
  sub_26A10FD9C();
  v34 = v70;
  if (v70)
  {
    v35 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v35 + 8))(v34, v35);
    sub_26A2DCDAC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      sub_26A2DCDAC();
      sub_26A2DCF7C();
      _ProtoVisualization_Map.text1.setter();
      sub_26A2DCE00(v29, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  }

  sub_26A0E48F0(v22, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v36 = v70;
  if (v70)
  {
    v37 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v37 + 8))(v36, v37);
    v38 = v62;
    sub_26A2DCDAC();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v38, 1, v23) != 1)
    {
      v39 = v54;
      sub_26A2DCDAC();
      sub_26A2DCF7C();
      _ProtoVisualization_Map.text2.setter();
      sub_26A2DCE00(v39, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    v38 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v23);
  }

  sub_26A0E48F0(v38, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v40 = v70;
  if (v70)
  {
    v41 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v41 + 8))(v40, v41);
    v42 = v66;
    sub_26A2DCDAC();
    v43 = v65;
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v65);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) != 1)
    {
      v44 = v56;
      sub_26A2DCDAC();
      sub_26A2DCF7C();
      _ProtoVisualization_Map.action.setter();
      sub_26A2DCE00(v44, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CAF8, &unk_26A426D30);
    v42 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v65);
  }

  sub_26A0E48F0(v42, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v45 = v68;

  result = _ProtoVisualization_Map.componentName.setter(v67, v45, v46, v47, v48);
  if (a9)
  {

    return _ProtoVisualization_Map.linkIdentifier.setter(v59, a9, v50, v51, v52);
  }

  return result;
}

uint64_t VisualizationMap.init(mapProperty:text1:text2:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26A0E5D68(a1, v16);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_1_39();
  sub_26A2DCE58(v10, v11, &protocol conformance descriptor for _ProtoVisualization_Map);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v13, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v14);
  OUTLINED_FUNCTION_164_0(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void VisualizationMap.init(mapProperty:text1:text2:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v9 = v6;
  sub_26A0E5D68(v6, v17);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A0E5D68(v17, v13);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_1_39();
  sub_26A2DCE58(v7, v8, &protocol conformance descriptor for _ProtoVisualization_Map);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v3);
  OUTLINED_FUNCTION_164_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_26A0E48F0(&v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall VisualizationMap.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v67 = &v66 - v12;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v17);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for VisualizationMap(0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE78, &qword_26A426A00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  OUTLINED_FUNCTION_10_33();
  sub_26A2DCF7C();
  if (v2)
  {
    _ProtoVisualization_Map.redactedProto.getter();
  }

  else
  {
    sub_26A2DCF7C();
  }

  sub_26A2DCDAC();
  v29[*(v26 + 32)] = v2 & 1;
  sub_26A2DCE00(v25, type metadata accessor for VisualizationMap);
  v30 = MEMORY[0x277D84F90];
  *&v29[*(v26 + 28)] = MEMORY[0x277D84F90];
  v31 = type metadata accessor for _ProtoVisualization_Map(0);
  OUTLINED_FUNCTION_142(*&v29[*(v31 + 20)] + OBJC_IVAR____TtCV10SnippetKit23_ProtoVisualization_MapP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__mapProperty, &v69);
  v32 = v67;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v32);
  if (v33)
  {
    *v16 = v30;
    *(v16 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v34 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
    OUTLINED_FUNCTION_17_3(v32);
    if (!v33)
    {
      sub_26A0E48F0(v32, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2DCDAC();
  }

  sub_26A2DCDAC();
  type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_26A104A2C(v20, 0x65706F725070616DLL, 0xEB00000000797472);
  sub_26A0E48F0(v20, &qword_28036CB20, &unk_26A426470);
  VisualizationMap.text1.getter();
  sub_26A104A04(v9, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  VisualizationMap.text2.getter();
  sub_26A104A04(v9, 0x3274786574, 0xE500000000000000);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  v45 = v68;
  VisualizationMap.action.getter();
  sub_26A104900();
  sub_26A0E48F0(v45, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F77A0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v47, v48, v49, v50, v66, v67);

  v51 = swift_getKeyPath();
  sub_26A0F838C(v51, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v52, v53, v54, v55, v66, v67);

  sub_26A0FABD4(v56, v57, v58, v59, v60, v61, v62);
  sub_26A0E48F0(v29, &qword_28036CE78, &qword_26A426A00);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v64;
  result._countAndFlagsBits = v63;
  return result;
}

uint64_t VisualizationMap.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualization_Map(0);
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
  OUTLINED_FUNCTION_3_40();
  sub_26A2DCF7C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_24();
  sub_26A2DCDAC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t VisualizationMap.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for VisualizationMap(0);
  *(inited + 64) = &protocol witness table for VisualizationMap;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_10_33();
  sub_26A2DCF7C();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2DCE58(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for VisualizationMap(uint64_t a1)
{
  result = qword_280371DE0;
  if (!qword_280371DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2DCDAC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2DCE00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2DCE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2DCF10(uint64_t a1)
{
  result = type metadata accessor for _ProtoVisualization_Map(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2DCF7C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return sub_26A2DCE00(v0, type metadata accessor for _ProtoTextProperty);
}

void OUTLINED_FUNCTION_24_27()
{

  sub_26A312D54();
}

uint64_t OUTLINED_FUNCTION_29_15()
{

  return type metadata accessor for _ProtoVisualization_Map(0);
}

uint64_t sub_26A2DD0AC()
{
  v2 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for _ProtoPlayer(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_20();
  sub_26A2DE9DC();
  v14 = 1;
  if (!__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_26A2DE9DC();
    _ProtoPlayer.OneOf_Control.redactedProto.getter(v10);
    sub_26A2DE984(v6, type metadata accessor for _ProtoPlayer.OneOf_Control);
    v14 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v14, 1, v2);
  sub_26A11C4D8(v10, v1);
  sub_26A2DEA30();
  return sub_26A2DEA30();
}

void sub_26A2DD2DC()
{
  OUTLINED_FUNCTION_76();
  v28[2] = v2;
  v28[3] = v1;
  v28[0] = v4;
  v28[1] = v3;
  v6 = v5;
  v7 = type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_4_3();
  v15 = v6(v14);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  sub_26A2DE9DC();
  v21 = *(v16 + 36);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v7);
  v23 = sub_26A0E48F0(v0, &qword_28036C848, &qword_26A426690);
  if (EnumTagSinglePayload != 1)
  {
    (v28[0])(v23);
    _ProtoVisualElement.redacted.getter();
    OUTLINED_FUNCTION_9_30();
    sub_26A2DE984(v11, v24);
    sub_26A0E48F0(v19 + v21, &qword_28036C848, &qword_26A426690);
    OUTLINED_FUNCTION_8_23();
    sub_26A2DEA30();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
  }

  sub_26A2DEA30();
  sub_26A2DEA30();
  OUTLINED_FUNCTION_75();
}

void sub_26A2DD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v23);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  v26 = &a9 - v25;
  v27 = type metadata accessor for _ProtoCoreChart(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_14();
  v29 = type metadata accessor for _ProtoCoreChartElement(0);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v33 = v32 - v31;
  sub_26A2DE9DC();
  v34 = *(v30 + 32);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    *v20 = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      sub_26A0E48F0(v26, &qword_28036CCB0, &qword_26A426740);
    }
  }

  else
  {
    sub_26A2DEA30();
  }

  sub_26A0E4784(*v20, *(v20 + 8));
  *v20 = xmmword_26A426400;
  sub_26A0E48F0(v33 + v34, &qword_28036CCB0, &qword_26A426740);
  sub_26A2DEA30();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v27);
  sub_26A2DEA30();
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall OrnamentElement.description(redacted:)(Swift::Bool redacted)
{
  v5 = type metadata accessor for _ProtoVisualElement(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_4_3();
  v10 = type metadata accessor for OrnamentElement(v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_20();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC30, &qword_26A426698);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  OUTLINED_FUNCTION_1_40();
  sub_26A2DE9DC();
  if (redacted)
  {
    sub_26A2DD2DC();
  }

  else
  {
    sub_26A2DE9DC();
  }

  sub_26A2DEA30();
  v16[*(v13 + 32)] = redacted;
  OUTLINED_FUNCTION_7_20();
  sub_26A2DE984(v3, v17);
  *&v16[*(v13 + 28)] = MEMORY[0x277D84F90];
  _ProtoOrnamentElement.visual.getter(v2);
  VisualElement.init(proto:)();
  type metadata accessor for VisualElement(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_26A1082A4();
  sub_26A0E48F0(v1, &qword_28036CC28, &qword_26A43A760);
  v22 = v16[8];

  sub_26A14653C(v23, (v22 & 1) == 0, 0x696C696269736976, 0xEA00000000007974, 0, v24, v25, v26, v37);

  sub_26A0FF660(v27, v28, v29, v30, v31, v32, v33);
  sub_26A0E48F0(v16, &qword_28036CC30, &qword_26A426698);
  v34 = OUTLINED_FUNCTION_175();
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

uint64_t type metadata accessor for OrnamentElement(uint64_t a1)
{
  result = qword_280371DF8;
  if (!qword_280371DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OrnamentElement.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for _ProtoVisualElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v29);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_10_34();
  sub_26A2DE9DC();
  v33 = *(type metadata accessor for _ProtoOrnamentElement(0) + 28);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v24);
  sub_26A0E48F0(v32, &qword_28036C848, &qword_26A426690);
  if (EnumTagSinglePayload != 1)
  {
    _ProtoOrnamentElement.visual.getter(v28);
    _ProtoVisualElement.redacted.getter();
    OUTLINED_FUNCTION_9_30();
    sub_26A2DE984(v28, v35);
    sub_26A0E48F0(v23 + v33, &qword_28036C848, &qword_26A426690);
    OUTLINED_FUNCTION_8_23();
    sub_26A2DEA30();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v24);
  }

  OUTLINED_FUNCTION_75();
}

void OrnamentElement.visual.getter()
{
  v1 = type metadata accessor for _ProtoVisualElement(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  _ProtoOrnamentElement.visual.getter(v0);
  VisualElement.init(proto:)();
}

uint64_t OrnamentElement.isShown(for:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = *(v1 + 8);
    v3 = sub_26A165034(*a1, *(a1 + 8), *v1) ^ v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t OrnamentElement.init(_:_:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  type metadata accessor for _ProtoOrnamentElement(0);
  OUTLINED_FUNCTION_0_54();
  sub_26A2DE894(v5, v6, &protocol conformance descriptor for _ProtoOrnamentElement);
  sub_26A4249C4();
  sub_26A148B4C(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2DDDE0(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v18 = a3;
  v7 = ~a4;
  v8 = type metadata accessor for _ProtoVisualElement(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for VisualElement(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v12 + 8))(v13, v12);
  VisualElement.proto.getter();
  sub_26A2DE984(v11, type metadata accessor for VisualElement);
  v14 = *(type metadata accessor for _ProtoOrnamentElement(0) + 28);
  sub_26A0E48F0(a1 + v14, &qword_28036C848, &qword_26A426690);
  sub_26A2DEA30();
  result = __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v8);
  if (v7)
  {
    *(a1 + 8) = (a4 & 1) == 0;
    v16 = v18;
    j__swift_bridgeObjectRetain();

    *a1 = v16;
  }

  return result;
}

uint64_t sub_26A2DDFE0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a1(0);
  v8[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_26A2DE9DC();
  type metadata accessor for _ProtoOrnamentElement(0);
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_54();
  sub_26A2DE894(v5, v6, &protocol conformance descriptor for _ProtoOrnamentElement);
  sub_26A4249C4();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t OrnamentElementConvertible<>.asOrnamentElement()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = a1;
  v9[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  type metadata accessor for _ProtoOrnamentElement(0);
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_54();
  sub_26A2DE894(v6, v7, &protocol conformance descriptor for _ProtoOrnamentElement);
  sub_26A4249C4();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t static OrnamentElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for _ProtoVisualElement(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for VisualElement(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_20();
  _ProtoOrnamentElement.visual.getter(v10);
  VisualElement.init(proto:)();
  _ProtoOrnamentElement.visual.getter(v10);
  VisualElement.init(proto:)();
  static VisualElement.== infix(_:_:)();
  v15 = v14;
  sub_26A2DE984(v2, type metadata accessor for VisualElement);
  sub_26A2DE984(v3, type metadata accessor for VisualElement);
  if ((v15 & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {

    v18 = sub_26A10BE7C(v17);

    v20 = sub_26A10BE7C(v19);
    v16 = sub_26A290AE0(v18, v20);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t OrnamentElement.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoOrnamentElement(0);
  OUTLINED_FUNCTION_0_54();
  sub_26A2DE894(v1, v2, &protocol conformance descriptor for _ProtoOrnamentElement);

  return sub_26A424B44();
}

uint64_t OrnamentElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoOrnamentElement(0);
  OUTLINED_FUNCTION_0_54();
  sub_26A2DE894(v0, v1, &protocol conformance descriptor for _ProtoOrnamentElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2DE568(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoOrnamentElement(0);
  sub_26A2DE894(&qword_28036FB00, type metadata accessor for _ProtoOrnamentElement, &protocol conformance descriptor for _ProtoOrnamentElement);
  sub_26A424B44();
  return sub_26A425554();
}

void Array<A>.ornamentVisual(for:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v25 = v5;
  v6 = type metadata accessor for _ProtoVisualElement(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_14();
  v8 = type metadata accessor for OrnamentElement(0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_17();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = 0;
  v16 = *v4;
  v17 = *(v4 + 8);
  v18 = *(v2 + 16);
  while (v18 != v15)
  {
    OUTLINED_FUNCTION_1_40();
    sub_26A2DE9DC();
    if (!*(*v11 + 16) || (v19 = v11[8], v19 != sub_26A165034(v16, v17, *v11)))
    {
      sub_26A2DEA30();
      _ProtoOrnamentElement.visual.getter(v0);
      v20 = v25;
      VisualElement.init(proto:)();
      OUTLINED_FUNCTION_7_20();
      sub_26A2DE984(v14, v21);
      v22 = 0;
      goto LABEL_8;
    }

    sub_26A2DE984(v11, type metadata accessor for OrnamentElement);
    ++v15;
  }

  v22 = 1;
  v20 = v25;
LABEL_8:
  v23 = type metadata accessor for VisualElement(0);
  __swift_storeEnumTagSinglePayload(v20, v22, 1, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2DE894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2DE904(uint64_t a1)
{
  result = type metadata accessor for _ProtoOrnamentElement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2DE984(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2DE9DC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2DEA30()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_21()
{

  return type metadata accessor for _ProtoOrnamentElement(0);
}

void SimpleItemPlayer.allPlayers.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for Player(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v3 = *(v0 + *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20));
  OUTLINED_FUNCTION_23_23(v3 + 16);
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = MEMORY[0x277D84F90];

    sub_26A10CD88(0, v5, 0);
    v6 = type metadata accessor for _ProtoPlayer(0);
    OUTLINED_FUNCTION_79_0(v6);
    v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v9 + 72);
    do
    {
      sub_26A2E2894();
      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_26A10CD88(v11 > 1, v12 + 1, 1);
      }

      *(v13 + 16) = v12 + 1;
      sub_26A2E26C4();
      v8 += v10;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemPlayer.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v25[-v4 - 8];
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for _ProtoSimpleItem_Player(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v11 + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v25);
  sub_26A10FD9C();
  v12 = OUTLINED_FUNCTION_107();
  if (__swift_getEnumTagSinglePayload(v12, v13, v6) == 1)
  {
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    if (__swift_getEnumTagSinglePayload(v21, v22, v6) != 1)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2E26C4();
  }

  return sub_26A2E26C4();
}

void SimpleItemPlayer.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v20 = v3;
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_23_23(*(v0 + *(v8 + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3);
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A4273F0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v1);
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_23(v1);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      sub_26A2E26C4();
    }

    sub_26A2E26C4();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void sub_26A2DF144()
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
  v9 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_23_23(*(v0 + *(v9 + 20)) + *v3);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v1);
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_23(v1);
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2E26C4();
    }

    sub_26A2E26C4();
    v3 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SimpleItemPlayer.action.getter()
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
  v9 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_23_23(*(v0 + *(v9 + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v1);
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_23(v1);
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2E26C4();
    }

    sub_26A2E26C4();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemPlayer.componentName.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName;
  OUTLINED_FUNCTION_142(v1, v3);

  return OUTLINED_FUNCTION_246();
}

uint64_t SimpleItemPlayer.linkIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier;
  OUTLINED_FUNCTION_142(v1, v3);

  return OUTLINED_FUNCTION_246();
}

void _ProtoSimpleItem_Player.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  v21 = v20;
  v207 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  v30 = OUTLINED_FUNCTION_35(v29);
  v202 = type metadata accessor for _ProtoMultilineTextProperty(v30);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v35 = OUTLINED_FUNCTION_41(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  v39 = OUTLINED_FUNCTION_35(v38);
  v203 = type metadata accessor for _ProtoTextProperty(v39);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
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
  OUTLINED_FUNCTION_49(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v48 = OUTLINED_FUNCTION_41(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_48();
  v56 = OUTLINED_FUNCTION_35(v55);
  v57 = type metadata accessor for _ProtoStandardPlayerButton(v56);
  v58 = OUTLINED_FUNCTION_41(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18();
  v61 = OUTLINED_FUNCTION_35(v60 - v59);
  v62 = type metadata accessor for _ProtoPlayerButton(v61);
  v63 = OUTLINED_FUNCTION_41(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  v66 = OUTLINED_FUNCTION_35(v65 - v64);
  v67 = type metadata accessor for _ProtoPlayer.OneOf_Control(v66);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v71);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v72);
  v74 = OUTLINED_FUNCTION_35(v194 - v73);
  v75 = type metadata accessor for _ProtoPlayer(v74);
  v76 = OUTLINED_FUNCTION_79_0(v75);
  v78 = v77;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_17();
  v81 = v79 - v80;
  MEMORY[0x28223BE20](v82);
  v84 = v194 - v83;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v86);
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_246();
  sub_26A2E2894();
  v87 = *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20);
  v206 = v21;
  v208 = v87;
  v88 = *(v21 + v87);
  OUTLINED_FUNCTION_142(v88 + 16, &v220);
  v89 = *(v88 + 16);
  v90 = *(v89 + 16);
  v91 = MEMORY[0x277D84F90];
  if (v90)
  {
    v219 = MEMORY[0x277D84F90];

    sub_26A10CEE8(0, v90, 0);
    v91 = v219;
    v92 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v194[1] = v89;
    v211 = v92;
    v93 = v89 + v92;
    v94 = *(v78 + 72);
    while (1)
    {
      sub_26A2E2894();
      sub_26A2E2894();
      v95 = 1;
      if (!__swift_getEnumTagSinglePayload(v81, 1, v67))
      {
        break;
      }

LABEL_11:
      v97 = v67;
      __swift_storeEnumTagSinglePayload(v212, v95, 1, v67);
      sub_26A10CF40();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_36_12();
      sub_26A2E2718(v84, type metadata accessor for _ProtoPlayer);
      v219 = v91;
      v99 = *(v91 + 16);
      v98 = *(v91 + 24);
      if (v99 >= v98 >> 1)
      {
        sub_26A10CEE8(v98 > 1, v99 + 1, 1);
        v91 = v219;
      }

      *(v91 + 16) = v99 + 1;
      OUTLINED_FUNCTION_19_19();
      sub_26A2E26C4();
      v93 += v94;
      --v90;
      v67 = v97;
      if (!v90)
      {

        goto LABEL_15;
      }
    }

    sub_26A2E2894();
    sub_26A2E2894();
    OUTLINED_FUNCTION_100();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A2E2894();
        sub_26A2E2718(v209, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_10:
        sub_26A2E2718(v210, type metadata accessor for _ProtoPlayer.OneOf_Control);
        v95 = 0;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_36_12();
      sub_26A2917A8(v212);
      OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_100();
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
      _ProtoPlayerButton.redactedProto.getter(v212);
      OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_100();
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

LABEL_15:
  v100 = v206;
  v101 = v208;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103 = *(v100 + v101);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v104 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
    OUTLINED_FUNCTION_188_0(v104);
    OUTLINED_FUNCTION_24_28();
    OUTLINED_FUNCTION_50_13(v105);
  }

  swift_beginAccess();
  *(v103 + 16) = v91;

  OUTLINED_FUNCTION_142(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v218);
  OUTLINED_FUNCTION_209();
  v106 = OUTLINED_FUNCTION_107();
  v107 = v203;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, v108, v203);
  v110 = OUTLINED_FUNCTION_66();
  sub_26A0E48F0(v110, v111, &unk_26A425BF0);
  if (EnumTagSinglePayload == 1)
  {
    v112 = v207;
  }

  else
  {
    v113 = v194[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v113);
    v112 = v207;
    if (v114)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v115 = OUTLINED_FUNCTION_44_0(*(v107 + 32));
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v112);
      v118 = OUTLINED_FUNCTION_44_0(*(v107 + 36));
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v112);
      OUTLINED_FUNCTION_48_0(v113);
      v121 = v113;
      v122 = v208;
      if (!v114)
      {
        sub_26A0E48F0(v121, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
      v122 = v208;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_7_21();
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v100 + v122);
    if ((v123 & 1) == 0)
    {
      v124 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v124);
      OUTLINED_FUNCTION_24_28();
      OUTLINED_FUNCTION_50_13(v125);
    }

    OUTLINED_FUNCTION_46_9();
    v126 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v107);
    OUTLINED_FUNCTION_211(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v217);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v217);
  v129 = v200;
  OUTLINED_FUNCTION_209();
  v130 = __swift_getEnumTagSinglePayload(v129, 1, v107);
  OUTLINED_FUNCTION_162_0(v129);
  if (v130 == 1)
  {
    v131 = v112;
  }

  else
  {
    v132 = v194[5];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v132);
    v133 = v208;
    if (v114)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v134 = OUTLINED_FUNCTION_44_0(*(v107 + 32));
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v112);
      v137 = OUTLINED_FUNCTION_44_0(*(v107 + 36));
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v112);
      OUTLINED_FUNCTION_48_0(v132);
      if (!v114)
      {
        sub_26A0E48F0(v132, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_7_21();
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v100 + v133);
    if ((v140 & 1) == 0)
    {
      v141 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v141);
      OUTLINED_FUNCTION_24_28();
      OUTLINED_FUNCTION_50_13(v142);
    }

    v131 = v112;
    OUTLINED_FUNCTION_46_9();
    v143 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v107);
    OUTLINED_FUNCTION_211(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v216);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v216);
  sub_26A10FD9C();
  v146 = OUTLINED_FUNCTION_107();
  v147 = v202;
  v149 = __swift_getEnumTagSinglePayload(v146, v148, v202);
  v150 = OUTLINED_FUNCTION_66();
  sub_26A0E48F0(v150, v151, &unk_26A4273F0);
  if (v149 == 1)
  {
    v152 = v201;
    v153 = v131;
  }

  else
  {
    v154 = v194[8];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v154);
    v155 = v208;
    v152 = v201;
    if (v114)
    {
      v156 = v195;
      *v195 = MEMORY[0x277D84F90];
      *(v156 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v157 = OUTLINED_FUNCTION_44_0(*(v147 + 32));
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v131);
      v160 = OUTLINED_FUNCTION_44_0(*(v147 + 36));
      __swift_storeEnumTagSinglePayload(v160, v161, v162, v131);
      OUTLINED_FUNCTION_23(v154);
      v163 = v196;
      if (!v114)
      {
        sub_26A0E48F0(v154, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
      v163 = v196;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_37_13();
    v164 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v100 + v155);
    if ((v164 & 1) == 0)
    {
      v165 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v165);
      OUTLINED_FUNCTION_24_28();
      OUTLINED_FUNCTION_50_13(v166);
    }

    v153 = v131;
    OUTLINED_FUNCTION_100();
    sub_26A2E26C4();
    __swift_storeEnumTagSinglePayload(v163, 0, 1, v147);
    OUTLINED_FUNCTION_211(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v215);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v215);
  OUTLINED_FUNCTION_209();
  v167 = __swift_getEnumTagSinglePayload(v152, 1, v107);
  OUTLINED_FUNCTION_162_0(v152);
  if (v167 != 1)
  {
    v168 = v197;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v168);
    v169 = v208;
    if (v114)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v170 = OUTLINED_FUNCTION_44_0(*(v107 + 32));
      __swift_storeEnumTagSinglePayload(v170, v171, v172, v153);
      v173 = OUTLINED_FUNCTION_44_0(*(v107 + 36));
      __swift_storeEnumTagSinglePayload(v173, v174, v175, v153);
      OUTLINED_FUNCTION_48_0(v168);
      if (!v114)
      {
        sub_26A0E48F0(v168, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_7_21();
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v100 + v169);
    if ((v176 & 1) == 0)
    {
      v177 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v177);
      OUTLINED_FUNCTION_24_28();
      v103 = v178;
      *(v100 + v169) = v178;
    }

    OUTLINED_FUNCTION_46_9();
    v179 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v107);
    OUTLINED_FUNCTION_211(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v214);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v103 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, v214);
  v182 = v204;
  OUTLINED_FUNCTION_209();
  v183 = __swift_getEnumTagSinglePayload(v182, 1, v153);
  OUTLINED_FUNCTION_162_0(v182);
  if (v183 != 1)
  {
    v184 = v198;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v184, 1, v153) == 1)
    {
      v185 = v199;
      *v199 = MEMORY[0x277D84F90];
      v185[1] = 0;
      v185[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v184, 1, v153) != 1)
      {
        sub_26A0E48F0(v184, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v205);
    OUTLINED_FUNCTION_37_13();
    v186 = v208;
    v187 = swift_isUniquelyReferenced_nonNull_native();
    v188 = *(v100 + v186);
    if ((v187 & 1) == 0)
    {
      v189 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v189);
      sub_26A2722B4();
      v188 = v190;
      *(v100 + v186) = v190;
    }

    sub_26A2E26C4();
    v191 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v153);
    OUTLINED_FUNCTION_211(v188 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &v213);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemPlayer.init(player:text1:text2:text3:text4:action:componentName:linkIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoSimpleItem_Player(0);
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a6;
  v32 = a5;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v36 = a10;
  OUTLINED_FUNCTION_0_55();
  v19 = sub_26A2E2770(v17, v18, &protocol conformance descriptor for _ProtoSimpleItem_Player);
  OUTLINED_FUNCTION_56_1(sub_26A2E2620, v26, v20, v19);

  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  v21 = OUTLINED_FUNCTION_66();
  sub_26A0E48F0(v21, v22, &unk_26A428720);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(a3);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

{
  sub_26A0E5D68(a2, v40);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Player(0);
  OUTLINED_FUNCTION_51_13();
  v26 = a1;
  v27 = v13;
  v28 = v39;
  v29 = v38;
  v30 = v36;
  v31 = v37;
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v35 = a10;
  OUTLINED_FUNCTION_0_55();
  v16 = sub_26A2E2770(v14, v15, &protocol conformance descriptor for _ProtoSimpleItem_Player);
  OUTLINED_FUNCTION_56_1(sub_26A2E28E8, v25, v17, v16);

  v18 = OUTLINED_FUNCTION_66();
  sub_26A0E48F0(v18, v19, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(a5);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v37);
  sub_26A0E48F0(v38, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v39);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_26A2E0914(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = a1;
  v96 = a8;
  v92 = a6;
  v89 = a5;
  v86 = a3;
  v14 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = v76 - v17;
  v93 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v93);
  v81 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = v76 - v20;
  v21 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v21 - 8);
  v83 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v23 - 8);
  v88 = v76 - v24;
  v87 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v87);
  v78 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v79 = v76 - v27;
  v28 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v28 - 8);
  v29 = type metadata accessor for _ProtoPlayer(0) - 8;
  MEMORY[0x28223BE20](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v30 - 8);
  v94 = v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v85 = v76 - v33;
  v91 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v91);
  v80 = v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v77 = v76 - v36;
  MEMORY[0x28223BE20](v37);
  v90 = v76 - v38;
  v39 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v39 - 8);
  v98 = v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a2 + 16);
  if (v41)
  {
    v76[1] = a4;
    v76[2] = a7;
    v102 = MEMORY[0x277D84F90];
    sub_26A10CEE8(0, v41, 0);
    v42 = v102;
    v43 = a2 + 32;
    do
    {
      sub_26A0E5D68(v43, v99);
      v45 = v100;
      v44 = v101;
      __swift_project_boxed_opaque_existential_1(v99, v100);
      (*(v44 + 8))(v45, v44);
      sub_26A2E26C4();
      __swift_destroy_boxed_opaque_existential_1(v99);
      v102 = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_26A10CEE8(v46 > 1, v47 + 1, 1);
        v42 = v102;
      }

      *(v42 + 16) = v47 + 1;
      sub_26A2E26C4();
      v43 += 40;
      --v41;
    }

    while (v41);
  }

  _ProtoSimpleItem_Player.player.setter();
  v48 = v86[3];
  v49 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v48);
  (*(v49 + 8))(v48, v49);
  sub_26A2E26C4();
  _ProtoSimpleItem_Player.text1.setter();
  sub_26A10FD9C();
  v50 = v100;
  v51 = v91;
  if (v100)
  {
    v52 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    (*(v52 + 8))(v50, v52);
    v53 = v85;
    sub_26A2E26C4();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v51);
    __swift_destroy_boxed_opaque_existential_1(v99);
    if (__swift_getEnumTagSinglePayload(v53, 1, v51) != 1)
    {
      v54 = v77;
      sub_26A2E26C4();
      sub_26A2E2894();
      _ProtoSimpleItem_Player.text2.setter();
      sub_26A2E2718(v54, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v99, &qword_28036CB08, &unk_26A428720);
    v53 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v51);
  }

  sub_26A0E48F0(v53, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v55 = v100;
  if (v100)
  {
    v56 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    (*(v56 + 8))(v55, v56);
    v57 = v88;
    sub_26A2E26C4();
    v58 = v87;
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v87);
    __swift_destroy_boxed_opaque_existential_1(v99);
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) != 1)
    {
      v59 = v79;
      sub_26A2E26C4();
      sub_26A2E2894();
      _ProtoSimpleItem_Player.text3.setter();
      sub_26A2E2718(v59, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v99, &qword_28036CB10, &unk_26A426460);
    v57 = v88;
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v87);
  }

  sub_26A0E48F0(v57, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v60 = v100;
  if (v100)
  {
    v61 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    (*(v61 + 8))(v60, v61);
    v62 = v95;
    sub_26A2E26C4();
    v63 = v93;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v93);
    __swift_destroy_boxed_opaque_existential_1(v99);
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) != 1)
    {
      v64 = v82;
      sub_26A2E26C4();
      sub_26A2E2894();
      _ProtoSimpleItem_Player.action.setter();
      sub_26A2E2718(v64, type metadata accessor for _ProtoActionProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v99, &qword_28036CAF8, &unk_26A426D30);
    v62 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v93);
  }

  sub_26A0E48F0(v62, &off_28036C7C0, &off_26A427400);
LABEL_21:
  sub_26A10FD9C();
  v65 = v100;
  if (v100)
  {
    v66 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    (*(v66 + 8))(v65, v66);
    v67 = v94;
    sub_26A2E26C4();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v51);
    __swift_destroy_boxed_opaque_existential_1(v99);
    if (__swift_getEnumTagSinglePayload(v67, 1, v51) != 1)
    {
      v68 = v80;
      sub_26A2E26C4();
      sub_26A2E2894();
      _ProtoSimpleItem_Player.text4.setter();
      sub_26A2E2718(v68, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v99, &qword_28036CB08, &unk_26A428720);
    v67 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v51);
  }

  sub_26A0E48F0(v67, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:

  result = _ProtoSimpleItem_Player.componentName.setter(v96, a9, v69, v70, v71);
  if (a11)
  {

    return _ProtoSimpleItem_Player.linkIdentifier.setter(a10, a11, v73, v74, v75);
  }

  return result;
}

uint64_t SimpleItemPlayer.init(player:text1:text2:text3:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_26A2E1808(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_26A2E28E8);
}

{
  return sub_26A2E1808(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_26A2E28E8);
}

uint64_t sub_26A2E1808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_18();
  v25 = v16;
  v18 = v17;
  sub_26A0E5D68(v16, v42);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Player(0);
  OUTLINED_FUNCTION_51_13();
  v27 = v18;
  v28 = v19;
  v29 = v41;
  v30 = v40;
  v31 = v37;
  v32 = v38;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  OUTLINED_FUNCTION_0_55();
  v22 = sub_26A2E2770(v20, v21, &protocol conformance descriptor for _ProtoSimpleItem_Player);
  OUTLINED_FUNCTION_56_1(a10, v26, v23, v22);

  sub_26A0E48F0(v12, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v11, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v10, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_26A0E48F0(v37, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(v38);
  sub_26A0E48F0(v40, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(v41);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t SimpleItemPlayer.init(player:text1:text2:text3:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_26A2E1A30(a1, a2, a3, a4, a5, a6, a7, sub_26A2E28E8);
}

{
  return sub_26A2E1A30(a1, a2, a3, a4, a5, a6, a7, sub_26A2E28E8);
}

uint64_t sub_26A2E1A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_35_18();
  v14 = v13;
  v16 = v15;
  sub_26A0E5D68(v13, v46);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Player(0);
  OUTLINED_FUNCTION_51_13();
  v34 = v17;
  OUTLINED_FUNCTION_40_15();
  v38 = v18;
  OUTLINED_FUNCTION_0_55();
  v21 = sub_26A2E2770(v19, v20, &protocol conformance descriptor for _ProtoSimpleItem_Player);
  OUTLINED_FUNCTION_32_14(v21, v22, v23, v24, v25, v26, v27, v28, v30, a8, v32, v33, v16, v34, v35, v36, v37, v38, a6, a7, v39, v40);

  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v9, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v8, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_26A0E48F0(v41, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(v42);
  sub_26A0E48F0(v44, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(v45);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t SimpleItemPlayer.init(player:text1:text2:text3:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26A2E1C24(a1, a2, a3, a4, a5, sub_26A2E28E8);
}

{
  return sub_26A2E1C24(a1, a2, a3, a4, a5, sub_26A2E28E8);
}

uint64_t sub_26A2E1C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_35_18();
  v10 = v9;
  v12 = v11;
  sub_26A0E5D68(v9, v42);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Player(0);
  OUTLINED_FUNCTION_51_13();
  v30 = v13;
  OUTLINED_FUNCTION_40_15();
  v34 = v14;
  OUTLINED_FUNCTION_0_55();
  v17 = sub_26A2E2770(v15, v16, &protocol conformance descriptor for _ProtoSimpleItem_Player);
  OUTLINED_FUNCTION_32_14(v17, v18, v19, v20, v21, v22, v23, v24, v26, a6, v28, v29, v12, v30, v31, v32, v33, v34, 0, 0xE000000000000000, v35, v36);

  sub_26A0E48F0(v8, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v7, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_26A0E48F0(v37, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v38, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(v40, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v41, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t SimpleItemPlayer.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_Player(0);
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
  OUTLINED_FUNCTION_5_33();
  sub_26A2E2894();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_18_22();
  sub_26A2E26C4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SimpleItemPlayer.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemPlayer(0);
  *(inited + 64) = &protocol witness table for SimpleItemPlayer;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_15_27();
  sub_26A2E2894();
  OUTLINED_FUNCTION_142(&off_280372D50, v8);

  v2 = sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  v6[2] = inited;
  v6[3] = v2;
  v6[4] = 0;
  v7 = -1;
  v3 = sub_26A2E2770(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_56_1(sub_26A10D098, v6, v4, v3);

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SimpleItemPlayer(uint64_t a1)
{
  result = qword_280371E08;
  if (!qword_280371E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2E26C4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2E2718(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2E2770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2E2828(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2E2894()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return sub_26A2E2718(v0, type metadata accessor for _ProtoTextProperty);
}

uint64_t OUTLINED_FUNCTION_23_23(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_24_28()
{

  sub_26A2722B4();
}

uint64_t OUTLINED_FUNCTION_28_13()
{

  return type metadata accessor for _ProtoSimpleItem_Player(0);
}

uint64_t OUTLINED_FUNCTION_32_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_36_12()
{

  return sub_26A2E26C4();
}

uint64_t OUTLINED_FUNCTION_37_13()
{

  return sub_26A2E2718(v1, v0);
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return sub_26A2E26C4();
}

uint64_t OUTLINED_FUNCTION_55_13()
{

  return type metadata accessor for _ProtoSimpleItem_Player(0);
}

uint64_t _ProtoSash_Standard.title.getter()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_142(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title, v2 - 72);
  OUTLINED_FUNCTION_52_15();
  type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v7)
  {
    return sub_26A2E53B4();
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v7)
  {
    return sub_26A0E48F0(v1, &qword_280371E60, &qword_26A43A9E0);
  }

  return result;
}

uint64_t _ProtoSash_Standard.title.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_10_35();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_49_17();
  v4 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSash_Standard.SashTitle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoSash_Standard.title.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoSash_Standard.SashTitle(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0;
    *(v11 + 16) = -1;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_280371E60, &qword_26A43A9E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSash_Standard.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_10_35();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_49_17();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSash_Standard.thumbnail.modify()
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
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A2E3178(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_26A2E5408();
    a3(v6);
    sub_26A2E545C();
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

BOOL sub_26A2E3258()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_142(v0 + *v5, v1 - 72);
  sub_26A10FD9C();
  v14 = v3(0);
  v15 = __swift_getEnumTagSinglePayload(v13, 1, v14) != 1;
  sub_26A0E48F0(v13, v9, v7);
  return v15;
}

uint64_t sub_26A2E335C(uint64_t *a1, uint64_t *a2, void (*a3)(void), void *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    v12 = v13;
    *(v7 + v10) = v13;
  }

  a3(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_211(v12 + *a4, v19);
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSash_Standard.titleColor.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_10_35();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_49_17();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSash_Standard.titleColor.modify()
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
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2E372C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_142(v0 + *v3, v1 - 72);
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v9);
  if (!v10)
  {
    return sub_26A2E53B4();
  }

  *v5 = MEMORY[0x277D84F90];
  *(v5 + 8) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v11 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  result = OUTLINED_FUNCTION_23(v9);
  if (!v10)
  {
    return sub_26A0E48F0(v9, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSash_Standard.backgroundColor.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_10_35();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_49_17();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSash_Standard.backgroundColor.modify()
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
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSash_Standard.action.getter()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_142(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action, v2 - 72);
  OUTLINED_FUNCTION_52_15();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v7)
  {
    return sub_26A2E53B4();
  }

  *v4 = MEMORY[0x277D84F90];
  v4[1] = 0;
  v4[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v7)
  {
    return sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A2E3C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A2E5408();
  return a7(v11);
}

uint64_t _ProtoSash_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_10_35();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_49_17();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSash_Standard.action.modify()
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
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    *v11 = MEMORY[0x277D84F90];
    v11[1] = 0;
    v11[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_16();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSash_Standard.componentName.getter()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_142(*(v0 + v1) + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName, v3);

  return OUTLINED_FUNCTION_246();
}

uint64_t sub_26A2E3FE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSash_Standard.componentName.setter(v1, v2);
}

uint64_t _ProtoSash_Standard.componentName.setter(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for _ProtoSash_Standard(0);
  v7 = OUTLINED_FUNCTION_188_1(v6);
  v8 = *(v2 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    OUTLINED_FUNCTION_42_1(v9);
  }

  v10 = (v8 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  OUTLINED_FUNCTION_26_10(v10, v12);
  *v10 = a1;
  v10[1] = a2;
}

void (*_ProtoSash_Standard.componentName.modify())(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *v0 = v2;
  v2[8] = v1;
  OUTLINED_FUNCTION_6_24();
  *(v2 + 18) = v3;
  v4 = (*(v1 + v3) + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v4, v2);
  v5 = v4[1];
  v2[6] = *v4;
  v2[7] = v5;

  return sub_26A2E4138;
}

void sub_26A2E4138(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    v5 = OUTLINED_FUNCTION_125();
    _ProtoSash_Standard.componentName.setter(v5, v6);
  }

  else
  {
    v7 = *(v2 + 72);
    v8 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 72);
      v12 = *(v2 + 64);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_5_3();
      sub_26A2E4FA8();
      v10 = v13;
      *(v12 + v11) = v13;
    }

    v14 = (v10 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
    OUTLINED_FUNCTION_26_10(v14, v2 + 24);
    *v14 = v3;
    v14[1] = v4;
  }

  free(v2);
}

uint64_t _ProtoSash_Standard.showOnWatch.getter()
{
  OUTLINED_FUNCTION_6_24();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch, v5);
  return *(v2 + v3);
}

uint64_t _ProtoSash_Standard.showOnWatch.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    v6 = v7;
    *(v2 + v4) = v7;
  }

  v8 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  result = OUTLINED_FUNCTION_26_10(v6 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch, v10);
  *(v6 + v8) = a1 & 1;
  return result;
}

void (*_ProtoSash_Standard.showOnWatch.modify())(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *v0 = v2;
  v2[9] = v1;
  OUTLINED_FUNCTION_6_24();
  *(v2 + 20) = v3;
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_142(v4 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch, v2);
  *(v2 + 84) = *(v4 + v5);
  return sub_26A2E4344;
}

void sub_26A2E4344(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_7_22();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    v8 = v11;
    *(v10 + v9) = v11;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_26_10(v8 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch, v3 + v12);
  *(v8 + v13) = v6;

  free(v3);
}

uint64_t _ProtoSash_Standard.unknownFields.getter()
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_175();

  return v1(v0);
}

uint64_t _ProtoSash_Standard.unknownFields.setter()
{
  OUTLINED_FUNCTION_110();
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_246();

  return v1(v0);
}

uint64_t _ProtoSash_Standard.SashTitle.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_26A148B68(v2, v3, v4);
}

uint64_t _ProtoSash_Standard.SashTitle.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_26A0D6768(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t _ProtoSash_Standard.SashTitle.applicationBundleIdentifier.getter()
{
  OUTLINED_FUNCTION_37_14();
  if (!v1 && (v0 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_175();
    sub_26A0D6660(v2, v3);
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A2E457C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSash_Standard.SashTitle.applicationBundleIdentifier.setter(v1, v2);
}

uint64_t (*_ProtoSash_Standard.SashTitle.applicationBundleIdentifier.modify())(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_49_7();
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_37_14();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = OUTLINED_FUNCTION_125();
    sub_26A0D6660(v7, v8);
  }

  *v0 = v5;
  v0[1] = v6;
  return sub_26A2E4634;
}

uint64_t _ProtoSash_Standard.SashTitle.text.getter()
{
  OUTLINED_FUNCTION_37_14();
  if (!v1 && (v0 & 1) != 0)
  {
    v2 = OUTLINED_FUNCTION_175();
    sub_26A0D6660(v2, v3);
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A2E4684(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSash_Standard.SashTitle.text.setter(v1, v2);
}

uint64_t sub_26A2E46CC(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_26A0D6768(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t (*_ProtoSash_Standard.SashTitle.text.modify())(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_49_7();
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_37_14();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = OUTLINED_FUNCTION_125();
    sub_26A0D6660(v7, v8);
  }

  *v0 = v6;
  v0[1] = v5;
  return sub_26A2E4780;
}

uint64_t sub_26A2E4788(uint64_t *a1, char a2, char a3)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  if (a2)
  {

    sub_26A0D6768(v7, v8, v9);
    *v5 = v6;
    *(v5 + 8) = v4;
    *(v5 + 16) = a3;
  }

  else
  {
    result = sub_26A0D6768(*v5, *(v5 + 8), *(v5 + 16));
    *v5 = v6;
    *(v5 + 8) = v4;
    *(v5 + 16) = a3;
  }

  return result;
}

uint64_t _ProtoSash_Standard.SashTitle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoSash_Standard.SashTitle(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoSash_Standard.SashTitle.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoSash_Standard.SashTitle(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*_ProtoSash_Standard.SashTitle.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoSash_Standard.SashTitle(v0);
  return nullsub_1;
}

uint64_t static _ProtoSash_Standard.SashTitle.OneOf_Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_26A425354();
        v28 = OUTLINED_FUNCTION_125();
        v30 = OUTLINED_FUNCTION_9_31(v28, v29);
        v32 = OUTLINED_FUNCTION_9_31(v30, v31);
        sub_26A0D6740(v32, v33);
        v14 = OUTLINED_FUNCTION_125();
        goto LABEL_16;
      }

      v42 = OUTLINED_FUNCTION_9_31(v26, v2);
      v44 = OUTLINED_FUNCTION_9_31(v42, v43);
      sub_26A0D6740(v44, v45);
      v46 = OUTLINED_FUNCTION_246();
      sub_26A0D6740(v46, v47);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_5_34();
    v18 = OUTLINED_FUNCTION_9_31(v16, v17);
    v20 = OUTLINED_FUNCTION_9_31(v18, v19);
    sub_26A0D6740(v20, v21);
    v22 = OUTLINED_FUNCTION_5_34();
    sub_26A0D6740(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6660(v34, v35);
    v36 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6660(v36, v37);
    v38 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6740(v38, v39);
    v40 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6740(v40, v41);
    return v24;
  }

  OUTLINED_FUNCTION_246();
  v7 = sub_26A425354();
  v8 = OUTLINED_FUNCTION_125();
  sub_26A0D6660(v8, v9);
  v10 = OUTLINED_FUNCTION_8_24();
  sub_26A0D6660(v10, v11);
  v12 = OUTLINED_FUNCTION_8_24();
  sub_26A0D6740(v12, v13);
  v14 = OUTLINED_FUNCTION_125();
LABEL_16:
  sub_26A0D6740(v14, v15);
  return v7 & 1;
}

uint64_t _ProtoSash_Standard.init()@<X0>(uint64_t a2@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  if (qword_28036C4D8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_280371E30;
}

uint64_t sub_26A2E4B64()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371E18);
  __swift_project_value_buffer(v0, qword_280371E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26A42DE50;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "thumbnail";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title_color";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "background_color";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "show_on_watch";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2E4E88()
{
  OUTLINED_FUNCTION_7_22();
  result = sub_26A2E4EB8();
  qword_280371E30 = result;
  return result;
}

uint64_t sub_26A2E4EB8()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title;
  v2 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__thumbnail;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__titleColor, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__backgroundColor, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch) = 0;
  return v0;
}

void sub_26A2E4FA8()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_7();
  v10 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title;
  type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__thumbnail;
  v16 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__titleColor;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  v37 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__backgroundColor;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v16);
  v38 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = (v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  *(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch) = 0;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title, &v49);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v10, v48);
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__thumbnail, v48);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v15, v47);
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__titleColor, v47);
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v20, v46);
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__backgroundColor, v46);
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v37, v45);
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action, v45);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v38, v44);
  sub_26A10CF40();
  swift_endAccess();
  v32 = (v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName, v44);
  v34 = *v32;
  v33 = v32[1];
  OUTLINED_FUNCTION_26_10(v31, &v43);
  *v31 = v34;
  v31[1] = v33;

  v35 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch, &v42);
  LOBYTE(v35) = *(v2 + v35);

  v36 = v39;
  OUTLINED_FUNCTION_26_10(v0 + v39, &v41);
  *(v0 + v36) = v35;
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2E53B4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2E5408()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2E545C()
{
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A2E54B0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__title, &qword_280371E60, &qword_26A43A9E0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__titleColor, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__backgroundColor, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A2E5584()
{
  v0 = sub_26A2E54B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoSash_Standard.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoSash_Standard._StorageClass(0);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A2E4FA8();
    *(v0 + v1) = v2;
  }

  v3 = OUTLINED_FUNCTION_13_10();
  return sub_26A2E5668(v3, v4, v5, v6);
}

uint64_t sub_26A2E5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A2E579C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A2E5878(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A2E5954(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A2E5A30(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A2E5B0C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A2E5BE8(a2, a1);
        break;
      case 7:
        sub_26A2E5C74(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2E579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  sub_26A2E79F4(&qword_280371EC8, type metadata accessor for _ProtoSash_Standard.SashTitle, &protocol conformance descriptor for _ProtoSash_Standard.SashTitle);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2E5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2E79F4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2E5954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2E79F4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2E5A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2E79F4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2E5B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2E79F4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2E5BE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A2E5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26A424874();
  return swift_endAccess();
}

uint64_t _ProtoSash_Standard.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ProtoSash_Standard(0);
  result = sub_26A2E5D6C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2E5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2E5EF4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2E60DC(a1, a2, a3, a4);
    sub_26A2E62C4(a1, a2, a3, a4);
    sub_26A2E64AC(a1, a2, a3, a4);
    sub_26A2E6694(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
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

    v14 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
    result = swift_beginAccess();
    if (*(a1 + v14) == 1)
    {
      return sub_26A4249E4();
    }
  }

  return result;
}

uint64_t sub_26A2E5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_280371E60, &qword_26A43A9E0);
  }

  sub_26A2E53B4();
  sub_26A2E79F4(&qword_280371EC8, type metadata accessor for _ProtoSash_Standard.SashTitle, &protocol conformance descriptor for _ProtoSash_Standard.SashTitle);
  sub_26A424A84();
  return sub_26A2E545C();
}

uint64_t sub_26A2E60DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2E53B4();
  sub_26A2E79F4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2E545C();
}

uint64_t sub_26A2E62C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2E53B4();
  sub_26A2E79F4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2E545C();
}

uint64_t sub_26A2E64AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2E53B4();
  sub_26A2E79F4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2E545C();
}

uint64_t sub_26A2E6694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2E53B4();
  sub_26A2E79F4(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2E545C();
}

uint64_t static _ProtoSash_Standard.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_24();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_26A2E6948(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_23_24();
  sub_26A2E79F4(v8, v9, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A2E6948(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v86 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v86);
  v83 = (&v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v85);
  v87 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = (&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v89 = &v83 - v8;
  v99 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v99);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v102);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v83 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v83 - v20;
  MEMORY[0x28223BE20](v21);
  v96 = &v83 - v22;
  MEMORY[0x28223BE20](v23);
  v95 = &v83 - v24;
  MEMORY[0x28223BE20](v25);
  v101 = &v83 - v26;
  v27 = type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  MEMORY[0x28223BE20](v27);
  v97 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371F28, &unk_26A43ADE8);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v83 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371E60, &qword_26A43A9E0);
  MEMORY[0x28223BE20](v33 - 8);
  v100 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v83 - v36;
  swift_beginAccess();
  v38 = v103;
  sub_26A10FD9C();
  swift_beginAccess();
  v39 = *(v30 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v32, 1, v27) == 1)
  {

    sub_26A0E48F0(v37, &qword_280371E60, &qword_26A43A9E0);
    if (__swift_getEnumTagSinglePayload(&v32[v39], 1, v27) == 1)
    {
      sub_26A0E48F0(v32, &qword_280371E60, &qword_26A43A9E0);
      goto LABEL_9;
    }

LABEL_6:
    v41 = &qword_280371F28;
    v42 = &unk_26A43ADE8;
LABEL_7:
    v43 = v32;
    goto LABEL_22;
  }

  v40 = v100;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v32[v39], 1, v27) == 1)
  {

    sub_26A0E48F0(v37, &qword_280371E60, &qword_26A43A9E0);
    sub_26A2E545C();
    goto LABEL_6;
  }

  v44 = v97;
  sub_26A2E53B4();

  v45 = static _ProtoSash_Standard.SashTitle.== infix(_:_:)(v40, v44);
  sub_26A2E545C();
  sub_26A0E48F0(v37, &qword_280371E60, &qword_26A43A9E0);
  sub_26A2E545C();
  sub_26A0E48F0(v32, &qword_280371E60, &qword_26A43A9E0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  swift_beginAccess();
  v46 = v101;
  sub_26A10FD9C();
  swift_beginAccess();
  v47 = *(v102 + 48);
  v48 = v98;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v49 = v99;
  if (__swift_getEnumTagSinglePayload(v48, 1, v99) == 1)
  {
    sub_26A0E48F0(v46, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v48 + v47, 1, v49) == 1)
    {
      sub_26A0E48F0(v48, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_16;
    }

LABEL_14:
    v41 = &qword_28036D190;
    v42 = &unk_26A427130;
    v43 = v48;
    goto LABEL_22;
  }

  v50 = v95;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v48 + v47, 1, v49) == 1)
  {
    sub_26A0E48F0(v101, &qword_28036CAE8, &unk_26A426430);
    sub_26A2E545C();
    goto LABEL_14;
  }

  v51 = v94;
  sub_26A2E53B4();
  v52 = static _ProtoVisualProperty.== infix(_:_:)(v50, v51);
  sub_26A2E545C();
  sub_26A0E48F0(v101, &qword_28036CAE8, &unk_26A426430);
  sub_26A2E545C();
  sub_26A0E48F0(v48, &qword_28036CAE8, &unk_26A426430);
  if ((v52 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v53 = v96;
  sub_26A10FD9C();
  swift_beginAccess();
  v54 = *(v102 + 48);
  v55 = v93;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v55, 1, v49) == 1)
  {
    sub_26A0E48F0(v53, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v49) == 1)
    {
      sub_26A0E48F0(v55, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_26;
    }

LABEL_21:
    v41 = &qword_28036D190;
    v42 = &unk_26A427130;
    v43 = v55;
    goto LABEL_22;
  }

  v56 = v91;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v49) == 1)
  {
    sub_26A0E48F0(v96, &qword_28036CAE8, &unk_26A426430);
    sub_26A2E545C();
    goto LABEL_21;
  }

  v59 = v94;
  sub_26A2E53B4();
  v60 = v55;
  v61 = static _ProtoVisualProperty.== infix(_:_:)(v56, v59);
  sub_26A2E545C();
  sub_26A0E48F0(v96, &qword_28036CAE8, &unk_26A426430);
  sub_26A2E545C();
  sub_26A0E48F0(v60, &qword_28036CAE8, &unk_26A426430);
  if ((v61 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  swift_beginAccess();
  v62 = v92;
  sub_26A10FD9C();
  swift_beginAccess();
  v63 = *(v102 + 48);
  v32 = v90;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v32, 1, v49) == 1)
  {
    sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(&v32[v63], 1, v49) == 1)
    {
      sub_26A0E48F0(v32, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v64 = v88;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v32[v63], 1, v49) == 1)
  {
    sub_26A0E48F0(v92, &qword_28036CAE8, &unk_26A426430);
    sub_26A2E545C();
LABEL_31:
    v41 = &qword_28036D190;
    v42 = &unk_26A427130;
    goto LABEL_7;
  }

  v65 = v94;
  sub_26A2E53B4();
  v66 = static _ProtoVisualProperty.== infix(_:_:)(v64, v65);
  sub_26A2E545C();
  sub_26A0E48F0(v92, &qword_28036CAE8, &unk_26A426430);
  sub_26A2E545C();
  sub_26A0E48F0(v32, &qword_28036CAE8, &unk_26A426430);
  if ((v66 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_33:
  swift_beginAccess();
  v67 = v89;
  sub_26A10FD9C();
  swift_beginAccess();
  v68 = *(v85 + 48);
  v69 = v87;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v70 = v86;
  if (__swift_getEnumTagSinglePayload(v69, 1, v86) != 1)
  {
    v78 = v84;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v69 + v68, 1, v70) == 1)
    {
      sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
      sub_26A2E545C();
      goto LABEL_44;
    }

    v79 = v83;
    sub_26A2E53B4();
    sub_26A0E36D8(*v78, *v79);
    if (v80)
    {
      v81 = v78[1] == v79[1] && v78[2] == v79[2];
      if (v81 || (sub_26A425354() & 1) != 0)
      {
        sub_26A424794();
        sub_26A2E79F4(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v82 = sub_26A424B64();
        sub_26A2E545C();
        sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
        sub_26A2E545C();
        sub_26A0E48F0(v69, &off_28036C7C0, &off_26A427400);
        if ((v82 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_36;
      }
    }

    sub_26A2E545C();
    sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
    sub_26A2E545C();
    v43 = v69;
    v41 = &off_28036C7C0;
    v42 = &off_26A427400;
LABEL_22:
    sub_26A0E48F0(v43, v41, v42);
    goto LABEL_23;
  }

  sub_26A0E48F0(v67, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v69 + v68, 1, v70) != 1)
  {
LABEL_44:
    v41 = &qword_28036C7C8;
    v42 = &qword_26A425C00;
    v43 = v69;
    goto LABEL_22;
  }

  sub_26A0E48F0(v69, &off_28036C7C0, &off_26A427400);
LABEL_36:
  v71 = (a1 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  v74 = (v38 + OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__componentName);
  swift_beginAccess();
  v75 = v72 == *v74 && v73 == v74[1];
  if (v75 || (sub_26A425354() & 1) != 0)
  {
    v76 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
    swift_beginAccess();
    LOBYTE(v76) = *(a1 + v76);

    v77 = OBJC_IVAR____TtCV10SnippetKit19_ProtoSash_StandardP33_EC7A3DB01F3891AB895072D0EC30EE1713_StorageClass__showOnWatch;
    swift_beginAccess();
    LOBYTE(v77) = *(v38 + v77);

    v57 = v76 ^ v77 ^ 1;
    return v57 & 1;
  }

LABEL_23:

  v57 = 0;
  return v57 & 1;
}

uint64_t sub_26A2E79F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2E7A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2E79F4(&qword_280371F20, type metadata accessor for _ProtoSash_Standard, &protocol conformance descriptor for _ProtoSash_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2E7B18(uint64_t a1)
{
  v2 = sub_26A2E79F4(&qword_28036F7F8, type metadata accessor for _ProtoSash_Standard, &protocol conformance descriptor for _ProtoSash_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2E7B88(uint64_t a1, uint64_t a2)
{
  sub_26A2E79F4(&qword_28036F7F8, type metadata accessor for _ProtoSash_Standard, &protocol conformance descriptor for _ProtoSash_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A2E7C08()
{
  result = MEMORY[0x26D65BA70](0x746954687361532ELL, 0xEA0000000000656CLL);
  qword_280371E38 = 0xD000000000000017;
  unk_280371E40 = 0x800000026A449C40;
  return result;
}

uint64_t static _ProtoSash_Standard.SashTitle.protoMessageName.getter()
{
  if (qword_28036C4E0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A2E7CDC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371E48);
  __swift_project_value_buffer(v0, qword_280371E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "application_bundle_identifier";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoSash_Standard.SashTitle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26A424834();
    if (v3 || (v7 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v8 = OUTLINED_FUNCTION_246();
      v10 = a2;
      v11 = a3;
      v12 = 1;
LABEL_7:
      sub_26A2E7F54(v8, v9, v10, v11, v12);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_246();
      v10 = a2;
      v11 = a3;
      v12 = 0;
      goto LABEL_7;
    }
  }
}

uint64_t sub_26A2E7F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_26A424914();
  if (v5)
  {
  }

  return result;
}

uint64_t _ProtoSash_Standard.SashTitle.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_37_14();
  if (v2 || ((v3 = OUTLINED_FUNCTION_13_10(), (v7 & 1) == 0) ? (result = sub_26A2E80B0(v3, v4, v5, v6)) : (result = sub_26A2E80FC(v3, v4, v5, v6)), !v1))
  {
    type metadata accessor for _ProtoSash_Standard.SashTitle(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2E80B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_26A424A64();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2E80FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return sub_26A424A64();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoSash_Standard.SashTitle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3 != 255)
  {
    v51[0] = *a1;
    v51[1] = v2;
    v52 = v3;
    if (v6 != 255)
    {
      v49[0] = v5;
      v49[1] = v4;
      v50 = v6 & 1;
      v7 = OUTLINED_FUNCTION_5_34();
      sub_26A148B68(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_65_4();
      sub_26A148B68(v10, v11, v6);
      v12 = OUTLINED_FUNCTION_5_34();
      sub_26A148B68(v12, v13, v14);
      v15 = static _ProtoSash_Standard.SashTitle.OneOf_Value.== infix(_:_:)(v51, v49);
      v16 = OUTLINED_FUNCTION_65_4();
      sub_26A0D6740(v16, v17);
      v18 = OUTLINED_FUNCTION_125();
      sub_26A0D6740(v18, v19);
      v20 = OUTLINED_FUNCTION_5_34();
      sub_26A0D6768(v20, v21, v22);
      if (v15)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v27 = OUTLINED_FUNCTION_5_34();
    sub_26A148B68(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_65_4();
    sub_26A148B68(v30, v31, 255);
    v32 = OUTLINED_FUNCTION_5_34();
    sub_26A148B68(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_125();
    sub_26A0D6740(v35, v36);
LABEL_8:
    v37 = OUTLINED_FUNCTION_5_34();
    sub_26A0D6768(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_65_4();
    sub_26A0D6768(v40, v41, v6);
    return 0;
  }

  v23 = OUTLINED_FUNCTION_125();
  sub_26A148B68(v23, v24, 255);
  if (v6 != 255)
  {
    v25 = OUTLINED_FUNCTION_65_4();
    sub_26A148B68(v25, v26, v6);
    goto LABEL_8;
  }

  v43 = OUTLINED_FUNCTION_65_4();
  sub_26A148B68(v43, v44, 255);
  v45 = OUTLINED_FUNCTION_125();
  sub_26A0D6768(v45, v46, 255);
LABEL_11:
  type metadata accessor for _ProtoSash_Standard.SashTitle(0);
  sub_26A424794();
  OUTLINED_FUNCTION_23_24();
  sub_26A2E79F4(v47, v48, MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

uint64_t sub_26A2E833C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425504();
  a1(0);
  v6 = OUTLINED_FUNCTION_125();
  sub_26A2E79F4(v6, v7, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2E8568(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2E79F4(&qword_280371F18, type metadata accessor for _ProtoSash_Standard.SashTitle, &protocol conformance descriptor for _ProtoSash_Standard.SashTitle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2E8678(uint64_t a1)
{
  v2 = sub_26A2E79F4(&qword_280371EC8, type metadata accessor for _ProtoSash_Standard.SashTitle, &protocol conformance descriptor for _ProtoSash_Standard.SashTitle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2E8730(uint64_t a1, uint64_t a2)
{
  sub_26A2E79F4(&qword_280371EC8, type metadata accessor for _ProtoSash_Standard.SashTitle, &protocol conformance descriptor for _ProtoSash_Standard.SashTitle);

  return sub_26A4249B4();
}

uint64_t sub_26A2E8858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A2E88E8()
{
  if (!qword_280371EF8)
  {
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, &qword_280371EF8);
    }
  }
}

uint64_t sub_26A2E8944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_26A2E89AC(uint64_t a1)
{
  sub_26A2E8B1C(319, &qword_280371F10, type metadata accessor for _ProtoSash_Standard.SashTitle);
  if (v1 <= 0x3F)
  {
    sub_26A2E8B1C(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v2 <= 0x3F)
    {
      sub_26A2E8B1C(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A2E8B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_22()
{
  type metadata accessor for _ProtoSash_Standard._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return type metadata accessor for _ProtoSash_Standard(0);
}

uint64_t OUTLINED_FUNCTION_48_16()
{

  return sub_26A2E53B4();
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return sub_26A2E53B4();
}

uint64_t OUTLINED_FUNCTION_52_15()
{

  return sub_26A10FD9C();
}

uint64_t VisualizationChart.visual.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-v4 - 8];
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, v21);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v5);
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
    OUTLINED_FUNCTION_15(v5);
    if (!v11)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2EB448();
  }

  return sub_26A2EB448();
}

void sub_26A2E8EF4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v26 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v14 + 20)) + *v2, &v27);
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v7 = MEMORY[0x277D84F90];
      *(v7 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v18 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v12, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2EB448();
    }

    sub_26A2EB448();
    v2 = 0;
  }

  v25 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v26, v2, 1, v25);
  OUTLINED_FUNCTION_75();
}

void VisualizationChart.action.getter()
{
  OUTLINED_FUNCTION_76();
  v18 = v2;
  type metadata accessor for _ProtoActionProperty(0);
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
  v13 = type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v13 + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v19);
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      *v6 = MEMORY[0x277D84F90];
      v6[1] = 0;
      v6[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2EB448();
    }

    sub_26A2EB448();
    v1 = 0;
  }

  v17 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v18, v1, 1, v17);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationChart.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Chart(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t VisualizationChart.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Chart(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoVisualization_Chart.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v115 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  v109 = (v104 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v114 = v104 - v10;
  v113 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v105 = (v104 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v112 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v24 = v104 - v23;
  v25 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v29 = v104 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  v34 = v104 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_41();
  sub_26A2EB618();
  v36 = *(type metadata accessor for _ProtoVisualization_Chart(0) + 20);
  v116 = v2;
  v117 = v36;
  v37 = *(v2 + v36);
  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &v122);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v25);
  sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v34);
    if (v39)
    {
      *v29 = MEMORY[0x277D84F90];
      *(v29 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v40 = v115;
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v115);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
      OUTLINED_FUNCTION_17_3(v34);
      v47 = v116;
      v48 = v117;
      if (!v39)
      {
        sub_26A0E48F0(v34, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A2EB448();
      v47 = v116;
      v48 = v117;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A2EB49C(v29, type metadata accessor for _ProtoVisualProperty);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v47 + v48);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v50);
      OUTLINED_FUNCTION_24_30();
      v37 = v51;
      *(v47 + v48) = v51;
    }

    sub_26A2EB448();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v25);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, v121);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, v121);
  sub_26A10FD9C();
  v55 = v113;
  v56 = __swift_getEnumTagSinglePayload(v24, 1, v113);
  sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
  if (v56 == 1)
  {
    v57 = v115;
    v58 = v116;
    v59 = v117;
  }

  else
  {
    v60 = v104[3];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v60);
    v58 = v116;
    v59 = v117;
    if (v39)
    {
      v61 = v105;
      *v105 = MEMORY[0x277D84F90];
      *(v61 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v57 = v115;
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v115);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v57);
      OUTLINED_FUNCTION_15(v60);
      if (!v39)
      {
        sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2EB448();
      v57 = v115;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_21();
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v58 + v59);
    if ((v68 & 1) == 0)
    {
      v69 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v69);
      OUTLINED_FUNCTION_24_30();
      v37 = v70;
      *(v58 + v59) = v70;
    }

    sub_26A2EB448();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v55);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, v120);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, v120);
  v74 = v111;
  sub_26A10FD9C();
  v75 = v55;
  v76 = __swift_getEnumTagSinglePayload(v74, 1, v55);
  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
  if (v76 != 1)
  {
    v77 = v106;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v77, 1, v75) == 1)
    {
      v78 = v107;
      *v107 = MEMORY[0x277D84F90];
      *(v78 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v57);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v57);
      if (__swift_getEnumTagSinglePayload(v77, 1, v75) != 1)
      {
        sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2EB448();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_21();
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v58 + v59);
    if ((v85 & 1) == 0)
    {
      v86 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v86);
      OUTLINED_FUNCTION_24_30();
      v37 = v87;
      *(v58 + v59) = v87;
    }

    sub_26A2EB448();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v75);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, v119);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, v119);
  v91 = v114;
  sub_26A10FD9C();
  v92 = __swift_getEnumTagSinglePayload(v91, 1, v57);
  sub_26A0E48F0(v91, &off_28036C7C0, &off_26A427400);
  if (v92 != 1)
  {
    v93 = v108;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v93);
    v94 = v117;
    if (v39)
    {
      v95 = v109;
      *v109 = MEMORY[0x277D84F90];
      *(v95 + 8) = 0;
      *(v95 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v93);
      v96 = v110;
      if (!v39)
      {
        sub_26A0E48F0(v93, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v95 = v109;
      sub_26A2EB448();
      v96 = v110;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v96);
    sub_26A2EB49C(v95, type metadata accessor for _ProtoActionProperty);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v58 + v94);
    if ((v97 & 1) == 0)
    {
      v99 = type metadata accessor for _ProtoVisualization_Chart._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v99);
      sub_26A30FA94();
      v98 = v100;
      *(v58 + v94) = v100;
    }

    sub_26A2EB448();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v57);
    OUTLINED_FUNCTION_211(v98 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v118);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationChart.init(visual:text1:text2:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_1_41();
  sub_26A2EB4F4(v12, v13, &protocol conformance descriptor for _ProtoVisualization_Chart);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2EA020(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a8;
  v60 = a1;
  v67 = a6;
  v68 = a7;
  v63 = a4;
  v64 = a5;
  v61 = a3;
  v10 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v53 - v13;
  v65 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v65);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v53 - v16;
  v17 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v18 - 8);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v23);
  v54 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v53 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v30 - 8);
  v31 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  (*(v33 + 8))(v32, v33);
  sub_26A2EB448();
  _ProtoVisualization_Chart.visual.setter();
  sub_26A10FD9C();
  v34 = v70;
  if (v70)
  {
    v35 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v35 + 8))(v34, v35);
    sub_26A2EB448();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      sub_26A2EB448();
      sub_26A2EB618();
      _ProtoVisualization_Chart.text1.setter();
      sub_26A2EB49C(v29, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  }

  sub_26A0E48F0(v22, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v36 = v70;
  if (v70)
  {
    v37 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v37 + 8))(v36, v37);
    v38 = v62;
    sub_26A2EB448();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v38, 1, v23) != 1)
    {
      v39 = v54;
      sub_26A2EB448();
      sub_26A2EB618();
      _ProtoVisualization_Chart.text2.setter();
      sub_26A2EB49C(v39, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    v38 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v23);
  }

  sub_26A0E48F0(v38, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v40 = v70;
  if (v70)
  {
    v41 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v41 + 8))(v40, v41);
    v42 = v66;
    sub_26A2EB448();
    v43 = v65;
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v65);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) != 1)
    {
      v44 = v56;
      sub_26A2EB448();
      sub_26A2EB618();
      _ProtoVisualization_Chart.action.setter();
      sub_26A2EB49C(v44, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CAF8, &unk_26A426D30);
    v42 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v65);
  }

  sub_26A0E48F0(v42, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v45 = v68;

  result = _ProtoVisualization_Chart.componentName.setter(v67, v45, v46, v47, v48);
  if (a9)
  {

    return _ProtoVisualization_Chart.linkIdentifier.setter(v59, a9, v50, v51, v52);
  }

  return result;
}

uint64_t VisualizationChart.init(visual:text1:text2:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26A0E5D68(a1, v16);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_1_41();
  sub_26A2EB4F4(v10, v11, &protocol conformance descriptor for _ProtoVisualization_Chart);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v13, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v14);
  OUTLINED_FUNCTION_164_0(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void VisualizationChart.init(visual:text1:text2:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v9 = v6;
  sub_26A0E5D68(v6, v17);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A0E5D68(v17, v13);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_1_41();
  sub_26A2EB4F4(v7, v8, &protocol conformance descriptor for _ProtoVisualization_Chart);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v3);
  OUTLINED_FUNCTION_164_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_26A0E48F0(&v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall VisualizationChart.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v67 = &v66 - v12;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v17);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for VisualizationChart(0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE68, &unk_26A4269F0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  OUTLINED_FUNCTION_10_36();
  sub_26A2EB618();
  if (v2)
  {
    _ProtoVisualization_Chart.redactedProto.getter();
  }

  else
  {
    sub_26A2EB618();
  }

  sub_26A2EB448();
  v29[*(v26 + 32)] = v2 & 1;
  sub_26A2EB49C(v25, type metadata accessor for VisualizationChart);
  v30 = MEMORY[0x277D84F90];
  *&v29[*(v26 + 28)] = MEMORY[0x277D84F90];
  v31 = type metadata accessor for _ProtoVisualization_Chart(0);
  OUTLINED_FUNCTION_142(*&v29[*(v31 + 20)] + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ChartP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &v69);
  v32 = v67;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v32);
  if (v33)
  {
    *v16 = v30;
    *(v16 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v34 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
    OUTLINED_FUNCTION_17_3(v32);
    if (!v33)
    {
      sub_26A0E48F0(v32, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A2EB448();
  }

  sub_26A2EB448();
  type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_26A104CD4(v20, 0x6C6175736976, 0xE600000000000000);
  sub_26A0E48F0(v20, &qword_28036CB20, &unk_26A426470);
  VisualizationChart.text1.getter();
  sub_26A104CAC(v9, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  VisualizationChart.text2.getter();
  sub_26A104CAC(v9, 0x3274786574, 0xE500000000000000);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  v45 = v68;
  VisualizationChart.action.getter();
  sub_26A104BA8();
  sub_26A0E48F0(v45, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F77F0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v47, v48, v49, v50, v66, v67);

  v51 = swift_getKeyPath();
  sub_26A0F83DC(v51, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v52, v53, v54, v55, v66, v67);

  sub_26A0FAF74(v56, v57, v58, v59, v60, v61, v62);
  sub_26A0E48F0(v29, &qword_28036CE68, &unk_26A4269F0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v64;
  result._countAndFlagsBits = v63;
  return result;
}

uint64_t VisualizationChart.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualization_Chart(0);
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
  OUTLINED_FUNCTION_3_41();
  sub_26A2EB618();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_25();
  sub_26A2EB448();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t VisualizationChart.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for VisualizationChart(0);
  *(inited + 64) = &protocol witness table for VisualizationChart;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_10_36();
  sub_26A2EB618();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2EB4F4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for VisualizationChart(uint64_t a1)
{
  result = qword_280371F30;
  if (!qword_280371F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2EB448()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2EB49C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A2EB4F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2EB5AC(uint64_t a1)
{
  result = type metadata accessor for _ProtoVisualization_Chart(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2EB618()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return sub_26A2EB49C(v0, type metadata accessor for _ProtoTextProperty);
}

void OUTLINED_FUNCTION_24_30()
{

  sub_26A30FA94();
}

uint64_t OUTLINED_FUNCTION_29_16()
{

  return type metadata accessor for _ProtoVisualization_Chart(0);
}

uint64_t static ContactImage.thumbnail(with:)()
{
  OUTLINED_FUNCTION_10_37();
  v3 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v9);
  (*(v5 + 8))(v9, v3);
  v19 = v2;
  v20 = v1;
  v21 = 0;
  sub_26A2EB900();
  sub_26A424424();
  result = OUTLINED_FUNCTION_13_22();
  if (!v0)
  {
    v11 = type metadata accessor for _ProtoCustomCanvas(0);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_2_37(&v18);
    strcpy((v12 - 64), "MonogramImage");
    *(v12 - 50) = -4864;
    *(v12 - 48) = v1;
    *(v12 - 40) = v2;
    OUTLINED_FUNCTION_5_35(v12);
    OUTLINED_FUNCTION_1_42();
    v15 = sub_26A2ED434(v13, v14, &protocol conformance descriptor for _ProtoCustomCanvas);
    OUTLINED_FUNCTION_12_21(v15, v16, v17, v15);
    return sub_26A0E4784(v1, v2);
  }

  return result;
}

unint64_t sub_26A2EB900()
{
  result = qword_280371F40;
  if (!qword_280371F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371F40);
  }

  return result;
}

uint64_t ContactImage.serializedData.getter()
{
  v0 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v6);
  (*(v2 + 8))(v6, v0);
  sub_26A2EB900();
  v7 = sub_26A424424();

  return v7;
}

uint64_t static ContactImage.thumbnail(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for VisualElement(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v33 = v10;
    v34 = v2;
    v41 = MEMORY[0x277D84F90];
    sub_26A10D6B4(0, v16, 0);
    v17 = v41;
    v18 = a1 + 32;
    do
    {
      sub_26A0E5D68(v18, v37);
      v19 = v39;
      v20 = v40;
      __swift_project_boxed_opaque_existential_1(v37, v39);
      (*(v20 + 8))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v41 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_26A10D6B4(v21 > 1, v22 + 1, 1);
        v17 = v41;
      }

      *(v17 + 16) = v22 + 1;
      sub_26A2ED1E4(v9, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22);
      v18 += 40;
      --v16;
    }

    while (v16);
    v10 = v33;
    v3 = v34;
  }

  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v15);
  (*(v36 + 8))(v15, v10);
  v37[0] = v17;
  v37[1] = 0;
  v38 = 2;
  sub_26A2EB900();
  v23 = sub_26A424424();
  if (v3)
  {
  }

  else
  {
    v26 = v23;
    v27 = v24;

    v28 = type metadata accessor for _ProtoCustomCanvas(0);
    MEMORY[0x28223BE20](v28);
    OUTLINED_FUNCTION_2_37(&v32);
    *(v29 - 64) = 0x6D49656C63726943;
    *(v29 - 56) = 0xEB00000000656761;
    *(v29 - 48) = v26;
    *(v29 - 40) = v27;
    OUTLINED_FUNCTION_5_35(v29);
    OUTLINED_FUNCTION_1_42();
    sub_26A2ED434(v30, v31, &protocol conformance descriptor for _ProtoCustomCanvas);
    sub_26A4249C4();
    return sub_26A0E4784(v26, v27);
  }
}

{
  return static ContactImage.thumbnail(with:)(a1, a2);
}

uint64_t static ContactImage.thumbnail(for:)(uint64_t a1)
{
  v3 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v9);
  (*(v5 + 8))(v9, v3);
  v18[1] = a1;
  v18[2] = 0;
  v19 = 1;
  sub_26A2EB900();
  sub_26A424424();
  result = OUTLINED_FUNCTION_13_22();
  if (!v1)
  {
    v11 = type metadata accessor for _ProtoCustomCanvas(0);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_2_37(v18);
    strcpy((v12 - 64), "ContactImage");
    *(v12 - 51) = 0;
    *(v12 - 50) = -5120;
    *(v12 - 48) = a1;
    *(v12 - 40) = v3;
    OUTLINED_FUNCTION_5_35(v12);
    OUTLINED_FUNCTION_1_42();
    v15 = sub_26A2ED434(v13, v14, &protocol conformance descriptor for _ProtoCustomCanvas);
    OUTLINED_FUNCTION_12_21(v15, v16, v17, v15);
    return sub_26A0E4784(a1, v3);
  }

  return result;
}

{
  return static ContactImage.thumbnail(for:)(a1);
}

uint64_t sub_26A2EBFD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372657474656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6175736976 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A425354();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}