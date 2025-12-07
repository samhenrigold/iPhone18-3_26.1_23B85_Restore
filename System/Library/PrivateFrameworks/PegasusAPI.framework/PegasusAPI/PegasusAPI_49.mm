void Apple_Parsec_Siri_V2alpha_VideoResult.object.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 48) = v0;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v8);
  *(v1 + 64) = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0);
  OUTLINED_FUNCTION_66_1(v9);
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_242();
}

void sub_1B91BF598(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_303();
    sub_1B8F1B8B8();
    Apple_Parsec_Siri_V2alpha_VideoResult.object.setter();
    v5 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v5, v6, &qword_1B96A2828);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v2 + 72);
      v8 = *(v2 + 48);
      type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      *(v8 + v7) = sub_1B91CAA80(v9);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8F188B0();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.movie.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
    return Apple_Parsec_Siri_V2alpha_MovieResult.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    return Apple_Parsec_Siri_V2alpha_MovieResult.init()(a1);
  }

  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_182();
  return sub_1B91C6E08();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  *(v1 + 64) = v3;
  *(v1 + 72) = 0;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 96) = v3;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.movie.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_48_9();
      OUTLINED_FUNCTION_177_1();
      sub_1B91C6E08();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  OUTLINED_FUNCTION_77_2();
  v14 = MEMORY[0x1E69E7CC0];
  v11[4] = MEMORY[0x1E69E7CC0];
  v11[5] = 0;
  v11[6] = v14;
  v11[7] = 0;
  v11[8] = v15;
  v11[9] = 0;
  v11[10] = v15;
  v11[11] = 0;
  v11[12] = v15;
  *(v11 + 26) = 0;
  *(v11 + 108) = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.tvShow.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_42();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  return Apple_Parsec_Siri_V2alpha_TvShowResult.init()(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = v3;
  *(v1 + 104) = 0;
  *(v1 + 112) = v3;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.tvShow.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v14 = MEMORY[0x1E69E7CC0];
    v11[4] = MEMORY[0x1E69E7CC0];
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = v14;
    v11[8] = 0;
    v11[9] = v15;
    *(v11 + 20) = 0;
    v11[11] = 0;
    v11[12] = v15;
    v11[13] = 0;
    v11[14] = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.tvSeason.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_171_3(v9);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v10 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  OUTLINED_FUNCTION_171_3(v2);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_VideoResult.tvSeason.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v14 = MEMORY[0x1E69E7CC0];
    v11[4] = 0;
    v11[5] = v14;
    v11[6] = 0;
    v11[7] = v15;
    v11[8] = 0;
    v11[9] = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_111_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.tvEpisode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0) + 20);
  if (qword_1EBAB78C8 != -1)
  {
    OUTLINED_FUNCTION_133_6(&qword_1EBAB78C8);
  }

  *(a1 + v11) = qword_1EBAC7CD8;
}

uint64_t sub_1B91C0128@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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

void Apple_Parsec_Siri_V2alpha_VideoResult.tvEpisode.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_177_1();
      sub_1B91C6E08();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB78C8 != -1)
  {
    OUTLINED_FUNCTION_133_6(&qword_1EBAB78C8);
  }

  *&v12[v15] = qword_1EBAC7CD8;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.liveService.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_45_9();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.liveService.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v11)
  {
    v12 = sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_180_5(v12);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_0_69();
    v12 = sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_45_9();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.sportsEvent.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91C071C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.sportsEvent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v11)
  {
    v12 = sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_180_5(v12);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    OUTLINED_FUNCTION_0_69();
    v12 = sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.person.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_59_11(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_43_11();
      OUTLINED_FUNCTION_182();
      return sub_1B91C6E08();
    }

    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_184_4(v9);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v10 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_1B91C09DC()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    *(v0 + v4) = sub_1B91CAA80(v5);
  }

  sub_1B91C6E08();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  swift_storeEnumTagMultiPayload();
  v7 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  OUTLINED_FUNCTION_184_4(v2);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_VideoResult.person.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_14_22();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v11[4] = 0;
    v11[5] = v14;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_11();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E08();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.getter()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0);
  OUTLINED_FUNCTION_6_2(v0);
  v1 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v1, v2);
  return OUTLINED_FUNCTION_288();
}

void Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_11_13();
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v26);
  v28 = OUTLINED_FUNCTION_47(v27);
  v29 = *(v21 + v23);
  if ((v28 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v30 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B91CAA80(v30);
    OUTLINED_FUNCTION_135(v31);
  }

  v32 = (v29 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  OUTLINED_FUNCTION_18(v32, &a10);
  v33 = *v32;
  v34 = v32[1];
  *v32 = v22;
  v32[1] = v20;
  sub_1B8D538A0(v33, v34);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.uiMetadata.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B91C0F38(uint64_t (*a1)(void), void *a2)
{
  v2 = a1(0);
  OUTLINED_FUNCTION_6_2(v2);

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B91C0F94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoResult.entityExperienceURL.setter(v1, v2, v3, v4, v5);
}

uint64_t sub_1B91C101C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v12 = v7;
  OUTLINED_FUNCTION_16();
  v14 = *(v13(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = a5(v17);
    *(v12 + v14) = v16;
  }

  v18 = (v16 + *a6);
  OUTLINED_FUNCTION_18(v18, v20);
  *v18 = v8;
  v18[1] = v6;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.entityExperienceURL.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B91C11A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoResult.description_p.setter(v1, v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B91C1304(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoResult.machineGeneratedUtterance.setter(v1, v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.machineGeneratedUtterance.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C1440()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_191();
    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = *(v0 + 72);
    v14 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 72);
      v18 = *(v0 + 64);
      v12(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = v11(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v10);
    OUTLINED_FUNCTION_18(v20, v0 + 24);
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v21);
}

void static Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v66 = v0;
  v67 = v1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v60 = v4;
  v5 = OUTLINED_FUNCTION_201();
  v58[2] = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v63 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v58[1] = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v62 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v11);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v61 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v14);
  v16 = OUTLINED_FUNCTION_183(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21();
  v58[4] = v17;
  v18 = OUTLINED_FUNCTION_201();
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v18);
  v20 = OUTLINED_FUNCTION_183(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v58[3] = v21;
  v22 = OUTLINED_FUNCTION_201();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(v22);
  v24 = OUTLINED_FUNCTION_183(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v26);
  v65 = v58 - v27;
  OUTLINED_FUNCTION_230();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = (v58 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v64 = v58 - v32;
  OUTLINED_FUNCTION_230();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v58 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = v58 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC0, &qword_1B96A2830);
  OUTLINED_FUNCTION_183(v40);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v58 - v42;
  sub_1B91C6E5C();
  sub_1B91C6E5C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() == 1)
      {
        OUTLINED_FUNCTION_2_42();
        sub_1B91C6E08();
        static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(v37);
        sub_1B91C6EB0();
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_23_13();
      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 2)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_6_26();
      sub_1B91C6E08();
      static Apple_Parsec_Siri_V2alpha_TvSeasonResult.== infix(_:_:)();
      sub_1B91C6EB0();
      goto LABEL_37;
    case 3u:
      OUTLINED_FUNCTION_3_42();
      v46 = v64;
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 3)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_47_10();
      v47 = v61;
      sub_1B91C6E08();
      if (*&v46[*(v59 + 20)] == *(v47 + *(v59 + 20)))
      {
        goto LABEL_16;
      }

      v48 = OUTLINED_FUNCTION_543();
      v50 = sub_1B91D1D70(v48, v49);

      if (v50)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 4)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_45_9();
      v44 = v62;
      sub_1B91C6E08();
      v45 = *v31 == *v44 && v31[1] == v44[1];
      if (v45 || (sub_1B964C9F0() & 1) != 0)
      {
LABEL_16:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_58();
        sub_1B8CD2B58(v51, v52, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

LABEL_17:
      sub_1B91C6EB0();
      goto LABEL_37;
    case 5u:
      OUTLINED_FUNCTION_3_42();
      v53 = v65;
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 5)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_44_9();
      v54 = v63;
      sub_1B91C6E08();
      v55 = *v53 == *v54 && v53[1] == v54[1];
      if (v55 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_58();
        sub_1B8CD2B58(v56, v57, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_123_6();
      sub_1B91C6EB0();
      goto LABEL_37;
    case 6u:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6() != 6)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_43_11();
      sub_1B91C6E08();
      static Apple_Parsec_Siri_V2alpha_PersonResult.== infix(_:_:)();
      sub_1B91C6EB0();
      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_3_42();
      sub_1B91C6E5C();
      if (OUTLINED_FUNCTION_167_6())
      {
LABEL_33:
        sub_1B91C6EB0();
        sub_1B8D9207C(v43, &qword_1EBAC7DC0, &qword_1B96A2830);
      }

      else
      {
        OUTLINED_FUNCTION_48_9();
        sub_1B91C6E08();
        static Apple_Parsec_Siri_V2alpha_MovieResult.== infix(_:_:)(v39);
        sub_1B91C6EB0();
LABEL_37:
        sub_1B91C6EB0();
        OUTLINED_FUNCTION_0_69();
        sub_1B91C6EB0();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t static Apple_Parsec_Siri_V2alpha_MovieResult.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 32), *(v1 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 40) != *(v1 + 40))
  {
    return 0;
  }

  sub_1B8D6C98C(*(v2 + 48), *(v1 + 48));
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 72) == *(v1 + 72) && *(v2 + 80) == *(v1 + 80);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 88) == *(v1 + 88) && *(v2 + 96) == *(v1 + 96);
  if (!v12 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 104) != *(v1 + 104) || *(v2 + 108) != *(v1 + 108))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v16 = sub_1B8CD2B58(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 32), *(v1 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 40) != *(v1 + 40))
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  sub_1B8D6C98C(*(v2 + 56), *(v1 + 56));
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_157_8();
  v12 = v5 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 80) != *(v1 + 80))
  {
    return 0;
  }

  v13 = *(v2 + 88) == *(v1 + 88) && *(v2 + 96) == *(v1 + 96);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v2 + 104) == *(v1 + 104) && *(v2 + 112) == *(v1 + 112);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v17 = sub_1B8CD2B58(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v17) & 1;
}

