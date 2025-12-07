uint64_t sub_1B94122B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC28, type metadata accessor for Searchfoundation_ContactCopyItem, protocol conformance descriptor for Searchfoundation_ContactCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9412338(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD710, type metadata accessor for Searchfoundation_ContactCopyItem, "\t{|5̒\a");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94123A8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD710, type metadata accessor for Searchfoundation_ContactCopyItem, "\t{|5̒\a");

  return sub_1B964C5D0();
}

uint64_t sub_1B94124A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_URLCopyItem(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD3068(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_URLCopyItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_156();
  type metadata accessor for Searchfoundation_URL(v9);
  OUTLINED_FUNCTION_163_4();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_87_6();
  type metadata accessor for Searchfoundation_URLCopyItem(v11);
  OUTLINED_FUNCTION_517_1();
  OUTLINED_FUNCTION_179_5();
  if (v12)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_136_2();
  v15 = sub_1B8CD3068(v13, v14, protocol conformance descriptor for Searchfoundation_URL);
  OUTLINED_FUNCTION_128_8(v15);
  OUTLINED_FUNCTION_46_13();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941271C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC20, type metadata accessor for Searchfoundation_URLCopyItem, protocol conformance descriptor for Searchfoundation_URLCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941279C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD728, type metadata accessor for Searchfoundation_URLCopyItem, protocol conformance descriptor for Searchfoundation_URLCopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941280C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD728, type metadata accessor for Searchfoundation_URLCopyItem, protocol conformance descriptor for Searchfoundation_URLCopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9412898()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBD98);
  __swift_project_value_buffer(v0, qword_1EBACBD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareItem";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareItems";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_ShareCommand.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B944A84C();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9412B38(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1B9412B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ShareCommand(0);
  type metadata accessor for Searchfoundation_ShareItem(0);
  sub_1B8CD3068(&qword_1EBACCAB0, type metadata accessor for Searchfoundation_ShareItem, protocol conformance descriptor for Searchfoundation_ShareItem);
  return sub_1B964C580();
}

void Searchfoundation_ShareCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1265(v3);
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211_2();
  type metadata accessor for Searchfoundation_ShareItem(0);
  OUTLINED_FUNCTION_163_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  type metadata accessor for Searchfoundation_ShareCommand(0);
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v0);
  if (v9)
  {
    sub_1B8D9207C(v0, &qword_1EBACC5B8, &qword_1B96B9928);
  }

  else
  {
    OUTLINED_FUNCTION_97_6();
    OUTLINED_FUNCTION_1375();
    sub_1B944B02C();
    OUTLINED_FUNCTION_979();
    sub_1B8CD3068(v10, v11, protocol conformance descriptor for Searchfoundation_ShareItem);
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_678_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_498_0();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v2 + 16) || (OUTLINED_FUNCTION_979(), sub_1B8CD3068(v12, v13, protocol conformance descriptor for Searchfoundation_ShareItem), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_678_1(), sub_1B964C730(), !v1))
  {
    OUTLINED_FUNCTION_681_1();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9412E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC18, type metadata accessor for Searchfoundation_ShareCommand, protocol conformance descriptor for Searchfoundation_ShareCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9412EC8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD740, type metadata accessor for Searchfoundation_ShareCommand, protocol conformance descriptor for Searchfoundation_ShareCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9412F38(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD740, type metadata accessor for Searchfoundation_ShareCommand, protocol conformance descriptor for Searchfoundation_ShareCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9412FD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBDB0);
  __swift_project_value_buffer(v0, qword_1EBACBDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "urlShareItem";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spotlightShareItem";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ShareItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B9413718(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B9413220(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9413220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_URLShareItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF88, &qword_1B96CA148);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBACDF88, &qword_1B96CA148);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem, protocol conformance descriptor for Searchfoundation_URLShareItem);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACDF88, &qword_1B96CA148);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACDF88, &qword_1B96CA148);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACDF88, &qword_1B96CA148);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACDF88, &qword_1B96CA148);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8EF0, &qword_1B964D6F0);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9413718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_CoreSpotlightShareItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF90, &qword_1B96CA150);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACDF90, &qword_1B96CA150);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightShareItem);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACDF90, &qword_1B96CA150);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACDF90, &qword_1B96CA150);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACDF90, &qword_1B96CA150);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACDF90, &qword_1B96CA150);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8EF0, &qword_1B964D6F0);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void Searchfoundation_ShareItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  OUTLINED_FUNCTION_90(v1);
  if (v6)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = OUTLINED_FUNCTION_7_6();
    sub_1B9413F18(v7, v8, v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_6();
    sub_1B9413D04(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_633_1();
  sub_1B944B0D4();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Searchfoundation_ShareItem(0);
    OUTLINED_FUNCTION_12();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B9413D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_URLShareItem(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem, protocol conformance descriptor for Searchfoundation_URLShareItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9413F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CoreSpotlightShareItem(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightShareItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_ShareItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(v1);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF8, &qword_1B964D6F8);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EF0, &qword_1B964D6F0);
LABEL_12:
      type metadata accessor for Searchfoundation_ShareItem(0);
      OUTLINED_FUNCTION_156_4();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      v17 = sub_1B8CD3068(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_633_1();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8EF8, &qword_1B964D6F8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_ShareItem.OneOf_Value.== infix(_:_:)();
  v14 = v13;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBAB8EF0, &qword_1B964D6F0);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94143F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC10, type metadata accessor for Searchfoundation_ShareItem, protocol conformance descriptor for Searchfoundation_ShareItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9414478(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCAB0, type metadata accessor for Searchfoundation_ShareItem, protocol conformance descriptor for Searchfoundation_ShareItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94144E8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCAB0, type metadata accessor for Searchfoundation_ShareItem, protocol conformance descriptor for Searchfoundation_ShareItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94145E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_URLShareItem(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD3068(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_URLShareItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_156();
  type metadata accessor for Searchfoundation_URL(v9);
  OUTLINED_FUNCTION_163_4();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_87_6();
  type metadata accessor for Searchfoundation_URLShareItem(v11);
  OUTLINED_FUNCTION_517_1();
  OUTLINED_FUNCTION_179_5();
  if (v12)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_136_2();
  v15 = sub_1B8CD3068(v13, v14, protocol conformance descriptor for Searchfoundation_URL);
  OUTLINED_FUNCTION_128_8(v15);
  OUTLINED_FUNCTION_46_13();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941485C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC08, type metadata accessor for Searchfoundation_URLShareItem, protocol conformance descriptor for Searchfoundation_URLShareItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94148DC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem, protocol conformance descriptor for Searchfoundation_URLShareItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941494C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem, protocol conformance descriptor for Searchfoundation_URLShareItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94149D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBDE0);
  __swift_project_value_buffer(v0, qword_1EBACBDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareProviderTypeIdentifier";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicationBundleIdentifier";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coreSpotlightIdentifier";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B9414C48()
{
  OUTLINED_FUNCTION_822();
  v2 = v1;
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        v2(0);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9414D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC00, type metadata accessor for Searchfoundation_CoreSpotlightShareItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightShareItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9414E00(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightShareItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9414E70(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightShareItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9414EFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBDF8);
  __swift_project_value_buffer(v0, qword_1EBACBDF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contactActionType";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "didDisplayHandleOptions";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "didSelectFromOptionsMenu";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PerformContactActionCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B94151A0(v3, v4, v5, v6);
    }
  }

  return result;
}

void Searchfoundation_PerformContactActionCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B944C7C8(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    if (*(v2 + 9) != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
    {
      if (*(v2 + 10) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
      {
        type metadata accessor for Searchfoundation_PerformContactActionCommand(0);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B9415378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBF8, type metadata accessor for Searchfoundation_PerformContactActionCommand, protocol conformance descriptor for Searchfoundation_PerformContactActionCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94153F8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD798, type metadata accessor for Searchfoundation_PerformContactActionCommand, protocol conformance descriptor for Searchfoundation_PerformContactActionCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9415468(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD798, type metadata accessor for Searchfoundation_PerformContactActionCommand, protocol conformance descriptor for Searchfoundation_PerformContactActionCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B94154F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE10);
  __swift_project_value_buffer(v0, qword_1EBACBE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "channelIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pushTopic";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subscribedEntityIdentifier";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9415764(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v15 = sub_1B8CD3068(v13, v14, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v15) & 1;
}

uint64_t sub_1B94158A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBF0, type metadata accessor for Searchfoundation_CloudChannelsRequestItem, protocol conformance descriptor for Searchfoundation_CloudChannelsRequestItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9415928(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem, protocol conformance descriptor for Searchfoundation_CloudChannelsRequestItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9415998(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem, protocol conformance descriptor for Searchfoundation_CloudChannelsRequestItem);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_DomainSubscriptionRequestItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B9415AB4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9415AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6C8, &qword_1B96B9A38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF80, &qword_1B96CA140);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACC6C8, &qword_1B96B9A38);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    sub_1B8D9207C(v18, &qword_1EBACDF80, &qword_1B96CA140);
    sub_1B944B02C();
    sub_1B944B02C();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem, "an|5܇\a");
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBACDF80, &qword_1B96CA140);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACDF80, &qword_1B96CA140);
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBACDF80, &qword_1B96CA140);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBACDF80, &qword_1B96CA140);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBACC6C8, &qword_1B96B9A38);
  sub_1B944B02C();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

void Searchfoundation_DomainSubscriptionRequestItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6C8, &qword_1B96B9A38);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_156();
  type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_542();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value(0);
  v6 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBACC6C8, &qword_1B96B9A38);
LABEL_5:
    type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(0);
    OUTLINED_FUNCTION_213_3();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_150_7();
  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem, "an|5܇\a");
  OUTLINED_FUNCTION_597_0();
  sub_1B964C740();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_DomainSubscriptionRequestItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value(v1);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCAF8, &qword_1B96B9AC0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBACC6C8, &qword_1B96B9A38);
LABEL_12:
      type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(0);
      OUTLINED_FUNCTION_156_4();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      v16 = sub_1B8CD3068(v14, v15, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v16);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACCAF8, &qword_1B96B9AC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  v13 = static Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value.== infix(_:_:)();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC6C8, &qword_1B96B9A38);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94163E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBE8, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem, protocol conformance descriptor for Searchfoundation_DomainSubscriptionRequestItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9416464(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem, protocol conformance descriptor for Searchfoundation_DomainSubscriptionRequestItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94164D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem, protocol conformance descriptor for Searchfoundation_DomainSubscriptionRequestItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9416560()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE40);
  __swift_project_value_buffer(v0, qword_1EBACBE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "canonicalIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sportIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "leagueIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9416844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBE0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem, protocol conformance descriptor for Searchfoundation_SportsSubscriptionRequestItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94168C4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem, "an|5܇\a");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9416934(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem, "an|5܇\a");

  return sub_1B964C5D0();
}

uint64_t sub_1B94169C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE58);
  __swift_project_value_buffer(v0, qword_1EBACBE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cloudChannelsRequestItem";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domainSubscriptionRequestItem";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9416BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(0);
  type metadata accessor for Searchfoundation_CloudChannelsRequestItem(0);
  sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem, protocol conformance descriptor for Searchfoundation_CloudChannelsRequestItem);
  return sub_1B964C580();
}

uint64_t sub_1B9416CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(0);
  type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(0);
  sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem, protocol conformance descriptor for Searchfoundation_DomainSubscriptionRequestItem);
  return sub_1B964C580();
}

