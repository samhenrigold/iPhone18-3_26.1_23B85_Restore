uint64_t sub_1B9530F6C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PhotosSuggestionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9530FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B952EC14();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PhotosSuggestionType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD04A8 = a1;
}

uint64_t sub_1B95310E8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PhotosSuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9531110()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD04B0);
  __swift_project_value_buffer(v0, qword_1EBAD04B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PhotosSuggestionTypeUnknown";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PhotosSuggestionTypeRecentlyViewed";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhotosSuggestionTypeRecentlyEdited";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PhotosSuggestionTypeRecentlyShared";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PhotosSuggestionTypeRecentlySearched";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PhotosSuggestionTypeSearchPrompt";
  *(v18 + 1) = 32;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PhotosSuggestionTypeCompletion";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PhotosSuggestionTypeNextToken";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosSuggestionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD04B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B95314F8()
{
  result = qword_1EBAD04C8;
  if (!qword_1EBAD04C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosSuggestionType, &type metadata for Searchfoundation_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAD04C8);
  }

  return result;
}

unint64_t sub_1B9531550()
{
  result = qword_1EBAD04D0;
  if (!qword_1EBAD04D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosSuggestionType, &type metadata for Searchfoundation_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAD04D0);
  }

  return result;
}

unint64_t sub_1B95315A8()
{
  result = qword_1EBAD04D8;
  if (!qword_1EBAD04D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PhotosSuggestionType, &type metadata for Searchfoundation_PhotosSuggestionType, v0, v1);
    atomic_store(result, &qword_1EBAD04D8);
  }

  return result;
}

unint64_t sub_1B9531600()
{
  result = qword_1EBAD04E0;
  if (!qword_1EBAD04E0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD04E8, &qword_1B96D66C8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD04E0);
  }

  return result;
}

uint64_t Searchfoundation_ProductCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 56);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for Searchfoundation_ProductCardSection(uint64_t a1)
{
  result = qword_1ED9F1850;
  if (!qword_1ED9F1850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_ProductCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_ProductCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_ProductCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  sub_1B92C7198(v1 + *(v6 + 56), v2);
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, v7) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v7 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
  }

  *(a1 + v10) = qword_1ED9CD1C8;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v7);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B9531B38(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v4);
  return Searchfoundation_ProductCardSection.backgroundColor.setter(v4);
}