void static Apple_Parsec_Siri_V2alpha_TvSeasonResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD0, &qword_1B96A2840);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_153_5();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_84_1();
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_32;
  }

  sub_1B8D6C98C(*(v1 + 40), *(v0 + 40));
  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_167_4();
  v18 = v11 && v16 == v17;
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_157_8();
  v21 = v11 && v19 == v20;
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v22 = *(v7 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v23 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v23, v24, v3);
  if (v11)
  {
    OUTLINED_FUNCTION_178(v2 + v22, 1, v3);
    if (v11)
    {
      sub_1B8D9207C(v2, &qword_1EBAC7DC8, &qword_1B96A2838);
LABEL_34:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_58();
      v30 = sub_1B8CD2B58(v28, v29, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v30);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v2 + v22, 1, v3);
  if (v25)
  {
    OUTLINED_FUNCTION_23_13();
    sub_1B91C6EB0();
LABEL_31:
    sub_1B8D9207C(v2, &qword_1EBAC7DD0, &qword_1B96A2840);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_2_42();
  sub_1B91C6E08();
  v26 = OUTLINED_FUNCTION_246();
  v27 = static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(v26);
  sub_1B91C6EB0();
  sub_1B91C6EB0();
  sub_1B8D9207C(v2, &qword_1EBAC7DC8, &qword_1B96A2838);
  if (v27)
  {
    goto LABEL_34;
  }

LABEL_32:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91C23B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v9 = sub_1B8CD2B58(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

void static Apple_Parsec_Siri_V2alpha_PersonResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE0, &qword_1B96A2850);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_153_5();
  v9 = v9 && v7 == v8;
  if (v9 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_84_1();
    v12 = v9 && v10 == v11;
    if (v12 || (sub_1B964C9F0() & 1) != 0)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
      v13 = *(v5 + 48);
      sub_1B8F1B8B8();
      sub_1B8F1B8B8();
      v14 = OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_178(v14, v15, v1);
      if (v9)
      {
        OUTLINED_FUNCTION_178(v0 + v13, 1, v1);
        if (v9)
        {
          sub_1B8D9207C(v0, &qword_1EBAC7DD8, &qword_1B96A2848);
LABEL_22:
          OUTLINED_FUNCTION_40_5();
          v21 = v9 && v19 == v20;
          if (v21 || (sub_1B964C9F0() & 1) != 0)
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_1_58();
            v24 = sub_1B8CD2B58(v22, v23, MEMORY[0x1E69AAC10]);
            OUTLINED_FUNCTION_634(v24);
          }

          goto LABEL_20;
        }
      }

      else
      {
        OUTLINED_FUNCTION_177_1();
        sub_1B8F1B8B8();
        OUTLINED_FUNCTION_178(v0 + v13, 1, v1);
        if (!v16)
        {
          OUTLINED_FUNCTION_4_34();
          sub_1B91C6E08();
          v17 = OUTLINED_FUNCTION_246();
          v18 = static Apple_Parsec_Siri_V2alpha_VideoImage.== infix(_:_:)(v17);
          sub_1B91C6EB0();
          sub_1B91C6EB0();
          sub_1B8D9207C(v0, &qword_1EBAC7DD8, &qword_1B96A2848);
          if ((v18 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_42_9();
        sub_1B91C6EB0();
      }

      sub_1B8D9207C(v0, &qword_1EBAC7DE0, &qword_1B96A2850);
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.images.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.images.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.show.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v7);
  OUTLINED_FUNCTION_115(*(v8 + 44));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_TvShowResult.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.show.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_122_0();
  sub_1B91C6E08();
  OUTLINED_FUNCTION_111_5();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_TvSeasonResult.show.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  *(v3 + 10) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0) + 44);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_17_2();
  if (v9)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_149_5(v10);
    OUTLINED_FUNCTION_17_2();
    if (!v9)
    {
      sub_1B8D9207C(v6, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B91C2D8C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91C6E5C();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DC8, &qword_1B96A2838);
    OUTLINED_FUNCTION_2_42();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
    OUTLINED_FUNCTION_23_13();
    sub_1B91C6EB0();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DC8, &qword_1B96A2838);
    OUTLINED_FUNCTION_2_42();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.hasShow.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v4);
  OUTLINED_FUNCTION_115(*(v5 + 44));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B96A2838);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_TvSeasonResult.clearShow()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_111_5();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91D0C74(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C31E8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.canonicalID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_56_6();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91D0C74(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91D0C74(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 32, v6);
  *(v7 + 32) = v2;
  *(v7 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C33C8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.title.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_56_6();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91D0C74(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.premiereDateSeconds.getter()
{
  OUTLINED_FUNCTION_49_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.premiereDateSeconds.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91D0C74(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3((v7 + 6), v6);
  v7[6] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.premiereDateSeconds.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_49_13();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 48);
  *(v1 + 72) = *(v4 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91C3570(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91D0C74(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 48, v3 + v11);
  *(v8 + 48) = v4;

  free(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.getter()
{
  OUTLINED_FUNCTION_49_13();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 56, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91D0C74(v8);
    *(v2 + v4) = v7;
  }

  OUTLINED_FUNCTION_9_3((v7 + 7), v6);
  v7[7] = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_49_13();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 56);
  *(v1 + 48) = *(v4 + 56);

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3764(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.images.setter();
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
      OUTLINED_FUNCTION_56_6();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B91D0C74(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_59_3((v7 + 7));
    v7[7] = v3;
  }

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91D0C74(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 64, v6);
  *(v7 + 64) = v2;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v6 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3960()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.tvAppCanonicalURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_56_6();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91D0C74(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4(v0 + 80, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91D0C74(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3B40()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.seasonNumber.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_56_6();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91D0C74(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.getter()
{
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_146_4(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91D0C74(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 96, v6);
  *(v7 + 96) = v2;
  *(v7 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v6 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91C3D20()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_TvEpisodeResult.episodeNumber.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_56_6();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91D0C74(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.show.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Apple_Parsec_Siri_V2alpha_TvShowResult.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.show.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_146_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B91D0C74(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_177_6();
  OUTLINED_FUNCTION_111_5();
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.show.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_149_5(v12);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7DC8, &qword_1B96A2838);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.season.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    a1[4] = 0;
    a1[5] = v9;
    a1[6] = 0;
    a1[7] = 0xE000000000000000;
    a1[8] = 0;
    a1[9] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_111_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DE8, &qword_1B96A2858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_26();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvEpisodeResult.season.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_146_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B91D0C74(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_TvEpisodeResult.season.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_114_0();
    v13 = MEMORY[0x1E69E7CC0];
    v11[4] = 0;
    v11[5] = v13;
    v11[6] = 0;
    v11[7] = v14;
    v11[8] = 0;
    v11[9] = v14;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_111_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7DE8, &qword_1B96A2858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_26();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91C44E8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11 - 8];
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_521(v4 + *a3, v16);
  OUTLINED_FUNCTION_179_3();
  sub_1B8F1B8B8();
  v13 = (a4)(0);
  OUTLINED_FUNCTION_178(v12, 1, v13);
  OUTLINED_FUNCTION_181_6();
  return v4;
}

void sub_1B91C45D4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B91D0C74(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_179_3();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.genres.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.images.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.contentRatingValue.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t sub_1B91C4A14()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B91C4A9C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LiveServiceResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.url.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91C4E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D55FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91C4F44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91C4FA4()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B91C502C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SportsEventResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7DD8, &qword_1B96A2848);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_34();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_122_0();
  sub_1B91C6E08();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_PersonResult.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0;
    *(v10 + 32) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC7DD8, &qword_1B96A2848);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_34();
    OUTLINED_FUNCTION_461();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B91C53E0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91C6E5C();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DD8, &qword_1B96A2848);
    OUTLINED_FUNCTION_4_34();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
    OUTLINED_FUNCTION_42_9();
    sub_1B91C6EB0();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC7DD8, &qword_1B96A2848);
    OUTLINED_FUNCTION_4_34();
    sub_1B91C6E08();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.hasImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v4);
  OUTLINED_FUNCTION_115(*(v5 + 32));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B96A2848);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_PersonResult.clearImage()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAC7DD8, &qword_1B96A2848);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.tvAppCanonicalURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_1B91C5678()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B91C5700()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedFullPrint.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedFullSpeak.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedSupportingPrint.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.redactedSupportingSpeak.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91C5B94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BA8);
  __swift_project_value_buffer(v0, qword_1EBAC7BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_VERB_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_VERB_PLAY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_VERB_SEARCH";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_VERB_PLAY_LIVE_SERVICE";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VIDEO_VERB_PLAY_SPORTS_EVENT";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VIDEO_VERB_PLAY_THIRD_PARTY";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "VIDEO_VERB_SEARCH_THIRD_PARTY";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "VIDEO_VERB_ADD_WATCHLIST";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "VIDEO_VERB_REMOVE_WATCHLIST";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "VIDEO_VERB_LIST_WATCHLIST";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "VIDEO_VERB_SERVER_DISAMBIGUATION";
  *(v28 + 1) = 32;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "VIDEO_VERB_SHOWTIMES";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C5FE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BC0);
  __swift_project_value_buffer(v0, qword_1EBAC7BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_CONFIRMATION_VALUE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_CONFIRMATION_VALUE_YES";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_CONFIRMATION_VALUE_NO";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_CONFIRMATION_VALUE_CANCEL";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C6250()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BD8);
  __swift_project_value_buffer(v0, qword_1EBAC7BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VIDEO_PAGINATION_VALUE_UNKNOWN";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_PAGINATION_VALUE_NEXT_PAGE";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_PAGINATION_VALUE_PREVIOUS_PAGE";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C6494()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7BF0);
  __swift_project_value_buffer(v0, qword_1EBAC7BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "understanding";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "target_device";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uts_search_params";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "block_ugc_no_results_fallback";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "video_dialog_component";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "summarized_keyword_search";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "should_switch_profile";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C6840()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile) = 0;
  return v0;
}

uint64_t sub_1B91C6920(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30[1] = v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D88, &qword_1B96A2810);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice;
  v30[0] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams) = v11;
  v31 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback) = 0;
  v15 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent;
  v32 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v33 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile) = 0;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  swift_beginAccess();
  v19 = *(a1 + v18);
  swift_beginAccess();
  *(v1 + v10) = v19;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  *(v1 + v14) = v21;

  v22 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  v23 = v31;
  swift_beginAccess();
  *(v1 + v23) = v22;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v17 = v26;
  v17[1] = v25;

  v27 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);

  v28 = v33;
  swift_beginAccess();
  *(v1 + v28) = v27;
  return v1;
}

uint64_t sub_1B91C6E08()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91C6E5C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91C6EB0()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B91C6F84()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding, &qword_1EBAC7D88, &qword_1B96A2810);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice, &qword_1EBAC7D90, &qword_1B96A2818);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent, &qword_1EBAC7D98, &qword_1B96A2820);

  return v0;
}

uint64_t sub_1B91C70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B91C7230(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B91C730C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B91C73E8(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B91C74C4(a2, a1, a3, a4);
        break;
      case 5:
      case 8:
        sub_1B908EA40();
        break;
      case 6:
        sub_1B91C75A0(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B91CD7A8(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch, MEMORY[0x1E69AACE0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91C7230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91C730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0);
  sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoResult);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91C73E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91C74C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0);
  sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91C75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91C76AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = v29 - v6;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  MEMORY[0x1EEE9AC00](v31);
  v29[1] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = v29 - v9;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  MEMORY[0x1EEE9AC00](v34);
  v32 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D88, &qword_1B96A2810);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7D88, &qword_1B96A2810);
    v15 = v35;
  }

  else
  {
    sub_1B91C6E08();
    sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);
    v16 = v35;
    sub_1B964C740();
    v15 = v16;
    result = sub_1B91C6EB0();
    if (v16)
    {
      return result;
    }
  }

  v18 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  swift_beginAccess();
  if (!*(*(a1 + v18) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0), sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoResult), , sub_1B964C730(), result = , !v15))
  {
    swift_beginAccess();
    v19 = v33;
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBAC7D90, &qword_1B96A2818);
    }

    else
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);
      sub_1B964C740();
      result = sub_1B91C6EB0();
      if (v15)
      {
        return result;
      }
    }

    v20 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
    swift_beginAccess();
    if (!*(*(a1 + v20) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0), sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam), , sub_1B964C730(), result = , !v15))
    {
      v21 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
      swift_beginAccess();
      v22 = v31;
      if (*(a1 + v21) != 1 || (result = sub_1B964C670(), !v15))
      {
        swift_beginAccess();
        v23 = v30;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v23, 1, v22) == 1)
        {
          sub_1B8D9207C(v23, &qword_1EBAC7D98, &qword_1B96A2820);
        }

        else
        {
          sub_1B91C6E08();
          sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);
          sub_1B964C740();
          result = sub_1B91C6EB0();
          if (v15)
          {
            return result;
          }
        }

        v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
        swift_beginAccess();
        v25 = *v24;
        v26 = v24[1];
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (!v27 || (, sub_1B964C700(), result = , !v15))
        {
          v28 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
          result = swift_beginAccess();
          if (*(a1 + v28) == 1)
          {
            return sub_1B964C670();
          }
        }
      }
    }
  }

  return result;
}

