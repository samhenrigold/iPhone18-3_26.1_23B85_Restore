uint64_t _ProtoHorizontalList_Standard.Item.Style.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x6D49656E696C6E69;
    if (v1 != 1)
    {
      v2 = 0x6D49657261757173;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x496465646E756F72;
    }
  }

  else
  {
    sub_26A424EF4();

    strcpy(v5, "Unrecognized(");
    v4 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v4);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    return v5[0];
  }
}

uint64_t HorizontalListStandard.Item.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v1, v2, &protocol conformance descriptor for _ProtoHorizontalList_Standard.Item);

  return sub_26A424B44();
}

uint64_t HorizontalListStandard.Item.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v0, v1, &protocol conformance descriptor for _ProtoHorizontalList_Standard.Item);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A297198(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  sub_26A297598(&qword_28036FA18, type metadata accessor for _ProtoHorizontalList_Standard.Item, &protocol conformance descriptor for _ProtoHorizontalList_Standard.Item);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t HorizontalListStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoHorizontalList_Standard(0);
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
  OUTLINED_FUNCTION_13_17();
  sub_26A2941BC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_12_18();
  sub_26A297494();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t HorizontalListStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for HorizontalListStandard(0);
  *(inited + 64) = &protocol witness table for HorizontalListStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A2941BC();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A297598(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A297494()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A297528(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A297598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A297770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_13()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_30_10()
{

  sub_26A1F9840();
}

uint64_t Visibility.idioms.getter()
{
  v1 = *v0;
  j__swift_bridgeObjectRetain();
  return v1;
}

uint64_t Visibility.description.getter()
{
  v1 = *(*v0 + 16);
  if (*(v0 + 8))
  {
    if (v1)
    {
      v2 = 2003789939;
LABEL_6:
      v5 = v2 | 0x3A6E6F2800000000;
      v3 = sub_26A12CBBC(*v0);
      MEMORY[0x26D65BA70](v3);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);
      return v5;
    }
  }

  else if (v1)
  {
    v2 = 1701079400;
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_26A2979F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A297A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SimpleItemRichSearchResult.text1.getter()
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
  v10 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v24);
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
    sub_26A29BCE0();
  }

  return sub_26A29BCE0();
}

void SimpleItemRichSearchResult.text3.getter()
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
  OUTLINED_FUNCTION_21_18();
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
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void sub_26A297DFC()
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
  OUTLINED_FUNCTION_21_18();
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
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v3 = 0;
  }

  v14 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v14);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRichSearchResult.text5.getter()
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
  OUTLINED_FUNCTION_21_18();
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
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRichSearchResult.thumbnail.getter()
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
  OUTLINED_FUNCTION_21_18();
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
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v2 = 0;
  }

  v13 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRichSearchResult.action.getter()
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
  OUTLINED_FUNCTION_21_18();
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
      OUTLINED_FUNCTION_57_10();
    }

    sub_26A29BCE0();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemRichSearchResult.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SimpleItemRichSearchResult.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSimpleItem_RichSearchResult.redactedProto.getter()
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
  OUTLINED_FUNCTION_9_25();
  sub_26A29C124();
  v98 = *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20);
  v327 = v1;
  v331 = v98;
  v99 = *(v1 + v98);
  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v342);
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
      sub_26A29BCE0();
      v107 = v327;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v68, v108);
    v109 = v331;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v107 + v109);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v111 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v111);
      OUTLINED_FUNCTION_22_15();
      v99 = v112;
      *(v107 + v109) = v112;
    }

    sub_26A29BCE0();
    OUTLINED_FUNCTION_126_0();
    v43 = v328;
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v328);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v341);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v341);
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
      sub_26A29BCE0();
      v128 = v331;
      LODWORD(v116) = v288;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v127, v129);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v128);
    if ((v130 & 1) == 0)
    {
      v131 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v131);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v132);
    }

    sub_26A29BCE0();
    v133 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v43);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v340);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v340);
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
      sub_26A29BCE0();
      v139 = v328;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_22();
    sub_26A29BD34(v148, v149);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v141);
    if ((v150 & 1) == 0)
    {
      v151 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v151);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v152);
    }

    sub_26A29BCE0();
    v153 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v137);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v339);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v339);
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
      sub_26A29BCE0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v168, v169);
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v160);
    if ((v170 & 1) == 0)
    {
      v171 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v171);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v172);
    }

    EnumTagSinglePayload = v330;
    sub_26A29BCE0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v161);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v338);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, v338);
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
      sub_26A29BCE0();
      v178 = v328;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_22();
    sub_26A29BD34(v188, v189);
    v190 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v180);
    if ((v190 & 1) == 0)
    {
      v191 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v191);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v192);
    }

    sub_26A29BCE0();
    v193 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v137);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, v337);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, v337);
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
      sub_26A29BCE0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v208, v209);
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v200);
    if ((v210 & 1) == 0)
    {
      v211 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v211);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v212);
    }

    sub_26A29BCE0();
    v213 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v197);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, v336);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, v336);
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
      sub_26A29BCE0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v228, v229);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v220);
    if ((v230 & 1) == 0)
    {
      v231 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v231);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v232);
    }

    v218 = v329;
    sub_26A29BCE0();
    v233 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v233, v234, v235, v197);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, v335);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, v335);
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
      sub_26A29BCE0();
      v238 = v218;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v247, v248);
    v249 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v240);
    if ((v249 & 1) == 0)
    {
      v250 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v250);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v251);
    }

    LODWORD(v237) = v330;
    sub_26A29BCE0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v252, v253, v254, v197);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, v334);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, v334);
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
      sub_26A29BCE0();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A29BD34(v265, type metadata accessor for _ProtoVisualProperty);
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v119 + v237);
    if ((v266 & 1) == 0)
    {
      v267 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v267);
      OUTLINED_FUNCTION_22_15();
      v99 = v268;
      *(v119 + v237) = v268;
    }

    sub_26A29BCE0();
    v269 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v256);
    OUTLINED_FUNCTION_211(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, v333);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v99 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, v333);
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
      sub_26A29BCE0();
      v277 = v313;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v277);
    sub_26A29BD34(v276, type metadata accessor for _ProtoActionProperty);
    v278 = swift_isUniquelyReferenced_nonNull_native();
    v279 = *(v119 + v275);
    if ((v278 & 1) == 0)
    {
      v280 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v280);
      OUTLINED_FUNCTION_22_15();
      v279 = v281;
      *(v119 + v275) = v281;
    }

    sub_26A29BCE0();
    v282 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v282, v283, v284, v238);
    OUTLINED_FUNCTION_211(v279 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &v332);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemRichSearchResult.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  OUTLINED_FUNCTION_27_17();
  sub_26A29C000(v16, v17, &protocol conformance descriptor for _ProtoSimpleItem_RichSearchResult);
  sub_26A4249C4();

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

uint64_t sub_26A299E7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
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
  sub_26A29BCE0();
  v147 = v66;
  _ProtoSimpleItem_RichSearchResult.text1.setter();
  sub_26A10FD9C();
  v70 = v145;
  if (v145)
  {
    v71 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    (*(v71 + 8))(v70, v71);
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v52, 1, v53) != 1)
    {
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text2.setter();
      sub_26A29BD34(v63, type metadata accessor for _ProtoTextProperty);
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
    sub_26A29BCE0();
    v74 = v131;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v131);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v36, 1, v74) != 1)
    {
      v75 = v113;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text3.setter();
      sub_26A29BD34(v75, type metadata accessor for _ProtoMultilineTextProperty);
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
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v78, 1, v53) != 1)
    {
      v79 = v114;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text4.setter();
      sub_26A29BD34(v79, type metadata accessor for _ProtoTextProperty);
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
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v74);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v82, 1, v74) != 1)
    {
      v83 = v115;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text5.setter();
      sub_26A29BD34(v83, type metadata accessor for _ProtoMultilineTextProperty);
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
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v86, 1, v53) != 1)
    {
      v87 = v116;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text6.setter();
      sub_26A29BD34(v87, type metadata accessor for _ProtoTextProperty);
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
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v90, 1, v53) != 1)
    {
      v91 = v117;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text7.setter();
      sub_26A29BD34(v91, type metadata accessor for _ProtoTextProperty);
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
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v94, 1, v53) != 1)
    {
      v95 = v118;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text8.setter();
      sub_26A29BD34(v95, type metadata accessor for _ProtoTextProperty);
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
    sub_26A29BCE0();
    v99 = v140;
    __swift_storeEnumTagSinglePayload(v98, 0, 1, v140);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v98, 1, v99) != 1)
    {
      v100 = v120;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.thumbnail.setter();
      sub_26A29BD34(v100, type metadata accessor for _ProtoVisualProperty);
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
    sub_26A29BCE0();
    v104 = v142;
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v142);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    if (__swift_getEnumTagSinglePayload(v103, 1, v104) != 1)
    {
      v105 = v122;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.action.setter();
      sub_26A29BD34(v105, type metadata accessor for _ProtoActionProperty);
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

  result = _ProtoSimpleItem_RichSearchResult.componentName.setter(a12, a13, v106, v107, v108);
  if (a15)
  {

    return _ProtoSimpleItem_RichSearchResult.linkIdentifier.setter(a14, a15, v110, v111, v112);
  }

  return result;
}

void SimpleItemRichSearchResult.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_76();
  v35 = v24;
  v26 = v25;
  v36 = v28;
  v37 = v27;
  v38 = v30;
  v39 = v29;
  v40 = v32;
  v41 = v31;
  sub_26A0E5D68(v31, v51);
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  OUTLINED_FUNCTION_27_17();
  sub_26A29C000(v33, v34, &protocol conformance descriptor for _ProtoSimpleItem_RichSearchResult);
  sub_26A4249C4();

  sub_26A0E48F0(a22, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a21, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v35);
  OUTLINED_FUNCTION_164_0(v26);
  OUTLINED_FUNCTION_164_0(v36);
  sub_26A0E48F0(v37, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v38);
  sub_26A0E48F0(v39, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_26A0E48F0(v42, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v43, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v44);
  OUTLINED_FUNCTION_164_0(v45);
  OUTLINED_FUNCTION_164_0(v46);
  sub_26A0E48F0(v47, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v48);
  sub_26A0E48F0(&v49, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SimpleItemRichSearchResult.description(redacted:)(Swift::Bool redacted)
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
  v26 = type metadata accessor for SimpleItemRichSearchResult(0);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE8, &unk_26A426A70);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  v34 = &v89 - v33;
  OUTLINED_FUNCTION_26_19();
  sub_26A29C124();
  if (v4)
  {
    _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
  }

  else
  {
    sub_26A29C124();
  }

  sub_26A29BCE0();
  v34[*(v31 + 32)] = v4 & 1;
  sub_26A29BD34(v30, type metadata accessor for SimpleItemRichSearchResult);
  v35 = MEMORY[0x277D84F90];
  *&v34[*(v31 + 28)] = MEMORY[0x277D84F90];
  v36 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  OUTLINED_FUNCTION_142(*&v34[*(v36 + 20)] + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v94);
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
    sub_26A29BCE0();
  }

  sub_26A29BCE0();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  OUTLINED_FUNCTION_222();
  sub_26A106754(v25, v53 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  sub_26A0E48F0(v25, &qword_28036CB30, &qword_26A426480);
  SimpleItemRichSearchResult.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10(v55, v54 & 0xFFFF0000FFFFFFFFLL | 0x3200000000);
  OUTLINED_FUNCTION_33_7();
  v56 = v91;
  SimpleItemRichSearchResult.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10672C(v56, v57 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v56, &qword_28036CB28, &qword_26A427980);
  SimpleItemRichSearchResult.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10(v59, v58 & 0xFFFF0000FFFFFFFFLL | 0x3400000000);
  OUTLINED_FUNCTION_33_7();
  SimpleItemRichSearchResult.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10672C(v56, v60 & 0xFFFF0000FFFFFFFFLL | 0x3500000000, 0xE500000000000000);
  sub_26A0E48F0(v56, &qword_28036CB28, &qword_26A427980);
  SimpleItemRichSearchResult.text6.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10(v62, v61 & 0xFFFF0000FFFFFFFFLL | 0x3600000000);
  OUTLINED_FUNCTION_33_7();
  SimpleItemRichSearchResult.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10(v64, v63 & 0xFFFF0000FFFFFFFFLL | 0x3700000000);
  OUTLINED_FUNCTION_33_7();
  SimpleItemRichSearchResult.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10(v66, v65 & 0xFFFF0000FFFFFFFFLL | 0x3800000000);
  OUTLINED_FUNCTION_33_7();
  v67 = v92;
  SimpleItemRichSearchResult.thumbnail.getter();
  sub_26A106704(v67, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v67, &qword_28036CB20, &unk_26A426470);
  v68 = v93;
  SimpleItemRichSearchResult.action.getter();
  sub_26A106600();
  sub_26A0E48F0(v68, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7AC0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v70, v71, v72, v73, v89, v90);

  v74 = swift_getKeyPath();
  sub_26A0F8454(v74, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v75, v76, v77, v78, v89, v90);

  sub_26A0FD214(v79, v80, v81, v82, v83, v84, v85);
  sub_26A0E48F0(v34, &qword_28036CEE8, &unk_26A426A70);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v87;
  result._countAndFlagsBits = v86;
  return result;
}