void Searchfoundation_SubscribeForUpdatesCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F8, &qword_1B96B9970);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_156();
  v37 = type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(v18);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v20);
  v21 = OUTLINED_FUNCTION_1183();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_211_2();
  type metadata accessor for Searchfoundation_CloudChannelsRequestItem(0);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_106_8();
  type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(0);
  OUTLINED_FUNCTION_1217();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v26, v27, v28);
  if (v29)
  {
    sub_1B8D9207C(v10, &qword_1EBACC608, &qword_1B96B9980);
  }

  else
  {
    OUTLINED_FUNCTION_94_11();
    OUTLINED_FUNCTION_696();
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem, protocol conformance descriptor for Searchfoundation_CloudChannelsRequestItem);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_1396(v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_495_0();
    sub_1B944B0D4();
    if (v11)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_1315();
  v35 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v35, v36, v37);
  if (v29)
  {
    sub_1B8D9207C(v12, &qword_1EBACC5F8, &qword_1B96B9970);
LABEL_9:
    OUTLINED_FUNCTION_650_1();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_93_8();
  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem, protocol conformance descriptor for Searchfoundation_DomainSubscriptionRequestItem);
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_151_3();
  sub_1B964C740();
  OUTLINED_FUNCTION_494_1();
  sub_1B944B0D4();
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9417084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBD8, type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand, protocol conformance descriptor for Searchfoundation_SubscribeForUpdatesCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9417104(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD7E0, type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand, protocol conformance descriptor for Searchfoundation_SubscribeForUpdatesCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9417174(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD7E0, type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand, protocol conformance descriptor for Searchfoundation_SubscribeForUpdatesCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B941720C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE70);
  __swift_project_value_buffer(v0, qword_1EBACBE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sportsItem";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "follow";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9417424()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C400();
    }

    else if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B9417498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand(0);
  type metadata accessor for Searchfoundation_SportsItem(0);
  sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem, "IY|5Du\a");
  return sub_1B964C580();
}

void Searchfoundation_UpdateSportsFollowingStatusCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_835_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_177_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_SportsItem(v9);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_165_5();
  type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand(0);
  OUTLINED_FUNCTION_687_0();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v11, v12, v13);
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBACC658, &qword_1B96B99D0);
    OUTLINED_FUNCTION_1343();
  }

  else
  {
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_1278();
    OUTLINED_FUNCTION_978();
    v17 = sub_1B8CD3068(v15, v16, "IY|5Du\a");
    OUTLINED_FUNCTION_460_0(v17);
    OUTLINED_FUNCTION_184_6();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1236();
  if (!v14 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_80_6(), OUTLINED_FUNCTION_713_0(), sub_1B964C670(), !v0))
  {
    OUTLINED_FUNCTION_681_1();
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9417740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBD0, type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand, protocol conformance descriptor for Searchfoundation_UpdateSportsFollowingStatusCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94177C0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD7F8, type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand, protocol conformance descriptor for Searchfoundation_UpdateSportsFollowingStatusCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9417830(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD7F8, type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand, protocol conformance descriptor for Searchfoundation_UpdateSportsFollowingStatusCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B94178BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE88);
  __swift_project_value_buffer(v0, qword_1EBACBE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toolInvocationData";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_ExecuteToolCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    v2 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v2, v3) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
    {
      type metadata accessor for Searchfoundation_ExecuteToolCommand(0);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9417C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBC8, type metadata accessor for Searchfoundation_ExecuteToolCommand, protocol conformance descriptor for Searchfoundation_ExecuteToolCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9417C88(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD810, type metadata accessor for Searchfoundation_ExecuteToolCommand, protocol conformance descriptor for Searchfoundation_ExecuteToolCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9417CF8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD810, type metadata accessor for Searchfoundation_ExecuteToolCommand, protocol conformance descriptor for Searchfoundation_ExecuteToolCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9417D84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBEA0);
  __swift_project_value_buffer(v0, qword_1EBACBEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicationBundleIdentifier";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "menuItemIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9417FA0()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v3 + 16, v5, v4);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_467();
      v2(v8);
    }
  }

  return result;
}

uint64_t sub_1B94180D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBC0, type metadata accessor for Searchfoundation_ExecuteMenuItemCommand, protocol conformance descriptor for Searchfoundation_ExecuteMenuItemCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9418158(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD828, type metadata accessor for Searchfoundation_ExecuteMenuItemCommand, protocol conformance descriptor for Searchfoundation_ExecuteMenuItemCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94181C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD828, type metadata accessor for Searchfoundation_ExecuteMenuItemCommand, protocol conformance descriptor for Searchfoundation_ExecuteMenuItemCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9418260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBEB8);
  __swift_project_value_buffer(v0, qword_1EBACBEB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "commandButtonItem";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "contactButtonItem";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "coreSpotlightButtonItem";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "watchListButtonItem";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "appActionsButtonItem";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sportsFollowButtonItem";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "playWatchListItemButtonItem";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "playAudioButtonItem";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "storeButtonItem";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "buttonAppearance";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 100;
  *v26 = "uniqueId";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94186A8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance;
  v4 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  return v0;
}

uint64_t sub_1B941871C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v6 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance;
  v8 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v10 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  v11 = *(a1 + v10);

  swift_beginAccess();
  *(v1 + v9) = v11;
  return v1;
}

uint64_t sub_1B9418968()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &qword_1EBAB8E90, &qword_1B964D690);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance, &qword_1EBAB8E80, &qword_1B964D680);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9418A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1B9418C28(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B941917C(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B94196EC(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B9419C5C(a1, a2, a3, a4);
        break;
      case 5:
        sub_1B941A1CC(a1, a2, a3, a4);
        break;
      case 6:
        sub_1B941A73C(a1, a2, a3, a4);
        break;
      case 7:
        sub_1B941ACAC(a1, a2, a3, a4);
        break;
      case 8:
        sub_1B941B21C(a1, a2, a3, a4);
        break;
      case 9:
        sub_1B941B78C(a1, a2, a3, a4);
        break;
      case 10:
        sub_1B941BCFC(a2, a1, a3, a4);
        break;
      default:
        if (result == 100)
        {
          sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, MEMORY[0x1E69AAD00]);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9418C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v21, &unk_1EBAC3D48, &qword_1B9689670);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
  v24 = v33;
  sub_1B964C580();
  if (v24)
  {
    v25 = v21;
    return sub_1B8D9207C(v25, &unk_1EBAC3D48, &qword_1B9689670);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &unk_1EBAC3D48, &qword_1B9689670);
    v25 = v19;
    return sub_1B8D9207C(v25, &unk_1EBAC3D48, &qword_1B9689670);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v21, &unk_1EBAC3D48, &qword_1B9689670);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_ContactButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF40, &qword_1B96CA100);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF40, &qword_1B96CA100);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem, protocol conformance descriptor for Searchfoundation_ContactButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF40, &qword_1B96CA100);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF40, &qword_1B96CA100);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF40, &qword_1B96CA100);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF40, &qword_1B96CA100);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B94196EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF48, &qword_1B96CA108);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF48, &qword_1B96CA108);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF48, &qword_1B96CA108);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF48, &qword_1B96CA108);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF48, &qword_1B96CA108);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF48, &qword_1B96CA108);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9419C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_WatchListButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF50, &qword_1B96CA110);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF50, &qword_1B96CA110);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem, protocol conformance descriptor for Searchfoundation_WatchListButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF50, &qword_1B96CA110);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF50, &qword_1B96CA110);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF50, &qword_1B96CA110);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF50, &qword_1B96CA110);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941A1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF58, &qword_1B96CA118);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF58, &qword_1B96CA118);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF58, &qword_1B96CA118);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF58, &qword_1B96CA118);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF58, &qword_1B96CA118);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF58, &qword_1B96CA118);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF60, &qword_1B96CA120);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF60, &qword_1B96CA120);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem, protocol conformance descriptor for Searchfoundation_SportsFollowButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF60, &qword_1B96CA120);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF60, &qword_1B96CA120);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF60, &qword_1B96CA120);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF60, &qword_1B96CA120);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941ACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF68, &qword_1B96CA128);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF68, &qword_1B96CA128);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem, protocol conformance descriptor for Searchfoundation_PlayWatchListItemButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF68, &qword_1B96CA128);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF68, &qword_1B96CA128);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF68, &qword_1B96CA128);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF68, &qword_1B96CA128);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941B21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF70, &qword_1B96CA130);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF70, &qword_1B96CA130);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem, protocol conformance descriptor for Searchfoundation_PlayAudioButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF70, &qword_1B96CA130);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF70, &qword_1B96CA130);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF70, &qword_1B96CA130);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF70, &qword_1B96CA130);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_StoreButtonItem(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF78, &qword_1B96CA138);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v28[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v21, &qword_1EBACDF78, &qword_1B96CA138);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem, protocol conformance descriptor for Searchfoundation_StoreButtonItem);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACDF78, &qword_1B96CA138);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACDF78, &qword_1B96CA138);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACDF78, &qword_1B96CA138);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACDF78, &qword_1B96CA138);
  v27 = v29;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance, protocol conformance descriptor for Searchfoundation_ButtonItemAppearance);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B941BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v23 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  MEMORY[0x1EEE9AC00](v23);
  v22[1] = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v22 - v13;
  swift_beginAccess();
  sub_1B8D92024();
  v15 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v16 = v24;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v17 = v24;
        sub_1B941C510(a1, a2, a3, a4);
        goto LABEL_12;
      case 2u:
        v17 = v24;
        sub_1B941C744(a1, a2, a3, a4);
        goto LABEL_12;
      case 3u:
        v17 = v24;
        sub_1B941C978(a1, a2, a3, a4);
        goto LABEL_12;
      case 4u:
        v17 = v24;
        sub_1B941CBAC(a1, a2, a3, a4);
        goto LABEL_12;
      case 5u:
        v17 = v24;
        sub_1B941CDE0(a1, a2, a3, a4);
        goto LABEL_12;
      case 6u:
        v17 = v24;
        sub_1B941D014(a1, a2, a3, a4);
        goto LABEL_12;
      case 7u:
        v18 = v24;
        sub_1B941D248(a1, a2, a3, a4);
        goto LABEL_15;
      case 8u:
        v18 = v24;
        sub_1B941D47C(a1, a2, a3, a4);
LABEL_15:
        v16 = v18;
        if (v18)
        {
          return sub_1B944B0D4();
        }

        sub_1B944B0D4();
        break;
      default:
        v17 = v24;
        sub_1B941C2E0(a1, a2, a3, a4);
LABEL_12:
        v16 = v17;
        result = sub_1B944B0D4();
        if (!v17)
        {
          break;
        }

        return result;
    }
  }

  v20 = v23;
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8E80, &qword_1B964D680);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance, protocol conformance descriptor for Searchfoundation_ButtonItemAppearance);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v16)
    {
      return result;
    }
  }

  v21 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  result = *(a1 + v21);
  if (result)
  {
    return sub_1B964C720();
  }

  return result;
}