void sub_1B91C7ECC()
{
  OUTLINED_FUNCTION_284();
  v94 = v1;
  v3 = v2;
  v83 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v80 = v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8190, &qword_1B96A4910);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  v81 = v10 - v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v80 - v13;
  v14 = OUTLINED_FUNCTION_201();
  v88 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v85 = v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8198, &qword_1B96A4918);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  v20 = OUTLINED_FUNCTION_183(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66();
  v86 = v21 - v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v80 - v24;
  v25 = OUTLINED_FUNCTION_201();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v25);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21();
  v92 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC81A0, &qword_1B96A4920) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_159();
  v31 = OUTLINED_FUNCTION_303();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  v34 = OUTLINED_FUNCTION_183(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_66();
  v93 = v35 - v36;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v80 - v38;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding, &v110);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__understanding, &v109);
  v40 = *(v29 + 56);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0, 1, v26);
  if (v42)
  {

    sub_1B8D9207C(v39, &qword_1EBAC7D88, &qword_1B96A2810);
    OUTLINED_FUNCTION_178(v0 + v40, 1, v26);
    v41 = v3;
    if (v42)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D88, &qword_1B96A2810);
      goto LABEL_12;
    }

LABEL_9:
    v43 = &qword_1EBAC81A0;
    v44 = &qword_1B96A4920;
    v45 = v0;
LABEL_10:
    sub_1B8D9207C(v45, v43, v44);
