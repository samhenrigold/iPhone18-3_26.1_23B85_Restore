uint64_t sub_26A1979BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F070, type metadata accessor for _ProtoSummaryItem_Text, &protocol conformance descriptor for _ProtoSummaryItem_Text);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A197A3C(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036ED88, type metadata accessor for _ProtoSummaryItem_Text, &protocol conformance descriptor for _ProtoSummaryItem_Text);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A197AAC(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036ED88, type metadata accessor for _ProtoSummaryItem_Text, &protocol conformance descriptor for _ProtoSummaryItem_Text);

  return sub_26A4249B4();
}

uint64_t sub_26A197B44()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E788);
  __swift_project_value_buffer(v0, qword_28036E788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42B080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "link_identifier";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A197E60()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A197F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v26);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v29);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_173_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v31);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_56();
  type metadata accessor for _ProtoTextProperty(0);
  v33 = OUTLINED_FUNCTION_85_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v38 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v41 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  type metadata accessor for _ProtoActionProperty(0);
  v44 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  v48 = (v20 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v48 = 0;
  v48[1] = v49;
  OUTLINED_FUNCTION_125_1(v25 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_272();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v25 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_215_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v25 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_215_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_274(&a13);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_215_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v25 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action);
  OUTLINED_FUNCTION_148();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_212_0(&a14);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_173_1();
  sub_26A10CF40();
  v50 = swift_endAccess();
  OUTLINED_FUNCTION_129_1(v50, &v58);
  OUTLINED_FUNCTION_26_10(v21, &v57);
  OUTLINED_FUNCTION_262();

  v52 = (v25 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1(v51, &v56);
  v54 = *v52;
  v53 = v52[1];

  OUTLINED_FUNCTION_26_10(v48, &v55);
  *v48 = v54;
  v48[1] = v53;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A198290()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1983D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A198500(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1985DC(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1986B8(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A198794(a2, a1, a3, a4);
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_10;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A198500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1985DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1986B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A198794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1988A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A198A2C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A198C20(a1, a2, a3, a4);
    sub_26A198E14(a1, a2, a3, a4);
    sub_26A199008(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

uint64_t sub_26A198A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A198C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A198E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A199008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_26A199228()
{
  OUTLINED_FUNCTION_76();
  v122 = v1;
  v123 = v2;
  v3 = v1;
  v109 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v106 = v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v110 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v107 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v112 = v12;
  v13 = OUTLINED_FUNCTION_45();
  v118 = type metadata accessor for _ProtoMultilineTextProperty(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v113 = v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v114 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_218_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v111 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v119 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  v115 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v121 = v28;
  v29 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoTextProperty(v29);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_211_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_141_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v35 = OUTLINED_FUNCTION_41(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  v120 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  v39 = &v106 - v38;
  OUTLINED_FUNCTION_125_1(v3 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  OUTLINED_FUNCTION_199_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1(v123 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  v40 = *(v32 + 56);
  OUTLINED_FUNCTION_12_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v0);
  if (v42)
  {

    sub_26A0E48F0(v39, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_17_3(v0 + v40);
    if (v42)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    v43 = &qword_28036C7D0;
    v44 = &qword_26A426DE0;
LABEL_10:
    v45 = v0;
    goto LABEL_31;
  }

  v41 = v120;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v0 + v40);
  if (v42)
  {

    sub_26A0E48F0(v39, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_16();
    sub_26A1C25D0();
    goto LABEL_9;
  }

  v46 = v116;
  sub_26A1C2528();

  static _ProtoTextProperty.== infix(_:_:)(v41, v46);
  OUTLINED_FUNCTION_17_7();
  sub_26A1C25D0();
  sub_26A0E48F0(v39, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  OUTLINED_FUNCTION_124_1(v122 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  v47 = v121;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v123 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  v48 = v117;
  v49 = *(v117 + 48);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_280();
  v50 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v50, v51, v118);
  if (v42)
  {
    sub_26A0E48F0(v47, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_2_4(&qword_28036CAE0 + v49);
    v52 = v119;
    if (v42)
    {
      sub_26A0E48F0(&qword_28036CAE0, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_22;
    }

LABEL_20:
    v43 = &qword_28036F088;
    v44 = &unk_26A42C570;
    v45 = &qword_28036CAE0;
    goto LABEL_31;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(&qword_28036CAE0 + v49);
  v52 = v119;
  if (v53)
  {
    sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_11_12();
    sub_26A1C25D0();
    goto LABEL_20;
  }

  sub_26A1C2528();
  v54 = OUTLINED_FUNCTION_103();
  v56 = static _ProtoMultilineTextProperty.== infix(_:_:)(v54, v55);
  sub_26A1C25D0();
  sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_88();
  sub_26A1C25D0();
  v57 = OUTLINED_FUNCTION_245();
  sub_26A0E48F0(v57, v58, &unk_26A4273F0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  OUTLINED_FUNCTION_127_1(v122 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_130_0(v123 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  v59 = *(v48 + 48);
  v60 = v52;
  v61 = v114;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_82_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(v61);
  if (v42)
  {
    sub_26A0E48F0(v60, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_2_4(v61 + v59);
    if (v42)
    {
      sub_26A0E48F0(v61, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_34;
    }

LABEL_30:
    v43 = &qword_28036F088;
    v44 = &unk_26A42C570;
    v45 = v61;
    goto LABEL_31;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(v61 + v59);
  if (v62)
  {
    sub_26A0E48F0(v119, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_11_12();
    sub_26A1C25D0();
    goto LABEL_30;
  }

  sub_26A1C2528();
  v63 = OUTLINED_FUNCTION_78_1();
  static _ProtoMultilineTextProperty.== infix(_:_:)(v63, v64);
  OUTLINED_FUNCTION_37_7();
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v65, v66, v67);
  OUTLINED_FUNCTION_105();
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v68, v69, v70);
  if ((&qword_28036CAE0 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  OUTLINED_FUNCTION_147_1(v122 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action);
  v71 = v112;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v123 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v128);
  OUTLINED_FUNCTION_196_0();
  v72 = v110;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v0 = v72;
  OUTLINED_FUNCTION_82_3();
  sub_26A10FD9C();
  v73 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_19(v73, v74);
  if (!v42)
  {
    v87 = v107;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&unk_28036E000 + v72);
    if (!v88)
    {
      v89 = v106;
      sub_26A1C2528();
      sub_26A0E36D8(*v87, *v89);
      if (v90)
      {
        OUTLINED_FUNCTION_209_0();
        v93 = v42 && v91 == v92;
        if (v93 || (sub_26A425354() & 1) != 0)
        {
          v94 = OUTLINED_FUNCTION_267();
          OUTLINED_FUNCTION_16_10();
          sub_26A1C2664(v95, v96, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_266(&off_26A427400 + v87);
          OUTLINED_FUNCTION_21_10();
          sub_26A1C25D0();
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v97, v98, v99);
          OUTLINED_FUNCTION_105();
          sub_26A1C25D0();
          OUTLINED_FUNCTION_69_2();
          v75 = sub_26A0E48F0(v100, v101, v102);
          if ((v94 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_39;
        }
      }

      sub_26A1C25D0();
      OUTLINED_FUNCTION_40_7();
      sub_26A0E48F0(v103, v104, v105);
      sub_26A1C25D0();
      v45 = OUTLINED_FUNCTION_88();
      v44 = &off_26A427400;
LABEL_31:
      sub_26A0E48F0(v45, v43, v44);
      goto LABEL_32;
    }

    sub_26A0E48F0(v112, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_23_15();
    sub_26A1C25D0();
    goto LABEL_52;
  }

  sub_26A0E48F0(v71, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_9(&unk_28036E000 + v72);
  if (!v42)
  {
LABEL_52:
    v43 = &qword_28036C7C8;
    v44 = &qword_26A425C00;
    goto LABEL_10;
  }

  v75 = sub_26A0E48F0(v72, &off_28036C7C0, &off_26A427400);
LABEL_39:
  v76 = v122 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
  v77 = OUTLINED_FUNCTION_129_1(v75, &v127);
  v78 = *(v76 + 8);
  OUTLINED_FUNCTION_122_1(v77, &v126);
  OUTLINED_FUNCTION_168_1();
  if (v42)
  {
    v81 = v78 == v80;
  }

  else
  {
    v81 = 0;
  }

  if (v81 || (OUTLINED_FUNCTION_21_3(), v79 = sub_26A425354(), (v79 & 1) != 0))
  {
    v82 = v122 + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
    v83 = OUTLINED_FUNCTION_129_1(v79, &v125);
    v84 = *(v82 + 8);
    OUTLINED_FUNCTION_122_1(v83, &v124);
    OUTLINED_FUNCTION_168_1();
    if (v42)
    {
      v86 = v84 == v85;
    }

    else
    {
      v86 = 0;
    }

    if (!v86)
    {
      OUTLINED_FUNCTION_21_3();
      sub_26A425354();
    }
  }

LABEL_32:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A199E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F068, type metadata accessor for _ProtoSummaryItem_LargeText, &protocol conformance descriptor for _ProtoSummaryItem_LargeText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A199EB0(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036EDA0, type metadata accessor for _ProtoSummaryItem_LargeText, &protocol conformance descriptor for _ProtoSummaryItem_LargeText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A199F20(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036EDA0, type metadata accessor for _ProtoSummaryItem_LargeText, &protocol conformance descriptor for _ProtoSummaryItem_LargeText);

  return sub_26A4249B4();
}

uint64_t sub_26A199FB8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E7A8);
  __swift_project_value_buffer(v0, qword_28036E7A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26A42B090;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "text_3";
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
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "text_6";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "thumbnail";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "action";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "component_name";
  *(v22 + 1) = 14;
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

uint64_t sub_26A19A3B8()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A19A508()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88_3(v5, v46);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_3(v10, v47);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for _ProtoTextProperty(0);
  v14 = OUTLINED_FUNCTION_85_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
  v20 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v13);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  v26 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v13);
  type metadata accessor for _ProtoVisualProperty(0);
  v33 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  type metadata accessor for _ProtoActionProperty(0);
  v37 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  OUTLINED_FUNCTION_181_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_270();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_270();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  OUTLINED_FUNCTION_270();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_270();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5);
  OUTLINED_FUNCTION_210_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &v54);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v53);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v52);
  OUTLINED_FUNCTION_206_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  v43 = swift_endAccess();
  OUTLINED_FUNCTION_122_1(v43, &v51);
  OUTLINED_FUNCTION_26_10(v41, &v50);
  OUTLINED_FUNCTION_261();

  OUTLINED_FUNCTION_122_1(v44, &v49);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v45, &v48);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A19AA74()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A19AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A19ADBC(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A19AE98(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A19AF74(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A19B050(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A19B12C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A19B208(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A19B2E4(a2, a1, a3, a4);
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_10;
      case 9:
        sub_26A19B3C0(a2, a1, a3, a4);
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A19ADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19B208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19B2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A19B6D8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A19B8CC(a1, a2, a3, a4);
    sub_26A19BAC0(a1, a2, a3, a4);
    sub_26A19BCB4(a1, a2, a3, a4);
    sub_26A19BEA8(a1, a2, a3, a4);
    sub_26A19C09C(a1, a2, a3, a4);
    sub_26A19C290(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    sub_26A19C484(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

uint64_t sub_26A19B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19C290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_26A19C6A4()
{
  OUTLINED_FUNCTION_76();
  v223 = v0;
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
  OUTLINED_FUNCTION_74_3(v6, v190);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v191 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48();
  v199 = v11;
  v12 = OUTLINED_FUNCTION_45();
  v197 = type metadata accessor for _ProtoVisualProperty(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v192 = v14;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_73_2(v16, v190);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v195 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v202 = v21;
  v22 = OUTLINED_FUNCTION_45();
  v207 = type metadata accessor for _ProtoMultilineTextProperty(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v201 = v24;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_42();
  v208 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v204 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v211 = v31;
  v32 = OUTLINED_FUNCTION_45();
  v222 = type metadata accessor for _ProtoTextProperty(v32);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  v219 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8();
  v203 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  v210 = v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  v214 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  v217 = v43;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  v46 = &v190 - v45;
  v47 = OUTLINED_FUNCTION_167();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  v50 = OUTLINED_FUNCTION_41(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  v200 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  v205 = v53;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  v209 = v55;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  v213 = v57;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  v212 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  v218 = v61;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  v215 = v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  v216 = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  v220 = v67;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v68);
  v70 = &v190 - v69;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1(v223 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  v221 = v35;
  v71 = *(v35 + 48);
  sub_26A10FD9C();
  v72 = v222;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v46);
  if (v74)
  {

    sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(&v46[v71]);
    if (v74)
    {
      sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v75 = &qword_28036C7D0;
    v76 = &qword_26A426DE0;
    v77 = v46;
    goto LABEL_41;
  }

  v73 = v220;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v46[v71]);
  if (v74)
  {

    sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_16();
    sub_26A1C25D0();
    goto LABEL_9;
  }

  v78 = v219;
  sub_26A1C2528();

  static _ProtoTextProperty.== infix(_:_:)(v73, v78);
  OUTLINED_FUNCTION_17_7();
  sub_26A1C25D0();
  v79 = OUTLINED_FUNCTION_115();
  sub_26A0E48F0(v79, v80, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  v81 = v216;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v223 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  v82 = *(v221 + 48);
  v83 = v217;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v84 = v222;
  OUTLINED_FUNCTION_37(v83, 1, v222);
  if (v74)
  {
    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v83 + v82, 1, v84);
    v85 = v218;
    if (v74)
    {
      sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_21;
    }

LABEL_19:
    v75 = &qword_28036C7D0;
    v76 = &qword_26A426DE0;
    v77 = v83;
    goto LABEL_41;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v83 + v82, 1, v84);
  v85 = v218;
  if (v86)
  {
    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_16();
    sub_26A1C25D0();
    goto LABEL_19;
  }

  sub_26A1C2528();
  v87 = OUTLINED_FUNCTION_115();
  LODWORD(v220) = static _ProtoTextProperty.== infix(_:_:)(v87, v88);
  sub_26A1C25D0();
  sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_78_1();
  sub_26A1C25D0();
  sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
  if ((v220 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_130_0(v223 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  v89 = *(v221 + 48);
  v90 = v214;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v91 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_37(v91, v92, v84);
  if (v74)
  {
    sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v90 + v89, 1, v84);
    if (!v74)
    {
      goto LABEL_39;
    }

    sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v90 + v89, 1, v84);
    if (v93)
    {
      sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_16();
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_260();
    v94 = OUTLINED_FUNCTION_245();
    v96 = static _ProtoTextProperty.== infix(_:_:)(v94, v95);
    OUTLINED_FUNCTION_10_15();
    sub_26A1C25D0();
    OUTLINED_FUNCTION_69_2();
    sub_26A0E48F0(v97, v98, v99);
    OUTLINED_FUNCTION_21_3();
    sub_26A1C25D0();
    OUTLINED_FUNCTION_69_2();
    sub_26A0E48F0(v100, v101, v102);
    if ((v96 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  OUTLINED_FUNCTION_147_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  v103 = v213;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v223 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &v236);
  v104 = *(v221 + 48);
  v105 = v210;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_82_3();
  v90 = v105;
  sub_26A10FD9C();
  v106 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_19(v106, v107);
  if (!v74)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v105 + v104);
    v108 = v211;
    if (!v109)
    {
      OUTLINED_FUNCTION_260();
      v110 = OUTLINED_FUNCTION_103();
      v112 = static _ProtoTextProperty.== infix(_:_:)(v110, v111);
      OUTLINED_FUNCTION_10_15();
      sub_26A1C25D0();
      OUTLINED_FUNCTION_199_0();
      sub_26A0E48F0(v113, v114, v115);
      OUTLINED_FUNCTION_88();
      sub_26A1C25D0();
      v116 = OUTLINED_FUNCTION_167();
      sub_26A0E48F0(v116, v117, &unk_26A425BF0);
      if ((v112 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    sub_26A0E48F0(v213, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_16();
LABEL_38:
    sub_26A1C25D0();
LABEL_39:
    v75 = &qword_28036C7D0;
    v76 = &qword_26A426DE0;
LABEL_40:
    v77 = v90;
    goto LABEL_41;
  }

  sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_9(v105 + v104);
  v108 = v211;
  if (!v74)
  {
    goto LABEL_39;
  }

  sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
LABEL_44:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, &v235);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v118 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v118, &v234);
  OUTLINED_FUNCTION_149_1();
  v90 = v208;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v119 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v119, v120);
  if (v74)
  {
    sub_26A0E48F0(v108, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_23(&unk_28036E000 + v90);
    if (v74)
    {
      sub_26A0E48F0(v90, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_54;
    }

LABEL_52:
    v75 = &qword_28036F088;
    v76 = &unk_26A42C570;
    goto LABEL_40;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&unk_28036E000 + v90);
  if (v121)
  {
    sub_26A0E48F0(v108, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_11_12();
    sub_26A1C25D0();
    goto LABEL_52;
  }

  sub_26A1C2528();
  v122 = OUTLINED_FUNCTION_103();
  static _ProtoMultilineTextProperty.== infix(_:_:)(v122, v123);
  OUTLINED_FUNCTION_37_7();
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v124, v125, v126);
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v127, v128, v129);
  if ((&qword_28036CAE0 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_54:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &v233);
  v130 = v205;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v131 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v131, &v232);
  OUTLINED_FUNCTION_149_1();
  v90 = v203;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v132 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v132, v133);
  if (v74)
  {
    sub_26A0E48F0(v130, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(&unk_28036E000 + v90);
    if (v74)
    {
      sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_63;
    }

    goto LABEL_39;
  }

  v134 = v200;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&unk_28036E000 + v90);
  if (v135)
  {
    sub_26A0E48F0(v205, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_16();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_260();
  v136 = static _ProtoTextProperty.== infix(_:_:)(v134, &unk_28036E000);
  OUTLINED_FUNCTION_10_15();
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v137, v138, v139);
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v140, v141, v142);
  if ((v136 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_63:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v231);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v143 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v143, &v230);
  OUTLINED_FUNCTION_149_1();
  v90 = v198;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v144 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v144, v145);
  if (v74)
  {
    sub_26A0E48F0(v202, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(&unk_28036E000 + v90);
    v146 = v199;
    if (v74)
    {
      sub_26A0E48F0(v90, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v147 = v195;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&unk_28036E000 + v90);
  v146 = v199;
  if (v148)
  {
    sub_26A0E48F0(v202, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_70_2();
    sub_26A1C25D0();
LABEL_71:
    v75 = &qword_28036D190;
    v76 = &unk_26A427130;
    goto LABEL_40;
  }

  v149 = v192;
  sub_26A1C2528();
  static _ProtoVisualProperty.== infix(_:_:)(v147, v149);
  OUTLINED_FUNCTION_145_1();
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v150, v151, v152);
  sub_26A1C25D0();
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v153, v154, v155);
  if ((&qword_28036CAE8 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_73:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v229);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v156 = OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142(v156, &v228);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_210_0();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_82_3();
  sub_26A10FD9C();
  v157 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_19(v157, v158);
  if (!v74)
  {
    v171 = v191;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&unk_28036E000 + v146);
    if (!v172)
    {
      v173 = v190;
      sub_26A1C2528();
      sub_26A0E36D8(*v171, *v173);
      if (v174)
      {
        OUTLINED_FUNCTION_209_0();
        v177 = v74 && v175 == v176;
        if (v177 || (sub_26A425354() & 1) != 0)
        {
          v178 = OUTLINED_FUNCTION_267();
          OUTLINED_FUNCTION_16_10();
          sub_26A1C2664(v179, v180, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_266(&off_26A427400 + v171);
          OUTLINED_FUNCTION_21_10();
          sub_26A1C25D0();
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v181, v182, v183);
          OUTLINED_FUNCTION_259();
          OUTLINED_FUNCTION_69_2();
          v159 = sub_26A0E48F0(v184, v185, v186);
          if ((v178 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_78;
        }
      }

      sub_26A1C25D0();
      OUTLINED_FUNCTION_40_7();
      sub_26A0E48F0(v187, v188, v189);
      sub_26A1C25D0();
      v77 = OUTLINED_FUNCTION_88();
      v76 = &off_26A427400;
LABEL_41:
      sub_26A0E48F0(v77, v75, v76);
      goto LABEL_42;
    }

    sub_26A0E48F0(v199, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_23_15();
    sub_26A1C25D0();
LABEL_91:
    v75 = &qword_28036C7C8;
    v76 = &qword_26A425C00;
    v77 = v146;
    goto LABEL_41;
  }

  sub_26A0E48F0(v146, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_9(&unk_28036E000 + v146);
  if (!v74)
  {
    goto LABEL_91;
  }

  v159 = sub_26A0E48F0(v146, &off_28036C7C0, &off_26A427400);
LABEL_78:
  v160 = v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
  v161 = OUTLINED_FUNCTION_129_1(v159, &v227);
  v162 = *(v160 + 8);
  OUTLINED_FUNCTION_122_1(v161, &v226);
  OUTLINED_FUNCTION_168_1();
  if (v74)
  {
    v165 = v162 == v164;
  }

  else
  {
    v165 = 0;
  }

  if (v165 || (OUTLINED_FUNCTION_21_3(), v163 = sub_26A425354(), (v163 & 1) != 0))
  {
    v166 = v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_DetailedTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
    v167 = OUTLINED_FUNCTION_129_1(v163, &v225);
    v168 = *(v166 + 8);
    OUTLINED_FUNCTION_122_1(v167, &v224);
    OUTLINED_FUNCTION_168_1();
    if (v74)
    {
      v170 = v168 == v169;
    }

    else
    {
      v170 = 0;
    }

    if (!v170)
    {
      OUTLINED_FUNCTION_21_3();
      sub_26A425354();
    }
  }

LABEL_42:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A19DB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F060, type metadata accessor for _ProtoSummaryItem_DetailedText, &protocol conformance descriptor for _ProtoSummaryItem_DetailedText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A19DB80(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036EDB8, type metadata accessor for _ProtoSummaryItem_DetailedText, &protocol conformance descriptor for _ProtoSummaryItem_DetailedText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A19DBF0(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036EDB8, type metadata accessor for _ProtoSummaryItem_DetailedText, &protocol conformance descriptor for _ProtoSummaryItem_DetailedText);

  return sub_26A4249B4();
}

uint64_t sub_26A19DC88()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E7C8);
  __swift_project_value_buffer(v0, qword_28036E7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26A42B0A0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "text_4";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "text_6";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_1";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_5";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_7";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "text_8";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "text_9";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "text_10";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "thumbnail_1";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "thumbnail_2";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = 0x26A44B000;
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "component_name";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "link_identifier";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A19E1AC()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text10, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A19E384()
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
  v7 = OUTLINED_FUNCTION_12_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  v18 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  v21 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
  v24 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v27 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v11);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v11);
  v36 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
  v39 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text10);
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v11);
  v42 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2);
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v58 = v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
  OUTLINED_FUNCTION_275();
  v53 = (v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v53 = 0;
  v53[1] = v54;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6);
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_147_1(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, &v68);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, &v67);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text10, &v66);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_101_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &v65);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_182_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &v64);
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v63);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  v55 = swift_endAccess();
  OUTLINED_FUNCTION_122_1(v55, &v62);
  OUTLINED_FUNCTION_26_10(v58, &v61);
  OUTLINED_FUNCTION_261();

  OUTLINED_FUNCTION_122_1(v56, &v60);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v57, &v59);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A19E9F0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text10, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A19EC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A19EE3C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A19EF18(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A19EFF4(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A19F0D0(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A19F1AC(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A19F288(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A19F364(a2, a1, a3, a4);
        break;
      case 8:
        sub_26A19F440(a2, a1, a3, a4);
        break;
      case 9:
        sub_26A19F51C(a2, a1, a3, a4);
        break;
      case 10:
        sub_26A19F5F8(a2, a1, a3, a4);
        break;
      case 11:
        sub_26A19F6D4(a2, a1, a3, a4);
        break;
      case 12:
        sub_26A19F7B0(a2, a1, a3, a4);
        break;
      case 13:
        sub_26A19F88C(a2, a1, a3, a4);
        break;
      case 14:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_16;
      case 15:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_16:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A19EE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A19F998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A19FBEC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A19FDE0(a1, a2, a3, a4);
    sub_26A19FFD4(a1, a2, a3, a4);
    sub_26A1A01C8(a1, a2, a3, a4);
    sub_26A1A03BC(a1, a2, a3, a4);
    sub_26A1A05B0(a1, a2, a3, a4);
    sub_26A1A07A4(a1, a2, a3, a4);
    sub_26A1A0998(a1, a2, a3, a4);
    sub_26A1A0B8C(a1, a2, a3, a4);
    sub_26A1A0D80(a1, a2, a3, a4);
    sub_26A1A0F74(a1, a2, a3, a4);
    sub_26A1A1168(a1, a2, a3, a4);
    sub_26A1A135C(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

uint64_t sub_26A19FBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19FDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A19FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A01C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A03BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A07A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A0998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A0B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A0D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A0F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A1168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A157C(char *a1, uint64_t a2)
{
  v235 = a2;
  v196 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v196);
  v192 = (&v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v193);
  v199 = &v191 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v194 = (&v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v195 = &v191 - v8;
  v206 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v206);
  v197 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v204);
  v202 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v207 = &v191 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v13 - 8);
  v198 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v200 = &v191 - v16;
  MEMORY[0x28223BE20](v17);
  v201 = &v191 - v18;
  MEMORY[0x28223BE20](v19);
  v205 = &v191 - v20;
  v236 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v236);
  v234 = &v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v237);
  v209 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v211 = &v191 - v24;
  MEMORY[0x28223BE20](v25);
  v213 = &v191 - v26;
  MEMORY[0x28223BE20](v27);
  v218 = &v191 - v28;
  MEMORY[0x28223BE20](v29);
  v220 = &v191 - v30;
  MEMORY[0x28223BE20](v31);
  v223 = &v191 - v32;
  MEMORY[0x28223BE20](v33);
  v226 = &v191 - v34;
  MEMORY[0x28223BE20](v35);
  v229 = &v191 - v36;
  MEMORY[0x28223BE20](v37);
  v233 = &v191 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v191 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v42 - 8);
  v203 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v210 = &v191 - v45;
  MEMORY[0x28223BE20](v46);
  v208 = &v191 - v47;
  MEMORY[0x28223BE20](v48);
  v214 = &v191 - v49;
  MEMORY[0x28223BE20](v50);
  v212 = &v191 - v51;
  MEMORY[0x28223BE20](v52);
  v216 = &v191 - v53;
  MEMORY[0x28223BE20](v54);
  v215 = &v191 - v55;
  MEMORY[0x28223BE20](v56);
  v217 = &v191 - v57;
  MEMORY[0x28223BE20](v58);
  v219 = &v191 - v59;
  MEMORY[0x28223BE20](v60);
  v222 = &v191 - v61;
  MEMORY[0x28223BE20](v62);
  v221 = &v191 - v63;
  MEMORY[0x28223BE20](v64);
  v225 = &v191 - v65;
  MEMORY[0x28223BE20](v66);
  v224 = &v191 - v67;
  MEMORY[0x28223BE20](v68);
  v228 = &v191 - v69;
  MEMORY[0x28223BE20](v70);
  v227 = &v191 - v71;
  MEMORY[0x28223BE20](v72);
  v231 = &v191 - v73;
  MEMORY[0x28223BE20](v74);
  v230 = &v191 - v75;
  MEMORY[0x28223BE20](v76);
  v232 = &v191 - v77;
  MEMORY[0x28223BE20](v78);
  v80 = &v191 - v79;
  MEMORY[0x28223BE20](v81);
  v83 = &v191 - v82;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v84 = *(v237 + 48);
  sub_26A10FD9C();
  v85 = v236;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v41, 1, v85) == 1)
  {

    sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v41[v84], 1, v85) == 1)
    {
      sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_8;
    }

LABEL_6:
    v86 = v41;
LABEL_23:
    sub_26A0E48F0(v86, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_24;
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v41[v84], 1, v85) == 1)
  {

    sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v87 = v234;
  sub_26A1C2528();

  v88 = static _ProtoTextProperty.== infix(_:_:)(v80, v87);
  sub_26A1C25D0();
  sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  swift_beginAccess();
  v89 = v232;
  sub_26A10FD9C();
  swift_beginAccess();
  v90 = *(v237 + 48);
  v91 = v233;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v92 = v236;
  if (__swift_getEnumTagSinglePayload(v91, 1, v236) == 1)
  {
    sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v91 + v90, 1, v92) != 1)
    {
LABEL_15:
      v86 = v91;
      goto LABEL_23;
    }

    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v93 = v230;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v91 + v90, 1, v92) == 1)
    {
      v94 = v89;
      goto LABEL_13;
    }

    v95 = v234;
    sub_26A1C2528();
    v96 = static _ProtoTextProperty.== infix(_:_:)(v93, v95);
    sub_26A1C25D0();
    sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    if ((v96 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v233 = a1;
  v97 = v92;
  v98 = v231;
  sub_26A10FD9C();
  v99 = v235;
  swift_beginAccess();
  v100 = v237;
  v101 = *(v237 + 48);
  v102 = v229;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v102, 1, v97) == 1)
  {
    sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102 + v101, 1, v97);
    v104 = v233;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_22;
    }

    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v105 = v227;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v102 + v101, 1, v97) == 1)
    {
      sub_26A0E48F0(v231, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A1C25D0();
      goto LABEL_22;
    }

    v107 = v234;
    sub_26A1C2528();
    LODWORD(v232) = static _ProtoTextProperty.== infix(_:_:)(v105, v107);
    sub_26A1C25D0();
    sub_26A0E48F0(v231, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
    v104 = v233;
    if ((v232 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v108 = v100;
  v109 = v228;
  sub_26A10FD9C();
  swift_beginAccess();
  v110 = *(v108 + 48);
  v91 = v226;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v111 = v236;
  if (__swift_getEnumTagSinglePayload(v91, 1, v236) == 1)
  {
    sub_26A0E48F0(v109, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v91 + v110, 1, v111) != 1)
    {
      goto LABEL_15;
    }

    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v112 = v224;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v91 + v110, 1, v111) == 1)
    {
      v94 = v228;
      goto LABEL_13;
    }

    v113 = v234;
    sub_26A1C2528();
    v114 = static _ProtoTextProperty.== infix(_:_:)(v112, v113);
    sub_26A1C25D0();
    sub_26A0E48F0(v228, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    if ((v114 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v115 = v225;
  sub_26A10FD9C();
  swift_beginAccess();
  v116 = v237;
  v117 = *(v237 + 48);
  v102 = v223;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v118 = v236;
  if (__swift_getEnumTagSinglePayload(v102, 1, v236) == 1)
  {
    sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v102 + v117, 1, v118) == 1)
    {
      sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_40;
    }

LABEL_22:
    v86 = v102;
    goto LABEL_23;
  }

  v119 = v221;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v102 + v117, 1, v118) == 1)
  {
    sub_26A0E48F0(v225, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_22;
  }

  v120 = v234;
  sub_26A1C2528();
  v121 = static _ProtoTextProperty.== infix(_:_:)(v119, v120);
  sub_26A1C25D0();
  sub_26A0E48F0(v225, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
  if ((v121 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_40:
  swift_beginAccess();
  v122 = v222;
  sub_26A10FD9C();
  swift_beginAccess();
  v123 = *(v116 + 48);
  v91 = v220;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v124 = v236;
  if (__swift_getEnumTagSinglePayload(v91, 1, v236) == 1)
  {
    sub_26A0E48F0(v122, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v91 + v123, 1, v124) != 1)
    {
      goto LABEL_15;
    }

    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v125 = v219;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v91 + v123, 1, v124) == 1)
    {
      v94 = v222;
      goto LABEL_13;
    }

    v126 = v234;
    sub_26A1C2528();
    v127 = static _ProtoTextProperty.== infix(_:_:)(v125, v126);
    sub_26A1C25D0();
    sub_26A0E48F0(v222, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    if ((v127 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v128 = v217;
  sub_26A10FD9C();
  swift_beginAccess();
  v129 = *(v116 + 48);
  v91 = v218;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v130 = v236;
  if (__swift_getEnumTagSinglePayload(v91, 1, v236) == 1)
  {
    sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v91 + v129, 1, v130) != 1)
    {
      goto LABEL_15;
    }

    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v131 = v215;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v91 + v129, 1, v130) == 1)
    {
      v94 = v128;
      goto LABEL_13;
    }

    v132 = v234;
    sub_26A1C2528();
    v133 = static _ProtoTextProperty.== infix(_:_:)(v131, v132);
    sub_26A1C25D0();
    sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    if ((v133 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v134 = v216;
  sub_26A10FD9C();
  swift_beginAccess();
  v135 = *(v116 + 48);
  v91 = v213;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v136 = v236;
  if (__swift_getEnumTagSinglePayload(v91, 1, v236) != 1)
  {
    v139 = v212;
    sub_26A10FD9C();
    v140 = __swift_getEnumTagSinglePayload(v91 + v135, 1, v136);
    v138 = v214;
    if (v140 != 1)
    {
      v141 = v234;
      sub_26A1C2528();
      v142 = static _ProtoTextProperty.== infix(_:_:)(v139, v141);
      sub_26A1C25D0();
      sub_26A0E48F0(v216, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A1C25D0();
      sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
      if ((v142 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_58;
    }

    v94 = v216;
LABEL_13:
    sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
LABEL_14:
    sub_26A1C25D0();
    goto LABEL_15;
  }

  sub_26A0E48F0(v134, &qword_28036C7B8, &unk_26A425BF0);
  v137 = __swift_getEnumTagSinglePayload(v91 + v135, 1, v136);
  v138 = v214;
  if (v137 != 1)
  {
    goto LABEL_15;
  }

  sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
LABEL_58:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v143 = *(v116 + 48);
  v144 = v138;
  v145 = v211;
  sub_26A10FD9C();
  v91 = v145;
  sub_26A10FD9C();
  v146 = v236;
  if (__swift_getEnumTagSinglePayload(v145, 1, v236) == 1)
  {
    sub_26A0E48F0(v144, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v145 + v143, 1, v146) == 1)
    {
      sub_26A0E48F0(v145, &qword_28036C7B8, &unk_26A425BF0);
      v147 = v209;
      goto LABEL_64;
    }

    goto LABEL_15;
  }

  v148 = v208;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v91 + v143, 1, v146) == 1)
  {
    sub_26A0E48F0(v214, &qword_28036C7B8, &unk_26A425BF0);
    goto LABEL_14;
  }

  v149 = v234;
  sub_26A1C2528();
  v150 = v91;
  v151 = static _ProtoTextProperty.== infix(_:_:)(v148, v149);
  sub_26A1C25D0();
  sub_26A0E48F0(v214, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v150, &qword_28036C7B8, &unk_26A425BF0);
  v147 = v209;
  if ((v151 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_64:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v152 = *(v116 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v153 = v236;
  if (__swift_getEnumTagSinglePayload(v147, 1, v236) == 1)
  {
    sub_26A0E48F0(v210, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v147 + v152, 1, v153) == 1)
    {
      sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v154 = v203;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v147 + v152, 1, v153) == 1)
  {
    sub_26A0E48F0(v210, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_69:
    v86 = v147;
    goto LABEL_23;
  }

  v155 = v234;
  sub_26A1C2528();
  v156 = static _ProtoTextProperty.== infix(_:_:)(v154, v155);
  sub_26A1C25D0();
  sub_26A0E48F0(v210, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v147, &qword_28036C7B8, &unk_26A425BF0);
  if ((v156 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_71:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v157 = *(v204 + 48);
  v158 = v207;
  sub_26A10FD9C();
  v159 = v99;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v158, 1, v206) == 1)
  {
    sub_26A0E48F0(v205, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v207 + v157, 1, v206) == 1)
    {
      sub_26A0E48F0(v207, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_78;
    }

LABEL_76:
    v161 = &qword_28036D190;
    v162 = &unk_26A427130;
    v163 = v207;
LABEL_111:
    sub_26A0E48F0(v163, v161, v162);
    goto LABEL_24;
  }

  v160 = v207;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v160 + v157, 1, v206) == 1)
  {
    sub_26A0E48F0(v205, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
    goto LABEL_76;
  }

  v164 = v207;
  v165 = v197;
  sub_26A1C2528();
  v166 = static _ProtoVisualProperty.== infix(_:_:)(v201, v165);
  sub_26A1C25D0();
  sub_26A0E48F0(v205, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v164, &qword_28036CAE8, &unk_26A426430);
  if ((v166 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_78:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v167 = *(v204 + 48);
  v168 = v202;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v168, 1, v206) == 1)
  {
    sub_26A0E48F0(v200, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v202 + v167, 1, v206) == 1)
    {
      sub_26A0E48F0(v202, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v169 = v202;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v169 + v167, 1, v206) == 1)
  {
    sub_26A0E48F0(v200, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_83:
    v161 = &qword_28036D190;
    v162 = &unk_26A427130;
    v163 = v202;
    goto LABEL_111;
  }

  v170 = v202;
  v171 = v197;
  sub_26A1C2528();
  v172 = static _ProtoVisualProperty.== infix(_:_:)(v198, v171);
  sub_26A1C25D0();
  sub_26A0E48F0(v200, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v170, &qword_28036CAE8, &unk_26A426430);
  if ((v172 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_85:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v173 = *(v193 + 48);
  v174 = v199;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v174, 1, v196) == 1)
  {
    sub_26A0E48F0(v195, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v199 + v173, 1, v196) == 1)
    {
      sub_26A0E48F0(v199, &off_28036C7C0, &off_26A427400);
      goto LABEL_88;
    }

    goto LABEL_101;
  }

  v186 = v199;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v186 + v173, 1, v196) == 1)
  {
    sub_26A0E48F0(v195, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_101:
    v161 = &qword_28036C7C8;
    v162 = &qword_26A425C00;
    v163 = v199;
    goto LABEL_111;
  }

  v187 = v192;
  sub_26A1C2528();
  sub_26A0E36D8(*v194, *v187);
  if ((v188 & 1) == 0 || (v194[1] == v192[1] ? (v189 = v194[2] == v192[2]) : (v189 = 0), !v189 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v195, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v163 = v199;
    v161 = &off_28036C7C0;
    v162 = &off_26A427400;
    goto LABEL_111;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v190 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v195, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v199, &off_28036C7C0, &off_26A427400);
  if ((v190 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_88:
  v175 = &v104[OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName];
  swift_beginAccess();
  v176 = *v175;
  v177 = *(v175 + 1);
  v178 = (v159 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v179 = v176 == *v178 && v177 == v178[1];
  if (!v179 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_24;
  }

  v180 = &v104[OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier];
  swift_beginAccess();
  v181 = *v180;
  v182 = *(v180 + 1);
  v183 = (v159 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v181 == *v183 && v182 == v183[1])
  {

    return 1;
  }

  v185 = sub_26A425354();

  result = 0;
  if (v185)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1A3A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F058, type metadata accessor for _ProtoSummaryItem_Pair, &protocol conformance descriptor for _ProtoSummaryItem_Pair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1A3B00(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036D280, type metadata accessor for _ProtoSummaryItem_Pair, &protocol conformance descriptor for _ProtoSummaryItem_Pair);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1A3B70(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036D280, type metadata accessor for _ProtoSummaryItem_Pair, &protocol conformance descriptor for _ProtoSummaryItem_Pair);

  return sub_26A4249B4();
}

uint64_t sub_26A1A3BFC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E7E8);
  __swift_project_value_buffer(v0, qword_28036E7E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26A429A40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "text_1";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 4;
  *v9 = "thumbnail_1";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 5;
  *v11 = "thumbnail_2";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "text_2";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "text_3";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "action";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "component_name";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "link_identifier";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A1A3F8C()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1A40A0()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_141_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_173_0();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  v11 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  v21 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v10);
  v24 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v10);
  type metadata accessor for _ProtoActionProperty(0);
  v27 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_172_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  v31 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v31 = 0;
  v31[1] = v32;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_202_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2);
  OUTLINED_FUNCTION_202_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_274(&v42);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_202_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_203_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_203_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_274(&v43);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_197_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action);
  OUTLINED_FUNCTION_148();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_212_0(&v44);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_173_1();
  sub_26A10CF40();
  v33 = swift_endAccess();
  OUTLINED_FUNCTION_129_1(v33, &v41);
  OUTLINED_FUNCTION_26_10(v14, v40);
  OUTLINED_FUNCTION_262();

  v35 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_129_1(v34, &v39);
  v37 = *v35;
  v36 = v35[1];

  OUTLINED_FUNCTION_26_10(v31, &v38);
  *v31 = v37;
  v31[1] = v36;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1A44E4()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1A4664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1A47CC(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1A48A8(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1A4984(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1A4A60(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1A4B3C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1A4C18(a2, a1, a3, a4);
        break;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_12;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_12:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1A47CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A4984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A4A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A4B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A4C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A4D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1A4EF0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1A50E4(a1, a2, a3, a4);
    sub_26A1A52D8(a1, a2, a3, a4);
    sub_26A1A54CC(a1, a2, a3, a4);
    sub_26A1A56C0(a1, a2, a3, a4);
    sub_26A1A58B4(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

uint64_t sub_26A1A4EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A50E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A52D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A54CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A56C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A5AD4(uint64_t a1, uint64_t a2)
{
  v110 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v110);
  v107 = (&v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v109);
  v111 = &v107 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v6 - 8);
  v108 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v122 = &v107 - v9;
  v128 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v128);
  v120 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v130);
  v121 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v124 = &v107 - v17;
  MEMORY[0x28223BE20](v18);
  v123 = &v107 - v19;
  MEMORY[0x28223BE20](v20);
  v126 = &v107 - v21;
  v131 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v131);
  v125 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v23);
  v113 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v117 = &v107 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v107 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v30 - 8);
  v112 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v115 = &v107 - v33;
  MEMORY[0x28223BE20](v34);
  v114 = &v107 - v35;
  MEMORY[0x28223BE20](v36);
  v116 = &v107 - v37;
  MEMORY[0x28223BE20](v38);
  v129 = &v107 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v107 - v41;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v119 = v23;
  v43 = *(v23 + 48);
  sub_26A10FD9C();
  v44 = v131;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v29, 1, v44) == 1)
  {

    sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
    v45 = a1;
    if (__swift_getEnumTagSinglePayload(&v29[v43], 1, v44) == 1)
    {
      sub_26A0E48F0(v29, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_9;
    }

LABEL_6:
    sub_26A0E48F0(v29, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_32;
  }

  v46 = v129;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v29[v43], 1, v44) == 1)
  {

    sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v47 = v125;
  sub_26A1C2528();

  v48 = static _ProtoTextProperty.== infix(_:_:)(v46, v47);
  sub_26A1C25D0();
  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
  v45 = a1;
  sub_26A1C25D0();
  sub_26A0E48F0(v29, &qword_28036C7B8, &unk_26A425BF0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  swift_beginAccess();
  v49 = v126;
  sub_26A10FD9C();
  swift_beginAccess();
  v50 = *(v130 + 48);
  v51 = v127;
  sub_26A10FD9C();
  v52 = a2;
  sub_26A10FD9C();
  v53 = v128;
  if (__swift_getEnumTagSinglePayload(v51, 1, v128) == 1)
  {
    sub_26A0E48F0(v49, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v53) == 1)
    {
      sub_26A0E48F0(v51, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_17;
    }

LABEL_14:
    sub_26A0E48F0(v51, &qword_28036D190, &unk_26A427130);
    goto LABEL_32;
  }

  v54 = v123;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v53) == 1)
  {
    sub_26A0E48F0(v49, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
    goto LABEL_14;
  }

  v55 = v45;
  v56 = v49;
  v57 = v120;
  sub_26A1C2528();
  LODWORD(v129) = static _ProtoVisualProperty.== infix(_:_:)(v54, v57);
  sub_26A1C25D0();
  v58 = v56;
  v45 = v55;
  sub_26A0E48F0(v58, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  v53 = v128;
  sub_26A0E48F0(v51, &qword_28036CAE8, &unk_26A426430);
  if ((v129 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  swift_beginAccess();
  v59 = v52;
  v60 = v124;
  sub_26A10FD9C();
  swift_beginAccess();
  v61 = *(v130 + 48);
  v62 = v121;
  sub_26A10FD9C();
  v130 = v59;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v62, 1, v53) == 1)
  {
    sub_26A0E48F0(v60, &qword_28036CAE8, &unk_26A426430);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62 + v61, 1, v53);
    v64 = v122;
    v65 = v130;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_24;
    }

LABEL_22:
    v68 = &qword_28036D190;
    v69 = &unk_26A427130;
LABEL_30:
    v76 = v62;
LABEL_31:
    sub_26A0E48F0(v76, v68, v69);
    goto LABEL_32;
  }

  v66 = v118;
  sub_26A10FD9C();
  v67 = __swift_getEnumTagSinglePayload(v62 + v61, 1, v53);
  v64 = v122;
  if (v67 == 1)
  {
    sub_26A0E48F0(v124, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
    goto LABEL_22;
  }

  v70 = v120;
  sub_26A1C2528();
  v71 = static _ProtoVisualProperty.== infix(_:_:)(v66, v70);
  sub_26A1C25D0();
  sub_26A0E48F0(v124, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
  v65 = v130;
  if ((v71 & 1) == 0)
  {
LABEL_32:

    return 0;
  }

LABEL_24:
  swift_beginAccess();
  v72 = v116;
  sub_26A10FD9C();
  swift_beginAccess();
  v73 = *(v119 + 48);
  v62 = v117;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v74 = v131;
  if (__swift_getEnumTagSinglePayload(v62, 1, v131) == 1)
  {
    sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v62 + v73, 1, v74) == 1)
    {
      sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v75 = v114;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v62 + v73, 1, v74) == 1)
  {
    sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_29:
    v68 = &qword_28036C7D0;
    v69 = &qword_26A426DE0;
    goto LABEL_30;
  }

  v78 = v125;
  sub_26A1C2528();
  v79 = static _ProtoTextProperty.== infix(_:_:)(v75, v78);
  sub_26A1C25D0();
  sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  swift_beginAccess();
  v80 = v115;
  sub_26A10FD9C();
  swift_beginAccess();
  v81 = *(v119 + 48);
  v82 = v113;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v83 = v131;
  if (__swift_getEnumTagSinglePayload(v82, 1, v131) == 1)
  {
    sub_26A0E48F0(v80, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v83) == 1)
    {
      sub_26A0E48F0(v82, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v84 = v64;
  v85 = v112;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v83) == 1)
  {
    sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_40:
    v68 = &qword_28036C7D0;
    v69 = &qword_26A426DE0;
    v76 = v82;
    goto LABEL_31;
  }

  v86 = v125;
  sub_26A1C2528();
  v87 = static _ProtoTextProperty.== infix(_:_:)(v85, v86);
  sub_26A1C25D0();
  sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v82, &qword_28036C7B8, &unk_26A425BF0);
  v64 = v84;
  if ((v87 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_42:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v88 = *(v109 + 48);
  v89 = v111;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v90 = v110;
  if (__swift_getEnumTagSinglePayload(v89, 1, v110) == 1)
  {
    sub_26A0E48F0(v64, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v90) == 1)
    {
      sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
      goto LABEL_45;
    }

    goto LABEL_58;
  }

  v102 = v108;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v90) == 1)
  {
    sub_26A0E48F0(v64, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_58:
    v68 = &qword_28036C7C8;
    v69 = &qword_26A425C00;
    v76 = v89;
    goto LABEL_31;
  }

  v103 = v107;
  sub_26A1C2528();
  sub_26A0E36D8(*v102, *v103);
  if ((v104 & 1) == 0 || (v102[1] == v103[1] ? (v105 = v102[2] == v103[2]) : (v105 = 0), !v105 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v64, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v76 = v89;
    v68 = &off_28036C7C0;
    v69 = &off_26A427400;
    goto LABEL_31;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v106 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v64, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
  if ((v106 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_45:
  v91 = (v45 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  v94 = (v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v95 = v92 == *v94 && v93 == v94[1];
  if (!v95 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_32;
  }

  v96 = (v45 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = (v65 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PairV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v97 == *v99 && v98 == v99[1])
  {

    return 1;
  }

  v101 = sub_26A425354();

  result = 0;
  if (v101)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1A6F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F050, type metadata accessor for _ProtoSummaryItem_PairV2, &protocol conformance descriptor for _ProtoSummaryItem_PairV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1A6FB8(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036EDE0, type metadata accessor for _ProtoSummaryItem_PairV2, &protocol conformance descriptor for _ProtoSummaryItem_PairV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1A7028(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036EDE0, type metadata accessor for _ProtoSummaryItem_PairV2, &protocol conformance descriptor for _ProtoSummaryItem_PairV2);

  return sub_26A4249B4();
}

uint64_t sub_26A1A70C0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E808);
  __swift_project_value_buffer(v0, qword_28036E808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26A42B0B0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "number_1";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "number_2";
  *(v9 + 8) = 8;
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
  *v15 = "text_3";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_4";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text_5";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_6";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "text_7";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "text_8";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "text_9";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "thumbnail_1";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "thumbnail_2";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "action";
  *(v33 + 1) = 6;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "component_name";
  *(v35 + 1) = 14;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "link_identifier";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A1A7648()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1A783C()
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
  v7 = OUTLINED_FUNCTION_12_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  v18 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  v21 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
  v24 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v27 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v11);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v11);
  v36 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
  v39 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8);
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v11);
  v42 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9);
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v11);
  v45 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  v49 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2);
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v61 = v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
  OUTLINED_FUNCTION_275();
  v56 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v56 = 0;
  v56[1] = v57;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1);
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2);
  OUTLINED_FUNCTION_117_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_147_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &v72);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, &v71);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, &v70);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, &v69);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &v68);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_182_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &v67);
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v66);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  v58 = swift_endAccess();
  OUTLINED_FUNCTION_122_1(v58, &v65);
  OUTLINED_FUNCTION_26_10(v61, &v64);
  OUTLINED_FUNCTION_261();

  OUTLINED_FUNCTION_122_1(v59, &v63);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v60, &v62);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1A7EB0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1A80E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1A8330(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1A840C(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1A84E8(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1A85C4(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1A86A0(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1A877C(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A1A8858(a2, a1, a3, a4);
        break;
      case 8:
        sub_26A1A8934(a2, a1, a3, a4);
        break;
      case 9:
        sub_26A1A8A10(a2, a1, a3, a4);
        break;
      case 10:
        sub_26A1A8AEC(a2, a1, a3, a4);
        break;
      case 11:
        sub_26A1A8BC8(a2, a1, a3, a4);
        break;
      case 12:
        sub_26A1A8CA4(a2, a1, a3, a4);
        break;
      case 13:
        sub_26A1A8D80(a2, a1, a3, a4);
        break;
      case 14:
        sub_26A1A8E5C(a2, a1, a3, a4);
        break;
      case 15:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_12;
      case 16:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_12:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1A8330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A84E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A85C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A86A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1A8F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1A91D4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1A93C8(a1, a2, a3, a4);
    sub_26A1A95BC(a1, a2, a3, a4);
    sub_26A1A97B0(a1, a2, a3, a4);
    sub_26A1A99A4(a1, a2, a3, a4);
    sub_26A1A9B98(a1, a2, a3, a4);
    sub_26A1A9D8C(a1, a2, a3, a4);
    sub_26A1A9F80(a1, a2, a3, a4);
    sub_26A1AA174(a1, a2, a3, a4);
    sub_26A1AA368(a1, a2, a3, a4);
    sub_26A1AA55C(a1, a2, a3, a4);
    sub_26A1AA750(a1, a2, a3, a4);
    sub_26A1AA944(a1, a2, a3, a4);
    sub_26A1AAB38(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

uint64_t sub_26A1A91D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A93C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A99A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A9B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A9D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1A9F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AA174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AA368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AA55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AA750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AA944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AAB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AAD58(_BYTE *a1, uint64_t a2)
{
  v239 = a2;
  v194 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v194);
  v190 = &v188[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v191);
  v197 = &v188[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v192 = &v188[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v193 = &v188[-v8];
  v204 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v204);
  v195 = &v188[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v201);
  v200 = &v188[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v205 = &v188[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v13 - 8);
  v196 = &v188[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v198 = &v188[-v16];
  MEMORY[0x28223BE20](v17);
  v199 = &v188[-v18];
  MEMORY[0x28223BE20](v19);
  v202 = &v188[-v20];
  v238 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v238);
  v234 = &v188[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v22);
  v208 = &v188[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v210 = &v188[-v25];
  MEMORY[0x28223BE20](v26);
  v212 = &v188[-v27];
  MEMORY[0x28223BE20](v28);
  v215 = &v188[-v29];
  MEMORY[0x28223BE20](v30);
  v218 = &v188[-v31];
  MEMORY[0x28223BE20](v32);
  v221 = &v188[-v33];
  MEMORY[0x28223BE20](v34);
  v224 = &v188[-v35];
  MEMORY[0x28223BE20](v36);
  v227 = &v188[-v37];
  MEMORY[0x28223BE20](v38);
  v230 = &v188[-v39];
  MEMORY[0x28223BE20](v40);
  v233 = &v188[-v41];
  MEMORY[0x28223BE20](v42);
  v44 = &v188[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v45 - 8);
  v203 = &v188[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v47);
  v207 = &v188[-v48];
  MEMORY[0x28223BE20](v49);
  v206 = &v188[-v50];
  MEMORY[0x28223BE20](v51);
  v211 = &v188[-v52];
  MEMORY[0x28223BE20](v53);
  v209 = &v188[-v54];
  MEMORY[0x28223BE20](v55);
  v214 = &v188[-v56];
  MEMORY[0x28223BE20](v57);
  v213 = &v188[-v58];
  MEMORY[0x28223BE20](v59);
  v217 = &v188[-v60];
  MEMORY[0x28223BE20](v61);
  v216 = &v188[-v62];
  MEMORY[0x28223BE20](v63);
  v220 = &v188[-v64];
  MEMORY[0x28223BE20](v65);
  v219 = &v188[-v66];
  MEMORY[0x28223BE20](v67);
  v223 = &v188[-v68];
  MEMORY[0x28223BE20](v69);
  v222 = &v188[-v70];
  MEMORY[0x28223BE20](v71);
  v226 = &v188[-v72];
  MEMORY[0x28223BE20](v73);
  v225 = &v188[-v74];
  MEMORY[0x28223BE20](v75);
  v229 = &v188[-v76];
  MEMORY[0x28223BE20](v77);
  v228 = &v188[-v78];
  MEMORY[0x28223BE20](v79);
  v232 = &v188[-v80];
  MEMORY[0x28223BE20](v81);
  v231 = &v188[-v82];
  MEMORY[0x28223BE20](v83);
  v237 = &v188[-v84];
  MEMORY[0x28223BE20](v85);
  v235 = &v188[-v86];
  MEMORY[0x28223BE20](v87);
  v89 = &v188[-v88];
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v236 = v22;
  v90 = *(v22 + 48);
  sub_26A10FD9C();
  v91 = v238;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v44, 1, v91) == 1)
  {

    sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v44[v90], 1, v91) == 1)
    {
      sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_8;
    }

LABEL_6:
    v93 = v44;
LABEL_64:
    sub_26A0E48F0(v93, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_65;
  }

  v92 = v235;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v44[v90], 1, v91) == 1)
  {

    sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v94 = v234;
  sub_26A1C2528();

  v189 = static _ProtoTextProperty.== infix(_:_:)(v92, v94);
  sub_26A1C25D0();
  sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
  if ((v189 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_8:
  swift_beginAccess();
  v95 = v237;
  sub_26A10FD9C();
  swift_beginAccess();
  v96 = *(v236 + 48);
  v97 = v233;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v97, 1, v91) == 1)
  {
    sub_26A0E48F0(v95, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v97 + v96, 1, v91) == 1)
    {
      sub_26A0E48F0(v97, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v98 = v231;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v97 + v96, 1, v91) == 1)
  {
    sub_26A0E48F0(v237, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_13:
    v93 = v97;
    goto LABEL_64;
  }

  v99 = v234;
  sub_26A1C2528();
  v100 = static _ProtoTextProperty.== infix(_:_:)(v98, v99);
  sub_26A1C25D0();
  sub_26A0E48F0(v237, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v97, &qword_28036C7B8, &unk_26A425BF0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_15:
  swift_beginAccess();
  v237 = a1;
  v101 = v232;
  sub_26A10FD9C();
  swift_beginAccess();
  v102 = v236;
  v103 = *(v236 + 48);
  v104 = v230;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) == 1)
  {
    sub_26A0E48F0(v101, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104 + v103, 1, v91);
    v106 = v237;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_63;
    }

    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v107 = v228;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v104 + v103, 1, v91) == 1)
    {
      sub_26A0E48F0(v232, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A1C25D0();
      goto LABEL_63;
    }

    v108 = v234;
    sub_26A1C2528();
    v109 = static _ProtoTextProperty.== infix(_:_:)(v107, v108);
    sub_26A1C25D0();
    sub_26A0E48F0(v232, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
    v106 = v237;
    if ((v109 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_beginAccess();
  v110 = v102;
  v111 = v229;
  sub_26A10FD9C();
  swift_beginAccess();
  v112 = *(v110 + 48);
  v104 = v227;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) == 1)
  {
    sub_26A0E48F0(v111, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v104 + v112, 1, v91) != 1)
    {
      goto LABEL_63;
    }

    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v113 = v225;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v104 + v112, 1, v91) == 1)
    {
      v114 = v229;
      goto LABEL_62;
    }

    v115 = v234;
    sub_26A1C2528();
    v116 = static _ProtoTextProperty.== infix(_:_:)(v113, v115);
    sub_26A1C25D0();
    sub_26A0E48F0(v229, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
    if ((v116 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_beginAccess();
  v117 = v226;
  sub_26A10FD9C();
  swift_beginAccess();
  v118 = *(v236 + 48);
  v104 = v224;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) == 1)
  {
    sub_26A0E48F0(v117, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v104 + v118, 1, v91) != 1)
    {
      goto LABEL_63;
    }

    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v119 = v222;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v104 + v118, 1, v91) == 1)
    {
      v114 = v226;
      goto LABEL_62;
    }

    v120 = v234;
    sub_26A1C2528();
    v121 = static _ProtoTextProperty.== infix(_:_:)(v119, v120);
    sub_26A1C25D0();
    sub_26A0E48F0(v226, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
    if ((v121 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_beginAccess();
  v122 = v223;
  sub_26A10FD9C();
  swift_beginAccess();
  v123 = *(v236 + 48);
  v104 = v221;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) == 1)
  {
    sub_26A0E48F0(v122, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v104 + v123, 1, v91) != 1)
    {
      goto LABEL_63;
    }

    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v124 = v219;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v104 + v123, 1, v91) == 1)
    {
      v114 = v223;
      goto LABEL_62;
    }

    v125 = v234;
    sub_26A1C2528();
    v126 = static _ProtoTextProperty.== infix(_:_:)(v124, v125);
    sub_26A1C25D0();
    sub_26A0E48F0(v223, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
    if ((v126 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_beginAccess();
  v127 = v220;
  sub_26A10FD9C();
  swift_beginAccess();
  v128 = *(v236 + 48);
  v104 = v218;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) == 1)
  {
    sub_26A0E48F0(v127, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v104 + v128, 1, v91) != 1)
    {
      goto LABEL_63;
    }

    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v129 = v216;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v104 + v128, 1, v91) == 1)
    {
      v114 = v220;
      goto LABEL_62;
    }

    v130 = v234;
    sub_26A1C2528();
    v131 = static _ProtoTextProperty.== infix(_:_:)(v129, v130);
    sub_26A1C25D0();
    sub_26A0E48F0(v220, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
    if ((v131 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_beginAccess();
  v132 = v217;
  sub_26A10FD9C();
  swift_beginAccess();
  v133 = *(v236 + 48);
  v104 = v215;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) != 1)
  {
    v134 = v213;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v104 + v133, 1, v91) != 1)
    {
      v135 = v234;
      sub_26A1C2528();
      v136 = static _ProtoTextProperty.== infix(_:_:)(v134, v135);
      sub_26A1C25D0();
      sub_26A0E48F0(v217, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A1C25D0();
      sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
      if ((v136 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_51;
    }

    v114 = v217;
LABEL_62:
    sub_26A0E48F0(v114, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_63;
  }

  sub_26A0E48F0(v132, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v104 + v133, 1, v91) != 1)
  {
    goto LABEL_63;
  }

  sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
LABEL_51:
  swift_beginAccess();
  v137 = v214;
  sub_26A10FD9C();
  swift_beginAccess();
  v138 = *(v236 + 48);
  v104 = v212;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v91) == 1)
  {
    sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v104 + v138, 1, v91) == 1)
    {
      sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
      v139 = v210;
      goto LABEL_57;
    }

LABEL_63:
    v93 = v104;
    goto LABEL_64;
  }

  v140 = v209;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v104 + v138, 1, v91) == 1)
  {
    v114 = v214;
    goto LABEL_62;
  }

  v141 = v234;
  sub_26A1C2528();
  v142 = static _ProtoTextProperty.== infix(_:_:)(v140, v141);
  sub_26A1C25D0();
  sub_26A0E48F0(v214, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  v139 = v210;
  if ((v142 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_57:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v143 = *(v236 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v104 = v139;
  if (__swift_getEnumTagSinglePayload(v139, 1, v91) == 1)
  {
    sub_26A0E48F0(v211, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v139 + v143, 1, v91) == 1)
    {
      v144 = v239;
      sub_26A0E48F0(v139, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_68;
    }

    goto LABEL_63;
  }

  v144 = v239;
  v145 = v206;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v139 + v143, 1, v91) == 1)
  {
    v114 = v211;
    goto LABEL_62;
  }

  v147 = v234;
  sub_26A1C2528();
  v148 = static _ProtoTextProperty.== infix(_:_:)(v145, v147);
  sub_26A1C25D0();
  sub_26A0E48F0(v211, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
  if ((v148 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_68:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v149 = *(v236 + 48);
  v150 = v208;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v150, 1, v238) == 1)
  {
    sub_26A0E48F0(v207, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v208[v149], 1, v238) == 1)
    {
      sub_26A0E48F0(v208, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_76;
    }

LABEL_73:
    v152 = &qword_28036C7D0;
    v153 = &qword_26A426DE0;
    v154 = v208;
LABEL_116:
    sub_26A0E48F0(v154, v152, v153);
    goto LABEL_65;
  }

  v151 = v208;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v151[v149], 1, v238) == 1)
  {
    sub_26A0E48F0(v207, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_73;
  }

  v155 = v208;
  v156 = v234;
  sub_26A1C2528();
  v157 = static _ProtoTextProperty.== infix(_:_:)(v203, v156);
  sub_26A1C25D0();
  sub_26A0E48F0(v207, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v155, &qword_28036C7B8, &unk_26A425BF0);
  if ((v157 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_76:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v158 = *(v201 + 48);
  v159 = v205;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v159, 1, v204) == 1)
  {
    sub_26A0E48F0(v202, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(&v205[v158], 1, v204) == 1)
    {
      sub_26A0E48F0(v205, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v160 = v205;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v160[v158], 1, v204) == 1)
  {
    sub_26A0E48F0(v202, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_81:
    v152 = &qword_28036D190;
    v153 = &unk_26A427130;
    v154 = v205;
    goto LABEL_116;
  }

  v161 = v205;
  v162 = v195;
  sub_26A1C2528();
  v163 = static _ProtoVisualProperty.== infix(_:_:)(v199, v162);
  sub_26A1C25D0();
  sub_26A0E48F0(v202, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v161, &qword_28036CAE8, &unk_26A426430);
  if ((v163 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_83:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v164 = *(v201 + 48);
  v165 = v200;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v165, 1, v204) == 1)
  {
    sub_26A0E48F0(v198, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(&v200[v164], 1, v204) == 1)
    {
      sub_26A0E48F0(v200, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v166 = v200;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v166[v164], 1, v204) == 1)
  {
    sub_26A0E48F0(v198, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_88:
    v152 = &qword_28036D190;
    v153 = &unk_26A427130;
    v154 = v200;
    goto LABEL_116;
  }

  v167 = v200;
  v168 = v195;
  sub_26A1C2528();
  v169 = static _ProtoVisualProperty.== infix(_:_:)(v196, v168);
  sub_26A1C25D0();
  sub_26A0E48F0(v198, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v167, &qword_28036CAE8, &unk_26A426430);
  if ((v169 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_90:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v170 = *(v191 + 48);
  v171 = v197;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v171, 1, v194) == 1)
  {
    sub_26A0E48F0(v193, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(&v197[v170], 1, v194) == 1)
    {
      sub_26A0E48F0(v197, &off_28036C7C0, &off_26A427400);
      goto LABEL_93;
    }

    goto LABEL_106;
  }

  v183 = v197;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v183[v170], 1, v194) == 1)
  {
    sub_26A0E48F0(v193, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_106:
    v152 = &qword_28036C7C8;
    v153 = &qword_26A425C00;
    v154 = v197;
    goto LABEL_116;
  }

  v184 = v190;
  sub_26A1C2528();
  sub_26A0E36D8(*v192, *v184);
  if ((v185 & 1) == 0 || (v192[1] == v190[1] ? (v186 = v192[2] == v190[2]) : (v186 = 0), !v186 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v193, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v154 = v197;
    v152 = &off_28036C7C0;
    v153 = &off_26A427400;
    goto LABEL_116;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v187 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v193, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v197, &off_28036C7C0, &off_26A427400);
  if ((v187 & 1) == 0)
  {
LABEL_65:

    return 0;
  }

LABEL_93:
  v172 = &v106[OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName];
  swift_beginAccess();
  v173 = *v172;
  v174 = v172[1];
  v175 = (v144 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v176 = v173 == *v175 && v174 == v175[1];
  if (!v176 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_65;
  }

  v177 = &v106[OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier];
  swift_beginAccess();
  v178 = *v177;
  v179 = v177[1];
  v180 = (v144 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v178 == *v180 && v179 == v180[1])
  {

    return 1;
  }

  v182 = sub_26A425354();

  result = 0;
  if (v182)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1AD47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F048, type metadata accessor for _ProtoSummaryItem_PairNumber, &protocol conformance descriptor for _ProtoSummaryItem_PairNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1AD4FC(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036EDF8, type metadata accessor for _ProtoSummaryItem_PairNumber, &protocol conformance descriptor for _ProtoSummaryItem_PairNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1AD56C(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036EDF8, type metadata accessor for _ProtoSummaryItem_PairNumber, &protocol conformance descriptor for _ProtoSummaryItem_PairNumber);

  return sub_26A4249B4();
}

uint64_t sub_26A1AD604()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E828);
  __swift_project_value_buffer(v0, qword_28036E828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26A42B0C0;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "number_1";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "number_2";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_1";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_5";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thumbnail_1";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "thumbnail_2";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "action";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "component_name";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 16;
  *v28 = "link_identifier";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A1ADA78()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1ADC04()
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
  OUTLINED_FUNCTION_218_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88_3(v10, v54);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
  v20 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v13);
  v23 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  v26 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v13);
  v29 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v13);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  v32 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = type metadata accessor for _ProtoVisualProperty(0);
  v37 = OUTLINED_FUNCTION_85_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  v40 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2);
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
  type metadata accessor for _ProtoActionProperty(0);
  v43 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v55 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_275();
  v47 = (v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v47 = 0;
  v47[1] = v48;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1);
  OUTLINED_FUNCTION_113_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_115_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2);
  OUTLINED_FUNCTION_113_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_115_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  OUTLINED_FUNCTION_113_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_115_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  OUTLINED_FUNCTION_113_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_115_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_113_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_115_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  OUTLINED_FUNCTION_113_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_115_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_147_1(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5);
  OUTLINED_FUNCTION_206_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &v62);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_182_1();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &v61);
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v60);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_117_1();
  sub_26A10CF40();
  swift_endAccess();
  v49 = (v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName, &v59);
  v50 = *v49;
  v51 = v49[1];
  OUTLINED_FUNCTION_26_10(v55, &v58);
  *v55 = v50;
  v55[1] = v51;

  OUTLINED_FUNCTION_122_1(v52, &v57);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v53, &v56);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1AE1F4()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__number1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__number2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1AE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1AE5AC(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1AE688(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1AE764(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1AE840(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1AE91C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1AE9F8(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A1AEAD4(a2, a1, a3, a4);
        break;
      case 8:
        sub_26A1AEBB0(a2, a1, a3, a4);
        break;
      case 9:
        sub_26A1AEC8C(a2, a1, a3, a4);
        break;
      case 14:
        sub_26A1AED68(a2, a1, a3, a4);
        break;
      case 15:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_15;
      case 16:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_15:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1AE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AE688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AE840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AEAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AEBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AED68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1AEE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1AF080(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1AF274(a1, a2, a3, a4);
    sub_26A1AF468(a1, a2, a3, a4);
    sub_26A1AF65C(a1, a2, a3, a4);
    sub_26A1AF850(a1, a2, a3, a4);
    sub_26A1AFA44(a1, a2, a3, a4);
    sub_26A1AFC38(a1, a2, a3, a4);
    sub_26A1AFE2C(a1, a2, a3, a4);
    sub_26A1B0020(a1, a2, a3, a4);
    sub_26A1B0214(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

uint64_t sub_26A1AF080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AF274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AF468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AFA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AFC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1AFE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B0214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B0434(uint64_t a1, uint64_t a2)
{
  v201 = a2;
  v165 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v165);
  v162 = (&v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v164);
  v167 = &v162 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v163 = (&v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v168 = &v162 - v8;
  v176 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v176);
  v169 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v175);
  v170 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v173 = &v162 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v13 - 8);
  v166 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v181 = &v162 - v16;
  MEMORY[0x28223BE20](v17);
  v171 = &v162 - v18;
  MEMORY[0x28223BE20](v19);
  v177 = &v162 - v20;
  v179 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v179);
  v172 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  MEMORY[0x28223BE20](v178);
  v180 = &v162 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v23 - 8);
  v174 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v187 = &v162 - v26;
  v202 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v202);
  v198 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v28);
  v183 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v186 = &v162 - v31;
  MEMORY[0x28223BE20](v32);
  v190 = &v162 - v33;
  MEMORY[0x28223BE20](v34);
  v193 = &v162 - v35;
  MEMORY[0x28223BE20](v36);
  v196 = &v162 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v162 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v41 - 8);
  v182 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v185 = &v162 - v44;
  MEMORY[0x28223BE20](v45);
  v184 = &v162 - v46;
  MEMORY[0x28223BE20](v47);
  v189 = &v162 - v48;
  MEMORY[0x28223BE20](v49);
  v188 = &v162 - v50;
  MEMORY[0x28223BE20](v51);
  v192 = &v162 - v52;
  MEMORY[0x28223BE20](v53);
  v191 = &v162 - v54;
  MEMORY[0x28223BE20](v55);
  v197 = &v162 - v56;
  MEMORY[0x28223BE20](v57);
  v194 = &v162 - v58;
  MEMORY[0x28223BE20](v59);
  v195 = &v162 - v60;
  MEMORY[0x28223BE20](v61);
  v199 = &v162 - v62;
  MEMORY[0x28223BE20](v63);
  v65 = &v162 - v64;
  swift_beginAccess();
  sub_26A10FD9C();
  v66 = v201;
  swift_beginAccess();
  v200 = v28;
  v67 = *(v28 + 48);
  sub_26A10FD9C();
  v68 = v66;
  v69 = v202;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v40, 1, v69) == 1)
  {

    sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v40[v67], 1, v69) == 1)
    {
      sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_6:
    v71 = &qword_28036C7D0;
    v72 = &qword_26A426DE0;
LABEL_7:
    v73 = v40;
LABEL_8:
    sub_26A0E48F0(v73, v71, v72);
    goto LABEL_39;
  }

  v70 = v199;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v40[v67], 1, v69) == 1)
  {

    sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v74 = v198;
  sub_26A1C2528();

  v75 = static _ProtoTextProperty.== infix(_:_:)(v70, v74);
  sub_26A1C25D0();
  sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  swift_beginAccess();
  v201 = a1;
  v76 = v195;
  sub_26A10FD9C();
  swift_beginAccess();
  v77 = *(v200 + 48);
  v78 = v196;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v79 = v202;
  if (__swift_getEnumTagSinglePayload(v78, 1, v202) == 1)
  {
    sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78 + v77, 1, v79);
    v81 = v197;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v78, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_18;
    }