uint64_t type metadata accessor for SimpleItemRichSearchResult(uint64_t a1)
{
  result = qword_2803716C0;
  if (!qword_2803716C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A29BCE0()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A29BD34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SimpleItemRichSearchResult.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
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
  OUTLINED_FUNCTION_9_25();
  sub_26A29C124();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_25_19();
  sub_26A29BCE0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SimpleItemRichSearchResult.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemRichSearchResult(0);
  *(inited + 64) = &protocol witness table for SimpleItemRichSearchResult;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_19();
  sub_26A29C124();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A29C000(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A29C000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A29C0B8(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_RichSearchResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A29C124()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
}

void OUTLINED_FUNCTION_22_15()
{

  sub_26A275560();
}

void OUTLINED_FUNCTION_55_10(uint64_t a1, uint64_t a2)
{

  sub_26A106754(v2, a2, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_57_10()
{

  return sub_26A29BCE0();
}

uint64_t OUTLINED_FUNCTION_59_11()
{

  return type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
}

uint64_t OUTLINED_FUNCTION_60_9()
{

  return sub_26A29BCE0();
}

uint64_t ImageElement.RenderingMode.description.getter()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t ImageElement.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A29C38C()
{
  result = qword_2803716D0;
  if (!qword_2803716D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803716D0);
  }

  return result;
}

_BYTE *_s13RenderingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t UUID.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803716D8, &qword_26A438498);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_26A424704();
  v5 = sub_26A424734();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t URL.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_26A424604();
  v5 = sub_26A424614();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

double sub_26A29C770@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26A426400;
  return result;
}

uint64_t _ProtoPlayerButton.init()(uint64_t a1)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

void static _ProtoPlayerButton.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v41 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48_14(v7, v8, v9, v10, v11, v12, v13, v14, v41);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v42 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_73_6();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F098, &qword_26A42C588);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v45 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v44 = type metadata accessor for _ProtoPlayerButton(0);
  v25 = *(v19 + 48);
  v46 = v2;
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_2_4(v24);
  if (v26)
  {
    OUTLINED_FUNCTION_2_4(&v24[v25]);
    if (!v26)
    {
      goto LABEL_21;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(&v24[v25]);
    if (v26)
    {
      sub_26A2A3044();
      goto LABEL_21;
    }

    v27 = v43;
    sub_26A2A3098();
    if (*(v0 + *(v3 + 20)) != *(v27 + *(v3 + 20)))
    {

      sub_26A2A2580();
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        sub_26A2A3044();
        OUTLINED_FUNCTION_175();
        sub_26A2A3044();
        goto LABEL_21;
      }
    }

    v30 = sub_26A424794();
    OUTLINED_FUNCTION_0_46();
    sub_26A2A31E8();
    OUTLINED_FUNCTION_133();
    sub_26A424B64();
    OUTLINED_FUNCTION_36_11();
    sub_26A2A3044();
    sub_26A2A3044();
    sub_26A13440C();
    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v31 = v45;
  v32 = *(v19 + 48);
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_2_4(v31);
  if (v26)
  {
    OUTLINED_FUNCTION_2_4(v31 + v32);
    if (v26)
    {
      sub_26A13440C();
LABEL_27:
      sub_26A424794();
      OUTLINED_FUNCTION_0_46();
      sub_26A2A31E8();
      v35 = sub_26A424B64();
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v33 = v42;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(v31 + v32);
  if (v34)
  {
    sub_26A2A3044();
LABEL_21:
    sub_26A13440C();
    goto LABEL_22;
  }

  v36 = v41;
  sub_26A2A3098();
  v37 = *(v3 + 20);
  v38 = *(v33 + v37);
  if (v38 != *(v36 + v37))
  {

    OUTLINED_FUNCTION_175();
    sub_26A2A2580();
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      sub_26A2A3044();
      sub_26A2A3044();
      goto LABEL_21;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  sub_26A424B64();
  OUTLINED_FUNCTION_35_16();
  sub_26A2A3044();
  sub_26A2A3044();
  sub_26A13440C();
  if (v38)
  {
    goto LABEL_27;
  }

LABEL_22:
  v35 = 0;
LABEL_23:
  OUTLINED_FUNCTION_214_1(v35);
  OUTLINED_FUNCTION_75();
}

void static _ProtoStandardPlayerButton.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v45 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_14(v9, v10, v11, v12, v13, v14, v15, v16, v45);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v46 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  v22 = (&v45 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v48 = v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_73_6();
  v49 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v50 = v4;
  v27 = *(v23 + 48);
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (v34)
  {
    OUTLINED_FUNCTION_37(v0 + v27, 1, v5);
    if (!v34)
    {
      goto LABEL_49;
    }

    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_133();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v0 + v27, 1, v5);
    if (v34)
    {
      sub_26A2A3044();
      goto LABEL_49;
    }

    v35 = v47;
    sub_26A2A3098();
    sub_26A0E36D8(*v22, *v35);
    if ((v36 & 1) == 0 || (v22[1] == v35[1] ? (v37 = v22[2] == v35[2]) : (v37 = 0), !v37 && (sub_26A425354() & 1) == 0))
    {
      sub_26A2A3044();
      sub_26A2A3044();
      goto LABEL_49;
    }

    v38 = sub_26A424794();
    OUTLINED_FUNCTION_0_46();
    sub_26A2A31E8();
    sub_26A424B64();
    OUTLINED_FUNCTION_39_13();
    sub_26A2A3044();
    sub_26A2A3044();
    sub_26A13440C();
    if ((v38 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v28 = v50;
  v29 = *(v23 + 48);
  v30 = v48;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_2_4(v30);
  if (v34)
  {
    OUTLINED_FUNCTION_2_4(v30 + v29);
    if (v34)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_49:
    sub_26A13440C();
LABEL_50:
    v33 = 0;
    goto LABEL_51;
  }

  v39 = v46;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(v30 + v29);
  if (v40)
  {
    sub_26A2A3044();
    goto LABEL_49;
  }

  v41 = v45;
  sub_26A2A3098();
  sub_26A0E36D8(*v39, *v41);
  if ((v42 & 1) == 0 || (v39[1] == v41[1] ? (v43 = v39[2] == v41[2]) : (v43 = 0), !v43 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2A3044();
    OUTLINED_FUNCTION_44();
    sub_26A2A3044();
    goto LABEL_49;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  v44 = sub_26A424B64();
  sub_26A2A3044();
  OUTLINED_FUNCTION_157();
  sub_26A2A3044();
  sub_26A13440C();
  if ((v44 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_11:
  v31 = *v28 == *v2 && v28[1] == v2[1];
  if (!v31 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_50;
  }

  v32 = v28[2] == v2[2] && v28[3] == v2[3];
  if (!v32 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  v33 = OUTLINED_FUNCTION_108_3();
LABEL_51:
  OUTLINED_FUNCTION_214_1(v33);
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoButton.init()@<X0>(uint64_t a2@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(type metadata accessor for _ProtoButton(0) + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_28036C428);
  }

  *(a2 + v3) = qword_280371710;
}

uint64_t _ProtoButton.action.getter()
{
  OUTLINED_FUNCTION_19_0();
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for _ProtoButton(v4);
  OUTLINED_FUNCTION_142(*(v0 + *(v5 + 20)) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, v1 - 72);
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_38_0();
  if (v6)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38_0();
    if (!v6)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoButton.label.getter()
{
  OUTLINED_FUNCTION_19_0();
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_142(*(v0 + v6) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, v1 - 72);
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v5);
  if (!v7)
  {
    return sub_26A2A3098();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  result = OUTLINED_FUNCTION_23(v5);
  if (!v7)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoButton.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_142(*(v0 + v6) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, v1 - 72);
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v5);
  if (!v7)
  {
    return sub_26A2A3098();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  result = OUTLINED_FUNCTION_23(v5);
  if (!v7)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t sub_26A29D7EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_14_14();
  v7 = *(v2 + v6) + *a1;
  result = OUTLINED_FUNCTION_75_6(v5);
  v9 = *(v7 + 8);
  *a2 = *v7;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_26A29D868(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_75_6(v1);

  return OUTLINED_FUNCTION_246();
}

uint64_t _ProtoButton.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = *(OUTLINED_FUNCTION_31_12() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v0 + v3) = v4;
  }

  sub_26A2A3098();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoButton.label.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = *(OUTLINED_FUNCTION_31_12() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v0 + v3) = v4;
  }

  sub_26A2A3098();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoButton.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = *(OUTLINED_FUNCTION_31_12() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v0 + v3) = v4;
  }

  sub_26A2A3098();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t sub_26A29DBFC(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for _ProtoButton(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    v9 = v10;
    *(v4 + v7) = v10;
  }

  v11 = v9 + *a2;
  result = OUTLINED_FUNCTION_26_10(v11, v13);
  *v11 = v5;
  *(v11 + 8) = v6;
  return result;
}

uint64_t sub_26A29DCB0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_47_1();
  v8 = *(type metadata accessor for _ProtoButton(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    v10 = v11;
    *(v7 + v8) = v11;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_26_10(v12, v14);
  *v12 = v5;
  v12[1] = v3;
}

uint64_t static _ProtoButton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_14();
  if (*(a1 + v4) != *(a2 + v4))
  {

    sub_26A2A2580();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A29DE3C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_142(*(v0 + v10) + *v5, v1 - 72);
  sub_26A10FD9C();
  v3(0);
  v11 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v11, v12, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  sub_26A13440C();
  return v15;
}

uint64_t _ProtoWatchListButton.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for _ProtoWatchListButton(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoPlayerButton.playButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPlayerButton(v4);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v5)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoStandardPlayerButton.playAction.getter()
{
  v0 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoStandardPlayerButton(v2);
  OUTLINED_FUNCTION_27_18();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_38_0();
  if (v3)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38_0();
    if (!v3)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoStandardPlayerButton.pauseAction.getter()
{
  v0 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoStandardPlayerButton(v2);
  OUTLINED_FUNCTION_27_18();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_38_0();
  if (v3)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38_0();
    if (!v3)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoStandardPlayerButton.playAction.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  type metadata accessor for _ProtoStandardPlayerButton(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for _ProtoActionProperty(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoStandardPlayerButton.pauseAction.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  type metadata accessor for _ProtoStandardPlayerButton(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for _ProtoActionProperty(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoBinaryButton.primaryButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoBinaryButton(v4);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v5)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoBinaryButton.secondaryButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoBinaryButton(v4);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v5)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoBinaryButton.primaryButton.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  type metadata accessor for _ProtoBinaryButton(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_9_26();
  type metadata accessor for _ProtoButton(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoBinaryButton.secondaryButton.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  type metadata accessor for _ProtoBinaryButton(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_9_26();
  type metadata accessor for _ProtoButton(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A29E680()
{
  OUTLINED_FUNCTION_24_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_50_11();
  v1(v6);
  OUTLINED_FUNCTION_87();
  sub_26A10FD9C();
  v0(0);
  v7 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A13440C();
  return v11;
}

uint64_t sub_26A29E764()
{
  OUTLINED_FUNCTION_24_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_50_11();
  v1(v6);
  OUTLINED_FUNCTION_87();
  sub_26A10FD9C();
  v0(0);
  v7 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A13440C();
  return v11;
}

void _ProtoButton.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoActionProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_142(*(v0 + v11) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, v1);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoButton.label.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_142(*(v0 + v11) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, v1);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A29EB74()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_103();
    sub_26A2A314C();
    v2(v3);
    sub_26A2A3044();
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

void sub_26A29EC48()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  OUTLINED_FUNCTION_47_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = *(type metadata accessor for _ProtoButton(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v0 + v7) = v8;
  }

  v2(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

void _ProtoButton.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoVisualProperty(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_142(*(v0 + v11) + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, v1);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_75();
}

void (*_ProtoButton.formAction.modify())(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 88) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return sub_26A29EF8C;
}

uint64_t sub_26A29EF98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoButton.componentName.setter(v1, v2);
}

uint64_t _ProtoButton.componentName.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 64) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 72) = v3;
  OUTLINED_FUNCTION_38_6();
  v4 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A29F070(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoButton.linkIdentifier.setter(v1, v2);
}

uint64_t _ProtoButton.linkIdentifier.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 64) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 72) = v3;
  OUTLINED_FUNCTION_38_6();
  v4 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_133();
}

void sub_26A29F148()
{
  OUTLINED_FUNCTION_69_1();
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 56);
  if (v6)
  {
    v7 = v1;

    v8 = OUTLINED_FUNCTION_125();
    v7(v8);
  }

  else
  {
    v9 = v0;
    v10 = *(v3 + 72);
    v11 = *(v3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v3 + 72);
      v15 = *(v3 + 64);
      OUTLINED_FUNCTION_21_19();
      OUTLINED_FUNCTION_5_3();
      sub_26A2A11E0();
      v13 = v16;
      *(v15 + v14) = v16;
    }

    v17 = (v13 + *v9);
    OUTLINED_FUNCTION_26_10(v17, v3 + 24);
    *v17 = v4;
    v17[1] = v5;
  }

  OUTLINED_FUNCTION_67_1();

  free(v18);
}

void (*_ProtoButton.labelStyle.modify())(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 88) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return sub_26A29F288;
}

void sub_26A29F294()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 84);
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v5 + 84);
    v13 = *(v5 + 88);
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    v11 = v14;
    *(v13 + v12) = v14;
  }

  v15 = 48;
  if (v3)
  {
    v15 = 24;
  }

  v16 = v11 + *v1;
  OUTLINED_FUNCTION_26_10(v16, v5 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_67_1();

  free(v17);
}

void *sub_26A29F34C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_26A29F394(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void (*_ProtoButton.buttonRole.modify())()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 88) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return sub_26A29F448;
}

uint64_t sub_26A29F488(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A75D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26A29F508(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A7584();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26A29F584(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A7530();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t (*static _ProtoButton.FormAction.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_26A29F66C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static _ProtoButton.FormAction.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*static _ProtoButton.LabelStyle.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_26A29F724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static _ProtoButton.LabelStyle.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26A29F790(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_26_10(a2, v5);
  *a2 = a1;
}

uint64_t (*static _ProtoButton.ButtonRole.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A29F820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static _ProtoButton.ButtonRole.allCases.getter(a1);
  *a2 = result;
  return result;
}

void _ProtoStandardPlayerButton.playAction.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoActionProperty(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = *(type metadata accessor for _ProtoStandardPlayerButton(v12) + 28);
  *(v0 + 40) = v13;
  OUTLINED_FUNCTION_176(v13);
  sub_26A10FD9C();
  v14 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v7);
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2A3098();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoStandardPlayerButton.pauseAction.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoActionProperty(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = *(type metadata accessor for _ProtoStandardPlayerButton(v12) + 32);
  *(v0 + 40) = v13;
  OUTLINED_FUNCTION_176(v13);
  sub_26A10FD9C();
  v14 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_75_7(MEMORY[0x277D84F90]);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v7);
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2A3098();
  }

  OUTLINED_FUNCTION_67_1();
}

void (*_ProtoStandardPlayerButton.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoStandardPlayerButton(v0);
  return nullsub_1;
}

void _ProtoBinaryButton.primaryButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoButton(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoBinaryButton(v12);
  OUTLINED_FUNCTION_85_2(*(v13 + 28));
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    OUTLINED_FUNCTION_25_20();
    if (v7 != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A29FE14()
{
  OUTLINED_FUNCTION_24_23();
  v1(0);
  sub_26A13440C();
  v0(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoBinaryButton.secondaryButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoButton(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoBinaryButton(v12);
  OUTLINED_FUNCTION_85_2(*(v13 + 32));
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    OUTLINED_FUNCTION_25_20();
    if (v7 != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A2A0014()
{
  OUTLINED_FUNCTION_24_23();
  v1(0);
  sub_26A13440C();
  v0(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoBinaryButton.componentName.setter()
{
  OUTLINED_FUNCTION_47_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoBinaryButton.linkIdentifier.setter()
{
  OUTLINED_FUNCTION_47_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_26A2A01A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A2A0238()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*_ProtoBinaryButton.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoBinaryButton(v0);
  return nullsub_1;
}

uint64_t sub_26A2A031C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  a1(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = a2(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
}

uint64_t _ProtoPlayerButton.playButton.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  type metadata accessor for _ProtoPlayerButton(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_9_26();
  type metadata accessor for _ProtoButton(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoPlayerButton.playButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoButton(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoPlayerButton(v12);
  OUTLINED_FUNCTION_85_2(*(v13 + 20));
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    OUTLINED_FUNCTION_25_20();
    if (v7 != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoPlayerButton.hasPlayButton.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for _ProtoPlayerButton(v4);
  OUTLINED_FUNCTION_176(*(v5 + 20));
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  v6 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v10;
}

Swift::Void __swiftcall _ProtoPlayerButton.clearPlayButton()()
{
  type metadata accessor for _ProtoPlayerButton(0);
  sub_26A13440C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoPlayerButton.pauseButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPlayerButton(v4);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v5)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t sub_26A2A0774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A2A314C();
  return a7(v11);
}

uint64_t _ProtoPlayerButton.pauseButton.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  type metadata accessor for _ProtoPlayerButton(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_9_26();
  type metadata accessor for _ProtoButton(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoPlayerButton.pauseButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_28_9(v5);
  v7 = type metadata accessor for _ProtoButton(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoPlayerButton(v12);
  OUTLINED_FUNCTION_85_2(*(v13 + 24));
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    OUTLINED_FUNCTION_25_20();
    if (v7 != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A2A09C0()
{
  OUTLINED_FUNCTION_76();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 8);
  v4 = *(*v0 + 16);
  if (v5)
  {
    OUTLINED_FUNCTION_157();
    sub_26A2A314C();
    sub_26A13440C();
    sub_26A2A3098();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
    sub_26A2A3044();
  }

  else
  {
    sub_26A13440C();
    sub_26A2A3098();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  }

  free(v2);
  free(v1);
  free(v3);
  OUTLINED_FUNCTION_75();

  free(v12);
}

uint64_t _ProtoPlayerButton.hasPauseButton.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for _ProtoPlayerButton(v4);
  OUTLINED_FUNCTION_176(*(v5 + 24));
  sub_26A10FD9C();
  type metadata accessor for _ProtoButton(0);
  v6 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v10;
}

Swift::Void __swiftcall _ProtoPlayerButton.clearPauseButton()()
{
  type metadata accessor for _ProtoPlayerButton(0);
  sub_26A13440C();
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoWatchListButton.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoWatchListButton(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoWatchListButton.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoWatchListButton(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*_ProtoWatchListButton.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoWatchListButton(v0);
  return nullsub_1;
}

uint64_t sub_26A2A0D44()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803716F8);
  __swift_project_value_buffer(v0, qword_2803716F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A429A40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "form_action";
  *(v14 + 1) = 11;
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
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "label_style";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "button_role";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2A10B8()
{
  OUTLINED_FUNCTION_21_19();
  result = sub_26A2A10E8();
  qword_280371710 = result;
  return result;
}

uint64_t sub_26A2A10E8()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action;
  v2 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
  *v11 = 0;
  *(v11 + 8) = 1;
  return v0;
}

void sub_26A2A11E0()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle;
  v38 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
  v39 = v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
  *v25 = 0;
  *(v25 + 8) = 1;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, &v52);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, &v51);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, &v50);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v26 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction, &v49);
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  OUTLINED_FUNCTION_26_10(v21, &v48);
  *v21 = v27;
  *(v21 + 8) = v26;
  v28 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName, &v47);
  v29 = *v28;
  v30 = v28[1];
  OUTLINED_FUNCTION_26_10(v22, &v46);
  *v22 = v29;
  v22[1] = v30;

  v31 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier, &v45);
  v32 = *v31;
  v33 = v31[1];
  OUTLINED_FUNCTION_26_10(v23, &v44);
  *v23 = v32;
  v23[1] = v33;

  v34 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle, &v43);
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  OUTLINED_FUNCTION_26_10(v38, &v42);
  *v38 = v35;
  *(v38 + 8) = v34;
  v36 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole, &v41);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);

  OUTLINED_FUNCTION_26_10(v39, &v40);
  *v39 = v37;
  *(v39 + 8) = v36;
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2A1628()
{
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();

  return v0;
}

uint64_t sub_26A2A16C8()
{
  v0 = sub_26A2A1628();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoButton.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  v1 = *(type metadata accessor for _ProtoButton(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoButton._StorageClass(0);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v0 + v1) = v2;
  }

  OUTLINED_FUNCTION_87();
  return sub_26A2A17B4(v3, v4, v5, v6);
}

uint64_t sub_26A2A17B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A2A1994(a2, a1, a3, a4);
        continue;
      case 2:
        sub_26A2A1A70(a2, a1, a3, a4);
        continue;
      case 3:
        sub_26A2A1B4C(a2, a1, a3, a4);
        continue;
      case 4:
        v11 = sub_26A2A75D8;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction;
        goto LABEL_11;
      case 5:
      case 6:
        sub_26A2768B0();
        continue;
      case 7:
        v11 = sub_26A2A7584;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle;
        goto LABEL_11;
      case 8:
        v11 = sub_26A2A7530;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
LABEL_11:
        sub_26A2A1C28(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2A1994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2A31E8();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2A1A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2A31E8();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2A1B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A2A31E8();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2A1C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_21_8();
  v7 = swift_beginAccess();
  a6(v7);
  sub_26A424894();
  return swift_endAccess();
}

uint64_t _ProtoButton.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12_7();
  result = sub_26A2A1D30(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2A1D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2A1FC8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2A21B0(a1, a2, a3, a4);
    sub_26A2A2398(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction);
    swift_beginAccess();
    if (*v10)
    {
      sub_26A2A75D8();
      sub_26A4249F4();
    }

    v11 = (a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
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

    v15 = (a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
    swift_beginAccess();
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

    v19 = (a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle);
    swift_beginAccess();
    if (*v19)
    {
      sub_26A2A7584();
      sub_26A4249F4();
    }

    v20 = (a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole);
    result = swift_beginAccess();
    if (*v20)
    {
      sub_26A2A7530();
      return sub_26A4249F4();
    }
  }

  return result;
}

uint64_t sub_26A2A1FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A21B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

void sub_26A2A2580()
{
  OUTLINED_FUNCTION_76();
  v95 = v0;
  v2 = v1;
  v85 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v81 = v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v86 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v82 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  v92 = v80 - v11;
  v90 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v83 = v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v91 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v87 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v93 = v80 - v20;
  v94 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v88 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  v26 = v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  v30 = (v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, &v111);
  v32 = v95;
  OUTLINED_FUNCTION_69_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action, &v110);
  v33 = *(v23 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v26);
  if (v38)
  {

    sub_26A13440C();
    OUTLINED_FUNCTION_9(&v26[v33]);
    if (!v38)
    {
      goto LABEL_37;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&v26[v33]);
    v39 = v30;
    if (v38)
    {

      sub_26A13440C();
      sub_26A2A3044();
      goto LABEL_37;
    }

    v40 = v88;
    sub_26A2A3098();
    v41 = *v39;
    v42 = *v40;
    v80[1] = v2;

    sub_26A0E36D8(v41, v42);
    if ((v43 & 1) == 0 || (v39[1] == v40[1] ? (v44 = v39[2] == v40[2]) : (v44 = 0), !v44 && (sub_26A425354() & 1) == 0))
    {
      sub_26A2A3044();
      sub_26A13440C();
      sub_26A2A3044();
      sub_26A13440C();
      goto LABEL_38;
    }

    v45 = sub_26A424794();
    OUTLINED_FUNCTION_0_46();
    sub_26A2A31E8();
    sub_26A424B64();
    OUTLINED_FUNCTION_39_13();
    sub_26A2A3044();
    sub_26A13440C();
    sub_26A2A3044();
    sub_26A13440C();
    if ((v45 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, &v109);
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__label, &v108);
  v34 = *(v89 + 48);
  v35 = v91;
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_89_4();
  v36 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v36, v37, v90);
  if (v38)
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_9(v35 + v34);
    if (!v38)
    {
      goto LABEL_37;
    }

    sub_26A13440C();
  }

  else
  {
    v46 = v87;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v35 + v34);
    if (v47)
    {
      sub_26A13440C();
      sub_26A2A3044();
      goto LABEL_37;
    }

    v48 = v83;
    sub_26A2A3098();
    v49 = static _ProtoTextProperty.== infix(_:_:)(v46, v48);
    OUTLINED_FUNCTION_157();
    sub_26A2A3044();
    OUTLINED_FUNCTION_69_2();
    sub_26A13440C();
    sub_26A2A3044();
    OUTLINED_FUNCTION_69_2();
    sub_26A13440C();
    if ((v49 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, &v107);
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__thumbnail, &v106);
  v50 = *(v84 + 48);
  v51 = v86;
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_89_4();
  v52 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v52, v53, v85);
  if (!v38)
  {
    v54 = v82;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v51 + v50);
    if (!v55)
    {
      v57 = v81;
      sub_26A2A3098();
      v58 = static _ProtoVisualProperty.== infix(_:_:)(v54, v57);
      OUTLINED_FUNCTION_157();
      sub_26A2A3044();
      OUTLINED_FUNCTION_69_2();
      sub_26A13440C();
      sub_26A2A3044();
      OUTLINED_FUNCTION_69_2();
      sub_26A13440C();
      if ((v58 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }

    sub_26A13440C();
    sub_26A2A3044();
LABEL_37:
    sub_26A13440C();
    goto LABEL_38;
  }

  sub_26A13440C();
  OUTLINED_FUNCTION_9(v51 + v50);
  if (!v38)
  {
    goto LABEL_37;
  }

  sub_26A13440C();
LABEL_41:
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction, &v105);
  OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__formAction, &v104);
  v59 = OUTLINED_FUNCTION_96_2();
  if (sub_26A257DA8(v59, v60, v61))
  {
    v62 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
    OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName, &v103);
    v63 = *v62;
    v64 = v62[1];
    v65 = (v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName);
    OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__componentName, &v102);
    v66 = v63 == *v65 && v64 == v65[1];
    if (v66 || (sub_26A425354() & 1) != 0)
    {
      v67 = (v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
      OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier, &v101);
      v68 = *v67;
      v69 = v67[1];
      v70 = (v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier);
      OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__linkIdentifier, &v100);
      v71 = v68 == *v70 && v69 == v70[1];
      if (v71 || (sub_26A425354() & 1) != 0)
      {
        OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle, &v99);
        OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__labelStyle, &v98);
        v72 = OUTLINED_FUNCTION_96_2();
        if (sub_26A257DA8(v72, v73, v74))
        {
          v75 = v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole;
          OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole, &v97);
          v76 = *v75;
          v77 = *(v75 + 8);

          v78 = (v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole);
          OUTLINED_FUNCTION_142(v32 + OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__buttonRole, &v96);
          v79 = *v78;

          v56 = sub_26A257DA8(v76, v77, v79);
          goto LABEL_39;
        }
      }
    }
  }

LABEL_38:

  v56 = 0;
LABEL_39:
  OUTLINED_FUNCTION_214_1(v56);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2A3044()
{
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A2A3098()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2A314C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

unint64_t sub_26A2A31E8()
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

uint64_t sub_26A2A3280(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A31E8();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2A3300(uint64_t a1)
{
  v2 = sub_26A2A31E8();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2A3370(uint64_t a1, uint64_t a2)
{
  sub_26A2A31E8();

  return sub_26A4249B4();
}

uint64_t sub_26A2A33F0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371718);
  __swift_project_value_buffer(v0, qword_280371718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUBMIT";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CANCEL";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2A3618()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371730);
  __swift_project_value_buffer(v0, qword_280371730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUTOMATIC";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ICON_ONLY";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TITLE_AND_ICON";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TITLE_ONLY";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2A3880()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371748);
  __swift_project_value_buffer(v0, qword_280371748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STANDARD";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PREFERRED";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PREFERRED_AND_DESTRUCTIVE";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2A3AC4()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371760);
  __swift_project_value_buffer(v0, qword_280371760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "play_action";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pause_action";
  *(v10 + 8) = 12;
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
  *v14 = "link_identifier";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2A3D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoStandardPlayerButton(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2A31E8();
  return sub_26A424944();
}

uint64_t sub_26A2A3E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoStandardPlayerButton(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A2A31E8();
  return sub_26A424944();
}

uint64_t sub_26A2A3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoStandardPlayerButton(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoStandardPlayerButton(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A4374(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A31E8();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2A43F4(uint64_t a1)
{
  v2 = sub_26A2A31E8();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2A4464(uint64_t a1, uint64_t a2)
{
  sub_26A2A31E8();

  return sub_26A4249B4();
}

uint64_t sub_26A2A44FC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371778);
  __swift_project_value_buffer(v0, qword_280371778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primary_button";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "secondary_button";
  *(v10 + 8) = 16;
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
  *v14 = "link_identifier";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A2A47A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_26A424834();
    if (v5 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v10 = OUTLINED_FUNCTION_67_7();
        a4(v10);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_67_7();
        a5(v11);
        break;
      case 3:
      case 4:
        sub_26A424924();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2A487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoBinaryButton(0);
  type metadata accessor for _ProtoButton(0);
  sub_26A2A31E8();
  return sub_26A424944();
}

uint64_t sub_26A2A4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoBinaryButton(0);
  type metadata accessor for _ProtoButton(0);
  sub_26A2A31E8();
  return sub_26A424944();
}

uint64_t sub_26A2A4A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_87();
  result = v9();
  if (!v6)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    a5();
    OUTLINED_FUNCTION_84_0();
    if (v13)
    {
      OUTLINED_FUNCTION_42_7(v11, v12, 3);
    }

    OUTLINED_FUNCTION_84_0();
    if (v16)
    {
      OUTLINED_FUNCTION_42_7(v14, v15, 4);
    }

    a6(0);
    OUTLINED_FUNCTION_12_7();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2A4B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoBinaryButton(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A4CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoBinaryButton(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

void static _ProtoBinaryButton.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v48 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_14(v9, v10, v11, v12, v13, v14, v15, v16, v48);
  v17 = OUTLINED_FUNCTION_67_7();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  v20 = OUTLINED_FUNCTION_41(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v49 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F098, &qword_26A42C588);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v51 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_73_6();
  v52 = type metadata accessor for _ProtoBinaryButton(0);
  v53 = v4;
  v29 = *(v25 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (v30)
  {
    OUTLINED_FUNCTION_37(v0 + v29, 1, v5);
    if (!v30)
    {
      goto LABEL_20;
    }

    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_133();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v0 + v29, 1, v5);
    if (v30)
    {
      goto LABEL_19;
    }

    v31 = v50;
    sub_26A2A3098();
    if (*&v24[*(v5 + 20)] != *(v31 + *(v5 + 20)))
    {

      OUTLINED_FUNCTION_67_7();
      sub_26A2A2580();
      v33 = v32;

      if ((v33 & 1) == 0)
      {
LABEL_37:
        sub_26A2A3044();
        sub_26A2A3044();
        goto LABEL_20;
      }
    }

    v34 = sub_26A424794();
    OUTLINED_FUNCTION_0_46();
    sub_26A2A31E8();
    sub_26A424B64();
    OUTLINED_FUNCTION_36_11();
    sub_26A2A3044();
    sub_26A2A3044();
    sub_26A13440C();
    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v35 = v53;
  v36 = *(v25 + 48);
  v37 = v51;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_37(v37, 1, v5);
  if (!v30)
  {
    v38 = v49;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v37 + v36, 1, v5);
    if (!v39)
    {
      v41 = v48;
      sub_26A2A3098();
      v42 = *(v5 + 20);
      v43 = *(v38 + v42);
      if (v43 == *(v41 + v42) || (, , OUTLINED_FUNCTION_175(), sub_26A2A2580(), v45 = v44, , , (v45 & 1) != 0))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_0_46();
        sub_26A2A31E8();
        sub_26A424B64();
        OUTLINED_FUNCTION_35_16();
        sub_26A2A3044();
        sub_26A2A3044();
        sub_26A13440C();
        if ((v43 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }

      goto LABEL_37;
    }

LABEL_19:
    sub_26A2A3044();
LABEL_20:
    sub_26A13440C();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_37(v37 + v36, 1, v5);
  if (!v30)
  {
    goto LABEL_20;
  }

  sub_26A13440C();
LABEL_26:
  v46 = *v35 == *v2 && v35[1] == v2[1];
  if (v46 || (sub_26A425354() & 1) != 0)
  {
    v47 = v35[2] == v2[2] && v35[3] == v2[3];
    if (v47 || (sub_26A425354() & 1) != 0)
    {
      sub_26A424794();
      OUTLINED_FUNCTION_0_46();
      sub_26A2A31E8();
      v40 = OUTLINED_FUNCTION_108_3();
      goto LABEL_22;
    }
  }

LABEL_21:
  v40 = 0;
LABEL_22:
  OUTLINED_FUNCTION_214_1(v40);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2A5548(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A31E8();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2A55C8(uint64_t a1)
{
  v2 = sub_26A2A31E8();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2A5638(uint64_t a1, uint64_t a2)
{
  sub_26A2A31E8();

  return sub_26A4249B4();
}

uint64_t sub_26A2A56D0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371790);
  __swift_project_value_buffer(v0, qword_280371790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "play_button";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pause_button";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoPlayerButton.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
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
      OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_87();
      sub_26A2A59E4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_87();
      sub_26A2A5930(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_26A2A5930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoPlayerButton(0);
  type metadata accessor for _ProtoButton(0);
  sub_26A2A31E8();
  return sub_26A424944();
}

uint64_t sub_26A2A59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoPlayerButton(0);
  type metadata accessor for _ProtoButton(0);
  sub_26A2A31E8();
  return sub_26A424944();
}

uint64_t _ProtoPlayerButton.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_7();
  result = sub_26A2A5AFC(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_12_7();
    sub_26A2A5CD0(v9, v10, v11, a3);
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2A5AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoPlayerButton(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A5CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoPlayerButton(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2A3098();
  sub_26A2A31E8();
  sub_26A424A84();
  return sub_26A2A3044();
}

uint64_t sub_26A2A5F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A31E8();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2A5FC0(uint64_t a1)
{
  v2 = sub_26A2A31E8();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2A6030(uint64_t a1, uint64_t a2)
{
  sub_26A2A31E8();

  return sub_26A4249B4();
}

uint64_t sub_26A2A60C8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803717A8);
  __swift_project_value_buffer(v0, qword_2803717A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A426410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26A424AA4();
}

uint64_t _ProtoWatchListButton.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoWatchListButton.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_84_0();
  if (!v3 || (result = OUTLINED_FUNCTION_42_7(v1, v2, 1), !v0))
  {
    type metadata accessor for _ProtoWatchListButton(0);
    OUTLINED_FUNCTION_12_7();
    return sub_26A424774();
  }

  return result;
}

uint64_t static _ProtoWatchListButton.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoWatchListButton(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A2A6428(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_125();
  sub_26A2A31E8();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A2A64B4()
{
  result = qword_280371810;
  if (!qword_280371810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371810);
  }

  return result;
}

unint64_t sub_26A2A650C()
{
  result = qword_280371818;
  if (!qword_280371818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371818);
  }

  return result;
}

unint64_t sub_26A2A6568()
{
  result = qword_280371820;
  if (!qword_280371820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371820);
  }

  return result;
}

unint64_t sub_26A2A65C0()
{
  result = qword_280371828;
  if (!qword_280371828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371828);
  }

  return result;
}

unint64_t sub_26A2A661C()
{
  result = qword_280371830;
  if (!qword_280371830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371830);
  }

  return result;
}

unint64_t sub_26A2A6674()
{
  result = qword_280371838;
  if (!qword_280371838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371838);
  }

  return result;
}

uint64_t sub_26A2A6C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2A31E8();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2A6D8C(uint64_t a1)
{
  v2 = sub_26A2A31E8();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2A6E44(uint64_t a1, uint64_t a2)
{
  sub_26A2A31E8();

  return sub_26A4249B4();
}

uint64_t sub_26A2A6EEC(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoButton._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_44_1(*(a1 + 8));
  }

  sub_26A424794();
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 24);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_103();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v10 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void __swift_store_extra_inhabitant_index_59Tm()
{
  OUTLINED_FUNCTION_100_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26A424794();
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) != v4)
    {
      v6 = OUTLINED_FUNCTION_103();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    }

    OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_26A2A71C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_26A424794();
  if (v7 <= 0x3F)
  {
    sub_26A2A7274(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A2A7274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_26A2A72F0(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A2A7274(319, &qword_28036EFE0, type metadata accessor for _ProtoButton);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A2A73C0(uint64_t a1)
{
  sub_26A2A7274(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
  if (v1 <= 0x3F)
  {
    sub_26A2A7274(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A2A7274(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_26A2A7530()
{
  result = qword_280371948;
  if (!qword_280371948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371948);
  }

  return result;
}

unint64_t sub_26A2A7584()
{
  result = qword_280371950;
  if (!qword_280371950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371950);
  }

  return result;
}

unint64_t sub_26A2A75D8()
{
  result = qword_280371958;
  if (!qword_280371958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371958);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return sub_26A2A3098();
}

uint64_t OUTLINED_FUNCTION_21_19()
{
  type metadata accessor for _ProtoButton._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_20()
{
  *(v1 + v4) = v0;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_26_20()
{
  *(v0 + v4) = v1;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_27_18()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return type metadata accessor for _ProtoButton(0);
}

uint64_t OUTLINED_FUNCTION_41_12()
{

  return sub_26A2A3098();
}

void OUTLINED_FUNCTION_75_7(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_77_5()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return sub_26A2A3098();
}

uint64_t OUTLINED_FUNCTION_89_4()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_108_3()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_109_3()
{

  return sub_26A10FD9C();
}

uint64_t SimpleItemReverseRich.text1.getter()
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
  v10 = type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v24);
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
    sub_26A2AA84C();
  }

  return sub_26A2AA84C();
}

void SimpleItemReverseRich.text3.getter()
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
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A4273F0);
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
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_13();
    }

    sub_26A2AA84C();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void sub_26A2A7DC4()
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
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A425BF0);
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
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_13();
    }

    sub_26A2AA84C();
    v3 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SimpleItemReverseRich.thumbnail.getter()
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
  OUTLINED_FUNCTION_20_20();
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
      OUTLINED_FUNCTION_52_13();
    }

    sub_26A2AA84C();
    v2 = 0;
  }

  v19 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SimpleItemReverseRich.action.getter()
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
  OUTLINED_FUNCTION_20_20();
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
      OUTLINED_FUNCTION_52_13();
    }

    sub_26A2AA84C();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemReverseRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_ReverseRich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SimpleItemReverseRich.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_ReverseRich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSimpleItem_ReverseRich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v168 = type metadata accessor for _ProtoActionProperty(0);
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
  v166 = type metadata accessor for _ProtoVisualProperty(0);
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
  v164 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v25);
  v26 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
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
  v34 = &v154[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v36 = OUTLINED_FUNCTION_41(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  v41 = &v154[-v40];
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  v45 = &v154[-v44];
  MEMORY[0x28223BE20](v46);
  v48 = &v154[-v47];
  OUTLINED_FUNCTION_6_19();
  sub_26A2AAC94();
  v49 = *(type metadata accessor for _ProtoSimpleItem_ReverseRich(0) + 20);
  v169 = v1;
  v170 = v49;
  v50 = *(v1 + v49);
  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v177);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v48, 1, v26);
  sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v45, 1, v26);
    if (v51)
    {
      *v34 = MEMORY[0x277D84F90];
      *(v34 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v52 = v168;
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v168);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v52);
      OUTLINED_FUNCTION_37(v45, 1, v26);
      v59 = v170;
      if (!v51)
      {
        sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2AA84C();
      v59 = v170;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_5_26();
    sub_26A2AA8A0(v34, v60);
    v61 = v169;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v61 + v59);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v63);
      OUTLINED_FUNCTION_24_24();
      v50 = v64;
      *(v61 + v59) = v64;
    }

    OUTLINED_FUNCTION_26_21();
    v65 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v26);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, v176);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v176);
  OUTLINED_FUNCTION_209();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v26);
  OUTLINED_FUNCTION_162_0(v41);
  if (EnumTagSinglePayload == 1)
  {
    v69 = v168;
    v70 = v169;
    v71 = v164;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v72 = OUTLINED_FUNCTION_11_4();
    v70 = v169;
    v73 = v170;
    v71 = v164;
    if (v51)
    {
      v50 = v155;
      *v155 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_39_0(v72);
      v74 = OUTLINED_FUNCTION_44_0(*(v26 + 32));
      v69 = v168;
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v168);
      v77 = OUTLINED_FUNCTION_44_0(*(v26 + 36));
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v69);
      OUTLINED_FUNCTION_11_4();
      if (!v51)
      {
        sub_26A0E48F0(EnumTagSinglePayload, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_13();
      v69 = v168;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_5_26();
    sub_26A2AA8A0(v50, v80);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v70 + v73);
    if ((v81 & 1) == 0)
    {
      v82 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v82);
      OUTLINED_FUNCTION_24_24();
      v50 = v83;
      *(v70 + v73) = v83;
    }

    OUTLINED_FUNCTION_26_21();
    v84 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v26);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, v175);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v175);
  v87 = v162;
  OUTLINED_FUNCTION_209();
  v88 = __swift_getEnumTagSinglePayload(v87, 1, v71);
  OUTLINED_FUNCTION_49_11();
  if (v88 != 1)
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_37(v88, 1, v71);
    v89 = v170;
    if (v51)
    {
      v90 = v156;
      *v156 = MEMORY[0x277D84F90];
      *(v90 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v91 = OUTLINED_FUNCTION_44_0(*(v71 + 32));
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v69);
      v94 = OUTLINED_FUNCTION_44_0(*(v71 + 36));
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v69);
      OUTLINED_FUNCTION_37(v88, 1, v71);
      if (!v51)
      {
        sub_26A0E48F0(v88, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_13();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_39_14();
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v70 + v89);
    if ((v97 & 1) == 0)
    {
      v98 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v98);
      OUTLINED_FUNCTION_24_24();
      v50 = v99;
      *(v70 + v89) = v99;
    }

    sub_26A2AA84C();
    v100 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v71);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, v174);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v174);
  v103 = v163;
  OUTLINED_FUNCTION_209();
  v104 = __swift_getEnumTagSinglePayload(v103, 1, v26);
  OUTLINED_FUNCTION_49_11();
  if (v104 == 1)
  {
    v105 = v69;
    v106 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v107 = OUTLINED_FUNCTION_11_4();
    v108 = v170;
    if (v51)
    {
      v50 = v157;
      *v157 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_39_0(v107);
      v109 = OUTLINED_FUNCTION_44_0(*(v26 + 32));
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v69);
      v112 = OUTLINED_FUNCTION_44_0(*(v26 + 36));
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v69);
      OUTLINED_FUNCTION_11_4();
      if (!v51)
      {
        sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_13();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_5_26();
    sub_26A2AA8A0(v50, v115);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v70 + v108);
    v105 = v69;
    if ((v116 & 1) == 0)
    {
      v117 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v117);
      OUTLINED_FUNCTION_24_24();
      v50 = v118;
      *(v70 + v108) = v118;
    }

    v106 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_26_21();
    v119 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v26);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, v173);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, v173);
  v122 = v165;
  OUTLINED_FUNCTION_209();
  v123 = v166;
  v124 = __swift_getEnumTagSinglePayload(v122, 1, v166);
  OUTLINED_FUNCTION_162_0(v122);
  if (v124 == 1)
  {
    v125 = v106;
    v126 = v105;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v127 = OUTLINED_FUNCTION_11_4();
    v128 = v170;
    if (v51)
    {
      v125 = v106;
      *v158 = v106;
      OUTLINED_FUNCTION_39_0(v127);
      v129 = OUTLINED_FUNCTION_44_0(*(v123 + 32));
      v126 = v105;
      __swift_storeEnumTagSinglePayload(v129, v130, v131, v105);
      v132 = OUTLINED_FUNCTION_44_0(*(v123 + 36));
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v105);
      OUTLINED_FUNCTION_11_4();
      if (!v51)
      {
        sub_26A0E48F0(v124, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_13();
      v125 = v106;
      v126 = v105;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_39_14();
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v70 + v128);
    if ((v135 & 1) == 0)
    {
      v136 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v136);
      OUTLINED_FUNCTION_24_24();
      v50 = v137;
      *(v70 + v128) = v137;
    }

    sub_26A2AA84C();
    v138 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v138, v139, v140, v123);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, v172);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, v172);
  v141 = v167;
  OUTLINED_FUNCTION_209();
  v142 = __swift_getEnumTagSinglePayload(v141, 1, v126);
  OUTLINED_FUNCTION_162_0(v141);
  if (v142 != 1)
  {
    v143 = v159;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v143, 1, v126);
    v144 = v170;
    if (v51)
    {
      v145 = v160;
      *v160 = v125;
      v145[1] = 0;
      v145[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v143, 1, v126);
      v146 = v161;
      if (!v51)
      {
        sub_26A0E48F0(v143, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_13();
      v146 = v161;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v146);
    OUTLINED_FUNCTION_39_14();
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v70 + v144);
    if ((v147 & 1) == 0)
    {
      v149 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v149);
      sub_26A26D9A8();
      v148 = v150;
      *(v70 + v144) = v150;
    }

    sub_26A2AA84C();
    v151 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v126);
    OUTLINED_FUNCTION_211(v148 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &v171);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemReverseRich.init(text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
  sub_26A2AAB70(&qword_28036F848, type metadata accessor for _ProtoSimpleItem_ReverseRich, &protocol conformance descriptor for _ProtoSimpleItem_ReverseRich);
  sub_26A4249C4();

  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a5, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2A94E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v100 = a8;
  v96 = a6;
  v97 = a7;
  v92 = a4;
  v93 = a5;
  v88 = a1;
  v89 = a3;
  v12 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v12 - 8);
  v87 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v77 - v15;
  v98 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v98);
  v82 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v77 - v18;
  v19 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v19 - 8);
  v86 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v21 - 8);
  v95 = &v77 - v22;
  v94 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v94);
  v80 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v81 = &v77 - v25;
  v26 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v26 - 8);
  v84 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v77 - v29;
  v90 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v90);
  v77 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v78 = &v77 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v34 - 8);
  v91 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v77 - v37;
  v39 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v39);
  v79 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v77 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v77 - v45;
  v47 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v47 - 8);
  v48 = a2[3];
  v49 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v48);
  (*(v49 + 8))(v48, v49);
  sub_26A2AA84C();
  v85 = v46;
  _ProtoSimpleItem_ReverseRich.text1.setter();
  sub_26A10FD9C();
  v50 = v102;
  if (v102)
  {
    v51 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v51 + 8))(v50, v51);
    sub_26A2AA84C();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    __swift_destroy_boxed_opaque_existential_1(v101);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      sub_26A2AA84C();
      sub_26A2AAC94();
      _ProtoSimpleItem_ReverseRich.text2.setter();
      sub_26A2AA8A0(v43, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v101, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  }

  sub_26A0E48F0(v38, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v52 = v102;
  if (v102)
  {
    v53 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v53 + 8))(v52, v53);
    sub_26A2AA84C();
    v54 = v90;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v90);
    __swift_destroy_boxed_opaque_existential_1(v101);
    if (__swift_getEnumTagSinglePayload(v30, 1, v54) != 1)
    {
      v55 = v78;
      sub_26A2AA84C();
      sub_26A2AAC94();
      _ProtoSimpleItem_ReverseRich.text3.setter();
      sub_26A2AA8A0(v55, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v101, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v90);
  }

  sub_26A0E48F0(v30, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v56 = v102;
  if (v102)
  {
    v57 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v57 + 8))(v56, v57);
    v58 = v91;
    sub_26A2AA84C();
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v39);
    __swift_destroy_boxed_opaque_existential_1(v101);
    if (__swift_getEnumTagSinglePayload(v58, 1, v39) != 1)
    {
      v59 = v79;
      sub_26A2AA84C();
      sub_26A2AAC94();
      _ProtoSimpleItem_ReverseRich.text4.setter();
      sub_26A2AA8A0(v59, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v101, &qword_28036CB08, &unk_26A428720);
    v58 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v39);
  }

  sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v60 = v102;
  if (v102)
  {
    v61 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v61 + 8))(v60, v61);
    v62 = v95;
    sub_26A2AA84C();
    v63 = v94;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(v101);
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) != 1)
    {
      v64 = v81;
      sub_26A2AA84C();
      sub_26A2AAC94();
      _ProtoSimpleItem_ReverseRich.thumbnail.setter();
      sub_26A2AA8A0(v64, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v101, &qword_28036CB00, &unk_26A426450);
    v62 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v94);
  }

  sub_26A0E48F0(v62, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v65 = v102;
  if (v102)
  {
    v66 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v66 + 8))(v65, v66);
    v67 = v99;
    sub_26A2AA84C();
    v68 = v98;
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v98);
    __swift_destroy_boxed_opaque_existential_1(v101);
    if (__swift_getEnumTagSinglePayload(v67, 1, v68) != 1)
    {
      v69 = v83;
      sub_26A2AA84C();
      sub_26A2AAC94();
      _ProtoSimpleItem_ReverseRich.action.setter();
      sub_26A2AA8A0(v69, type metadata accessor for _ProtoActionProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v101, &qword_28036CAF8, &unk_26A426D30);
    v67 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v98);
  }

  sub_26A0E48F0(v67, &off_28036C7C0, &off_26A427400);