LABEL_55:

    goto LABEL_56;
  }

  v41 = v3;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0 + v40, 1, v26);
  if (v42)
  {

    sub_1B8D9207C(v39, &qword_1EBAC7D88, &qword_1B96A2810);
    sub_1B91C6EB0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_8();
  sub_1B91C6E08();

  v46 = static Apple_Parsec_Siri_V2alpha_VideoUnderstanding.== infix(_:_:)();
  sub_1B91C6EB0();
  sub_1B8D9207C(v39, &qword_1EBAC7D88, &qword_1B96A2810);
  OUTLINED_FUNCTION_303();
  sub_1B91C6EB0();
  sub_1B8D9207C(v0, &qword_1EBAC7D88, &qword_1B96A2810);
  if ((v46 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_12:
  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results, &v108);
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results, &v107);

  v47 = OUTLINED_FUNCTION_543();
  sub_1B8D8E0D8(v47, v48);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice, &v106);
  v51 = v91;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__targetDevice, &v105);
  v52 = *(v87 + 48);
  v53 = v89;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_668_0();
  v54 = v88;
  OUTLINED_FUNCTION_178(v53, 1, v88);
  if (v42)
  {
    sub_1B8D9207C(v51, &qword_1EBAC7D90, &qword_1B96A2818);
    OUTLINED_FUNCTION_178(v53 + v52, 1, v54);
    v55 = v90;
    if (v42)
    {
      sub_1B8D9207C(v53, &qword_1EBAC7D90, &qword_1B96A2818);
      goto LABEL_18;
    }

LABEL_28:
    v43 = &qword_1EBAC8198;
    v44 = &qword_1B96A4918;
LABEL_29:
    v45 = v53;
    goto LABEL_10;
  }

  v64 = v86;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v53 + v52, 1, v54);
  v55 = v90;
  if (v65)
  {
    sub_1B8D9207C(v51, &qword_1EBAC7D90, &qword_1B96A2818);
    sub_1B91C6EB0();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_19_18();
  v66 = v85;
  sub_1B91C6E08();
  v67 = *v64 == *v66 && *(v64 + 8) == v66[1];
  if (!v67 && (sub_1B964C9F0() & 1) == 0 || (*(v64 + 16) == v66[2] ? (v68 = *(v64 + 24) == v66[3]) : (v68 = 0), !v68 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v64 + 32), *(v64 + 40), v66[4])))
  {
    sub_1B8D9207C(v91, &qword_1EBAC7D90, &qword_1B96A2818);
    sub_1B91C6EB0();
    OUTLINED_FUNCTION_186();
    sub_1B91C6EB0();
    v45 = v53;
    v43 = &qword_1EBAC7D90;
    v44 = &qword_1B96A2818;
    goto LABEL_10;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v69, v70, MEMORY[0x1E69AAC10]);
  v71 = sub_1B964C850();
  sub_1B8D9207C(v91, &qword_1EBAC7D90, &qword_1B96A2818);
  sub_1B91C6EB0();
  OUTLINED_FUNCTION_236();
  sub_1B91C6EB0();
  sub_1B8D9207C(v53, &qword_1EBAC7D90, &qword_1B96A2818);
  if ((v71 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_18:
  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams, &v104);
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams, &v103);

  v56 = OUTLINED_FUNCTION_543();
  sub_1B8D8E12C(v56, v57);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
    goto LABEL_55;
  }

  v60 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback, &v102);
  LODWORD(v60) = *(v41 + v60);
  v61 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  v62 = v94;
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback, &v101);
  if (v60 != *(v62 + v61))
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent, &v100);
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__videoDialogComponent, &v99);
  v63 = *(v82 + 48);
  v53 = v84;
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_668_0();
  OUTLINED_FUNCTION_178(v53, 1, v83);
  if (v42)
  {
    sub_1B8D9207C(v55, &qword_1EBAC7D98, &qword_1B96A2820);
    OUTLINED_FUNCTION_57(v53 + v63);
    if (v42)
    {
      sub_1B8D9207C(v53, &qword_1EBAC7D98, &qword_1B96A2820);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v72 = v81;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_57(v53 + v63);
  if (v73)
  {
    sub_1B8D9207C(v55, &qword_1EBAC7D98, &qword_1B96A2820);
    sub_1B91C6EB0();
LABEL_47:
    v43 = &qword_1EBAC8190;
    v44 = &qword_1B96A4910;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_21_15();
  sub_1B91C6E08();
  v74 = static Apple_Parsec_Siri_V2alpha_VideoDialogComponent.== infix(_:_:)(v72);
  sub_1B91C6EB0();
  sub_1B8D9207C(v55, &qword_1EBAC7D98, &qword_1B96A2820);
  sub_1B91C6EB0();
  sub_1B8D9207C(v53, &qword_1EBAC7D98, &qword_1B96A2820);
  if ((v74 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_49:
  v75 = (v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch, &v98);
  v76 = *v75;
  v77 = v75[1];
  v78 = (v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch);
  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__summarizedKeywordSearch, &v97);
  if (v76 != *v78 || v77 != v78[1])
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile, &v96);

  OUTLINED_FUNCTION_521(v94 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile, &v95);

LABEL_56:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91C8A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8158, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91C8B14(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91C8B84(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91C8C1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C10);
  __swift_project_value_buffer(v0, qword_1EBAC7C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "verb";
  *(v6 + 8) = 4;
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
  *v12 = "selected_item_identifier";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "app_bundle_identifier";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "confirmation_value";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "requested_provider_ids";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "pagination_value";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.decodeMessage<A>(decoder:)()
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
        sub_1B91C9014(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91C907C(v7, v8, v9, v10);
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 7:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91C90E4(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B91D54AC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 3), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 4), !v1))
        {
          if (!v2[8] || (OUTLINED_FUNCTION_94_4(), sub_1B91D5500(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
          {
            if (!*(v2[10] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
            {
              if (!v2[11] || (OUTLINED_FUNCTION_94_4(), sub_1B91D5554(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
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

uint64_t static Apple_Parsec_Siri_V2alpha_VideoUnderstanding.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v3 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v3 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v3 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v3 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v3 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v3 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 == v5)
  {
LABEL_6:
    OUTLINED_FUNCTION_84_1();
    v8 = v8 && v6 == v7;
    if (v8 || (sub_1B964C9F0() & 1) != 0)
    {
      OUTLINED_FUNCTION_40_5();
      v11 = v8 && v9 == v10;
      if (v11 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_167_4();
        v14 = v8 && v12 == v13;
        if (v14 || (sub_1B964C9F0()) && sub_1B8D92198(*(v1 + 64), *(v1 + 72), v0[8]) && (sub_1B8D6123C(*(v1 + 80), v0[10]) & 1) != 0 && sub_1B8D92198(*(v1 + 88), *(v1 + 96), v0[11]))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_58();
          v17 = sub_1B8CD2B58(v15, v16, MEMORY[0x1E69AAC10]);
          return OUTLINED_FUNCTION_634(v17) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B91C951C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8150, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91C959C(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91C960C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B91C96A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C28);
  __swift_project_value_buffer(v0, qword_1EBAC7C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B91C9948(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_94_4(), sub_1B91D55A8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v2 + 32), *(v2 + 40), *(v1 + 32)))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v11 = sub_1B8CD2B58(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B91C9BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8148, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91C9C44(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91C9CB4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);

  return sub_1B964C5D0();
}

uint64_t sub_1B91C9D34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C40);
  __swift_project_value_buffer(v0, qword_1EBAC7C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_UNKNOWN";
  *(v6 + 8) = 41;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_UNSPECIFIED";
  *(v10 + 8) = 45;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_APPLETV";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_TELEVISION";
  *(v14 + 1) = 44;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C9FB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C58);
  __swift_project_value_buffer(v0, qword_1EBAC7C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v8 = sub_1B8CD2B58(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B91CA3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8140, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam, "9~~5pM\t");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91CA444(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91CA4B4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);

  return sub_1B964C5D0();
}

uint64_t sub_1B91CA54C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C70);
  __swift_project_value_buffer(v0, qword_1EBAC7C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "movie";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "tv_show";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "tv_season";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tv_episode";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "live_service";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sports_event";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "person";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "ui_metadata";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "entity_experience_url";
  *(v23 + 1) = 21;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "description";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "machine_generated_utterance";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B91CA9A4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B91CA9F4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata) = xmmword_1B9652FE0;
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B91CAA80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v6 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata) = xmmword_1B9652FE0;
  v7 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v10 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  swift_beginAccess();
  v13 = *v6;
  v14 = v6[1];
  *v6 = v12;
  v6[1] = v11;
  sub_1B8D91FCC(v12, v11);
  sub_1B8D538A0(v13, v14);
  v15 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];
  swift_beginAccess();
  *v7 = v17;
  v7[1] = v16;

  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  *v8 = v20;
  v8[1] = v19;

  v21 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];

  swift_beginAccess();
  *v9 = v23;
  v9[1] = v22;

  return v1;
}

uint64_t sub_1B91CADDC()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object, &qword_1EBAC7DA0, &qword_1B96A2828);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata), *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata + 8));

  return v0;
}

uint64_t sub_1B91CAED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1B91CAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B91CB1B4(a1, a2, a3, a4);
        continue;
      case 2:
        sub_1B91CB708(a1, a2, a3, a4);
        continue;
      case 3:
        sub_1B91CBC78(a1, a2, a3, a4);
        continue;
      case 4:
        sub_1B91CC1E8(a1, a2, a3, a4);
        continue;
      case 5:
        sub_1B91CC758(a1, a2, a3, a4);
        continue;
      case 6:
        sub_1B91CCCC8(a1, a2, a3, a4);
        continue;
      case 7:
        sub_1B91CD238(a1, a2, a3, a4);
        continue;
      case 9:
        v11 = MEMORY[0x1E69AAC78];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata;
        goto LABEL_15;
      case 10:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL;
        goto LABEL_15;
      case 11:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p;
        goto LABEL_15;
      case 12:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance;
LABEL_15:
        sub_1B91CD7A8(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91CB1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8168, &qword_1B96A48E8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B91C6EB0();
    }

    else
    {
      sub_1B8D9207C(v21, &qword_1EBAC8168, &qword_1B96A48E8);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieResult);
  v24 = v33;
  sub_1B964C580();
  if (v24)
  {
    v25 = v21;
    return sub_1B8D9207C(v25, &qword_1EBAC8168, &qword_1B96A48E8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC8168, &qword_1B96A48E8);
    v25 = v19;
    return sub_1B8D9207C(v25, &qword_1EBAC8168, &qword_1B96A48E8);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v21, &qword_1EBAC8168, &qword_1B96A48E8);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v28[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBAC7DC8, &qword_1B96A2838);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC7DC8, &qword_1B96A2838);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC7DC8, &qword_1B96A2838);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC7DC8, &qword_1B96A2838);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAC7DC8, &qword_1B96A2838);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CBC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v28[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v21, &qword_1EBAC7DE8, &qword_1B96A2858);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, "!{~5PJ\t");
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC7DE8, &qword_1B96A2858);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC7DE8, &qword_1B96A2858);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC7DE8, &qword_1B96A2858);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAC7DE8, &qword_1B96A2858);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CC1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8170, &qword_1B96A48F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v28[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v21, &qword_1EBAC8170, &qword_1B96A48F0);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC8170, &qword_1B96A48F0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC8170, &qword_1B96A48F0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC8170, &qword_1B96A48F0);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAC8170, &qword_1B96A48F0);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CC758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8178, &qword_1B96A48F8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v28[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v21, &qword_1EBAC8178, &qword_1B96A48F8);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC8178, &qword_1B96A48F8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC8178, &qword_1B96A48F8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC8178, &qword_1B96A48F8);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAC8178, &qword_1B96A48F8);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8180, &qword_1B96A4900);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v28[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v21, &qword_1EBAC8180, &qword_1B96A4900);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SportsEventResult);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC8180, &qword_1B96A4900);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC8180, &qword_1B96A4900);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC8180, &qword_1B96A4900);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAC8180, &qword_1B96A4900);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CD238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8188, &qword_1B96A4908);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v28[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v21, &qword_1EBAC8188, &qword_1B96A4908);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PersonResult);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC8188, &qword_1B96A4908);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC8188, &qword_1B96A4908);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC8188, &qword_1B96A4908);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBAC8188, &qword_1B96A4908);
  v27 = v29;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B91CD86C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91CD8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  swift_beginAccess();
  sub_1B8F1B8B8();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B91CDF20(a1, a2, a3, a4);
        goto LABEL_22;
      case 2u:
        sub_1B91CE154(a1, a2, a3, a4);
        goto LABEL_22;
      case 3u:
        sub_1B91CE388(a1, a2, a3, a4);
        goto LABEL_22;
      case 4u:
        sub_1B91CE5BC(a1, a2, a3, a4);
        goto LABEL_26;
      case 5u:
        sub_1B91CE7F0(a1, a2, a3, a4);
        goto LABEL_26;
      case 6u:
        sub_1B91CEA24(a1, a2, a3, a4);
