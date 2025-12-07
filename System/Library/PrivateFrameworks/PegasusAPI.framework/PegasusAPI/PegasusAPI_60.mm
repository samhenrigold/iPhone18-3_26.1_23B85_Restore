Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearSectionHeaderCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2B0, &qword_1B96B95C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_SectionHeaderCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.metaInfoCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MetaInfoCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC2B8, &qword_1B96B95D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.metaInfoCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2B8, &qword_1B96B95D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_593_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.metaInfoCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  type metadata accessor for Searchfoundation_MetaInfoCardSection(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_39_13(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v16 = OUTLINED_FUNCTION_59_13();
  if (v17)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xE000000000000000;
    *(v12 + 40) = 0;
    *(v12 + 42) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    *(v12 + 64) = 0;
    *(v12 + 72) = v0;
    OUTLINED_FUNCTION_1224(v16);
    v18 = OUTLINED_FUNCTION_915();
    type metadata accessor for Searchfoundation_Color(v18);
    v19 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = type metadata accessor for Searchfoundation_URL(0);
    OUTLINED_FUNCTION_264_3(v23);
    v24 = OUTLINED_FUNCTION_245_4(*(v1 + 64));
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v0);
    v27 = type metadata accessor for Searchfoundation_Image(0);
    OUTLINED_FUNCTION_6_19(v27);
    if (!v17)
    {
      sub_1B8D9207C(v2, &qword_1EBACC2B8, &qword_1B96B95D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_593_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMetaInfoCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMetaInfoCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2B8, &qword_1B96B95D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_MetaInfoCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.watchListCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_WatchListCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8BD8 != -1)
    {
      OUTLINED_FUNCTION_1096(&qword_1EBAB8BD8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC2C0, &qword_1B96B95D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.watchListCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C0, &qword_1B96B95D8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_592_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_WatchListCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.watchListCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_WatchListCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8BD8 != -1)
    {
      OUTLINED_FUNCTION_1096(&qword_1EBAB8BD8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC2C0, &qword_1B96B95D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_592_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasWatchListCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_WatchListCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearWatchListCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C0, &qword_1B96B95D8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_WatchListCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.mapsDetailedRowCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MapsDetailedRowCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC2C8, &qword_1B96B95E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.mapsDetailedRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C8, &qword_1B96B95E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_591_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.mapsDetailedRowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = xmmword_1B9652FE0;
    *(v10 + 96) = 0;
    *(v10 + 104) = v15;
    OUTLINED_FUNCTION_1244(v16);
    v17 = OUTLINED_FUNCTION_1020();
    v18 = type metadata accessor for Searchfoundation_Color(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC2C8, &qword_1B96B95E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_591_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMapsDetailedRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMapsDetailedRowCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2C8, &qword_1B96B95E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_MapsDetailedRowCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.buttonCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_ButtonCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_ButtonCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC2D0, &qword_1B96B95E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.buttonCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2D0, &qword_1B96B95E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_590_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.buttonCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_ButtonCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_1097();
    type metadata accessor for Searchfoundation_Color(v14);
    v15 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_915();
    type metadata accessor for Searchfoundation_RichText(v19);
    v20 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_1020();
    v25 = type metadata accessor for Searchfoundation_Image(v24);
    OUTLINED_FUNCTION_6_19(v25);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC2D0, &qword_1B96B95E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_590_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasButtonCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ButtonCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearButtonCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2D0, &qword_1B96B95E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ButtonCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.horizontalButtonCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    Searchfoundation_HorizontalButtonCardSection.init()();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC2D8, &qword_1B96B95F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.horizontalButtonCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2D8, &qword_1B96B95F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_589_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.horizontalButtonCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_HorizontalButtonCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1215(v14);
    v15 = OUTLINED_FUNCTION_915();
    v16 = type metadata accessor for Searchfoundation_Color(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBACC2D8, &qword_1B96B95F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_589_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasHorizontalButtonCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearHorizontalButtonCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2D8, &qword_1B96B95F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_HorizontalButtonCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.verticalLayoutCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8BC8 != -1)
    {
      OUTLINED_FUNCTION_1095(&qword_1EBAB8BC8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC2E0, &qword_1B96B95F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.verticalLayoutCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E0, &qword_1B96B95F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_588_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.verticalLayoutCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_VerticalLayoutCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8BC8 != -1)
    {
      OUTLINED_FUNCTION_1095(&qword_1EBAB8BC8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC2E0, &qword_1B96B95F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_588_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasVerticalLayoutCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearVerticalLayoutCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E0, &qword_1B96B95F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.productCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_ProductCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC2E8, &qword_1B96B9600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.productCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E8, &qword_1B96B9600);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_587_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ProductCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.productCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_ProductCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_1224(v15);
    v16 = OUTLINED_FUNCTION_915();
    v17 = type metadata accessor for Searchfoundation_Color(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC2E8, &qword_1B96B9600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_587_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasProductCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearProductCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2E8, &qword_1B96B9600);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ProductCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.horizontalScrollCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    Searchfoundation_HorizontalScrollCardSection.init()();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBACC2F0, &qword_1B96B9608);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.horizontalScrollCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2F0, &qword_1B96B9608);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_586_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.horizontalScrollCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_HorizontalScrollCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = v15;
    *(v10 + 88) = 0;
    OUTLINED_FUNCTION_1244(v16);
    v17 = OUTLINED_FUNCTION_1020();
    v18 = type metadata accessor for Searchfoundation_Color(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC2F0, &qword_1B96B9608);
    }
  }

  else
  {
    OUTLINED_FUNCTION_586_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasHorizontalScrollCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearHorizontalScrollCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC2F0, &qword_1B96B9608);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.mediaRemoteControlCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MediaRemoteControlCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC2F8, &qword_1B96B9610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.mediaRemoteControlCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2F8, &qword_1B96B9610);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_585_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.mediaRemoteControlCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = 0;
    *(v10 + 88) = v15;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = v15;
    OUTLINED_FUNCTION_1245(v16);
    v17 = OUTLINED_FUNCTION_1052();
    v18 = type metadata accessor for Searchfoundation_Color(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC2F8, &qword_1B96B9610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_585_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMediaRemoteControlCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMediaRemoteControlCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC2F8, &qword_1B96B9610);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.mapPlaceCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MapPlaceCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC300, &qword_1B96B9618);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.mapPlaceCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC300, &qword_1B96B9618);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_584_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.mapPlaceCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_MapPlaceCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = xmmword_1B9652FE0;
    *(v10 + 96) = 0;
    *(v10 + 104) = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_1245(v15);
    v16 = OUTLINED_FUNCTION_1052();
    v17 = type metadata accessor for Searchfoundation_Color(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC300, &qword_1B96B9618);
    }
  }

  else
  {
    OUTLINED_FUNCTION_584_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMapPlaceCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMapPlaceCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC300, &qword_1B96B9618);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_MapPlaceCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.compactRowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB4730 != -1)
    {
      OUTLINED_FUNCTION_1094(&qword_1EBAB4730);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC308, &qword_1B96B9620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.compactRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC308, &qword_1B96B9620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_583_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.compactRowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_CompactRowCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB4730 != -1)
    {
      OUTLINED_FUNCTION_1094(&qword_1EBAB4730);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC308, &qword_1B96B9620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_583_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasCompactRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearCompactRowCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC308, &qword_1B96B9620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.worldMapCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_WorldMapCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC310, &qword_1B96B9628);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.worldMapCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC310, &qword_1B96B9628);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_582_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.worldMapCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_WorldMapCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = 0;
    *(v10 + 88) = v15;
    OUTLINED_FUNCTION_1224(v16);
    v17 = OUTLINED_FUNCTION_915();
    type metadata accessor for Searchfoundation_Color(v17);
    v18 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_1020();
    v23 = type metadata accessor for Searchfoundation_LatLng(v22);
    OUTLINED_FUNCTION_6_19(v23);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC310, &qword_1B96B9628);
    }
  }

  else
  {
    OUTLINED_FUNCTION_582_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasWorldMapCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearWorldMapCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC310, &qword_1B96B9628);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_WorldMapCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.attributionFooterCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8300 != -1)
    {
      OUTLINED_FUNCTION_1093(&qword_1EBAB8300);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC318, &qword_1B96B9630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.attributionFooterCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC318, &qword_1B96B9630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_581_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.attributionFooterCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_AttributionFooterCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8300 != -1)
    {
      OUTLINED_FUNCTION_1093(&qword_1EBAB8300);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC318, &qword_1B96B9630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_581_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasAttributionFooterCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearAttributionFooterCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC318, &qword_1B96B9630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.gridCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Searchfoundation_GridCardSection(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    Searchfoundation_GridCardSection.init()();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC320, &qword_1B96B9638);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.gridCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC320, &qword_1B96B9638);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_580_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_GridCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B92F68D0()
{
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_1051(MEMORY[0x1E69E7CC0]);
  *(v0 + 80) = v1;
  v2(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_Color(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CardSectionValue.gridCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_GridCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1215(v14);
    v15 = OUTLINED_FUNCTION_915();
    v16 = type metadata accessor for Searchfoundation_Color(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBACC320, &qword_1B96B9638);
    }
  }

  else
  {
    OUTLINED_FUNCTION_580_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasGridCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_GridCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearGridCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC320, &qword_1B96B9638);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_GridCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.personHeaderCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  OUTLINED_FUNCTION_60_11(v6);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = OUTLINED_FUNCTION_861_0();
    v9 = type metadata accessor for Searchfoundation_Person(v8);
    result = OUTLINED_FUNCTION_11_31(v9);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBACC328, &qword_1B96B9640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.personHeaderCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC328, &qword_1B96B9640);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_579_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.personHeaderCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_PersonHeaderCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_1139();
    v15 = type metadata accessor for Searchfoundation_Person(v14);
    OUTLINED_FUNCTION_6_19(v15);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC328, &qword_1B96B9640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_579_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasPersonHeaderCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearPersonHeaderCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC328, &qword_1B96B9640);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_PersonHeaderCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.colorBarCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8320 != -1)
    {
      OUTLINED_FUNCTION_1092(&qword_1EBAB8320);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC330, &qword_1B96B9648);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.colorBarCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC330, &qword_1B96B9648);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_578_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.colorBarCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_ColorBarCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8320 != -1)
    {
      OUTLINED_FUNCTION_1092(&qword_1EBAB8320);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC330, &qword_1B96B9648);
    }
  }

  else
  {
    OUTLINED_FUNCTION_578_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasColorBarCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearColorBarCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC330, &qword_1B96B9648);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.splitCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_SplitCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8AD8 != -1)
    {
      OUTLINED_FUNCTION_1091(&qword_1EBAB8AD8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC338, &qword_1B96B9650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.splitCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC338, &qword_1B96B9650);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_577_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_SplitCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.splitCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_SplitCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8AD8 != -1)
    {
      OUTLINED_FUNCTION_1091(&qword_1EBAB8AD8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC338, &qword_1B96B9650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_577_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasSplitCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_SplitCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearSplitCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC338, &qword_1B96B9650);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_SplitCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.linkPresentationCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    *(a1 + 40) = 0;
    OUTLINED_FUNCTION_762(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC340, &qword_1B96B9658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.linkPresentationCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC340, &qword_1B96B9658);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_576_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.linkPresentationCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_LinkPresentationCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    *(v10 + 32) = MEMORY[0x1E69E7CC0];
    *(v10 + 40) = 0;
    OUTLINED_FUNCTION_610_1(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC340, &qword_1B96B9658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_576_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasLinkPresentationCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearLinkPresentationCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC340, &qword_1B96B9658);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.findMyCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  OUTLINED_FUNCTION_60_11(MyCardSection);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = OUTLINED_FUNCTION_861_0();
    v9 = type metadata accessor for Searchfoundation_Person(v8);
    result = OUTLINED_FUNCTION_11_31(v9);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBACC348, &qword_1B96B9660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.findMyCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC348, &qword_1B96B9660);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_575_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_FindMyCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.findMyCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_FindMyCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_1139();
    v15 = type metadata accessor for Searchfoundation_Person(v14);
    OUTLINED_FUNCTION_6_19(v15);
    if (!v13)
    {
      sub_1B8D9207C(v0, &unk_1EBACC348, &qword_1B96B9660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_575_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasFindMyCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  OUTLINED_FUNCTION_11(MyCardSection);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearFindMyCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC348, &qword_1B96B9660);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  OUTLINED_FUNCTION_274_1(MyCardSection);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.heroCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_HeroCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F00 != -1)
    {
      OUTLINED_FUNCTION_1090(&qword_1EBAB7F00);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC350, &qword_1B96B9668);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.heroCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC350, &qword_1B96B9668);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_574_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_HeroCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.heroCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_HeroCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F00 != -1)
    {
      OUTLINED_FUNCTION_1090(&qword_1EBAB7F00);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC350, &qword_1B96B9668);
    }
  }

  else
  {
    OUTLINED_FUNCTION_574_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasHeroCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_HeroCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearHeroCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC350, &qword_1B96B9668);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_HeroCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.newsCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8618 != -1)
    {
      OUTLINED_FUNCTION_1089(&qword_1EBAB8618);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC358, &qword_1B96B9670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.newsCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC358, &qword_1B96B9670);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_573_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_NewsCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.newsCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_NewsCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8618 != -1)
    {
      OUTLINED_FUNCTION_1089(&qword_1EBAB8618);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC358, &qword_1B96B9670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_573_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasNewsCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearNewsCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC358, &qword_1B96B9670);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.miniCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8600 != -1)
    {
      OUTLINED_FUNCTION_1088(&qword_1EBAB8600);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC360, &qword_1B96B9678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.miniCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC360, &qword_1B96B9678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_572_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MiniCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.miniCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_MiniCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8600 != -1)
    {
      OUTLINED_FUNCTION_1088(&qword_1EBAB8600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC360, &qword_1B96B9678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_572_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasMiniCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearMiniCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC360, &qword_1B96B9678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.infoCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Searchfoundation_InfoCardSection(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    Searchfoundation_InfoCardSection.init()();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBACC368, &qword_1B96B9680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.infoCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC368, &qword_1B96B9680);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_571_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_InfoCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B92F931C()
{
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_1051(MEMORY[0x1E69E7CC0]);
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  v3 = v2(0);
  OUTLINED_FUNCTION_1325(v3);
  type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_CardSectionValue.infoCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_InfoCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = v15;
    *(v10 + 88) = 0;
    OUTLINED_FUNCTION_1244(v16);
    v17 = OUTLINED_FUNCTION_1020();
    v18 = type metadata accessor for Searchfoundation_Color(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC368, &qword_1B96B9680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_571_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasInfoCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_InfoCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearInfoCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC368, &qword_1B96B9680);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_InfoCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.collectionCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_CollectionCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CA448 != -1)
    {
      OUTLINED_FUNCTION_1087(&qword_1ED9CA448);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC370, &qword_1B96B9688);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.collectionCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC370, &qword_1B96B9688);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_570_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CollectionCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.collectionCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_CollectionCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CA448 != -1)
    {
      OUTLINED_FUNCTION_1087(&qword_1ED9CA448);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC370, &qword_1B96B9688);
    }
  }

  else
  {
    OUTLINED_FUNCTION_570_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasCollectionCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_CollectionCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearCollectionCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC370, &qword_1B96B9688);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_CollectionCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.combinedCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Searchfoundation_CombinedCardSection(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    Searchfoundation_CombinedCardSection.init()();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC378, &qword_1B96B9690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.combinedCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC378, &qword_1B96B9690);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_569_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CombinedCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.combinedCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_CombinedCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v13)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1215(v14);
    v15 = OUTLINED_FUNCTION_915();
    v16 = type metadata accessor for Searchfoundation_Color(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBACC378, &qword_1B96B9690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_569_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasCombinedCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_CombinedCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearCombinedCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC378, &qword_1B96B9690);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_CombinedCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.responseWrapperCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    *a1 = xmmword_1B9652FE0;
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_307_0(v9);
    v11 = OUTLINED_FUNCTION_245_2();
    type metadata accessor for Searchfoundation_CATModel(v11);
    v12 = OUTLINED_FUNCTION_162_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_1175();
    v17 = type metadata accessor for Searchfoundation_PatternModel(v16);
    result = OUTLINED_FUNCTION_11_31(v17);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC380, &qword_1B96B9698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.responseWrapperCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC380, &qword_1B96B9698);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_568_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.responseWrapperCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = xmmword_1B9652FE0;
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_280_0(v14);
    v16 = OUTLINED_FUNCTION_233_0();
    type metadata accessor for Searchfoundation_CATModel(v16);
    v17 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_846_0();
    v22 = type metadata accessor for Searchfoundation_PatternModel(v21);
    OUTLINED_FUNCTION_6_19(v22);
    if (!v15)
    {
      sub_1B8D9207C(v0, &unk_1EBACC380, &qword_1B96B9698);
    }
  }

  else
  {
    OUTLINED_FUNCTION_568_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasResponseWrapperCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearResponseWrapperCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC380, &qword_1B96B9698);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.listenToCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_ListenToCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8150 != -1)
    {
      OUTLINED_FUNCTION_1084(&qword_1EBAB8150);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC388, &qword_1B96B96A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.listenToCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC388, &qword_1B96B96A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_567_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ListenToCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.listenToCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_ListenToCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8150 != -1)
    {
      OUTLINED_FUNCTION_1084(&qword_1EBAB8150);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC388, &qword_1B96B96A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_567_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasListenToCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ListenToCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearListenToCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC388, &qword_1B96B96A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ListenToCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.watchNowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8160 != -1)
    {
      OUTLINED_FUNCTION_1083(&qword_1EBAB8160);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC390, &qword_1B96B96A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.watchNowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC390, &qword_1B96B96A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_566_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.watchNowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_WatchNowCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8160 != -1)
    {
      OUTLINED_FUNCTION_1083(&qword_1EBAB8160);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC390, &qword_1B96B96A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_566_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasWatchNowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearWatchNowCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC390, &qword_1B96B96A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_WatchNowCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.strokeAnimationCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_StrokeAnimationCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC398, &qword_1B96B96B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.strokeAnimationCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC398, &qword_1B96B96B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_565_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.strokeAnimationCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_StrokeAnimationCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    v10[10] = 0;
    v10[11] = v15;
    v10[12] = v16;
    v10[13] = v16;
    v10[14] = v16;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = type metadata accessor for Searchfoundation_Color(0);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC398, &qword_1B96B96B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_565_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasStrokeAnimationCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearStrokeAnimationCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC398, &qword_1B96B96B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_StrokeAnimationCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.buttonListCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_ButtonListCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC3A0, &qword_1B96B96B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.buttonListCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3A0, &qword_1B96B96B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_564_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_ButtonListCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1140(MEMORY[0x1E69E7CC0]);
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  *(a1 + 96) = v3;
  *(a1 + 104) = 0;
  *(a1 + 112) = v2;
  type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_CardSectionValue.buttonListCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_ButtonListCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    v10[10] = 0;
    v10[11] = v15;
    v10[12] = v16;
    v10[13] = 0;
    v10[14] = v15;
    OUTLINED_FUNCTION_1245(v17);
    v18 = OUTLINED_FUNCTION_1052();
    v19 = type metadata accessor for Searchfoundation_Color(v18);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC3A0, &qword_1B96B96B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_564_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasButtonListCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearButtonListCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3A0, &qword_1B96B96B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.commandRowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F48 != -1)
    {
      OUTLINED_FUNCTION_1082(&qword_1EBAB7F48);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3A8, &qword_1B96B96C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.commandRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3A8, &qword_1B96B96C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_563_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.commandRowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_CommandRowCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F48 != -1)
    {
      OUTLINED_FUNCTION_1082(&qword_1EBAB7F48);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC3A8, &qword_1B96B96C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_563_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasCommandRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearCommandRowCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3A8, &qword_1B96B96C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_CommandRowCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.leadingTrailingCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_LeadingTrailingCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3B0, &qword_1B96B96C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.leadingTrailingCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3B0, &qword_1B96B96C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_562_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_LeadingTrailingCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1140(MEMORY[0x1E69E7CC0]);
  *(a1 + 72) = 1;
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  v3 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  OUTLINED_FUNCTION_1325(v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_696_0(v4);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Searchfoundation_CardSectionValue.leadingTrailingCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_LeadingTrailingCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_37_12(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = v15;
    *(v10 + 88) = v15;
    OUTLINED_FUNCTION_1244(v16);
    v17 = OUTLINED_FUNCTION_1020();
    type metadata accessor for Searchfoundation_Color(v17);
    v18 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_1052();
    v23 = type metadata accessor for Searchfoundation_GraphicalFloat(v22);
    OUTLINED_FUNCTION_6_19(v23);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC3B0, &qword_1B96B96C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_562_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasLeadingTrailingCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearLeadingTrailingCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3B0, &qword_1B96B96C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.heroTitleCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F10 != -1)
    {
      OUTLINED_FUNCTION_1081(&qword_1EBAB7F10);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC3B8, &qword_1B96B96D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.heroTitleCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3B8, &qword_1B96B96D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_561_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.heroTitleCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_HeroTitleCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F10 != -1)
    {
      OUTLINED_FUNCTION_1081(&qword_1EBAB7F10);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBACC3B8, &qword_1B96B96D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_561_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasHeroTitleCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearHeroTitleCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3B8, &qword_1B96B96D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_HeroTitleCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.archiveViewCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_ArchiveViewCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3C0, &qword_1B96B96D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.archiveViewCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3C0, &qword_1B96B96D8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_560_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.archiveViewCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_ArchiveViewCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    *(v10 + 80) = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_1224(v15);
    v16 = OUTLINED_FUNCTION_915();
    v17 = type metadata accessor for Searchfoundation_Color(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC3C0, &qword_1B96B96D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_560_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasArchiveViewCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearArchiveViewCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3C0, &qword_1B96B96D8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_ArchiveViewCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.appIconCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_AppIconCardSection.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC3C8, &qword_1B96B96E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.appIconCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3C8, &qword_1B96B96E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_559_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AppIconCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_AppIconCardSection.init()@<X0>(uint64_t a1@<X8>)
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
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  v1 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  OUTLINED_FUNCTION_1325(v1);
  type metadata accessor for Searchfoundation_Color(0);
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_CardSectionValue.appIconCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_AppIconCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_57_14(MEMORY[0x1E69E7CC0]);
    v10[10] = 0;
    v10[11] = v15;
    v10[12] = 0;
    v10[13] = v15;
    OUTLINED_FUNCTION_1244(v16);
    v17 = OUTLINED_FUNCTION_1020();
    v18 = type metadata accessor for Searchfoundation_Color(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC3C8, &qword_1B96B96E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_559_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasAppIconCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearAppIconCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3C8, &qword_1B96B96E0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.largeTitleDetailedRowCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F60 != -1)
    {
      OUTLINED_FUNCTION_1080(&qword_1EBAB7F60);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3D0, &qword_1B96B96E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.largeTitleDetailedRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D0, &qword_1B96B96E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_558_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.largeTitleDetailedRowCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7F60 != -1)
    {
      OUTLINED_FUNCTION_1080(&qword_1EBAB7F60);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC3D0, &qword_1B96B96E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_558_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasLargeTitleDetailedRowCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearLargeTitleDetailedRowCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D0, &qword_1B96B96E8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.safariTableOfContentsCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_1353();
    *(a1 + 16) = 0;
    v10 = MEMORY[0x1E69E7CC0];
    *(a1 + 24) = v1;
    *(a1 + 32) = v10;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0xE000000000000000;
    OUTLINED_FUNCTION_762(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBACC3D8, &qword_1B96B96F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.safariTableOfContentsCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D8, &qword_1B96B96F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_557_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.safariTableOfContentsCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v15)
  {
    OUTLINED_FUNCTION_1213();
    *(v11 + 16) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v11 + 24) = v0;
    *(v11 + 32) = v16;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0xE000000000000000;
    OUTLINED_FUNCTION_610_1(v17);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBACC3D8, &qword_1B96B96F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_557_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasSafariTableOfContentsCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearSafariTableOfContentsCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3D8, &qword_1B96B96F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemShortNumberCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    v11 = type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B96F8 + a1);
    v12 = OUTLINED_FUNCTION_240_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = OUTLINED_FUNCTION_246_4(dword_1EBACC40C);
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    v18 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
    result = OUTLINED_FUNCTION_11_31(v18);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC3E0, &qword_1B96B96F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemShortNumberCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3E0, &qword_1B96B96F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_556_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemShortNumberCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v16 = OUTLINED_FUNCTION_914();
    v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_64_6(&unk_1EBACC3E0 + v11);
    v18 = OUTLINED_FUNCTION_241_4();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = OUTLINED_FUNCTION_245_4(*(v0 + 44));
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
    v24 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_6_19(v24);
    if (!v15)
    {
      sub_1B8D9207C(v1, &unk_1EBACC3E0, &qword_1B96B96F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_556_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemShortNumberCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemShortNumberCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC3E0, &qword_1B96B96F8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemTextCardSection.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_283_3(v9);
    v11 = OUTLINED_FUNCTION_945();
    type metadata accessor for Searchfoundation_RFTextProperty(v11);
    OUTLINED_FUNCTION_82_6(&qword_1B96B9700 + a1);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC40C);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3E8, &qword_1B96B9700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemTextCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3E8, &qword_1B96B9700);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_555_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemTextCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_282_2(v15);
    v17 = OUTLINED_FUNCTION_944();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_81_9(&qword_1EBACC3E8 + v11);
    v19 = OUTLINED_FUNCTION_245_4(*(v0 + 36));
    OUTLINED_FUNCTION_38_11(v19, v20, v21, v18);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBACC3E8, &qword_1B96B9700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_555_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemTextCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemTextCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3E8, &qword_1B96B9700);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemStandardCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_1384(MEMORY[0x1E69E7CC0]);
    v10 = dword_1EBACC410;
    type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_131_8(a1 + v10);
    v11 = OUTLINED_FUNCTION_1078();
    v12 = type metadata accessor for Searchfoundation_RFVisualProperty(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3F0, &qword_1B96B9708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemStandardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F0, &qword_1B96B9708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_554_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemStandardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_1383(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_1349();
    type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_127_4(&qword_1EBACC3F0 + v10);
    v16 = OUTLINED_FUNCTION_929();
    v17 = type metadata accessor for Searchfoundation_RFVisualProperty(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC3F0, &qword_1B96B9708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_554_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemStandardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemStandardCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F0, &qword_1B96B9708);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemShortNumberCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B9710 + a1);
    v11 = OUTLINED_FUNCTION_240_3();
    v14 = OUTLINED_FUNCTION_1214(v11, v12, v13);
    result = OUTLINED_FUNCTION_11_31(v14);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC3F8, &qword_1B96B9710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemShortNumberCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F8, &qword_1B96B9710);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_553_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemShortNumberCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_914();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_64_6(&qword_1EBACC3F8 + v10);
    v17 = OUTLINED_FUNCTION_241_4();
    v20 = OUTLINED_FUNCTION_1193(v17, v18, v19, v16);
    v21 = type metadata accessor for Searchfoundation_RFVisualProperty(v20);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC3F8, &qword_1B96B9710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_553_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemShortNumberCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemShortNumberCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F8, &qword_1B96B9710);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemStandardCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B9718 + a1);
    v11 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_268_2(v11);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC42C);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC400, &qword_1B96B9718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemStandardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC400, &qword_1B96B9718);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_552_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemStandardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v16 = OUTLINED_FUNCTION_914();
    v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_64_6(&qword_1EBACC400 + v11);
    v18 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_264_3(v18);
    v19 = OUTLINED_FUNCTION_245_4(*(v0 + 44));
    OUTLINED_FUNCTION_38_11(v19, v20, v21, v17);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBACC400, &qword_1B96B9718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_552_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemStandardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemStandardCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC400, &qword_1B96B9718);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfLongItemStandardCardSection.getter@<X0>(_WORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_307_0(v9);
    v11 = OUTLINED_FUNCTION_245_2();
    v12 = type metadata accessor for Searchfoundation_RFTextProperty(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC408, &qword_1B96B9720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfLongItemStandardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC408, &qword_1B96B9720);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_551_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfLongItemStandardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = 0;
    OUTLINED_FUNCTION_280_0(v14);
    v16 = OUTLINED_FUNCTION_233_0();
    v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v0, &unk_1EBACC408, &qword_1B96B9720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_551_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfLongItemStandardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfLongItemStandardCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC408, &qword_1B96B9720);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfPrimaryHeaderRichCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    OUTLINED_FUNCTION_926(v9);
    v11 = OUTLINED_FUNCTION_945();
    v12 = type metadata accessor for Searchfoundation_RFTextProperty(v11);
    OUTLINED_FUNCTION_268_2(v12);
    OUTLINED_FUNCTION_65_9(a1 + dword_1EBACC42C);
    v13 = OUTLINED_FUNCTION_1078();
    v14 = type metadata accessor for Searchfoundation_RFVisualProperty(v13);
    result = OUTLINED_FUNCTION_11_31(v14);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &dword_1EBACC410, &qword_1B96B9728);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfPrimaryHeaderRichCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC410, &qword_1B96B9728);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_550_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfPrimaryHeaderRichCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_925(v15);
    v17 = OUTLINED_FUNCTION_944();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_264_3(v18);
    OUTLINED_FUNCTION_64_6(v11 + *(v0 + 28));
    v19 = OUTLINED_FUNCTION_929();
    v20 = type metadata accessor for Searchfoundation_RFVisualProperty(v19);
    OUTLINED_FUNCTION_6_19(v20);
    if (!v16)
    {
      sub_1B8D9207C(v1, &dword_1EBACC410, &qword_1B96B9728);
    }
  }

  else
  {
    OUTLINED_FUNCTION_550_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfPrimaryHeaderRichCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfPrimaryHeaderRichCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC410, &qword_1B96B9728);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfPrimaryHeaderStandardCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  v7 = OUTLINED_FUNCTION_60_11(v6);
  if (v8)
  {
    OUTLINED_FUNCTION_926(v7);
    v9 = OUTLINED_FUNCTION_945();
    v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
    OUTLINED_FUNCTION_122_4(v10);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC438);
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC418, &unk_1B96B9730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfPrimaryHeaderStandardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC418, &unk_1B96B9730);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_549_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfPrimaryHeaderStandardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_925(v15);
    v17 = OUTLINED_FUNCTION_944();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_121_4(v18);
    v19 = OUTLINED_FUNCTION_245_4(*(v1 + 32));
    OUTLINED_FUNCTION_38_11(v19, v20, v21, v0);
    if (!v16)
    {
      sub_1B8D9207C(v2, &qword_1EBACC418, &unk_1B96B9730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_549_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfPrimaryHeaderStandardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfPrimaryHeaderStandardCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC418, &unk_1B96B9730);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfReferenceFootnoteCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    OUTLINED_FUNCTION_926(v9);
    v11 = OUTLINED_FUNCTION_945();
    type metadata accessor for Searchfoundation_RFTextProperty(v11);
    OUTLINED_FUNCTION_82_6(&unk_1B96D9370 + a1);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC444);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC420, &unk_1B96D9370);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfReferenceFootnoteCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC420, &unk_1B96D9370);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_548_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfReferenceFootnoteCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_925(v15);
    v17 = OUTLINED_FUNCTION_944();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_81_9(&qword_1EBACC420 + v11);
    v19 = OUTLINED_FUNCTION_245_4(*(v0 + 36));
    OUTLINED_FUNCTION_38_11(v19, v20, v21, v18);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBACC420, &unk_1B96D9370);
    }
  }

  else
  {
    OUTLINED_FUNCTION_548_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfReferenceFootnoteCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfReferenceFootnoteCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC420, &unk_1B96D9370);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfReferenceRichCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  v7 = OUTLINED_FUNCTION_60_11(v6);
  if (v8)
  {
    OUTLINED_FUNCTION_926(v7);
    v9 = OUTLINED_FUNCTION_945();
    v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
    OUTLINED_FUNCTION_122_4(v10);
    v11 = OUTLINED_FUNCTION_1175();
    v12 = type metadata accessor for Searchfoundation_RFVisualProperty(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v8)
    {
      return sub_1B8D9207C(v0, &dword_1EBACC428, &unk_1B96B9740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfReferenceRichCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC428, &unk_1B96B9740);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_547_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfReferenceRichCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFReferenceRichCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_925(v13);
    v15 = OUTLINED_FUNCTION_944();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_121_4(v16);
    v17 = OUTLINED_FUNCTION_846_0();
    v18 = type metadata accessor for Searchfoundation_RFVisualProperty(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &dword_1EBACC428, &unk_1B96B9740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_547_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfReferenceRichCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfReferenceRichCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC428, &unk_1B96B9740);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFReferenceRichCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSimpleItemRichCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    v11 = type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&unk_1B96DFD00 + a1);
    v12 = OUTLINED_FUNCTION_240_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = OUTLINED_FUNCTION_246_4(dword_1EBACC45C);
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    v18 = OUTLINED_FUNCTION_246_4(dword_1EBACC460);
    v21 = OUTLINED_FUNCTION_1331(v18, v19, v20);
    result = OUTLINED_FUNCTION_11_31(v21);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC430, &unk_1B96DFD00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSimpleItemRichCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC430, &unk_1B96DFD00);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_546_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSimpleItemRichCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v16 = OUTLINED_FUNCTION_914();
    v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_64_6(&qword_1EBACC430 + v11);
    v18 = OUTLINED_FUNCTION_241_4();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = OUTLINED_FUNCTION_245_4(*(v0 + 44));
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
    v24 = OUTLINED_FUNCTION_245_4(*(v0 + 48));
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v17);
    v27 = OUTLINED_FUNCTION_1097();
    v28 = type metadata accessor for Searchfoundation_RFVisualProperty(v27);
    OUTLINED_FUNCTION_6_19(v28);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBACC430, &unk_1B96DFD00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_546_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSimpleItemRichCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSimpleItemRichCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC430, &unk_1B96DFD00);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSimpleItemStandardCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B9750 + a1);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC460);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &dword_1EBACC438, &qword_1B96B9750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSimpleItemStandardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC438, &qword_1B96B9750);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_545_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSimpleItemStandardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_914();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_64_6(&dword_1EBACC438 + v10);
    v17 = OUTLINED_FUNCTION_241_4();
    OUTLINED_FUNCTION_38_11(v17, v18, v19, v16);
    if (!v14)
    {
      sub_1B8D9207C(v0, &dword_1EBACC438, &qword_1B96B9750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_545_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSimpleItemStandardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSimpleItemStandardCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC438, &qword_1B96B9750);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemAlignedTextCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B9758 + a1);
    v11 = OUTLINED_FUNCTION_240_3();
    v14 = OUTLINED_FUNCTION_1214(v11, v12, v13);
    result = OUTLINED_FUNCTION_11_31(v14);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC440, &qword_1B96B9758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemAlignedTextCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC440, &qword_1B96B9758);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_544_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemAlignedTextCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_914();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_64_6(&unk_1EBACC440 + v10);
    v17 = OUTLINED_FUNCTION_241_4();
    v20 = OUTLINED_FUNCTION_1193(v17, v18, v19, v16);
    v21 = type metadata accessor for Searchfoundation_RFVisualProperty(v20);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC440, &qword_1B96B9758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_544_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemAlignedTextCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemAlignedTextCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC440, &qword_1B96B9758);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfExpandableStandardCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    v10 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
    v11 = OUTLINED_FUNCTION_274_1(v10);
    *(a1 + dword_1EBACC45C) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_251_0(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC448, &qword_1B96B9760);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfExpandableStandardCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC448, &qword_1B96B9760);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_543_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfExpandableStandardCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
    OUTLINED_FUNCTION_533_0();
    OUTLINED_FUNCTION_83();
    v20 = __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    *(v11 + *(v0 + 20)) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_280_0(v20);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBACC448, &qword_1B96B9760);
    }
  }

  else
  {
    OUTLINED_FUNCTION_543_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfExpandableStandardCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfExpandableStandardCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC448, &qword_1B96B9760);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemButtonCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB42F8 != -1)
    {
      OUTLINED_FUNCTION_1075(&qword_1EBAB42F8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC450, &qword_1B96B9768);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemButtonCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC450, &qword_1B96B9768);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_542_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemButtonCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB42F8 != -1)
    {
      OUTLINED_FUNCTION_1075(&qword_1EBAB42F8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC450, &qword_1B96B9768);
    }
  }

  else
  {
    OUTLINED_FUNCTION_542_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemButtonCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemButtonCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC450, &qword_1B96B9768);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemHeroNumberCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B9770 + a1);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC480);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC458, &qword_1B96B9770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemHeroNumberCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC458, &qword_1B96B9770);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_541_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemHeroNumberCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_914();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_64_6(&unk_1EBACC458 + v10);
    v17 = OUTLINED_FUNCTION_241_4();
    OUTLINED_FUNCTION_38_11(v17, v18, v19, v16);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC458, &qword_1B96B9770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_541_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemHeroNumberCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemHeroNumberCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC458, &qword_1B96B9770);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfPrimaryHeaderMarqueeCardSection.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  v7 = OUTLINED_FUNCTION_60_11(v6);
  if (v8)
  {
    OUTLINED_FUNCTION_926(v7);
    v9 = OUTLINED_FUNCTION_945();
    v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
    OUTLINED_FUNCTION_122_4(v10);
    v11 = OUTLINED_FUNCTION_1175();
    v12 = type metadata accessor for Searchfoundation_RFVisualProperty(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v8)
    {
      return sub_1B8D9207C(v0, &dword_1EBACC460, &qword_1B96B9778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfPrimaryHeaderMarqueeCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC460, &qword_1B96B9778);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_540_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfPrimaryHeaderMarqueeCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_39_13(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_925(v13);
    v15 = OUTLINED_FUNCTION_944();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_121_4(v16);
    v17 = OUTLINED_FUNCTION_846_0();
    v18 = type metadata accessor for Searchfoundation_RFVisualProperty(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v14)
    {
      sub_1B8D9207C(v0, &dword_1EBACC460, &qword_1B96B9778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_540_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfPrimaryHeaderMarqueeCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfPrimaryHeaderMarqueeCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC460, &qword_1B96B9778);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemDetailedTextCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v9 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  OUTLINED_FUNCTION_60_11(v9);
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = OUTLINED_FUNCTION_1221();
    v12 = type metadata accessor for Searchfoundation_RFTextProperty(v11);
    OUTLINED_FUNCTION_268_2(v12);
    v13 = OUTLINED_FUNCTION_246_4(dword_1EBACC480);
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
    OUTLINED_FUNCTION_65_9(a1 + dword_1EBACC484);
    v16 = OUTLINED_FUNCTION_240_3();
    v19 = OUTLINED_FUNCTION_1214(v16, v17, v18);
    result = OUTLINED_FUNCTION_11_31(v19);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC468, &qword_1B96B9780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemDetailedTextCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC468, &qword_1B96B9780);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_539_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemDetailedTextCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_39_13(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_1218();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_264_3(v18);
    v19 = OUTLINED_FUNCTION_245_4(*(v1 + 24));
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v0);
    OUTLINED_FUNCTION_64_6(v12 + *(v1 + 28));
    v22 = OUTLINED_FUNCTION_241_4();
    v25 = OUTLINED_FUNCTION_1193(v22, v23, v24, v0);
    v26 = type metadata accessor for Searchfoundation_RFVisualProperty(v25);
    OUTLINED_FUNCTION_6_19(v26);
    if (!v16)
    {
      sub_1B8D9207C(v2, &qword_1EBACC468, &qword_1B96B9780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_539_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemDetailedTextCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemDetailedTextCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC468, &qword_1B96B9780);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSimpleItemPlayerCardSection.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_283_3(v9);
    v11 = OUTLINED_FUNCTION_945();
    type metadata accessor for Searchfoundation_RFTextProperty(v11);
    OUTLINED_FUNCTION_82_6(&qword_1B96B9788 + a1);
    v12 = OUTLINED_FUNCTION_1049();
    v13 = type metadata accessor for Searchfoundation_ButtonItem(v12);
    result = OUTLINED_FUNCTION_11_31(v13);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC470, &qword_1B96B9788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSimpleItemPlayerCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC470, &qword_1B96B9788);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_538_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.init()()
{
  v2 = OUTLINED_FUNCTION_208_2(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v2);
  OUTLINED_FUNCTION_200_3(v3);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_338_1(*(v1 + 28));
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_338_1(*(v1 + 32));
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_523_1();
  type metadata accessor for Searchfoundation_ButtonItem(v16);
  v17 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void Searchfoundation_CardSectionValue.rfSimpleItemPlayerCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_282_2(v14);
    v16 = OUTLINED_FUNCTION_944();
    type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_81_9(&qword_1EBACC470 + v10);
    v17 = OUTLINED_FUNCTION_817_0();
    v18 = type metadata accessor for Searchfoundation_ButtonItem(v17);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC470, &qword_1B96B9788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_538_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSimpleItemPlayerCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSimpleItemPlayerCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC470, &qword_1B96B9788);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemPairCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8938 != -1)
    {
      OUTLINED_FUNCTION_1074(&qword_1EBAB8938);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC478, &qword_1B96B9790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemPairCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC478, &qword_1B96B9790);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_537_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemPairCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB8938 != -1)
    {
      OUTLINED_FUNCTION_1074(&qword_1EBAB8938);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC478, &qword_1B96B9790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_537_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemPairCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemPairCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC478, &qword_1B96B9790);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemPairNumberCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB82C8 != -1)
    {
      OUTLINED_FUNCTION_1073(&qword_1EBAB82C8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &dword_1EBACC480, &qword_1B96B9798);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemPairNumberCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC480, &qword_1B96B9798);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_536_2();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemPairNumberCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB82C8 != -1)
    {
      OUTLINED_FUNCTION_1073(&qword_1EBAB82C8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &dword_1EBACC480, &qword_1B96B9798);
    }
  }

  else
  {
    OUTLINED_FUNCTION_536_2();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemPairNumberCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemPairNumberCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC480, &qword_1B96B9798);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemShortHeroNumberCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_896(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_946();
    type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_65_9(&qword_1B96B97A0 + a1);
    v11 = OUTLINED_FUNCTION_240_3();
    v14 = OUTLINED_FUNCTION_1214(v11, v12, v13);
    result = OUTLINED_FUNCTION_11_31(v14);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC488, &qword_1B96B97A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemShortHeroNumberCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC488, &qword_1B96B97A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_535_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemShortHeroNumberCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_13(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_895(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_914();
    v16 = type metadata accessor for Searchfoundation_RFTextProperty(v15);
    OUTLINED_FUNCTION_64_6(&unk_1EBACC488 + v10);
    v17 = OUTLINED_FUNCTION_241_4();
    v20 = OUTLINED_FUNCTION_1193(v17, v18, v19, v16);
    v21 = type metadata accessor for Searchfoundation_RFVisualProperty(v20);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBACC488, &qword_1B96B97A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_535_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemShortHeroNumberCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemShortHeroNumberCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC488, &qword_1B96B97A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemDetailedNumberCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = OUTLINED_FUNCTION_1221();
    v11 = type metadata accessor for Searchfoundation_RFTextProperty(v10);
    OUTLINED_FUNCTION_268_2(v11);
    OUTLINED_FUNCTION_82_6(a1 + dword_1EBACC4A8);
    type metadata accessor for Searchfoundation_RFVisualProperty(0);
    v12 = OUTLINED_FUNCTION_371_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    result = OUTLINED_FUNCTION_54_11(dword_1EBACC4B8);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBACC490, &qword_1B96B97A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemDetailedNumberCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC490, &qword_1B96B97A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_534_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemDetailedNumberCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_39_13(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_1218();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_264_3(v18);
    OUTLINED_FUNCTION_81_9(v12 + *(v1 + 24));
    v19 = OUTLINED_FUNCTION_1180();
    type metadata accessor for Searchfoundation_RFVisualProperty(v19);
    v20 = OUTLINED_FUNCTION_267_1();
    v24 = OUTLINED_FUNCTION_220_5(v20, v21, v22, v23);
    OUTLINED_FUNCTION_38_11(v24, v25, v26, v0);
    if (!v16)
    {
      sub_1B8D9207C(v2, &unk_1EBACC490, &qword_1B96B97A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_534_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemDetailedNumberCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemDetailedNumberCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC490, &qword_1B96B97A8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemHeroButtonCardSection.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v7 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  OUTLINED_FUNCTION_60_11(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = OUTLINED_FUNCTION_1221();
    v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
    OUTLINED_FUNCTION_268_2(v10);
    v11 = OUTLINED_FUNCTION_246_4(dword_1EBACC4B0);
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
    v14 = OUTLINED_FUNCTION_245_2();
    v15 = type metadata accessor for Searchfoundation_ButtonItem(v14);
    result = OUTLINED_FUNCTION_11_31(v15);
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC498, &qword_1B96B97B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemHeroButtonCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC498, &qword_1B96B97B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_533_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemHeroButtonCardSection.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  v3 = OUTLINED_FUNCTION_156_4();
  type metadata accessor for Searchfoundation_RFTextProperty(v3);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_338_1(*(v2 + 24));
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v12 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Searchfoundation_CardSectionValue.rfFactItemHeroButtonCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_1218();
    v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_264_3(v17);
    v18 = OUTLINED_FUNCTION_245_4(*(v1 + 24));
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v0);
    v21 = OUTLINED_FUNCTION_233_0();
    v22 = type metadata accessor for Searchfoundation_ButtonItem(v21);
    OUTLINED_FUNCTION_6_19(v22);
    if (!v15)
    {
      sub_1B8D9207C(v2, &qword_1EBACC498, &qword_1B96B97B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_533_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemHeroButtonCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemHeroButtonCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC498, &qword_1B96B97B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemImageRightCardSection.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v6);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v7 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  OUTLINED_FUNCTION_60_11(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = OUTLINED_FUNCTION_1221();
    v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
    OUTLINED_FUNCTION_268_2(v10);
    v11 = OUTLINED_FUNCTION_246_4(dword_1EBACC4B8);
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
    v14 = OUTLINED_FUNCTION_245_2();
    v15 = type metadata accessor for Searchfoundation_RFVisualProperty(v14);
    result = OUTLINED_FUNCTION_11_31(v15);
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC4A0, &qword_1B96B97B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfFactItemImageRightCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4A0, &qword_1B96B97B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_532_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfFactItemImageRightCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v10);
  OUTLINED_FUNCTION_135_0();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_1218();
    v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
    OUTLINED_FUNCTION_264_3(v17);
    v18 = OUTLINED_FUNCTION_245_4(*(v1 + 24));
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v0);
    v21 = OUTLINED_FUNCTION_233_0();
    v22 = type metadata accessor for Searchfoundation_RFVisualProperty(v21);
    OUTLINED_FUNCTION_6_19(v22);
    if (!v15)
    {
      sub_1B8D9207C(v2, &qword_1EBACC4A0, &qword_1B96B97B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_532_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfFactItemImageRightCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfFactItemImageRightCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC4A0, &qword_1B96B97B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemSwitchV2CardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_225_6(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  v9 = OUTLINED_FUNCTION_60_11(v8);
  if (v10)
  {
    OUTLINED_FUNCTION_926(v9);
    v11 = OUTLINED_FUNCTION_945();
    v12 = type metadata accessor for Searchfoundation_RFTextProperty(v11);
    OUTLINED_FUNCTION_268_2(v12);
    OUTLINED_FUNCTION_65_9(a1 + dword_1EBACC4C4);
    v13 = OUTLINED_FUNCTION_1078();
    v14 = type metadata accessor for Searchfoundation_RFVisualProperty(v13);
    result = OUTLINED_FUNCTION_11_31(v14);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &dword_1EBACC4A8, &qword_1B96B97C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfSummaryItemSwitchV2CardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4A8, &qword_1B96B97C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_531_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfSummaryItemSwitchV2CardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_925(v15);
    v17 = OUTLINED_FUNCTION_944();
    v18 = type metadata accessor for Searchfoundation_RFTextProperty(v17);
    OUTLINED_FUNCTION_264_3(v18);
    OUTLINED_FUNCTION_64_6(v11 + *(v0 + 28));
    v19 = OUTLINED_FUNCTION_929();
    v20 = type metadata accessor for Searchfoundation_RFVisualProperty(v19);
    OUTLINED_FUNCTION_6_19(v20);
    if (!v16)
    {
      sub_1B8D9207C(v1, &dword_1EBACC4A8, &qword_1B96B97C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_531_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfSummaryItemSwitchV2CardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfSummaryItemSwitchV2CardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4A8, &qword_1B96B97C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfTableHeaderCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = v10;
    *(a1 + 16) = v10;
    *(a1 + 24) = 0;
    *(a1 + 32) = v1;
    *(a1 + 40) = 0;
    *(a1 + 48) = v1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &dword_1EBACC4B0, &qword_1B96B97C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfTableHeaderCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B0, &qword_1B96B97C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_530_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_CardSectionValue.rfTableHeaderCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_13(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    *(v11 + 8) = v16;
    *(v11 + 16) = v16;
    *(v11 + 24) = 0;
    *(v11 + 32) = v0;
    *(v11 + 40) = 0;
    *(v11 + 48) = v0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &dword_1EBACC4B0, &qword_1B96B97C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_530_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CardSectionValue.hasRfTableHeaderCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_CardSectionValue.clearRfTableHeaderCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B0, &qword_1B96B97C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_741_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  v5 = type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0);
  OUTLINED_FUNCTION_274_1(v5);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CardSectionValue.rfTableRowCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_225_6(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  OUTLINED_FUNCTION_199_2();
  v9 = OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    *(a1 + 16) = v1;
    *(a1 + 24) = v11;
    OUTLINED_FUNCTION_762(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v2, &dword_1EBACC4B8, &qword_1B96B97D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CardSectionValue.rfTableRowCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC4B8, &qword_1B96B97D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_742_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_424_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B937BD18(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_529_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTableRowCardSection(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}