LABEL_26:

  result = _ProtoSimpleItem_ReverseRich.componentName.setter(v100, a9, v70, v71, v72);
  if (a11)
  {

    return _ProtoSimpleItem_ReverseRich.linkIdentifier.setter(a10, a11, v74, v75, v76);
  }

  return result;
}

Swift::String __swiftcall SimpleItemReverseRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v79 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v82 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v81 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v80 = &v78 - v13;
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
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v78 - v27;
  v29 = type metadata accessor for SimpleItemReverseRich(0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE0, &qword_26A439240);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  v35 = &v78 - v34;
  OUTLINED_FUNCTION_16_19();
  sub_26A2AAC94();
  if (v4)
  {
    _ProtoSimpleItem_ReverseRich.redactedProto.getter();
  }

  else
  {
    sub_26A2AAC94();
  }

  sub_26A2AA84C();
  v35[*(v32 + 32)] = v4 & 1;
  OUTLINED_FUNCTION_39_14();
  v36 = MEMORY[0x277D84F90];
  *&v35[*(v32 + 28)] = MEMORY[0x277D84F90];
  v37 = type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
  OUTLINED_FUNCTION_142(*&v35[*(v37 + 20)] + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &v83);
  sub_26A10FD9C();
  v38 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v38, v39, v16);
  if (v40)
  {
    *v20 = v36;
    *(v20 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v41 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
    v48 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v48, v49, v16);
    if (!v40)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2AA84C();
  }

  sub_26A2AA84C();
  v50 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v50);
  OUTLINED_FUNCTION_222();
  sub_26A106B50(v28, v51 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v28);
  SimpleItemReverseRich.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106B50(v25, v52 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  OUTLINED_FUNCTION_49_11();
  v53 = v80;
  SimpleItemReverseRich.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106B28(v53, v54 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v53, &qword_28036CB28, &qword_26A427980);
  SimpleItemReverseRich.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106B50(v25, v55 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_49_11();
  v56 = v81;
  SimpleItemReverseRich.thumbnail.getter();
  sub_26A106B00(v56, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v56, &qword_28036CB20, &unk_26A426470);
  v57 = v82;
  SimpleItemReverseRich.action.getter();
  sub_26A1069FC();
  sub_26A0E48F0(v57, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7B38(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v59, v60, v61, v62, v78, v79);

  v63 = swift_getKeyPath();
  sub_26A0F84CC(v63, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v64, v65, v66, v67, v78, v79);

  sub_26A0FD788(v68, v69, v70, v71, v72, v73, v74);
  sub_26A0E48F0(v35, &qword_28036CEE0, &qword_26A439240);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v76;
  result._countAndFlagsBits = v75;
  return result;
}

uint64_t type metadata accessor for SimpleItemReverseRich(uint64_t a1)
{
  result = qword_280371960;
  if (!qword_280371960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2AA84C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2AA8A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SimpleItemReverseRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
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
  OUTLINED_FUNCTION_6_19();
  sub_26A2AAC94();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_17_15();
  sub_26A2AA84C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SimpleItemReverseRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemReverseRich(0);
  *(inited + 64) = &protocol witness table for SimpleItemReverseRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_16_19();
  sub_26A2AAC94();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2AAB70(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2AAB70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2AAC28(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_ReverseRich(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2AAC94()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_20()
{

  return type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
}

void OUTLINED_FUNCTION_24_24()
{

  sub_26A26D9A8();
}

uint64_t OUTLINED_FUNCTION_26_21()
{

  return sub_26A2AA84C();
}

uint64_t OUTLINED_FUNCTION_39_14()
{

  return sub_26A2AA8A0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_40_13()
{

  return sub_26A2AA84C();
}

uint64_t OUTLINED_FUNCTION_49_15()
{

  return type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
}

uint64_t OUTLINED_FUNCTION_52_13()
{

  return sub_26A2AA84C();
}

uint64_t _ProtoVisualElement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for _ProtoVisualElement(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A2AAED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoVisualElement.imageElement.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5(v5, v10);
  OUTLINED_FUNCTION_5_27();
  if (v6)
  {
    sub_26A13440C();
LABEL_6:
    v8 = MEMORY[0x277D84F90];
    *v0 = MEMORY[0x277D84F90];
    v0[1] = v8;
    type metadata accessor for _ProtoImageElement(0);
    return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A2AB1F8();
    goto LABEL_6;
  }

  return OUTLINED_FUNCTION_29_14();
}

void (*_ProtoVisualElement.imageElement.modify())(void **a1, uint64_t a2)
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoImageElement(v7);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_5_4(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A2AB354();
      return sub_26A2AB1C8;
    }

    sub_26A2AB1F8();
  }

  v15 = MEMORY[0x277D84F90];
  *v9 = MEMORY[0x277D84F90];
  v9[1] = v15;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  return sub_26A2AB1C8;
}

uint64_t sub_26A2AB1F8()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t _ProtoVisualElement.colorElement.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5(v5, v11);
  OUTLINED_FUNCTION_5_27();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      return OUTLINED_FUNCTION_29_14();
    }

    sub_26A2AB1F8();
  }

  *v0 = MEMORY[0x277D84F90];
  v9 = type metadata accessor for _ProtoColorElement(0);
  OUTLINED_FUNCTION_23_21(v9);
  v10 = type metadata accessor for _ProtoColor(0);
  return OUTLINED_FUNCTION_18_19(v10);
}

uint64_t sub_26A2AB354()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A2AB3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_12_2();
  sub_26A2AB5E0();
  return a7(v11);
}

void (*_ProtoVisualElement.colorElement.modify())(void **a1, uint64_t a2)
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoColorElement(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_5_4(v11);
  OUTLINED_FUNCTION_2_30();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_24_25(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for _ProtoColor(0);
    OUTLINED_FUNCTION_19_17(v14);
    return sub_26A2AB5B0;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A2AB1F8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A2AB354();
  return sub_26A2AB5B0;
}

uint64_t sub_26A2AB5E0()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t _ProtoVisualElement.customElement.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5(v5, v11);
  OUTLINED_FUNCTION_5_27();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      return OUTLINED_FUNCTION_29_14();
    }

    sub_26A2AB1F8();
  }

  *v0 = MEMORY[0x277D84F90];
  v9 = type metadata accessor for _ProtoCustomElement(0);
  OUTLINED_FUNCTION_23_21(v9);
  v10 = type metadata accessor for _ProtoCustomCanvas(0);
  return OUTLINED_FUNCTION_18_19(v10);
}