uint64_t sub_1B941C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_ContactButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem, protocol conformance descriptor for Searchfoundation_ContactButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_WatchListButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem, protocol conformance descriptor for Searchfoundation_WatchListButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941CDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem, protocol conformance descriptor for Searchfoundation_SportsFollowButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem, protocol conformance descriptor for Searchfoundation_PlayWatchListItemButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem, protocol conformance descriptor for Searchfoundation_PlayAudioButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_StoreButtonItem(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem, protocol conformance descriptor for Searchfoundation_StoreButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void sub_1B941D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v74 = v23;
  v25 = v24;
  v72[6] = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E78, &unk_1B96CA0F0);
  OUTLINED_FUNCTION_166_4(v28, &a17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_185();
  v73 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  v32 = OUTLINED_FUNCTION_183(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_266_0();
  v35 = OUTLINED_FUNCTION_207_3(v34);
  type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(v35);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E88, &qword_1B964D688) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v72 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v43 = OUTLINED_FUNCTION_183(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_447_0();
  OUTLINED_FUNCTION_521(v25 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &v80);
  v45 = v74;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v45 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &v79);
  v46 = *(v38 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_117(v41);
  if (v48)
  {

    sub_1B8D9207C(v20, &qword_1EBAB8E90, &qword_1B964D690);
    OUTLINED_FUNCTION_117(&v41[v46]);
    v47 = v25;
    if (v48)
    {
      sub_1B8D9207C(v41, &qword_1EBAB8E90, &qword_1B964D690);
      goto LABEL_11;
    }

LABEL_9:
    v49 = &qword_1EBAB8E88;
    v50 = &qword_1B964D688;
    v51 = v41;
LABEL_20:
    sub_1B8D9207C(v51, v49, v50);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_117(&v41[v46]);
  if (v48)
  {

    sub_1B8D9207C(v20, &qword_1EBAB8E90, &qword_1B964D690);
    OUTLINED_FUNCTION_18_24();
    sub_1B944B0D4();
    goto LABEL_9;
  }

  sub_1B944B02C();

  OUTLINED_FUNCTION_491();
  static Searchfoundation_ButtonItem.OneOf_Value.== infix(_:_:)();
  v53 = v52;
  sub_1B944B0D4();
  v54 = OUTLINED_FUNCTION_467();
  sub_1B8D9207C(v54, v55, &qword_1B964D690);
  OUTLINED_FUNCTION_541_0();
  sub_1B944B0D4();
  v56 = OUTLINED_FUNCTION_867_0();
  v47 = v25;
  sub_1B8D9207C(v56, v57, &qword_1B964D690);
  if ((v53 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_521(v47 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance, &v78);
  v58 = v72[5];
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_521(v45 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance, &v77);
  v59 = *(v72[4] + 48);
  v60 = v73;
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_1399();
  v61 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_44(v61, v62);
  if (v48)
  {
    sub_1B8D9207C(v58, &qword_1EBAB8E80, &qword_1B964D680);
    OUTLINED_FUNCTION_48(v60 + v59);
    if (v48)
    {
      sub_1B8D9207C(v60, &qword_1EBAB8E80, &qword_1B964D680);
LABEL_24:
      OUTLINED_FUNCTION_521(v47 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, &v76);

      OUTLINED_FUNCTION_521(v45 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, &v75);

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v60 + v59);
  if (v63)
  {
    sub_1B8D9207C(v58, &qword_1EBAB8E80, &qword_1B964D680);
    sub_1B944B0D4();
LABEL_19:
    v49 = &qword_1EBAB8E78;
    v50 = &unk_1B96CA0F0;
    v51 = v60;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_344_2();
  sub_1B944B02C();
  OUTLINED_FUNCTION_427();
  static Searchfoundation_ButtonItemAppearance.== infix(_:_:)();
  v65 = v64;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v66, v67, v68);
  sub_1B944B0D4();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v69, v70, v71);
  if (v65)
  {
    goto LABEL_24;
  }

LABEL_21:

LABEL_22:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B941DD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBB8, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941DDF0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941DE60(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B941DEEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBED0);
  __swift_project_value_buffer(v0, qword_1EBACBED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "style";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "role";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tintColor";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "renderingMode";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "preferNoFallbackImage";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ButtonItemAppearance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B941E244(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B941E2AC(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B941E314(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B941E3C8(v11, v12, v13, v14);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B941E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

void Searchfoundation_ButtonItemAppearance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_192_4();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_165_5();
  if (!*v0 || (OUTLINED_FUNCTION_540_0(*v0), sub_1B944C81C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    v7 = *(v2 + 16);
    if (!v7 || (OUTLINED_FUNCTION_540_0(v7), sub_1B944C870(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
    {
      type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
      OUTLINED_FUNCTION_1316();
      OUTLINED_FUNCTION_118(v3);
      if (v8)
      {
        sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
      }

      else
      {
        OUTLINED_FUNCTION_5_36();
        OUTLINED_FUNCTION_190_0();
        sub_1B944B02C();
        OUTLINED_FUNCTION_70_10();
        sub_1B8CD3068(v9, v10, protocol conformance descriptor for Searchfoundation_Color);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_32_19();
        sub_1B944B0D4();
        if (v1)
        {
          goto LABEL_15;
        }
      }

      v11 = *(v2 + 32);
      if (!v11 || (OUTLINED_FUNCTION_540_0(v11), sub_1B944C8C4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
      {
        OUTLINED_FUNCTION_1209();
        if (!v8 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
        {
          OUTLINED_FUNCTION_163_6();
          sub_1B964C290();
        }
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_ButtonItemAppearance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_Color(v4);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_106_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v9 = *v1;
  v10 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v10)
    {
      case 1:
        if (v9 != 1)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 2:
        if (v9 != 2)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 3:
        if (v9 != 3)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 4:
        if (v9 != 4)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 5:
        if (v9 != 5)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      default:
        if (!v9)
        {
          goto LABEL_6;
        }

        goto LABEL_45;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_45;
  }

LABEL_6:
  v11 = v1[2];
  v12 = v0[2];
  if (*(v0 + 24) == 1)
  {
    switch(v12)
    {
      case 1:
        if (v11 != 1)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      case 2:
        if (v11 != 2)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      case 3:
        if (v11 != 3)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      case 4:
        if (v11 != 4)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      default:
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_45;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_45;
  }

LABEL_11:
  type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  v13 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (!v14)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v13);
    if (!v14)
    {
      OUTLINED_FUNCTION_5_36();
      OUTLINED_FUNCTION_1275();
      OUTLINED_FUNCTION_494_0();
      if (v17 || (, , OUTLINED_FUNCTION_616(), sub_1B947FDE4(), OUTLINED_FUNCTION_813(), , (&unk_1B96B7BD0 & 1) != 0))
      {
        v18 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v19, v20, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_654_0();
        OUTLINED_FUNCTION_78_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_531_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if (v18)
        {
          goto LABEL_34;
        }

LABEL_45:
        v24 = 0;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_336_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v15 = &qword_1EBACB050;
      v16 = &unk_1B96B7BD0;
LABEL_20:
      sub_1B8D9207C(v2, v15, v16);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_32_19();
    sub_1B944B0D4();
LABEL_19:
    v15 = &qword_1EBACB058;
    v16 = &unk_1B96CA9D0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_37_0(v2 + v13);
  if (!v14)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_34:
  if (!sub_1B8D92198(v1[4], *(v1 + 40), v0[4]))
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v14)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_1309();
  OUTLINED_FUNCTION_0_84();
  v23 = sub_1B8CD3068(v21, v22, MEMORY[0x1E69AAC10]);
  v24 = OUTLINED_FUNCTION_199_0(v23);
LABEL_46:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B941EAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBB0, type metadata accessor for Searchfoundation_ButtonItemAppearance, protocol conformance descriptor for Searchfoundation_ButtonItemAppearance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941EB28(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance, protocol conformance descriptor for Searchfoundation_ButtonItemAppearance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941EB98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance, protocol conformance descriptor for Searchfoundation_ButtonItemAppearance);

  return sub_1B964C5D0();
}

uint64_t sub_1B941EC24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBEE8);
  __swift_project_value_buffer(v0, qword_1EBACBEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B964E4A0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "image";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "command";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "previewButtonItems";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "isDestructive";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "uniqueId";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_CommandButtonItem.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B941F020(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B941F0D4(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B941F188();
        break;
      case 5:
      case 6:
        continue;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        if (v1 == 100)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C560();
        }

        break;
    }
  }
}

uint64_t sub_1B941F020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t sub_1B941F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
  return sub_1B964C580();
}

void sub_1B941F188()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD3068(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

void Searchfoundation_CommandButtonItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_Command(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v21);
  v22 = OUTLINED_FUNCTION_190_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_183(v24);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_Image(v26);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_106_8();
  v34 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  OUTLINED_FUNCTION_1240(*(v34 + 36));
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v13);
  if (v28)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_98_9();
    sub_1B8CD3068(v29, v30, protocol conformance descriptor for Searchfoundation_Image);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_1174();
    sub_1B964C740();
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
    if (v10)
    {
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v31 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v10))
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_81(v11, 1);
    if (v28)
    {
      sub_1B8D9207C(v11, &qword_1EBAB8E98, &qword_1B964D698);
    }

    else
    {
      OUTLINED_FUNCTION_17_24();
      OUTLINED_FUNCTION_1322();
      sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command, protocol conformance descriptor for Searchfoundation_Command);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      OUTLINED_FUNCTION_190_4();
      sub_1B944B0D4();
      if (v10)
      {
        goto LABEL_18;
      }
    }

    if (!*(*(v12 + 16) + 16) || (type metadata accessor for Searchfoundation_ButtonItem(0), OUTLINED_FUNCTION_30_26(), sub_1B8CD3068(v32, v33, protocol conformance descriptor for Searchfoundation_ButtonItem), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v10))
    {
      if (*(v12 + 24) != 1 || (OUTLINED_FUNCTION_119_4(), sub_1B964C670(), !v10))
      {
        if (!*(v12 + 32) || (OUTLINED_FUNCTION_119_4(), sub_1B964C720(), !v10))
        {
          OUTLINED_FUNCTION_198();
          sub_1B964C290();
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941F604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBA8, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941F684(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941F6F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B941F780()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF00);
  __swift_project_value_buffer(v0, qword_1EBACBF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contactIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "actionTypesToShow";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ContactButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B941FA80(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C440();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B941FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ContactButtonItem(0);
  type metadata accessor for Searchfoundation_Person(0);
  sub_1B8CD3068(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
  return sub_1B964C580();
}

void Searchfoundation_ContactButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_192_4();
  type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_165_5();
  OUTLINED_FUNCTION_15_2();
  if (!v6 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    type metadata accessor for Searchfoundation_ContactButtonItem(0);
    OUTLINED_FUNCTION_1316();
    OUTLINED_FUNCTION_118(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
    }

    else
    {
      OUTLINED_FUNCTION_10_33();
      OUTLINED_FUNCTION_190_0();
      sub_1B944B02C();
      OUTLINED_FUNCTION_135_6();
      sub_1B8CD3068(v8, v9, protocol conformance descriptor for Searchfoundation_Person);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_45_15();
      sub_1B944B0D4();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C620(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v0))
      {
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941FD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBA0, type metadata accessor for Searchfoundation_ContactButtonItem, protocol conformance descriptor for Searchfoundation_ContactButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941FE0C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem, protocol conformance descriptor for Searchfoundation_ContactButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941FE7C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem, protocol conformance descriptor for Searchfoundation_ContactButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B941FF08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF18);
  __swift_project_value_buffer(v0, qword_1EBACBF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "watchListItem";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggleButtonConfiguration";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "uniqueId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9420168()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v2 = type metadata accessor for Searchfoundation_WatchListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v4 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  return v0;
}

uint64_t sub_1B94201DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v6 = type metadata accessor for Searchfoundation_WatchListItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v8 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v10 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  v11 = *(a1 + v10);

  swift_beginAccess();
  *(v1 + v9) = v11;
  return v1;
}

uint64_t sub_1B9420428()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem, &qword_1EBACC5D8, &qword_1B96B9948);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration, &qword_1EBACC6F0, &qword_1B96B9A68);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9420514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, MEMORY[0x1E69AAD00]);
        break;
      case 2:
        sub_1B94206C8(a2, a1, a3, a4);
        break;
      case 1:
        sub_1B94205EC(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B94205EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WatchListItem(0);
  sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem, protocol conformance descriptor for Searchfoundation_WatchListItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94206C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94207D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v18 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  MEMORY[0x1EEE9AC00](v18);
  v17[1] = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for Searchfoundation_WatchListItem(0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBACC5D8, &qword_1B96B9948);
    v13 = v19;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem, protocol conformance descriptor for Searchfoundation_WatchListItem);
    v14 = v19;
    sub_1B964C740();
    v13 = v14;
    result = sub_1B944B0D4();
    if (v14)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v7, 1, v18) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBACC6F0, &qword_1B96B9A68);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v13)
    {
      return result;
    }
  }

  v16 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  result = *(a1 + v16);
  if (result)
  {
    return sub_1B964C720();
  }

  return result;
}

BOOL sub_1B9420BB8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v41 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  MEMORY[0x1EEE9AC00](v41);
  v38[1] = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F8, &qword_1B96B9A70);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v38[2] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v38 - v8;
  v9 = type metadata accessor for Searchfoundation_WatchListItem(0);
  MEMORY[0x1EEE9AC00](v9);
  v38[3] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E0, &qword_1B96B9950);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v38 - v17;
  swift_beginAccess();
  v19 = v43;
  sub_1B8D92024();
  swift_beginAccess();
  v20 = *(v12 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v9) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(&v14[v20], 1, v9) != 1)
    {
      sub_1B944B02C();

      v25 = static Searchfoundation_WatchListItem.== infix(_:_:)();
      sub_1B944B0D4();
      sub_1B8D9207C(v18, &qword_1EBACC5D8, &qword_1B96B9948);
      sub_1B944B0D4();
      v21 = a1;
      sub_1B8D9207C(v14, &qword_1EBACC5D8, &qword_1B96B9948);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1B8D9207C(v18, &qword_1EBACC5D8, &qword_1B96B9948);
    sub_1B944B0D4();
LABEL_6:
    v22 = &qword_1EBACC5E0;
    v23 = &qword_1B96B9950;
    v24 = v14;
LABEL_14:
    sub_1B8D9207C(v24, v22, v23);
    goto LABEL_15;
  }

  sub_1B8D9207C(v18, &qword_1EBACC5D8, &qword_1B96B9948);
  v21 = a1;
  if (__swift_getEnumTagSinglePayload(&v14[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1B8D9207C(v14, &qword_1EBACC5D8, &qword_1B96B9948);
LABEL_8:
  swift_beginAccess();
  v26 = v40;
  sub_1B8D92024();
  swift_beginAccess();
  v27 = *(v39 + 48);
  v28 = v42;
  sub_1B8D92024();
  sub_1B8D92024();
  v29 = v41;
  if (__swift_getEnumTagSinglePayload(v28, 1, v41) == 1)
  {
    sub_1B8D9207C(v26, &qword_1EBACC6F0, &qword_1B96B9A68);
    if (__swift_getEnumTagSinglePayload(v28 + v27, 1, v29) == 1)
    {
      sub_1B8D9207C(v28, &qword_1EBACC6F0, &qword_1B96B9A68);
LABEL_18:
      v33 = v19;
      v34 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v35 = *(v21 + v34);

      v36 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v37 = *(v33 + v36);

      return v35 == v37;
    }

    goto LABEL_13;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v28 + v27, 1, v29) == 1)
  {
    sub_1B8D9207C(v26, &qword_1EBACC6F0, &qword_1B96B9A68);
    sub_1B944B0D4();
LABEL_13:
    v22 = &qword_1EBACC6F8;
    v23 = &qword_1B96B9A70;
    v24 = v28;
    goto LABEL_14;
  }

  sub_1B944B02C();
  static Searchfoundation_ToggleButtonConfiguration.== infix(_:_:)();
  v32 = v31;
  sub_1B944B0D4();
  sub_1B8D9207C(v26, &qword_1EBACC6F0, &qword_1B96B9A68);
  sub_1B944B0D4();
  sub_1B8D9207C(v28, &qword_1EBACC6F0, &qword_1B96B9A68);
  if (v32)
  {
    goto LABEL_18;
  }

LABEL_15:

  return 0;
}

uint64_t sub_1B94213B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB98, type metadata accessor for Searchfoundation_WatchListButtonItem, protocol conformance descriptor for Searchfoundation_WatchListButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9421434(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem, protocol conformance descriptor for Searchfoundation_WatchListButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94214A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem, protocol conformance descriptor for Searchfoundation_WatchListButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B942153C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF38);
  __swift_project_value_buffer(v0, qword_1EBACBF38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionItemTypes";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicationBundleIdentifier";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coreSpotlightIdentifier";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CoreSpotlightButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C4D0();
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_CoreSpotlightButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
        {
          type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(0);
          OUTLINED_FUNCTION_163_6();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B94219A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB90, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9421A28(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9421A98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem, protocol conformance descriptor for Searchfoundation_CoreSpotlightButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9421B24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF50);
  __swift_project_value_buffer(v0, qword_1EBACBF50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appAutoShortcutsItem";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "uniqueId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_AppAutoShortcutsButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C560();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9421D78(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9421D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  type metadata accessor for Searchfoundation_AppAutoShortcutsItem(0);
  sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsItem);
  return sub_1B964C580();
}

void Searchfoundation_AppAutoShortcutsButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_835_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_177_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_AppAutoShortcutsItem(v9);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_165_5();
  type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  OUTLINED_FUNCTION_687_0();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v11, v12, v13);
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBACC6E0, &qword_1B96B9A58);
    OUTLINED_FUNCTION_1343();
  }

  else
  {
    OUTLINED_FUNCTION_100_8();
    OUTLINED_FUNCTION_1278();
    v15 = sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsItem);
    OUTLINED_FUNCTION_460_0(v15);
    OUTLINED_FUNCTION_629_0();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  if (!*v16 || (OUTLINED_FUNCTION_80_6(), OUTLINED_FUNCTION_713_0(), sub_1B964C720(), !v0))
  {
    OUTLINED_FUNCTION_681_1();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9422034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB88, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94220B4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9422124(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94221F4()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_1_0();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B9422294(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_156_4();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v9 = sub_1B8CD3068(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B94223AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB80, type metadata accessor for Searchfoundation_AppAutoShortcutsItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942242C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942249C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem, protocol conformance descriptor for Searchfoundation_AppAutoShortcutsItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9422528()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF80);
  __swift_project_value_buffer(v0, qword_1EBACBF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "untoggledTitle";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggledTitle";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "untoggledImage";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toggledImage";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ToggleButtonConfiguration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9422828(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B94228DC(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9422828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t sub_1B94228DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

void Searchfoundation_ToggleButtonConfiguration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_447_0();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_1();
  if (!v9 || (v1 = v0, sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v10 || (v1 = v0, sub_1B964C700(), !v0))
    {
      v16 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
      sub_1B8D92024();
      OUTLINED_FUNCTION_32(v2);
      if (v11)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
      }

      else
      {
        OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_186();
        sub_1B944B02C();
        OUTLINED_FUNCTION_98_9();
        sub_1B8CD3068(v12, v13, protocol conformance descriptor for Searchfoundation_Image);
        OUTLINED_FUNCTION_709_0();
        OUTLINED_FUNCTION_1174();
        sub_1B964C740();
        OUTLINED_FUNCTION_24_24();
        sub_1B944B0D4();
        if (v1)
        {
          goto LABEL_14;
        }
      }

      OUTLINED_FUNCTION_285_1(*(v16 + 32));
      sub_1B8D92024();
      OUTLINED_FUNCTION_243_1();
      if (v11)
      {
        sub_1B8D9207C(v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_13:
        OUTLINED_FUNCTION_686();
        sub_1B964C290();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_4_47();
      sub_1B944B02C();
      OUTLINED_FUNCTION_98_9();
      sub_1B8CD3068(v14, v15, protocol conformance descriptor for Searchfoundation_Image);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_1174();
      sub_1B964C740();
      OUTLINED_FUNCTION_24_24();
      sub_1B944B0D4();
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_ToggleButtonConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_Image(v6);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_1246();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1247();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_441();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_428();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_1235();
  v20 = v17 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v43 = v1;
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v21 = *(v12 + 48);
  OUTLINED_FUNCTION_89_10();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v4);
  if (v17)
  {
    OUTLINED_FUNCTION_99_0(v4 + v21);
    v22 = v43;
    if (v17)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_502();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v4 + v21);
  if (v23)
  {
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
LABEL_19:
    v24 = &qword_1EBAB8EB0;
    v25 = &qword_1B964D6B0;
LABEL_20:
    v26 = v4;
LABEL_34:
    sub_1B8D9207C(v26, v24, v25);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_4_47();
  sub_1B944B02C();
  if (*(v0 + *(v3 + 20)) != *(v5 + *(v3 + 20)))
  {

    sub_1B94C6890();
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_7();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_182();
      sub_1B944B0D4();
      v24 = &qword_1EBAB8EA8;
      v25 = &unk_1B96B77D0;
      goto LABEL_20;
    }
  }

  v29 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v30, v31, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_177_1();
  sub_1B964C850();
  OUTLINED_FUNCTION_137_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_1_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v4, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v22 = v43;
  if ((v29 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  v32 = *(v12 + 48);
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v22);
  if (v17)
  {
    OUTLINED_FUNCTION_99_0(v22 + v32);
    if (v17)
    {
      sub_1B8D9207C(v22, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_40:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      v42 = sub_1B8CD3068(v40, v41, MEMORY[0x1E69AAC10]);
      v34 = OUTLINED_FUNCTION_199_0(v42);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v22 + v32);
  if (v33)
  {
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
LABEL_32:
    v24 = &qword_1EBAB8EB0;
    v25 = &qword_1B964D6B0;
LABEL_33:
    v26 = v22;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_1336();
  sub_1B944B02C();
  if (*(v2 + *(v3 + 20)) != *(v32 + *(v3 + 20)))
  {

    OUTLINED_FUNCTION_113_0();
    sub_1B94C6890();
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_7();
      sub_1B944B0D4();
      sub_1B944B0D4();
      v24 = &qword_1EBAB8EA8;
      v25 = &unk_1B96B77D0;
      goto LABEL_33;
    }
  }

  v37 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v38, v39, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_257();
  sub_1B964C850();
  OUTLINED_FUNCTION_137_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_541_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v22, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v37)
  {
    goto LABEL_40;
  }

LABEL_35:
  v34 = 0;
LABEL_36:
  OUTLINED_FUNCTION_264(v34);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B942321C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB78, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942329C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942330C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);

  return sub_1B964C5D0();
}

uint64_t sub_1B9423398()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF98);
  __swift_project_value_buffer(v0, qword_1EBACBF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sportsItem";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggleButtonConfiguration";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fallbackTitle";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_SportsFollowButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C560();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9423748(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9423694(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9423694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  type metadata accessor for Searchfoundation_SportsItem(0);
  sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem, "IY|5Du\a");
  return sub_1B964C580();
}

uint64_t sub_1B9423748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);
  return sub_1B964C580();
}

void Searchfoundation_SportsFollowButtonItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC658, &qword_1B96B99D0);
  OUTLINED_FUNCTION_183(v22);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_SportsItem(v24);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_106_8();
  type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v13);
  if (v26)
  {
    sub_1B8D9207C(v13, &qword_1EBACC658, &qword_1B96B99D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_978();
    sub_1B8CD3068(v27, v28, "IY|5Du\a");
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_119_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_184_6();
    sub_1B944B0D4();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_81(v12, 1);
  if (v26)
  {
    sub_1B8D9207C(v12, &qword_1EBACC6F0, &qword_1B96B9A68);
  }

  else
  {
    OUTLINED_FUNCTION_50_13();
    OUTLINED_FUNCTION_1322();
    sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_119_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_628_0();
    sub_1B944B0D4();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v29 || (OUTLINED_FUNCTION_119_4(), sub_1B964C700(), !v11))
  {
    if (!*(v10 + 16) || (OUTLINED_FUNCTION_119_4(), sub_1B964C720(), !v11))
    {
      OUTLINED_FUNCTION_318_1();
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9423BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB70, type metadata accessor for Searchfoundation_SportsFollowButtonItem, protocol conformance descriptor for Searchfoundation_SportsFollowButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9423C30(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem, protocol conformance descriptor for Searchfoundation_SportsFollowButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9423CA0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem, protocol conformance descriptor for Searchfoundation_SportsFollowButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9423D38()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBFB0);
  __swift_project_value_buffer(v0, qword_1EBACBFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_SportsItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_507_0();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9423F88(v3, v4, v5, v6);
    }
  }

  return result;
}

void Searchfoundation_SportsItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B944C918(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      type metadata accessor for Searchfoundation_SportsItem(0);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Searchfoundation_SportsItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v1 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v1 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v1)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v1 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_84_1();
    v6 = v6 && v4 == v5;
    if (v6 || (sub_1B964C9F0() & 1) != 0)
    {
      type metadata accessor for Searchfoundation_SportsItem(0);
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_0_84();
      v9 = sub_1B8CD3068(v7, v8, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v9) & 1;
    }
  }

  return 0;
}

uint64_t sub_1B9424224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB68, type metadata accessor for Searchfoundation_SportsItem, protocol conformance descriptor for Searchfoundation_SportsItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94242A4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem, "IY|5Du\a");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9424314(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem, "IY|5Du\a");

  return sub_1B964C5D0();
}

uint64_t sub_1B94243A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBFC8);
  __swift_project_value_buffer(v0, qword_1EBACBFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "watchListItem";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PlayWatchListItemButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B942474C(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9424698(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9424698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  type metadata accessor for Searchfoundation_WatchListItem(0);
  sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem, protocol conformance descriptor for Searchfoundation_WatchListItem);
  return sub_1B964C580();
}

uint64_t sub_1B942474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

void Searchfoundation_PlayWatchListItemButtonItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_Image(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v21);
  v22 = OUTLINED_FUNCTION_190_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_183(v24);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_WatchListItem(v26);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_106_8();
  v34 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  OUTLINED_FUNCTION_1240(*(v34 + 28));
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v13);
  if (v28)
  {
    sub_1B8D9207C(v13, &qword_1EBACC5D8, &qword_1B96B9948);
  }

  else
  {
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_987();
    sub_1B8CD3068(v29, v30, protocol conformance descriptor for Searchfoundation_WatchListItem);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_119_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_185_7();
    sub_1B944B0D4();
    if (v10)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v31 || (OUTLINED_FUNCTION_119_4(), sub_1B964C700(), !v10))
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_81(v11, 1);
    if (v28)
    {
      sub_1B8D9207C(v11, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }

    else
    {
      OUTLINED_FUNCTION_4_47();
      OUTLINED_FUNCTION_1322();
      OUTLINED_FUNCTION_98_9();
      sub_1B8CD3068(v32, v33, protocol conformance descriptor for Searchfoundation_Image);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_119_4();
      sub_1B964C740();
      OUTLINED_FUNCTION_24_24();
      sub_1B944B0D4();
      if (v10)
      {
        goto LABEL_14;
      }
    }

    if (!*(v12 + 16) || (OUTLINED_FUNCTION_119_4(), sub_1B964C720(), !v10))
    {
      OUTLINED_FUNCTION_198();
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9424B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB60, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem, protocol conformance descriptor for Searchfoundation_PlayWatchListItemButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9424C10(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem, protocol conformance descriptor for Searchfoundation_PlayWatchListItemButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9424C80(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem, protocol conformance descriptor for Searchfoundation_PlayWatchListItemButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9424D0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBFE0);
  __swift_project_value_buffer(v0, qword_1EBACBFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaMetadata";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggleButtonConfiguration";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "audioData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9424FA8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v2 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v4 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData;
  v6 = type metadata accessor for Searchfoundation_AudioData(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  return v0;
}

uint64_t sub_1B9425040(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v17 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v8 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v10 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData;
  v12 = type metadata accessor for Searchfoundation_AudioData(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  v15 = *(a1 + v14);

  swift_beginAccess();
  *(v1 + v13) = v15;
  return v1;
}

uint64_t sub_1B942537C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration, &qword_1EBACC6F0, &qword_1B96B9A68);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData, &qword_1EBACC698, &qword_1B96B9A08);
  return v0;
}

uint64_t sub_1B9425464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, MEMORY[0x1E69AAD00]);
        break;
      case 2:
        sub_1B942563C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B9425718(a2, a1, a3, a4);
        break;
      case 1:
        sub_1B9425560(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9425560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata, protocol conformance descriptor for Searchfoundation_MediaMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9425718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AudioData(0);
  sub_1B8CD3068(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData, protocol conformance descriptor for Searchfoundation_AudioData);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94257F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  v7 = a6();
  return OUTLINED_FUNCTION_199_1(v7);
}

uint64_t sub_1B94258A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22 = v21 - v6;
  v23 = type metadata accessor for Searchfoundation_AudioData(0);
  MEMORY[0x1EEE9AC00](v23);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v24 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  MEMORY[0x1EEE9AC00](v24);
  v21[2] = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v21 - v13;
  v15 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBACC5E8, &qword_1B96B9958);
    v16 = v25;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata, protocol conformance descriptor for Searchfoundation_MediaMetadata);
    v17 = v25;
    sub_1B964C740();
    v16 = v17;
    result = sub_1B944B0D4();
    if (v17)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACC6F0, &qword_1B96B9A68);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, protocol conformance descriptor for Searchfoundation_ToggleButtonConfiguration);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v16)
    {
      return result;
    }
  }

  swift_beginAccess();
  v19 = v22;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_1B8D9207C(v19, &qword_1EBACC698, &qword_1B96B9A08);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData, protocol conformance descriptor for Searchfoundation_AudioData);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v16)
    {
      return result;
    }
  }

  v20 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  result = *(a1 + v20);
  if (result)
  {
    return sub_1B964C720();
  }

  return result;
}

