uint64_t sub_1B954B318()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.expandingComponentContent.getter()
{
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.expandingComponentContent.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*Searchfoundation_RFExpandableStandardCardSection.expandingComponentContent.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_RFExpandableStandardCardSection.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v0);
  return nullsub_1;
}

uint64_t static Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB8, &qword_1B96D8F48);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_238_0();
  sub_1B954B634();
  sub_1B954B634();
  static Searchfoundation_RFSummaryItemStandardCardSection.== infix(_:_:)();
  v5 = v4;
  sub_1B954B318();
  sub_1B954B318();
  return v5 & 1;
}

uint64_t sub_1B954B634()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t Searchfoundation_RFExpandingComponentContent.longItemStandardCardSection.getter@<X0>(_WORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_50(v7, v15);
  OUTLINED_FUNCTION_38_13();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E10, &qword_1B964D610);
LABEL_6:
    *a1 = 0;
    type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B954B318();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_61();
  OUTLINED_FUNCTION_288();
  return sub_1B954B83C();
}

uint64_t sub_1B954B83C()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B954B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B954B634();
  return a7(v7);
}

void (*Searchfoundation_RFExpandingComponentContent.longItemStandardCardSection.modify())(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_42(v12);
  v13 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v14 = OUTLINED_FUNCTION_28_23(v13);
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_4_61();
      OUTLINED_FUNCTION_128();
      sub_1B954B83C();
      return sub_1B954BAAC;
    }

    sub_1B954B318();
  }

  *v11 = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  return sub_1B954BAAC;
}

uint64_t Searchfoundation_RFExpandingComponentContent.referenceFootnoteCardSection.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_50(v7, v24);
  OUTLINED_FUNCTION_38_13();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_80();
      OUTLINED_FUNCTION_288();
      return sub_1B954B83C();
    }

    sub_1B954B318();
  }

  *a1 = 0;
  type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
}

uint64_t sub_1B954BC60()
{
  sub_1B8D9207C(v0, &qword_1EBAB8E10, &qword_1B964D610);
  OUTLINED_FUNCTION_128();
  sub_1B954B83C();
  v1 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void (*Searchfoundation_RFExpandingComponentContent.referenceFootnoteCardSection.modify())(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_42(v12);
  v13 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v14 = OUTLINED_FUNCTION_28_23(v13);
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8E10, &qword_1B964D610);
LABEL_6:
    *v11 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v16);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
    return sub_1B954BE9C;
  }

  OUTLINED_FUNCTION_177_1();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B954B318();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_80();
  OUTLINED_FUNCTION_128();
  sub_1B954B83C();
  return sub_1B954BE9C;
}

void sub_1B954BEE0()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B954B634();
    sub_1B8D9207C(v5, &qword_1EBAB8E10, &qword_1B964D610);
    sub_1B954B83C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B954B318();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB8E10, &qword_1B964D610);
    sub_1B954B83C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Searchfoundation_RFExpandingComponentContent.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Searchfoundation_RFExpandingComponentContent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_RFExpandingComponentContent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFExpandingComponentContent(v0);
  return nullsub_1;
}

void static Searchfoundation_RFExpandingComponentContent.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v24 = OUTLINED_FUNCTION_183(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v25 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  v26 = OUTLINED_FUNCTION_183(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  v28 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E08, &qword_1B964D608);
  OUTLINED_FUNCTION_183(v31);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  sub_1B954B634();
  sub_1B954B634();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_38();
    sub_1B954B634();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_80();
      sub_1B954B83C();
      v35 = OUTLINED_FUNCTION_128();
      static Searchfoundation_RFReferenceFootnoteCardSection.== infix(_:_:)(v35, v36);
      sub_1B954B318();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B954B318();
      OUTLINED_FUNCTION_2_74();
      sub_1B954B318();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_38();
    sub_1B954B634();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_4_61();
      sub_1B954B83C();
      static Searchfoundation_RFLongItemStandardCardSection.== infix(_:_:)(v30, v20);
      sub_1B954B318();
      goto LABEL_7;
    }
  }

  sub_1B954B318();
  sub_1B8D9207C(v34, &qword_1EBAB8E08, &qword_1B964D608);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFExpandingComponentContent.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(v0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Searchfoundation_RFExpandingComponentContent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B954C480()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0B80);
  __swift_project_value_buffer(v0, qword_1EBAD0B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "summary_item_standard_card_section";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expanding_component_content";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v9 = OUTLINED_FUNCTION_288();
      sub_1B954CB80(v9, v10, v2, v1);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_17_3();
      sub_1B954C6DC(v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1B954C6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB0, &qword_1B96D8F40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F0, &qword_1B96B9708);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B906D5EC(a1, v10, &qword_1EBAD0BB0, &qword_1B96D8F40);
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAD0BB0, &qword_1B96D8F40);
  }

  else
  {
    sub_1B954B83C();
    sub_1B954B83C();
    sub_1B8D9207C(v18, &qword_1EBACC3F0, &qword_1B96B9708);
    sub_1B954B83C();
    sub_1B954B83C();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B954CE94(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemStandardCardSection);
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBACC3F0, &qword_1B96B9708);
  }

  sub_1B906D5EC(v18, v16, &qword_1EBACC3F0, &qword_1B96B9708);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACC3F0, &qword_1B96B9708);
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBACC3F0, &qword_1B96B9708);
  }

  sub_1B954B83C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBACC3F0, &qword_1B96B9708);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAD0BB0, &qword_1B96D8F40);
  sub_1B954B83C();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