void (*_ProtoVisualElement.customElement.modify())(void **a1, uint64_t a2)
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoCustomElement(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_5_4(v11);
  OUTLINED_FUNCTION_2_30();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_24_25(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for _ProtoCustomCanvas(0);
    OUTLINED_FUNCTION_19_17(v14);
    return sub_26A2AB8AC;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A2AB1F8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A2AB354();
  return sub_26A2AB8AC;
}

uint64_t _ProtoVisualElement.chartElement.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5(v5, v11);
  OUTLINED_FUNCTION_5_27();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      return OUTLINED_FUNCTION_29_14();
    }

    sub_26A2AB1F8();
  }

  *v0 = MEMORY[0x277D84F90];
  v9 = type metadata accessor for _ProtoCoreChartElement(0);
  OUTLINED_FUNCTION_23_21(v9);
  v10 = type metadata accessor for _ProtoCoreChart(0);
  return OUTLINED_FUNCTION_18_19(v10);
}

uint64_t sub_26A2ABA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A2AB354();
  v4 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

void (*_ProtoVisualElement.chartElement.modify())(void **a1, uint64_t a2)
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoCoreChartElement(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_5_4(v11);
  OUTLINED_FUNCTION_2_30();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_24_25(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for _ProtoCoreChart(0);
    OUTLINED_FUNCTION_19_17(v14);
    return sub_26A2ABBE0;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_26A2AB1F8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A2AB354();
  return sub_26A2ABBE0;
}

void sub_26A2ABC10(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 3);
  v6 = *(*a1 + 1);
  v7 = *(*a1 + 2);
  if (a2)
  {
    sub_26A2AB5E0();
    sub_26A13440C();
    sub_26A2AB354();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
    sub_26A2AB1F8();
  }

  else
  {
    sub_26A13440C();
    sub_26A2AB354();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
  }

  free(v5);
  free(v7);
  free(v6);

  free(v4);
}