BOOL sub_1B9425E3C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v59 = type metadata accessor for Searchfoundation_AudioData(0);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE7C0, &qword_1B96CA748);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v54 - v8;
  v65 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F8, &qword_1B96B9A70);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v54 - v14;
  v15 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F0, &unk_1B96B9960);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v54 - v25;
  swift_beginAccess();
  v27 = a1;
  sub_1B8D92024();
  v28 = v68;
  swift_beginAccess();
  v29 = *(v18 + 56);
  sub_1B8D92024();
  v30 = v28;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v15) == 1)
  {

    sub_1B8D9207C(v26, &qword_1EBACC5E8, &qword_1B96B9958);
    if (__swift_getEnumTagSinglePayload(&v20[v29], 1, v15) == 1)
    {
      sub_1B8D9207C(v20, &qword_1EBACC5E8, &qword_1B96B9958);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_1EBACC5F0;
    v32 = &unk_1B96B9960;
    v33 = v20;
LABEL_22:
    sub_1B8D9207C(v33, v31, v32);
    goto LABEL_23;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v20[v29], 1, v15) == 1)
  {

    sub_1B8D9207C(v26, &qword_1EBACC5E8, &qword_1B96B9958);
    sub_1B944B0D4();
    goto LABEL_6;
  }

  sub_1B944B02C();

  v34 = static Searchfoundation_MediaMetadata.== infix(_:_:)(v24);
  sub_1B944B0D4();
  sub_1B8D9207C(v26, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B944B0D4();
  sub_1B8D9207C(v20, &qword_1EBACC5E8, &qword_1B96B9958);
  if ((v34 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  swift_beginAccess();
  v35 = v64;
  sub_1B8D92024();
  swift_beginAccess();
  v36 = *(v63 + 48);
  v37 = v66;
  sub_1B8D92024();
  sub_1B8D92024();
  v38 = v65;
  if (__swift_getEnumTagSinglePayload(v37, 1, v65) != 1)
  {
    sub_1B8D92024();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37 + v36, 1, v38);
    v40 = v67;
    if (EnumTagSinglePayload != 1)
    {
      sub_1B944B02C();
      static Searchfoundation_ToggleButtonConfiguration.== infix(_:_:)();
      v43 = v42;
      sub_1B944B0D4();
      sub_1B8D9207C(v35, &qword_1EBACC6F0, &qword_1B96B9A68);
      sub_1B944B0D4();
      sub_1B8D9207C(v37, &qword_1EBACC6F0, &qword_1B96B9A68);
      if ((v43 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    sub_1B8D9207C(v35, &qword_1EBACC6F0, &qword_1B96B9A68);
    sub_1B944B0D4();
LABEL_13:
    v31 = &qword_1EBACC6F8;
    v32 = &qword_1B96B9A70;
LABEL_21:
    v33 = v37;
    goto LABEL_22;
  }

  sub_1B8D9207C(v35, &qword_1EBACC6F0, &qword_1B96B9A68);
  v39 = __swift_getEnumTagSinglePayload(v37 + v36, 1, v38);
  v40 = v67;
  if (v39 != 1)
  {
    goto LABEL_13;
  }

  sub_1B8D9207C(v37, &qword_1EBACC6F0, &qword_1B96B9A68);
LABEL_15:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v44 = *(v58 + 48);
  v37 = v60;
  sub_1B8D92024();
  sub_1B8D92024();
  v45 = v59;
  if (__swift_getEnumTagSinglePayload(v37, 1, v59) == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBACC698, &qword_1B96B9A08);
    if (__swift_getEnumTagSinglePayload(v37 + v44, 1, v45) == 1)
    {
      sub_1B8D9207C(v37, &qword_1EBACC698, &qword_1B96B9A08);
LABEL_26:
      v50 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v51 = *(v27 + v50);

      v52 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v53 = *(v30 + v52);

      return v51 == v53;
    }

    goto LABEL_20;
  }

  v46 = v56;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v37 + v44, 1, v45) == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBACC698, &qword_1B96B9A08);
    sub_1B944B0D4();
LABEL_20:
    v31 = &qword_1EBACE7C0;
    v32 = &qword_1B96CA748;
    goto LABEL_21;
  }

  v48 = v55;
  sub_1B944B02C();
  v49 = static Searchfoundation_AudioData.== infix(_:_:)(v46, v48);
  sub_1B944B0D4();
  sub_1B8D9207C(v40, &qword_1EBACC698, &qword_1B96B9A08);
  sub_1B944B0D4();
  sub_1B8D9207C(v37, &qword_1EBACC698, &qword_1B96B9A08);
  if (v49)
  {
    goto LABEL_26;
  }

LABEL_23:

  return 0;
}