uint64_t sub_1B954CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  type metadata accessor for Searchfoundation_RFExpandingComponentContent(0);
  sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent, protocol conformance descriptor for Searchfoundation_RFExpandingComponentContent);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB0, &qword_1B96D8F40);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v13 = v3;
  sub_1B906D5EC(v3, v8, &qword_1EBAD0BB0, &qword_1B96D8F40);
  v10 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAD0BB0, &qword_1B96D8F40);
  }

  else
  {
    OUTLINED_FUNCTION_0_108();
    sub_1B954B83C();
    sub_1B954CE94(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFSummaryItemStandardCardSection);
    sub_1B964C740();
    OUTLINED_FUNCTION_13_34();
    result = sub_1B954B318();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*(v13 + *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0) + 20)) + 16))
  {
    return sub_1B964C290();
  }

  type metadata accessor for Searchfoundation_RFExpandingComponentContent(0);
  sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent, protocol conformance descriptor for Searchfoundation_RFExpandingComponentContent);
  OUTLINED_FUNCTION_231();
  result = sub_1B964C730();
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B954CE94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B954D1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B954CE94(&qword_1EBAD0C08, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, protocol conformance descriptor for Searchfoundation_RFExpandableStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B954D254(uint64_t a1)
{
  v2 = sub_1B954CE94(&qword_1EBACE608, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, protocol conformance descriptor for Searchfoundation_RFExpandableStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B954D2C4(uint64_t a1, uint64_t a2)
{
  sub_1B954CE94(&qword_1EBACE608, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, protocol conformance descriptor for Searchfoundation_RFExpandableStandardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B954D360()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0B98);
  __swift_project_value_buffer(v0, qword_1EBAD0B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "long_item_standard_card_section";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference_footnote_card_section";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFExpandingComponentContent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B954DAAC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B954D5B4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B954D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC408, &qword_1B96B9720);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B906D5EC(a1, v10, &qword_1EBAB8E10, &qword_1B964D610);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    sub_1B954B83C();
    sub_1B954B83C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B954B318();
    }

    else
    {
      sub_1B8D9207C(v18, &unk_1EBACC408, &qword_1B96B9720);
      sub_1B954B83C();
      sub_1B954B83C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B954CE94(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &unk_1EBACC408, &qword_1B96B9720);
  }

  sub_1B906D5EC(v18, v16, &unk_1EBACC408, &qword_1B96B9720);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &unk_1EBACC408, &qword_1B96B9720);
    v20 = v16;
    return sub_1B8D9207C(v20, &unk_1EBACC408, &qword_1B96B9720);
  }

  sub_1B954B83C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &unk_1EBACC408, &qword_1B96B9720);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8E10, &qword_1B964D610);
  sub_1B954B83C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B954DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC420, &unk_1B96D9370);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B906D5EC(a1, v10, &qword_1EBAB8E10, &qword_1B964D610);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    sub_1B954B83C();
    sub_1B954B83C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACC420, &unk_1B96D9370);
      sub_1B954B83C();
      sub_1B954B83C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B954B318();
    }
  }

  sub_1B954CE94(&qword_1EBACE628, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceFootnoteCardSection);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACC420, &unk_1B96D9370);
  }

  sub_1B906D5EC(v18, v16, &qword_1EBACC420, &unk_1B96D9370);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACC420, &unk_1B96D9370);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACC420, &unk_1B96D9370);
  }

  sub_1B954B83C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACC420, &unk_1B96D9370);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8E10, &qword_1B964D610);
  sub_1B954B83C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Searchfoundation_RFExpandingComponentContent.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  sub_1B906D5EC(v1, &v17 - v5, &qword_1EBAB8E10, &qword_1B964D610);
  v7 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = OUTLINED_FUNCTION_7_6();
    sub_1B954E2E8(v8, v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_6();
    sub_1B954E0D4(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_2_74();
  result = sub_1B954B318();
  if (!v2)
  {
LABEL_6:
    type metadata accessor for Searchfoundation_RFExpandingComponentContent(0);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B954E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B906D5EC(a1, v7, &qword_1EBAB8E10, &qword_1B964D610);
  v9 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B954B83C();
      sub_1B954CE94(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFLongItemStandardCardSection);
      sub_1B964C740();
      return sub_1B954B318();
    }

    result = sub_1B954B318();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B954E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B906D5EC(a1, v7, &qword_1EBAB8E10, &qword_1B964D610);
  v9 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B954B83C();
      sub_1B954CE94(&qword_1EBACE628, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection, protocol conformance descriptor for Searchfoundation_RFReferenceFootnoteCardSection);
      sub_1B964C740();
      return sub_1B954B318();
    }

    result = sub_1B954B318();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B954E76C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B954CE94(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B954E84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B954CE94(&qword_1EBAD0C00, type metadata accessor for Searchfoundation_RFExpandingComponentContent, protocol conformance descriptor for Searchfoundation_RFExpandingComponentContent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B954E8CC(uint64_t a1)
{
  v2 = sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent, protocol conformance descriptor for Searchfoundation_RFExpandingComponentContent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B954E93C(uint64_t a1, uint64_t a2)
{
  sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent, protocol conformance descriptor for Searchfoundation_RFExpandingComponentContent);

  return sub_1B964C5D0();
}

void sub_1B954EC24(uint64_t a1)
{
  sub_1B954ED20(319, &qword_1ED9EB5E8, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B954ED20(319, &qword_1ED9D3990, type metadata accessor for Searchfoundation_RFExpandingComponentContent, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B954ED20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B954ED84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D415D4);
}

uint64_t sub_1B954EDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D416E8);
}

uint64_t sub_1B954EE44(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B954EF14(uint64_t a1)
{
  sub_1B954ED20(319, &qword_1ED9D71F0, type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B954EFC8(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_50@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1B906D5EC(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_10_42(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_1B906D5EC(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_28@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1B906D5EC(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_43_18()
{

  return sub_1B906D5EC(v0, v1 + v4, v2, v3);
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.init()@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  OUTLINED_FUNCTION_191_2(v4);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_338_1(v1[8]);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_338_1(v1[9]);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_338_1(v1[11]);

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.init()@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  OUTLINED_FUNCTION_191_2(v4);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_338_1(v1[8]);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_338_1(v1[9]);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_338_1(v1[10]);

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_1B954F390@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v4;
  v5 = a1(0);
  OUTLINED_FUNCTION_191_2(v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_338_1(v2[8]);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_338_1(v2[9]);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_338_1(v2[10]);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_338_1(v1[6]);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_338_1(v1[7]);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_338_1(v1[8]);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_338_1(v1[10]);

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t Searchfoundation_RFFactItemImageRightCardSection.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_338_1(*(v1 + 24));
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void Searchfoundation_RFFactItemStandardCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemStandardCardSection.text2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B954F8DC()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v7 = *(*v6 + 10);
  v8 = (*v6)[3];
  v9 = (*v6)[4];
  v10 = (*v6)[1];
  v11 = **v6;
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_128();
    sub_1B954FECC(v13, v14, v3);
    sub_1B8D9207C(v11 + v7, v5, v4);
    sub_1B954FD00(v8, v11 + v7, v3);
    OUTLINED_FUNCTION_187_1();
    sub_1B9549818();
  }

  else
  {
    sub_1B8D9207C(v11 + v7, v0, v1);
    sub_1B954FD00(v9, v11 + v7, v3);
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v15);
}

void Searchfoundation_RFFactItemStandardCardSection.text3.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.text4.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.text5.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v3);
  OUTLINED_FUNCTION_62_10(v4);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v6 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v6, v7, v8);
  }

  return result;
}

uint64_t sub_1B954FD00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemStandardCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B954FECC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

void Searchfoundation_RFFactItemStandardCardSection.thumbnail2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95501B4()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 28));
  OUTLINED_FUNCTION_109_2(v8, v9);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1B95502B4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550464()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_103();
  v7 = v1(v6);
  OUTLINED_FUNCTION_106_5(*(v7 + 28));
  v0(0);
  v8 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  OUTLINED_FUNCTION_111_9();
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9550530()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B95505B4()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 32));
  OUTLINED_FUNCTION_109_2(v8, v9);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1B95506B4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550840(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_35();
  v5 = a1(v4);
  OUTLINED_FUNCTION_82_2(*(v5 + 32));
  v6 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_51_17(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B95508E4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B955099C()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 36));
  OUTLINED_FUNCTION_109_2(v8, v9);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1B9550A9C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.unit.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550C4C()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_103();
  v7 = v1(v6);
  OUTLINED_FUNCTION_106_5(*(v7 + 36));
  v0(0);
  v8 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  OUTLINED_FUNCTION_111_9();
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9550D18()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Searchfoundation_RFFactItemShortNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v3);
  OUTLINED_FUNCTION_62_10(v4);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v6 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v6, v7, v8);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemShortNumberCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemShortNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550FF8()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_103();
  v7 = v1(v6);
  OUTLINED_FUNCTION_106_5(*(v7 + 40));
  v0(0);
  v8 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  OUTLINED_FUNCTION_111_9();
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B95510C4()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9551148()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 44));
  OUTLINED_FUNCTION_109_2(v8, v9);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1B9551248()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B95513D4(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_35();
  v5 = a1(v4);
  OUTLINED_FUNCTION_82_2(*(v5 + 44));
  v6 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_51_17(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9551478()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B95514F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B955158C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Searchfoundation_RFFactItemShortNumberCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.unit.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.text5.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v3);
  OUTLINED_FUNCTION_62_10(v4);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v6 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v6, v7, v8);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.text5.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemHeroNumberCardSection.text5.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.unit.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemShortHeroNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v3);
  OUTLINED_FUNCTION_62_10(v4);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v6 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v6, v7, v8);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemShortHeroNumberCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemShortHeroNumberCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v0);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text3.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 36));
  sub_1B8DD9078(v5, v6, &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v3);
  OUTLINED_FUNCTION_62_10(v4);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v6 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v6, v7, v8);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B955334C()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 20));
  OUTLINED_FUNCTION_109_2(v8, v9);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1B955344C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemImageRightCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B95535D8(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_35();
  v5 = a1(v4);
  OUTLINED_FUNCTION_82_2(*(v5 + 20));
  v6 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_51_17(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B955367C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B95536FC()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  v8 = OUTLINED_FUNCTION_115(*(v7 + 24));
  OUTLINED_FUNCTION_109_2(v8, v9);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1B95537FC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemImageRightCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9553988(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_35();
  v5 = a1(v4);
  OUTLINED_FUNCTION_82_2(*(v5 + 24));
  v6 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_51_17(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9553A2C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Searchfoundation_RFFactItemImageRightCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 28));
  sub_1B8DD9078(v5, v6, &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1B9553B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B954FECC(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Searchfoundation_RFFactItemImageRightCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemImageRightCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9553DF8()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_753();

  return v2(v1, v0);
}

uint64_t sub_1B9553E88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0C10);
  __swift_project_value_buffer(v0, qword_1EBAD0C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "thumbnail2";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemStandardCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558DB4();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558E30();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B9557358();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9557284();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95572EC();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95542B0(v3, v4, v5, v6);
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B9557488();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95542B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B955498C(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemStandardCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v78 = v2;
  v79 = v5;
  v81 = v6;
  v82 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v74 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_266_0();
  v75 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v76 = type metadata accessor for Searchfoundation_RFVisualProperty(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v72 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_266_0();
  v73 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_93_10();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v77 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_94_12();
  v83 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  v31 = v83[7];
  v80 = v1;
  sub_1B8DD9078(v1 + v31, v26, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v32, v33, v34);
  if (v35)
  {
    sub_1B8D9207C(v26, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v38 = v78;
  }

  else
  {
    sub_1B954FD00(v26, v0, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v36, v37, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_129();
    v2 = v78;
    sub_1B964C740();
    v38 = v2;
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_26;
    }
  }

  sub_1B8DD9078(v80 + v83[8], v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v39, v40, v41);
  if (v35)
  {
    sub_1B8D9207C(v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B954FD00(v4, v3, v42);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v43, v44, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v2 = v38;
    sub_1B964C740();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    if (v38)
    {
      goto LABEL_26;
    }
  }

  v45 = v80;
  sub_1B8DD9078(v80 + v83[9], v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v46, v47, v48);
  if (v35)
  {
    sub_1B8D9207C(v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B954FD00(v22, v77, v49);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v50, v51, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_42_16();
    sub_1B964C740();
    OUTLINED_FUNCTION_144_8();
    if (v38)
    {
      goto LABEL_26;
    }
  }

  if (!*(*v45 + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v52, v53, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_42_16(), sub_1B964C730(), (v38 = v2) == 0))
  {
    if (!*(v45[1] + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v54, v55, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_42_16(), sub_1B964C730(), (v38 = v2) == 0))
    {
      v56 = v75;
      sub_1B8DD9078(v45 + v83[10], v75, &qword_1EBACC708, &unk_1B96D92F0);
      v57 = OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_178(v57, v58, v76);
      if (v35)
      {
        sub_1B8D9207C(v56, &qword_1EBACC708, &unk_1B96D92F0);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_85_6();
        sub_1B954FD00(v59, v73, v60);
        OUTLINED_FUNCTION_12_39();
        sub_1B955498C(v61, v62, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
        OUTLINED_FUNCTION_272_2();
        OUTLINED_FUNCTION_42_16();
        sub_1B964C740();
        OUTLINED_FUNCTION_144_8();
        if (v38)
        {
          goto LABEL_26;
        }
      }

      v63 = v74;
      sub_1B8DD9078(v45 + v83[11], v74, &qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_55_12();
      OUTLINED_FUNCTION_178(v64, v65, v66);
      if (v35)
      {
        sub_1B8D9207C(v63, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_25:
        sub_1B964C290();
        goto LABEL_26;
      }

      v67 = OUTLINED_FUNCTION_85_6();
      sub_1B954FD00(v67, v72, v68);
      OUTLINED_FUNCTION_12_39();
      sub_1B955498C(v69, v70, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_42_16();
      sub_1B964C740();
      OUTLINED_FUNCTION_144_8();
      if (!v38)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B955498C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void static Searchfoundation_RFFactItemStandardCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v174 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  v151 = v8;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_266_0();
  v159 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v156 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_266_0();
  v165 = v15;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v162 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  v168 = v19;
  v20 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFTextProperty(v20);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v177 = v22;
  OUTLINED_FUNCTION_230();
  v24 = MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_17(v24, v25, v26, v27, v28, v29, v30, v31, v151);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_219_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v34 = OUTLINED_FUNCTION_183(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  v179 = v35;
  OUTLINED_FUNCTION_230();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36_12(v37, v38, v39, v40, v41, v42, v43, v44, v152);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_94_12();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_682();
  v188 = v49;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_211();
  v186 = v46;
  v51 = *(type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0) + 28);
  v52 = *(v46 + 48);
  sub_1B8DD9078(v6 + v51, v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v187 = v4;
  sub_1B8DD9078(v4 + v51, v1 + v52, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v1);
  if (v111)
  {
    OUTLINED_FUNCTION_118(v1 + v52);
    if (!v111)
    {
      goto LABEL_32;
    }

    sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v1, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_118(v1 + v52);
    if (v111)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_1_89();
    sub_1B954FD00(v1 + v52, v2, v114);
    sub_1B8D5BA08(*v0, *v2);
    if ((v115 & 1) == 0 || *(v0 + 8) != *(v2 + 8))
    {
      OUTLINED_FUNCTION_5_51();
      sub_1B9549818();
      OUTLINED_FUNCTION_432();
LABEL_36:
      sub_1B9549818();
      v112 = &qword_1EBAB8DF8;
      v113 = &qword_1B96B9A80;
      goto LABEL_37;
    }

    v122 = sub_1B964C2B0();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v123, v124, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
    OUTLINED_FUNCTION_10_43();
    sub_1B9549818();
    sub_1B9549818();
    sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v122 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v53 = *(v186 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v54, v55, v56, v57);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v58, v59, v60, v61);
  OUTLINED_FUNCTION_118(v188);
  if (v111)
  {
    OUTLINED_FUNCTION_118(v188 + v53);
    if (v111)
    {
      sub_1B8D9207C(v188, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_44:
    v112 = &qword_1EBAB8E00;
    v113 = &qword_1B964D600;
    v116 = v188;
    goto LABEL_38;
  }

  sub_1B8DD9078(v188, v185, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v188 + v53);
  if (v117)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v188 + v53, v181, v118);
  v119 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08(v119, v120);
  if ((v121 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v111))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v112 = &qword_1EBAB8DF8;
    v113 = &qword_1B96B9A80;
    v116 = v188;
    goto LABEL_38;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v131, v132, MEMORY[0x1E69AAC10]);
  v133 = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v188, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v133 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  v62 = *(v186 + 48);
  v1 = v183;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v63, v64, v65, v66);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v67, v68, v69, v70);
  OUTLINED_FUNCTION_118(v183);
  if (v111)
  {
    OUTLINED_FUNCTION_118(v183 + v62);
    if (v111)
    {
      sub_1B8D9207C(v183, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_16;
    }

LABEL_32:
    v112 = &qword_1EBAB8E00;
    v113 = &qword_1B964D600;
LABEL_37:
    v116 = v1;
LABEL_38:
    sub_1B8D9207C(v116, v112, v113);
LABEL_39:
    v110 = 0;
    goto LABEL_40;
  }

  sub_1B8DD9078(v183, v179, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v183 + v62);
  if (v125)
  {
LABEL_31:
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_165_6(v183 + v62, v126, v127);
  v128 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08(v128, v129);
  if ((v130 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v111))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    goto LABEL_36;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v134, v135, MEMORY[0x1E69AAC10]);
  v136 = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v183, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v136 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  sub_1B8D5B224(*v6, *v187, v71, v72, v73, v74, v75, v76, v153, v156, v159, v162, v165, v168, v171, v174, v177, v179, v181, v183);
  if ((v83 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_1B8D5B224(v6[1], v187[1], v77, v78, v79, v80, v81, v82, v154, v157, v160, v163, v166, v169, v172, v175, v178, v180, v182, v184);
  if ((v84 & 1) == 0)
  {
    goto LABEL_39;
  }

  v85 = *(v173 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v86, v87, v88, v89);
  v90 = v170;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v95, v96);
  if (v111)
  {
    OUTLINED_FUNCTION_48(v170 + v85);
    if (!v111)
    {
      goto LABEL_69;
    }

    sub_1B8D9207C(v170, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B8DD9078(v170, v167, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_48(v170 + v85);
    if (v137)
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_0_107();
    sub_1B954FD00(v170 + v85, v161, v138);
    v139 = OUTLINED_FUNCTION_107_7();
    sub_1B8D5D124(v139, v140);
    if ((v141 & 1) == 0)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_58_15();
    if (!v111)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v142, v143, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_645_0();
    OUTLINED_FUNCTION_18_30();
    sub_1B9549818();
    OUTLINED_FUNCTION_121_5();
    sub_1B8D9207C(v170, &qword_1EBACC708, &unk_1B96D92F0);
    if ((v176 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v97 = *(v173 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v98, v99, v100, v101);
  v90 = v164;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v106, v107);
  if (v111)
  {
    OUTLINED_FUNCTION_48(v164 + v97);
    if (v111)
    {
      sub_1B8D9207C(v164, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_28;
    }

LABEL_69:
    v112 = &qword_1EBACCC18;
    v113 = &unk_1B96D8D70;
LABEL_73:
    v116 = v90;
    goto LABEL_38;
  }

  sub_1B8DD9078(v164, v158, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v164 + v97);
  if (v144)
  {
LABEL_68:
    OUTLINED_FUNCTION_44_15();
    sub_1B9549818();
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_0_107();
  sub_1B954FD00(v164 + v97, v155, v145);
  v146 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124(v146, v147);
  if ((v148 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v111))
  {
LABEL_72:
    OUTLINED_FUNCTION_28_24();
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v112 = &qword_1EBACC708;
    v113 = &unk_1B96D92F0;
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v149, v150, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v164, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v176 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v108, v109, MEMORY[0x1E69AAC10]);
  v110 = sub_1B964C850();
LABEL_40:
  OUTLINED_FUNCTION_264(v110);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95554B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D38, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9555534(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE640, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95555A4(uint64_t a1, uint64_t a2)
{
  sub_1B955498C(&qword_1EBACE640, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemStandardCardSection);

  return sub_1B964C5D0();
}

void sub_1B95556D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  while (1)
  {
    v8 = sub_1B964C3C0();
    if (v6 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        OUTLINED_FUNCTION_39_15();
        sub_1B9558DB4();
        break;
      case 2:
        OUTLINED_FUNCTION_39_15();
        sub_1B9558E30();
        break;
      case 3:
        OUTLINED_FUNCTION_39_15();
        sub_1B9557284();
        break;
      case 4:
        OUTLINED_FUNCTION_39_15();
        sub_1B95572EC();
        break;
      case 5:
        OUTLINED_FUNCTION_39_15();
        sub_1B9557358();
        break;
      case 6:
        v10 = OUTLINED_FUNCTION_39_15();
        a6(v10);
        break;
      case 7:
        OUTLINED_FUNCTION_39_15();
        sub_1B9557488();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95557E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9555984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D30, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9555A04(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE648, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9555A74(uint64_t a1, uint64_t a2)
{
  sub_1B955498C(&qword_1EBACE648, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9555B0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0C40);
  __swift_project_value_buffer(v0, qword_1EBAD0C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "number";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unit";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "text_5";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558DB4();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558E30();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9557284();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B95572EC();
        break;
      case 5:
        OUTLINED_FUNCTION_16_36();
        sub_1B9557358();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9555EE8(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9555EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v62 = v1;
  v63 = v5;
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  v59 = v9;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_682();
  v60 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_93_10();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_68();
  v15 = type metadata accessor for Searchfoundation_RFTextProperty(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v18 = MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_36_12(v18, v19, v20, v21, v22, v23, v24, v25, v58[0]);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v58 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = OUTLINED_FUNCTION_95_8();
  v64 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v30);
  v31 = v64[7];
  v61 = v6;
  sub_1B8DD9078(v6 + v31, v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v32 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v32, v33, v15);
  if (v34)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_45_18();
    sub_1B954FD00(v3, v2, v35);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v36, v37, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v1 = v62;
    sub_1B964C740();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_24;
    }
  }

  v38 = v61;
  sub_1B8DD9078(v61 + v64[8], v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v4, 1, v15);
  if (v34)
  {
    v42 = v15;
    sub_1B8D9207C(v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_13_35();
    sub_1B954FD00(v4, v29, v39);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v40, v41, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v42 = v15;
    OUTLINED_FUNCTION_53_19();
    sub_1B964C740();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_24;
    }

    v38 = v61;
  }

  v43 = v60;
  if (!*(*v38 + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v44, v45, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_53_19(), sub_1B964C730(), !v1))
  {
    if (!*(v38[1] + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v46, v47, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_53_19(), sub_1B964C730(), !v1))
    {
      sub_1B8DD9078(v38 + v64[9], v43, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v48 = v42;
      OUTLINED_FUNCTION_178(v43, 1, v42);
      if (v34)
      {
        sub_1B8D9207C(v43, &qword_1EBAB8DF8, &qword_1B96B9A80);
        v49 = v59;
      }

      else
      {
        OUTLINED_FUNCTION_13_35();
        sub_1B954FD00(v43, v58[2], v50);
        OUTLINED_FUNCTION_1_90();
        sub_1B955498C(v51, v52, protocol conformance descriptor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_53_19();
        sub_1B964C740();
        sub_1B9549818();
        if (v1)
        {
          goto LABEL_24;
        }

        v38 = v61;
        v49 = v59;
      }

      sub_1B8DD9078(v38 + v64[10], v49, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v53 = OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_178(v53, v54, v48);
      if (v34)
      {
        sub_1B8D9207C(v49, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_23:
        sub_1B964C290();
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_13_35();
      sub_1B954FD00(v49, v58[1], v55);
      OUTLINED_FUNCTION_1_90();
      sub_1B955498C(v56, v57, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_53_19();
      sub_1B964C740();
      sub_1B9549818();
      if (!v1)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemHeroNumberCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44_0();
  v121 = v6;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_48_16();
  v9 = MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_12(v9, v10, v11, v12, v13, v14, v15, v16, v121);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v121 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v122 = v22;
  OUTLINED_FUNCTION_230();
  v24 = MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_17(v24, v25, v26, v27, v28, v29, v30, v31, v121);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_682();
  v128 = v33;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_219_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v124 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_682();
  v132 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v121 - v42;
  v129 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  v130 = v4;
  v44 = *(v129 + 28);
  v131 = v35;
  v45 = *(v35 + 48);
  OUTLINED_FUNCTION_148_6(v4 + v44, v43);
  v46 = v2;
  OUTLINED_FUNCTION_148_6(v2 + v44, &v43[v45]);
  OUTLINED_FUNCTION_48(v43);
  if (v87)
  {
    OUTLINED_FUNCTION_48(&v43[v45]);
    if (v87)
    {
      sub_1B8D9207C(v43, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_27:
    v88 = &qword_1EBAB8E00;
    v89 = &qword_1B964D600;
LABEL_31:
    v92 = v43;
LABEL_32:
    sub_1B8D9207C(v92, v88, v89);
LABEL_33:
    v86 = 0;
    goto LABEL_34;
  }

  sub_1B8DD9078(v43, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(&v43[v45]);
  if (v87)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(&v43[v45], v19, v90);
  sub_1B8D5BA08(*v0, *v19);
  if ((v91 & 1) == 0 || *(v0 + 8) != v19[8])
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    sub_1B9549818();
    v88 = &qword_1EBAB8DF8;
    v89 = &qword_1B96B9A80;
    goto LABEL_31;
  }

  v98 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v99, v100, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v43, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v98 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  v48 = v129;
  v47 = v130;
  v49 = *(v129 + 32);
  v50 = v132;
  v51 = *(v131 + 48);
  OUTLINED_FUNCTION_148_6(v130 + v49, v132);
  OUTLINED_FUNCTION_148_6(v46 + v49, v50 + v51);
  OUTLINED_FUNCTION_48(v50);
  if (v87)
  {
    OUTLINED_FUNCTION_48(v50 + v51);
    if (v87)
    {
      sub_1B8D9207C(v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_38:
    v88 = &qword_1EBAB8E00;
    v89 = &qword_1B964D600;
    v92 = v50;
    goto LABEL_32;
  }

  sub_1B8DD9078(v50, v128, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v50 + v51);
  if (v93)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v50 + v51, v127, v94);
  v95 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08(v95, v96);
  if ((v97 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v87))
  {
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_121_5();
    v88 = &qword_1EBAB8DF8;
    v89 = &qword_1B96B9A80;
    v92 = v132;
    goto LABEL_32;
  }

  v101 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v102, v103, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  OUTLINED_FUNCTION_690();
  sub_1B9549818();
  sub_1B8D9207C(v132, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v101 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  sub_1B8D5B224(*v47, *v46, v52, v53, v54, v55, v56, v57, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  if ((v64 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B8D5B224(v47[1], v46[1], v58, v59, v60, v61, v62, v63, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  if ((v65 & 1) == 0)
  {
    goto LABEL_33;
  }

  v66 = *(v48 + 36);
  v67 = *(v131 + 48);
  v68 = v126;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v69, v70, v71, v72);
  sub_1B8DD9078(v46 + v66, v68 + v67, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v68);
  if (v87)
  {
    OUTLINED_FUNCTION_48(v68 + v67);
    if (!v87)
    {
      goto LABEL_55;
    }

    sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v68, v125, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_48(v68 + v67);
    if (v104)
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_1_89();
    OUTLINED_FUNCTION_165_6(v68 + v67, v105, v106);
    v107 = OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08(v107, v108);
    if ((v109 & 1) == 0)
    {
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v87)
    {
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v110, v111, MEMORY[0x1E69AAC10]);
    v112 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v112 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v73 = *(v131 + 48);
  v68 = v124;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v74, v75, v76, v77);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v78, v79, v80, v81);
  v82 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_110(v82, v83);
  if (v87)
  {
    OUTLINED_FUNCTION_48(v68 + v73);
    if (v87)
    {
      sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_23;
    }

LABEL_55:
    v88 = &qword_1EBAB8E00;
    v89 = &qword_1B964D600;
LABEL_59:
    v92 = v68;
    goto LABEL_32;
  }

  sub_1B8DD9078(v68, v122, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v68 + v73);
  if (v113)
  {
LABEL_54:
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v68 + v73, v121, v114);
  v115 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08(v115, v116);
  if ((v117 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v87))
  {
LABEL_58:
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v88 = &qword_1EBAB8DF8;
    v89 = &qword_1B96B9A80;
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v118, v119, MEMORY[0x1E69AAC10]);
  v120 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v120 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v84, v85, MEMORY[0x1E69AAC10]);
  v86 = sub_1B964C850();
LABEL_34:
  OUTLINED_FUNCTION_264(v86);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9556DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D28, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9556E34(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE600, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9556EA4(uint64_t a1, uint64_t a2)
{
  sub_1B955498C(&qword_1EBACE600, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemHeroNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9556F48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B9650810;
  v7 = v28 + v6 + v4[14];
  *(v28 + v6) = 1;
  *v7 = "number";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_53_5(v28 + v6 + v5);
  *v13 = 2;
  *v12 = "text_1";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v11();
  v14 = OUTLINED_FUNCTION_53_5(v28 + v6 + 2 * v5);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_99_12(v14, "text_2");
  (v11)(v16);
  v17 = OUTLINED_FUNCTION_53_5(v28 + v6 + 3 * v5);
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_99_12(v17, "text_3");
  (v11)(v19);
  v20 = OUTLINED_FUNCTION_53_5(v28 + v6 + 4 * v5);
  *v21 = 5;
  *v20 = "unit";
  *(v20 + 8) = 4;
  *(v20 + 16) = 2;
  v11();
  v22 = OUTLINED_FUNCTION_53_5(v28 + v6 + 5 * v5);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_99_12(v22, "text_4");
  (v11)(v24);
  v25 = OUTLINED_FUNCTION_53_5(v28 + v6 + 6 * v5);
  *v26 = 7;
  *v25 = "thumbnail";
  *(v25 + 8) = 9;
  *(v25 + 16) = 2;
  v11();
  return sub_1B964C760();
}

uint64_t sub_1B9557284()
{
  v0 = OUTLINED_FUNCTION_20_20();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v1, v2, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_753();
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

uint64_t sub_1B95572EC()
{
  v0 = OUTLINED_FUNCTION_20_20();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v1, v2, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

void sub_1B9557358()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B95573D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void sub_1B9557488()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_12_39();
  sub_1B955498C(v2, v3, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B9557530()
{
  OUTLINED_FUNCTION_273_0();
  v5 = v4;
  v87 = v1;
  v88 = v6;
  v86 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v80 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v81 = type metadata accessor for Searchfoundation_RFVisualProperty(v11);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v78 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v15 = OUTLINED_FUNCTION_183(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36_12(v17, v18, v19, v20, v21, v22, v23, v24, v78);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v79 = v30;
  OUTLINED_FUNCTION_230();
  v32 = MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_35_17(v32, v33, v34, v35, v36, v37, v38, v39, v78);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v78 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = OUTLINED_FUNCTION_68();
  v89 = v5(v44);
  v45 = v89[7];
  v85 = v0;
  sub_1B8DD9078(v0 + v45, v28, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v46, v47, v48);
  if (v49)
  {
    sub_1B8D9207C(v28, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v52 = v87;
  }

  else
  {
    sub_1B954FD00(v28, v3, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v50, v51, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_257_0();
    v1 = v87;
    sub_1B964C740();
    v52 = v1;
    OUTLINED_FUNCTION_690();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_27;
    }
  }

  v53 = v85;
  sub_1B8DD9078(v85 + v89[8], v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v54, v55, v56);
  if (v49)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B954FD00(v2, v43, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v57, v58, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_43_19();
    sub_1B964C740();
    v52 = v1;
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_27;
    }

    v53 = v85;
  }

  if (!*(*v53 + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v59, v60, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_43_19(), sub_1B964C730(), (v52 = v1) == 0))
  {
    if (!*(v53[1] + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v61, v62, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_43_19(), sub_1B964C730(), (v52 = v1) == 0))
    {
      v63 = v84;
      sub_1B8DD9078(v53 + v89[9], v84, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_31_25();
      OUTLINED_FUNCTION_178(v64, v65, v66);
      if (v49)
      {
        sub_1B8D9207C(v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        sub_1B954FD00(v63, v82, type metadata accessor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_1_90();
        sub_1B955498C(v67, v68, protocol conformance descriptor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_43_19();
        sub_1B964C740();
        OUTLINED_FUNCTION_146_6();
        if (v52)
        {
          goto LABEL_27;
        }
      }

      v69 = v83;
      sub_1B8DD9078(v53 + v89[10], v83, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_31_25();
      OUTLINED_FUNCTION_178(v70, v71, v72);
      if (v49)
      {
        sub_1B8D9207C(v69, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        sub_1B954FD00(v69, v79, type metadata accessor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_1_90();
        sub_1B955498C(v73, v74, protocol conformance descriptor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_43_19();
        sub_1B964C740();
        OUTLINED_FUNCTION_146_6();
        if (v52)
        {
          goto LABEL_27;
        }
      }

      v75 = v80;
      sub_1B8DD9078(v53 + v89[11], v80, &qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_178(v75, 1, v81);
      if (v49)
      {
        sub_1B8D9207C(v75, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_26:
        sub_1B964C290();
        goto LABEL_27;
      }

      sub_1B954FD00(v75, v78, type metadata accessor for Searchfoundation_RFVisualProperty);
      OUTLINED_FUNCTION_12_39();
      sub_1B955498C(v76, v77, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
      OUTLINED_FUNCTION_683_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_146_6();
      if (!v52)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_272_0();
}

void sub_1B9557BB8()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v165 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v161 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v162 = v12;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v166 = v14;
  v15 = OUTLINED_FUNCTION_201();
  v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  v163 = v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_48_16();
  v21 = MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_36_12(v21, v22, v23, v24, v25, v26, v27, v28, v160);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_211();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v31 = OUTLINED_FUNCTION_183(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  v167 = v32;
  OUTLINED_FUNCTION_230();
  v34 = MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_35_17(v34, v35, v36, v37, v38, v39, v40, v41, v160);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_682();
  v173 = v43;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v160 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v169 = v49;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_682();
  v174 = v52;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_94_12();
  v54 = v3(0);
  v175 = v47;
  v176 = v54;
  v55 = *(v54 + 28);
  v56 = *(v47 + 48);
  v177 = v7;
  sub_1B8DD9078(v7 + v55, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v57 = v5;
  sub_1B8DD9078(v5 + v55, v0 + v56, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v0);
  if (v122)
  {
    OUTLINED_FUNCTION_75(v0 + v56);
    if (v122)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_32:
    v123 = &qword_1EBAB8E00;
    v124 = &qword_1B964D600;
LABEL_36:
    v126 = v0;
LABEL_45:
    sub_1B8D9207C(v126, v123, v124);
LABEL_46:
    v121 = 0;
    goto LABEL_47;
  }

  sub_1B8DD9078(v0, v46, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v0 + v56);
  if (v122)
  {
    sub_1B9549818();
    goto LABEL_32;
  }

  sub_1B954FD00(v0 + v56, v1, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B8D5BA08(*v46, *v1);
  if ((v125 & 1) == 0 || v46[8] != *(v1 + 8))
  {
    sub_1B9549818();
    sub_1B9549818();
    v123 = &qword_1EBAB8DF8;
    v124 = &qword_1B96B9A80;
    goto LABEL_36;
  }

  v131 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v132, v133, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v131 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_6:
  v58 = v175;
  v59 = v176;
  v60 = *(v176 + 32);
  v61 = *(v175 + 48);
  v62 = v174;
  sub_1B8DD9078(v177 + v60, v174, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8DD9078(v57 + v60, v62 + v61, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v62);
  if (v122)
  {
    OUTLINED_FUNCTION_75(v62 + v61);
    if (!v122)
    {
      goto LABEL_40;
    }

    sub_1B8D9207C(v62, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v62, v173, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_75(v62 + v61);
    if (v127)
    {
      goto LABEL_39;
    }

    sub_1B954FD00(v62 + v61, v172, type metadata accessor for Searchfoundation_RFTextProperty);
    v128 = OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08(v128, v129);
    if ((v130 & 1) == 0)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v122)
    {
      goto LABEL_43;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v134, v135, MEMORY[0x1E69AAC10]);
    v136 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v62, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v136 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v69 = v177;
  sub_1B8D5B224(*v177, *v57, v63, v64, v65, v66, v67, v68, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
  if ((v76 & 1) == 0)
  {
    goto LABEL_46;
  }

  sub_1B8D5B224(v69[1], v57[1], v70, v71, v72, v73, v74, v75, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
  if ((v77 & 1) == 0)
  {
    goto LABEL_46;
  }

  v78 = *(v59 + 36);
  v79 = v16;
  v80 = *(v58 + 48);
  v81 = v171;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v82, v83, v84, v85);
  OUTLINED_FUNCTION_71_10();
  v62 = v81;
  sub_1B8DD9078(v86, v87, v88, v89);
  v90 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v90, v91, v79);
  if (v122)
  {
    OUTLINED_FUNCTION_178(v81 + v80, 1, v79);
    if (v122)
    {
      sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_18;
    }

LABEL_40:
    v123 = &qword_1EBAB8E00;
    v124 = &qword_1B964D600;
LABEL_44:
    v126 = v62;
    goto LABEL_45;
  }

  v137 = v81;
  v138 = v170;
  sub_1B8DD9078(v137, v170, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v62 + v80, 1, v79);
  if (v139)
  {
LABEL_39:
    sub_1B9549818();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_165_6(v62 + v80, v140, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B8D5BA08(*v138, *v78);
  if ((v141 & 1) == 0 || *(v138 + 8) != *(v78 + 8))
  {
LABEL_43:
    sub_1B9549818();
    sub_1B9549818();
    v123 = &qword_1EBAB8DF8;
    v124 = &qword_1B96B9A80;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v148, v149, MEMORY[0x1E69AAC10]);
  v150 = OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v62, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v150 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_18:
  v92 = *(v58 + 48);
  v93 = v169;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v94, v95, v96, v97);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v98, v99, v100, v101);
  v102 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v102, v103, v79);
  if (v122)
  {
    v104 = OUTLINED_FUNCTION_81_10();
    OUTLINED_FUNCTION_178(v104, v105, v79);
    if (v122)
    {
      sub_1B8D9207C(v93, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_23;
    }

LABEL_61:
    v123 = &qword_1EBAB8E00;
    v124 = &qword_1B964D600;
LABEL_65:
    v126 = v93;
    goto LABEL_45;
  }

  sub_1B8DD9078(v93, v167, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v142 = OUTLINED_FUNCTION_81_10();
  OUTLINED_FUNCTION_178(v142, v143, v79);
  if (v144)
  {
    sub_1B9549818();
    goto LABEL_61;
  }

  sub_1B954FD00(v93 + v92, v163, type metadata accessor for Searchfoundation_RFTextProperty);
  v145 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08(v145, v146);
  if ((v147 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v122))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v123 = &qword_1EBAB8DF8;
    v124 = &qword_1B96B9A80;
    goto LABEL_65;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v155, v156, MEMORY[0x1E69AAC10]);
  v157 = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v93, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v157 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  v106 = *(v164 + 48);
  v107 = v166;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v108, v109, v110, v111);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v112, v113, v114, v115);
  v116 = OUTLINED_FUNCTION_207();
  v117 = v165;
  OUTLINED_FUNCTION_44(v116, v118);
  if (v122)
  {
    OUTLINED_FUNCTION_48(v107 + v106);
    if (v122)
    {
      sub_1B8D9207C(v107, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_28;
    }

LABEL_71:
    v123 = &qword_1EBACCC18;
    v124 = &unk_1B96D8D70;
LABEL_75:
    v126 = v107;
    goto LABEL_45;
  }

  sub_1B8DD9078(v107, v162, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v107 + v106);
  if (v151)
  {
    sub_1B9549818();
    goto LABEL_71;
  }

  sub_1B954FD00(v107 + v106, v161, type metadata accessor for Searchfoundation_RFVisualProperty);
  v152 = OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124(v152, v153);
  if ((v154 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v122))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v123 = &qword_1EBACC708;
    v124 = &unk_1B96D92F0;
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v158, v159, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v107, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v117 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v119, v120, MEMORY[0x1E69AAC10]);
  v121 = sub_1B964C850();
LABEL_47:
  OUTLINED_FUNCTION_264(v121);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9558844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D20, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortHeroNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95588C4(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE5E0, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortHeroNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9558934(uint64_t a1, uint64_t a2)
{
  sub_1B955498C(&qword_1EBACE5E0, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemShortHeroNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95589CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3C90);
  __swift_project_value_buffer(v0, qword_1EBAB3C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "number";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
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
  *v13 = "text_3";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "thumbnail";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_4";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A7C4();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A840();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558DB4();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558E30();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9558EAC(v3, v4, v5, v6);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9558F60(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

void sub_1B9558DB4()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B9558E30()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9558EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B955498C(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9558F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v100 = v6;
  v101 = v7;
  v99 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v96 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v97 = type metadata accessor for Searchfoundation_RFVisualProperty(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v91 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v16 = OUTLINED_FUNCTION_183(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v18 = MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35_17(v18, v19, v20, v21, v22, v23, v24, v25, v90);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_94_12();
  v31 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44_0();
  v90 = v33;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_48_16();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_47_16();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_93_10();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_211();
  v98 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  sub_1B8DD9078(v1 + v98[5], v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v38 = OUTLINED_FUNCTION_105_9();
  OUTLINED_FUNCTION_178(v38, v39, v31);
  if (v40)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_45_18();
    sub_1B954FD00(v0, v4, v41);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v42, v43, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v44 = v98[6];
  v101 = v1;
  sub_1B8DD9078(v1 + v44, v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v3, 1, v31);
  if (v40)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_87_7();
    sub_1B954FD00(v3, v5, v45);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v46, v47, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v2 = v1;
    sub_1B964C740();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_27;
    }
  }

  v48 = v98;
  v49 = OUTLINED_FUNCTION_155_5(v98[7]);
  sub_1B8DD9078(v49, v29, v50, v51);
  v52 = OUTLINED_FUNCTION_207();
  v53 = v31;
  OUTLINED_FUNCTION_178(v52, v54, v31);
  v55 = v96;
  if (v40)
  {
    sub_1B8D9207C(v29, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v56 = v97;
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B954FD00(v29, v93, v57);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v58, v59, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v60 = OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_145_9(v60, 3, v31, v61);
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v56 = v97;
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v62 = v94;
  v63 = OUTLINED_FUNCTION_155_5(v48[8]);
  sub_1B8DD9078(v63, v62, v64, v65);
  v66 = OUTLINED_FUNCTION_105_9();
  OUTLINED_FUNCTION_178(v66, v67, v53);
  v68 = v95;
  if (v40)
  {
    sub_1B8D9207C(v62, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B954FD00(v62, v92, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v69, v70, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v71 = OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_145_9(v71, 4, v53, v72);
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_27;
    }

    v68 = v95;
  }

  v73 = OUTLINED_FUNCTION_155_5(v48[9]);
  sub_1B8DD9078(v73, v55, v74, v75);
  OUTLINED_FUNCTION_178(v55, 1, v56);
  if (v40)
  {
    sub_1B8D9207C(v55, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    OUTLINED_FUNCTION_28_24();
    v76 = v55;
    v77 = v91;
    sub_1B954FD00(v76, v91, v78);
    OUTLINED_FUNCTION_12_39();
    v81 = sub_1B955498C(v79, v80, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
    OUTLINED_FUNCTION_145_9(v77, 5, v56, v81);
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v82 = OUTLINED_FUNCTION_155_5(v48[10]);
  sub_1B8DD9078(v82, v68, v83, v84);
  v85 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v85, v86, v53);
  if (v40)
  {
    sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_26:
    sub_1B964C290();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_87_7();
  sub_1B954FD00(v68, v90, v87);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v88, v89, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_257_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_202();
  sub_1B9549818();
  if (!v48)
  {
    goto LABEL_26;
  }

LABEL_27:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemDetailedNumberCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v173 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v168 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v170 = v10;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v174 = v12;
  v13 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFTextProperty(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v166 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_682();
  v171 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_682();
  v176 = v19;
  OUTLINED_FUNCTION_230();
  v21 = MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_17(v21, v22, v23, v24, v25, v26, v27, v28, v165);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_219_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v31 = OUTLINED_FUNCTION_183(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  v167 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_682();
  v175 = v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_47_16();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36_12(v37, v38, v39, v40, v41, v42, v43, v44, v165);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v165 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44_0();
  v169 = v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_48_16();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_682();
  v184 = v54;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v55);
  v56 = OUTLINED_FUNCTION_95_8();
  v185 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v56);
  v57 = *(v185 + 20);
  v182 = v48;
  v183 = v5;
  v58 = *(v48 + 48);
  OUTLINED_FUNCTION_148_6(v5 + v57, v0);
  v59 = v3;
  OUTLINED_FUNCTION_148_6(v3 + v57, v0 + v58);
  OUTLINED_FUNCTION_9_2();
  if (v110)
  {
    OUTLINED_FUNCTION_57(v0 + v58);
    if (v110)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_35:
    v111 = &qword_1EBAB8E00;
    v112 = &qword_1B964D600;
LABEL_39:
    v115 = v0;
LABEL_40:
    sub_1B8D9207C(v115, v111, v112);
LABEL_41:
    v109 = 0;
    goto LABEL_42;
  }

  sub_1B8DD9078(v0, v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v0 + v58);
  if (v110)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v0 + v58, v1, v113);
  sub_1B8D5BA08(*v47, *v1);
  if ((v114 & 1) == 0 || v47[8] != *(v1 + 8))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    sub_1B9549818();
    v111 = &qword_1EBAB8DF8;
    v112 = &qword_1B96B9A80;
    goto LABEL_39;
  }

  v122 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v123, v124, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v122 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_6:
  v60 = v184;
  v61 = *(v185 + 24);
  v62 = v182;
  v63 = *(v182 + 48);
  OUTLINED_FUNCTION_36_11(v183 + v61, v184);
  OUTLINED_FUNCTION_36_11(v59 + v61, v60 + v63);
  OUTLINED_FUNCTION_57(v60);
  if (v110)
  {
    OUTLINED_FUNCTION_57(v60 + v63);
    if (v110)
    {
      sub_1B8D9207C(v60, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_46:
    v111 = &qword_1EBAB8E00;
    v112 = &qword_1B964D600;
    v115 = v60;
    goto LABEL_40;
  }

  v116 = v181;
  sub_1B8DD9078(v60, v181, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v60 + v63);
  if (v117)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_1_89();
  v118 = v60 + v63;
  v119 = v179;
  sub_1B954FD00(v118, v179, v120);
  sub_1B8D5BA08(*v116, *v119);
  if ((v121 & 1) == 0 || *(v116 + 8) != *(v119 + 8))
  {
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_121_5();
    v111 = &qword_1EBAB8DF8;
    v112 = &qword_1B96B9A80;
    v115 = v184;
    goto LABEL_40;
  }

  v135 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v136, v137, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  OUTLINED_FUNCTION_186();
  sub_1B9549818();
  sub_1B8D9207C(v184, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v135 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_11:
  v64 = *(v62 + 48);
  v65 = v180;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v66, v67, v68, v69);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v70, v71, v72, v73);
  OUTLINED_FUNCTION_75(v65);
  if (v110)
  {
    OUTLINED_FUNCTION_75(v65 + v64);
    if (!v110)
    {
      goto LABEL_63;
    }

    sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v65, v178, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v125 = OUTLINED_FUNCTION_81_10();
    OUTLINED_FUNCTION_110(v125, v126);
    if (v127)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1_89();
    sub_1B954FD00(v65 + v64, v176, v128);
    v129 = OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08(v129, v130);
    if ((v131 & 1) == 0)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v110)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v132, v133, MEMORY[0x1E69AAC10]);
    v134 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v134 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v74 = *(v62 + 48);
  v65 = v177;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v75, v76, v77, v78);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v79, v80, v81, v82);
  OUTLINED_FUNCTION_75(v65);
  if (v110)
  {
    OUTLINED_FUNCTION_75(v65 + v74);
    if (!v110)
    {
      goto LABEL_63;
    }

    sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v65, v175, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v138 = OUTLINED_FUNCTION_81_10();
    OUTLINED_FUNCTION_110(v138, v139);
    if (v140)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1_89();
    sub_1B954FD00(v65 + v74, v171, v141);
    v142 = OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08(v142, v143);
    if ((v144 & 1) == 0)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v110)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v152, v153, MEMORY[0x1E69AAC10]);
    v154 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v154 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v83 = *(v172 + 48);
  v84 = v174;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v85, v86, v87, v88);
  v0 = v84;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v89, v90, v91, v92);
  v93 = OUTLINED_FUNCTION_602();
  v94 = v173;
  OUTLINED_FUNCTION_44(v93, v95);
  if (v110)
  {
    OUTLINED_FUNCTION_48(v84 + v83);
    if (v110)
    {
      sub_1B8D9207C(v84, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_26;
    }

LABEL_71:
    v111 = &qword_1EBACCC18;
    v112 = &unk_1B96D8D70;
    goto LABEL_39;
  }

  v145 = v84;
  v146 = v170;
  sub_1B8DD9078(v145, v170, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v0 + v83);
  if (v147)
  {
    OUTLINED_FUNCTION_44_15();
    sub_1B9549818();
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_0_107();
  v148 = v0 + v83;
  v149 = v168;
  sub_1B954FD00(v148, v168, v150);
  sub_1B8D5D124(*v146, *v149);
  if ((v151 & 1) == 0 || *(v146 + 8) != *(v149 + 8))
  {
    OUTLINED_FUNCTION_28_24();
    sub_1B9549818();
    sub_1B9549818();
    v111 = &qword_1EBACC708;
    v112 = &unk_1B96D92F0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v163, v164, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_26:
  v96 = *(v62 + 48);
  v65 = v169;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v97, v98, v99, v100);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v101, v102, v103, v104);
  v105 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_110(v105, v106);
  if (v110)
  {
    OUTLINED_FUNCTION_48(v65 + v96);
    if (v110)
    {
      sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_31;
    }

LABEL_63:
    v111 = &qword_1EBAB8E00;
    v112 = &qword_1B964D600;
LABEL_67:
    v115 = v65;
    goto LABEL_40;
  }

  sub_1B8DD9078(v65, v167, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v65 + v96);
  if (v155)
  {
LABEL_62:
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v65 + v96, v166, v156);
  v157 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08(v157, v158);
  if ((v159 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v110))
  {
LABEL_66:
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v111 = &qword_1EBAB8DF8;
    v112 = &qword_1B96B9A80;
    goto LABEL_67;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v160, v161, MEMORY[0x1E69AAC10]);
  v162 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v162 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v107, v108, MEMORY[0x1E69AAC10]);
  v109 = sub_1B964C850();
LABEL_42:
  OUTLINED_FUNCTION_264(v109);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B955A36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D18, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemDetailedNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B955A3EC(uint64_t a1)
{
  v2 = sub_1B955498C(qword_1ED9C9008, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemDetailedNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B955A45C(uint64_t a1, uint64_t a2)
{
  sub_1B955498C(qword_1ED9C9008, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemDetailedNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B955A4F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0C70);
  __swift_project_value_buffer(v0, qword_1EBAD0C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "number";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemImageRightCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B955A8BC(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A840();
        break;
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A7C4();
        break;
    }
  }
}

void sub_1B955A7C4()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B955A840()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v1(v0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v2, v3, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B955A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B955498C(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemImageRightCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v51 = v1;
  v52 = v3;
  v4 = v0;
  v53 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v48 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v49 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v47 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v13 = OUTLINED_FUNCTION_183(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_219_0();
  v25 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  v26 = v25[5];
  v50 = v4;
  sub_1B8DD9078(v4 + v26, v19, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v27, v28, v29);
  if (v30)
  {
    sub_1B8D9207C(v19, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v35 = v51;
  }

  else
  {
    OUTLINED_FUNCTION_13_35();
    sub_1B954FD00(v19, v2, v31);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v32, v33, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v34 = v51;
    sub_1B964C740();
    v35 = v34;
    sub_1B9549818();
    if (v34)
    {
      goto LABEL_15;
    }
  }

  v36 = v50;
  sub_1B8DD9078(v50 + v25[6], v16, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v37, v38, v39);
  if (v30)
  {
    sub_1B8D9207C(v16, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_13_35();
    sub_1B954FD00(v16, v23, v40);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v41, v42, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    sub_1B9549818();
    if (v35)
    {
      goto LABEL_15;
    }

    v36 = v50;
  }

  v43 = v48;
  sub_1B8DD9078(v36 + v25[7], v48, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_178(v43, 1, v49);
  if (v30)
  {
    sub_1B8D9207C(v43, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_14:
    sub_1B964C290();
    goto LABEL_15;
  }

  sub_1B954FD00(v43, v47, type metadata accessor for Searchfoundation_RFVisualProperty);
  OUTLINED_FUNCTION_12_39();
  sub_1B955498C(v44, v45, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  OUTLINED_FUNCTION_272_2();
  sub_1B964C740();
  sub_1B9549818();
  if (!v35)
  {
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemImageRightCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v72 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v69 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v70 = v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v73 = v12;
  v13 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFTextProperty(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_266_0();
  v75 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v18 = OUTLINED_FUNCTION_183(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  v74 = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_219_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  v77 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_95_8();
  v76 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v25);
  v26 = *(v76 + 20);
  v27 = *(v21 + 48);
  v78 = v5;
  sub_1B8DD9078(v5 + v26, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8DD9078(v3 + v26, v0 + v27, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v0);
  if (v44)
  {
    OUTLINED_FUNCTION_48(v0 + v27);
    if (v44)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_20:
    v45 = &qword_1EBAB8E00;
    v46 = &qword_1B964D600;
LABEL_24:
    v49 = v0;
LABEL_43:
    sub_1B8D9207C(v49, v45, v46);
LABEL_44:
    v43 = 0;
    goto LABEL_45;
  }

  sub_1B8DD9078(v0, v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v0 + v27);
  if (v44)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v0 + v27, v75, v47);
  sub_1B8D5BA08(*v1, *v75);
  if ((v48 & 1) == 0 || *(v1 + 8) != *(v75 + 8))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    sub_1B9549818();
    v45 = &qword_1EBAB8DF8;
    v46 = &qword_1B96B9A80;
    goto LABEL_24;
  }

  v56 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v57, v58, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v56 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v28 = *(v76 + 24);
  v29 = *(v21 + 48);
  OUTLINED_FUNCTION_36_11(v78 + v28, v77);
  OUTLINED_FUNCTION_36_11(v3 + v28, v77 + v29);
  OUTLINED_FUNCTION_48(v77);
  if (v44)
  {
    OUTLINED_FUNCTION_48(v77 + v29);
    if (v44)
    {
      sub_1B8D9207C(v77, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_28:
    v45 = &qword_1EBAB8E00;
    v46 = &qword_1B964D600;
LABEL_32:
    v49 = v77;
    goto LABEL_43;
  }

  sub_1B8DD9078(v77, v74, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v77 + v29);
  if (v50)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_165_6(v77 + v29, v51, v52);
  v53 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08(v53, v54);
  if ((v55 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v44))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v45 = &qword_1EBAB8DF8;
    v46 = &qword_1B96B9A80;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v64, v65, MEMORY[0x1E69AAC10]);
  v66 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v77, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v66 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_11:
  v30 = *(v71 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v31, v32, v33, v34);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v35, v36, v37, v38);
  v39 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v39, v40);
  if (v44)
  {
    OUTLINED_FUNCTION_48(v73 + v30);
    if (v44)
    {
      sub_1B8D9207C(v73, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_16;
    }

LABEL_38:
    v45 = &qword_1EBACCC18;
    v46 = &unk_1B96D8D70;
LABEL_42:
    v49 = v73;
    goto LABEL_43;
  }

  sub_1B8DD9078(v73, v70, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v73 + v30);
  if (v59)
  {
    OUTLINED_FUNCTION_44_15();
    sub_1B9549818();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_107();
  sub_1B954FD00(v73 + v30, v69, v60);
  v61 = OUTLINED_FUNCTION_102_12();
  sub_1B8D5D124(v61, v62);
  if ((v63 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v44))
  {
    OUTLINED_FUNCTION_28_24();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v45 = &qword_1EBACC708;
    v46 = &unk_1B96D92F0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v67, v68, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v73, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v41, v42, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_272_2();
  v43 = sub_1B964C850();
LABEL_45:
  OUTLINED_FUNCTION_264(v43);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B955B4D0()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B955498C(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B955B5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D10, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemImageRightCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B955B620(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE5D8, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemImageRightCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B955B690(uint64_t a1, uint64_t a2)
{
  sub_1B955498C(&qword_1EBACE5D8, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemImageRightCardSection);

  return sub_1B964C5D0();
}

void sub_1B955BDF8(uint64_t a1)
{
  sub_1B955BF44(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B955BF44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B955BFF8(uint64_t a1)
{
  sub_1B955BF44(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_83Tm_0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_267_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v5 = *(v1 + 44);
    }
  }

  v7 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_84Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1();
      if (*(v7 + 84) == v3)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v6 = *(v2 + 44);
      }
    }

    v8 = OUTLINED_FUNCTION_699(v6);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

void sub_1B955C318(uint64_t a1)
{
  OUTLINED_FUNCTION_86_8();
  sub_1B955BF44(319, v1, v2, MEMORY[0x1E69E62F8]);
  if (v3 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_86_8();
      sub_1B955BF44(319, v5, v6, MEMORY[0x1E69E6720]);
      if (v7 <= 0x3F)
      {
        sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B955C468(uint64_t a1)
{
  v1 = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1B955C5A8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_51_17(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1B8D9207C(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1)
{
  v6 = v1 + *(a1 + 40);

  return sub_1B8DD9078(v6, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_99_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_111_9()
{

  return sub_1B8D9207C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_112_8(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1B954FD00(v3, v4 + v5, a3);
}

uint64_t OUTLINED_FUNCTION_121_5()
{

  return sub_1B9549818();
}

uint64_t OUTLINED_FUNCTION_144_8()
{

  return sub_1B9549818();
}

uint64_t OUTLINED_FUNCTION_145_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_146_6()
{

  return sub_1B9549818();
}

uint64_t OUTLINED_FUNCTION_148_6(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_163_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_165_6(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(v3 - 160);

  return sub_1B954FD00(a1, v5, a3);
}

void Searchfoundation_RFImageStyle.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 30:
      a2 = 29;
      break;
    case 31:
      a2 = 30;
      break;
    case 32:
      a2 = 31;
      break;
    case 33:
      a2 = 32;
      break;
    case 34:
      a2 = 33;
      break;
    case 35:
      a2 = 34;
      break;
    case 36:
      a2 = 35;
      break;
    case 37:
      a2 = 36;
      break;
    case 38:
      a2 = 37;
      break;
    case 39:
      a2 = 38;
      break;
    case 40:
      a2 = 39;
      break;
    case 41:
      a2 = 40;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Searchfoundation_RFImageStyle.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96DB7E0[result];
  }

  return result;
}

uint64_t sub_1B955CD60@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFImageStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B955CD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9570294();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageStyle.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955CE98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFImageStyle.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B955CEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95702E8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageSizingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955CFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFImageSizingMode.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B955D000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B957033C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageRenderingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955D0E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFImageRenderingMode.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B955D11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9570390();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageCornerRoundingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955D204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFImageCornerRoundingMode.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B955D254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9572110();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFSymbolRenderingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955D33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_RFSymbolRenderingMode.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_RFImageElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFImageElement(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFImageElement.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_RFImageElement(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFImageSource.value.getter()
{
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value, v2);
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B955D4D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Searchfoundation_RFImageSource.value.setter();
}

uint64_t Searchfoundation_RFImageSource.value.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_RFImageSource(v0);
  if ((OUTLINED_FUNCTION_182_0(v1) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B9565A6C(v2);
    OUTLINED_FUNCTION_157_2(v3);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFImageSource.value.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  v8 = *(type metadata accessor for Searchfoundation_RFImageSource(0) + 20);
  *(v1 + 72) = v8;
  OUTLINED_FUNCTION_62_0(*(v0 + v8) + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value);
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

void sub_1B955D718(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    sub_1B8D92024();
    Searchfoundation_RFImageSource.value.setter();
    v5 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v5, v6, &unk_1B964D5E0);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v2 + 72);
      v8 = *(v2 + 48);
      type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      *(v8 + v7) = sub_1B9565A6C(v9);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Searchfoundation_RFImageSource.url.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
    return Searchfoundation_RFUrlImage.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    return Searchfoundation_RFUrlImage.init()(a1);
  }

  OUTLINED_FUNCTION_29_34();
  OUTLINED_FUNCTION_182();
  return sub_1B956DD18();
}

uint64_t Searchfoundation_RFUrlImage.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_105_10(v2[7]);
  OUTLINED_FUNCTION_105_10(v2[8]);
  OUTLINED_FUNCTION_105_10(v2[9]);
  OUTLINED_FUNCTION_105_10(v2[10]);
  *(a1 + v2[11]) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Searchfoundation_RFImageSource.url.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFUrlImage(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_29_34();
      OUTLINED_FUNCTION_177_1();
      sub_1B956DD18();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_110_9(v8[7]);
  OUTLINED_FUNCTION_110_9(v8[8]);
  OUTLINED_FUNCTION_110_9(v8[9]);
  OUTLINED_FUNCTION_110_9(v8[10]);
  *(v12 + v8[11]) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_82();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Searchfoundation_RFSymbolImage(0) + 20);
  if (qword_1ED9D2DA0 != -1)
  {
    OUTLINED_FUNCTION_22_30(&qword_1ED9D2DA0);
  }

  *(a1 + v11) = qword_1ED9D2DA8;
}

uint64_t sub_1B955DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD70();
  return a7(v7);
}

void Searchfoundation_RFImageSource.symbol.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFSymbolImage(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_82();
      OUTLINED_FUNCTION_177_1();
      sub_1B956DD18();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1ED9D2DA0 != -1)
  {
    OUTLINED_FUNCTION_22_30(&qword_1ED9D2DA0);
  }

  *&v12[v15] = qword_1ED9D2DA8;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

void sub_1B955DFA0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B956DD70();
    v2(v3);
    sub_1B9565C54();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFImageSource.appIcon.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  v9 = OUTLINED_FUNCTION_56_12();
  type metadata accessor for Searchfoundation_RFAppIconImage(v9);
  return OUTLINED_FUNCTION_279();
}

void Searchfoundation_RFImageSource.appIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Searchfoundation_RFAppIconImage(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v11)
  {
    v12 = sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    OUTLINED_FUNCTION_129_7(v12);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_109();
    v12 = sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.avatar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_35_18();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Searchfoundation_RFAvatarImage(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Searchfoundation_RFAvatarImage.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Searchfoundation_RFAvatarImage(0);
  return OUTLINED_FUNCTION_279();
}

void Searchfoundation_RFImageSource.avatar.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Searchfoundation_RFAvatarImage(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = 0;
    *(v11 + 16) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_35_18();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.monogram.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_34_15();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  v9 = OUTLINED_FUNCTION_56_12();
  type metadata accessor for Searchfoundation_RFMonogramImage(v9);
  return OUTLINED_FUNCTION_279();
}

uint64_t sub_1B955E6B8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_56_12();
  v2(v1);
  return OUTLINED_FUNCTION_279();
}

void Searchfoundation_RFImageSource.monogram.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Searchfoundation_RFMonogramImage(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v11)
  {
    v12 = sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    OUTLINED_FUNCTION_129_7(v12);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_0_109();
    v12 = sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.badgedImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_33_15();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Searchfoundation_RFBadgedImage(0) + 20);
  if (qword_1EBAB8810 != -1)
  {
    OUTLINED_FUNCTION_103_7(&qword_1EBAB8810);
  }

  *(a1 + v11) = qword_1EBAD0DE0;
}

uint64_t sub_1B955E9C4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Searchfoundation_RFImageSource.badgedImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFBadgedImage(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_33_15();
      OUTLINED_FUNCTION_177_1();
      sub_1B956DD18();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB8810 != -1)
  {
    OUTLINED_FUNCTION_103_7(&qword_1EBAB8810);
  }

  *&v12[v15] = qword_1EBAD0DE0;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.defaultBrowserAppIcon.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_31_27();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  *a1 = 0;
  return OUTLINED_FUNCTION_165_7();
}

void sub_1B955ECE4()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(type metadata accessor for Searchfoundation_RFImageSource(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    *(v0 + v4) = sub_1B9565A6C(v5);
  }

  sub_1B956DD18();
  v6 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  OUTLINED_FUNCTION_472();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFImageSource.defaultBrowserAppIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    *v11 = 0;
    v11[8] = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.doNotShowLoadingPlaceholder.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  v3 = *(type metadata accessor for Searchfoundation_RFImageSource(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void static Searchfoundation_RFImageSource.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v82 = v0;
  v83 = v1;
  v71[3] = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21();
  v79 = v3;
  v4 = OUTLINED_FUNCTION_201();
  v74 = type metadata accessor for Searchfoundation_RFBadgedImage(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v78 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v71[2] = type metadata accessor for Searchfoundation_RFMonogramImage(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v77 = v9;
  v10 = OUTLINED_FUNCTION_201();
  v71[0] = type metadata accessor for Searchfoundation_RFAvatarImage(v10);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v76 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v71[1] = type metadata accessor for Searchfoundation_RFAppIconImage(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v75 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v72 = type metadata accessor for Searchfoundation_RFSymbolImage(v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v73 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v20 = type metadata accessor for Searchfoundation_RFUrlImage(v19);
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v80 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v81 = v71 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v71 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v71 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = v71 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = v71 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E30, &qword_1B96D9DB8);
  OUTLINED_FUNCTION_183(v39);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v71 - v41;
  sub_1B956DD70();
  sub_1B956DD70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 1)
      {
        OUTLINED_FUNCTION_37_16();
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_3_82();
      v54 = v73;
      sub_1B956DD18();
      if (*&v38[*(v72 + 20)] == *(v54 + *(v72 + 20)) || (, , v55 = OUTLINED_FUNCTION_432(), v57 = sub_1B956F188(v55, v56), , , v57))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v58, v59, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_92_13();
      sub_1B9565C54();
      goto LABEL_52;
    case 2u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 2)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_36_13();
      v47 = v75;
      sub_1B956DD18();
      v48 = *v35 == *v47 && *(v35 + 1) == *(v47 + 8);
      if (v48 || (sub_1B964C9F0()) && sub_1B8D580F8(*(v35 + 2), v35[24], *(v47 + 16), *(v47 + 24)))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v49, v50, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_95_9();
      sub_1B9565C54();
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 3)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_35_18();
      v51 = v76;
      sub_1B956DD18();
      if ((sub_1B8D6123C(*v32, *v51) & 1) != 0 && sub_1B8D580F8(*(v32 + 1), v32[16], *(v51 + 8), *(v51 + 16)))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v52, v53, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_94_13();
      sub_1B9565C54();
      goto LABEL_52;
    case 4u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 4)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_34_15();
      v43 = v77;
      sub_1B956DD18();
      v44 = *v29 == *v43 && *(v29 + 1) == *(v43 + 8);
      if (v44 || (sub_1B964C9F0()) && sub_1B8D580F8(*(v29 + 2), v29[24], *(v43 + 16), *(v43 + 24)))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v45, v46, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      goto LABEL_51;
    case 5u:
      OUTLINED_FUNCTION_4_62();
      v60 = v81;
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 5)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_15();
      v61 = v78;
      sub_1B956DD18();
      if (*&v60[*(v74 + 20)] == *(v61 + *(v74 + 20)) || (, , v62 = OUTLINED_FUNCTION_432(), v64 = sub_1B956AAF4(v62, v63), , , v64))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v65, v66, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_186();
        sub_1B964C850();
      }

LABEL_51:
      sub_1B9565C54();
      goto LABEL_52;
    case 6u:
      OUTLINED_FUNCTION_4_62();
      v67 = v80;
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() == 6)
      {
        OUTLINED_FUNCTION_31_27();
        v68 = v79;
        sub_1B956DD18();
        if (sub_1B8D580F8(*v67, v67[8], *v68, *(v68 + 8)))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_91();
          sub_1B8CD3770(v69, v70, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_6_47();
        sub_1B9565C54();
        OUTLINED_FUNCTION_6_47();
LABEL_52:
        sub_1B9565C54();
        OUTLINED_FUNCTION_0_109();
        sub_1B9565C54();
      }

      else
      {
        OUTLINED_FUNCTION_6_47();
LABEL_45:
        sub_1B9565C54();
        sub_1B8D9207C(v42, &qword_1EBAD0E30, &qword_1B96D9DB8);
      }

LABEL_53:
      OUTLINED_FUNCTION_283();
      return;
    default:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10())
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_29_34();
      sub_1B956DD18();
      OUTLINED_FUNCTION_472();
      static Searchfoundation_RFUrlImage.== infix(_:_:)();
      sub_1B9565C54();
      OUTLINED_FUNCTION_514();
      sub_1B9565C54();
      OUTLINED_FUNCTION_0_109();
      sub_1B9565C54();
      goto LABEL_53;
  }
}

void static Searchfoundation_RFUrlImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v72 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  v76 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v73 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E38, &qword_1B96D9DD0);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v74 = (&v66 - v18);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E40, &qword_1B96D9DD8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v66 - v20;
  v21 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(v21);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E50, &qword_1B96D9DE8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = *v1 == *v0 && v1[1] == v0[1];
  if (v31 || (sub_1B964C9F0() & 1) != 0)
  {
    v32 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v32 || (sub_1B964C9F0() & 1) != 0)
    {
      v68 = v13;
      v69 = v10;
      v67 = v6;
      v70 = type metadata accessor for Searchfoundation_RFUrlImage(0);
      v33 = *(v27 + 48);
      sub_1B8D92024();
      sub_1B8D92024();
      OUTLINED_FUNCTION_117(v30);
      if (v31)
      {
        OUTLINED_FUNCTION_117(&v30[v33]);
        if (v31)
        {
          sub_1B8D9207C(v30, &qword_1EBAD0E48, &qword_1B96D9DE0);
          goto LABEL_22;
        }
      }

      else
      {
        OUTLINED_FUNCTION_686();
        sub_1B8D92024();
        OUTLINED_FUNCTION_117(&v30[v33]);
        if (!v34)
        {
          sub_1B956DD18();
          v37 = static Searchfoundation_RFUrlImage.OneOf_PlaceholderImage.== infix(_:_:)(v26, v2);
          sub_1B9565C54();
          sub_1B9565C54();
          sub_1B8D9207C(v30, &qword_1EBAD0E48, &qword_1B96D9DE0);
          if ((v37 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_22:
          v38 = v70;
          v39 = OUTLINED_FUNCTION_38_14(*(v70 + 28));
          if (!sub_1B8D580F8(v39, v40, v41, v42))
          {
            goto LABEL_52;
          }

          v43 = *(v75 + 48);
          v30 = v77;
          sub_1B8D92024();
          OUTLINED_FUNCTION_160_5();
          OUTLINED_FUNCTION_178(v30, 1, v76);
          if (v31)
          {
            OUTLINED_FUNCTION_37_0(&v30[v43]);
            v44 = v69;
            if (v31)
            {
              sub_1B8D9207C(v30, &qword_1EBAD0E38, &qword_1B96D9DD0);
LABEL_28:
              v45 = OUTLINED_FUNCTION_38_14(v38[8]);
              if (!sub_1B8D92198(v45, v46, v47))
              {
                goto LABEL_52;
              }

              v48 = OUTLINED_FUNCTION_38_14(v38[9]);
              if (!sub_1B8D92198(v48, v49, v50))
              {
                goto LABEL_52;
              }

              v51 = *(v71 + 48);
              v30 = v68;
              sub_1B8D92024();
              OUTLINED_FUNCTION_160_5();
              OUTLINED_FUNCTION_178(v30, 1, v72);
              if (v31)
              {
                OUTLINED_FUNCTION_37_0(&v30[v51]);
                if (v31)
                {
                  sub_1B8D9207C(v30, &qword_1EBAB8DB8, &unk_1B96D9DC0);
LABEL_49:
                  v61 = OUTLINED_FUNCTION_38_14(v38[10]);
                  if (sub_1B8D92198(v61, v62, v63) && *(v1 + v38[11]) == *(v0 + v38[11]))
                  {
                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_1_91();
                    sub_1B8CD3770(v64, v65, MEMORY[0x1E69AAC10]);
                    sub_1B964C850();
                  }

                  goto LABEL_52;
                }
              }

              else
              {
                OUTLINED_FUNCTION_686();
                sub_1B8D92024();
                OUTLINED_FUNCTION_37_0(&v30[v51]);
                if (!v58)
                {
                  OUTLINED_FUNCTION_2_76();
                  v59 = v67;
                  sub_1B956DD18();
                  v60 = static Searchfoundation_RFColor.== infix(_:_:)(v44, v59);
                  sub_1B9565C54();
                  sub_1B9565C54();
                  sub_1B8D9207C(v30, &qword_1EBAB8DB8, &unk_1B96D9DC0);
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_49;
                }

                OUTLINED_FUNCTION_30_32();
                sub_1B9565C54();
              }

              v35 = &qword_1EBAB8DC0;
              v36 = &unk_1B964D5C0;
LABEL_20:
              sub_1B8D9207C(v30, v35, v36);
              goto LABEL_52;
            }
          }

          else
          {
            v52 = v74;
            sub_1B8D92024();
            OUTLINED_FUNCTION_37_0(&v30[v43]);
            v44 = v69;
            if (!v53)
            {
              OUTLINED_FUNCTION_5_52();
              v54 = v73;
              sub_1B956DD18();
              if (*v52 != *v54 || v52[1] != v54[1])
              {
                sub_1B9565C54();
                sub_1B9565C54();
                v35 = &qword_1EBAD0E38;
                v36 = &qword_1B96D9DD0;
                goto LABEL_20;
              }

              sub_1B964C2B0();
              OUTLINED_FUNCTION_1_91();
              sub_1B8CD3770(v55, v56, MEMORY[0x1E69AAC10]);
              v57 = sub_1B964C850();
              sub_1B9565C54();
              sub_1B9565C54();
              sub_1B8D9207C(v30, &qword_1EBAD0E38, &qword_1B96D9DD0);
              if ((v57 & 1) == 0)
              {
                goto LABEL_52;
              }

              goto LABEL_28;
            }

            OUTLINED_FUNCTION_32_25();
            sub_1B9565C54();
          }

          v35 = &qword_1EBAD0E40;
          v36 = &qword_1B96D9DD8;
          goto LABEL_20;
        }

        sub_1B9565C54();
      }

      v35 = &qword_1EBAD0E50;
      v36 = &qword_1B96D9DE8;
      goto LABEL_20;
    }
  }

LABEL_52:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFAvatarImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0 || !sub_1B8D580F8(*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFAvatarImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  v6 = sub_1B8CD3770(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B95603E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  v7 = *v6 == *v3 && *(v4 + 8) == *(v3 + 8);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D580F8(*(v4 + 16), *(v4 + 24), *(v3 + 16), *(v3 + 24)))
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  v10 = sub_1B8CD3770(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t static Searchfoundation_RFDefaultBrowserAppIconImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if (!sub_1B8D580F8(*v2, *(v1 + 8), *v0, *(v0 + 8)))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  v5 = sub_1B8CD3770(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t Searchfoundation_RFDefaultBrowserAppIconImage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1B95605E8()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9560670()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFDefaultBrowserAppIconImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(v0);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFBadgedImage.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_RFImageSource(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  type metadata accessor for Searchfoundation_RFBadgedImage(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9D2DC0 != -1)
    {
      OUTLINED_FUNCTION_42_17(&qword_1ED9D2DC0);
    }

    *&v12[v14] = qword_1ED9D2DC8;
    v15 = OUTLINED_FUNCTION_25_23();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v17);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAD0E58, &qword_1B96D9DF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_7();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95608F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFBadgedImage(v5);
  OUTLINED_FUNCTION_77_0();
  v6 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v6);
  sub_1B8D92024();
  v7 = type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = *(v7 + 20);
    if (qword_1ED9D2DC0 != -1)
    {
      OUTLINED_FUNCTION_42_17(&qword_1ED9D2DC0);
    }

    *(a1 + v9) = qword_1ED9D2DC8;
    v10 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v7);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD0E58, &qword_1B96D9DF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t sub_1B9560A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_116();
  v3 = *(type metadata accessor for Searchfoundation_RFBadgedImage(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Searchfoundation_RFBadgedImage._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B956A24C(v4);
  }

  OUTLINED_FUNCTION_461();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFBadgedImage.badge.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_RFImageSource(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  type metadata accessor for Searchfoundation_RFBadgedImage(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9D2DC0 != -1)
    {
      OUTLINED_FUNCTION_42_17(&qword_1ED9D2DC0);
    }

    *&v12[v14] = qword_1ED9D2DC8;
    v15 = OUTLINED_FUNCTION_25_23();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v17);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAD0E58, &qword_1B96D9DF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_7();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9560D08()
{
  v1 = OUTLINED_FUNCTION_472();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_208();
  type metadata accessor for Searchfoundation_RFBadgedImage(0);
  OUTLINED_FUNCTION_77_0();
  v5 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v5);
  sub_1B8D92024();
  v6 = type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_178(v0, 1, v6);
  sub_1B8D9207C(v0, &qword_1EBAD0E58, &qword_1B96D9DF0);
  return OUTLINED_FUNCTION_466_0();
}

uint64_t sub_1B9560DE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_116();
  v2 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_RFBadgedImage._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B956A24C(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFMonogramImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFMonogramImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFAvatarImage.contactIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_RFAvatarImage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1B9561058()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B95610E0()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_RFAvatarImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFAvatarImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFAppIconImage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_RFAppIconImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFAppIconImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.url.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_RFUrlImage.darkModeURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_RFUrlImage.placeholderImage.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return sub_1B8D92024();
}

uint64_t Searchfoundation_RFUrlImage.placeholderImage.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return sub_1B8DAA170();
}

uint64_t Searchfoundation_RFUrlImage.placeholderImage.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.symbolPlaceholderImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_116();
  type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B8D92024();
  v7 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAD0E48, &qword_1B96D9DE0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = *(type metadata accessor for Searchfoundation_RFSymbolImage(0) + 20);
    if (qword_1ED9D2DA0 != -1)
    {
      OUTLINED_FUNCTION_22_30(&qword_1ED9D2DA0);
    }

    *(a1 + v9) = qword_1ED9D2DA8;
  }

  else
  {
    OUTLINED_FUNCTION_3_82();
    return OUTLINED_FUNCTION_162_4();
  }
}

uint64_t Searchfoundation_RFUrlImage.symbolPlaceholderImage.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_3_82();
  OUTLINED_FUNCTION_122_0();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFUrlImage.symbolPlaceholderImage.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[1] = v8;
  v9 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v3[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[3] = v12;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 24);
  sub_1B8D92024();
  v13 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  v3[4] = v13;
  OUTLINED_FUNCTION_178(v8, 1, v13);
  if (v14)
  {
    sub_1B8D9207C(v8, &qword_1EBAD0E48, &qword_1B96D9DE0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v9 + 20);
    if (qword_1ED9D2DA0 != -1)
    {
      OUTLINED_FUNCTION_22_30(&qword_1ED9D2DA0);
    }

    *&v12[v15] = qword_1ED9D2DA8;
  }

  else
  {
    OUTLINED_FUNCTION_3_82();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B956172C()
{
  OUTLINED_FUNCTION_243();
  v1 = (*v0)[3];
  v2 = *(*v0 + 10);
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B956DD70();
    sub_1B8D9207C(v5 + v2, &qword_1EBAD0E48, &qword_1B96D9DE0);
    OUTLINED_FUNCTION_3_82();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_37_16();
    sub_1B9565C54();
  }

  else
  {
    sub_1B8D9207C(v5 + v2, &qword_1EBAD0E48, &qword_1B96D9DE0);
    OUTLINED_FUNCTION_3_82();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_242();

  free(v7);
}

void Searchfoundation_RFUrlImage.imageStyle.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 28));
}

uint64_t Searchfoundation_RFUrlImage.imageStyle.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.aspectRatio.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFUrlImage(v7);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD0E38, &qword_1B96D9DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_52();
    OUTLINED_FUNCTION_182();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t Searchfoundation_RFUrlImage.aspectRatio.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAD0E38, &qword_1B96D9DD0);
  OUTLINED_FUNCTION_5_52();
  OUTLINED_FUNCTION_122_0();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Searchfoundation_RFAspectRatio.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  return OUTLINED_FUNCTION_279();
}

void Searchfoundation_RFUrlImage.aspectRatio.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[1] = v8;
  v9 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  v3[2] = v9;
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v3[3] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[4] = v12;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 52);
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v9);
  if (v15)
  {
    *v12 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v9);
    if (!v15)
    {
      sub_1B8D9207C(v8, &qword_1EBAD0E38, &qword_1B96D9DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_52();
    OUTLINED_FUNCTION_461();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9561B9C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B956DD70();
    sub_1B8D9207C(v4 + v3, &qword_1EBAD0E38, &qword_1B96D9DD0);
    OUTLINED_FUNCTION_5_52();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_32_25();
    sub_1B9565C54();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAD0E38, &qword_1B96D9DD0);
    OUTLINED_FUNCTION_5_52();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFUrlImage.hasAspectRatio.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFUrlImage(v5);
  OUTLINED_FUNCTION_147_2();
  v6 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_RFUrlImage.clearAspectRatio()()
{
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAD0E38, &qword_1B96D9DD0);
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_RFUrlImage.sizingMode.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 32));
}

uint64_t Searchfoundation_RFUrlImage.sizingMode.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFUrlImage.imageRenderingMode.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 36));
}

uint64_t Searchfoundation_RFUrlImage.imageRenderingMode.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.backgroundColor.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Searchfoundation_RFUrlImage(v5);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v0);
  if (v6)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    v7 = OUTLINED_FUNCTION_493();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v0);
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_472();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t Searchfoundation_RFUrlImage.backgroundColor.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 56), &qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_122_0();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFUrlImage.backgroundColor.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[1] = v8;
  v3[2] = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_59_1();
  v10 = *(v9 + 64);
  v3[3] = __swift_coroFrameAllocStub(v10);
  v3[4] = __swift_coroFrameAllocStub(v10);
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 56);
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    v12 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v12);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v8, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9562190()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B956DD70();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_2_76();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_30_32();
    sub_1B9565C54();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_2_76();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RFUrlImage.hasBackgroundColor.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFUrlImage(v5);
  OUTLINED_FUNCTION_147_2();
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_RFUrlImage.clearBackgroundColor()()
{
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBAB8DB8, &unk_1B96D9DC0);
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_RFUrlImage.cornerRoundingMode.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 40));
}

uint64_t Searchfoundation_RFUrlImage.cornerRoundingMode.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.insetPadding.setter(float a1)
{
  result = type metadata accessor for Searchfoundation_RFUrlImage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t Searchfoundation_RFUrlImage.insetPadding.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_RFUrlImage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_RFUrlImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFUrlImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Searchfoundation_RFUrlImage.OneOf_PlaceholderImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E70, &qword_1B96D9DF8);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = &v15 + *(v4 + 56) - v5;
  sub_1B956DD70();
  sub_1B956DD70();
  OUTLINED_FUNCTION_39_16();
  v9 = *&v6[v8];
  v10 = *&v7[v8];
  if (v9 == v10 || (, , v11 = sub_1B956F188(v9, v10), , , v11))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_91();
    sub_1B8CD3770(v12, v13, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_514();
    sub_1B964C850();
  }

  sub_1B9565C54();
  OUTLINED_FUNCTION_472();
  sub_1B9565C54();
  return OUTLINED_FUNCTION_466_0();
}

uint64_t Searchfoundation_RFSymbolImage.name.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_521(*(v1 + v2) + 16, v4);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFSymbolImage.name.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B956DF58(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_18(v6 + 16, v10);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

uint64_t Searchfoundation_RFSymbolImage.name.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_39_16();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9562898(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    OUTLINED_FUNCTION_461();
    Searchfoundation_RFSymbolImage.name.setter();
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
      OUTLINED_FUNCTION_50_16();
      v11 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B956DF58(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_18(v8 + 16, v2 + 24);
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;
  }

  free(v2);
}

uint64_t Searchfoundation_RFSymbolImage.primaryColor.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_RFSymbolImage(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B956DF58(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_162_4();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSymbolImage.primaryColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RFColor(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    v12 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v12);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSymbolImage.hasPrimaryColor.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFSymbolImage(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor);
  OUTLINED_FUNCTION_147_2();
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSymbolImage.clearPrimaryColor()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_RFSymbolImage(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B956DF58(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSymbolImage.secondaryColor.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_RFSymbolImage(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B956DF58(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_162_4();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSymbolImage.secondaryColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RFColor(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    v12 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v12);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSymbolImage.hasSecondaryColor.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFSymbolImage(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor);
  OUTLINED_FUNCTION_147_2();
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSymbolImage.clearSecondaryColor()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_RFSymbolImage(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B956DF58(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSymbolImage.imageStyle.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B95631A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_39_16();
  v7 = *(v2 + v6) + *a1;
  result = OUTLINED_FUNCTION_6_2(v5);
  v9 = *(v7 + 8);
  *a2 = *v7;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_1B9563208(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Searchfoundation_RFSymbolImage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B956DF58(v10);
    *(v4 + v7) = v9;
  }

  v11 = v9 + *a2;
  result = OUTLINED_FUNCTION_18(v11, v13);
  *v11 = v5;
  *(v11 + 8) = v6;
  return result;
}

uint64_t Searchfoundation_RFSymbolImage.symbolRenderingMode.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B956330C()
{
  OUTLINED_FUNCTION_243();
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
    OUTLINED_FUNCTION_50_16();
    v14 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v14);
    *(v13 + v12) = v11;
  }

  v15 = 48;
  if (v3)
  {
    v15 = 24;
  }

  v16 = v11 + *v1;
  OUTLINED_FUNCTION_18(v16, v5 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t sub_1B95633D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Searchfoundation_RFSymbolImage(v3);
  OUTLINED_FUNCTION_77_0();
  v4 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v4);
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    v6 = OUTLINED_FUNCTION_493();
    __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    result = OUTLINED_FUNCTION_57(v0);
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_472();
    return sub_1B956DD18();
  }

  return result;
}