LABEL_26:
        v5 = v4;
        if (v4)
        {
          return sub_1B91C6EB0();
        }

        sub_1B91C6EB0();
        break;
      default:
        sub_1B91CDCF0(a1, a2, a3, a4);
LABEL_22:
        v5 = v4;
        result = sub_1B91C6EB0();
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata;
  swift_beginAccess();
  if (sub_1B8D99EA8(*v14, *(v14 + 8)) || (v16 = *v14, v15 = *(v14 + 8), sub_1B8D91FCC(v16, v15), sub_1B964C6A0(), result = sub_1B8D538A0(v16, v15), !v5))
  {
    v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21 || (, sub_1B964C700(), result = , !v5))
    {
      v22 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25 || (, sub_1B964C700(), result = , !v5))
      {
        v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
        result = swift_beginAccess();
        v27 = *v26;
        v28 = v26[1];
        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {

          sub_1B964C700();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B91CDCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CDF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, "!{~5PJ\t");
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SportsEventResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CEA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PersonResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CEC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_177_1();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v11, v12, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B91CED5C()
{
  OUTLINED_FUNCTION_284();
  v48 = v0;
  v2 = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v47[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8160, &qword_1B96A48E0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object, &v58);
  v15 = v48;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521(v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object, &v57);
  v16 = *(v6 + 56);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v9, 1, v3);
  if (!v18)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_178(&v9[v16], 1, v3);
    if (!v18)
    {
      sub_1B91C6E08();
      v17 = v2;

      static Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object.== infix(_:_:)();
      v20 = v19;
      sub_1B91C6EB0();
      sub_1B8D9207C(v14, &qword_1EBAC7DA0, &qword_1B96A2828);
      sub_1B91C6EB0();
      v21 = OUTLINED_FUNCTION_303();
      sub_1B8D9207C(v21, v22, &qword_1B96A2828);
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_11;
    }

    sub_1B8D9207C(v14, &qword_1EBAC7DA0, &qword_1B96A2828);
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
LABEL_9:
    sub_1B8D9207C(v9, &qword_1EBAC8160, &qword_1B96A48E0);
    goto LABEL_27;
  }

  sub_1B8D9207C(v14, &qword_1EBAC7DA0, &qword_1B96A2828);
  OUTLINED_FUNCTION_178(&v9[v16], 1, v3);
  v17 = v2;
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v9, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_11:
  OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata, &v56);
  v23 = (v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  OUTLINED_FUNCTION_521(v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata, &v55);
  v25 = *v23;
  v24 = v23[1];
  v26 = OUTLINED_FUNCTION_461();
  sub_1B8D91FCC(v26, v27);
  sub_1B8D91FCC(v25, v24);
  v28 = OUTLINED_FUNCTION_461();
  v29 = MEMORY[0x1BFADC060](v28);
  sub_1B8D538A0(v25, v24);
  v30 = OUTLINED_FUNCTION_461();
  sub_1B8D538A0(v30, v31);
  if (v29)
  {
    v32 = (v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
    OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL, &v54);
    v33 = *v32;
    v34 = v32[1];
    v35 = (v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
    OUTLINED_FUNCTION_521(v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL, &v53);
    v36 = v33 == *v35 && v34 == v35[1];
    if (v36 || (OUTLINED_FUNCTION_303(), (sub_1B964C9F0() & 1) != 0))
    {
      v37 = (v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
      OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p, &v52);
      v38 = *v37;
      v39 = v37[1];
      v40 = (v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
      OUTLINED_FUNCTION_521(v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p, &v51);
      v41 = v38 == *v40 && v39 == v40[1];
      if (v41 || (OUTLINED_FUNCTION_303(), (sub_1B964C9F0() & 1) != 0))
      {
        v42 = (v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
        OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance, &v50);
        v43 = *v42;
        v44 = v42[1];
        v45 = (v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
        OUTLINED_FUNCTION_521(v15 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance, &v49);
        if (v43 != *v45 || v44 != v45[1])
        {
          OUTLINED_FUNCTION_303();
          sub_1B964C9F0();
        }
      }
    }
  }

LABEL_27:

  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91CF2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8138, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91CF364(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91CF3D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91CF46C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C90);
  __swift_project_value_buffer(v0, qword_1EBAC7C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "genres";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "premiere_date_seconds";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "finale_date_seconds";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "images";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "tv_app_canonical_url";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "season_count";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "content_rating_value";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "content_rating_system";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.decodeMessage<A>(decoder:)()
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
      case 7:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91CF934(v3, v4, v5, v6);
        break;
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91CF934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
        {
          if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
          {
            if (!*(*(v1 + 56) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), OUTLINED_FUNCTION_22_18(), sub_1B8CD2B58(v9, v10, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 7), !v0))
              {
                if (!*(v1 + 80) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 9), !v0))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 10), !v0))
                    {
                      type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
                      return OUTLINED_FUNCTION_8_1();
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

uint64_t sub_1B91CFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8130, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91CFC98(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91CFD08(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91CFDA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7CA8);
  __swift_project_value_buffer(v0, qword_1EBAC7CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "premiere_date_seconds";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "images";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tv_app_canonical_url";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "season_number";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "show";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91D0188(v3, v4, v5, v6);
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91D0228(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C570();
}

uint64_t sub_1B91D0228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 2), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), OUTLINED_FUNCTION_22_18(), sub_1B8CD2B58(v14, v15, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 5), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 6), !v0))
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
              {
                sub_1B8D9207C(v2, &qword_1EBAC7DC8, &qword_1B96A2838);
              }

              else
              {
                OUTLINED_FUNCTION_2_42();
                sub_1B91C6E08();
                sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_23_13();
                result = sub_1B91C6EB0();
                if (v0)
                {
                  return result;
                }
              }

              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B91D0608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8128, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D0688(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, "!{~5PJ\t");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D06F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, "!{~5PJ\t");

  return sub_1B964C5D0();
}