uint64_t Searchfoundation_ProductCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ProductCardSection(0) + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_ProductCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ProductCardSection(0) + 56);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_ProductCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  sub_1B92C7198(v0 + *(v4 + 56), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_ProductCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_ProductCardSection(0) + 56);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_ProductCardSection.productJson.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductCardSection.productJson.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_ProductCardSection(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_ProductCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ProductCardSection(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B95320BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD04F0);
  __swift_project_value_buffer(v0, qword_1EBAD04F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "punchoutOptions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchoutPickerTitle";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchoutPickerDismissText";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "canBeHidden";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hasTopPadding";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasBottomPadding";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "separatorStyle";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "backgroundColor";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 1000;
  *v26 = "productJSON";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ProductCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8700 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD04F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_ProductCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        v5 = OUTLINED_FUNCTION_9();
        sub_1B9532628(v5, v6, v7, v8);
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v9, v10, v11, v12);
        break;
      case 9:
        v13 = OUTLINED_FUNCTION_9();
        sub_1B95326C8(v13, v14, v15, v16);
        break;
      default:
        if (result == 1000)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C470();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9532628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B95332B4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B95326C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ProductCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B95332B4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ProductCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + 16))
  {
    v24 = v3;
    v14 = v9;
    v15 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B95332B4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    result = sub_1B964C730();
    if (v4)
    {
      return result;
    }

    v13 = v15;
    v9 = v14;
    v5 = v24;
  }

  OUTLINED_FUNCTION_1();
  if (!v17 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v4))
    {
      if (*(v5 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v4))
      {
        if (*(v5 + 41) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v4))
        {
          if (*(v5 + 42) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v4))
          {
            OUTLINED_FUNCTION_1();
            if (!v19 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v4))
            {
              if (!*(v5 + 64) || (v20 = *(v5 + 72), v22 = *(v5 + 64), v23 = v20, sub_1B92C8A2C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v4))
              {
                v21 = type metadata accessor for Searchfoundation_ProductCardSection(0);
                sub_1B92C7198(v5 + *(v21 + 56), v9);
                if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
                {
                  sub_1B8D9207C(v9, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  v24 = v21;
                  sub_1B92C8908(v9, v13);
                  sub_1B95332B4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_79_0();
                  sub_1B964C740();
                  result = sub_1B92C89D0(v13);
                  if (v4)
                  {
                    return result;
                  }
                }

                if (sub_1B8D99EA8(*(v5 + 80), *(v5 + 88)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v4))
                {
                  OUTLINED_FUNCTION_12();
                  return sub_1B964C290();
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

uint64_t static Searchfoundation_ProductCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  sub_1B8D67B1C(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_33;
  }

  v14 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v15 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_33;
  }

  v16 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v16 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_33;
  }

  v17 = *(type metadata accessor for Searchfoundation_ProductCardSection(0) + 56);
  v18 = *(v11 + 48);
  sub_1B92C7198(v1 + v17, v2);
  sub_1B92C7198(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v19, v20, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  sub_1B92C7198(v2, v10);
  if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) == 1)
  {
    sub_1B92C89D0(v10);
LABEL_26:
    v21 = &qword_1EBACB058;
    v22 = &unk_1B96CA9D0;
LABEL_27:
    sub_1B8D9207C(v2, v21, v22);
LABEL_33:
    v30 = 0;
    return v30 & 1;
  }

  sub_1B92C8908(v2 + v18, v6);
  if (*&v10[*(v3 + 20)] != *&v6[*(v3 + 20)])
  {

    sub_1B947FDE4();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      sub_1B92C89D0(v6);
      sub_1B92C89D0(v10);
      v21 = &qword_1EBACB050;
      v22 = &unk_1B96B7BD0;
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_70();
  sub_1B95332B4(v25, v26, MEMORY[0x1E69AAC10]);
  v27 = sub_1B964C850();
  sub_1B92C89D0(v6);
  sub_1B92C89D0(v10);
  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  if ((MEMORY[0x1BFADC060](*(v1 + 80), *(v1 + 88), *(v0 + 80), *(v0 + 88)) & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_70();
  sub_1B95332B4(v28, v29, MEMORY[0x1E69AAC10]);
  v30 = sub_1B964C850();
  return v30 & 1;
}

uint64_t Searchfoundation_ProductCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ProductCardSection(0);
  sub_1B95332B4(&qword_1EBAD0508, type metadata accessor for Searchfoundation_ProductCardSection, protocol conformance descriptor for Searchfoundation_ProductCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9532FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95332B4(&qword_1EBAD0520, type metadata accessor for Searchfoundation_ProductCardSection, protocol conformance descriptor for Searchfoundation_ProductCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953307C(uint64_t a1)
{
  v2 = sub_1B95332B4(&qword_1EBACE6B8, type metadata accessor for Searchfoundation_ProductCardSection, protocol conformance descriptor for Searchfoundation_ProductCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95330EC(uint64_t a1, uint64_t a2)
{
  sub_1B95332B4(&qword_1EBACE6B8, type metadata accessor for Searchfoundation_ProductCardSection, protocol conformance descriptor for Searchfoundation_ProductCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95332B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1B9533320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9535BBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9533404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_StorefrontType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9533454@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_AvailabilityStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9533488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9535C10();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B953356C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_AvailabilityStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_DistanceUnit.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B95335DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9535C64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B95336C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_DistanceUnit.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_ProductInventory.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_ProductInventory.availabilityStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Searchfoundation_ProductInventory.distanceUnit.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Searchfoundation_ProductInventory.timestamp.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Searchfoundation_ProductInventory(0);
  OUTLINED_FUNCTION_115(*(v5 + 48));
  sub_1B8D92024();
  v6 = type metadata accessor for Searchfoundation_Date(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v6);
  if (v9)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v10, v11, v6);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_86();
    OUTLINED_FUNCTION_182();
    return sub_1B9534470();
  }

  return result;
}

uint64_t Searchfoundation_ProductInventory.timestamp.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_ProductInventory(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_1_86();
  sub_1B9534470();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Searchfoundation_ProductInventory.timestamp.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Date(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ProductInventory(0) + 48);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_86();
    sub_1B9534470();
  }

  return sub_1B9533ADC;
}

uint64_t Searchfoundation_ProductInventory.hasTimestamp.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for Searchfoundation_ProductInventory(0);
  OUTLINED_FUNCTION_115(*(v2 + 48));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  v3 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v8, v9, &qword_1B964D630);
  return v7;
}

Swift::Void __swiftcall Searchfoundation_ProductInventory.clearTimestamp()()
{
  v1 = type metadata accessor for Searchfoundation_ProductInventory(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ProductInventory.storeName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Searchfoundation_ProductInventory.storeAddress.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_ProductInventory.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_ProductInventory(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_ProductInventory.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ProductInventory(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_ProductInventory.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ProductInventory(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ProductInventory.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  type metadata accessor for Searchfoundation_ProductInventory(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_Date(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_ProductInventoryResult.availability.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Searchfoundation_ProductInventoryResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_ProductInventoryResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_ProductInventoryResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ProductInventoryResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_ProductInventoryResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ProductInventoryResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ProductInventoryResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_ProductInventoryResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_ProductAvailability.results.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ProductAvailability.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_ProductAvailability(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_ProductAvailability.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ProductAvailability(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_ProductAvailability.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ProductAvailability(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ProductAvailability.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_ProductAvailability(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_Product.identifier.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_Product.productIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Product.availabilityURL.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Searchfoundation_Product(0);
  OUTLINED_FUNCTION_115(*(v5 + 36));
  sub_1B8D92024();
  v6 = type metadata accessor for Searchfoundation_URL(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v6);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v10, v11, v6);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_71();
    OUTLINED_FUNCTION_182();
    return sub_1B9534470();
  }

  return result;
}

uint64_t sub_1B9534470()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B95344C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B9534880();
  return a7(v11);
}

uint64_t Searchfoundation_Product.availabilityURL.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Product(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_2_71();
  sub_1B9534470();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Searchfoundation_Product.availabilityURL.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_URL(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_Product(0) + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_71();
    sub_1B9534470();
  }

  return sub_1B953474C;
}

void sub_1B9534774(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    sub_1B9534880();
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B9534470();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_1B95348D8();
  }

  else
  {
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B9534470();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1B9534880()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B95348D8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_Product.hasAvailabilityURL.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for Searchfoundation_Product(0);
  OUTLINED_FUNCTION_115(*(v2 + 36));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_URL(0);
  v3 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v8, v9, &unk_1B964D620);
  return v7;
}

Swift::Void __swiftcall Searchfoundation_Product.clearAvailabilityURL()()
{
  v1 = type metadata accessor for Searchfoundation_Product(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Product.displayName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Product.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_Product(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_Product.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_Product(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_Product.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_Product(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_Product.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  type metadata accessor for Searchfoundation_Product(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_URL(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B9534C58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0540);
  __swift_project_value_buffer(v0, qword_1EBAD0540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PhysicalStore";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Online";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9534E48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0558);
  __swift_project_value_buffer(v0, qword_1EBAD0558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NotAvailable";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Available";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LimitedAvailability";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PreOrderAvailable";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95350B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0570);
  __swift_project_value_buffer(v0, qword_1EBAD0570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kilometer";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Mile";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95352B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0588);
  __swift_project_value_buffer(v0, qword_1EBAD0588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "storeId";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "availabilityStatus";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "distance";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "distanceUnit";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timestamp";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "storeName";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "storeAddress";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ProductInventory.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95356EC(v3, v4, v5, v6);
        break;
      case 2:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9535754(v11, v12, v13, v14);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B95357BC(v7, v8, v9, v10);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B9535824(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9535824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ProductInventory(0);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B95360C0(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ProductInventory.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  if (!*v1 || (v10 = *(v3 + 8), v23 = *v1, v24 = v10, sub_1B9535BBC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 2), (v0 = v2) == 0))
    {
      if (!*(v3 + 32) || (v15 = *(v3 + 40), v23 = *(v3 + 32), v24 = v15, sub_1B9535C10(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
      {
        if (*(v3 + 44) == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
        {
          if (!*(v3 + 48) || (v16 = *(v3 + 56), v23 = *(v3 + 48), v24 = v16, sub_1B9535C64(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v2))
          {
            v25 = type metadata accessor for Searchfoundation_ProductInventory(0);
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
            {
              sub_1B8D9207C(v7, &qword_1EBAB8E30, &qword_1B964D630);
            }

            else
            {
              OUTLINED_FUNCTION_1_86();
              sub_1B9534470();
              sub_1B95360C0(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
              OUTLINED_FUNCTION_687();
              sub_1B964C740();
              result = sub_1B95348D8();
              if (v2)
              {
                return result;
              }
            }

            OUTLINED_FUNCTION_1();
            if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 7), !v2))
            {
              OUTLINED_FUNCTION_1();
              if (!v22)
              {
                return OUTLINED_FUNCTION_8_1();
              }

              result = OUTLINED_FUNCTION_3(v20, v21, 8);
              if (!v2)
              {
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B9535BBC()
{
  result = qword_1EBAD05E8;
  if (!qword_1EBAD05E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_StorefrontType, &type metadata for Searchfoundation_StorefrontType, v0, v1);
    atomic_store(result, &qword_1EBAD05E8);
  }

  return result;
}

unint64_t sub_1B9535C10()
{
  result = qword_1EBAD05F0;
  if (!qword_1EBAD05F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AvailabilityStatus, &type metadata for Searchfoundation_AvailabilityStatus, v0, v1);
    atomic_store(result, &qword_1EBAD05F0);
  }

  return result;
}

unint64_t sub_1B9535C64()
{
  result = qword_1EBAD05F8;
  if (!qword_1EBAD05F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_DistanceUnit, &type metadata for Searchfoundation_DistanceUnit, v0, v1);
    atomic_store(result, &qword_1EBAD05F8);
  }

  return result;
}

uint64_t static Searchfoundation_ProductInventory.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1;
  v14 = *v0;
  if (*(v1 + 8))
  {
    v13 = *v1 != 0;
  }

  if (*(v0 + 8) == 1)
  {
    if (v14)
    {
      if (v13 != 1)
      {
        goto LABEL_36;
      }
    }

    else if (v13)
    {
      goto LABEL_36;
    }
  }

  else if (v13 != v14)
  {
    goto LABEL_36;
  }

  v15 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v15 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(v1[4], *(v1 + 40), v0[4]) || *(v1 + 11) != *(v0 + 11))
  {
    goto LABEL_36;
  }

  v16 = v1[6];
  v17 = v0[6];
  if (*(v1 + 56))
  {
    v16 = v16 != 0;
  }

  if (*(v0 + 56) == 1)
  {
    if (v17)
    {
      if (v16 != 1)
      {
        goto LABEL_36;
      }
    }

    else if (v16)
    {
      goto LABEL_36;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_36;
  }

  v32[1] = type metadata accessor for Searchfoundation_ProductInventory(0);
  v18 = *(v11 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v15)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_1_86();
      sub_1B9534470();
      if (*v10 == *v6)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_104();
        sub_1B95360C0(v24, v25, MEMORY[0x1E69AAC10]);
        v26 = OUTLINED_FUNCTION_198_0();
        sub_1B95348D8();
        sub_1B95348D8();
        sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v26 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      }

      sub_1B95348D8();
      sub_1B95348D8();
      v20 = &qword_1EBAB8E30;
      v21 = &qword_1B964D630;
LABEL_35:
      sub_1B8D9207C(v2, v20, v21);
      goto LABEL_36;
    }

    sub_1B95348D8();
LABEL_34:
    v20 = &qword_1EBAB8E38;
    v21 = &qword_1B96CD870;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_37_0(v2 + v18);
  if (!v15)
  {
    goto LABEL_34;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_40:
  v27 = v1[8] == v0[8] && v1[9] == v0[9];
  if (v27 || (sub_1B964C9F0() & 1) != 0)
  {
    v28 = v1[10] == v0[10] && v1[11] == v0[11];
    if (v28 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_104();
      v31 = sub_1B95360C0(v29, v30, MEMORY[0x1E69AAC10]);
      v22 = OUTLINED_FUNCTION_199_0(v31);
      return v22 & 1;
    }
  }

LABEL_36:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1B95360C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1B95361AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0760, type metadata accessor for Searchfoundation_ProductInventory, protocol conformance descriptor for Searchfoundation_ProductInventory);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953622C(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory, protocol conformance descriptor for Searchfoundation_ProductInventory);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B953629C(uint64_t a1, uint64_t a2)
{
  sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory, protocol conformance descriptor for Searchfoundation_ProductInventory);

  return sub_1B964C5D0();
}

uint64_t sub_1B9536334()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD05A0);
  __swift_project_value_buffer(v0, qword_1EBAD05A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "productIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "availability";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ProductInventoryResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9536584(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9536584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ProductInventory(0);
  sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory, protocol conformance descriptor for Searchfoundation_ProductInventory);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ProductInventoryResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Searchfoundation_ProductInventory(0), sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory, protocol conformance descriptor for Searchfoundation_ProductInventory), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Searchfoundation_ProductInventoryResult(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Searchfoundation_ProductInventoryResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D6E188(*(v1 + 16), v0[2]);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ProductInventoryResult(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_104();
  v7 = sub_1B95360C0(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B9536848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0758, type metadata accessor for Searchfoundation_ProductInventoryResult, protocol conformance descriptor for Searchfoundation_ProductInventoryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95368C8(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult, protocol conformance descriptor for Searchfoundation_ProductInventoryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9536938(uint64_t a1, uint64_t a2)
{
  sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult, protocol conformance descriptor for Searchfoundation_ProductInventoryResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B95369D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD05B8);
  __swift_project_value_buffer(v0, qword_1EBAD05B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "results";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Searchfoundation_ProductAvailability.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9536BA8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9536BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ProductInventoryResult(0);
  sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult, protocol conformance descriptor for Searchfoundation_ProductInventoryResult);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ProductAvailability.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_ProductInventoryResult(0), sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult, protocol conformance descriptor for Searchfoundation_ProductInventoryResult), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Searchfoundation_ProductAvailability(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Searchfoundation_ProductAvailability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D74F68(*v0, *v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ProductAvailability(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_104();
  v5 = sub_1B95360C0(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B9536E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0750, type metadata accessor for Searchfoundation_ProductAvailability, protocol conformance descriptor for Searchfoundation_ProductAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9536EAC(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD06D0, type metadata accessor for Searchfoundation_ProductAvailability, protocol conformance descriptor for Searchfoundation_ProductAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9536F1C(uint64_t a1, uint64_t a2)
{
  sub_1B95360C0(&qword_1EBAD06D0, type metadata accessor for Searchfoundation_ProductAvailability, protocol conformance descriptor for Searchfoundation_ProductAvailability);

  return sub_1B964C5D0();
}

uint64_t sub_1B9536FB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD05D0);
  __swift_project_value_buffer(v0, qword_1EBAD05D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
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
  *v10 = "productIdentifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "availabilityURL";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayName";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "buyable";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Product.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9537300(v3, v4, v5, v6);
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

uint64_t sub_1B9537300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Product(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B95360C0(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Product.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 2), (v0 = v1) == 0))
    {
      v20[3] = v2;
      v20[1] = type metadata accessor for Searchfoundation_Product(0);
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        sub_1B8D9207C(v7, &qword_1EBAB8E20, &unk_1B964D620);
      }

      else
      {
        sub_1B9534470();
        sub_1B95360C0(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
        v1 = v0;
        sub_1B964C740();
        result = sub_1B95348D8();
        if (v0)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_1();
      if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 4), (v0 = v1) == 0))
      {
        if (*(v3 + 48) != 1)
        {
          return OUTLINED_FUNCTION_8_1();
        }

        result = sub_1B964C670();
        if (!v0)
        {
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_Product.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v29 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v14 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v29[1] = type metadata accessor for Searchfoundation_Product(0);
  v15 = *(v11 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v13)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_2_71();
      sub_1B9534470();
      v21 = *v10 == *v6 && v10[1] == v6[1];
      if (v21 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_104();
        sub_1B95360C0(v22, v23, MEMORY[0x1E69AAC10]);
        v24 = OUTLINED_FUNCTION_198_0();
        sub_1B95348D8();
        sub_1B95348D8();
        sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }

      sub_1B95348D8();
      sub_1B95348D8();
      v17 = &qword_1EBAB8E20;
      v18 = &unk_1B964D620;
LABEL_20:
      sub_1B8D9207C(v2, v17, v18);
      goto LABEL_21;
    }

    sub_1B95348D8();
LABEL_19:
    v17 = &qword_1EBAB8E28;
    v18 = &unk_1B96B7BB0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_37_0(v2 + v15);
  if (!v13)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_29:
  v25 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (v25 || (sub_1B964C9F0()) && *(v1 + 48) == *(v0 + 48))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_104();
    v28 = sub_1B95360C0(v26, v27, MEMORY[0x1E69AAC10]);
    v19 = OUTLINED_FUNCTION_199_0(v28);
    return v19 & 1;
  }

LABEL_21:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1B95379C4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B95360C0(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9537AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0748, type metadata accessor for Searchfoundation_Product, protocol conformance descriptor for Searchfoundation_Product);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9537B28(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD06E8, type metadata accessor for Searchfoundation_Product, protocol conformance descriptor for Searchfoundation_Product);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9537B98(uint64_t a1, uint64_t a2)
{
  sub_1B95360C0(&qword_1EBAD06E8, type metadata accessor for Searchfoundation_Product, protocol conformance descriptor for Searchfoundation_Product);

  return sub_1B964C5D0();
}

unint64_t sub_1B9537C1C()
{
  result = qword_1EBAD0630;
  if (!qword_1EBAD0630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_StorefrontType, &type metadata for Searchfoundation_StorefrontType, v0, v1);
    atomic_store(result, &qword_1EBAD0630);
  }

  return result;
}

unint64_t sub_1B9537C74()
{
  result = qword_1EBAD0638;
  if (!qword_1EBAD0638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_StorefrontType, &type metadata for Searchfoundation_StorefrontType, v0, v1);
    atomic_store(result, &qword_1EBAD0638);
  }

  return result;
}

unint64_t sub_1B9537CCC()
{
  result = qword_1EBAD0640;
  if (!qword_1EBAD0640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_StorefrontType, &type metadata for Searchfoundation_StorefrontType, v0, v1);
    atomic_store(result, &qword_1EBAD0640);
  }

  return result;
}

unint64_t sub_1B9537D54()
{
  result = qword_1EBAD0658;
  if (!qword_1EBAD0658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AvailabilityStatus, &type metadata for Searchfoundation_AvailabilityStatus, v0, v1);
    atomic_store(result, &qword_1EBAD0658);
  }

  return result;
}

unint64_t sub_1B9537DAC()
{
  result = qword_1EBAD0660;
  if (!qword_1EBAD0660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AvailabilityStatus, &type metadata for Searchfoundation_AvailabilityStatus, v0, v1);
    atomic_store(result, &qword_1EBAD0660);
  }

  return result;
}

unint64_t sub_1B9537E04()
{
  result = qword_1EBAD0668;
  if (!qword_1EBAD0668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AvailabilityStatus, &type metadata for Searchfoundation_AvailabilityStatus, v0, v1);
    atomic_store(result, &qword_1EBAD0668);
  }

  return result;
}

unint64_t sub_1B9537E8C()
{
  result = qword_1EBAD0680;
  if (!qword_1EBAD0680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_DistanceUnit, &type metadata for Searchfoundation_DistanceUnit, v0, v1);
    atomic_store(result, &qword_1EBAD0680);
  }

  return result;
}

unint64_t sub_1B9537EE4()
{
  result = qword_1EBAD0688;
  if (!qword_1EBAD0688)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_DistanceUnit, &type metadata for Searchfoundation_DistanceUnit, v0, v1);
    atomic_store(result, &qword_1EBAD0688);
  }

  return result;
}

unint64_t sub_1B9537F3C()
{
  result = qword_1EBAD0690;
  if (!qword_1EBAD0690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_DistanceUnit, &type metadata for Searchfoundation_DistanceUnit, v0, v1);
    atomic_store(result, &qword_1EBAD0690);
  }

  return result;
}

void sub_1B9538498(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B953867C(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B95385B8(uint64_t a1)
{
  sub_1B953867C(319, &qword_1EBAD0718, type metadata accessor for Searchfoundation_ProductInventory, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B953867C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9538708(uint64_t a1)
{
  sub_1B953867C(319, &qword_1EBAD0730, type metadata accessor for Searchfoundation_ProductInventoryResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B95387E4(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B953867C(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Searchfoundation_Punchout.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  v3 = type metadata accessor for Searchfoundation_Punchout(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 52);
  v5 = type metadata accessor for Searchfoundation_UserActivityData(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_Punchout(uint64_t a1)
{
  result = qword_1ED9F9680;
  if (!qword_1ED9F9680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_Punchout.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.label.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.urls.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Searchfoundation_Punchout.userActivityData.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B9538E08(v1 + *(v6 + 52), v2);
  v7 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (!v10)
  {
    return sub_1B9538E78(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v11, v12, v7);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAD0768, &qword_1B96D74A0);
  }

  return result;
}

uint64_t sub_1B9538D00(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_UserActivityData(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B953911C(a1, v4);
  return Searchfoundation_Punchout.userActivityData.setter(v4);
}

uint64_t Searchfoundation_Punchout.userActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_Punchout(0) + 52);
  sub_1B8D9207C(v1 + v3, &qword_1EBAD0768, &qword_1B96D74A0);
  sub_1B9538E78(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_UserActivityData(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t sub_1B9538E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9538E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_UserActivityData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Searchfoundation_Punchout.userActivityData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_Punchout(0) + 52);
  *(v3 + 10) = v11;
  sub_1B9538E08(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAD0768, &qword_1B96D74A0);
    }
  }

  else
  {
    sub_1B9538E78(v6, v10);
  }

  return sub_1B953903C;
}

void sub_1B953903C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B953911C((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAD0768, &qword_1B96D74A0);
    sub_1B9538E78(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9539180(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAD0768, &qword_1B96D74A0);
    sub_1B9538E78(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B953911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_UserActivityData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9539180(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_UserActivityData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Searchfoundation_Punchout.hasUserActivityData.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B9538E08(v0 + *(v4 + 52), v1);
  type metadata accessor for Searchfoundation_UserActivityData(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAD0768, &qword_1B96D74A0);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_Punchout.clearUserActivityData()()
{
  v1 = *(type metadata accessor for Searchfoundation_Punchout(0) + 52);
  sub_1B8D9207C(v0 + v1, &qword_1EBAD0768, &qword_1B96D74A0);
  v2 = type metadata accessor for Searchfoundation_UserActivityData(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_Punchout.actionTarget.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_Punchout(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_Punchout.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_Punchout(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B9539550()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5500);
  __swift_project_value_buffer(v0, qword_1EBAB5500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "bundleIdentifier";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "label";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urls";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "userActivityData";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "actionTarget";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "isRunnableInBackground";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hasClip";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "forceOpenInBrowser";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_Punchout._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB54F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB5500);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_Punchout.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
        sub_1B964C530();
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B9539A4C(v10, v11, v12, v13);
        break;
      case 5:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B9539AEC(v6, v7, v8, v9);
        break;
      case 7:
      case 8:
      case 9:
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9539A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B953A76C(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C570();
}

uint64_t sub_1B9539AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  type metadata accessor for Searchfoundation_UserActivityData(0);
  sub_1B953A76C(&qword_1EBAD0770, type metadata accessor for Searchfoundation_UserActivityData, protocol conformance descriptor for Searchfoundation_UserActivityData);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Punchout.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Searchfoundation_UserActivityData(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v13 || (result = OUTLINED_FUNCTION_95_1(v11, v12, 1), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v17 || (result = OUTLINED_FUNCTION_95_1(v15, v16, 2), !v2))
    {
      OUTLINED_FUNCTION_1();
      if (!v20 || (result = OUTLINED_FUNCTION_95_1(v18, v19, 3), !v2))
      {
        if (!*(*(v1 + 48) + 16) || (v25 = type metadata accessor for Searchfoundation_URL(0), sub_1B953A76C(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v2))
        {
          v25 = type metadata accessor for Searchfoundation_Punchout(0);
          sub_1B9538E08(v1 + *(v25 + 52), v6);
          if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
          {
            sub_1B8D9207C(v6, &qword_1EBAD0768, &qword_1B96D74A0);
          }

          else
          {
            sub_1B9538E78(v6, v10);
            sub_1B953A76C(&qword_1EBAD0770, type metadata accessor for Searchfoundation_UserActivityData, protocol conformance descriptor for Searchfoundation_UserActivityData);
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            result = sub_1B9539180(v10);
            if (v2)
            {
              return result;
            }
          }

          OUTLINED_FUNCTION_1();
          if (!v23 || (result = OUTLINED_FUNCTION_95_1(v21, v22, 6), !v2))
          {
            if (*(v1 + 72) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 7), !v2))
            {
              if (*(v1 + 73) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 8), !v2))
              {
                if (*(v1 + 74) != 1)
                {
                  return sub_1B964C290();
                }

                result = OUTLINED_FUNCTION_0_31(1, 9);
                if (!v2)
                {
                  return sub_1B964C290();
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

uint64_t static Searchfoundation_Punchout.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_UserActivityData(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0778, &qword_1B96D74A8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v14 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v15 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_1B8D7C334(*(v1 + 48), *(v0 + 48));
  if ((v16 & 1) == 0)
  {
    goto LABEL_45;
  }

  v17 = *(type metadata accessor for Searchfoundation_Punchout(0) + 52);
  v18 = *(v11 + 48);
  sub_1B9538E08(v1 + v17, v2);
  sub_1B9538E08(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v19, v20, v3);
  if (v13)
  {
    OUTLINED_FUNCTION_178(v2 + v18, 1, v3);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAD0768, &qword_1B96D74A0);
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  sub_1B9538E08(v2, v10);
  OUTLINED_FUNCTION_178(v2 + v18, 1, v3);
  if (v25)
  {
    sub_1B9539180(v10);
LABEL_34:
    v26 = &qword_1EBAD0778;
    v27 = &qword_1B96D74A8;
LABEL_44:
    sub_1B8D9207C(v2, v26, v27);
LABEL_45:
    v24 = 0;
    return v24 & 1;
  }

  sub_1B9538E78(v2 + v18, v6);
  v28 = *v10 == *v6 && v10[1] == v6[1];
  if (!v28 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D7BEB0(v10[2], v6[2]), (v29 & 1) == 0))
  {
    sub_1B9539180(v6);
    sub_1B9539180(v10);
    v26 = &qword_1EBAD0768;
    v27 = &qword_1B96D74A0;
    goto LABEL_44;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_72();
  sub_1B953A76C(v30, v31, MEMORY[0x1E69AAC10]);
  v32 = sub_1B964C850();
  sub_1B9539180(v6);
  sub_1B9539180(v10);
  sub_1B8D9207C(v2, &qword_1EBAD0768, &qword_1B96D74A0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_22:
  v21 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v21 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 72) != *(v0 + 72) || *(v1 + 73) != *(v0 + 73) || *(v1 + 74) != *(v0 + 74))
  {
    goto LABEL_45;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_72();
  sub_1B953A76C(v22, v23, MEMORY[0x1E69AAC10]);
  v24 = sub_1B964C850();
  return v24 & 1;
}

uint64_t Searchfoundation_Punchout.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B953A76C(&qword_1EBAD0780, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B953A328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B953A76C(&qword_1EBAD0790, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953A3A8(uint64_t a1)
{
  v2 = sub_1B953A76C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B953A418(uint64_t a1, uint64_t a2)
{
  sub_1B953A76C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

  return sub_1B964C5D0();
}

void sub_1B953A5E0(uint64_t a1)
{
  sub_1B953A708(319, &qword_1ED9EB340, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B953A708(319, &qword_1ED9F8CC8, type metadata accessor for Searchfoundation_UserActivityData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B953A708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B953A76C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1B953A80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B953ECAC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_QueryUnderstandingQueryIntentType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B953A8FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_QueryUnderstandingQueryIntentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B953A94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B953EC58();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_SpotlightQueryIntentType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B953AA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_SpotlightQueryIntentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.queryIntentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Searchfoundation_QueryUnderstandingParse(0) + 20));
  result = OUTLINED_FUNCTION_10_4(v3 + 16, v4);
  v6 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v6;
  return result;
}

uint64_t type metadata accessor for Searchfoundation_QueryUnderstandingParse(uint64_t a1)
{
  result = qword_1EBAD0868;
  if (!qword_1EBAD0868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.queryIntentType.setter()
{
  v4 = *(OUTLINED_FUNCTION_26_26() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v8);
    *(v0 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.queryIntentType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_24_28(v2) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953AC14(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_4_15(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 88);
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 25, v1);
  return *(v0 + 25);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 25, v5);
  *(v6 + 25) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 25);
  *(v1 + 84) = *(v0 + 25);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953ADB4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 25) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 26, v1);
  return *(v0 + 26);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 26, v5);
  *(v6 + 26) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 26);
  *(v1 + 84) = *(v0 + 26);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953AF38(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 26) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 27, v1);
  return *(v0 + 27);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 27, v5);
  *(v6 + 27) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 27);
  *(v1 + 84) = *(v0 + 27);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B0BC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 27) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 28, v1);
  return *(v0 + 28);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 28, v5);
  *(v6 + 28) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 28);
  *(v1 + 84) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B240(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 28) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 29, v1);
  return *(v0 + 29);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 29, v5);
  *(v6 + 29) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 29);
  *(v1 + 84) = *(v0 + 29);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B3C4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 29) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 30, v1);
  return *(v0 + 30);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 30, v5);
  *(v6 + 30) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 30);
  *(v1 + 84) = *(v0 + 30);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B548(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 30) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 31, v1);
  return *(v0 + 31);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 31, v5);
  *(v6 + 31) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 31);
  *(v1 + 84) = *(v0 + 31);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B6CC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 31) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);
  return *(v0 + 32);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  *(v1 + 84) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B850(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 32) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 33, v1);
  return *(v0 + 33);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 33, v5);
  *(v6 + 33) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 33);
  *(v1 + 84) = *(v0 + 33);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B9D4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 33) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 34, v1);
  return *(v0 + 34);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 34, v5);
  *(v6 + 34) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 34);
  *(v1 + 84) = *(v0 + 34);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BB58(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 34) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 35, v1);
  return *(v0 + 35);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 35, v5);
  *(v6 + 35) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 35);
  *(v1 + 84) = *(v0 + 35);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BCDC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 35) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 36, v1);
  return *(v0 + 36);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 36, v5);
  *(v6 + 36) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 36);
  *(v1 + 84) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BE60(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 36) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 37, v1);
  return *(v0 + 37);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 37, v5);
  *(v6 + 37) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 37);
  *(v1 + 84) = *(v0 + 37);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BFE4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 37) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 38, v1);
  return *(v0 + 38);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 38, v5);
  *(v6 + 38) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 38);
  *(v1 + 84) = *(v0 + 38);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C168(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 38) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 39, v1);
  return *(v0 + 39);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 39, v5);
  *(v6 + 39) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 39);
  *(v1 + 84) = *(v0 + 39);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C2EC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 39) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.spotlightQueryIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Searchfoundation_QueryUnderstandingParse(0) + 20));
  result = OUTLINED_FUNCTION_10_4(v3 + 40, v4);
  v6 = *(v3 + 48);
  *a1 = *(v3 + 40);
  *(a1 + 8) = v6;
  return result;
}