uint64_t _ProtoVisualElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoVisualElement(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoVisualElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualElement(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoVisualElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoVisualElement(0);
  return nullsub_1;
}

uint64_t static _ProtoVisualElement.OneOf_Element.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for _ProtoCoreChartElement(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v37 = (v5 - v4);
  v6 = type metadata accessor for _ProtoCustomElement(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = type metadata accessor for _ProtoColorElement(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v35[1] = type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v36 = (v15 - v14);
  type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (v35 - v20);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25 = (v35 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371988, &unk_26A439308);
  OUTLINED_FUNCTION_41(v26);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  sub_26A2AB5E0();
  sub_26A2AB5E0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A2AB5E0();
      if (OUTLINED_FUNCTION_31_13() != 1)
      {
        goto LABEL_11;
      }

      sub_26A2AB354();
      v30 = OUTLINED_FUNCTION_22_1();
      v28 = static _ProtoColorElement.== infix(_:_:)(v30, v31);
      sub_26A2AB1F8();
      goto LABEL_10;
    case 2u:
      sub_26A2AB5E0();
      if (OUTLINED_FUNCTION_31_13() != 2)
      {
        goto LABEL_11;
      }

      sub_26A2AB354();
      v28 = static _ProtoCustomElement.== infix(_:_:)(v21, v10);
      sub_26A2AB1F8();
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_175();
      sub_26A2AB5E0();
      if (OUTLINED_FUNCTION_31_13() != 3)
      {
        goto LABEL_11;
      }

      v29 = v37;
      sub_26A2AB354();
      v28 = static _ProtoCoreChartElement.== infix(_:_:)(v18, v29);
      sub_26A2AB1F8();
LABEL_10:
      sub_26A2AB1F8();
      OUTLINED_FUNCTION_0_47();
      sub_26A2AB1F8();
      return v28 & 1;
    default:
      sub_26A2AB5E0();
      if (OUTLINED_FUNCTION_31_13())
      {
LABEL_11:
        sub_26A2AB1F8();
        sub_26A13440C();
LABEL_12:
        v28 = 0;
        return v28 & 1;
      }

      v33 = v36;
      sub_26A2AB354();
      sub_26A0DBACC(*v25, *v33);
      if ((v34 & 1) == 0 || (sub_26A0DB6A0(v25[1], v33[1]) & 1) == 0 || (sub_26A424794(), OUTLINED_FUNCTION_10_29(), sub_26A2AE8B0(), (sub_26A424B64() & 1) == 0))
      {
        sub_26A2AB1F8();
        sub_26A2AB1F8();
        OUTLINED_FUNCTION_0_47();
        sub_26A2AB1F8();
        goto LABEL_12;
      }

      sub_26A2AB1F8();
      sub_26A2AB1F8();
      OUTLINED_FUNCTION_0_47();
      sub_26A2AB1F8();
      v28 = 1;
      return v28 & 1;
  }
}

uint64_t sub_26A2AC468()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371970);
  __swift_project_value_buffer(v0, qword_280371970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_element";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "color_element";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "custom_element";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "chart_element";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoVisualElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C468 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280371970);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoVisualElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
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
      case 1:
        v5 = OUTLINED_FUNCTION_10_3();
        sub_26A2AC800(v5, v6, v7, v8);
        break;
      case 2:
        v17 = OUTLINED_FUNCTION_10_3();
        sub_26A2ACCF8(v17, v18, v19, v20);
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_10_3();
        sub_26A2AD1F0(v9, v10, v11, v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_10_3();
        sub_26A2AD6E8(v13, v14, v15, v16);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2AC800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoImageElement(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803719A8, &qword_26A4394F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C838, &qword_26A439300);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2AB354();
    sub_26A2AB354();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A2AB1F8();
    }

    else
    {
      sub_26A13440C();
      sub_26A2AB354();
      sub_26A2AB354();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A2AE8B0();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A0E4894(v18, v15, &qword_2803719A8, &qword_26A4394F8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2AB354();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A2AB354();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A2ACCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoColorElement(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803719B0, &qword_26A439500);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C838, &qword_26A439300);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2AB354();
    sub_26A2AB354();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2AB354();
      sub_26A2AB354();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A2AB1F8();
    }
  }

  sub_26A2AE8B0();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A0E4894(v18, v15, &qword_2803719B0, &qword_26A439500);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2AB354();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A2AB354();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A2AD1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCustomElement(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803719B8, &qword_26A439508);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C838, &qword_26A439300);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2AB354();
    sub_26A2AB354();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A2AB354();
      sub_26A2AB354();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A2AB1F8();
    }
  }

  sub_26A2AE8B0();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A0E4894(v18, v15, &qword_2803719B8, &qword_26A439508);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2AB354();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A2AB354();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A2AD6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCoreChartElement(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803719C0, &qword_26A439510);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C838, &qword_26A439300);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2AB354();
    sub_26A2AB354();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A13440C();
      sub_26A2AB354();
      sub_26A2AB354();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A2AB1F8();
    }
  }

  sub_26A2AE8B0();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A0E4894(v18, v15, &qword_2803719C0, &qword_26A439510);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2AB354();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A2AB354();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t _ProtoVisualElement.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  sub_26A0E4894(v1, &v25 - v5, &qword_28036C838, &qword_26A439300);
  v7 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = OUTLINED_FUNCTION_13_10();
      sub_26A2ADF54(v20, v21, v22, v23);
      break;
    case 2u:
      v12 = OUTLINED_FUNCTION_13_10();
      sub_26A2AE168(v12, v13, v14, v15);
      break;
    case 3u:
      v16 = OUTLINED_FUNCTION_13_10();
      sub_26A2AE37C(v16, v17, v18, v19);
      break;
    default:
      v8 = OUTLINED_FUNCTION_13_10();
      sub_26A2ADD44(v8, v9, v10, v11);
      break;
  }

  OUTLINED_FUNCTION_0_47();
  result = sub_26A2AB1F8();
  if (!v2)
  {
LABEL_8:
    type metadata accessor for _ProtoVisualElement(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2ADD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoImageElement(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C838, &qword_26A439300);
  v9 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A2AB354();
      sub_26A2AE8B0();
      sub_26A424A84();
      return sub_26A2AB1F8();
    }

    result = sub_26A2AB1F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2ADF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoColorElement(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C838, &qword_26A439300);
  v9 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2AB354();
      sub_26A2AE8B0();
      sub_26A424A84();
      return sub_26A2AB1F8();
    }

    result = sub_26A2AB1F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2AE168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoCustomElement(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C838, &qword_26A439300);
  v9 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A2AB354();
      sub_26A2AE8B0();
      sub_26A424A84();
      return sub_26A2AB1F8();
    }

    result = sub_26A2AB1F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2AE37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoCoreChartElement(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C838, &qword_26A439300);
  v9 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A2AB354();
      sub_26A2AE8B0();
      sub_26A424A84();
      return sub_26A2AB1F8();
    }

    result = sub_26A2AB1F8();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoVisualElement.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoVisualElement.OneOf_Element(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_22_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C840, &unk_26A425DF0);
  OUTLINED_FUNCTION_41(v13);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v18 = *(v17 + 56);
  sub_26A0E4894(v1, &v27 - v15, &qword_28036C838, &qword_26A439300);
  sub_26A0E4894(v0, &v16[v18], &qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_28(v16);
  if (v23)
  {
    OUTLINED_FUNCTION_28(&v16[v18]);
    if (v23)
    {
      sub_26A13440C();
LABEL_12:
      type metadata accessor for _ProtoVisualElement(0);
      sub_26A424794();
      OUTLINED_FUNCTION_10_29();
      sub_26A2AE8B0();
      v24 = sub_26A424B64();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  v19 = OUTLINED_FUNCTION_12_2();
  sub_26A0E4894(v19, v20, v21, v22);
  OUTLINED_FUNCTION_28(&v16[v18]);
  if (v23)
  {
    sub_26A2AB1F8();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A2AB354();
  v25 = static _ProtoVisualElement.OneOf_Element.== infix(_:_:)(v12, v6);
  sub_26A2AB1F8();
  sub_26A2AB1F8();
  sub_26A13440C();
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t _ProtoVisualElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualElement(0);
  sub_26A2AE8B0();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A2AE8B0()
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

uint64_t sub_26A2AE998(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2AE8B0();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2AEAA8(uint64_t a1)
{
  v2 = sub_26A2AE8B0();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2AEB60(uint64_t a1, uint64_t a2)
{
  sub_26A2AE8B0();

  return sub_26A4249B4();
}

void sub_26A2AEC08(uint64_t a1)
{
  sub_26A2AEC8C(319);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A2AEC8C(uint64_t a1)
{
  if (!qword_281579878[0])
  {
    type metadata accessor for _ProtoVisualElement.OneOf_Element(255);
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, qword_281579878);
    }
  }
}

uint64_t sub_26A2AECE4(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoColorElement(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoCustomElement(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for _ProtoCoreChartElement(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  v2 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_19(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_23_21(uint64_t a1)
{

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_24_25@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_29_14()
{

  return sub_26A2AB354();
}

uint64_t OUTLINED_FUNCTION_31_13()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t LongItemText.text1.getter()
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
  type metadata accessor for _ProtoLongItem_Text(0);
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
    sub_26A2B01EC();
  }

  return sub_26A2B01EC();
}

uint64_t LongItemText.action.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
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
  v13 = &v20 - v12;
  type metadata accessor for _ProtoLongItem_Text(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v21;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v10, 1, v1);
    if (v17)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v10, 1, v1);
      if (!v17)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A2B01EC();
    }

    sub_26A2B01EC();
    v14 = 0;
  }

  v18 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v18);
}

uint64_t _ProtoLongItem_Text.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v57 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v56 = (v54 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v55 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v59 = v54 - v14;
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v54[1] = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v54 - v28;
  OUTLINED_FUNCTION_2_31();
  v60 = v2;
  sub_26A2B0198();
  v30 = type metadata accessor for _ProtoLongItem_Text(0);
  v31 = *(v30 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v15);
  sub_26A0E48F0(v29, &qword_28036C7B8, &unk_26A425BF0);
  v33 = MEMORY[0x277D84F90];
  v34 = EnumTagSinglePayload == 1;
  v35 = v58;
  if (!v34)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v26, 1, v15);
    if (v34)
    {
      *v21 = v33;
      *(v21 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
      OUTLINED_FUNCTION_37(v26, 1, v15);
      if (!v34)
      {
        sub_26A0E48F0(v26, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A2B01EC();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A2B0484(v21, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v31, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2B01EC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v15);
  }

  v45 = *(v30 + 28);
  v46 = v59;
  sub_26A10FD9C();
  v47 = __swift_getEnumTagSinglePayload(v46, 1, v35);
  result = sub_26A0E48F0(v46, &off_28036C7C0, &off_26A427400);
  if (v47 != 1)
  {
    v49 = v55;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v49, 1, v35);
    if (v34)
    {
      v50 = v56;
      *v56 = v33;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v49, 1, v35);
      if (!v34)
      {
        sub_26A0E48F0(v49, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v50 = v56;
      sub_26A2B01EC();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v57);
    sub_26A2B0484(v50, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v45, &off_28036C7C0, &off_26A427400);
    sub_26A2B01EC();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v51, v52, v53, v35);
  }

  return result;
}

uint64_t LongItemText.init(text1:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoLongItem_Text(0);
  OUTLINED_FUNCTION_0_48();
  sub_26A2B076C(v6, v7, &protocol conformance descriptor for _ProtoLongItem_Text);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2AF8FC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a5;
  v8 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v8 - 8);
  v27[3] = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v30 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v30);
  v27[2] = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27[1] = v27 - v15;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v16);
  v17 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v17 - 8);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v18, v19);
  sub_26A2B01EC();
  v20 = type metadata accessor for _ProtoLongItem_Text(0);
  v21 = *(v20 + 24);
  sub_26A0E48F0(a1 + v21, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2B01EC();
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v16);

  *a1 = v28;
  a1[1] = a4;
  sub_26A10FD9C();
  v22 = v32;
  if (v32)
  {
    v23 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v23 + 8))(v22, v23);
    sub_26A2B01EC();
    v24 = v30;
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (__swift_getEnumTagSinglePayload(v12, 1, v24) != 1)
    {
      sub_26A2B01EC();
      sub_26A2B01EC();
      v25 = *(v20 + 28);
      sub_26A0E48F0(a1 + v25, &off_28036C7C0, &off_26A427400);
      sub_26A2B01EC();
      return __swift_storeEnumTagSinglePayload(a1 + v25, 0, 1, v24);
    }
  }

  else
  {
    sub_26A0E48F0(v31, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v30);
  }

  return sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
}