uint64_t sub_1B91D0790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7CC0);
  __swift_project_value_buffer(v0, qword_1EBAC7CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "premiere_date_seconds";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "images";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tv_app_canonical_url";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "season_number";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "episode_number";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "show";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "season";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

void *sub_1B91D0BE8()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  v0[6] = 0;
  v0[7] = v1;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

void *sub_1B91D0C74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v26 - v6;
  v1[2] = 0;
  v1[4] = 0;
  v1[3] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = MEMORY[0x1E69E7CC0];
  v1[8] = 0;
  v1[5] = 0xE000000000000000;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v26 = v1 + 10;
  v1[11] = 0xE000000000000000;
  v1[12] = 0;
  v1[13] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show;
  v27 = v1 + 12;
  v28 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season;
  v29 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  swift_beginAccess();
  v11 = a1[2];
  v12 = a1[3];
  swift_beginAccess();
  v1[2] = v11;
  v1[3] = v12;
  swift_beginAccess();
  v13 = a1[4];
  v14 = a1[5];
  swift_beginAccess();
  v1[4] = v13;
  v1[5] = v14;

  swift_beginAccess();
  v15 = a1[6];
  swift_beginAccess();
  v1[6] = v15;
  swift_beginAccess();
  v16 = a1[7];
  swift_beginAccess();
  v1[7] = v16;

  swift_beginAccess();
  v17 = a1[8];
  v18 = a1[9];
  swift_beginAccess();
  v1[8] = v17;
  v1[9] = v18;

  swift_beginAccess();
  v19 = a1[10];
  v20 = a1[11];
  v21 = v26;
  swift_beginAccess();
  *v21 = v19;
  v1[11] = v20;

  swift_beginAccess();
  v23 = a1[12];
  v22 = a1[13];
  v24 = v27;
  swift_beginAccess();
  *v24 = v23;
  v1[13] = v22;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

void *sub_1B91D10D4()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show, &qword_1EBAC7DC8, &qword_1B96A2838);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season, &qword_1EBAC7DE8, &qword_1B96A2858);
  return v0;
}