void *sub_1B953C3BC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B953C404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_QueryUnderstandingParse.spotlightQueryIntent.setter()
{
  v4 = *(OUTLINED_FUNCTION_26_26() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v8);
    *(v0 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 40, v6);
  *(v7 + 40) = v2;
  *(v7 + 48) = v3;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.spotlightQueryIntent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_24_28(v2) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 40);
  v5 = *(v4 + 48);
  *(v1 + 72) = *(v4 + 40);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C538(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_4_15(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 88);
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 49, v1);
  return *(v0 + 49);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 49, v5);
  *(v6 + 49) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 49);
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C6D8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.getter()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 50, v1);
  return *(v0 + 50);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 50, v5);
  *(v6 + 50) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0(v0 + 50);
  *(v1 + 84) = *(v0 + 50);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C85C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 50) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B964C2B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Searchfoundation_QueryUnderstandingParse.unknownFields.setter()
{
  sub_1B964C2B0();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Searchfoundation_QueryUnderstandingParse.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_QueryUnderstandingParse(0) + 20);
  if (qword_1EBAB8758 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAD07F0;
}

uint64_t sub_1B953CA44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD07A8);
  __swift_project_value_buffer(v0, qword_1EBAD07A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QueryUnderstandingQueryIntentTypeUnknown";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QueryUnderstandingQueryIntentTypeUnrelated";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QueryUnderstandingQueryIntentTypePhotoSearch";
  *(v12 + 1) = 44;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "QueryUnderstandingQueryIntentTypePhotoSearchOCR";
  *(v14 + 1) = 47;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B953CCAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD07C0);
  __swift_project_value_buffer(v0, qword_1EBAD07C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SpotlightQueryIntentTypeUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SpotlightQueryIntentTypeLocal";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SpotlightQueryIntentTypeStrong_Local";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SpotlightQueryIntentTypeServer";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SpotlightQueryIntentTypeStrong_Server";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B953CF70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD07D8);
  __swift_project_value_buffer(v0, qword_1EBAD07D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "queryIntentType";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "hasUnspecifiedTokens";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hasSortCriteriaTokens";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hasLocationTokens";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasActionTokens";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasMediaTypeTokens";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "hasVisualQualityTokens";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hasNounTokens";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "hasTimeTokens";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "hasEventTokens";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "hasGenericLocationTokens";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hasCaptureDeviceTokens";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasFavoritedTokens";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "hasSourceAppTokens";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "hasPersonTokens";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "hasPersonSenderTokens";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "spotlightQueryIntent";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "isUnsafeQuery";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "isBlocklistedQuery";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B953D564()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 33) = 0;
  *(result + 25) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 49) = 0;
  qword_1EBAD07F0 = result;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_QueryUnderstandingParse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD975C(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B953D650(v10, a1, a2, a3);
}