uint64_t LongItemText.init(text1:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoLongItem_Text(0);
  OUTLINED_FUNCTION_0_48();
  sub_26A2B076C(v4, v5, &protocol conformance descriptor for _ProtoLongItem_Text);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall LongItemText.description(redacted:)(Swift::Bool redacted)
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
  v10 = type metadata accessor for LongItemText(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CED8, &unk_26A426A60);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_4_28();
  sub_26A2B0198();
  if (redacted)
  {
    _ProtoLongItem_Text.redactedProto.getter(v14);
  }

  else
  {
    sub_26A2B0198();
  }

  sub_26A2B01EC();
  v21[*(v18 + 32)] = redacted;
  sub_26A2B0484(v17, type metadata accessor for LongItemText);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  LongItemText.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A109CAC(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  LongItemText.action.getter(v5);
  sub_26A109BA8();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7F48(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A1016F8(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036CED8, &unk_26A426A60);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for LongItemText(uint64_t a1)
{
  result = qword_2803719C8;
  if (!qword_2803719C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2B0198()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A2B01EC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LongItemText.jsonString(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = sub_26A4247D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for _ProtoLongItem_Text(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  if (redacted)
  {
    _ProtoLongItem_Text.redactedProto.getter(v15 - v14);
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_48();
    sub_26A2B076C(v16, v17, &protocol conformance descriptor for _ProtoLongItem_Text);
    v18 = sub_26A424954();
    if (!v1)
    {
      v2 = v18;
      v12 = v19;
    }

    (*(v5 + 8))(v11, v4);
    OUTLINED_FUNCTION_6_20();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_48();
    sub_26A2B076C(v20, v21, &protocol conformance descriptor for _ProtoLongItem_Text);
    v22 = sub_26A424954();
    if (!v1)
    {
      v2 = v22;
      v12 = v23;
    }

    (*(v5 + 8))(v8, v4);
  }

  v24 = v2;
  v25 = v12;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_26A2B0484(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t LongItemText.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoLongItem_Text(0);
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
  OUTLINED_FUNCTION_2_31();
  sub_26A2B0198();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_28();
  sub_26A2B01EC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t LongItemText.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for LongItemText(0);
  *(inited + 64) = &protocol witness table for LongItemText;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_28();
  sub_26A2B0198();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2B076C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2B076C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2B0824(uint64_t a1)
{
  result = type metadata accessor for _ProtoLongItem_Text(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return sub_26A2B0484(v0, type metadata accessor for _ProtoLongItem_Text);
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return type metadata accessor for _ProtoLongItem_Text(0);
}

uint64_t KeyValueStandard.pairs.getter()
{
  v3 = type metadata accessor for KeyValueStandard.Pair(0);
  v4 = OUTLINED_FUNCTION_79_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_12();
  v5 = MEMORY[0x277D84F90];
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_28_12();
    sub_26A10D764(v6, v7, v8);
    v5 = v17;
    v9 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
    OUTLINED_FUNCTION_79_0(v9);
    v11 = v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      sub_26A2B30AC();
      OUTLINED_FUNCTION_32_13();
      if (v15)
      {
        sub_26A10D764(v14 > 1, v2, 1);
        v5 = v17;
      }

      OUTLINED_FUNCTION_20_21();
      sub_26A2B3100();
      v11 += v13;
      --v0;
    }

    while (v0);
  }

  return v5;
}

uint64_t KeyValueStandard.init(pairs:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoKeyValue_Standard(0);
  OUTLINED_FUNCTION_0_49();
  sub_26A2B3208(v3, v4, &protocol conformance descriptor for _ProtoKeyValue_Standard);
  sub_26A4249C4();
}

uint64_t sub_26A2B0C3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for KeyValueStandard.Pair(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0) - 8;
  MEMORY[0x28223BE20](v8);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v16 = a4;
    v19 = MEMORY[0x277D84F90];
    sub_26A10D7BC(0, v9, 0);
    v10 = v19;
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_26A2B30AC();
      sub_26A2B3100();
      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A10D7BC(v13 > 1, v14 + 1, 1);
      }

      *(v19 + 16) = v14 + 1;
      sub_26A2B3100();
      v11 += v12;
      --v9;
    }

    while (v9);
    a4 = v16;
  }

  *a1 = v10;

  a1[1] = a3;
  a1[2] = a4;
  return result;
}

uint64_t KeyValueStandard.init(pairs:)(uint64_t a1)
{
  type metadata accessor for _ProtoKeyValue_Standard(0);
  OUTLINED_FUNCTION_0_49();
  v3 = sub_26A2B3208(v1, v2, &protocol conformance descriptor for _ProtoKeyValue_Standard);
  OUTLINED_FUNCTION_65_2(v3, v4, v5, v3, v6, v7, v8, v9, v11);
}

uint64_t KeyValueStandard.Pair.key.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v1 = OUTLINED_FUNCTION_41(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - v2;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v9 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2B3100();
  }

  return sub_26A2B3100();
}

uint64_t KeyValueStandard.Pair.value.getter()
{
  v3 = type metadata accessor for TextProperty(0);
  v4 = OUTLINED_FUNCTION_79_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_12();
  v5 = MEMORY[0x277D84F90];
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_28_12();
    sub_26A10D604(v6, v7, v8);
    v5 = v17;
    v9 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_79_0(v9);
    v11 = v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      sub_26A2B30AC();
      OUTLINED_FUNCTION_32_13();
      if (v15)
      {
        sub_26A10D604(v14 > 1, v2, 1);
        v5 = v17;
      }

      OUTLINED_FUNCTION_20_21();
      OUTLINED_FUNCTION_10_30();
      sub_26A2B3100();
      v11 += v13;
      --v0;
    }

    while (v0);
  }

  return v5;
}