uint64_t sub_1B94269A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB58, type metadata accessor for Searchfoundation_PlayAudioButtonItem, "YU|5Lr\a");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9426A24(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem, protocol conformance descriptor for Searchfoundation_PlayAudioButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9426A94(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem, protocol conformance descriptor for Searchfoundation_PlayAudioButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9426B20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC000);
  __swift_project_value_buffer(v0, qword_1EBACC000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shouldOpenAppAfterInstallCompletes";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifierType";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_StoreButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C400();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9426E20(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

void Searchfoundation_StoreButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B944C96C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v0))
        {
          type metadata accessor for Searchfoundation_StoreButtonItem(0);
          OUTLINED_FUNCTION_163_6();
          sub_1B964C290();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B9427004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB50, type metadata accessor for Searchfoundation_StoreButtonItem, protocol conformance descriptor for Searchfoundation_StoreButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9427084(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem, protocol conformance descriptor for Searchfoundation_StoreButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94270F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem, protocol conformance descriptor for Searchfoundation_StoreButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9427174()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC018);
  __swift_project_value_buffer(v0, qword_1EBACC018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StoreButtonItemIdentifierTypeAdamID";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StoreButtonItemIdentifierTypeBundleID";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9427370()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC030);
  __swift_project_value_buffer(v0, qword_1EBACC030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "team1";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 102;
  *v30 = "team2";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 103;
  *v32 = "accessibilityDescription";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 104;
  *v34 = "eventStatus";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94278B4()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1;
  v6 = type metadata accessor for Searchfoundation_SportsTeam(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B94279B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v43 - v6;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v43 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v44 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v45 = (v1 + 80);
  *(v1 + 88) = 1;
  v7 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v46 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v8 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  v47 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  v49 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1;
  v50 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1;
  v12 = type metadata accessor for Searchfoundation_SportsTeam(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v51 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  v52 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  v54 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v15;
  swift_beginAccess();
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v16;
  *(v1 + 32) = v17;

  swift_beginAccess();
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;

  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v18;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v18;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 58);
  v20 = v43;
  swift_beginAccess();
  *v20 = v18;
  swift_beginAccess();
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = v44;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 72) = v21;

  swift_beginAccess();
  v24 = *(a1 + 80);
  LOBYTE(v19) = *(a1 + 88);
  v25 = v45;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 88) = v19;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = v47;
  swift_beginAccess();
  *v29 = v28;
  v29[1] = v27;

  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  v33 = v49;
  swift_beginAccess();
  *v33 = v32;
  v33[1] = v31;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  v37 = v52;
  swift_beginAccess();
  *v37 = v36;
  v37[1] = v35;

  v38 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];

  v41 = v54;
  swift_beginAccess();
  *v41 = v40;
  v41[1] = v39;

  return v1;
}

void *sub_1B9428054()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1, &qword_1EBACC700, &qword_1B96B9A78);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2, &qword_1EBACC700, &qword_1B96B9A78);

  return v0;
}