uint64_t sub_1B953D650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B953D8D4(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FDA2D4(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8FDA358(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8FDA3DC(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8FDA460(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B8FDA4E4(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8FDA568(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8FDA5EC(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8FDA670(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8FDA6F4(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8FDA778(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8FDA7FC(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8FDA880(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8FDA904(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8FDA988(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8FDAA0C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B953D968(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B953D9FC(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B8FDAB78(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B953D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B953ECAC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B953D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B953EC58();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B953D9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Searchfoundation_QueryUnderstandingParse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  result = sub_1B953DAEC(*(v3 + *(UnderstandingParse + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B953DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_1B953ECAC(), result = sub_1B964C680(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 25) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 26) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 27) != 1 || (result = sub_1B964C670(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 28) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 29) != 1 || (result = sub_1B964C670(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 30) != 1 || (result = sub_1B964C670(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 31) != 1 || (result = sub_1B964C670(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 32) != 1 || (result = sub_1B964C670(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 33) != 1 || (result = sub_1B964C670(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 34) != 1 || (result = sub_1B964C670(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 35) != 1 || (result = sub_1B964C670(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 36) != 1 || (result = sub_1B964C670(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 37) != 1 || (result = sub_1B964C670(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 38) != 1 || (result = sub_1B964C670(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 39) != 1 || (result = sub_1B964C670(), !v4))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 40) || (sub_1B953EC58(), result = sub_1B964C680(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 49) != 1 || (result = sub_1B964C670(), !v4))
                                    {
                                      result = swift_beginAccess();
                                      if (*(a1 + 50) == 1)
                                      {
                                        return sub_1B964C670();
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

uint64_t static Searchfoundation_QueryUnderstandingParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Searchfoundation_QueryUnderstandingParse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_1B953E0D4(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  sub_1B8CD36E0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B953E0D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_29;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

LABEL_6:
  swift_beginAccess();
  v6 = *(a1 + 25);
  swift_beginAccess();
  if (v6 != *(a2 + 25) || (swift_beginAccess(), v7 = *(a1 + 26), swift_beginAccess(), v7 != *(a2 + 26)) || (swift_beginAccess(), v8 = *(a1 + 27), swift_beginAccess(), v8 != *(a2 + 27)) || (swift_beginAccess(), v9 = *(a1 + 28), swift_beginAccess(), v9 != *(a2 + 28)) || (swift_beginAccess(), v10 = *(a1 + 29), swift_beginAccess(), v10 != *(a2 + 29)) || (swift_beginAccess(), v11 = *(a1 + 30), swift_beginAccess(), v11 != *(a2 + 30)) || (swift_beginAccess(), v12 = *(a1 + 31), swift_beginAccess(), v12 != *(a2 + 31)) || (swift_beginAccess(), v13 = *(a1 + 32), swift_beginAccess(), v13 != *(a2 + 32)) || (swift_beginAccess(), v14 = *(a1 + 33), swift_beginAccess(), v14 != *(a2 + 33)) || (swift_beginAccess(), v15 = *(a1 + 34), swift_beginAccess(), v15 != *(a2 + 34)) || (swift_beginAccess(), v16 = *(a1 + 35), swift_beginAccess(), v16 != *(a2 + 35)) || (swift_beginAccess(), v17 = *(a1 + 36), swift_beginAccess(), v17 != *(a2 + 36)) || (swift_beginAccess(), v18 = *(a1 + 37), swift_beginAccess(), v18 != *(a2 + 37)) || (swift_beginAccess(), v19 = *(a1 + 38), swift_beginAccess(), v19 != *(a2 + 38)) || (swift_beginAccess(), v20 = *(a1 + 39), swift_beginAccess(), v20 != *(a2 + 39)) || (swift_beginAccess(), v21 = *(a1 + 40), v22 = *(a1 + 48), swift_beginAccess(), !sub_1B8D92198(v21, v22, *(a2 + 40))) || (swift_beginAccess(), v23 = *(a1 + 49), swift_beginAccess(), v23 != *(a2 + 49)))
  {
LABEL_29:
    v25 = 0;
    return v25 & 1;
  }

  swift_beginAccess();
  v24 = *(a1 + 50);
  swift_beginAccess();
  v25 = v24 ^ *(a2 + 50) ^ 1;
  return v25 & 1;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
  sub_1B8CD36E0(&qword_1EBAD07F8, type metadata accessor for Searchfoundation_QueryUnderstandingParse, protocol conformance descriptor for Searchfoundation_QueryUnderstandingParse);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B953E68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD36E0(&qword_1EBAD0878, type metadata accessor for Searchfoundation_QueryUnderstandingParse, "Q8{5");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953E70C(uint64_t a1)
{
  v2 = sub_1B8CD36E0(&qword_1EBAD0858, type metadata accessor for Searchfoundation_QueryUnderstandingParse, protocol conformance descriptor for Searchfoundation_QueryUnderstandingParse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B953E77C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD36E0(&qword_1EBAD0858, type metadata accessor for Searchfoundation_QueryUnderstandingParse, protocol conformance descriptor for Searchfoundation_QueryUnderstandingParse);

  return sub_1B964C5D0();
}

unint64_t sub_1B953E7FC()
{
  result = qword_1EBAD0800;
  if (!qword_1EBAD0800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_QueryUnderstandingQueryIntentType, &type metadata for Searchfoundation_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0800);
  }

  return result;
}

unint64_t sub_1B953E854()
{
  result = qword_1EBAD0808;
  if (!qword_1EBAD0808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_QueryUnderstandingQueryIntentType, &type metadata for Searchfoundation_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0808);
  }

  return result;
}

unint64_t sub_1B953E8AC()
{
  result = qword_1EBAD0810;
  if (!qword_1EBAD0810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_QueryUnderstandingQueryIntentType, &type metadata for Searchfoundation_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0810);
  }

  return result;
}

unint64_t sub_1B953E934()
{
  result = qword_1EBAD0828;
  if (!qword_1EBAD0828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SpotlightQueryIntentType, &type metadata for Searchfoundation_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0828);
  }

  return result;
}

unint64_t sub_1B953E98C()
{
  result = qword_1EBAD0830;
  if (!qword_1EBAD0830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SpotlightQueryIntentType, &type metadata for Searchfoundation_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0830);
  }

  return result;
}

unint64_t sub_1B953E9E4()
{
  result = qword_1EBAD0838;
  if (!qword_1EBAD0838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SpotlightQueryIntentType, &type metadata for Searchfoundation_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0838);
  }

  return result;
}

uint64_t sub_1B953EBD4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B953EC58()
{
  result = qword_1EBAD0880;
  if (!qword_1EBAD0880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SpotlightQueryIntentType, &type metadata for Searchfoundation_SpotlightQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0880);
  }

  return result;
}

unint64_t sub_1B953ECAC()
{
  result = qword_1EBAD0888;
  if (!qword_1EBAD0888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_QueryUnderstandingQueryIntentType, &type metadata for Searchfoundation_QueryUnderstandingQueryIntentType, v0, v1);
    atomic_store(result, &qword_1EBAD0888);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_77(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
}

uint64_t OUTLINED_FUNCTION_9_43()
{

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
}

uint64_t OUTLINED_FUNCTION_10_40()
{

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
}

uint64_t OUTLINED_FUNCTION_24_28(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
}

uint64_t OUTLINED_FUNCTION_26_26()
{

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse(0);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Searchfoundation_CATModel.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_132_2();
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = xmmword_1B9652FE0;
  type metadata accessor for Searchfoundation_CATModel(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.catModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 28));
  sub_1B8DD9078(v7, v8, &qword_1EBACC628, &qword_1B96B99A0);
  v9 = type metadata accessor for Searchfoundation_CATModel(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (v12)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = 0;
    *(a1 + 24) = v13;
    *(a1 + 32) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v14, v15, v9);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC628, &qword_1B96B99A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_87();
    v16 = OUTLINED_FUNCTION_182();
    return sub_1B953F604(v16, v17, v18);
  }

  return result;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.catModel.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_1_87();
  sub_1B953F604(v0, v1 + v3, v4);
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_ResponseWrapperCardSection.catModel.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_CATModel(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 28);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBACC628, &qword_1B96B99A0);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    *(v10 + 2) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBACC628, &qword_1B96B99A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_87();
    v19 = OUTLINED_FUNCTION_461();
    sub_1B953F604(v19, v20, v21);
  }

  return sub_1B953F1E8;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.hasCatModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2);
  v4 = OUTLINED_FUNCTION_115(*(v3 + 28));
  OUTLINED_FUNCTION_63_4(v4, v5);
  type metadata accessor for Searchfoundation_CATModel(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &qword_1B96B99A0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_ResponseWrapperCardSection.clearCatModel()()
{
  v1 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBACC628, &qword_1B96B99A0);
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.visualCatoutput.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.visualCatoutput.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.patternModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 32));
  sub_1B8DD9078(v7, v8, &qword_1EBAD08D8, &qword_1B96D7C08);
  v9 = type metadata accessor for Searchfoundation_PatternModel(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (v12)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = xmmword_1B9652FE0;
    *(a1 + 32) = 0;
    *(a1 + 40) = v13;
    *(a1 + 48) = 0;
    *(a1 + 56) = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v14, v15, v9);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD08D8, &qword_1B96D7C08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    v16 = OUTLINED_FUNCTION_182();
    return sub_1B953F604(v16, v17, v18);
  }

  return result;
}

uint64_t sub_1B953F4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B953F910(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.patternModel.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_4_59();
  sub_1B953F604(v0, v1 + v3, v4);
  type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Searchfoundation_PatternModel.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_132_2();
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  type metadata accessor for Searchfoundation_PatternModel(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B953F604(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

void (*Searchfoundation_ResponseWrapperCardSection.patternModel.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_PatternModel(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 32);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBAD08D8, &qword_1B96D7C08);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 1) = xmmword_1B9652FE0;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAD08D8, &qword_1B96D7C08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    v19 = OUTLINED_FUNCTION_461();
    sub_1B953F604(v19, v20, v21);
  }

  return sub_1B953F7DC;
}

void sub_1B953F804(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_1B953F910((*a1)[4], v10, a5);
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B953F604(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_1B953F96C();
  }

  else
  {
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B953F604(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_1B953F910(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

uint64_t sub_1B953F96C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.hasPatternModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2);
  v4 = OUTLINED_FUNCTION_115(*(v3 + 32));
  OUTLINED_FUNCTION_63_4(v4, v5);
  type metadata accessor for Searchfoundation_PatternModel(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &qword_1B96D7C08);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_ResponseWrapperCardSection.clearPatternModel()()
{
  v1 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAD08D8, &qword_1B96D7C08);
  type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.patternModels.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.unknownFields.getter()
{
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_ResponseWrapperCardSection.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_CATModel.catIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_CATModel.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_CATModel.params.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CATModel.params.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_CATModel.unknownFields.getter()
{
  type metadata accessor for Searchfoundation_CATModel(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Searchfoundation_CATModel.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_CATModel(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_CATModel.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CATModel(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_PatternModel.patternParameters.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PatternModel.patternParameters.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_PatternModel.patternBundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_PatternModel.patternTemplateDirectory.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Searchfoundation_PatternModel.unknownFields.getter()
{
  type metadata accessor for Searchfoundation_PatternModel(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Searchfoundation_PatternModel.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_PatternModel(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_PatternModel.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_PatternModel(v0);
  return nullsub_1;
}

uint64_t sub_1B954018C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0890);
  __swift_project_value_buffer(v0, qword_1EBAD0890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "catModel";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visualCATOutput";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pattern_model";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pattern_models";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95404A8(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B954055C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9540610(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95404A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  type metadata accessor for Searchfoundation_CATModel(0);
  sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel, protocol conformance descriptor for Searchfoundation_CATModel);
  return sub_1B964C580();
}

uint64_t sub_1B954055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  type metadata accessor for Searchfoundation_PatternModel(0);
  sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel, protocol conformance descriptor for Searchfoundation_PatternModel);
  return sub_1B964C580();
}

uint64_t sub_1B9540610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_PatternModel(0);
  sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel, protocol conformance descriptor for Searchfoundation_PatternModel);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v34 = type metadata accessor for Searchfoundation_PatternModel(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v32 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v19 = v18 - v17;
  v33 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8DD9078(v3 + *(v33 + 28), v15, &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC628, &qword_1B96B99A0);
  }

  else
  {
    sub_1B953F604(v15, v19, type metadata accessor for Searchfoundation_CATModel);
    sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel, protocol conformance descriptor for Searchfoundation_CATModel);
    sub_1B964C740();
    result = sub_1B953F96C();
    if (v4)
    {
      return result;
    }
  }

  v24 = sub_1B8D99EA8(*v3, v3[1]);
  v25 = v34;
  if (v24 || (result = sub_1B964C6A0(), !v4))
  {
    sub_1B8DD9078(v3 + *(v33 + 32), v5, &qword_1EBAD08D8, &qword_1B96D7C08);
    v26 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v26, v27, v25) == 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAD08D8, &qword_1B96D7C08);
    }

    else
    {
      sub_1B953F604(v5, v32, type metadata accessor for Searchfoundation_PatternModel);
      OUTLINED_FUNCTION_8_46();
      sub_1B9540A74(v28, v29, protocol conformance descriptor for Searchfoundation_PatternModel);
      OUTLINED_FUNCTION_29_33();
      sub_1B964C740();
      result = sub_1B953F96C();
      if (v4)
      {
        return result;
      }
    }

    if (!*(v3[2] + 16))
    {
      return sub_1B964C290();
    }

    OUTLINED_FUNCTION_8_46();
    sub_1B9540A74(v30, v31, protocol conformance descriptor for Searchfoundation_PatternModel);
    OUTLINED_FUNCTION_29_33();
    result = sub_1B964C730();
    if (!v4)
    {
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B9540A74(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t static Searchfoundation_ResponseWrapperCardSection.== infix(_:_:)(void *a1, void *a2)
{
  v63 = type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v59 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v58 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08E8, &unk_1B96D7C10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v58 - v11;
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v58 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC630, &qword_1B96B99A8) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v62 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  v24 = *(v62 + 28);
  v25 = *(v20 + 56);
  v65 = a1;
  OUTLINED_FUNCTION_63_4(a1 + v24, v23);
  OUTLINED_FUNCTION_63_4(a2 + v24, &v23[v25]);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v26, v27, v28);
  if (v40)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v29, v30, v31);
    if (v40)
    {
      sub_1B8D9207C(v23, &qword_1EBACC628, &qword_1B96B99A0);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_1B8DD9078(v23, v19, &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v37, v38, v39);
  if (v40)
  {
    sub_1B953F96C();
LABEL_15:
    v41 = &qword_1EBACC630;
    v42 = &qword_1B96B99A8;
LABEL_30:
    v49 = v23;
LABEL_31:
    sub_1B8D9207C(v49, v41, v42);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_87();
  sub_1B953F604(&v23[v25], v15, v43);
  v44 = *v19 == *v15 && v19[1] == v15[1];
  if (!v44 && (sub_1B964C9F0() & 1) == 0 || (v19[2] == v15[2] ? (v45 = v19[3] == v15[3]) : (v45 = 0), !v45 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v19[4], v19[5], v15[4], v15[5]) & 1) == 0))
  {
    sub_1B953F96C();
    sub_1B953F96C();
    v41 = &qword_1EBACC628;
    v42 = &qword_1B96B99A0;
    goto LABEL_30;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_105();
  sub_1B9540A74(v46, v47, MEMORY[0x1E69AAC10]);
  v48 = sub_1B964C850();
  sub_1B953F96C();
  sub_1B953F96C();
  sub_1B8D9207C(v23, &qword_1EBACC628, &qword_1B96B99A0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  v32 = v65;
  if ((MEMORY[0x1BFADC060](*v65, v65[1], *a2, a2[1]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v33 = *(v62 + 32);
  v34 = *(v61 + 48);
  v35 = v64;
  sub_1B8DD9078(v32 + v33, v64, &qword_1EBAD08D8, &qword_1B96D7C08);
  sub_1B8DD9078(a2 + v33, v35 + v34, &qword_1EBAD08D8, &qword_1B96D7C08);
  v36 = v63;
  OUTLINED_FUNCTION_178(v35, 1, v63);
  if (!v40)
  {
    sub_1B8DD9078(v35, v60, &qword_1EBAD08D8, &qword_1B96D7C08);
    OUTLINED_FUNCTION_178(v35 + v34, 1, v36);
    if (!v52)
    {
      sub_1B953F604(v35 + v34, v59, type metadata accessor for Searchfoundation_PatternModel);
      v53 = OUTLINED_FUNCTION_461();
      v54 = static Searchfoundation_PatternModel.== infix(_:_:)(v53);
      sub_1B953F96C();
      OUTLINED_FUNCTION_182();
      sub_1B953F96C();
      sub_1B8D9207C(v35, &qword_1EBAD08D8, &qword_1B96D7C08);
      if ((v54 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_39;
    }

    sub_1B953F96C();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_178(v35 + v34, 1, v36);
  if (!v40)
  {
LABEL_37:
    v41 = &qword_1EBAD08E8;
    v42 = &unk_1B96D7C10;
    v49 = v35;
    goto LABEL_31;
  }

  sub_1B8D9207C(v35, &qword_1EBAD08D8, &qword_1B96D7C08);
LABEL_39:
  sub_1B8D687DC(v32[2], a2[2]);
  if (v55)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_105();
    sub_1B9540A74(v56, v57, MEMORY[0x1E69AAC10]);
    v50 = sub_1B964C850();
    return v50 & 1;
  }

LABEL_32:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_1B9541128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9540A74(&qword_1EBAD0948, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, protocol conformance descriptor for Searchfoundation_ResponseWrapperCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95411A8(uint64_t a1)
{
  v2 = sub_1B9540A74(&qword_1EBACE668, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, protocol conformance descriptor for Searchfoundation_ResponseWrapperCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9541218(uint64_t a1, uint64_t a2)
{
  sub_1B9540A74(&qword_1EBACE668, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, protocol conformance descriptor for Searchfoundation_ResponseWrapperCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95412B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD08A8);
  __swift_project_value_buffer(v0, qword_1EBAD08A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "catIdentifier";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "params";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CATModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_CATModel.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v4 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v4, v5) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
      {
        type metadata accessor for Searchfoundation_CATModel(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_CATModel.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v2[4], v2[5], v1[4], v1[5]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_CATModel(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_105();
  v9 = sub_1B9540A74(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B9541790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9540A74(&qword_1EBAD0940, type metadata accessor for Searchfoundation_CATModel, protocol conformance descriptor for Searchfoundation_CATModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9541810(uint64_t a1)
{
  v2 = sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel, protocol conformance descriptor for Searchfoundation_CATModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9541880(uint64_t a1, uint64_t a2)
{
  sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel, protocol conformance descriptor for Searchfoundation_CATModel);

  return sub_1B964C5D0();
}

uint64_t sub_1B9541918()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD08C0);
  __swift_project_value_buffer(v0, qword_1EBAD08C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pattern_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pattern_parameters";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pattern_bundle_id";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pattern_template_directory";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PatternModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_PatternModel.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v3 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v3, v4) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          type metadata accessor for Searchfoundation_PatternModel(0);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PatternModel.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](v2[2], v2[3], v1[2], v1[3]) & 1) == 0)
  {
    return 0;
  }

  v6 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_PatternModel(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_105();
  v10 = sub_1B9540A74(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B9541E34(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B9540A74(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9541F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9540A74(&qword_1EBAD0938, type metadata accessor for Searchfoundation_PatternModel, protocol conformance descriptor for Searchfoundation_PatternModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9541F94(uint64_t a1)
{
  v2 = sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel, protocol conformance descriptor for Searchfoundation_PatternModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9542004(uint64_t a1, uint64_t a2)
{
  sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel, protocol conformance descriptor for Searchfoundation_PatternModel);

  return sub_1B964C5D0();
}

void sub_1B954240C(uint64_t a1)
{
  sub_1B9542560(319, &qword_1ED9D3A18, type metadata accessor for Searchfoundation_PatternModel, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9542560(319, &qword_1ED9F96C0, type metadata accessor for Searchfoundation_CATModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9542560(319, &qword_1ED9F2090, type metadata accessor for Searchfoundation_PatternModel, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9542560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B95425EC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_ResultPlacement.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9542794@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ResultPlacement.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95427C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9542DA0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ResultPlacement.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0950 = a1;
}

uint64_t sub_1B9542910@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ResultPlacement.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9542938()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0958);
  __swift_project_value_buffer(v0, qword_1EBAD0958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ResultPlacementUnspecified";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ResultPlacementTop";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ResultPlacementBottom";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ResultPlacementTopHit";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ResultPlacement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0958);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9542C20()
{
  result = qword_1EBAD0970;
  if (!qword_1EBAD0970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultPlacement, &type metadata for Searchfoundation_ResultPlacement, v0, v1);
    atomic_store(result, &qword_1EBAD0970);
  }

  return result;
}

unint64_t sub_1B9542C78()
{
  result = qword_1EBAD0978;
  if (!qword_1EBAD0978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultPlacement, &type metadata for Searchfoundation_ResultPlacement, v0, v1);
    atomic_store(result, &qword_1EBAD0978);
  }

  return result;
}

unint64_t sub_1B9542CD0()
{
  result = qword_1EBAD0980;
  if (!qword_1EBAD0980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultPlacement, &type metadata for Searchfoundation_ResultPlacement, v0, v1);
    atomic_store(result, &qword_1EBAD0980);
  }

  return result;
}

unint64_t sub_1B9542D28()
{
  result = qword_1EBAD0988;
  if (!qword_1EBAD0988)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0990, &qword_1B96D81F8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD0988);
  }

  return result;
}

unint64_t sub_1B9542DA0()
{
  result = qword_1EBAD0998;
  if (!qword_1EBAD0998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultPlacement, &type metadata for Searchfoundation_ResultPlacement, v0, v1);
    atomic_store(result, &qword_1EBAD0998);
  }

  return result;
}

unint64_t Searchfoundation_ResultType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x28;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9542E38@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ResultType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9542E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9543CB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ResultType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD09A0 = a1;
}

uint64_t sub_1B9542FB4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ResultType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9542FDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD09A8);
  __swift_project_value_buffer(v0, qword_1EBAD09A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1B966F8A0;
  v4 = v86 + v3 + v1[14];
  *(v86 + v3) = 0;
  *v4 = "ResultTypeUnknown";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v86 + v3 + v2 + v1[14];
  *(v86 + v3 + v2) = 1;
  *v8 = "ResultTypeServer";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v86 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ResultTypeLocal";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v86 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ResultTypeCoreSpotlight";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v86 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ResultTypeNSUserActivity";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v86 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ResultTypeSafariTopHit";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v86 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ResultTypeCalculator";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v86 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ResultTypeConversion";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v7();
  v21 = (v86 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ResultTypeDictionaryDefinition";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v7();
  v23 = (v86 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ResultTypeGoogle";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v86 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ResultTypeYahoo";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v86 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ResultTypeBing";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v86 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ResultTypeDuckDuckGo";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v86 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ResultTypeYandex";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v86 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ResultTypeBaidu";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v86 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ResultTypeProactiveSuggestion";
  *(v36 + 1) = 29;
  v36[16] = 2;
  v7();
  v37 = (v86 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ResultTypeLocalSuggestion";
  *(v38 + 1) = 25;
  v38[16] = 2;
  v7();
  v39 = (v86 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ResultTypeServerSuggestion";
  *(v40 + 1) = 26;
  v40[16] = 2;
  v7();
  v41 = (v86 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "ResultTypeQihoo";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v86 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ResultTypeSogou";
  *(v44 + 1) = 15;
  v44[16] = 2;
  v7();
  v45 = (v86 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "ResultTypeSiriAction";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  v47 = (v86 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "ResultTypeSiriSuggestion";
  *(v48 + 1) = 24;
  v48[16] = 2;
  v7();
  v49 = (v86 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "ResultTypeInstalledClip";
  *(v50 + 1) = 23;
  v50[16] = 2;
  v7();
  v51 = (v86 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "ResultTypeUninstalledClip";
  *(v52 + 1) = 25;
  v52[16] = 2;
  v7();
  v53 = (v86 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "ResultTypeWebClip";
  *(v54 + 1) = 17;
  v54[16] = 2;
  v7();
  v55 = (v86 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "ResultTypeEcosia";
  *(v56 + 1) = 16;
  v56[16] = 2;
  v7();
  v57 = (v86 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "ResultTypeServerAlternative";
  *(v58 + 1) = 27;
  v58[16] = 2;
  v7();
  v59 = (v86 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "ResultTypeServerSiriSuggestion";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v86 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "ResultTypeWebSuggestion";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v86 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "ResultTypeWebAsTypedSuggestion";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v86 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "ResultTypeUserTypedSuggestion";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v86 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "ResultTypeCoreSpotlightSuggestion";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v86 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "ResultTypeContactsSuggestion";
  *(v70 + 1) = 28;
  v70[16] = 2;
  v7();
  v71 = (v86 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "ResultTypeApplicationSuggestion";
  *(v72 + 1) = 31;
  v72[16] = 2;
  v7();
  v73 = (v86 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "ResultTypeNLPSuggestion";
  *(v74 + 1) = 23;
  v74[16] = 2;
  v7();
  v75 = (v86 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "ResultTypePhotoSuggestion";
  *(v76 + 1) = 25;
  v76[16] = 2;
  v7();
  v77 = (v86 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "ResultTypeContacts";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v86 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "ResultTypePeople";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v7();
  v81 = (v86 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "ResultTypePeopleSuggestion";
  *(v82 + 1) = 26;
  v82[16] = 2;
  v7();
  v83 = (v86 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "ResultTypeTopicSuggestion";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ResultType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8780 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD09A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9543B30()
{
  result = qword_1EBAD09C0;
  if (!qword_1EBAD09C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultType, &type metadata for Searchfoundation_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAD09C0);
  }

  return result;
}

unint64_t sub_1B9543B88()
{
  result = qword_1EBAD09C8;
  if (!qword_1EBAD09C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultType, &type metadata for Searchfoundation_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAD09C8);
  }

  return result;
}

unint64_t sub_1B9543BE0()
{
  result = qword_1EBAD09D0;
  if (!qword_1EBAD09D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultType, &type metadata for Searchfoundation_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAD09D0);
  }

  return result;
}

unint64_t sub_1B9543C38()
{
  result = qword_1EBAD09D8;
  if (!qword_1EBAD09D8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD09E0, &qword_1B96D8398);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD09D8);
  }

  return result;
}

unint64_t sub_1B9543CB0()
{
  result = qword_1EBAD09E8;
  if (!qword_1EBAD09E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ResultType, &type metadata for Searchfoundation_ResultType, v0, v1);
    atomic_store(result, &qword_1EBAD09E8);
  }

  return result;
}

unint64_t Searchfoundation_RFHorizontalAlignment.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9543D48@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFHorizontalAlignment.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9543D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9544358();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFHorizontalAlignment.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD09F0 = a1;
}

uint64_t sub_1B9543EC4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFHorizontalAlignment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9543EEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD09F8);
  __swift_project_value_buffer(v0, qword_1EBAD09F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_HORIZONTAL_ALIGNMENT_UNSPECIFIED";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_HORIZONTAL_ALIGNMENT_LEADING";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_HORIZONTAL_ALIGNMENT_CENTER";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_HORIZONTAL_ALIGNMENT_TRAILING";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFHorizontalAlignment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8788 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD09F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B95441D8()
{
  result = qword_1EBAD0A10;
  if (!qword_1EBAD0A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFHorizontalAlignment, &type metadata for Searchfoundation_RFHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD0A10);
  }

  return result;
}

unint64_t sub_1B9544230()
{
  result = qword_1EBAD0A18;
  if (!qword_1EBAD0A18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFHorizontalAlignment, &type metadata for Searchfoundation_RFHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD0A18);
  }

  return result;
}

unint64_t sub_1B9544288()
{
  result = qword_1EBAD0A20;
  if (!qword_1EBAD0A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFHorizontalAlignment, &type metadata for Searchfoundation_RFHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD0A20);
  }

  return result;
}

unint64_t sub_1B95442E0()
{
  result = qword_1EBAD0A28;
  if (!qword_1EBAD0A28)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0A30, &qword_1B96D85B8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD0A28);
  }

  return result;
}

unint64_t sub_1B9544358()
{
  result = qword_1EBAD0A38;
  if (!qword_1EBAD0A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFHorizontalAlignment, &type metadata for Searchfoundation_RFHorizontalAlignment, v0, v1);
    atomic_store(result, &qword_1EBAD0A38);
  }

  return result;
}

unint64_t Searchfoundation_RFColorName.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x12;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B95443F0@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFColorName.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9544424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9548680();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFColorName.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0A40 = a1;
}

uint64_t (*static Searchfoundation_RFColorName.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9544568@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFColorName.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95445C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_RFColor.rgbValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAD0A90, &qword_1B96D8670);
LABEL_6:
    *a1 = 0;
    *(a1 + 8) = 0;
    type metadata accessor for Searchfoundation_RFRGBValue(0);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B9544B24();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_73();
  OUTLINED_FUNCTION_288();
  return sub_1B954518C();
}

uint64_t Searchfoundation_RFColor.rgbValue.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_2_73();
  OUTLINED_FUNCTION_432();
  sub_1B954518C();
  v1 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Searchfoundation_RFRGBValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Searchfoundation_RFRGBValue(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Searchfoundation_RFColor.rgbValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  type metadata accessor for Searchfoundation_RFRGBValue(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[3] = v9;
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v3[4] = v10;
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (v13)
  {
    sub_1B8D9207C(v6, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_2_73();
      sub_1B954518C();
      return sub_1B95449EC;
    }

    sub_1B9544B24();
  }

  *v9 = 0;
  v9[2] = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  return sub_1B95449EC;
}

void sub_1B95449EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_1B954546C();
    sub_1B8D9207C(v7, &qword_1EBAD0A90, &qword_1B96D8670);
    sub_1B954518C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_0_106();
    sub_1B9544B24();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAD0A90, &qword_1B96D8670);
    OUTLINED_FUNCTION_2_73();
    sub_1B954518C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1B9544B24()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFColor.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    result = sub_1B8D9207C(v1, &qword_1EBAD0A90, &qword_1B96D8670);
LABEL_7:
    v10 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_1B9544B24();
    goto LABEL_7;
  }

  v10 = *v1;
  v11 = *(v1 + 8);
LABEL_8:
  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t sub_1B9544C78@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_RFColor.name.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9544CBC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_RFColor.name.setter(&v3);
}

uint64_t Searchfoundation_RFColor.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1B8D9207C(v1, &qword_1EBAD0A90, &qword_1B96D8670);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

void (*Searchfoundation_RFColor.name.modify(void *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v4[4] = v8;
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    sub_1B8D9207C(v7, &qword_1EBAD0A90, &qword_1B96D8670);
LABEL_7:
    v11 = 0;
    v12 = 1;
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9544B24();
    goto LABEL_7;
  }

  v11 = *v7;
  v12 = v7[8];
LABEL_8:
  *v4 = v11;
  *(v4 + 8) = v12;
  return sub_1B9544EC0;
}

void sub_1B9544EC0(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_1B8D9207C(v4, &qword_1EBAD0A90, &qword_1B96D8670);
  *v4 = v5;
  *(v4 + 8) = v6;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t Searchfoundation_RFColor.alpha.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFColor(v5);
  sub_1B8D92024();
  v6 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v6);
  if (v9)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v10, v11, v6);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD0A98, &qword_1B96D8678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    return sub_1B954518C();
  }

  return result;
}

uint64_t sub_1B9545058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_177_1();
  sub_1B954546C();
  return a7(v11);
}

uint64_t Searchfoundation_RFColor.alpha.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFColor(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_1_88();
  sub_1B954518C();
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B954518C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

void (*Searchfoundation_RFColor.alpha.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFColor(0) + 24);
  sub_1B8D92024();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v7);
  if (v13)
  {
    *v10 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v14, v15, v7);
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBAD0A98, &qword_1B96D8678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_1B954518C();
  }

  return sub_1B9545350;
}

void sub_1B9545350(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B954546C();
    sub_1B8D9207C(v8 + v3, &qword_1EBAD0A98, &qword_1B96D8678);
    sub_1B954518C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    OUTLINED_FUNCTION_7_47();
    sub_1B9544B24();
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAD0A98, &qword_1B96D8678);
    OUTLINED_FUNCTION_1_88();
    sub_1B954518C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B954546C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t Searchfoundation_RFColor.hasAlpha.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFColor(v3);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1B8D9207C(v0, &qword_1EBAD0A98, &qword_1B96D8678);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_RFColor.clearAlpha()()
{
  v1 = *(type metadata accessor for Searchfoundation_RFColor(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAD0A98, &qword_1B96D8678);
  v2 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_RFColor.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_RFColor(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_RFColor.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFColor(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_RFColor.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFColor(v0);
  return nullsub_1;
}

BOOL static Searchfoundation_RFColor.OneOf_Value.== infix(_:_:)()
{
  type metadata accessor for Searchfoundation_RFRGBValue(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_62();
  v3 = (v2 - v1);
  type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0AA0, &qword_1B96D8680);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = (&v21 + *(v12 + 56) - v13);
  sub_1B954546C();
  sub_1B954546C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_6_44();
    sub_1B954546C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_2_73();
      sub_1B954518C();
      if (*v9 == *v3 && v9[1] == v3[1] && v9[2] == v3[2])
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_60();
        sub_1B8CD3728(v17, v18, MEMORY[0x1E69AAC10]);
        v19 = sub_1B964C850();
        OUTLINED_FUNCTION_0_106();
        sub_1B9544B24();
        if (v19)
        {
          OUTLINED_FUNCTION_0_106();
          sub_1B9544B24();
          OUTLINED_FUNCTION_3_78();
          sub_1B9544B24();
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_106();
        sub_1B9544B24();
      }

      OUTLINED_FUNCTION_0_106();
      sub_1B9544B24();
      OUTLINED_FUNCTION_3_78();
      sub_1B9544B24();
      return 0;
    }

    OUTLINED_FUNCTION_0_106();
    sub_1B9544B24();
LABEL_6:
    sub_1B8D9207C(v14, &qword_1EBAD0AA0, &qword_1B96D8680);
    return 0;
  }

  OUTLINED_FUNCTION_6_44();
  sub_1B954546C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v16 = sub_1B8D92198(*v7, v7[8], *v15);
  OUTLINED_FUNCTION_3_78();
  sub_1B9544B24();
  return v16;
}

uint64_t static Searchfoundation_RFRGBValue.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RFRGBValue(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_60();
  sub_1B8CD3728(v6, v7, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_RFColor.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Searchfoundation_RFColor(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t Searchfoundation_RFRGBValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_RFRGBValue(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_RFRGBValue.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFRGBValue(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_RFRGBValue.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RFRGBValue(v0);
  return nullsub_1;
}

uint64_t sub_1B9545CF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0A48);
  __swift_project_value_buffer(v0, qword_1EBAD0A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B96511A0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "RF_COLOR_NAME_DEFAULT";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RF_COLOR_NAME_PRIMARY";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RF_COLOR_NAME_SECONDARY";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RF_COLOR_NAME_TERTIARY";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RF_COLOR_NAME_QUATERNARY";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "RF_COLOR_NAME_CLEAR";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RF_COLOR_NAME_RED";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "RF_COLOR_NAME_GREEN";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "RF_COLOR_NAME_BLUE";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "RF_COLOR_NAME_ORANGE";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "RF_COLOR_NAME_YELLOW";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "RF_COLOR_NAME_PINK";
  *(v29 + 1) = 18;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "RF_COLOR_NAME_PURPLE";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "RF_COLOR_NAME_BROWN";
  *(v33 + 1) = 19;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "RF_COLOR_NAME_CYAN";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "RF_COLOR_NAME_INDIGO";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "RF_COLOR_NAME_MINT";
  *(v39 + 1) = 18;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "RF_COLOR_NAME_TEAL";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B95462C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0A60);
  __swift_project_value_buffer(v0, qword_1EBAD0A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rgb_value";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alpha";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v9 = OUTLINED_FUNCTION_288();
        sub_1B9546C48(v9, v10, v2, v1);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_288();
        sub_1B9546A8C(v7, v8, v2, v1);
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_432();
        sub_1B9546594(v5, v6, v2, v1);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9546594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_RFRGBValue(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0B10, &unk_1B96D8BD0);
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
    sub_1B8D9207C(v10, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    sub_1B954518C();
    sub_1B954518C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9544B24();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAD0B10, &unk_1B96D8BD0);
      sub_1B954518C();
      sub_1B954518C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue, protocol conformance descriptor for Searchfoundation_RFRGBValue);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAD0B10, &unk_1B96D8BD0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAD0B10, &unk_1B96D8BD0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAD0B10, &unk_1B96D8BD0);
  }

  sub_1B954518C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAD0B10, &unk_1B96D8BD0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAD0A90, &qword_1B96D8670);
  sub_1B954518C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9546A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v14 = 0;
  v15 = 256;
  sub_1B9548680();
  result = sub_1B964C410();
  if (!v4 && (v15 & 0x100) == 0)
  {
    v16 = v14;
    v13 = v15;
    sub_1B8D92024();
    v10 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_1B8D9207C(v8, &qword_1EBAD0A90, &qword_1B96D8670);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAD0A90, &qword_1B96D8670);
    *a2 = v16;
    *(a2 + 8) = v13 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1B9546C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFColor(0);
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  sub_1B8CD3728(&qword_1EBAD0AA8, type metadata accessor for Searchfoundation_RFOptionalFloat, protocol conformance descriptor for Searchfoundation_RFOptionalFloat);
  return sub_1B964C580();
}

uint64_t Searchfoundation_RFColor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27[0] = a2;
  v27[1] = a3;
  v27[3] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_177_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  sub_1B8D92024();
  v17 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = OUTLINED_FUNCTION_18_29();
      result = sub_1B95471A4(v18, v19, v20, v21);
      v4 = v3;
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v23 = OUTLINED_FUNCTION_18_29();
      sub_1B9546F90(v23, v24, v25, v26);
      v4 = v3;
      OUTLINED_FUNCTION_3_78();
      result = sub_1B9544B24();
      if (v3)
      {
        return result;
      }
    }
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAD0A98, &qword_1B96D8678);
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_1B954518C();
    sub_1B8CD3728(&qword_1EBAD0AA8, type metadata accessor for Searchfoundation_RFOptionalFloat, protocol conformance descriptor for Searchfoundation_RFOptionalFloat);
    sub_1B964C740();
    OUTLINED_FUNCTION_7_47();
    result = sub_1B9544B24();
    if (v4)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_8_1();
}

uint64_t sub_1B9546F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_RFRGBValue(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B954518C();
      sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue, protocol conformance descriptor for Searchfoundation_RFRGBValue);
      sub_1B964C740();
      return sub_1B9544B24();
    }

    result = sub_1B9544B24();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95471A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B8D92024();
  v7 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_1B9548680();
      return sub_1B964C680();
    }

    result = sub_1B9544B24();
  }

  __break(1u);
  return result;
}

uint64_t static Searchfoundation_RFColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v40 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v41 = (&v40 - v10);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0AB0, &qword_1B96D8688);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RFColor.OneOf_Value(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0AB8, &qword_1B96D8690);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = *(v18 + 56);
  v44 = a1;
  sub_1B8D92024();
  v45 = a2;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v20);
  if (v22)
  {
    OUTLINED_FUNCTION_48(&v20[v21]);
    if (v22)
    {
      sub_1B8D9207C(v20, &qword_1EBAD0A90, &qword_1B96D8670);
      goto LABEL_11;
    }

LABEL_9:
    v23 = &qword_1EBAD0AB8;
    v24 = &qword_1B96D8690;
    v25 = v20;
LABEL_21:
    sub_1B8D9207C(v25, v23, v24);
    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(&v20[v21]);
  if (v22)
  {
    OUTLINED_FUNCTION_3_78();
    sub_1B9544B24();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_6_44();
  sub_1B954518C();
  v26 = static Searchfoundation_RFColor.OneOf_Value.== infix(_:_:)();
  sub_1B9544B24();
  sub_1B9544B24();
  sub_1B8D9207C(v20, &qword_1EBAD0A90, &qword_1B96D8670);
  if (!v26)
  {
    goto LABEL_22;
  }

LABEL_11:
  type metadata accessor for Searchfoundation_RFColor(0);
  v27 = *(v42 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v28 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v28, v29, v43);
  if (v22)
  {
    OUTLINED_FUNCTION_48(v2 + v27);
    if (v22)
    {
      sub_1B8D9207C(v2, &qword_1EBAD0A98, &qword_1B96D8678);
LABEL_26:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_4_60();
      sub_1B8CD3728(v38, v39, MEMORY[0x1E69AAC10]);
      v32 = sub_1B964C850();
      return v32 & 1;
    }

    goto LABEL_19;
  }

  v30 = v41;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v2 + v27);
  if (v31)
  {
    OUTLINED_FUNCTION_7_47();
    sub_1B9544B24();
LABEL_19:
    v23 = &qword_1EBAD0AB0;
    v24 = &qword_1B96D8688;
LABEL_20:
    v25 = v2;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_88();
  v34 = v40;
  sub_1B954518C();
  if (*v30 != *v34)
  {
    sub_1B9544B24();
    sub_1B9544B24();
    v23 = &qword_1EBAD0A98;
    v24 = &qword_1B96D8678;
    goto LABEL_20;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_60();
  sub_1B8CD3728(v35, v36, MEMORY[0x1E69AAC10]);
  v37 = sub_1B964C850();
  sub_1B9544B24();
  sub_1B9544B24();
  sub_1B8D9207C(v2, &qword_1EBAD0A98, &qword_1B96D8678);
  if (v37)
  {
    goto LABEL_26;
  }

LABEL_22:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1B95478D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3728(&qword_1EBAD0B08, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9547958(uint64_t a1)
{
  v2 = sub_1B8CD3728(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95479C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3728(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor, protocol conformance descriptor for Searchfoundation_RFColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B9547A64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0A78);
  __swift_project_value_buffer(v0, qword_1EBAD0A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "red";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "green";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "blue";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFRGBValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFRGBValue.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(1, *v0), !v1))
  {
    v2 = v0[1];
    if (v2 == 0.0 || (result = OUTLINED_FUNCTION_23_3(2, v2), !v1))
    {
      v3 = v0[2];
      if (v3 == 0.0 || (result = OUTLINED_FUNCTION_23_3(3, v3), !v1))
      {
        type metadata accessor for Searchfoundation_RFRGBValue(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B9547E08(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD3728(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9547EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3728(&qword_1EBAD0B00, type metadata accessor for Searchfoundation_RFRGBValue, protocol conformance descriptor for Searchfoundation_RFRGBValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9547F6C(uint64_t a1)
{
  v2 = sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue, protocol conformance descriptor for Searchfoundation_RFRGBValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9547FDC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue, protocol conformance descriptor for Searchfoundation_RFRGBValue);

  return sub_1B964C5D0();
}

unint64_t sub_1B9548060()
{
  result = qword_1EBAB5350;
  if (!qword_1EBAB5350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColorName, &type metadata for Searchfoundation_RFColorName, v0, v1);
    atomic_store(result, &qword_1EBAB5350);
  }

  return result;
}

unint64_t sub_1B95480B8()
{
  result = qword_1EBAB5340;
  if (!qword_1EBAB5340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColorName, &type metadata for Searchfoundation_RFColorName, v0, v1);
    atomic_store(result, &qword_1EBAB5340);
  }

  return result;
}

unint64_t sub_1B9548110()
{
  result = qword_1EBAB5348;
  if (!qword_1EBAB5348)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColorName, &type metadata for Searchfoundation_RFColorName, v0, v1);
    atomic_store(result, &qword_1EBAB5348);
  }

  return result;
}

unint64_t sub_1B9548168()
{
  result = qword_1EBAD0AD0;
  if (!qword_1EBAD0AD0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0AD8, &qword_1B96D8780);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD0AD0);
  }

  return result;
}

void sub_1B9548444(uint64_t a1)
{
  sub_1B9548518(319, &qword_1ED9F2C88, type metadata accessor for Searchfoundation_RFColor.OneOf_Value);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9548518(319, &qword_1ED9F1C48, type metadata accessor for Searchfoundation_RFOptionalFloat);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9548518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B954856C(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFRGBValue(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B95485FC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B9548680()
{
  result = qword_1EBAB5358;
  if (!qword_1EBAB5358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFColorName, &type metadata for Searchfoundation_RFColorName, v0, v1);
    atomic_store(result, &qword_1EBAB5358);
  }

  return result;
}

unint64_t Searchfoundation_RFVibrancy.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B95487DC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFVibrancy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9548810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9548DB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFVibrancy.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0B18 = a1;
}

uint64_t sub_1B9548958@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFVibrancy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9548980()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0B20);
  __swift_project_value_buffer(v0, qword_1EBAD0B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_VIBRANCY_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_VIBRANCY_OFF";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_VIBRANCY_ON";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFVibrancy._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB87A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0B20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9548C30()
{
  result = qword_1EBAD0B38;
  if (!qword_1EBAD0B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFVibrancy, &type metadata for Searchfoundation_RFVibrancy, v0, v1);
    atomic_store(result, &qword_1EBAD0B38);
  }

  return result;
}

unint64_t sub_1B9548C88()
{
  result = qword_1EBAD0B40;
  if (!qword_1EBAD0B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFVibrancy, &type metadata for Searchfoundation_RFVibrancy, v0, v1);
    atomic_store(result, &qword_1EBAD0B40);
  }

  return result;
}

unint64_t sub_1B9548CE0()
{
  result = qword_1EBAD0B48;
  if (!qword_1EBAD0B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFVibrancy, &type metadata for Searchfoundation_RFVibrancy, v0, v1);
    atomic_store(result, &qword_1EBAD0B48);
  }

  return result;
}

unint64_t sub_1B9548D38()
{
  result = qword_1EBAD0B50;
  if (!qword_1EBAD0B50)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0B58, &qword_1B96D8CC8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAD0B50);
  }

  return result;
}

unint64_t sub_1B9548DB0()
{
  result = qword_1EBAD0B60;
  if (!qword_1EBAD0B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFVibrancy, &type metadata for Searchfoundation_RFVibrancy, v0, v1);
    atomic_store(result, &qword_1EBAD0B60);
  }

  return result;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(uint64_t a1)
{
  result = qword_1ED9D55A8;
  if (!qword_1ED9D55A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_6_45();
  v4 = OUTLINED_FUNCTION_115(*(v3 + 20));
  sub_1B8DD9078(v4, v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v6 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v10, v11, v6);
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v12 = OUTLINED_FUNCTION_182();
    return sub_1B95493B8(v12, v13);
  }

  return result;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.text1.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(v2) + 20);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  sub_1B95493B8(v0, v1 + v3);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_RFDisambiguationTitleCardSection.text1.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0) + 20);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    sub_1B95493B8(v6, v10);
  }

  return sub_1B9549198;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.hasText1.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_6_45();
  v3 = OUTLINED_FUNCTION_115(*(v2 + 20));
  sub_1B8DD9078(v3, v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &qword_1B96B9A80);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_RFDisambiguationTitleCardSection.clearText1()()
{
  v1 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.thumbnail.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_6_45();
  v4 = OUTLINED_FUNCTION_115(*(v3 + 24));
  sub_1B8DD9078(v4, v5, &qword_1EBACC708, &unk_1B96D92F0);
  v6 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v10, v11, v6);
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v12 = OUTLINED_FUNCTION_182();
    return sub_1B95493B8(v12, v13);
  }

  return result;
}

uint64_t sub_1B95493B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v4(v3);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B9549410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1B95497C0(a1, &v14 - v11);
  return a7(v12);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.thumbnail.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  sub_1B95493B8(v0, v1 + v3);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_RFDisambiguationTitleCardSection.thumbnail.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0) + 24);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBACC708, &unk_1B96D92F0);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    sub_1B95493B8(v6, v10);
  }

  return sub_1B954968C;
}

void sub_1B95496B4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    sub_1B95497C0((*a1)[4], v9);
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B95493B8(v9, v13 + v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_1B9549818();
  }

  else
  {
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B95493B8(v10, v13 + v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1B95497C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v4(v3);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B9549818()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.hasThumbnail.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_6_45();
  v3 = OUTLINED_FUNCTION_115(*(v2 + 24));
  sub_1B8DD9078(v3, v4, &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &unk_1B96D92F0);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_RFDisambiguationTitleCardSection.clearThumbnail()()
{
  v1 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B9549A6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3E38);
  __swift_project_value_buffer(v0, qword_1EBAB3E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFDisambiguationTitleCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB3E30 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB3E38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v9 = OUTLINED_FUNCTION_9();
      sub_1B9549E0C(v9, v10, v11, v12);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_9();
      sub_1B9549D58(v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1B9549D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B954AD04(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9549E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B954AD04(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v31 = a3;
  v29 = a1;
  v30 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_156();
  v27 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v26 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = v20 - v19;
  v22 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  v23 = *(v22 + 20);
  v28 = v6;
  sub_1B8DD9078(v6 + v23, v16, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95493B8(v16, v21);
    sub_1B954AD04(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty, protocol conformance descriptor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B9549818();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8DD9078(v28 + *(v22 + 24), v5, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B95493B8(v5, v26);
    sub_1B954AD04(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty, protocol conformance descriptor for Searchfoundation_RFVisualProperty);
    sub_1B964C740();
    result = sub_1B9549818();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_RFDisambiguationTitleCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v51 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v51 - v12;
  v13 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v18);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_156();
  v53 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(v24);
  v25 = *(v53 + 20);
  v26 = *(v22 + 56);
  v57 = a1;
  sub_1B8DD9078(a1 + v25, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v58 = a2;
  sub_1B8DD9078(a2 + v25, v2 + v26, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v2, 1, v13);
  if (v34)
  {
    OUTLINED_FUNCTION_178(v2 + v26, 1, v13);
    if (v34)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_15:
    v35 = &qword_1EBAB8E00;
    v36 = &qword_1B964D600;
LABEL_19:
    v38 = v2;
LABEL_28:
    sub_1B8D9207C(v38, v35, v36);
LABEL_29:
    v33 = 0;
    return v33 & 1;
  }

  sub_1B8DD9078(v2, v21, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v2 + v26, 1, v13);
  if (v34)
  {
    sub_1B9549818();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B95493B8(v2 + v26, v17);
  sub_1B8D5BA08(*v21, *v17);
  if ((v37 & 1) == 0 || v21[8] != *(v17 + 8))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_432();
    sub_1B9549818();
    v35 = &qword_1EBAB8DF8;
    v36 = &qword_1B96B9A80;
    goto LABEL_19;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_79();
  sub_1B954AD04(v45, v46, MEMORY[0x1E69AAC10]);
  v47 = sub_1B964C850();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_6:
  v27 = *(v53 + 24);
  v28 = *(v54 + 48);
  v29 = v56;
  sub_1B8DD9078(v57 + v27, v56, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8DD9078(v58 + v27, v29 + v28, &qword_1EBACC708, &unk_1B96D92F0);
  v30 = v55;
  OUTLINED_FUNCTION_178(v29, 1, v55);
  if (v34)
  {
    OUTLINED_FUNCTION_178(v29 + v28, 1, v30);
    if (v34)
    {
      sub_1B8D9207C(v29, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_11;
    }

LABEL_23:
    v35 = &qword_1EBACCC18;
    v36 = &unk_1B96D8D70;
LABEL_27:
    v38 = v29;
    goto LABEL_28;
  }

  v39 = v52;
  sub_1B8DD9078(v29, v52, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_178(v29 + v28, 1, v30);
  if (v40)
  {
    sub_1B9549818();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_0_107();
  v41 = v29 + v28;
  v42 = v51;
  sub_1B95493B8(v41, v51);
  sub_1B8D5D124(*v39, *v42);
  if ((v43 & 1) == 0 || *(v39 + 8) != *(v42 + 8))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v35 = &qword_1EBACC708;
    v36 = &unk_1B96D92F0;
    goto LABEL_27;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_79();
  sub_1B954AD04(v48, v49, MEMORY[0x1E69AAC10]);
  v50 = sub_1B964C850();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v29, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_79();
  sub_1B954AD04(v31, v32, MEMORY[0x1E69AAC10]);
  v33 = sub_1B964C850();
  return v33 & 1;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
  sub_1B954AD04(&qword_1EBAD0B68, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, protocol conformance descriptor for Searchfoundation_RFDisambiguationTitleCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B954A924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B954AD04(&qword_1EBAD0B78, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, protocol conformance descriptor for Searchfoundation_RFDisambiguationTitleCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B954A9A4(uint64_t a1)
{
  v2 = sub_1B954AD04(&qword_1ED9C9510, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, protocol conformance descriptor for Searchfoundation_RFDisambiguationTitleCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B954AA14(uint64_t a1, uint64_t a2)
{
  sub_1B954AD04(&qword_1ED9C9510, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, protocol conformance descriptor for Searchfoundation_RFDisambiguationTitleCardSection);

  return sub_1B964C5D0();
}

void sub_1B954ABDC(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B954ACB0(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty);
    if (v2 <= 0x3F)
    {
      sub_1B954ACB0(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B954ACB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B954AD04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t OUTLINED_FUNCTION_6_45()
{

  return type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection(0);
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *(v0 + *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0) + 20)) = MEMORY[0x1E69E7CC0];
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.summaryItemStandardCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_50(v7, v22);
  v8 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_1B8D9207C(v1, &qword_1EBAD0BB0, &qword_1B96D8F40);
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_83();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_0_108();
    OUTLINED_FUNCTION_288();
    return sub_1B954B83C();
  }
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.summaryItemStandardCardSection.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAD0BB0, &qword_1B96D8F40);
  OUTLINED_FUNCTION_0_108();
  OUTLINED_FUNCTION_432();
  sub_1B954B83C();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void (*Searchfoundation_RFExpandableStandardCardSection.summaryItemStandardCardSection.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_42(v12);
  v13 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  v14 = OUTLINED_FUNCTION_28_23(v13);
  if (__swift_getEnumTagSinglePayload(v14, v15, v16) == 1)
  {
    sub_1B8D9207C(v0, &qword_1EBAD0BB0, &qword_1B96D8F40);
    v17 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
    type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_0_108();
    OUTLINED_FUNCTION_128();
    sub_1B954B83C();
  }

  return sub_1B954B210;
}

void sub_1B954B210(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_461();
    sub_1B954B634();
    sub_1B8D9207C(v7, &qword_1EBAD0BB0, &qword_1B96D8F40);
    OUTLINED_FUNCTION_0_108();
    sub_1B954B83C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_13_34();
    sub_1B954B318();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAD0BB0, &qword_1B96D8F40);
    OUTLINED_FUNCTION_0_108();
    sub_1B954B83C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}