uint64_t sub_1B91D1174(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1B91D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8DC46F4(a2, a1);
        break;
      case 3:
        sub_1B91D1390(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B91D1414(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8E16ACC(a2, a1);
        break;
      case 6:
        sub_1B8E16B50(a2, a1);
        break;
      case 7:
        sub_1B8E16BD4(a2, a1);
        break;
      case 8:
        sub_1B91D14E0(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B91D15BC(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B91D1414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91D14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91D15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, "!{~5PJ\t");
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91D16C8(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v28 - v8;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = a1[3];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = a1[5];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (, sub_1B964C700(), result = , !v4))
  {
    swift_beginAccess();
    if (!a1[6] || (result = sub_1B964C6D0(), !v4))
    {
      v29 = v10;
      swift_beginAccess();
      if (!*(a1[7] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage), , sub_1B964C730(), result = , !v4))
      {
        swift_beginAccess();
        v21 = a1[9];
        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = a1[8] & 0xFFFFFFFFFFFFLL;
        }

        if (!v22 || (, sub_1B964C700(), result = , !v4))
        {
          swift_beginAccess();
          v23 = a1[11];
          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = a1[10] & 0xFFFFFFFFFFFFLL;
          }

          if (!v24 || (, sub_1B964C700(), result = , !v4))
          {
            swift_beginAccess();
            v25 = a1[13];
            v26 = HIBYTE(v25) & 0xF;
            if ((v25 & 0x2000000000000000) == 0)
            {
              v26 = a1[12] & 0xFFFFFFFFFFFFLL;
            }

            if (!v26 || (, sub_1B964C700(), result = , !v4))
            {
              v29 = a3;
              swift_beginAccess();
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
              {
                sub_1B8D9207C(v13, &qword_1EBAC7DC8, &qword_1B96A2838);
              }

              else
              {
                sub_1B91C6E08();
                sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvShowResult);
                sub_1B964C740();
                result = sub_1B91C6EB0();
                if (v4)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v27 = v31;
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v27, 1, v32) == 1)
              {
                return sub_1B8D9207C(v27, &qword_1EBAC7DE8, &qword_1B96A2858);
              }

              else
              {
                sub_1B91C6E08();
                sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, "!{~5PJ\t");
                sub_1B964C740();
                return sub_1B91C6EB0();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B91D1D70(void *a1, void *a2)
{
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC81A8, &qword_1B96A4928);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v10;
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD0, &qword_1B96A2840);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  swift_beginAccess();
  v22 = a1[2];
  v21 = a1[3];
  swift_beginAccess();
  v23 = v22 == a2[2] && v21 == a2[3];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = a1[4];
  v25 = a1[5];
  swift_beginAccess();
  v26 = v24 == a2[4] && v25 == a2[5];
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v27 = a1[6];
  swift_beginAccess();
  if (v27 != a2[6])
  {
    return 0;
  }

  v52 = v6;
  swift_beginAccess();
  v28 = a1[7];
  swift_beginAccess();
  v29 = a2[7];

  sub_1B8D6C98C(v28, v29);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v32 = a1[8];
  v33 = a1[9];
  swift_beginAccess();
  v34 = v32 == a2[8] && v33 == a2[9];
  if (!v34 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v35 = a1[10];
  v36 = a1[11];
  swift_beginAccess();
  v37 = v35 == a2[10] && v36 == a2[11];
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v38 = a1[12];
  v39 = a1[13];
  swift_beginAccess();
  v40 = v38 == a2[12] && v39 == a2[13];
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v41 = *(v12 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v42 = v59;
  if (__swift_getEnumTagSinglePayload(v14, 1, v59) != 1)
  {
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(&v14[v41], 1, v42) != 1)
    {
      sub_1B91C6E08();
      v44 = static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(v18);
      sub_1B91C6EB0();
      sub_1B8D9207C(v20, &qword_1EBAC7DC8, &qword_1B96A2838);
      sub_1B91C6EB0();
      sub_1B8D9207C(v14, &qword_1EBAC7DC8, &qword_1B96A2838);
      if (v44)
      {
        goto LABEL_38;
      }

LABEL_34:

      return 0;
    }

    sub_1B8D9207C(v20, &qword_1EBAC7DC8, &qword_1B96A2838);
    sub_1B91C6EB0();
LABEL_33:
    sub_1B8D9207C(v14, &qword_1EBAC7DD0, &qword_1B96A2840);
    goto LABEL_34;
  }

  sub_1B8D9207C(v20, &qword_1EBAC7DC8, &qword_1B96A2838);
  if (__swift_getEnumTagSinglePayload(&v14[v41], 1, v42) != 1)
  {
    goto LABEL_33;
  }

  sub_1B8D9207C(v14, &qword_1EBAC7DC8, &qword_1B96A2838);
LABEL_38:
  swift_beginAccess();
  v45 = v57;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v46 = *(v56 + 48);
  v47 = v52;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v48 = v58;
  if (__swift_getEnumTagSinglePayload(v47, 1, v58) == 1)
  {

    sub_1B8D9207C(v45, &qword_1EBAC7DE8, &qword_1B96A2858);
    if (__swift_getEnumTagSinglePayload(v47 + v46, 1, v48) == 1)
    {
      sub_1B8D9207C(v47, &qword_1EBAC7DE8, &qword_1B96A2858);
      return 1;
    }

    goto LABEL_43;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v47 + v46, 1, v48) == 1)
  {

    sub_1B8D9207C(v45, &qword_1EBAC7DE8, &qword_1B96A2858);
    sub_1B91C6EB0();
LABEL_43:
    sub_1B8D9207C(v47, &qword_1EBAC81A8, &qword_1B96A4928);
    return 0;
  }

  sub_1B91C6E08();
  static Apple_Parsec_Siri_V2alpha_TvSeasonResult.== infix(_:_:)();
  v50 = v49;

  sub_1B91C6EB0();
  sub_1B8D9207C(v45, &qword_1EBAC7DE8, &qword_1B96A2858);
  sub_1B91C6EB0();
  sub_1B8D9207C(v47, &qword_1EBAC7DE8, &qword_1B96A2858);
  return (v50 & 1) != 0;
}

uint64_t sub_1B91D2728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8120, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D27A8(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D2818(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D28B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7CE0);
  __swift_project_value_buffer(v0, qword_1EBAC7CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "genres";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "release_date_seconds";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "images";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "tv_app_canonical_url";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "content_rating_value";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "content_rating_system";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "runtime_in_minutes";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "in_theaters";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.decodeMessage<A>(decoder:)()
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
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91D2D88(v3, v4, v5, v6);
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D2D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), OUTLINED_FUNCTION_22_18(), sub_1B8CD2B58(v9, v10, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 6), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 7), !v0))
              {
                OUTLINED_FUNCTION_1();
                if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 8), !v0))
                {
                  if (!*(v1 + 104) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                  {
                    if (*(v1 + 108) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                    {
                      type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
                      return OUTLINED_FUNCTION_8_1();
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

uint64_t sub_1B91D3074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8118, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult, "1w~5XG\t");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D30F4(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D3164(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D3310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8110, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D3390(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D3400(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D3498()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D10);
  __swift_project_value_buffer(v0, qword_1EBAC7D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91D379C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (!*(v1 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B91D55FC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 20) != *(v1 + 20) || !sub_1B8D92198(*(v2 + 24), *(v2 + 32), *(v1 + 24)))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v8 = sub_1B8CD2B58(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B91D3A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8108, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D3ABC(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D3B2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D3BAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D28);
  __swift_project_value_buffer(v0, qword_1EBAC7D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VIDEO_IMAGE_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_IMAGE_TYPE_STANDARD_POSTER";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_IMAGE_TYPE_WIDE_POSTER";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B91D3E10()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964D050;
  v12 = v11 + v10 + v9[14];
  *(v11 + v10) = 1;
  *v12 = v5;
  *(v12 + 8) = v3;
  *(v12 + 16) = 2;
  v13 = *v1;
  sub_1B964C750();
  OUTLINED_FUNCTION_21_7();
  (*(v14 + 104))(v12, v13);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91D3FBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_1_15();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v4))
  {
    a4(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B91D40B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8100, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SportsEventResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D4134(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SportsEventResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D41A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SportsEventResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D423C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D58);
  __swift_project_value_buffer(v0, qword_1EBAC7D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
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
  *v13 = 4;
  *v14 = "tv_app_canonical_url";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.decodeMessage<A>(decoder:)()
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
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91D4540(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D4540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
      {
        sub_1B8D9207C(v1, &qword_1EBAC7DD8, &qword_1B96A2848);
      }

      else
      {
        OUTLINED_FUNCTION_4_34();
        sub_1B91C6E08();
        OUTLINED_FUNCTION_22_18();
        sub_1B8CD2B58(v13, v14, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_42_9();
        result = sub_1B91C6EB0();
        if (v0)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_1();
      if (!v17)
      {
        return OUTLINED_FUNCTION_8_1();
      }

      result = OUTLINED_FUNCTION_3(v15, v16, 4);
      if (!v0)
      {
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B91D4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC80F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult, "iq~5LB\t");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D4908(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PersonResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D4978(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PersonResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D4A10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D70);
  __swift_project_value_buffer(v0, qword_1EBAC7D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "full_print";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "full_speak";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cat_id";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "supporting_print";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "supporting_speak";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "redacted_full_print";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "redacted_full_speak";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "redacted_supporting_print";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "redacted_supporting_speak";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "spoken_only";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_approved_for_grading";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.decodeMessage<A>(decoder:)()
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
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 5), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v20 || (result = OUTLINED_FUNCTION_3(v18, v19, 6), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v23 || (result = OUTLINED_FUNCTION_3(v21, v22, 7), !v0))
              {
                OUTLINED_FUNCTION_1();
                if (!v26 || (result = OUTLINED_FUNCTION_3(v24, v25, 8), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v29 || (result = OUTLINED_FUNCTION_3(v27, v28, 9), !v0))
                  {
                    if (*(v1 + 144) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                    {
                      if (*(v1 + 145) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                      {
                        type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
                        return OUTLINED_FUNCTION_8_1();
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

uint64_t static Apple_Parsec_Siri_V2alpha_VideoDialogComponent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_167_4();
  v14 = v5 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_157_8();
  v17 = v5 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v18 = *(v2 + 80) == *(v1 + 80) && *(v2 + 88) == *(v1 + 88);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v19 = *(v2 + 96) == *(v1 + 96) && *(v2 + 104) == *(v1 + 104);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v20 = *(v2 + 112) == *(v1 + 112) && *(v2 + 120) == *(v1 + 120);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v2 + 128) == *(v1 + 128) && *(v2 + 136) == *(v1 + 136);
  if (!v21 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 144) != *(v1 + 144) || *(v2 + 145) != *(v1 + 145))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  v25 = sub_1B8CD2B58(v23, v24, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v25) & 1;
}

uint64_t sub_1B91D523C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2B58(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91D531C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC80F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D539C(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D540C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);

  return sub_1B964C5D0();
}

unint64_t sub_1B91D54AC()
{
  result = qword_1EBAC7DF8;
  if (!qword_1EBAC7DF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoVerb, &type metadata for Apple_Parsec_Siri_V2alpha_VideoVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7DF8);
  }

  return result;
}

unint64_t sub_1B91D5500()
{
  result = qword_1EBAC7E00;
  if (!qword_1EBAC7E00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7E00);
  }

  return result;
}

unint64_t sub_1B91D5554()
{
  result = qword_1EBAC7E08;
  if (!qword_1EBAC7E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7E08);
  }

  return result;
}

unint64_t sub_1B91D55A8()
{
  result = qword_1EBAC7E18;
  if (!qword_1EBAC7E18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC7E18);
  }

  return result;
}

unint64_t sub_1B91D55FC()
{
  result = qword_1EBAC7E70;
  if (!qword_1EBAC7E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7E70);
  }

  return result;
}

unint64_t sub_1B91D5654()
{
  result = qword_1EBAC7E98;
  if (!qword_1EBAC7E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoVerb, &type metadata for Apple_Parsec_Siri_V2alpha_VideoVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7E98);
  }

  return result;
}

unint64_t sub_1B91D56AC()
{
  result = qword_1EBAC7EA0;
  if (!qword_1EBAC7EA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoVerb, &type metadata for Apple_Parsec_Siri_V2alpha_VideoVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7EA0);
  }

  return result;
}

unint64_t sub_1B91D5704()
{
  result = qword_1EBAC7EA8;
  if (!qword_1EBAC7EA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoVerb, &type metadata for Apple_Parsec_Siri_V2alpha_VideoVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7EA8);
  }

  return result;
}

unint64_t sub_1B91D578C()
{
  result = qword_1EBAC7EC0;
  if (!qword_1EBAC7EC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7EC0);
  }

  return result;
}

unint64_t sub_1B91D57E4()
{
  result = qword_1EBAC7EC8;
  if (!qword_1EBAC7EC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7EC8);
  }

  return result;
}

unint64_t sub_1B91D583C()
{
  result = qword_1EBAC7ED0;
  if (!qword_1EBAC7ED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoConfirmationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7ED0);
  }

  return result;
}

unint64_t sub_1B91D58C4()
{
  result = qword_1EBAC7EE8;
  if (!qword_1EBAC7EE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7EE8);
  }

  return result;
}

unint64_t sub_1B91D591C()
{
  result = qword_1EBAC7EF0;
  if (!qword_1EBAC7EF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7EF0);
  }

  return result;
}

unint64_t sub_1B91D5974()
{
  result = qword_1EBAC7EF8;
  if (!qword_1EBAC7EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, &type metadata for Apple_Parsec_Siri_V2alpha_VideoPaginationValue, v0, v1);
    atomic_store(result, &qword_1EBAC7EF8);
  }

  return result;
}

unint64_t sub_1B91D59FC()
{
  result = qword_1EBAC7F10;
  if (!qword_1EBAC7F10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC7F10);
  }

  return result;
}

unint64_t sub_1B91D5A54()
{
  result = qword_1EBAC7F18;
  if (!qword_1EBAC7F18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC7F18);
  }

  return result;
}

unint64_t sub_1B91D5AAC()
{
  result = qword_1EBAC7F20;
  if (!qword_1EBAC7F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC7F20);
  }

  return result;
}

unint64_t sub_1B91D5B34()
{
  result = qword_1EBAC7F38;
  if (!qword_1EBAC7F38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7F38);
  }

  return result;
}

unint64_t sub_1B91D5B8C()
{
  result = qword_1EBAC7F40;
  if (!qword_1EBAC7F40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7F40);
  }

  return result;
}