void sub_1B94281BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B9428484(a2, a1, a3, a4);
        break;
      default:
        switch(v9)
        {
          case 'e':
            sub_1B9428560(a2, a1, a3, a4);
            continue;
          case 'f':
            sub_1B942863C(a2, a1, a3, a4);
            continue;
          case 'g':
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription;
            goto LABEL_18;
          case 'h':
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus;
            goto LABEL_18;
          default:
            if (v9 == 51)
            {
              v11 = MEMORY[0x1E69AACE0];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
            }

            else
            {
              if (v9 != 52)
              {
                continue;
              }

              v11 = MEMORY[0x1E69AACE0];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
            }

LABEL_18:
            sub_1B94420D8(v12, v13, v14, v15, v16, v11);
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B9428484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9428560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SportsTeam(0);
  sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SportsTeam(0);
  sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9428748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v46 - v10;
  v11 = type metadata accessor for Searchfoundation_SportsTeam(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46[1] = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = v46 - v17;
  v53 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v53);
  v49 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v46[0] = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v46[0];
  }

  swift_beginAccess();
  v19 = *(a1 + 32);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v21 = *(a1 + 48);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v24 = *(a1 + 72);
        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v26 = *(a1 + 88), v51 = *(a1 + 80), v52 = v26, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          v27 = v50;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v27, 1, v53) == 1)
          {
            v53 = v14;
            sub_1B8D9207C(v27, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B944B0D4();
            }

            v53 = v14;
            sub_1B944B0D4();
          }

          v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
          swift_beginAccess();
          v29 = *v28;
          v30 = v28[1];
          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v29 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31 || (, sub_1B964C700(), result = , !v5))
          {
            v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
            swift_beginAccess();
            v33 = *v32;
            v34 = v32[1];
            v35 = HIBYTE(v34) & 0xF;
            if ((v34 & 0x2000000000000000) == 0)
            {
              v35 = v33 & 0xFFFFFFFFFFFFLL;
            }

            if (!v35 || (, sub_1B964C700(), result = , !v5))
            {
              swift_beginAccess();
              v36 = v48;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v36, 1, v11) == 1)
              {
                sub_1B8D9207C(v36, &qword_1EBACC700, &qword_1B96B9A78);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v5)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v37 = v47;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v37, 1, v11) == 1)
              {
                sub_1B8D9207C(v37, &qword_1EBACC700, &qword_1B96B9A78);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v5)
                {
                  return result;
                }
              }

              v38 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
              swift_beginAccess();
              v39 = *v38;
              v40 = v38[1];
              v41 = HIBYTE(v40) & 0xF;
              if ((v40 & 0x2000000000000000) == 0)
              {
                v41 = v39 & 0xFFFFFFFFFFFFLL;
              }

              if (!v41 || (, sub_1B964C700(), result = , !v5))
              {
                v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
                result = swift_beginAccess();
                v43 = *v42;
                v44 = v42[1];
                v45 = HIBYTE(v44) & 0xF;
                if ((v44 & 0x2000000000000000) == 0)
                {
                  v45 = v43 & 0xFFFFFFFFFFFFLL;
                }

                if (v45)
                {

                  sub_1B964C700();
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

uint64_t sub_1B9429154(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for Searchfoundation_SportsTeam(0);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF38, &qword_1B96CA0E8);
  v5 = MEMORY[0x1EEE9AC00](v96);
  v90 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v93 = &v88 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v91 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v88 - v15;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v88 - v24;
  swift_beginAccess();
  v26 = *(a1 + 16);
  swift_beginAccess();
  v27 = *(a2 + 16);

  sub_1B8D67B1C(v26, v27);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  swift_beginAccess();
  v32 = v30 == *(a2 + 24) && v31 == *(a2 + 32);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = v33 == *(a2 + 40) && v34 == *(a2 + 48);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v36 = *(a1 + 56);
  swift_beginAccess();
  if (v36 != *(a2 + 56))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v37 = *(a1 + 57);
  swift_beginAccess();
  if (v37 != *(a2 + 57))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v38 = *(a1 + 58);
  swift_beginAccess();
  if (v38 != *(a2 + 58))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v39 = *(a1 + 64);
  v40 = *(a1 + 72);
  swift_beginAccess();
  v41 = v39 == *(a2 + 64) && v40 == *(a2 + 72);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v42, v43, *(a2 + 80)))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v44 = *(v18 + 48);
  v45 = v98;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45, 1, v16) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v16) == 1)
    {
      sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v16) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v46 = &qword_1EBACB058;
    v47 = &unk_1B96CA9D0;
    v48 = v45;
LABEL_54:
    sub_1B8D9207C(v48, v46, v47);
    goto LABEL_55;
  }

  v49 = v95;
  sub_1B944B02C();
  if (*&v23[*(v16 + 20)] != *&v49[*(v16 + 20)])
  {

    sub_1B947FDE4();
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v48 = v45;
      v46 = &qword_1EBACB050;
      v47 = &unk_1B96B7BD0;
      goto LABEL_54;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v52 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v57 = v54 == *v56 && v55 == v56[1];
  if (!v57 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v62 = v59 == *v61 && v60 == v61[1];
  if (!v62 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v63 = v97;
  sub_1B8D92024();
  swift_beginAccess();
  v64 = *(v96 + 48);
  v65 = v92;
  sub_1B8D92024();
  sub_1B8D92024();
  v66 = v94;
  if (__swift_getEnumTagSinglePayload(v65, 1, v94) == 1)
  {
    sub_1B8D9207C(v63, &qword_1EBACC700, &qword_1B96B9A78);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65 + v64, 1, v66);
    v68 = v93;
    if (EnumTagSinglePayload != 1)
    {
LABEL_53:
      v46 = &qword_1EBACDF38;
      v47 = &qword_1B96CA0E8;
      v48 = v65;
      goto LABEL_54;
    }

    sub_1B8D9207C(v65, &qword_1EBACC700, &qword_1B96B9A78);
    goto LABEL_47;
  }

  v69 = v91;
  sub_1B8D92024();
  v70 = __swift_getEnumTagSinglePayload(v65 + v64, 1, v66);
  v68 = v93;
  if (v70 == 1)
  {
    sub_1B8D9207C(v97, &qword_1EBACC700, &qword_1B96B9A78);
LABEL_52:
    sub_1B944B0D4();
    goto LABEL_53;
  }

  v71 = v89;
  sub_1B944B02C();
  LODWORD(v98) = static Searchfoundation_SportsTeam.== infix(_:_:)(v69, v71);
  sub_1B944B0D4();
  sub_1B8D9207C(v97, &qword_1EBACC700, &qword_1B96B9A78);
  sub_1B944B0D4();
  sub_1B8D9207C(v65, &qword_1EBACC700, &qword_1B96B9A78);
  if ((v98 & 1) == 0)
  {
LABEL_55:

    return 0;
  }

LABEL_47:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v72 = *(v96 + 48);
  v65 = v90;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    sub_1B8D9207C(v68, &qword_1EBACC700, &qword_1B96B9A78);
    if (__swift_getEnumTagSinglePayload(v65 + v72, 1, v66) == 1)
    {
      sub_1B8D9207C(v65, &qword_1EBACC700, &qword_1B96B9A78);
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  v73 = v88;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65 + v72, 1, v66) == 1)
  {
    sub_1B8D9207C(v68, &qword_1EBACC700, &qword_1B96B9A78);
    goto LABEL_52;
  }

  v75 = v89;
  sub_1B944B02C();
  v76 = static Searchfoundation_SportsTeam.== infix(_:_:)(v73, v75);
  sub_1B944B0D4();
  sub_1B8D9207C(v68, &qword_1EBACC700, &qword_1B96B9A78);
  sub_1B944B0D4();
  sub_1B8D9207C(v65, &qword_1EBACC700, &qword_1B96B9A78);
  if ((v76 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_58:
  v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  v80 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  swift_beginAccess();
  v81 = v78 == *v80 && v79 == v80[1];
  if (!v81 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  swift_beginAccess();
  if (v83 == *v85 && v84 == v85[1])
  {

    return 1;
  }

  v87 = sub_1B964C9F0();

  result = 0;
  if (v87)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B942A018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB48, type metadata accessor for Searchfoundation_ScoreboardCardSection, protocol conformance descriptor for Searchfoundation_ScoreboardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942A098(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD958, type metadata accessor for Searchfoundation_ScoreboardCardSection, protocol conformance descriptor for Searchfoundation_ScoreboardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942A108(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD958, type metadata accessor for Searchfoundation_ScoreboardCardSection, protocol conformance descriptor for Searchfoundation_ScoreboardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B942A1A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC050);
  __swift_project_value_buffer(v0, qword_1EBACC050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "logo";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "record";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "accessibilityDescription";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "name";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "button";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "isWinner";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_SportsTeam.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B942A58C(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B942A640();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B942A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_SportsTeam(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

void sub_1B942A640()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v1, v2, protocol conformance descriptor for Searchfoundation_ButtonItem);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_SportsTeam.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_466_1(v5, v24);
  type metadata accessor for Searchfoundation_ButtonItem(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_204_3();
  type metadata accessor for Searchfoundation_Image(v11);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_106_8();
  v25 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_1240(*(v25 + 40));
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v13)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_98_9();
    sub_1B8CD3068(v14, v15, protocol conformance descriptor for Searchfoundation_Image);
    OUTLINED_FUNCTION_771_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v16 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v17 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v18 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v19 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_1316();
          v20 = OUTLINED_FUNCTION_355();
          OUTLINED_FUNCTION_81(v20, v21);
          if (v13)
          {
            sub_1B8D9207C(v26, &qword_1EBACC580, &qword_1B96B98B8);
          }

          else
          {
            OUTLINED_FUNCTION_6_35();
            sub_1B944B02C();
            OUTLINED_FUNCTION_30_26();
            sub_1B8CD3068(v22, v23, protocol conformance descriptor for Searchfoundation_ButtonItem);
            OUTLINED_FUNCTION_597_0();
            OUTLINED_FUNCTION_17_15();
            sub_1B964C740();
            OUTLINED_FUNCTION_16_27();
            sub_1B944B0D4();
            if (v0)
            {
              goto LABEL_20;
            }
          }

          if (*(v1 + 64) != 1 || (OUTLINED_FUNCTION_270_2(), sub_1B964C670(), !v0))
          {
            OUTLINED_FUNCTION_1183();
            sub_1B964C290();
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B942B098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB40, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942B118(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942B188(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam, protocol conformance descriptor for Searchfoundation_SportsTeam);

  return sub_1B964C5D0();
}

uint64_t sub_1B942B214()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC068);
  __swift_project_value_buffer(v0, qword_1EBACC068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
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
  *v17 = 7;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "text_5";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "thumbnail";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "thumbnail2";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "buttonItemsAreBottom";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B942B648()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1;
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v4 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v6 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom) = 0;
  return v0;
}

uint64_t sub_1B942B7B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1;
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v10 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button2, 1, 1, v10);
  v19[1] = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3, 1, 1, v10);
  v19[2] = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, 1, 1, v8);
  v19[3] = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, 1, 1, v8);
  v20 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4) = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5, 1, 1, v8);
  v11 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v21 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v12 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v23 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, 1, 1, v12);
  v24 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = v20;
  swift_beginAccess();
  *(v1 + v15) = v14;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + v16);

  v17 = v24;
  swift_beginAccess();
  *(v1 + v17) = v16;
  return v1;
}

uint64_t sub_1B942BEA0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button2, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, &qword_1EBAB8DF8, &qword_1B96B9A80);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, &qword_1EBACC708, &unk_1B96D92F0);
  return v0;
}

uint64_t sub_1B942C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B942C210(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B942C2EC(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B942C3C8(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B942C4A4(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B942C580(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B942C65C(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B942C738(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B942C814(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B942C8F0(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B942C9CC(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B9442234();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B942C210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B942C814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v75 = a3;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = v57 - v8;
  v59 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v9 = MEMORY[0x1EEE9AC00](v59);
  v57[1] = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57[2] = v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = v57 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v71 = v57 - v17;
  v72 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v18 = MEMORY[0x1EEE9AC00](v72);
  v65 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v67 = v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v69 = v57 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v58 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v64 = v57 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v66 = v57 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v57 - v30;
  v32 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v57[3] = v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v60 = v57 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v63 = v57 - v38;
  MEMORY[0x1EEE9AC00](v37);
  swift_beginAccess();
  v39 = a1;
  v40 = v32;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v41 = v74;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    v42 = v74;
    sub_1B964C740();
    v41 = v42;
    if (v42)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  v43 = v39;
  swift_beginAccess();
  v44 = v71;
  sub_1B8D92024();
  v45 = v72;
  if (__swift_getEnumTagSinglePayload(v44, 1, v72) == 1)
  {
    sub_1B8D9207C(v44, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
    sub_1B964C740();
    if (v41)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v46 = v70;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46, 1, v45) == 1)
  {
    sub_1B8D9207C(v46, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
    sub_1B964C740();
    if (v41)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v47 = v68;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v47, 1, v45) == 1)
  {
    sub_1B8D9207C(v47, &qword_1EBACC580, &qword_1B96B98B8);
    goto LABEL_19;
  }

  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C740();
  if (v41)
  {
    return sub_1B944B0D4();
  }

  sub_1B944B0D4();
LABEL_19:
  swift_beginAccess();
  v49 = v66;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v49, 1, v40) == 1)
  {
    sub_1B8D9207C(v49, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v41)
    {
      return result;
    }
  }

  swift_beginAccess();
  v50 = v64;
  sub_1B8D92024();
  v51 = v40;
  if (__swift_getEnumTagSinglePayload(v50, 1, v40) == 1)
  {
    v52 = v62;
    sub_1B8D9207C(v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v41)
    {
      return result;
    }

    v52 = v62;
  }

  v53 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v54 = v61;
  if (!*(*(v43 + v53) + 16) || (sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty), , sub_1B964C730(), result = , !v41))
  {
    swift_beginAccess();
    v55 = v58;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v55, 1, v51) == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      sub_1B964C740();
      result = sub_1B944B0D4();
      if (v41)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v54, 1, v59) == 1)
    {
      sub_1B8D9207C(v54, &qword_1EBACC708, &unk_1B96D92F0);
    }

    else
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
      sub_1B964C740();
      result = sub_1B944B0D4();
      if (v41)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v52, 1, v59) == 1)
    {
      sub_1B8D9207C(v52, &qword_1EBACC708, &unk_1B96D92F0);
    }

    else
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
      sub_1B964C740();
      result = sub_1B944B0D4();
      if (v41)
      {
        return result;
      }
    }

    v56 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
    result = swift_beginAccess();
    if (*(v43 + v56) == 1)
    {
      return sub_1B964C670();
    }
  }

  return result;
}