uint64_t KeyValueStandard.Pair.init(key:value:)(void *a1, uint64_t a2)
{
  type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  v3 = sub_26A2B3208(&qword_28036F840, type metadata accessor for _ProtoKeyValue_Standard.Pair, &protocol conformance descriptor for _ProtoKeyValue_Standard.Pair);
  OUTLINED_FUNCTION_65_2(v3, v4, v5, v3, v6, v7, v8, v9, v11);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2B1540(void *a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 8))(v8, v9);
  sub_26A2B3100();
  v10 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  sub_26A0E48F0(a1 + v10, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2B3100();
  v20 = a1;
  __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v5);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_26A10D814(0, v11, 0);
    v12 = v24;
    v13 = a3 + 32;
    do
    {
      sub_26A0E5D68(v13, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v15 + 8))(v14, v15);
      sub_26A2B3100();
      __swift_destroy_boxed_opaque_existential_1(v21);
      v24 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26A10D814(v16 > 1, v17 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v17 + 1;
      sub_26A2B3100();
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  *v20 = v12;
  return result;
}

Swift::String __swiftcall KeyValueStandard.Pair.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v192 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v191 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v190 = v16 - v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  v202 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  v189 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47();
  v201 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v25);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD10, &qword_26A4395F0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v31);
  v32 = type metadata accessor for TextProperty(0);
  v33 = OUTLINED_FUNCTION_79_0(v32);
  v35 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v36);
  v38 = &v171 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v199 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v44);
  v177 = v1;
  v49 = KeyValueStandard.Pair.value.getter();
  v50 = *(v49 + 16);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v203 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v50, 0, v45, v46, v47, v48);
    v52 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v172 = v49;
    v53 = v49 + v52;
    v54 = v203;
    v186 = *(v35 + 72);
    v185 = xmmword_26A4263D0;
    v180 = xmmword_26A4263F0;
    v179 = xmmword_26A4263E0;
    v194 = v3;
    v187 = v38;
    v188 = v2;
    do
    {
      v196 = v53;
      v197 = v54;
      v55 = v199;
      sub_26A2B30AC();
      sub_26A2B30AC();
      v56 = *(v55 + 9) ^ 1;
      v198 = v50;
      if (v56)
      {
        _ProtoTextProperty.redactedProto.getter();
      }

      else
      {
        sub_26A2B30AC();
      }

      sub_26A2B3100();
      v57 = v193;
      *(v29 + *(v193 + 32)) = v56 & 1;
      OUTLINED_FUNCTION_16_20();
      sub_26A2B31B0(v38, v58);
      v59 = *(v57 + 28);
      *(v29 + v59) = v51;
      KeyPath = swift_getKeyPath();
      sub_26A0F7374(KeyPath, 0, 0, v61, v62, v63, v64, v65, v171, v172, v173, v174, v175, v176);

      if (*(v29 + 9))
      {
        v66 = 1702195828;
      }

      else
      {
        v66 = 0x65736C6166;
      }

      if (*(v29 + 9))
      {
        v67 = 0xE400000000000000;
      }

      else
      {
        v67 = 0xE500000000000000;
      }

      v68 = *(v29 + v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = OUTLINED_FUNCTION_14_13();
        sub_26A168034(v124, v125, v126, v68);
        v68 = v127;
      }

      v69 = v194;
      v195 = v56;
      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_26A168034(v70 > 1, v71 + 1, 1, v68);
        v68 = v128;
      }

      *(v68 + 16) = v71 + 1;
      v72 = v68 + 32 * v71;
      *(v72 + 32) = v185;
      *(v72 + 48) = v66;
      *(v72 + 56) = v67;
      v200 = v59;
      *(v29 + v59) = v68;
      type metadata accessor for _ProtoTextProperty(0);
      v73 = v191;
      sub_26A10FD9C();
      v74 = 1;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v69);
      sub_26A0E48F0(v73, &off_28036C7C0, &off_26A427400);
      if (EnumTagSinglePayload != 1)
      {
        v76 = v184;
        sub_26A10FD9C();
        v77 = OUTLINED_FUNCTION_12_1(v76);
        if (v78)
        {
          v79 = v182;
          *v182 = v51;
          v79[1] = 0;
          OUTLINED_FUNCTION_38_11(v77);
          OUTLINED_FUNCTION_12_1(v76);
          if (!v78)
          {
            sub_26A0E48F0(v184, &off_28036C7C0, &off_26A427400);
          }
        }

        else
        {
          sub_26A2B3100();
        }

        sub_26A2B3100();
        v74 = 0;
      }

      v80 = type metadata accessor for ActionProperty(0);
      __swift_storeEnumTagSinglePayload(v201, v74, 1, v80);
      v81 = v189;
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v81, 1, v80) == 1)
      {
        sub_26A0E48F0(v81, &qword_28036CB18, &unk_26A427670);
        v82 = v195;
      }

      else
      {
        v82 = v195;
        countAndFlagsBits = ActionProperty.description(redacted:)(v195 & 1)._countAndFlagsBits;
        OUTLINED_FUNCTION_9_27();
        sub_26A2B31B0(v81, v84);
        v85 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v85 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v85)
        {
          v86 = *(v29 + v200);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = OUTLINED_FUNCTION_14_13();
            sub_26A168034(v129, v130, v131, v86);
            v86 = v132;
          }

          v88 = *(v86 + 16);
          v87 = *(v86 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_26A168034(v87 > 1, v88 + 1, 1, v86);
            v86 = v133;
          }

          *(v86 + 16) = v88 + 1;
          v89 = v86 + 32 * v88;
          *(v89 + 32) = v179;
          *(v89 + 48) = countAndFlagsBits;
          *(v89 + 56) = v81;
          *(v29 + v200) = v86;
          v69 = v194;
        }

        else
        {
        }
      }

      sub_26A0E48F0(v201, &qword_28036CB18, &unk_26A427670);
      v90 = v192;
      sub_26A10FD9C();
      v91 = 1;
      v92 = __swift_getEnumTagSinglePayload(v90, 1, v69);
      sub_26A0E48F0(v90, &off_28036C7C0, &off_26A427400);
      if (v92 != 1)
      {
        v93 = v181;
        sub_26A10FD9C();
        v94 = OUTLINED_FUNCTION_12_1(v93);
        if (v78)
        {
          v95 = v183;
          *v183 = MEMORY[0x277D84F90];
          v95[1] = 0;
          OUTLINED_FUNCTION_38_11(v94);
          OUTLINED_FUNCTION_12_1(v93);
          if (!v78)
          {
            sub_26A0E48F0(v93, &off_28036C7C0, &off_26A427400);
          }
        }

        else
        {
          sub_26A2B3100();
        }

        sub_26A2B3100();
        v91 = 0;
      }

      __swift_storeEnumTagSinglePayload(v202, v91, 1, v80);
      v96 = v190;
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v96, 1, v80) == 1)
      {
        sub_26A0E48F0(v96, &qword_28036CB18, &unk_26A427670);
        v51 = MEMORY[0x277D84F90];
      }

      else
      {
        v97 = v96;
        v98 = ActionProperty.description(redacted:)(v82 & 1)._countAndFlagsBits;
        OUTLINED_FUNCTION_9_27();
        sub_26A2B31B0(v96, v99);
        v100 = HIBYTE(v96) & 0xF;
        if ((v96 & 0x2000000000000000) == 0)
        {
          v100 = v98 & 0xFFFFFFFFFFFFLL;
        }

        v51 = MEMORY[0x277D84F90];
        if (v100)
        {
          v101 = *(v29 + v200);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = OUTLINED_FUNCTION_14_13();
            sub_26A168034(v134, v135, v136, v101);
            v101 = v137;
          }

          v103 = *(v101 + 16);
          v102 = *(v101 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_26A168034(v102 > 1, v103 + 1, 1, v101);
            v101 = v138;
          }

          *(v101 + 16) = v103 + 1;
          v104 = v101 + 32 * v103;
          *(v104 + 32) = v180;
          *(v104 + 48) = v98;
          *(v104 + 56) = v97;
          *(v29 + v200) = v101;
        }

        else
        {
        }
      }

      v105 = sub_26A0E48F0(v202, &qword_28036CB18, &unk_26A427670);
      sub_26A100C10(v105, v106, v107, v108, v109, v110, v111);
      v113 = v112;
      v115 = v114;
      sub_26A0E48F0(v29, &qword_28036CD10, &qword_26A4395F0);
      OUTLINED_FUNCTION_16_20();
      sub_26A2B31B0(v199, v116);
      v54 = v197;
      v203 = v197;
      v122 = *(v197 + 16);
      v121 = *(v197 + 24);
      v38 = v187;
      if (v122 >= v121 >> 1)
      {
        sub_26A10D50C(v121 > 1, v122 + 1, 1, v117, v118, v119, v120);
        v54 = v203;
      }

      *(v54 + 16) = v122 + 1;
      v123 = v54 + 16 * v122;
      *(v123 + 32) = v113;
      *(v123 + 40) = v115;
      v53 = v196 + v186;
      v50 = v198 - 1;
    }

    while (v198 != 1);
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
  }

  v203 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
  sub_26A10D548();
  v139 = sub_26A424B54();
  v141 = v140;

  v203 = 0;
  v204 = 0xE000000000000000;
  sub_26A424EF4();
  MEMORY[0x26D65BA70](0xD00000000000001ELL, 0x800000026A4498F0);
  v142 = v175;
  KeyValueStandard.Pair.key.getter();
  v143 = v174;
  sub_26A2B30AC();
  v144 = *(v142 + 9);
  if (v144 == 1)
  {
    sub_26A2B30AC();
  }

  else
  {
    _ProtoTextProperty.redactedProto.getter();
  }

  OUTLINED_FUNCTION_10_30();
  v145 = v176;
  sub_26A2B3100();
  v146 = v193;
  *(v145 + *(v193 + 32)) = v144 ^ 1;
  sub_26A2B31B0(v143, type metadata accessor for TextProperty);
  *(v145 + *(v146 + 28)) = v51;
  v147 = swift_getKeyPath();
  sub_26A0F7374(v147, 0, 0, v148, v149, v150, v151, v152, v171, v172, v173, v174, v175, v176);

  sub_26A146724(*(v145 + 9), 0x4C726F4665666173, 0xEE00676E6967676FLL, 0);
  v153 = v178;
  TextProperty.focusAction.getter();
  sub_26A10966C();
  sub_26A0E48F0(v153, &qword_28036CB18, &unk_26A427670);
  TextProperty.selectedAction.getter();
  sub_26A10966C();
  v154 = sub_26A0E48F0(v153, &qword_28036CB18, &unk_26A427670);
  sub_26A100C10(v154, v155, v156, v157, v158, v159, v160);
  v162 = v161;
  v164 = v163;
  sub_26A0E48F0(v145, &qword_28036CD10, &qword_26A4395F0);
  sub_26A2B31B0(v142, type metadata accessor for TextProperty);
  MEMORY[0x26D65BA70](v162, v164);

  MEMORY[0x26D65BA70](0xD000000000000012, 0x800000026A449910);
  v165 = sub_26A31B838(v139, v141);
  v167 = v166;

  MEMORY[0x26D65BA70](v165, v167);

  MEMORY[0x26D65BA70](0x290A5D20200ALL, 0xE600000000000000);
  OUTLINED_FUNCTION_75();
  result._object = v169;
  result._countAndFlagsBits = v168;
  return result;
}