unint64_t sub_1B91D5BE4()
{
  result = qword_1EBAC7F48;
  if (!qword_1EBAC7F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, &type metadata for Apple_Parsec_Siri_V2alpha_VideoImage.VideoImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7F48);
  }

  return result;
}

void sub_1B91D6CC0(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B91D6DA0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91D6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    v17 = result;
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0(result, v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[4], 0, v16, v17, v18);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91D6F10(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(319);
              if (v8 <= 0x3F)
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

  return result;
}

void sub_1B91D7010(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1EBAC80C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E62F8]);
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

void sub_1B91D7138(uint64_t a1)
{
  sub_1B91D725C(319, &qword_1EBAC80C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B91D725C(319, &qword_1ED9CA468, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91D725C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_171Tm_0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 56));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_172Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 56));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B91D73E8(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1EBAC80C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E62F8]);
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

uint64_t sub_1B91D7538(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_207Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_208Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B91D76C0()
{
  v11 = MEMORY[0x1E69E6158];
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_0(result, v1, v2, v3, v4, v5, v6, v7, v8, *v9, *&v9[4], 0, v10, v11, v12);
    return 0;
  }

  return result;
}

void sub_1B91D7744(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1EBAC80E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B91D7838(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91D78E4(uint64_t a1)
{
  sub_1B91D725C(319, &qword_1ED9D0F70, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1ED9CFD08, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B91D725C(319, qword_1ED9D0C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B91D7AA4(uint64_t a1)
{
  sub_1B91D725C(319, &qword_1ED9CA660, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B91D7B84(uint64_t a1)
{
  sub_1B91D725C(319, &qword_1ED9CA468, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1ED9CA288, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_6()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_71_8()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_133_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_146_4(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_149_5@<X0>(uint64_t a2@<X8>)
{
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = v2;
  *(v3 + 64) = 0;
  *(v3 + 72) = a2;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = a2;
  *(v3 + 104) = 0;
  *(v3 + 112) = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_167_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_171_3@<X0>(uint64_t a1@<X8>)
{
  v2[4] = 0;
  v2[5] = v1;
  v2[6] = 0;
  v2[7] = a1;
  v2[8] = 0;
  v2[9] = a1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_177_6()
{

  return sub_1B91C6E08();
}

uint64_t OUTLINED_FUNCTION_180_5(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_181_6()
{

  return sub_1B8D9207C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_184_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Apple_Parsec_Siri_V2alpha_InputOrigin.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x12;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B91D83C0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_InputOrigin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91D83F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91EC57C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_InputOrigin.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC81B0 = a1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_InputOrigin.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B91D8538@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_InputOrigin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91D8598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.recordLocationActivity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_6:
    *v0 = 0;
    *(v0 + 8) = 1;
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams(0);
    OUTLINED_FUNCTION_102_7();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
    v8 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B91D88F0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_288();
  return sub_1B91D8B1C();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.recordLocationActivity.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_33_12();
      OUTLINED_FUNCTION_128();
      sub_1B91D8B1C();
      goto LABEL_7;
    }

    sub_1B91D88F0();
  }

  *v8 = 0;
  *(v8 + 8) = 1;
  OUTLINED_FUNCTION_101_4();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91D88F0()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_32_18();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  return OUTLINED_FUNCTION_131_6(v8);
}

uint64_t sub_1B91D8A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_177_1();
  sub_1B91D8CE8();
  return a7(v11);
}

uint64_t sub_1B91D8B1C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v8 + 32) = 0;
    *(v8 + 40) = v14;
    *(v8 + 48) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91D8CE8()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.startRequest.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_29_24();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  return OUTLINED_FUNCTION_121_3();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.startRequest.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showMapPoints.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_28_17();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(0) + 20);
  if (qword_1EBAB7998 != -1)
  {
    OUTLINED_FUNCTION_91_4(&qword_1EBAB7998);
  }

  *(v0 + v9) = qword_1EBAC8660;
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showMapPoints.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(v7);
  OUTLINED_FUNCTION_126_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  OUTLINED_FUNCTION_2_43();
  if (v13)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_28_17();
      OUTLINED_FUNCTION_128();
      sub_1B91D8B1C();
      goto LABEL_10;
    }

    sub_1B91D88F0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v0 + 20);
  if (qword_1EBAB7998 != -1)
  {
    OUTLINED_FUNCTION_91_4(&qword_1EBAB7998);
  }

  *(v9 + v15) = qword_1EBAC8660;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.phoneCall.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_27_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.phoneCall.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_175_2(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_43_7(v10);
  OUTLINED_FUNCTION_2_43();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    OUTLINED_FUNCTION_689_0(v13);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.extendCurrentTts.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.extendCurrentTts.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_738();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_111_6(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_112_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS(v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_81_7(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_18();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.setSiriAuthorizationForApp.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.setSiriAuthorizationForApp.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_175_2(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_43_7(v10);
  OUTLINED_FUNCTION_2_43();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_45_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.sayIt.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_115_8(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v9 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.init()()
{
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_115_8(v0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.sayIt.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = v14;
    *(v8 + 56) = 0;
    *(v8 + 64) = v14;
    *(v8 + 72) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_44_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showPlaceDetails.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_43_12();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  *v0 = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showPlaceDetails.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    *v8 = 0;
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_12();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDevice.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  v9 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v9;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDevice.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    v13 = sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    v15 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v15;
    OUTLINED_FUNCTION_689_0(v13);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    v13 = sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.openLink.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_41_17();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91DA334()
{
  OUTLINED_FUNCTION_132_2();
  v0(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.openLink.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_175_2(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_43_7(v10);
  OUTLINED_FUNCTION_2_43();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_17();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.navigationEnd.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_40_11();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.navigationEnd.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_738();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_111_6(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_112_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams(v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_81_7(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_40_11();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDeviceWithWatch.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  v9 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v9;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t sub_1B91DA880@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v3;
  a1(0);
  return OUTLINED_FUNCTION_279();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDeviceWithWatch.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    v13 = sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    v15 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v15;
    OUTLINED_FUNCTION_689_0(v13);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    v13 = sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_39_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.cancelCurrentTts.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.cancelCurrentTts.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_738();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_111_6(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_112_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CancelCurrentTTS(v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_81_7(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38_7();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.switchProfile.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_37_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(0);
  OUTLINED_FUNCTION_102_7();
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.switchProfile.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_175_2(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_43_7(v10);
  OUTLINED_FUNCTION_2_43();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.pushOff.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_36_7();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  return OUTLINED_FUNCTION_122_3(v8);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.pushOff.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(v6);
  OUTLINED_FUNCTION_126_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    v8[4] = 0;
    v8[5] = v14;
    v8[6] = 0;
    v8[7] = v14;
    v8[8] = 0;
    v8[9] = v14;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}