uint64_t sub_1B942D9D4(uint64_t a1, char *a2)
{
  v206 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v4 = MEMORY[0x1EEE9AC00](v206);
  v198 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v201 = &v197 - v6;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  v7 = MEMORY[0x1EEE9AC00](v204);
  v203 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v207 = &v197 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v199 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v200 = &v197 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v205 = &v197 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v209 = &v197 - v17;
  v234 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v18 = MEMORY[0x1EEE9AC00](v234);
  v218 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v223 = &v197 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v228 = &v197 - v22;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  v23 = MEMORY[0x1EEE9AC00](v235);
  v224 = &v197 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v227 = &v197 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v233 = &v197 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v221 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v226 = &v197 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v225 = &v197 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v229 = &v197 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v230 = &v197 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v232 = &v197 - v39;
  v237 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v40 = MEMORY[0x1EEE9AC00](v237);
  v202 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v211 = &v197 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v213 = &v197 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v231 = &v197 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v210 = &v197 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v215 = &v197 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v219 = &v197 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v197 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v208 = &v197 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v214 = &v197 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v212 = &v197 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v216 = &v197 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v217 = &v197 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v222 = &v197 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v236 = &v197 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v197 - v71;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v220 = v47;
  v73 = *(v47 + 48);
  sub_1B8D92024();
  v74 = v237;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v74) == 1)
  {

    sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(&v55[v73], 1, v74) == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_4;
    }