LABEL_16:
    v84 = &qword_28036C7D0;
    v85 = &qword_26A426DE0;
    v86 = v78;
LABEL_38:
    sub_26A0E48F0(v86, v84, v85);
    goto LABEL_39;
  }

  v82 = v194;
  sub_26A10FD9C();
  v83 = __swift_getEnumTagSinglePayload(v78 + v77, 1, v79);
  v81 = v197;
  if (v83 == 1)
  {
    sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_16;
  }

  v87 = v198;
  sub_26A1C2528();
  LODWORD(v199) = static _ProtoTextProperty.== infix(_:_:)(v82, v87);
  sub_26A1C25D0();
  sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v78, &qword_28036C7B8, &unk_26A425BF0);
  if ((v199 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v88 = *(v200 + 48);
  v89 = v193;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v90 = v202;
  if (__swift_getEnumTagSinglePayload(v89, 1, v202) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v90) == 1)
    {
      sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v91 = v191;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v90) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_23:
    v84 = &qword_28036C7D0;
    v85 = &qword_26A426DE0;
    v86 = v89;
    goto LABEL_38;
  }

  v92 = v198;
  sub_26A1C2528();
  v93 = static _ProtoTextProperty.== infix(_:_:)(v91, v92);
  sub_26A1C25D0();
  sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_25:
  swift_beginAccess();
  v94 = v192;
  sub_26A10FD9C();
  swift_beginAccess();
  v95 = *(v200 + 48);
  v96 = v190;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v97 = v202;
  if (__swift_getEnumTagSinglePayload(v96, 1, v202) == 1)
  {
    sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v97) != 1)
    {
LABEL_37:
      v84 = &qword_28036C7D0;
      v85 = &qword_26A426DE0;
      v86 = v96;
      goto LABEL_38;
    }

    sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v98 = v188;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v97) == 1)
    {
      v99 = v192;
LABEL_36:
      sub_26A0E48F0(v99, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A1C25D0();
      goto LABEL_37;
    }

    v100 = v198;
    sub_26A1C2528();
    v101 = static _ProtoTextProperty.== infix(_:_:)(v98, v100);
    sub_26A1C25D0();
    sub_26A0E48F0(v192, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
    if ((v101 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  swift_beginAccess();
  v102 = v189;
  sub_26A10FD9C();
  swift_beginAccess();
  v103 = *(v200 + 48);
  v96 = v186;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v104 = v202;
  if (__swift_getEnumTagSinglePayload(v96, 1, v202) == 1)
  {
    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
    v105 = __swift_getEnumTagSinglePayload(v96 + v103, 1, v104);
    v106 = v187;
    if (v105 == 1)
    {
      sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  v107 = v184;
  sub_26A10FD9C();
  v108 = __swift_getEnumTagSinglePayload(v96 + v103, 1, v104);
  v106 = v187;
  if (v108 == 1)
  {
    v99 = v189;
    goto LABEL_36;
  }

  v110 = v198;
  sub_26A1C2528();
  v111 = static _ProtoTextProperty.== infix(_:_:)(v107, v110);
  sub_26A1C25D0();
  sub_26A0E48F0(v189, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
  if ((v111 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  swift_beginAccess();
  v112 = v185;
  sub_26A10FD9C();
  swift_beginAccess();
  v113 = *(v200 + 48);
  v114 = v183;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v115 = v202;
  if (__swift_getEnumTagSinglePayload(v114, 1, v202) == 1)
  {
    sub_26A0E48F0(v112, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v114 + v113, 1, v115) == 1)
    {
      sub_26A0E48F0(v114, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v116 = v182;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v114 + v113, 1, v115) == 1)
  {
    sub_26A0E48F0(v185, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_47:
    v84 = &qword_28036C7D0;
    v85 = &qword_26A426DE0;
    v86 = v114;
    goto LABEL_38;
  }

  v117 = v198;
  sub_26A1C2528();
  v118 = v114;
  v119 = static _ProtoTextProperty.== infix(_:_:)(v116, v117);
  sub_26A1C25D0();
  sub_26A0E48F0(v185, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
  if ((v119 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_49:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v120 = *(v178 + 48);
  v121 = v106;
  v122 = v180;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v123 = v179;
  if (__swift_getEnumTagSinglePayload(v122, 1, v179) == 1)
  {
    sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
    v124 = __swift_getEnumTagSinglePayload(v122 + v120, 1, v123);
    v125 = v181;
    if (v124 == 1)
    {
      sub_26A0E48F0(v122, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_56;
    }

LABEL_54:
    v71 = &qword_28036F088;
    v72 = &unk_26A42C570;
    v73 = v122;
    goto LABEL_8;
  }

  v126 = v174;
  sub_26A10FD9C();
  v127 = __swift_getEnumTagSinglePayload(v122 + v120, 1, v123);
  v125 = v181;
  if (v127 == 1)
  {
    sub_26A0E48F0(v187, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
    goto LABEL_54;
  }

  v128 = v172;
  sub_26A1C2528();
  v129 = static _ProtoMultilineTextProperty.== infix(_:_:)(v126, v128);
  sub_26A1C25D0();
  sub_26A0E48F0(v187, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v122, &qword_28036CAE0, &unk_26A4273F0);
  if ((v129 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_56:
  swift_beginAccess();
  v130 = v177;
  sub_26A10FD9C();
  swift_beginAccess();
  v131 = *(v175 + 48);
  v132 = v173;
  sub_26A10FD9C();
  v40 = v132;
  sub_26A10FD9C();
  v133 = v176;
  if (__swift_getEnumTagSinglePayload(v132, 1, v176) == 1)
  {
    sub_26A0E48F0(v130, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v132 + v131, 1, v133) == 1)
    {
      sub_26A0E48F0(v132, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v134 = v171;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v132 + v131, 1, v133) == 1)
  {
    sub_26A0E48F0(v177, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_61:
    v71 = &qword_28036D190;
    v72 = &unk_26A427130;
    goto LABEL_7;
  }

  v135 = v169;
  sub_26A1C2528();
  v136 = static _ProtoVisualProperty.== infix(_:_:)(v134, v135);
  sub_26A1C25D0();
  sub_26A0E48F0(v177, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v132, &qword_28036CAE8, &unk_26A426430);
  if ((v136 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_63:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v137 = *(v175 + 48);
  v138 = v170;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v139 = v176;
  if (__swift_getEnumTagSinglePayload(v138, 1, v176) == 1)
  {
    sub_26A0E48F0(v125, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v138 + v137, 1, v139) == 1)
    {
      sub_26A0E48F0(v138, &qword_28036CAE8, &unk_26A426430);
      v138 = v167;
      goto LABEL_70;
    }

LABEL_68:
    v84 = &qword_28036D190;
    v85 = &unk_26A427130;
LABEL_87:
    v86 = v138;
    goto LABEL_38;
  }

  v140 = v166;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v138 + v137, 1, v139) == 1)
  {
    sub_26A0E48F0(v125, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
    goto LABEL_68;
  }

  v141 = v169;
  sub_26A1C2528();
  v142 = static _ProtoVisualProperty.== infix(_:_:)(v140, v141);
  sub_26A1C25D0();
  sub_26A0E48F0(v125, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v138, &qword_28036CAE8, &unk_26A426430);
  v138 = v167;
  if ((v142 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_70:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v143 = *(v164 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v144 = v165;
  if (__swift_getEnumTagSinglePayload(v138, 1, v165) == 1)
  {
    sub_26A0E48F0(v168, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v138 + v143, 1, v144) == 1)
    {
      v145 = v201;
      sub_26A0E48F0(v138, &off_28036C7C0, &off_26A427400);
      goto LABEL_73;
    }

    goto LABEL_86;
  }

  v145 = v201;
  v157 = v163;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v138 + v143, 1, v144) == 1)
  {
    sub_26A0E48F0(v168, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_86:
    v84 = &qword_28036C7C8;
    v85 = &qword_26A425C00;
    goto LABEL_87;
  }

  v158 = v162;
  sub_26A1C2528();
  sub_26A0E36D8(*v157, *v158);
  if ((v159 & 1) == 0 || (v163[1] == v162[1] ? (v160 = v163[2] == v162[2]) : (v160 = 0), !v160 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v168, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    sub_26A0E48F0(v167, &off_28036C7C0, &off_26A427400);
    goto LABEL_39;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v161 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v168, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v167, &off_28036C7C0, &off_26A427400);
  if ((v161 & 1) == 0)
  {
LABEL_39:

    return 0;
  }

LABEL_73:
  v146 = (v145 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v147 = *v146;
  v148 = v146[1];
  v149 = (v68 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v150 = v147 == *v149 && v148 == v149[1];
  if (!v150 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_39;
  }

  v151 = (v145 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  v152 = *v151;
  v153 = v151[1];
  v154 = (v68 + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v152 == *v154 && v153 == v154[1])
  {

    return 1;
  }

  v156 = sub_26A425354();

  result = 0;
  if (v156)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1B2344(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F040, type metadata accessor for _ProtoSummaryItem_PairNumberV2, &protocol conformance descriptor for _ProtoSummaryItem_PairNumberV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1B23C4(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036D320, type metadata accessor for _ProtoSummaryItem_PairNumberV2, &protocol conformance descriptor for _ProtoSummaryItem_PairNumberV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1B2434(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036D320, type metadata accessor for _ProtoSummaryItem_PairNumberV2, &protocol conformance descriptor for _ProtoSummaryItem_PairNumberV2);

  return sub_26A4249B4();
}

uint64_t sub_26A1B24C0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E848);
  __swift_project_value_buffer(v0, qword_28036E848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26A42B070;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "button_1";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "button_2";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "button_3";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_2";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_3";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "thumbnail";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = 0x26A44B000;
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "component_name";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "link_identifier";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A1B2910()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1;
  v4 = type metadata accessor for _ProtoButton(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2;
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v2);
  v7 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail;
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v10 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1B2A8C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_211_0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_73_2(v8, v57);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74_3(v11, v58);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_173_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_218_0(v16);
  v17 = type metadata accessor for _ProtoTextProperty(0);
  v18 = OUTLINED_FUNCTION_85_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = type metadata accessor for _ProtoButton(0);
  v22 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button3);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v21);
  v31 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v35 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  v38 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v17);
  type metadata accessor for _ProtoVisualProperty(0);
  v41 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  type metadata accessor for _ProtoActionProperty(0);
  v45 = OUTLINED_FUNCTION_65_3();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v59 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_275();
  v49 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v49 = 0;
  v49[1] = v50;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_214_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button2);
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button3);
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_197_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  OUTLINED_FUNCTION_215_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_215_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &v66);
  OUTLINED_FUNCTION_214_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_214_0();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v65);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v64);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_2();
  v51 = swift_endAccess();
  v52 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1(v51, &v63);
  v54 = *v52;
  v53 = v52[1];
  OUTLINED_FUNCTION_26_10(v59, &v62);
  *v59 = v54;
  v59[1] = v53;

  OUTLINED_FUNCTION_122_1(v55, &v61);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v56, &v60);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1B30A0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button1, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button2, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__button3, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1B3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1B343C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1B3518(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1B35F4(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1B36D0(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1B37AC(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1B3888(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A1B3964(a2, a1, a3, a4);
        break;
      case 8:
        sub_26A1B3A40(a2, a1, a3, a4);
        break;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_15;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_15:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      case 11:
        sub_26A1B3B1C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1B343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A1C2664(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A1C2664(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B36D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A1C2664(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B37AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B3888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B3964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B3A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B3B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B3C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1B3E54(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1B4048(a1, a2, a3, a4);
    sub_26A1B423C(a1, a2, a3, a4);
    sub_26A1B4430(a1, a2, a3, a4);
    sub_26A1B4624(a1, a2, a3, a4);
    sub_26A1B4818(a1, a2, a3, a4);
    sub_26A1B4A0C(a1, a2, a3, a4);
    sub_26A1B4C00(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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

    return sub_26A1B4DF4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A1B3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B4048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1B423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1B4430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A1C2528();
  sub_26A1C2664(&qword_28036F0A0, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
  sub_26A424A84();
  return sub_26A1C25D0();
}

uint64_t sub_26A1B4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B4818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B4A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B4C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B5014(char *a1, uint64_t a2)
{
  v200 = a2;
  v162 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v162);
  v158 = (&v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v161);
  v163 = &v158 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v159 = (&v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v168 = &v158 - v8;
  v166 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v166);
  v160 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v165);
  v167 = &v158 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v11 - 8);
  v164 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v179 = &v158 - v14;
  v182 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v182);
  v174 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  MEMORY[0x28223BE20](v181);
  v175 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v180 = &v158 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v19 - 8);
  v172 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v177 = &v158 - v22;
  MEMORY[0x28223BE20](v23);
  v176 = &v158 - v24;
  MEMORY[0x28223BE20](v25);
  v185 = &v158 - v26;
  v195 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v195);
  v178 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v183 = &v158 - v29;
  MEMORY[0x28223BE20](v30);
  v190 = &v158 - v31;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F098, &qword_26A42C588);
  MEMORY[0x28223BE20](v198);
  v186 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v189 = &v158 - v34;
  MEMORY[0x28223BE20](v35);
  v194 = &v158 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v37 - 8);
  v184 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v187 = &v158 - v40;
  MEMORY[0x28223BE20](v41);
  v188 = &v158 - v42;
  MEMORY[0x28223BE20](v43);
  v191 = &v158 - v44;
  MEMORY[0x28223BE20](v45);
  v193 = &v158 - v46;
  MEMORY[0x28223BE20](v47);
  v196 = &v158 - v48;
  v199 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v199);
  v192 = &v158 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v50);
  v171 = &v158 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v158 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v55 - 8);
  v169 = &v158 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v173 = &v158 - v58;
  MEMORY[0x28223BE20](v59);
  v197 = &v158 - v60;
  MEMORY[0x28223BE20](v61);
  v63 = &v158 - v62;
  swift_beginAccess();
  v64 = a1;
  sub_26A10FD9C();
  swift_beginAccess();
  v170 = v50;
  v65 = *(v50 + 48);
  sub_26A10FD9C();
  v66 = v199;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v54, 1, v66) == 1)
  {

    sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v54[v65], 1, v66) == 1)
    {
      sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_9;
    }

LABEL_6:
    v68 = &qword_28036C7D0;
    v69 = &qword_26A426DE0;
LABEL_7:
    v70 = v54;
LABEL_16:
    sub_26A0E48F0(v70, v68, v69);
    goto LABEL_17;
  }

  v67 = v197;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v54[v65], 1, v66) == 1)
  {

    sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_6;
  }

  v71 = v192;
  sub_26A1C2528();

  v72 = static _ProtoTextProperty.== infix(_:_:)(v67, v71);
  sub_26A1C25D0();
  sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
  v64 = a1;
  sub_26A1C25D0();
  sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  swift_beginAccess();
  v73 = v196;
  sub_26A10FD9C();
  swift_beginAccess();
  v74 = *(v198 + 48);
  v75 = v194;
  sub_26A10FD9C();
  v76 = v75;
  sub_26A10FD9C();
  v77 = v75;
  v78 = v195;
  if (__swift_getEnumTagSinglePayload(v77, 1, v195) == 1)
  {
    sub_26A0E48F0(v73, &qword_28036EC48, &unk_26A4385C0);
    if (__swift_getEnumTagSinglePayload(v76 + v74, 1, v78) != 1)
    {
      goto LABEL_15;
    }

    sub_26A0E48F0(v76, &qword_28036EC48, &unk_26A4385C0);
  }

  else
  {
    v79 = v193;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v76 + v74, 1, v78) == 1)
    {
      v80 = v73;
LABEL_14:
      sub_26A0E48F0(v80, &qword_28036EC48, &unk_26A4385C0);
      sub_26A1C25D0();
      goto LABEL_15;
    }

    v82 = v190;
    sub_26A1C2528();
    if (*&v79[*(v78 + 20)] != *&v82[*(v78 + 20)])
    {

      sub_26A2A2580();
      v84 = v83;

      if ((v84 & 1) == 0)
      {
        sub_26A1C25D0();
        v103 = &qword_28036EC48;
        v104 = &unk_26A4385C0;
        sub_26A0E48F0(v73, &qword_28036EC48, &unk_26A4385C0);
LABEL_36:
        sub_26A1C25D0();
        v70 = v76;
LABEL_37:
        v68 = v103;
        v69 = v104;
        goto LABEL_16;
      }
    }

    sub_26A424794();
    sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    LODWORD(v197) = sub_26A424B64();
    sub_26A1C25D0();
    sub_26A0E48F0(v196, &qword_28036EC48, &unk_26A4385C0);
    sub_26A1C25D0();
    sub_26A0E48F0(v76, &qword_28036EC48, &unk_26A4385C0);
    if ((v197 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v197 = v64;
  v85 = v191;
  sub_26A10FD9C();
  swift_beginAccess();
  v86 = v198;
  v87 = *(v198 + 48);
  v88 = v189;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v88, 1, v78) == 1)
  {
    sub_26A0E48F0(v85, &qword_28036EC48, &unk_26A4385C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88 + v87, 1, v78);
    v90 = v197;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v88, &qword_28036EC48, &unk_26A4385C0);
      v91 = v200;
      goto LABEL_32;
    }

LABEL_28:
    sub_26A0E48F0(v88, &qword_28036F098, &qword_26A42C588);

    goto LABEL_18;
  }

  v92 = v188;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v88 + v87, 1, v78) == 1)
  {
    sub_26A0E48F0(v191, &qword_28036EC48, &unk_26A4385C0);
    sub_26A1C25D0();
    goto LABEL_28;
  }

  v93 = v183;
  sub_26A1C2528();
  v90 = v197;
  if (*&v92[*(v78 + 20)] != *&v93[*(v78 + 20)])
  {

    sub_26A2A2580();
    v95 = v94;

    if ((v95 & 1) == 0)
    {
      sub_26A1C25D0();
      sub_26A0E48F0(v191, &qword_28036EC48, &unk_26A4385C0);
      sub_26A1C25D0();
      sub_26A0E48F0(v88, &qword_28036EC48, &unk_26A4385C0);
      goto LABEL_17;
    }
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v96 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v191, &qword_28036EC48, &unk_26A4385C0);
  sub_26A1C25D0();
  sub_26A0E48F0(v88, &qword_28036EC48, &unk_26A4385C0);
  v91 = v200;
  if ((v96 & 1) == 0)
  {
LABEL_17:

LABEL_18:

    return 0;
  }

LABEL_32:
  swift_beginAccess();
  v97 = v86;
  v98 = v187;
  sub_26A10FD9C();
  swift_beginAccess();
  v99 = *(v97 + 48);
  v76 = v186;
  sub_26A10FD9C();
  v100 = v195;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v76, 1, v100) == 1)
  {
    sub_26A0E48F0(v98, &qword_28036EC48, &unk_26A4385C0);
    v101 = __swift_getEnumTagSinglePayload(v76 + v99, 1, v100);
    v102 = v185;
    if (v101 == 1)
    {
      sub_26A0E48F0(v76, &qword_28036EC48, &unk_26A4385C0);
      goto LABEL_43;
    }

LABEL_15:
    v68 = &qword_28036F098;
    v69 = &qword_26A42C588;
    v70 = v76;
    goto LABEL_16;
  }

  v105 = v184;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v76 + v99, 1, v100) == 1)
  {
    v80 = v187;
    goto LABEL_14;
  }

  v106 = v100;
  v107 = v178;
  sub_26A1C2528();
  if (*&v105[*(v106 + 20)] != *&v107[*(v106 + 20)])
  {

    sub_26A2A2580();
    v109 = v108;

    if ((v109 & 1) == 0)
    {
      sub_26A1C25D0();
      v103 = &qword_28036EC48;
      v104 = &unk_26A4385C0;
      sub_26A0E48F0(v187, &qword_28036EC48, &unk_26A4385C0);
      goto LABEL_36;
    }
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v110 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v187, &qword_28036EC48, &unk_26A4385C0);
  sub_26A1C25D0();
  sub_26A0E48F0(v76, &qword_28036EC48, &unk_26A4385C0);
  v102 = v185;
  if ((v110 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_43:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v111 = v180;
  v112 = *(v181 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v113 = v182;
  if (__swift_getEnumTagSinglePayload(v111, 1, v182) == 1)
  {
    sub_26A0E48F0(v102, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(v111 + v112, 1, v113) == 1)
    {
      sub_26A0E48F0(v111, &qword_28036CAE0, &unk_26A4273F0);
      v114 = v179;
      goto LABEL_51;
    }

LABEL_49:
    v68 = &qword_28036F088;
    v69 = &unk_26A42C570;
    v70 = v111;
    goto LABEL_16;
  }

  v115 = v176;
  sub_26A10FD9C();
  v116 = __swift_getEnumTagSinglePayload(v111 + v112, 1, v113);
  v114 = v179;
  if (v116 == 1)
  {
    sub_26A0E48F0(v185, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
    goto LABEL_49;
  }

  v117 = v174;
  sub_26A1C2528();
  v118 = static _ProtoMultilineTextProperty.== infix(_:_:)(v115, v117);
  sub_26A1C25D0();
  sub_26A0E48F0(v185, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v111, &qword_28036CAE0, &unk_26A4273F0);
  if ((v118 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_51:
  swift_beginAccess();
  v119 = v177;
  sub_26A10FD9C();
  swift_beginAccess();
  v120 = *(v181 + 48);
  v121 = v175;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v122 = v182;
  if (__swift_getEnumTagSinglePayload(v121, 1, v182) == 1)
  {
    sub_26A0E48F0(v119, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(v121 + v120, 1, v122) == 1)
    {
      sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_59;
    }

LABEL_57:
    v68 = &qword_28036F088;
    v69 = &unk_26A42C570;
LABEL_72:
    v70 = v121;
    goto LABEL_16;
  }

  v123 = v172;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v121 + v120, 1, v122) == 1)
  {
    sub_26A0E48F0(v177, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
    goto LABEL_57;
  }

  v124 = v174;
  sub_26A1C2528();
  LODWORD(v198) = static _ProtoMultilineTextProperty.== infix(_:_:)(v123, v124);
  sub_26A1C25D0();
  sub_26A0E48F0(v177, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
  if ((v198 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_59:
  swift_beginAccess();
  v125 = v173;
  sub_26A10FD9C();
  swift_beginAccess();
  v121 = v171;
  v126 = *(v170 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v127 = v199;
  if (__swift_getEnumTagSinglePayload(v121, 1, v199) == 1)
  {
    sub_26A0E48F0(v125, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v121 + v126, 1, v127) == 1)
    {
      sub_26A0E48F0(v121, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v128 = v169;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v121 + v126, 1, v127) == 1)
  {
    sub_26A0E48F0(v173, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
LABEL_64:
    v68 = &qword_28036C7D0;
    v69 = &qword_26A426DE0;
    goto LABEL_72;
  }

  v129 = v192;
  sub_26A1C2528();
  v130 = static _ProtoTextProperty.== infix(_:_:)(v128, v129);
  sub_26A1C25D0();
  sub_26A0E48F0(v173, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v121, &qword_28036C7B8, &unk_26A425BF0);
  if ((v130 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_66:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v131 = *(v165 + 48);
  v121 = v167;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v132 = v166;
  if (__swift_getEnumTagSinglePayload(v121, 1, v166) == 1)
  {
    sub_26A0E48F0(v114, &qword_28036CAE8, &unk_26A426430);
    v133 = __swift_getEnumTagSinglePayload(v121 + v131, 1, v132);
    v134 = v168;
    if (v133 == 1)
    {
      sub_26A0E48F0(v121, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  v135 = v164;
  sub_26A10FD9C();
  v136 = __swift_getEnumTagSinglePayload(v121 + v131, 1, v132);
  v134 = v168;
  if (v136 == 1)
  {
    sub_26A0E48F0(v114, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_71:
    v68 = &qword_28036D190;
    v69 = &unk_26A427130;
    goto LABEL_72;
  }

  v137 = v160;
  sub_26A1C2528();
  v138 = static _ProtoVisualProperty.== infix(_:_:)(v135, v137);
  sub_26A1C25D0();
  sub_26A0E48F0(v114, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v121, &qword_28036CAE8, &unk_26A426430);
  if ((v138 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_74:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v139 = *(v161 + 48);
  v140 = v163;
  sub_26A10FD9C();
  v54 = v140;
  sub_26A10FD9C();
  v141 = v162;
  if (__swift_getEnumTagSinglePayload(v140, 1, v162) == 1)
  {
    sub_26A0E48F0(v134, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v140 + v139, 1, v141) == 1)
    {
      sub_26A0E48F0(v140, &off_28036C7C0, &off_26A427400);
      goto LABEL_77;
    }

    goto LABEL_90;
  }

  v153 = v159;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v54[v139], 1, v141) == 1)
  {
    sub_26A0E48F0(v134, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_90:
    v68 = &qword_28036C7C8;
    v69 = &qword_26A425C00;
    goto LABEL_7;
  }

  v154 = v158;
  sub_26A1C2528();
  sub_26A0E36D8(*v153, *v154);
  if ((v155 & 1) == 0 || (v153[1] == v154[1] ? (v156 = v153[2] == v154[2]) : (v156 = 0), !v156 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    v103 = &off_28036C7C0;
    v104 = &off_26A427400;
    sub_26A0E48F0(v134, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v70 = v163;
    goto LABEL_37;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v157 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v134, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v163, &off_28036C7C0, &off_26A427400);
  if ((v157 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_77:
  v142 = &v90[OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName];
  swift_beginAccess();
  v143 = *v142;
  v144 = *(v142 + 1);
  v145 = (v91 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v146 = v143 == *v145 && v144 == v145[1];
  if (!v146 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_17;
  }

  v147 = &v90[OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier];
  swift_beginAccess();
  v148 = *v147;
  v149 = *(v147 + 1);
  v150 = (v91 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v148 == *v150 && v149 == v150[1])
  {

    return 1;
  }

  v152 = sub_26A425354();

  result = 0;
  if (v152)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A1B7024(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1C2664(&qword_28036F038, type metadata accessor for _ProtoSummaryItem_Button, &protocol conformance descriptor for _ProtoSummaryItem_Button);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1B70A4(uint64_t a1)
{
  v2 = sub_26A1C2664(&qword_28036EE20, type metadata accessor for _ProtoSummaryItem_Button, &protocol conformance descriptor for _ProtoSummaryItem_Button);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1B7114(uint64_t a1, uint64_t a2)
{
  sub_26A1C2664(&qword_28036EE20, type metadata accessor for _ProtoSummaryItem_Button, &protocol conformance descriptor for _ProtoSummaryItem_Button);

  return sub_26A4249B4();
}

uint64_t sub_26A1B71A0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E868);
  __swift_project_value_buffer(v0, qword_28036E868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "player";
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
  *v14 = "text_4";
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

uint64_t sub_26A1B7568()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1B7690()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88_3(v5, v42);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_56();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_173_0();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v12 = type metadata accessor for _ProtoTextProperty(0);
  v13 = OUTLINED_FUNCTION_85_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  v23 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v12);
  type metadata accessor for _ProtoVisualProperty(0);
  v26 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  type metadata accessor for _ProtoActionProperty(0);
  v30 = OUTLINED_FUNCTION_62_4();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + 16);
  v36 = *(v2 + 16);
  OUTLINED_FUNCTION_26_10(v0 + 16, &v50);
  *(v0 + 16) = v36;
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();

  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_151_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_272();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &v49);
  OUTLINED_FUNCTION_269();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &v48);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v47);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  v37 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName, &v46);
  v39 = *v37;
  v38 = v37[1];
  OUTLINED_FUNCTION_26_10(v34, &v45);
  *v34 = v39;
  v34[1] = v38;

  OUTLINED_FUNCTION_122_1(v40, &v44);
  OUTLINED_FUNCTION_208_0();

  OUTLINED_FUNCTION_140_1(v41, &v43);
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1B7BC4()
{

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A1B7D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1B7ED8(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1B7FA4(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1B8080(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1B815C(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1B8238(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1B8314(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A1B83F0(a2, a1, a3, a4);
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName;
        goto LABEL_13;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier;
LABEL_13:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1B7ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A1C2664(&qword_28036D1F0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A424934();
  return swift_endAccess();
}

uint64_t sub_26A1B7FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A1C2664(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B8238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1C2664(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B8314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1C2664(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B83F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A1C2664(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1B84FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (type metadata accessor for _ProtoPlayer(0), sub_26A1C2664(&qword_28036D1F0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer), , sub_26A424A74(), result = , !v4))
  {
    result = sub_26A1B8780(a1, a2, a3, a4);
    if (!v4)
    {
      sub_26A1B8974(a1, a2, a3, a4);
      sub_26A1B8B68(a1, a2, a3, a4);
      sub_26A1B8D5C(a1, a2, a3, a4);
      sub_26A1B8F50(a1, a2, a3, a4);
      sub_26A1B9144(a1, a2, a3, a4);
      v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
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

      v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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
  }

  return result;
}

uint64_t sub_26A1B8780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B8F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B9144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26A1B9364(uint64_t a1, uint64_t a2)
{
  v123 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v123);
  v119 = (&v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  MEMORY[0x28223BE20](v122);
  v124 = &v118 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = (&v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v126 = &v118 - v9;
  v128 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v128);
  v121 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  MEMORY[0x28223BE20](v127);
  v129 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v12 - 8);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v118 - v15;
  v141 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v141);
  v135 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  MEMORY[0x28223BE20](v144);
  v136 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v140 = &v118 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v20 - 8);
  v133 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v142 = &v118 - v23;
  MEMORY[0x28223BE20](v24);
  v137 = &v118 - v25;
  MEMORY[0x28223BE20](v26);
  v139 = &v118 - v27;
  v28 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v28);
  v138 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v30);
  v132 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v118 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v35 - 8);
  v130 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v134 = &v118 - v38;
  MEMORY[0x28223BE20](v39);
  v143 = &v118 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v118 - v42;
  swift_beginAccess();
  v44 = *(a1 + 16);
  swift_beginAccess();
  v45 = *(a2 + 16);

  sub_26A0E3F04(v44, v45, v46, v47, v48, v49, v50, v51, v118, v119, v120, v121);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_40;
  }

  v146 = a2;
  swift_beginAccess();
  v145 = a1;
  sub_26A10FD9C();
  swift_beginAccess();
  v118 = v30;
  v54 = *(v30 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v55 = v28;
  if (__swift_getEnumTagSinglePayload(v34, 1, v28) == 1)
  {
    sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v34[v54], 1, v28) == 1)
    {
      sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_8:
    sub_26A0E48F0(v34, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_40;
  }

  v56 = v143;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v34[v54], 1, v55) == 1)
  {
    sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_8;
  }

  v57 = v138;
  sub_26A1C2528();
  v58 = static _ProtoTextProperty.== infix(_:_:)(v56, v57);
  sub_26A1C25D0();
  sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_11:
  swift_beginAccess();
  v59 = v139;
  sub_26A10FD9C();
  swift_beginAccess();
  v60 = *(v144 + 48);
  v61 = v140;
  sub_26A10FD9C();
  v62 = v61;
  sub_26A10FD9C();
  v63 = v141;
  if (__swift_getEnumTagSinglePayload(v61, 1, v141) == 1)
  {
    sub_26A0E48F0(v59, &qword_28036CAE0, &unk_26A4273F0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61 + v60, 1, v63);
    v65 = v142;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v61, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_18;
    }

LABEL_16:
    v68 = &qword_28036F088;
    v69 = &unk_26A42C570;
    v70 = v61;
LABEL_39:
    sub_26A0E48F0(v70, v68, v69);
    goto LABEL_40;
  }

  v66 = v137;
  sub_26A10FD9C();
  v67 = __swift_getEnumTagSinglePayload(v61 + v60, 1, v63);
  v65 = v142;
  if (v67 == 1)
  {
    sub_26A0E48F0(v59, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
    goto LABEL_16;
  }

  v71 = v135;
  sub_26A1C2528();
  LODWORD(v143) = static _ProtoMultilineTextProperty.== infix(_:_:)(v66, v71);
  sub_26A1C25D0();
  sub_26A0E48F0(v59, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v62, &qword_28036CAE0, &unk_26A4273F0);
  if ((v143 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v72 = *(v144 + 48);
  v73 = v65;
  v74 = v136;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v74, 1, v63) == 1)
  {
    sub_26A0E48F0(v73, &qword_28036CAE0, &unk_26A4273F0);
    v75 = __swift_getEnumTagSinglePayload(v74 + v72, 1, v63);
    v77 = v145;
    v76 = v146;
    if (v75 == 1)
    {
      sub_26A0E48F0(v74, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v78 = v133;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v74 + v72, 1, v63) == 1)
  {
    sub_26A0E48F0(v142, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A1C25D0();
LABEL_23:
    v68 = &qword_28036F088;
    v69 = &unk_26A42C570;
    v70 = v74;
    goto LABEL_39;
  }

  v79 = v135;
  sub_26A1C2528();
  v80 = static _ProtoMultilineTextProperty.== infix(_:_:)(v78, v79);
  sub_26A1C25D0();
  sub_26A0E48F0(v142, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A1C25D0();
  sub_26A0E48F0(v74, &qword_28036CAE0, &unk_26A4273F0);
  v77 = v145;
  v76 = v146;
  if ((v80 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  swift_beginAccess();
  v81 = v134;
  sub_26A10FD9C();
  swift_beginAccess();
  v82 = *(v118 + 48);
  v83 = v55;
  v84 = v132;
  sub_26A10FD9C();
  v85 = v83;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v84, 1, v83) == 1)
  {
    sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v84 + v82, 1, v83) == 1)
    {
      sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_32;
    }

LABEL_30:
    v68 = &qword_28036C7D0;
    v69 = &qword_26A426DE0;
LABEL_38:
    v70 = v84;
    goto LABEL_39;
  }

  v86 = v130;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v84 + v82, 1, v85) == 1)
  {
    sub_26A0E48F0(v134, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1C25D0();
    goto LABEL_30;
  }

  v87 = v138;
  sub_26A1C2528();
  v88 = static _ProtoTextProperty.== infix(_:_:)(v86, v87);
  sub_26A1C25D0();
  sub_26A0E48F0(v134, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1C25D0();
  sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
  if ((v88 & 1) == 0)
  {
LABEL_40:

    return 0;
  }

LABEL_32:
  swift_beginAccess();
  v89 = v131;
  sub_26A10FD9C();
  swift_beginAccess();
  v90 = *(v127 + 48);
  v84 = v129;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v91 = v128;
  if (__swift_getEnumTagSinglePayload(v84, 1, v128) == 1)
  {
    sub_26A0E48F0(v89, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v84 + v90, 1, v91) == 1)
    {
      sub_26A0E48F0(v84, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v92 = v125;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v84 + v90, 1, v91) == 1)
  {
    sub_26A0E48F0(v131, &qword_28036CAE8, &unk_26A426430);
    sub_26A1C25D0();
LABEL_37:
    v68 = &qword_28036D190;
    v69 = &unk_26A427130;
    goto LABEL_38;
  }

  v94 = v121;
  sub_26A1C2528();
  v95 = static _ProtoVisualProperty.== infix(_:_:)(v92, v94);
  sub_26A1C25D0();
  sub_26A0E48F0(v131, &qword_28036CAE8, &unk_26A426430);
  sub_26A1C25D0();
  sub_26A0E48F0(v84, &qword_28036CAE8, &unk_26A426430);
  if ((v95 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_43:
  swift_beginAccess();
  v96 = v126;
  sub_26A10FD9C();
  swift_beginAccess();
  v97 = *(v122 + 48);
  v98 = v124;
  sub_26A10FD9C();
  v99 = v98;
  sub_26A10FD9C();
  v100 = v123;
  if (__swift_getEnumTagSinglePayload(v98, 1, v123) == 1)
  {
    sub_26A0E48F0(v96, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v98 + v97, 1, v100) == 1)
    {
      sub_26A0E48F0(v98, &off_28036C7C0, &off_26A427400);
      goto LABEL_46;
    }

    goto LABEL_59;
  }

  v112 = v120;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v99 + v97, 1, v100) == 1)
  {
    sub_26A0E48F0(v126, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
LABEL_59:
    v68 = &qword_28036C7C8;
    v69 = &qword_26A425C00;
    v70 = v99;
    goto LABEL_39;
  }

  v113 = v119;
  sub_26A1C2528();
  sub_26A0E36D8(*v112, *v113);
  v114 = v126;
  if ((v115 & 1) == 0 || (v112[1] == v113[1] ? (v116 = v112[2] == v113[2]) : (v116 = 0), !v116 && (sub_26A425354() & 1) == 0))
  {
    sub_26A1C25D0();
    sub_26A0E48F0(v114, &off_28036C7C0, &off_26A427400);
    sub_26A1C25D0();
    v70 = v124;
    v68 = &off_28036C7C0;
    v69 = &off_26A427400;
    goto LABEL_39;
  }

  sub_26A424794();
  sub_26A1C2664(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v117 = sub_26A424B64();
  sub_26A1C25D0();
  sub_26A0E48F0(v114, &off_28036C7C0, &off_26A427400);
  sub_26A1C25D0();
  sub_26A0E48F0(v124, &off_28036C7C0, &off_26A427400);
  if ((v117 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_46:
  v101 = (v77 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = (v76 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  swift_beginAccess();
  v105 = v102 == *v104 && v103 == v104[1];
  if (!v105 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_40;
  }

  v106 = (v77 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  v109 = (v76 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
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