LABEL_9:
    sub_1B8D9207C(v55, &qword_1EBAB8E00, &qword_1B964D600);
    goto LABEL_40;
  }

  v80 = v236;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v55[v73], 1, v74) == 1)
  {

    sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    goto LABEL_9;
  }

  v81 = v231;
  sub_1B944B02C();
  v82 = *v80;
  v83 = *v81;

  sub_1B8D5BA08(v82, v83);
  if ((v84 & 1) == 0 || v80[8] != v81[8])
  {
    sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    sub_1B8D9207C(v55, &qword_1EBAB8DF8, &qword_1B96B9A80);
    goto LABEL_40;
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v106 = sub_1B964C850();
  sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v55, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v106 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_4:
  v236 = a2;
  swift_beginAccess();
  v75 = v232;
  sub_1B8D92024();
  swift_beginAccess();
  v76 = v235;
  v77 = *(v235 + 48);
  v78 = v233;
  sub_1B8D92024();
  sub_1B8D92024();
  v79 = v234;
  if (__swift_getEnumTagSinglePayload(v78, 1, v234) == 1)
  {
    sub_1B8D9207C(v75, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v78 + v77, 1, v79) == 1)
    {
      sub_1B8D9207C(v78, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_20;
    }

LABEL_15:
    v86 = &qword_1EBACCBF8;
    v87 = &unk_1B96B9AC8;
LABEL_16:
    v88 = v78;
LABEL_39:
    sub_1B8D9207C(v88, v86, v87);
    goto LABEL_40;
  }

  v85 = v230;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78 + v77, 1, v79) == 1)
  {
    sub_1B8D9207C(v75, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_15;
  }

  v89 = v228;
  sub_1B944B02C();
  v90 = *(v79 + 20);
  v91 = *&v85[v90];
  v92 = *&v89[v90];
  if (v91 != v92)
  {

    sub_1B941D6DC(v91, v92, v93, v94, v95, v96, v97, v98, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
    v100 = v99;

    if ((v100 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v75, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v88 = v78;
      v86 = &qword_1EBACC580;
      v87 = &qword_1B96B98B8;
      goto LABEL_39;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  LODWORD(v231) = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v75, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v78, &qword_1EBACC580, &qword_1B96B98B8);
  v76 = v235;
  if ((v231 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  swift_beginAccess();
  v101 = v229;
  sub_1B8D92024();
  swift_beginAccess();
  v102 = v76;
  v103 = *(v76 + 48);
  v104 = v227;
  sub_1B8D92024();
  v105 = v104;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v104, 1, v79) == 1)
  {
    sub_1B8D9207C(v101, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v104 + v103, 1, v79) == 1)
    {
      sub_1B8D9207C(v104, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_31;
    }

LABEL_27:
    v86 = &qword_1EBACCBF8;
    v87 = &unk_1B96B9AC8;
    v88 = v105;
    goto LABEL_39;
  }

  v107 = v225;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v105 + v103, 1, v79) == 1)
  {
    sub_1B8D9207C(v229, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_27;
  }

  v108 = v223;
  sub_1B944B02C();
  v109 = *(v79 + 20);
  v110 = *&v107[v109];
  v111 = *&v108[v109];
  if (v110 != v111)
  {

    sub_1B941D6DC(v110, v111, v112, v113, v114, v115, v116, v117, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
    v119 = v118;

    if ((v119 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v229, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v174 = v227;
LABEL_69:
      v178 = &qword_1EBACC580;
      v179 = &qword_1B96B98B8;
LABEL_70:
      sub_1B8D9207C(v174, v178, v179);
      goto LABEL_40;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v120 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v229, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v227, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v120 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_31:
  swift_beginAccess();
  v121 = v226;
  sub_1B8D92024();
  swift_beginAccess();
  v122 = *(v102 + 48);
  v123 = v121;
  v124 = v224;
  sub_1B8D92024();
  v125 = v124;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v124, 1, v79) == 1)
  {
    sub_1B8D9207C(v123, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v124 + v122, 1, v79) == 1)
    {
      sub_1B8D9207C(v124, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_45;
    }

LABEL_37:
    v86 = &qword_1EBACCBF8;
    v87 = &unk_1B96B9AC8;
LABEL_38:
    v88 = v125;
    goto LABEL_39;
  }

  v126 = v221;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v125 + v122, 1, v79) == 1)
  {
    sub_1B8D9207C(v226, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_37;
  }

  v129 = v218;
  sub_1B944B02C();
  v130 = *(v79 + 20);
  v131 = *&v126[v130];
  v132 = *&v129[v130];
  if (v131 != v132)
  {

    sub_1B941D6DC(v131, v132, v133, v134, v135, v136, v137, v138, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
    v140 = v139;

    if ((v140 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v226, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v174 = v125;
      goto LABEL_69;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v141 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v226, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v125, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v141 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_45:
  swift_beginAccess();
  v142 = v222;
  sub_1B8D92024();
  swift_beginAccess();
  v78 = v219;
  v143 = *(v220 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v144 = v237;
  if (__swift_getEnumTagSinglePayload(v78, 1, v237) == 1)
  {
    sub_1B8D9207C(v142, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v78 + v143, 1, v144) != 1)
    {
LABEL_75:
      v86 = &qword_1EBAB8E00;
      v87 = &qword_1B964D600;
      goto LABEL_16;
    }

    v145 = v144;
    sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    v175 = v217;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v78 + v143, 1, v144) == 1)
    {
      sub_1B8D9207C(v222, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_74:
      sub_1B944B0D4();
      goto LABEL_75;
    }

    v176 = v213;
    sub_1B944B02C();
    sub_1B8D5BA08(*v175, *v176);
    if ((v177 & 1) == 0 || v175[8] != v176[8])
    {
      sub_1B8D9207C(v222, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B944B0D4();
      sub_1B944B0D4();
      v88 = v219;
LABEL_79:
      v86 = &qword_1EBAB8DF8;
      v87 = &qword_1B96B9A80;
      goto LABEL_39;
    }

    v145 = v144;
    sub_1B964C2B0();
    sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v184 = sub_1B964C850();
    sub_1B8D9207C(v222, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    sub_1B8D9207C(v219, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v184 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  swift_beginAccess();
  v146 = v216;
  sub_1B8D92024();
  swift_beginAccess();
  v147 = *(v220 + 48);
  v78 = v215;
  sub_1B8D92024();
  v148 = v236;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78, 1, v145) == 1)
  {
    sub_1B8D9207C(v146, &qword_1EBAB8DF8, &qword_1B96B9A80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78 + v147, 1, v145);
    v150 = v214;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_51;
    }

    goto LABEL_75;
  }

  v180 = v212;
  sub_1B8D92024();
  v181 = __swift_getEnumTagSinglePayload(v78 + v147, 1, v145);
  v150 = v214;
  if (v181 == 1)
  {
    sub_1B8D9207C(v216, &qword_1EBAB8DF8, &qword_1B96B9A80);
    goto LABEL_74;
  }

  v182 = v211;
  sub_1B944B02C();
  sub_1B8D5BA08(*v180, *v182);
  if ((v183 & 1) == 0 || v180[8] != v182[8])
  {
    sub_1B8D9207C(v216, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v88 = v215;
    goto LABEL_79;
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v186 = sub_1B964C850();
  sub_1B8D9207C(v216, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  v148 = v236;
  sub_1B944B0D4();
  sub_1B8D9207C(v215, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v186 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_51:
  v151 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v152 = *(a1 + v151);
  v153 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v154 = *&v148[v153];

  sub_1B8D5B224(v152, v154, v155, v156, v157, v158, v159, v160, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
  v162 = v161;

  if ((v162 & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v163 = *(v220 + 48);
  v164 = v150;
  v125 = v210;
  sub_1B8D92024();
  sub_1B8D92024();
  v165 = v237;
  if (__swift_getEnumTagSinglePayload(v125, 1, v237) == 1)
  {
    sub_1B8D9207C(v164, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v125 + v163, 1, v165) == 1)
    {
      sub_1B8D9207C(v125, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_55;
    }

    goto LABEL_84;
  }

  v185 = v208;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v125 + v163, 1, v165) == 1)
  {
    sub_1B8D9207C(v214, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_84:
    v86 = &qword_1EBAB8E00;
    v87 = &qword_1B964D600;
    goto LABEL_38;
  }

  v187 = v202;
  sub_1B944B02C();
  sub_1B8D5BA08(*v185, *v187);
  if ((v188 & 1) == 0 || *(v185 + 8) != *(v187 + 8))
  {
    sub_1B8D9207C(v214, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v174 = v210;
    v178 = &qword_1EBAB8DF8;
    v179 = &qword_1B96B9A80;
    goto LABEL_70;
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v191 = sub_1B964C850();
  sub_1B8D9207C(v214, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v210, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v191 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_55:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v166 = *(v204 + 48);
  v167 = v207;
  sub_1B8D92024();
  sub_1B8D92024();
  v168 = v206;
  if (__swift_getEnumTagSinglePayload(v167, 1, v206) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v167 + v166, 1, v168) != 1)
    {
      v189 = v201;
      sub_1B944B02C();
      sub_1B8D5D124(*v205, *v189);
      if ((v190 & 1) == 0 || *(v205 + 8) != *(v201 + 8))
      {
        sub_1B8D9207C(v209, &qword_1EBACC708, &unk_1B96D92F0);
        sub_1B944B0D4();
        sub_1B944B0D4();
        v88 = v207;
LABEL_104:
        v86 = &qword_1EBACC708;
        v87 = &unk_1B96D92F0;
        goto LABEL_39;
      }

      sub_1B964C2B0();
      sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v195 = sub_1B964C850();
      sub_1B8D9207C(v209, &qword_1EBACC708, &unk_1B96D92F0);
      sub_1B944B0D4();
      sub_1B944B0D4();
      sub_1B8D9207C(v207, &qword_1EBACC708, &unk_1B96D92F0);
      if ((v195 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_58;
    }

    sub_1B8D9207C(v209, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    v167 = v207;
    goto LABEL_92;
  }

  sub_1B8D9207C(v209, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v167 + v166, 1, v168) != 1)
  {
LABEL_92:
    v86 = &qword_1EBACCC18;
    v87 = &unk_1B96D8D70;
    v88 = v167;
    goto LABEL_39;
  }

  sub_1B8D9207C(v167, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_58:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v169 = *(v204 + 48);
  v170 = v203;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v170, 1, v206) == 1)
  {
    sub_1B8D9207C(v200, &qword_1EBACC708, &unk_1B96D92F0);
    if (__swift_getEnumTagSinglePayload(v203 + v169, 1, v206) == 1)
    {
      sub_1B8D9207C(v203, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_61:
      v171 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
      swift_beginAccess();
      LOBYTE(v171) = *(a1 + v171);

      v172 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
      v173 = v236;
      swift_beginAccess();
      LOBYTE(v172) = v173[v172];

      v127 = v171 ^ v172 ^ 1;
      return v127 & 1;
    }

    goto LABEL_100;
  }

  v192 = v203;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v192 + v169, 1, v206) == 1)
  {
    sub_1B8D9207C(v200, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
LABEL_100:
    v86 = &qword_1EBACCC18;
    v87 = &unk_1B96D8D70;
    v88 = v203;
    goto LABEL_39;
  }

  v193 = v198;
  sub_1B944B02C();
  sub_1B8D5D124(*v199, *v193);
  if ((v194 & 1) == 0 || *(v199 + 8) != *(v198 + 8))
  {
    sub_1B8D9207C(v200, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v88 = v203;
    goto LABEL_104;
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v196 = sub_1B964C850();
  sub_1B8D9207C(v200, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v203, &qword_1EBACC708, &unk_1B96D92F0);
  if (v196)
  {
    goto LABEL_61;
  }

LABEL_40:

  v127 = 0;
  return v127 & 1;
}

uint64_t sub_1B942FD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB38, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942FDA8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBAB42F0, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942FE18(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBAB42F0, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, protocol conformance descriptor for Searchfoundation_RFFactItemButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B942FEA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC080);
  __swift_project_value_buffer(v0, qword_1EBACC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
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
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "player";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSimpleItemPlayerCardSection.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B943023C(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B94302F0(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_970();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B94303A4(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9430458(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B943023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94302F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94303A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9430458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFSimpleItemPlayerCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_648_0(v6);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v8 = OUTLINED_FUNCTION_202();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v30 = v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_725();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_163_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_441();
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v2);
  if (v18)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_275();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v19, v20, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_749();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_179_5();
  if (v18)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v21, v22, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_687();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_31_23(), sub_1B8CD3068(v23, v24, protocol conformance descriptor for Searchfoundation_RFTextProperty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v30);
    if (v18)
    {
      sub_1B8D9207C(v30, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_1B944B02C();
      OUTLINED_FUNCTION_31_23();
      sub_1B8CD3068(v25, v26, protocol conformance descriptor for Searchfoundation_RFTextProperty);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_12_31();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_1316();
    OUTLINED_FUNCTION_37_0(v29);
    if (v18)
    {
      sub_1B8D9207C(v29, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_19:
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_6_35();
    sub_1B944B02C();
    OUTLINED_FUNCTION_30_26();
    sub_1B8CD3068(v27, v28, protocol conformance descriptor for Searchfoundation_ButtonItem);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_687();
    sub_1B964C740();
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    if (!v1)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSimpleItemPlayerCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_139_1();
  v88 = type metadata accessor for Searchfoundation_ButtonItem(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v80 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v82 = v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v90 = v13;
  v14 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_RFTextProperty(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v84 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_219_0();
  v19 = OUTLINED_FUNCTION_696();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  v22 = OUTLINED_FUNCTION_183(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  v92 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_637_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44_0();
  v94 = v27;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_682();
  v105 = v29;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_87_0();
  v100 = v3;
  v102 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  v31 = *(v3 + 48);
  v104 = v1;
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_48(v5);
  if (v47)
  {
    OUTLINED_FUNCTION_48(v5 + v31);
    if (v47)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_25:
    v48 = &qword_1EBAB8E00;
    v49 = &qword_1B964D600;
LABEL_29:
    v51 = v5;
LABEL_30:
    sub_1B8D9207C(v51, v48, v49);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_353();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v5 + v31);
  if (v47)
  {
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_3_58();
  sub_1B944B02C();
  sub_1B8D5BA08(*v2, *v4);
  if ((v50 & 1) == 0 || *(v2 + 8) != *(v4 + 8))
  {
    OUTLINED_FUNCTION_62_7();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_1165();
    v48 = &qword_1EBAB8DF8;
    v49 = &qword_1B96B9A80;
    goto LABEL_29;
  }

  v55 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v56, v57, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_138_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_257();
  sub_1B944B0D4();
  sub_1B8D9207C(v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v55 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v32 = v100;
  v33 = v102;
  v34 = *(v100 + 48);
  OUTLINED_FUNCTION_1057();
  sub_1B8D92024();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_48(v105);
  if (v47)
  {
    OUTLINED_FUNCTION_48(v105 + v34);
    if (v47)
    {
      sub_1B8D9207C(v105, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_36:
    v48 = &qword_1EBAB8E00;
    v49 = &qword_1B964D600;
    v51 = v105;
    goto LABEL_30;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v105 + v34);
  if (v53)
  {
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_3_58();
  sub_1B944B02C();
  sub_1B8D5BA08(*v98, *v96);
  if ((v54 & 1) == 0 || (OUTLINED_FUNCTION_1170(), !v47))
  {
    OUTLINED_FUNCTION_62_7();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_197();
    sub_1B944B0D4();
    v48 = &qword_1EBAB8DF8;
    v49 = &qword_1B96B9A80;
    v51 = v105;
    goto LABEL_30;
  }

  v59 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v60, v61, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_138_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_220();
  sub_1B944B0D4();
  sub_1B8D9207C(v105, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v59 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  sub_1B8D5B224(*v104, *v0, v35, v36, v37, v38, v39, v40, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
  if (v41)
  {
    v42 = *(v33 + 32);
    v43 = *(v32 + 48);
    OUTLINED_FUNCTION_1368();
    OUTLINED_FUNCTION_235_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v32);
    if (v47)
    {
      OUTLINED_FUNCTION_48(v43 + v32);
      if (v47)
      {
        sub_1B8D9207C(v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1257();
      sub_1B8D92024();
      OUTLINED_FUNCTION_48(v43 + v32);
      if (!v58)
      {
        OUTLINED_FUNCTION_3_58();
        OUTLINED_FUNCTION_1320();
        sub_1B8D5BA08(*v42, *v43);
        if ((v62 & 1) == 0 || (OUTLINED_FUNCTION_1170(), !v47))
        {
          OUTLINED_FUNCTION_62_7();
          sub_1B944B0D4();
          OUTLINED_FUNCTION_202();
          sub_1B944B0D4();
          v48 = &qword_1EBAB8DF8;
          v49 = &qword_1B96B9A80;
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_1328();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v77, v78, MEMORY[0x1E69AAC10]);
        v79 = OUTLINED_FUNCTION_645_0();
        OUTLINED_FUNCTION_146_5();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_311();
        sub_1B944B0D4();
        sub_1B8D9207C(v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
        if ((v79 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_17:
        v44 = *(v87 + 48);
        OUTLINED_FUNCTION_1122();
        v32 = v91;
        OUTLINED_FUNCTION_235_1();
        v45 = OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_81(v45, v46);
        if (v47)
        {
          OUTLINED_FUNCTION_37_0(v91 + v44);
          if (v47)
          {
            sub_1B8D9207C(v91, &qword_1EBACC580, &qword_1B96B98B8);
            goto LABEL_59;
          }
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_37_0(v91 + v44);
          if (!v63)
          {
            OUTLINED_FUNCTION_6_35();
            sub_1B944B02C();
            if (*(v83 + *(v89 + 20)) != *(v81 + *(v89 + 20)))
            {

              v64 = OUTLINED_FUNCTION_432();
              sub_1B941D6DC(v64, v65, v66, v67, v68, v69, v70, v71, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
              OUTLINED_FUNCTION_87_1();

              if ((v44 & 1) == 0)
              {
                OUTLINED_FUNCTION_72_7();
                sub_1B944B0D4();
                sub_1B944B0D4();
                v48 = &qword_1EBACC580;
                v49 = &qword_1B96B98B8;
                goto LABEL_55;
              }
            }

            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v72, v73, MEMORY[0x1E69AAC10]);
            OUTLINED_FUNCTION_236();
            v74 = sub_1B964C850();
            OUTLINED_FUNCTION_80_7();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_74_7();
            sub_1B944B0D4();
            sub_1B8D9207C(v32, &qword_1EBACC580, &qword_1B96B98B8);
            if ((v74 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_59:
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v75, v76, MEMORY[0x1E69AAC10]);
            v52 = sub_1B964C850();
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_16_27();
          sub_1B944B0D4();
        }

        v48 = &qword_1EBACCBF8;
        v49 = &unk_1B96B9AC8;
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_12_31();
      sub_1B944B0D4();
    }

    v48 = &qword_1EBAB8E00;
    v49 = &qword_1B964D600;
LABEL_55:
    v51 = v32;
    goto LABEL_30;
  }

LABEL_31:
  v52 = 0;
LABEL_32:
  OUTLINED_FUNCTION_264(v52);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9431368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB30, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, ")N|5");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94313E8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD990, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, "IO|5xl\a");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9431458(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD990, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, "IO|5xl\a");

  return sub_1B964C5D0();
}

uint64_t sub_1B94314E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC098);
  __swift_project_value_buffer(v0, qword_1EBACC098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
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
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "player";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9431890(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B9431944(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B94319F8(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B9431AAC(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9431B60(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_9();
        sub_1B9431C14(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9431890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94319F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemPlayerCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v58 = v0;
  v59 = v2;
  v60 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_185();
  v52 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v53 = type metadata accessor for Searchfoundation_ButtonItem(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v50[0] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_648_0(v12);
  v51 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v50[1] = v14;
  v15 = OUTLINED_FUNCTION_491();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v18 = OUTLINED_FUNCTION_183(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  v56 = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v50 - v23;
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44_0();
  v50[2] = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_638_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_219_0();
  v57 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  OUTLINED_FUNCTION_713_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v24);
  if (v30)
  {
    sub_1B8D9207C(v24, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v33 = v58;
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v31, v32, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_597_0();
    v0 = v58;
    sub_1B964C740();
    v33 = v0;
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_26;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v1);
  if (v30)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_492();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v34, v35, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_680_0();
    v0 = v33;
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v33)
    {
      goto LABEL_26;
    }
  }

  v36 = v55;
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v36);
  v37 = v56;
  if (v30)
  {
    sub_1B8D9207C(v36, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_1257();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v38, v39, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_257_0();
    v0 = v33;
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v33)
    {
      goto LABEL_26;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v37);
  if (v30)
  {
    sub_1B8D9207C(v37, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v40 = v54;
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v41, v42, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_762_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    v40 = v54;
    if (v0)
    {
      goto LABEL_26;
    }
  }

  sub_1B8D92024();
  v43 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v43, v44, v51);
  v45 = v52;
  if (v30)
  {
    sub_1B8D9207C(v40, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    sub_1B944B02C();
    OUTLINED_FUNCTION_969();
    sub_1B8CD3068(v46, v47, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_762_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_189_3();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_26;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v45);
  if (v30)
  {
    sub_1B8D9207C(v45, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_25:
    OUTLINED_FUNCTION_862_0();
    OUTLINED_FUNCTION_80_6();
    sub_1B964C290();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_6_35();
  sub_1B944B02C();
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v48, v49, protocol conformance descriptor for Searchfoundation_ButtonItem);
  OUTLINED_FUNCTION_709_0();
  OUTLINED_FUNCTION_762_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_16_27();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_25;
  }

LABEL_26:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}